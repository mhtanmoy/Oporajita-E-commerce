import { useEffect, useRef, useState } from 'react';
import { errorToast, successToast } from '../../../helpers/toast';
import { BlobProvider } from '@react-pdf/renderer';
import InvoiceV2 from '../../../components/pdf/InvoiceV2/InvoiceV2';
import axiosInstance from '../../../helpers/axios';
import { ToastContainer } from 'react-toastify';
import Progress from '../..//../components/loading/Progress';

function PdfLink({location}) {
  
  const orderid1 = location.search ? location.search.split('=')[1] : ''
  
  //states
  
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState([]);
  const reshapeData = () => {
    const reshapedOrders = {};
    reshapedOrders.customer = {
      fullname: data.fullname,
      phone: data.phone,
      delivery_address: data.address,
    };
    reshapedOrders.orderId = data.order_id;
    reshapedOrders.subtotal = data.order_total;
    reshapedOrders.discountTotal = data.other_discount;
    reshapedOrders.taxTotal = data.total_tax;
    reshapedOrders.total = data.order_total;
    reshapedOrders.paid = data.paid;
    reshapedOrders.changes = data.other_charges;
    reshapedOrders.created = data.created;
    reshapedOrders.servedBy = data.ordered_by;
    reshapedOrders.paymentDetailsPayment = [{}];
    reshapedOrders.cartItems = data.order_item?.map((item) => {
      return {
        name: item.product_name,
        addedQuantity: item.quantity,
        unitPrice: item.unit_price,
        price: item.price,
        variantName: item.size_name,
        variantValue: item.size_value,
      };
    });
    reshapedOrders.order_note = data.order_note;
    console.log(reshapedOrders);
    return reshapedOrders;
  };

  async function getData() {
    try {
      const response = await axiosInstance.get(`api/v1/order/update/${orderid1}/`);
      console.log('response', response.data);
      setIsLoading(false);
      setData(response.data);
    } catch (err) {
      errorToast('An error occured');
      console.error(err);
      setIsLoading(false);
    }
  }
  const ref = useRef(null);

  const myfunc = () => {
    console.log("I was activated 5 seconds later");
  };

  useEffect(() => {
    getData();
    setTimeout(() => {
      ref.current.click();
    }, 5000);
  }, []);

  

  return (
    <div className="page-container-scroll">
      
      <BlobProvider
        document={<InvoiceV2 order={reshapeData()} />}
        fileName="selected_orders.pdf"
      >
        {({ url }) => (
          <a href={url} target="_blank">
            <button type="button" className="btn btn-info" ref={ref} onClick={myfunc}>
            </button>
          </a>
        )}
      </BlobProvider>
    </div>
  );
}

export default PdfLink;
