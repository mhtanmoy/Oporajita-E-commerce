import React, { useEffect, useState } from 'react';
import Button from 'react-bootstrap/Button';
import Modal from 'react-bootstrap/Modal';
import { Link } from 'react-router-dom';
import axiosInstance from '../../../helpers/axios';
import './ProcessSalesRegister.css'

const ProcessSalesRegister = () => {
    const [show, setShow] = useState(true);
    const [data, setData] = useState()

    const handleClose = () => setShow(false);
    const handleShow = () => setShow(true);

    useEffect(() => {
        fetchRegisterUser()

    }, [])
    var token = localStorage.getItem('token');
    const config = {
      headers: {
        "Content-type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    };

    async function fetchRegisterUser() {
       
        const response = await axiosInstance('http://aporajitatumi.somikoron.com/api/v1/pos/registers/',config);
        // waits until the request completes...
        setData(response.data)
    }
    const handleData = (data) => {
        console.log("handle data", data);
        sessionStorage.setItem("registerName", data.name);
    }

    const listItems = data?.map((data) =>
        <li onClick={() => handleData(data)}><Link to="/admin/pos/sales/new/register/float">{data.name}</Link></li>
    );

    return (
        <div className="page-container-scroll">
            <div className="page-container">
                {/* <Button variant="primary" onClick={handleShow}>
                    Launch demo modal
                </Button> */}

                <Modal show={show} onHide={handleClose} size="lg"
                    aria-labelledby="contained-modal-title-vcenter"
                    centered>
                    <Modal.Header closeButton>
                        <Modal.Title>Select An Outlet</Modal.Title>
                    </Modal.Header>
                    <hr />
                    {/* <Modal.Body>Woohoo, you're  reading this text in a modal!</Modal.Body> */}
                    <div className="register-user" >
                        <div className="main-outlet">
                            <h5>Main outlet</h5>
                        </div>
                        <div className="register">
                            <ul>
                                {listItems}
                            </ul>
                        </div>
                    </div>
                    <Modal.Footer>
                        <Button variant="secondary" onClick={handleClose}>
                            Close
                        </Button>
                        {/* <Button variant="primary" onClick={handleClose}>
                            Save Changes
                        </Button> */}
                    </Modal.Footer>
                </Modal>

            </div>
        </div>
    );
};

export default ProcessSalesRegister;