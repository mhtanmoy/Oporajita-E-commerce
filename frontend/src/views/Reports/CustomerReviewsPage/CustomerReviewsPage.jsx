import { useEffect, useMemo, useState } from 'react';
import { Link } from 'react-router-dom';
import { ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import { errorToast } from '../../../helpers/toast.js';
import {
  useTable,
  useSortBy,
  usePagination,
  useRowSelect,
  useGlobalFilter,
} from 'react-table';
import { FaRegCalendarAlt, FaSearch } from 'react-icons/fa';

import axiosInstance from '../../../helpers/axios.js';
import Progress from '../../../components/loading/Progress.jsx';
import Pagination from '../../../components/others/pagination.jsx';
import { columns as tableHeader, data as tableData } from './data.js';
import IndeterminateCheckbox from '../../../components/table/utils/IndeterminateCheckbox';

function CustomerReviewsPage() {
  //state
  const [data, setData] = useState([]);
  const [rawData, setRawData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
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
    pageCount,
    state: { pageSize },
    setPageSize,
    prepareRow,
    selectedFlatRows,
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
          disableSortBy: false,
          Header: ({ getToggleAllRowsSelectedProps }) => (
            <div>
              <IndeterminateCheckbox {...getToggleAllRowsSelectedProps()} />
            </div>
          ),
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
  //handlers
  var token = localStorage.getItem('token');
  const config = {
    headers: {
      "Content-type": "application/json",
      Authorization: `Bearer ${token}`,
    },
  };
  //search
  const searchHandler = (searchInput) => {
    if (searchInput.length > 0) {
      const searchResult = rawData.filter((data) => {
        if (
          data.name.toLowerCase().includes(searchInput.toLowerCase()) ||
          data.email.toLowerCase().includes(searchInput.toLowerCase())
        ) {
          return data;
        }
      });
      setData(searchResult);
    } else {
      setData(rawData);
    }
  };

  useEffect(() => {
    setPageSize(15);
    //API

    (async function getData() {
     
      try {
        const response = await axiosInstance.get('api/v1/inventory/dummy/',config);
        setData(response.data);
        setRawData(response.data);
        setIsLoading(false);
      } catch (err) {
        errorToast('Error on loading customer reviews! Please try again.');
        console.error(err);

        setIsLoading(false);
      }
    })();
  }, []);

  return (
    <div className="page-container-scroll">
      <div className="page-container">
        <Progress isAnimating={isLoading} key={0} />
        <div className="page-header-container row">
          <h1 className="page-title col-xs-12 col-md-6">Customer Reviews</h1>
          <div className="page-header-button-container col-xs-12 col-md-6">
            <button
              className="btn btn-success"
              type="button"
              id="calendarFilter"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              Last 30 Days
              <span style={{ marginLeft: '3px' }}>
                <FaRegCalendarAlt />
              </span>
            </button>
            {selectedFlatRows.length > 0 && (
              <button
                className="btn btn-danger"
                type="button"
                onClick={() => {
                  deleteButtonHandler(selectedFlatRows);
                }}
              >
                Delete {selectedFlatRows.length} Review(s)
              </button>
            )}
            <ul className="dropdown-menu" aria-labelledby="calendarFilter">
              <li>
                <a className="dropdown-item" href="#">
                  Today
                </a>
                <a className="dropdown-item" href="#">
                  Yesterday
                </a>
                <a className="dropdown-item" href="#">
                  Last 7 Days
                </a>
                <a className="dropdown-item" href="#">
                  Last 30 Days
                </a>
                <a className="dropdown-item" href="#">
                  This Month
                </a>
                <a className="dropdown-item" href="#">
                  Last Month
                </a>
                <a className="dropdown-item" href="#">
                  Last 3 Months
                </a>
                <a className="dropdown-item" href="#">
                  Last 6 Months
                </a>
                <a className="dropdown-item" href="#">
                  Custom Range
                </a>
              </li>
            </ul>
          </div>
        </div>
        <nav aria-label="breadcrumb">
          <ol className="breadcrumb text-muted">
            <li className="breadcrumb-item">
              <Link to="/">Home</Link>
            </li>
            <li className="breadcrumb-item">
              <a>Customer Reviews</a>
            </li>
          </ol>
        </nav>
        <div className="panel-container">
          <div className="table-container">
            <div className="row">
              <div className="col-md-6">
                <div className="panel-filter">
                  <div className="inner-addon left-addon">
                    <FaSearch className="fa" />
                    <input
                      id="search-input"
                      type="text"
                      name="search"
                      className="form-control input-search"
                      placeholder="Search name or email"
                      onChange={(e) => {
                        searchHandler(e.target.value);
                      }}
                    />
                  </div>
                </div>
              </div>
              <div className="col-md-6">
                <div className="page-header-button-container">
                  <select className="form-select" style={{ width: 'auto' }}>
                    <option>Filter</option>
                    <option>All</option>
                    <option>Approved</option>
                    <option>Declined</option>
                  </select>
                </div>
              </div>
            </div>

            <div className="table-scroll">
              <table
                className="table-responsive table-container"
                {...getTableProps()}
              >
                <thead className="grey-table-header">
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
                                <img
                                  src="/static/assets/icons/sort_both.png"
                                  className="table-sort-icon"
                                />
                              ) : (
                                <img
                                  src="/static/assets/icons/sort_both.png"
                                  className="table-sort-icon"
                                />
                              )
                            ) : (
                              column.disableSortBy !== true &&
                              column.id !== 'selection' && (
                                <img
                                  src="/static/assets/icons/sort_both.png"
                                  className="table-sort-icon"
                                />
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
                      <tr key={i} {...row.getRowProps()}>
                        {row.cells.map((cell, index) => {
                          return (
                            <td key={index} {...cell.getCellProps()}>
                              {cell.render('Cell')}
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
            <div className="pagination-container">
              {rows.length > pageSize && (
                <Pagination
                  canPreviousPage={canPreviousPage}
                  previousPage={previousPage}
                  canNextPage={canNextPage}
                  nextPage={nextPage}
                  gotoPage={gotoPage}
                  totalPage={pageCount}
                />
              )}
            </div>
          </div>
        </div>
        <ToastContainer />
      </div>
    </div>
  );
}

export default CustomerReviewsPage;
