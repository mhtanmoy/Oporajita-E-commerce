import axios from 'axios';
import { useEffect, useState, useMemo, useRef } from 'react';
import { CSVLink } from 'react-csv';
import { Link } from 'react-router-dom';
import { FaPlus, FaCaretDown } from 'react-icons/fa';
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

import axiosInstance from '../../../helpers/axios';
import { errorToast, successToast } from '../../../helpers/toast.js';
import Progress from '../../../components/loading/Progress.jsx';
import Pagination from '../../../components/others/pagination.jsx';
import { columns as tableHeader } from './data';
import GlobalFilter from '../../../components/table/utils/GlobalFilter';

function InventoryLocationsPage() {
  const tableFor = 'location(s)';

  //refs
  const successRef = useRef();
  const errorRef = useRef();

  //state
  const [data, setData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [rawData, setRawData] = useState([]);
  const [csvHeaders, setCsvHeaders] = useState([]);
  const [csvData, setCsvData] = useState([]);

  //hooks
  const columns = useMemo(() => tableHeader, []);
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
    state: { pageIndex, pageRows, pageSize, selectedRowIds, globalFilter },
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
          // The header can use the table's getToggleAllRowsSelectedProps method
          // to render a checkbox
          Header: ({ getToggleAllRowsSelectedProps }) => (
            <div>
              <IndeterminateCheckbox {...getToggleAllRowsSelectedProps()} />
            </div>
          ),
          // The cell can use the individual row's getToggleRowSelectedProps method
          // to the render a checkbox
          Cell: ({ row }) => (
            <div>
              <IndeterminateCheckbox {...row.getToggleRowSelectedProps()} />
            </div>
          ),
        },
        ...columns,
      ]);
    }
  );

  //handelrs
  async function makeDefault(data) {
    console.log(data);
    const config = {
      headers: {
        "Content-type": "application/json",
        Authorization: "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjU5MDE2Mzk5LCJpYXQiOjE2NTUxMjgzOTksImp0aSI6ImZlMTRkOTM5MjE3MTQxNDRhOWRjMTQ2NjdlNzI5M2RlIiwidXNlcl9pZCI6MX0._Q-22pxglF_DuBwHE-iiOmZgvsxU_Fxce3wB5eQUsnw",
      },
    };
    try {
      const response = await axios.put(
        `/api/v1/inventory/update-inventory-location/${data.id}/`,
        {
          ...data,
          is_active: true,
          is_default: true,
        },config
      );
      console.log(response.data);
      successRef.current.style.display = 'block';
      location.reload();
    } catch (err) {
      errorRef.current.style.display = 'block';
      console.error(err);
    }
  }
  async function deleteButtonHandler(selectedFlatRows) {
    for (let i = 0; i < selectedFlatRows.length; i++) {
      if (!selectedFlatRows[i].original.is_active) {
        deleteData(selectedFlatRows[i].original.id);
      }
    }
  }
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
      const response = await axiosInstance.get(
        'api/v1/inventory/inventory-locations/',config
      );
      setData(response.data);
      setRawData(response.data);
      setIsLoading(false);
    } catch (err) {
      errorToast('Error on loading data!, Please try again.');
      console.error(err);

      setIsLoading(false);
    }
  }
  async function deleteData(id) {
    try {
      await axiosInstance.delete(
        `/api/v1/inventory/update-inventory-location/${id}/`,config
      );
      getData();
      successToast('Deleted successfuly');
    } catch (err) {
      errorToast('Error occured!, Please try again.');
      console.error(err);
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
    pageResultText = `Showing ${countStartFrom} to ${recordsCountTo} of ${totalRecords} supplier(s)`;
  } else {
    const totalRecords = rows.length;
    const countStartFrom = totalRecords > 1 ? 1 : 0;
    const recordsCountTo = totalRecords > pageSize ? 15 : totalRecords;
    pageResultText = `Showing ${countStartFrom} to ${recordsCountTo} of ${totalRecords} supplier(s)`;
  }

  useEffect(() => {
    //API
    getData();

    setPageSize(15);
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
          <strong>Problem occured during updating location</strong>
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
          <strong>Successfully updated location</strong>
        </div>
        <div className="page-header-container row">
          <h1 className="page-title col-xs-12 col-md-6">Inventory Locations</h1>
          <div className="page-header-button-container col-xs-12 col-md-6">
            <Link
              to="/admin/inventory/locations/new"
              className="btn btn-primary"
            >
              <span className="mx-1">
                <FaPlus />
              </span>
              Create New Inventory Location
            </Link>
            {selectedFlatRows.length > 0 && (
              <button
                className="btn btn-danger"
                type="button"
                onClick={() => {
                  deleteButtonHandler(selectedFlatRows);
                }}
              >
                Delete {selectedFlatRows.length} Location(s)
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
                  filename="inventory locations.csv"
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
          <div className="row">
            <div className="panel-filter col-12">
              <GlobalFilter filter={globalFilter} setFilter={setGlobalFilter} />
            </div>
          </div>

          <div className="text-muted">
            <div>{pageResultText}</div>
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
                            index !== 10 && (
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
                            {index === 0 ? (
                              row.original.is_default !== true &&
                              cell.render('Cell')
                            ) : index === 1 ? (
                              <Link
                                to={{
                                  pathname: `${tableFor
                                    .replace('(', '')
                                    .replace(')', '')}/${row.original.id}/edit`,
                                  state: row.original,
                                }}
                                className="table-edit-page-tag"
                              >
                                {cell.render('Cell')}
                              </Link>
                            ) : index === 9 ? (
                              row.original.is_active ? (
                                'Yes'
                              ) : (
                                'No'
                              )
                            ) : index === 10 ? (
                              row.original.is_default !== true ? (
                                <button
                                  className="btn btn-primary btn-sm"
                                  onClick={() => {
                                    makeDefault(row.original);
                                  }}
                                >
                                  Make Default
                                </button>
                              ) : (
                                'Default Location'
                              )
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
            {rows.length === 0 && (
              <div className="no-record-block">
                <p className="message">No records to display</p>
              </div>
            )}
          </div>

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
  );
}

export default InventoryLocationsPage;
