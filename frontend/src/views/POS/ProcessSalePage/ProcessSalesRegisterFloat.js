import React, { useEffect, useState } from 'react';
import Button from 'react-bootstrap/Button';
import Modal from 'react-bootstrap/Modal';
import { Link } from 'react-router-dom';
import axiosInstance from '../../../helpers/axios';
import './ProcessSalesRegister.css'

const ProcessSalesRegisterFloat = () => {
    const [show, setShow] = useState(true);
    const [data, setData] = useState()

    const handleClose = () => setShow(false);
    const handleShow = () => setShow(true);
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
                        <Modal.Title>Open Register</Modal.Title>
                    </Modal.Header>
                    <hr />
                    <Modal.Body>
                        <div>
                            <h5>Enter Opening Float:</h5>
                            <input type="Number" defaultValue={0} />
                        </div>
                    </Modal.Body>

                    <Modal.Footer>
                        <Button variant="primary" onClick={handleClose}>
                            <Link to={'/admin/pos/sales/new/'}>Open</Link>
                        </Button>
                        <Button variant="secondary" onClick={handleClose}>
                            Close
                        </Button>

                    </Modal.Footer>
                </Modal>

            </div>
        </div>
    );
};

export default ProcessSalesRegisterFloat;