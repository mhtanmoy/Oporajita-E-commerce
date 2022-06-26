import { useForm } from 'react-hook-form';
import { FaTimes } from 'react-icons/fa';
import axiosInstance from '../../../../helpers/axios';
import './newCustomerDetailModal.css';
function NewCustomerDetailModal({setNewUserDetailModalIsOpen, setUserData, setUserFullName}){
    const { register, handleSubmit,required,formState: { errors } } = useForm();
    
    const onSubmit = data => {
        console.log(data);
        postData(data);
        const fullName = data.firstName.concat(' ',data.lastName);
        setUserFullName(fullName);
    };
    const postData = async data =>{
        const config = {
            headers: {
              "Content-type": "application/json",
              Authorization: "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjU5MDE2Mzk5LCJpYXQiOjE2NTUxMjgzOTksImp0aSI6ImZlMTRkOTM5MjE3MTQxNDRhOWRjMTQ2NjdlNzI5M2RlIiwidXNlcl9pZCI6MX0._Q-22pxglF_DuBwHE-iiOmZgvsxU_Fxce3wB5eQUsnw",
            },
          };
          const newUser = {
            email: data.email,
            title: "",
            first_name: data.firstName,
            last_name: data.lastName,
            company_name: "",
            designation: "",
            gender: data.gender,
            phone: data.phoneNumber,
            customer_number: "",
            birthdate: data.dob,
            address: ""
          }
          setUserData(newUser);
          setNewUserDetailModalIsOpen(false);
          console.log(newUser);
        try {
            const response = await axiosInstance.post('/api/v1/customer/customer-profile-create/',newUser,config);
            console.log(response);
        } catch (error) {
            console.log(error);
        }
    }
    return(
        // <div>
            <div className="customerDetailModal">
                <div className='customerDetailModal-body'>
                    <div className="nav-section">
                        <p className="panel-heading">Add New Customer</p>
                        <button className='btn' onClick={()=>setNewUserDetailModalIsOpen(false)}>
                            <FaTimes/>
                        </button>
                    </div>
                    <div className='customerDetailModal-main-body'>
                        <form onSubmit={handleSubmit(onSubmit)}>
                            
                            <div className='row my-3'>
                                <div className='col-md-6'>
                                    <label className='row-option-title required'>First Name</label>
                                    <input className={`form-control ${errors.name ? 'is-invalid' : ''}`} type="text" {...register('firstName',{required})}/>
                                </div>
                                <div className='col-md-6'>
                                    <label className='row-option-title'>Last Name</label>
                                    <input className={'form-control'} type="text" {...register('lastName')}/>
                                </div>
                            </div>
                            <div className='row my-3'>
                                <div className='col-md-6'>
                                    <label className='row-option-title required'>Phone Number</label>
                                    <input className={`form-control ${errors.name ? 'is-invalid' : ''}`} type="text" {...register('phoneNumber',{required})}/>
                                </div>
                                <div className='col-md-6'>
                                    <label className='row-option-title'>Email</label>
                                    <input className={'form-control'} type="text" {...register('email')}/>
                                </div>
                            </div>
                            <div className='row my-3'>
                                <div className='col-md-6'>
                                    <label className='row-option-title'>Gender</label>
                                    <select className='form-control' {...register('gender')}>
                                        <option value=''>Select One</option>
                                        <option value="MALE">Male</option>
                                        <option value="FEMALE">Female</option>
                                    </select>
                                </div>
                                <div className='col-md-6'>
                                    <label className='row-option-title'>Date of Birth</label>
                                    <input className={'form-control'} type="date" {...register('dob')} />
                                </div>
                            </div>                            
                            <div className='d-flex align-item-center justify-content-center my-3'>
                                <button type='reset' className='btn mx-2' onClick={()=>setNewUserDetailModalIsOpen(false)}>Cancel</button>
                                <button type='submit' className='btn btn-primary mx-2'>Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        // </div>
    );
}

export default NewCustomerDetailModal;