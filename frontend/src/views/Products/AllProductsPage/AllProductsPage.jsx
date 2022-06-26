import { useState, useEffect, useMemo, useRef } from 'react';
import { CSVLink } from 'react-csv';
import { Link } from 'react-router-dom';
import { FaCaretDown, FaPlus } from 'react-icons/fa';
import { ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import {
  useTable,
  useSortBy,
  usePagination,
  useRowSelect,
  useGlobalFilter,
} from 'react-table';
import {
  TiArrowUnsorted,
  TiArrowSortedUp,
  TiArrowSortedDown,
} from 'react-icons/ti';

import IndeterminateCheckbox from '../../../components/table/utils/IndeterminateCheckbox';
import GlobalFilter from '../../../components/table/utils/GlobalFilter';
import axiosInstance from '../../../helpers/axios';
import { errorToast, successToast } from '../../../helpers/toast.js';
import Progress from '../../../components/loading/Progress.jsx';
import Pagination from '../../../components/others/pagination.jsx';
import { columns as tableHeader } from './data';

function AllProductsPage() {
  const tableFor = 'product(s)';
  const months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  //refs
  const successRef = useRef();
  const errorRef = useRef();

  //state
  const [csvHeaders, setCsvHeaders] = useState([]);
  const [csvData, setCsvData] = useState([]);
  const columns = useMemo(() => tableHeader, []);
  const [data, setData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);

  //hooks
  const {
    rows,
    getTableProps,
    getTableBodyProps,
    headerGroups,
    page,
    gotoPage,
    nextPage,
    previousPage,
    canPreviousPage,
    canNextPage,
    pageOptions,
    pageCount,
    state: { pageIndex, pageSize, globalFilter },
    setPageSize,
    prepareRow,
    selectedFlatRows,
    setGlobalFilter,
  } = useTable(
    { columns, data },
    useGlobalFilter,
    useSortBy,
    usePagination,
    useRowSelect,
    (hooks) => {
      hooks.visibleColumns.push((columns) => [
        {
          id: 'selection',
          Header: ({ getToggleAllRowsSelectedProps }) => (
            <div>
              <IndeterminateCheckbox {...getToggleAllRowsSelectedProps()} />
            </div>
          ),
          Cell: ({ row }) => (
            <div>
              {row.original.is_default !== true && (
                <IndeterminateCheckbox {...row.getToggleRowSelectedProps()} />
              )}
            </div>
          ),
        },
        ...columns,
      ]);
    }
  );

  //handlers
  const deleteButtonHandler = (selectedFlatRows) => {
    const toDelete = {};
    for (let i = 0; i < selectedFlatRows.length; i++) {
      deleteData(selectedFlatRows[i].original.id);
    }
    getData();
  };
  const convertISODate = (isoDate) => {
    const date = new Date(isoDate);
    return (
      months[date.getMonth()] + ' ' + date.getDate() + ', ' + date.getFullYear()
    );
  };

  //----------API------START-------
  var token = localStorage.getItem('token');
  const config = {
    headers: {
      "Content-type": "application/json",
      Authorization: `Bearer ${token}`,
    },
  };
  async function getData() {
   
    try {
      const response = await axiosInstance.get('api/v1/inventory/products/',config);
      setData(response.data);
      setIsLoading(false);
    } catch (err) {
      errorToast('Error on loading data!, Please try again.');
      setIsLoading(false);
    }
  }
  async function deleteData(id) {
    setIsLoading(true);
    try {
      await axiosInstance.delete(`api/v1/inventory/product-details/${id}/`,config);
      successToast('Deleted successfuly');
      setIsLoading(false);
      getData();
    } catch (err) {
      errorToast('Error occured!, Please try again.');
      setIsLoading(false);
    }
  }
  //----------API------END-------

  let pageResultText;
  if (pageIndex > 0) {
    const countStartFrom = pageIndex * pageSize + 1;
    const totalRecords = rows.length;
    const recordsCountTo =
      (pageIndex + 1) * pageSize < totalRecords
        ? countStartFrom + pageSize - 1
        : totalRecords;
    pageResultText = `Showing ${countStartFrom} to ${recordsCountTo} of ${totalRecords} ${tableFor}`;
  } else {
    const totalRecords = rows.length;
    const countStartFrom = totalRecords > 1 ? 1 : 0;
    const recordsCountTo = totalRecords > pageSize ? 15 : totalRecords;
    pageResultText = `Showing ${countStartFrom} to ${recordsCountTo} of ${totalRecords} ${tableFor}`;
  }

  useEffect(() => {
    //CSV
    const tempHeader = [];
    for (let i = 0; i < columns.length; i++) {
      tempHeader[i] = {
        label: columns[i].Header,
        key: columns[i].accessor,
      };
    }
    setCsvHeaders(tempHeader);
    const tempData = [];
    for (let i = 0; i < data.length; i++) {
      delete data.id;
      tempData[i] = data[i];
    }
    setCsvData(tempData);
    getData();
    setPageSize(15);
  }, []);

  return (
    <div className="page-container-scroll">
      <div className="page-container">
        <Progress isAnimating={isLoading} key={0} />
        <ToastContainer />
        <div
          className="alert alert-danger"
          ref={errorRef}
          role="alert"
          style={{ display: 'none' }}
        >
          <button
            type="button"
            className="btn-custom-close close pull-right"
            data-bs-dismiss="alert"
            aria-label="Close"
          >
            <span aria-hidden="true">×</span>
          </button>
          <strong>Problem occured during updating products</strong>
        </div>
        <div
          className="alert alert-success"
          ref={successRef}
          role="alert"
          style={{ display: 'none' }}
        >
          <button
            type="button"
            className="btn-custom-close close pull-right"
            data-bs-dismiss="alert"
            aria-label="Close"
          >
            <span aria-hidden="true">×</span>
          </button>
          <strong>Successfully updated products</strong>
        </div>
        <div className="page-header-container row">
          <h1 className="page-title col-xs-12 col-md-6">Products</h1>
          <div className="page-header-button-container col-xs-12 col-md-6">
            <Link to="/admin/products/new" className="btn btn-primary">
              <span className="mx-1">
                <FaPlus />
              </span>
              Add New Product
            </Link>
            {selectedFlatRows.length > 0 && (
              <button
                className="btn btn-danger"
                type="button"
                onClick={() => {
                  deleteButtonHandler(selectedFlatRows);
                }}
              >
                Delete {selectedFlatRows.length} Product(s)
              </button>
            )}
            <button
              className="btn btn-info"
              type="button"
              id="export"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              Export
              <span>
                <FaCaretDown className="btn-right-icon" />
              </span>
            </button>
            <ul className="dropdown-menu" aria-labelledby="export">
              <li>
                <CSVLink
                  filename="sales history.csv"
                  data={csvData}
                  headers={csvHeaders}
                  className="dropdown-item"
                >
                  Export to CSV
                </CSVLink>
              </li>
            </ul>
          </div>
        </div>

        <div className="panel-container">
          <div className="table-container">
            <GlobalFilter filter={globalFilter} setFilter={setGlobalFilter} />
            <div className="table-header-container">
              <div className="text-muted">
                <div>{pageResultText}</div>
              </div>
            </div>

            <div className="table-scroll">
              <table
                className="table-responsive table-container"
                {...getTableProps()}
              >
                <thead>
                  {headerGroups.map((headerGroup) => (
                    <tr {...headerGroup.getHeaderGroupProps()}>
                      {headerGroup.headers.map((column, index) => (
                        <th
                          scope="col"
                          key={index}
                          className="table-header"
                          {...column.getHeaderProps(
                            column.getSortByToggleProps()
                          )}
                        >
                          {column.render('Header')}
                          <span>
                            {column.isSorted ? (
                              column.isSortedDesc ? (
                                <TiArrowSortedDown className="table-sorted" />
                              ) : (
                                <TiArrowSortedUp className="table-sorted" />
                              )
                            ) : (
                              index !== 0 &&
                              index !== 5 && (
                                <TiArrowUnsorted className="table-unsorted" />
                              )
                            )}
                          </span>
                        </th>
                      ))}
                    </tr>
                  ))}
                </thead>
                <tbody {...getTableBodyProps()}>
                  {page.map((row, i) => {
                    prepareRow(row);
                    return (
                      <tr scope="row" key={i} {...row.getRowProps()}>
                        {row.cells.map((cell, index) => {
                          return (
                            <td key={index} {...cell.getCellProps()}>
                              {index === 1 ? (
                                <img
                                  className="img-fluid rounded"
                                  src={row.original.featured_image}
                                  width="40"
                                />
                              ) : index === 2 ? (
                                <div>
                                  <Link
                                    to={{
                                      pathname: `/admin/${tableFor
                                        .replace('(', '')
                                        .replace(')', '')}/${
                                        row.original.id
                                      }/edit`,
                                      state: row.original,
                                    }}
                                    className="table-edit-page-tag"
                                  >
                                    {cell.render('Cell')}
                                  </Link>
                                  <br />
                                  <Link
                                    to={{
                                      pathname: `/admin/${tableFor
                                        .replace('(', '')
                                        .replace(')', '')}/${
                                        row.original.id
                                      }/variants`,
                                      state: row.original,
                                    }}
                                    className="table-edit-page-tag"
                                  >
                                    {row.original.variant?.length} variants
                                  </Link>
                                </div>
                              ) : index === 4 ? (
                                <span>
                                  {convertISODate(row.original.created)}
                                </span>
                              ) : index === 5 ? (
                                <div>
                                  <button
                                    className="btn btn-primary"
                                    type="button"
                                    id="action"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"
                                  >
                                    Action
                                    <span>
                                      <FaCaretDown className="btn-right-icon" />
                                    </span>
                                  </button>
                                  <ul
                                    className="dropdown-menu"
                                    aria-labelledby="export"
                                  >
                                    <li>
                                      <Link
                                        to="/admin/products/manage"
                                        className="dropdown-item"
                                      >
                                        Manage Related Products
                                      </Link>
                                    </li>
                                    <li>
                                      <Link
                                        className="dropdown-item"
                                        to={{
                                          pathname: `${tableFor
                                            .replace('(', '')
                                            .replace(')', '')}/${
                                            row.original.id
                                          }/variants`,
                                          state: row.original,
                                        }}
                                      >
                                        Manage Variants
                                      </Link>
                                    </li>
                                  </ul>
                                </div>
                              ) : (
                                cell.render('Cell')
                              )}
                            </td>
                          );
                        })}
                      </tr>
                    );
                  })}
                </tbody>
              </table>
            </div>
            {rows.length === 0 && (
              <div className="no-record-block">
                <p className="message">No records to display</p>
              </div>
            )}

            {rows.length > pageSize && (
              <div className="pagination-container">
                <Pagination
                  canPreviousPage={canPreviousPage}
                  previousPage={previousPage}
                  canNextPage={canNextPage}
                  nextPage={nextPage}
                  gotoPage={gotoPage}
                  totalPage={pageCount}
                />
              </div>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}

export default AllProductsPage;
