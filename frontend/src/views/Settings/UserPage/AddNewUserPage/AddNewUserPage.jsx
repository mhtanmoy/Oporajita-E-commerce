import axios from 'axios';
import { useState } from 'react';
import { useForm } from 'react-hook-form';
import { Link } from 'react-router-dom';

function AddNewUserPage() {
  //axios
  axios.defaults = 'https://aporajitatumi.somikoron.com/';

  //states
  const [roleType, setRoleType] = useState({});

  //hooks
  const {
    register: profile_info,
    handleSubmit: handleSubmitProfileInfo,
    formState: { errors_profile },
  } = useForm();
  const {
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
  const rolesArray =[
    {
      value:null,
      name:'Select..',
    },
    {
      value:'ecommerce_staff',
      name: 'Ecommerce Staff',
    },
    {
      value:'pos_cashier',
      name:'Pos Cashier',
    },
    {
      value:'pos_manager',
      name:'Pos Manager',
    }
  ]

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
                    onChange={(e)=>setRoleType(e.target.value)}
                  >
                    {
                      rolesArray.map(role=><option key={role.value} value={role.value}>{role.name}</option>)
                    }
                  </select>
                </div>
              </div>
              {
                console.log(roleType)
              }
              <div className="col-xs-11">
                <hr className=" grey"/>
              </div>
              <div className="form-submit-button-end">
                <button className="btn btn-primary">Send Invite</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}

export default AddNewUserPage;
