import { useEffect, useState } from 'react';
import { FaTimes } from "react-icons/fa";
import { useRowSelect, useRowState, useTable } from 'react-table/dist/react-table.development';
import axiosInstance from '../../../../../../helpers/axios';
import '../../../CreateNewPurchaseOrderPage/popup.css';
import { COLUMNS } from './column';

function ViewPaymentModal({setViewPaymentModalIsOpen,data}){
    // console.log(props);
    const [purchaseData, setPurchaseData] = useState([]);
    var token = localStorage.getItem('token');
    const config = {
      headers: {
        "Content-type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    };

    async function getData(){
        const req = await axiosInstance.get(`api/v1/inventory/purchase-update/${data.id}/`,config);
        console.log('modal',req);
        setPurchaseData(req.data);
        console.log(purchaseData);

    }

    useEffect(()=>{
        getData();
        console.log(purchaseData);
    },[])

    const {
        getTableProps,
        getTableBodyProps,
        headerGroups,
        rows,
        prepareRow,
      } = useTable({
        columns: COLUMNS,
        data: purchaseData
      },
        useRowState,
        useRowSelect,
      )

      function show(row){
        let method = ""
        console.log(row);

        if (row.payment_method === "BANK_TRANSFER") {
            method = 'Bank Transfer';
        }
        else if(row.payment_method === 'CASH'){
            method = 'Cash'
        }
        else if(row.payment_method === 'CHEQUE'){
            method = 'Cheque'
        }
        else if(row.payment_method === 'MOBILE_TRANSFER'){
            method = 'Mobile Transfer'
        }

        return method
      }

    return(
        <div className="modal">
            <div className="modal-body">
                <div className="nav-section">
                    <p className="panel-heading" >{`Supplier Payments History for ${data.po_number}`}</p>
                    <button className='btn wraper' onClick={() => setViewPaymentModalIsOpen(false)}><FaTimes /></button>
                </div>
                <div>
                <table className='table-responsive table-container' {...getTableProps()}>
                    <thead>
                      {headerGroups.map((headerGroup) => (
                        <tr {...headerGroup.getHeaderGroupProps()}>
                          {headerGroup.headers.map((column, index) => (
                            <th
                              scope="col"
                              key={index}
                              className="table-header"
                              {...column.getHeaderProps(

                              )}
                            >
                              {column.render('Header')}

                            </th>
                          ))}
                        </tr>
                      ))}
                    </thead>
                    <tbody {...getTableBodyProps()}>
                      {
                        rows.map((row, i) => {
                          prepareRow(row)
                          return (
                            <tr scope="row" key={i} {...row.getRowProps()}>
                              {
                                row.cells.map((cell, index) => {
                                  return <td key={index} {...cell.getCellProps()}>
                                      {
                                        index === 2 ? show(row.original) : cell.render('Cell')
                                      }
                                      
                                  </td>
                                })
                              }

                            </tr>
                          )
                        })
                      }
                    </tbody>
                  </table>
                </div>
                <div className="button-section">
                    <button className='btn wraper' onClick={() => setViewPaymentModalIsOpen(false)}>Close</button>
                </div>
            </div>
        </div>
        
    );
}

export default ViewPaymentModal;