import { useEffect, useState } from 'react';
import { useForm } from 'react-hook-form';
import { FaTimes } from "react-icons/fa";
import axiosInstance from '../../../../../helpers/axios';
import '../../CreateNewPurchaseOrderPage/popup.css';
function AddPaymentsModal({setAddPaymentModalIsOpen,data}){
    console.log(data);
    //states
    // const [id, setId] = useState(data.id);
    const [due, setDue] = useState(data.total_due);
    // const [purchaseDetail,setPurchaseDetail] = useState(data);
    // const [amount, setAmount] = useState([])
    const po_number = data.po_number;
    // const preId = data.id;
    //hooks
 const {
        register,
        formState: { errors },
        handleSubmit,
        reset
      } = useForm();

  // handlers
    const onSubmit = (data) => {
        // const payment = JSON.stringify(data)
        console.log(data);
        putPaymentData(data);
    };
    var token = localStorage.getItem('token');
    const config = {
      headers: {
        "Content-type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    };

    //getting payment daa
    async function getData(){
       
        const req = await axiosInstance.get(`api/v1/inventory/purchase-update/${data.id}/`,config);
        console.log('modal',req.data);
        // setAmount(req.data)
        const due = req.data[req.data.length - 1].due;
        setDue(due)
    }
    useEffect(()=>{
        getData()
    },[])
    //submit data 
    async function putPaymentData(payment_data){
        
        console.log(`api/v1/inventory/purchase-update/${data.id}/`);
        const req = await axiosInstance.post(`api/v1/inventory/purchase-update/${data.id}/`,{
            "amount": payment_data.payment_amount,
            "payment_date": payment_data.payment_date,
            "payment_method": payment_data.payment_method,
            "reference": payment_data.payment_reference
        },config);
        // console.log(req,req.data);
        if(req.status === 200){
            const due = req.data.due;
            console.log(req,req.data);
            // setAmount(req.data);
            setDue(due)
            reset({payment_amount:"",payment_date:"",payment_method:'',payment_reference:''})
        }
    }

    return(
        <div className="modal">
            <div className="modal-body" style={{height:'65%'}}>
                <div className="nav-section">
                    <p className="panel-heading" >{`Add Payments For ${po_number}`}</p>
                    <button className='btn wraper' onClick={() => setAddPaymentModalIsOpen(false)}>
                      <FaTimes />
                    </button>
                </div>
                <div className='text-center'>
                    <p className="panel-heading" style={{color:'#12AFCB'}}>
                        {`Due Payment: ${due}`}
                    </p>
                </div>
                <div>
                    <form onSubmit={handleSubmit(onSubmit)}>
                        <div className="col">
                            <div className="row">
                                <div className="mb-4 col-md-12">
                                    <label className='form-label row-option-title required'>
                                        Payment Reference
                                    </label>
                                    <input
                                        type="text"
                                        className={`form-control ${errors.payment_reference ? 'is-invalid' : ''
                                        }`}
                                        {...register('payment_reference',{required:true})}
                                    />
                                    <div className="invalid-feedback">
                                        {errors.payment_reference && "Can't be empty"}
                                    </div>
                                </div>
                                    <div className='col-md-6'>
                                        <label className='form-label row-option-title required'>
                                            Payment Date
                                        </label>
                                        <input
                                            type="date"
                                            {...register('payment_date', { required: true })}
                                            className={`form-control ${errors.payment_date ? 'is-invalid' : ''
                                            }`}
                                        />
                                        <div className="invalid-feedback">
                                            {errors.payment_date && "Can't be empty"}
                                        </div>
                                    </div>
                                    <div className='col-md-6'>
                                        <label className='form-label row-option-title required'>
                                            Payment Method
                                        </label>
                                        <select 
                                        defaultValue={null}
                                        {...register('payment_method',{required:true})}
                                        className={`form-select ${errors.payment_method ? 'is-invalid' : ''
                                        }`}
                                        >   
                                            <option value= "">Choose One</option>
                                            <option value="CASH">Cash</option>
                                            <option value="CHEQUE">Cheque</option>
                                            <option value="BANK_TRANSFER">Bank Transfer</option>
                                            <option value="MOBILE_TRANSFER">Mobile Transfer</option>
                                        </select>
                                        <div className="invalid-feedback">
                                            {errors.payment_method && "Can't be empty"}
                                        </div>
                                    </div>
                                    <div className="mt-4 col-md-12">
                                        <label className='form-label row-option-title required'>
                                            Payment Amount
                                        </label>
                                    <input
                                        type="number"
                                        min='0'
                                        {...register('payment_amount',{required:true})}
                                        className={`form-control ${errors.payment_amount ? 'is-invalid' : ''
                                        }`}
                                    />
                                    <div className="invalid-feedback">
                                        {errors.payment_amount && "Can't be empty"}
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div className='button-section mt-5'>
                            <button type='submit' className='btn btn-primary' style={{ marginRight: 10 }}>Submit</button>
                            <button 
                            className='btn wraper'
                            onClick={()=>setAddPaymentModalIsOpen(false)}
                            >
                                Cancel
                            </button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
        
    );
}

export default AddPaymentsModal;