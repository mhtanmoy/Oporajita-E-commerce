
import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import Select from 'react-select';

import { useForm, useFieldArray } from 'react-hook-form';
import { useTable, usePagination, useRowSelect } from 'react-table';

import { FaPlus, FaSearch } from 'react-icons/fa';



function BulkUpdateProductsTable({
  tableHeader,
  tableData,
  tableVariants,
  columnOptions,
  tableFor,
}) {
  // states
  const [variants, setVariants] = useState(tableVariants);
  const [data, setData] = useState(tableData);
  const [columns, setColumns] = useState(tableHeader);
  const [applyAll, setApplyAll] = useState(false);

  // hooks
  const { register, handleSubmit, control } = useForm({
    defaultValues: {
      variants: variants,
    },
  });
  const { fields: variantsFiled, replace } = useFieldArray({
    control,
    name: 'variants',
  });

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
    state: { pageIndex, pageSize },
    setPageSize,
    prepareRow,
  } = useTable({ columns, data }, usePagination, useRowSelect);

  /* handlers */
  // form
  const onSubmit = (data, e) => {
    if (applyAll && data.apply_all) {
      replace(replaceFromApplyHandler(data));
    } else {
      replace(replaceHandler(data));
    }
    e.target.reset();
    setApplyAll(false);
  };

  const checkKeyDown = (e) => {
    if (e.code === 'Enter') e.preventDefault();
  };

  const replaceHandler = (data) => {
    const newObj = data.variants.map((variant) => {
      let updatedVariant = variant;
      if (variant.add_new !== '') {
        updatedVariant.quantity =
          Number(variant.add_new) + Number(variant.quantity);
      }
      return updatedVariant;
    });
    return newObj;
  };

  const replaceFromApplyHandler = (data) => {
    const newObj = data.variants.map((variant) => {
      let updatedVariant = variant;
      updatedVariant.quantity =
        Number(data.apply_all) + Number(variant.quantity);
      return updatedVariant;
    });
    return newObj;
  };

  //search
  const searchHandler = (searchInput) => {
    setData(tableData);
    if (searchInput.length > 0) {
      const searchResult = tableData.filter((product) => {
        if (product.name.toLowerCase().includes(searchInput.toLowerCase())) {
          return product;
        }
      });
      setData(searchResult);
    } else {
      setData(tableData);
    }
  };

  //select
  const columnSelectHandler = (event) => {
    let toAdd = {};
    for (let i = 0; i < event.length; i++) {
      toAdd[event[i].accessor] = true;
    }
    console.log(toAdd);
    const newColumns = tableHeader.filter((column) => {
      if (column.type !== 'inventory_location') {
        return column;
      } else if (
        column.type === 'inventory_location' &&
        toAdd[column.accessor]
      ) {
        return column;
      }
    });
    console.log(newColumns);
    setColumns(newColumns);
  };

  // page result
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
    setPageSize(20);
  }, []);

  return (
    <div className="table-container">
      <div className="row">
        <div className="panel-filter col-xs-12 col-md-6">
          <div className="inner-addon left-addon">
            <FaSearch className="fa" />
            <input
              id="search-input"
              type="text"
              name="search"
              className="form-control input-search"
              placeholder="Search products"
              onChange={(e) => {
                searchHandler(e.target.value);
              }}
            />
          </div>
        </div>
        <div className="col-xs-12 col-md-6">
          <Select
            isMulti
            options={columnOptions}
            defaultValue={columnOptions}
            placeholder="Select Inventory Locations"
            onChange={columnSelectHandler}
            classNamePrefix="react-select-bulk"
          />
        </div>
      </div>

      <div className="row my-2">
        <div className="text-muted col-md-6">
          <div>{pageResultText}</div>
        </div>
        <div className="col-md-6">
          <div className="form-group pull-right">
            <div className="d-flex align-items-center">
              <span className="mx-2">Per Page:</span>
              <div>
                <select
                  className="form-select"
                  value={pageSize}
                  onChange={(e) => {
                    setPageSize(Number(e.target.value));
                  }}
                >
                  {[20, 25, 30].map((pageSize) => (
                    <option key={pageSize} value={pageSize}>
                      {pageSize}
                    </option>
                  ))}
                </select>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className="table-scroll">
        <form
          onSubmit={handleSubmit(onSubmit)}
          onKeyDown={(e) => checkKeyDown(e)}
        >
          <table
            className="table-responsive table-container"
            {...getTableProps()}
          >
            <thead>
              {headerGroups.map((headerGroup) => (
                <tr {...headerGroup.getHeaderGroupProps()}>
                  {headerGroup.headers.map((column, index) => (
                    <th scope="col" key={`col-${index}`}>
                      {column.render('Header')}
                    </th>
                  ))}
                </tr>
              ))}
            </thead>
            <tbody {...getTableBodyProps()}>
              <tr scope="row">
                <td></td>
                <td></td>
                <td></td>
                <td>
                  <div className="input-group m-b-sm">
                    <span className="input-group-btn">
                      <button
                        className="btn btn-primary radious-top-right-0 radious-bottom-right-0"
                        type="button"
                      >
                        %
                      </button>
                    </span>
                    <input
                      type="text"
                      className="form-control text-center"
                      style={{ height: '34px' }}
                    />
                    <span className="input-group-btn">
                      <button
                        className="btn btn-primary radious-top-left-0 radious-bottom-left-0"
                        type="button"
                      >
                        <FaPlus />
                      </button>
                    </span>
                  </div>
                </td>
                <td>
                  <div className="input-group m-b-sm">
                    <span className="input-group-btn">
                      <button
                        className="btn btn-primary radious-top-right-0 radious-bottom-right-0"
                        type="button"
                      >
                        %
                      </button>
                    </span>
                    <input
                      type="text"
                      className="form-control text-center"
                      style={{ height: '34px' }}
                    />
                    <span className="input-group-btn">
                      <button
                        className="btn btn-primary radious-top-left-0 radious-bottom-left-0"
                        type="button"
                      >
                        <FaPlus />
                      </button>
                    </span>
                  </div>
                </td>
                <td>
                  <div className="input-group m-b-sm">
                    <span className="input-group-btn">
                      <button
                        className="btn btn-primary radious-top-right-0 radious-bottom-right-0"
                        type="button"
                      >
                        %
                      </button>
                    </span>
                    <input
                      type="text"
                      className="form-control text-center"
                      style={{ height: '34px' }}
                    />
                    <span className="input-group-btn">
                      <button
                        className="btn btn-primary radious-top-left-0 radious-bottom-left-0"
                        type="button"
                      >
                        <FaPlus />
                      </button>
                    </span>
                  </div>
                </td>
                <td></td>
                <td></td>
              </tr>
              {page.map((row, i) => {
                prepareRow(row);
                return (
                  <React.Fragment key={i}>
                    <tr scope="row" key={`row-${i}`} {...row.getRowProps()}>
                      {row.cells.map((cell, index) => {
                        return (
                          <td key={`row-${index}`} {...cell.getCellProps()}>
                            {index === 0 ? (
                              <img
                                className="img-fluid rounded"
                                src={row.original.imageURL}
                                width="40"
                              />
                            ) : index === 2 ? (
                              <textarea
                                className="form-control"
                                defaultValue={row.original.name}
                              />
                            ) : index === 3 ? (
                              <input
                                className="form-control"
                                defaultValue={row.original.price}
                              />
                            ) : index === 6 ? (
                              <input
                                type="checkbox"
                                className="form-check-input"
                              />
                            ) : index !== 1 && index !== 2 && index !== 6 ? (
                              <input className="form-control" />
                            ) : (
                              cell.render('Cell')
                            )}
                          </td>
                        );
                      })}
                    </tr>
                    {variantsFiled.map((variant, index) => {
                      if (row.original.id === variant.productId) {
                        return (
                          <tr scope="row" key={`variants-${index}`}>
                            <td></td>
                            <td>Size: {variant.size}</td>
                            <td>
                              <textarea
                                className="form-control"
                                defaultValue={variant.name}
                                {...register(`variants[${index}].name`)}
                              />
                            </td>
                            <td>
                              <input
                                className="form-control"
                                defaultValue={variant.selling_price}
                                min="0"
                                type="number"
                                {...register(
                                  `variants[${index}].selling_price`
                                )}
                              />
                            </td>
                            <td>
                              <input className="form-control" />
                            </td>
                            <td>
                              <input className="form-control" />
                            </td>
                            <td>
                              <input
                                type="checkbox"
                                className="form-check-input"
                              />
                            </td>
                            <td>
                              <input className="form-control" />
                            </td>
                          </tr>
                        );
                      }
                    })}
                  </React.Fragment>
                );
              })}
            </tbody>
          </table>
          {rows.length !== 0 && (
            <div className="form-submit-button-end">
              <button type="submit" className="btn btn-primary">
                Update
              </button>
            </div>
          )}
        </form>
      </div>
      {rows.length === 0 && (
        <div className="d-flex">
          <p className="mx-auto">No records to display</p>
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
 
  );
}

export default BulkUpdateProductsTable;
