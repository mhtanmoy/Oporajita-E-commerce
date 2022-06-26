import { useState } from 'react';
import { FaTimes } from "react-icons/fa";
import axiosInstance from '../../../../../helpers/axios';
import '../../CreateNewPurchaseOrderPage/popup.css';
function ReceiveSingleModal({setReceiveSingelModalIsOpen,data,filterData,setProducts}){
    console.log(data);
    //getting data

    //states
    const [purchased_products, setPurchased_products] = useState(data.product_purchased_item);
    const [receiveQuantity,setReceiveQuantity] = useState(0);
    // console.log(purchased_products);


    //handlers
    const handleReceiveNow =(id,order_quantity)=>{
        console.log(purchased_products[id]);
        if (receiveQuantity > order_quantity) {
            alert("Receive quantity can't be greater then ordered quantity");
            return;
        }
        putData(id);
        
    }
    var token = localStorage.getItem('token');
    const config = {
      headers: {
        "Content-type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    };

    async function putData (id){
        console.log(`api/v1/inventory/purchase-details/${data.id}/`);
        const req = await axiosInstance.put(`api/v1/inventory/purchase-details/${data.id}/`,{
            "purchase_item_id": id,
            "received_amount": receiveQuantity
        },config);
        if(req.status === 200){
            setPurchased_products(req.data.product_purchased_item);
            setProducts(req.data.product_purchased_item);
        }
        console.log(req);
    }



    return(
        <div className="modal">
            <div className="modal-body">
                <div className="nav-section">
                    <p className="panel-heading" >Check items as received</p>
                    <button className='btn ' onClick={() => setReceiveSingelModalIsOpen(false)}>
                      <FaTimes />
                    </button>
                </div>
                <div className="table overflow-auto" style={{height:'80%'}}>
                    <table className="table table-responsive table-container">
                        <thead>
                            <tr>
                                <th scope="col" className="text-center">Product Name</th>
                                <th scope="col" className="text-center">Variant</th>
                                <th scope="col" className="text-center">Ordered</th>
                                <th scope="col" className="text-center">Received</th>
                                <th scope="col" className="text-center">Receive</th>
                                <th scope="col" className="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                                purchased_products.map(product=><tr key={product.id}>
                                        <th scope="row">
                                            {
                                                filterData(1,product.id)
                                            }
                                        </th>
                                        <td className="text-center">
                                            {product.purchased_size}
                                        </td>
                                        <td className="text-center">
                                            {product.order_quantity}
                                        </td>
                                        <td className="text-center">
                                            {product.received_quantity}
                                        </td>
                                        <td className="text-center">
                                            <input type="number"
                                            max={product.order_quantity}
                                            min='0' 
                                            className="form-control" 
                                            onChange={(e)=>{
                                                const value =e.target.value;
                                                setReceiveQuantity(value);
                                            }}/>
                                        </td>
                                        <td className="text-center">
                                            <button
                                            className="btn btn-primary"
                                            onClick={()=>handleReceiveNow(product.id,product.order_quantity)}
                                            >
                                                Receive Now
                                            </button>
                                        </td>
                                    </tr>
                                )
                            }
                        </tbody>
                    </table>
                </div>
                <div className='button-section'>
                    <button className="btn" onClick={() => setReceiveSingelModalIsOpen(false)}>Close</button>
                </div>
            </div>
        </div>
        
    );
}

export default ReceiveSingleModal;