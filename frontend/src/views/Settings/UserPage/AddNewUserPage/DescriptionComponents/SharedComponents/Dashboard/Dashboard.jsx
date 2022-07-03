
function Dashboard({roles,roles_watch}){

   const selectAll = roles_watch('dashboard_selectAll');
   console.log(selectAll); 

    return(
        
        <div className="row">
        
            <div className="col-xs-12 col-md-3">
                <p
                className="setting-page-container-title"
                style={{ marginTop: '0px' }}
                >
                Dashboard
                </p>
            </div>

            <div className="col-xs-12 col-md-9">

                <div className="form-check">
                    <input 
                        class="form-check-input"
                        value='all'
                        type="checkbox" 
                        name="selectAll" 
                        id="selectAll" 
                        {...roles('dashboard_selectAll')}
                        defaultChecked
                    />
                    <label htmlFor="selectAll">Select All</label>
                </div>

                <div className="form-check">
                    <input 
                        class="form-check-input"
                        value='dashboard'
                        type="checkbox" 
                        name="dashboard" 
                        id="dashboard" 
                        {...roles('dashboard',{required:{
                            value:true,
                        }})}
                        defaultChecked={selectAll}
                        checked={selectAll}
                    />
                    <label htmlFor="dashboard">Dashboard</label>
                </ div>

            </div>
        </div>
            
        
    );
}

export default Dashboard;