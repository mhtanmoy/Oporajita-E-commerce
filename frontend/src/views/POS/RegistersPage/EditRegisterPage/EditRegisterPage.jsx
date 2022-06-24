import { useEffect, useState } from 'react';
import { useForm } from 'react-hook-form';
import { Link , useLocation } from 'react-router-dom';
import Select from 'react-select';

import { ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import axiosInstance from '../../../../helpers/axios';
import { errorToast, successToast } from '../../../../helpers/toast.js';
import Progress from '../../../../components/loading/Progress';
function CreateNewRegisterPage() {
  const location = useLocation();
  const previousData = location.state;
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm({
    defaultValues: {
      ...previousData,
    },
  });
   //states
   const [isLoading, setIsLoading] = useState(true);
   const [outletList, setoutletList] = useState([]);
 
   //selection states
   
   const [selectedoutlet, setSelectedoutlet] = useState({
     name: '',
      
   });
   
   //select handlers
   const initalizeoutletOptions = (outlets) => {
     const selectOptions = outlets.map((data) => {
       return {
         ...data,
         value: data.id,
         label: `${data.location_name}`,
       };
     });
     return selectOptions;
   };
   
   const outletSelectHandler= (event) => {
     event.name = event.name;
     console.log(event);
     setSelectedoutlet(event);
   };
  
   //forms handlers
   const onSubmit = (data) => {
     console.log(data);
     sendData(data);
   };
   const checkKeyDown = (e) => {
     if (e.code === 'Enter') {
       e.prevent.Default();
     }
   };
 
   //initialize select
   const outletOptions = initalizeoutletOptions(outletList);
   //----------API START-------
   var token = localStorage.getItem('token');
   const config = {
     headers: {
       "Content-type": "application/json",
       Authorization: `Bearer ${token}`,
     },
   };
  
   async function getOutletData() {
     try {
       const response = await axiosInstance.get(
         '/api/v1/pos/outlets/',config
       );
       setoutletList(response.data);
       console.log(response.data);
       setIsLoading(false);
     } catch (err) {
       errorToast('Error on loading data!, Please try again.');
       console.error(err);
       setIsLoading(false);
     }
   }
   
   useEffect(() => {
     getOutletData();
   }, []);
 async function sendData(data,e) {
   setIsLoading(true);
   data.outlet = selectedoutlet.id;
   console.log(data)
  
     
   try {
    const response = await axiosInstance.put(`/api/v1/pos/registers/update/${previousData.id}/`,data,config);

     setIsLoading(false);
     e.target.reset();
     console.log("razzak",response.data)
   } catch (err) {
     errorToast('Error on loading data!, Please try again.');
     setIsLoading(false);
   }
 }
  return (
    <div className="page-container-scroll">
      <div className="page-container">
        <div className="page-header-container row">
          <h1 className="page-title col-xs-12 col-md-6">Edit Register</h1>
          <div className="page-header-button-container col-xs-12 col-md-6">
            <Link to="/admin/pos/registers" className="btn btn-success">
              View All Registers
            </Link>
          </div>
        </div>

        <div className="panel-container">
          <form onSubmit={handleSubmit(onSubmit)}
          onKeyDown={(e) => checkKeyDown(e)}>
            <div className="column-input-container">
              <div className="row">
                <div className="mb-3 col-md-6">
                  <label
                    htmlFor="registerName"
                    className="form-label required row-option-title"
                  >
                    Register Name
                  </label>
                  <input
                    type="text"
                    className="form-control"
                    id="registerName"
                    aria-describedby="registerName"
                    {...register('name', { required: true })}
                  />
                </div>

                <div className="mb-3 col-md-6">
                  <label
                    htmlFor="outlet"
                    className="form-label required row-option-title"
                  >
                    Select Outlet
                  </label>
                  <Select
                    options={outletOptions}
                    placeholder=""
                    onChange={outletSelectHandler}
                    classNamePrefix="react-select-new-order"
                  />
                </div>

                <div className="mb-3 col-md-6">
                  <label
                    className="form-check-label row-option-title"
                    htmlFor="active"
                  >
                    <input
                      type="checkbox"
                      className="form-check-input"
                      id="active"
                      {...register('register_active')}
                    />
                    Active ?
                  </label>
                </div>
              </div>
            </div>

            <div className="form-submit-button-end">
              <button type="submit" className="btn btn-primary">
                Save Register
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}

export default CreateNewRegisterPage;
