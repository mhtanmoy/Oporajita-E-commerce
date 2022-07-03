import { useEffect, useState } from 'react';
import { useForm } from 'react-hook-form';
import { Link } from 'react-router-dom';
import axiosInstance from '../../../../helpers/axios';
import EcommerceStaff from './DescriptionComponents/MainComponents/EcommerceStaff/EcommerceStaff';


function AddNewUserPage() {
  //axios
  // axios.defaults = 'http://localhost:8000';

  //states
  const [roleType, setRoleType] = useState({});
  const [rolesArray, setRolesArray] = useState([]);

  //hooks
  const {
    register: profile_info,
    handleSubmit: handleSubmitProfileInfo,
    formState: { errors_profile },
  } = useForm();
  const {
    watch:roles_watch,
    register: roles,
    handleSubmit: handleSubmitRoles,
    formState: { errors_roles },
  } = useForm();

  //handlers
  const onSubmitProfileInfo = (data) => {
    console.log(data);
  };
  const onSubmitRole = (data) => {
    console.log(data);
  };
  const checkKeyDown = (e) => {
    if (e.code === 'Enter') {
      e.prevent.Default();
    }
  };
  //temporary data
  // const rolesArray =[
  //   {
  //     value:null,
  //     name:'Select..',
  //   },
  //   {
  //     value:'ecommerce_staff',
  //     name: 'Ecommerce Staff',
  //   },
  //   {
  //     value:'pos_cashier',
  //     name:'Pos Cashier',
  //   },
  //   {
  //     value:'pos_manager',
  //     name:'Pos Manager',
  //   }
  // ];
  var token = localStorage.getItem('token');
  const config = {
    headers: {
      "Content-type": "application/json",
      Authorization: `Bearer ${token}`,
    },
  };
  //roles
  const getRoles = async ()=>{
    const response = await axiosInstance.get('https://oporajita1.herokuapp.com/api/v1/settings/role/',config);
    setRolesArray(response.data)
    console.log(response.data);
  }

  useEffect(()=>{
    getRoles();
  },[])

  return (
    <div className="page-container-scroll">
      <div className="page-container">
        <div className="page-header-container row">
          <h1 className="page-title col-xs-12 col-md-6">Add New User</h1>
          <div className="page-header-button-container col-xs-12 col-md-6">
            <Link to="/admin/users" className="btn btn-primary">
              View All Users
            </Link>
          </div>
        </div>

        <div className="panel-container">
          <form
            onSubmit={handleSubmitProfileInfo(onSubmitProfileInfo)}
            onKeyDown={(e) => checkKeyDown(e)}
          >
            <div className="row">
              <div className="page-header-button-container">
                <button className="btn btn-primary">Send Invite</button>
              </div>
              <div className="col-xs-12 col-md-3">
                <p
                  className="setting-page-container-title"
                  style={{ marginTop: '0px' }}
                >
                  Profile Info
                </p>
              </div>
              <div className="col-xs-12 col-md-9">
                <div className='mt-2'>
                  <label htmlFor="email" className='row-option-title required'>Email</label>
                  <input type="email" className='form-control' {...profile_info('email',{required:true})}/>
                </div>
                <div className='mt-2'>
                  <label htmlFor="phone" className='row-option-title'>Phone Number</label>
                  <input type="text" className='form-control' {...profile_info('phone')}/>
                </div>
              </div>
            </div>
          </form>
          <hr className="light-grey" />
          <form 
            onSubmit={handleSubmitRoles(onSubmitRole)}
            onKeyDown={(e) => checkKeyDown(e)}
          >
            <div className="row">
              <div className="col-xs-12 col-md-3">
                <p
                  className="setting-page-container-title"
                  style={{ marginTop: '0px' }}
                >
                  Roles
                </p>
              </div>
              <div className="col-xs-12 col-md-9">
                <div>
                  <label htmlFor="roles" className='row-option-title required'>Role</label>
                  <select 
                    name="role" 
                    className='form-control' 
                    {...roles('role',{required:true})}
                    onChange={(e)=>{
                      console.log(e.target.value);
                      setRoleType(e.target.value)
                    }}
                  >
                    {
                      rolesArray.map(role=><option key={role.id} value={role.id}>{role.name}</option>)
                    }
                  </select>
                </div>
              </div>
            </div>

            <hr className="light-grey"/>

              <EcommerceStaff roles={roles} roles_watch={roles_watch}/>

              <hr className="light-grey"/>

              <div className="form-submit-button-end">
                <button className="btn btn-primary">Send Invite</button>
              </div>
            {/* </div> */}
          </form>
        </div>
      </div>
    </div>
  );
}

export default AddNewUserPage;
