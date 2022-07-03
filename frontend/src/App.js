import { useEffect, useState } from 'react';
import { Route, HashRouter as Router } from 'react-router-dom';
import axios from 'axios';

import Navbar from './components/layout/navigation/Navbar';
import Sidebar from './components/layout/navigation/Sidebar';
import pdf from './components/pdf/Invoice';

import DashboardPage from './views/Dashboard/DashboardPage/DashboardPage';

// POS Section Componnents
//  POS sub components -> start
//  POS sub components -> end
import ProcessSalePage from './views/POS/ProcessSalePage/ProcessSalePage';
import SalesHistoryPage from './views/POS/SalesHistoryPage/SalesHistoryPage';
import OutletsPage from './views/POS/OutletsPage/OutletsPage';
import RegistersPage from './views/POS/RegistersPage/RegistersPage';
import RegisterClosuresPage from './views/POS/RegisterClosuresPage/RegisterClosuresPage';
import PrintLabelsPage from './views/POS/PrintLabelsPage/PrintLabelsPage';
import CreateNewRegisterPage from './views/POS/RegistersPage/CreateNewRegisterPage/CreateNewRegisterPage';
// Products Section Componnents
import AllProductsPage from './views/Products/AllProductsPage/AllProductsPage';
//  All Products sub components ->s tart
import ManageVariantPage from './views/Products/ManageVariantPage/ManageVariantPage';
// All Products sub components -> end
import AddNewProductPage from './views/Products/AddNewProduct/AddNewProductPage';
import AllProductBrandsPage from './views/Products/AllProductBrandsPage/AllProductBrandsPage';
import AllProductCategoriesPage from './views/Products/AllProductCategoriesPage/AllProductCategoriesPage';
import ProductsInventoryPage from './views/Products/ProductsInventoryPage/ProductsInventoryPage';
import BulkUpdateProductsPage from './views/Products/BulkUpdateProductsPage/BulkUpdateProductsPage';
// Inventory Section Componnents
import PurchaseOrdersPage from './views/Inventory/PurchaseOrdersPage/PurchaseOrdersPage';
import InventoryTransfersPage from './views/Inventory/InventoryTransfersPage/InventoryTransfersPage';
import SuppliersPage from './views/Inventory/SuppliersPage/SuppliersPage';
import InventoryLocationsPage from './views/Inventory/InventoryLocationsPage/InventoryLocationsPage';
import BulkInventoryEntryPage from './views/Inventory/BulkInventoryEntryPage/BulkInventoryEntryPage';
// Orders Section Components
import AllOrdersPage from './views/Orders/AllOrdersPage/AllOrdersPage';
import CreateManualOrderPage from './views/Orders/CreateManualOrderPage/CreateManualOrderPage';
import PdfLink from './views/Orders/CreateManualOrderPage/PdfLink';
import PathaoDelivery from './views/Orders/PathaoDelivery/PathaoDelivery';
import BulkOrder from './views/Orders/PathaoDelivery/BulkOrder';
// Customers Section Components
import AllCustomersPage from './views/Customers/AllCustomerPage/AllCustomerPage';
import AddNewCustomerPage from './views/Customers/AllCustomerPage/AddNewCustomerPage/AddNewCustomerPage';
import EditCustomerPage from './views/Customers/AllCustomerPage/EditNewCustomerPage/EditCustomerPage';
import ManageCustomerGroupsPage from './views/Customers/ManageCustomerGroupsPage/ManageCustomerGroupsPage';

//  Customer Group Reports sub components -> end

// Reports Section Components
//  Finance Reports sub components -> start
import FinanceSummaryReportPage from './views/Reports/FinanceReportsPage/FinanceSummaryReportPage';
import SalesOverTimeReportPage from './views/Reports/FinanceReportsPage/SalesOverTimeReportPage/SalesOverTimeReportPage';
import PaymentsOverTimeReportPage from './views/Reports/FinanceReportsPage/PaymentsOverTimeReportPage/PaymentsOverTimeReport';
import PaymentMethodReportPage from './views/Reports/FinanceReportsPage/PaymentMethodReportPage/PaymentMethodReportPage';
//  Finance Reports sub components -> end
//  Inventory Reports sub components -> start
//  Inventory Reports sub components -> end
import VisitorReportPage from './views/Reports/VisitorReportPage/VisitorReportPage';
import CustomerMessagesPage from './views/Reports/CustomerMessagesPage/CustomerMessagesPage';
import CustomerReviewsPage from './views/Reports/CustomerReviewsPage/CustomerReviewsPage';
// App Section Components
import ExternalAppsPage from './views/Apps/ExternalAppsPage/ExternalAppsPage';
import StorePopupPage from './views/Apps/StorePopupPage/StorePopupPage';
import DiscountCouponsPage from './views/Apps/DiscountCouponsPage/DiscountCouponsPage';
import CreateNewCouponPage from './views/Apps/DiscountCouponsPage/CreateNewCouponPage/CreateNewCouponPage';
import EditCouponPage from './views/Apps/DiscountCouponsPage/CreateNewCouponPage/EditCouponPage';
import AddNewsPage from './views/Apps/AddNewsPage/AddNewsPage';
import MultiCustomerMessage from './views/Apps/CustomerMessage/MultiCustomerMessage';
import SingleCustomerMessage from './views/Apps/CustomerMessage/SingleCustomerMessage';
// Setting Section Components
import GeneralSettingsPage from './views/Settings/GeneralSettingsPage/General Settings';
import CheckoutSettingsPage from './views/Settings/CheckoutSettingsPage/CheckoutSettingsPage';
import PaymentMethodsPage from './views/Settings/PaymentMethodsPage/PaymentMethodsPage';
import ShippingMethodsPage from './views/Settings/ShippingMethodsPage/ShippingMethodsPage';
import UserPage from './views/Settings/UserPage/UserPage';
// Profile Section Components
import UpdateProfilePage from './views/Profile/UpdateProfilePage/UpdateProfilePage';
import ChangePasswordPage from './views/Profile/ChangePasswordPage/ChangePasswordPage';

import CreateNewSupplierPage from './views/Inventory/SuppliersPage/CreateNewSupplierPage/CreateNewSupplier';
import CreateNewLocationPage from './views/Inventory/InventoryLocationsPage/CreateNewLocationPage/CreateNewLocationPage';
import CreateNewOutletPage from './views/POS/OutletsPage/CreateNewOutletPage/CreateNewOutletPage';

import EditOutletPage from './views/POS/OutletsPage/EditOutletPage/EditOutletPage';
import EditRegisterPage from './views/POS/RegistersPage/EditRegisterPage/EditRegisterPage';
import EditInventoryLocationPage from './views/Inventory/InventoryLocationsPage/EditInventoryLocationPage/EditInventoryLocationPage';
import EditSupplierPage from './views/Inventory/SuppliersPage/EditSupplierPage/EditSupplierPage';
import CreateNewPurchaseOrderPage from './views/Inventory/PurchaseOrdersPage/CreateNewPurchaseOrderPage/CreateNewPurchaseOrderPage';
import CreateNewTransferOrderPage from './views/Inventory/InventoryTransfersPage/CreateNewTransferOrderPage/CreateNewTransferOrderPage';
import EditInventoryTransferOrderPage from './views/Inventory/InventoryTransfersPage/EditInventoryTransferOrderPage/EditInventoryTransferOrderPage';
import EditPurchaseOrderPage from './views/Inventory/PurchaseOrdersPage/EditPurchaseOrderPage/EditPurchaseOrderPage';

import TestPage from './TestPage';
import SignUpPage from './views/Account/SignUpPage/SignUpPage';
import LogInPage from './views/Account/LogInPage/LogInPage';
import NotFoundPage from './components/Error/NotFoundPage';

import AddNewCustomerGroupPage from './views/Customers/ManageCustomerGroupsPage/NewCustomerGroupPage/AddNewCustomerGroupPage';
import EditNewCustomerGroupPage from './views/Customers/ManageCustomerGroupsPage/EditNewCustomerGroupPage/EditNewCustomerGroupPage';
import EditProductPage from './views/Products/EditProductPage/EditProductPage';
import AddNewUserPage from './views/Settings/UserPage/AddNewUserPage/AddNewUserPage';
import TaxRatesPage from './views/Settings/TaxRatesPage/TaxRatesPage';
import EditTaxRatesPage from './views/Settings/TaxRatesPage/EditTaxRatesPage/EditTaxRatesPage';
import EditOrderPage from './views/Orders/EditOrderPage/EditOrderPage';
import StockAdjustmentReportPage from './views/Reports/InventoryReportsPage/StockAdjustmentReportPage/StockAdjustmentReportPage';
import CurrentInventoryReportsPage from './views/Reports/InventoryReportsPage/CurrentInventoryReportPage/CurrentInventoryReportsPage';
import SupplierPaymentsReportPage from './views/Reports/InventoryReportsPage/SupplierPaymentsReportPage/SupplierPaymentsReportPage';
import SalesByProductPage from './views/Reports/FinanceReportsPage/SalesByProductPage/SalesByProductPage';
import SalesByBrandPage from './views/Reports/FinanceReportsPage/SalesByBrandPage/SalesByBrandPage';
import SalesByDiscountPage from './views/Reports/FinanceReportsPage/SalesByDiscountPage/SalesByDiscountPage';
import StoreConversionRateOverTimePage from './views/Reports/FinanceReportsPage/StoreConversionRateOverTimePage/StoreConversionRateOverTimePage';
import AddNewProductBrandPage from './views/Products/AddNewProductBrandPage/AddNewProductBrandPage';
import StandardShippingPage from './views/Settings/ShippingMethodsPage/StandardShippingPage';
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min';
import EditStandardShippingPage from './views/Settings/ShippingMethodsPage/EditStandardShippingPage';
import ProcessSalesRegister from './views/POS/ProcessSalePage/ProcessSalesRegister';
import ProcessSalesRegisterFloat from './views/POS/ProcessSalePage/ProcessSalesRegisterFloat';
import { useLocation } from 'react-router-dom';

function App() {
  const [loginStatus, setLoginStatus] = useState(false);
  const history = useHistory();
  const location = useLocation();
  console.log(location.pathname);
  const verifyToken = async () => {
    console.log('verifying token');
    try {
      const response = await axios.post(
        'https://aporajitatumi.somikoron.com/auth/api/token/verify/',
        {
          token: localStorage.token,
        }
      );
      setLoginStatus(true);
    } catch (err) {
      console.log(err);
      localStorage.removeItem('token');
      localStorage.removeItem('user');
      setLoginStatus(false);
    }
  };

  useEffect(() => {
    if (localStorage.token && !loginStatus) {
      verifyToken();
    }
  }, []);
  if(location.pathname==="/admin/manual_orders/pdf"){
    console.log("dot")
  }
  else if (!localStorage.token) {
    return <LogInPage setLoginStatus={setLoginStatus} />;
  }

  return (
    <Router>
      <Sidebar setLoginStatus={setLoginStatus} />
      <div className="App" id="content">
        <Navbar setLoginStatus={setLoginStatus} />
        <Route path="/create_order/pdf" exact component={pdf} />
        <div id="page-container-parent">
          
            <Route path="/test" exact component={TestPage} />
            <Route
              path="/login"
              exact
              component={LogInPage}
              setLoginStatus={setLoginStatus}
            />
            <Route path="/" exact component={DashboardPage} />
            <Route path="/admin/index" exact component={DashboardPage} />
            {/* POS Section routes */}
            {/*  POS Section Subroutes -> start */}
            {/*  POS Section Subroutes -> end */}
            <Route
              path="/admin/pos/sales/new"
              exact
              component={ProcessSalePage}
            />
            <Route
              path="/admin/pos/sales/new/register"
              exact
              component={ProcessSalesRegister}
            />
            <Route
              path="/admin/pos/sales/new/register/float"
              exact
              component={ProcessSalesRegisterFloat}
            />
            <Route path="/admin/pos/sales" exact component={SalesHistoryPage} />
            <Route path="/admin/pos/outlets" exact component={OutletsPage} />
            <Route
              path="/admin/pos/outlets/:id/edit"
              component={EditOutletPage}
            />
            <Route
              path="/admin/pos/outlets/new"
              component={CreateNewOutletPage}
            />
            <Route
              path="/admin/pos/registers"
              exact
              component={RegistersPage}
            />
            <Route
              path="/admin/pos/registers/:id/edit"
              component={EditRegisterPage}
            />
            <Route
              path="/admin/pos/registers/new"
              component={CreateNewRegisterPage}
            />
            <Route path="/admin/pos/shifts" component={RegisterClosuresPage} />
            <Route
              path="/admin/pos/product-labels"
              component={PrintLabelsPage}
            />
            {/* Products Section routes */}
            <Route path="/admin/products" exact component={AllProductsPage} />
            <Route path="/admin/products/new" component={AddNewProductPage} />
            <Route
              path="/admin/products/:id/edit"
              component={EditProductPage}
            />
            <Route
              path="/admin/products/:id/variants"
              component={ManageVariantPage}
            />
            <Route
              path="/admin/brands/new"
              component={AddNewProductBrandPage}
            />
            <Route path="/admin/brands" component={AllProductBrandsPage} />
            <Route
              path="/admin/product-categories"
              component={AllProductCategoriesPage}
            />
            <Route
              path="/admin/stock-controls"
              component={ProductsInventoryPage}
            />
            <Route
              path="/admin/product-bulk-operations"
              component={BulkUpdateProductsPage}
            />
            {/* Inventory Section routes */}
            <Route
              path="/admin/inventory/purchase-orders"
              exact
              component={PurchaseOrdersPage}
            />
            <Route
              path="/admin/inventory/purchase-orders/new"
              component={CreateNewPurchaseOrderPage}
              exact
            />
            <Route
              path="/admin/inventory/purchase-orders/:id/edit"
              component={EditPurchaseOrderPage}
            />
            <Route
              path="/admin/inventory/transfer-orders"
              exact
              component={InventoryTransfersPage}
            />
            <Route
              path="/admin/inventory/transfer-orders/new"
              component={CreateNewTransferOrderPage}
            />
            <Route
              path="/admin/inventory/transfer-orders/:id/edit"
              component={EditInventoryTransferOrderPage}
            />
            <Route
              path="/admin/inventory/suppliers"
              exact
              component={SuppliersPage}
            />
            <Route
              path="/admin/inventory/suppliers/new"
              component={CreateNewSupplierPage}
            />
            <Route
              path="/admin/inventory/suppliers/:id/edit"
              component={EditSupplierPage}
            />
            <Route
              path="/admin/inventory/locations"
              exact
              component={InventoryLocationsPage}
            />
            <Route
              path="/admin/inventory/locations/new"
              component={CreateNewLocationPage}
            />
            <Route
              path="/admin/inventory/locations/:id/edit"
              exact
              component={EditInventoryLocationPage}
            />
            <Route
              path="/admin/inventory/bulk-adjustments"
              component={BulkInventoryEntryPage}
            />
            {/* Orders Section routes */}
            <Route path="/admin/orders" exact component={AllOrdersPage} />
            <Route path="/admin/orders/:id/edit" component={EditOrderPage} />
            <Route
              path="/admin/manual_orders/new"
              component={CreateManualOrderPage}
            />
            <Route
              path="/admin/manual_orders/pdf"
              component={PdfLink}
            />
            <Route path="/admin/orders/delivery" exact component={PathaoDelivery} />
            <Route path="/admin/orders/bulk-order" exact component={BulkOrder} />
            {/* Customers Section routes */}
            <Route path="/admin/customers" exact component={AllCustomersPage} />
            <Route path="/admin/customers/new" component={AddNewCustomerPage} />
            <Route
              path="/admin/customers/:id/edit"
              component={EditCustomerPage}
            />
            <Route
              path="/admin/customers/manage"
              exact
              component={ManageCustomerGroupsPage}
            />
            <Route
              path="/admin/customers/groups/new"
              exact
              component={AddNewCustomerGroupPage}
            />
            <Route
              path="/admin/customers/groups/:id/edit"
              component={EditNewCustomerGroupPage}
            />
            {/* Reports Section routes */}

            {/* App Section routes -> start */}
            <Route
              path="/admin/apps/external-apps"
              component={ExternalAppsPage}
            />
            <Route path="/admin/apps/store-popup" component={StorePopupPage} />
            <Route
              path="/admin/apps/discount-coupons"
              exact
              component={DiscountCouponsPage}
            />
            <Route
              path="/admin/apps/edit-coupons"
              component={EditCouponPage}
            />
            <Route
              path="/admin/apps/discount-coupons/create-new"
              component={CreateNewCouponPage}
            />
            <Route path="/admin/apps/add-news" exact component={AddNewsPage} />

            <Route path="/admin/apps/multi-message" exact component={MultiCustomerMessage} />
            <Route path="/admin/apps/single-message" exact component={SingleCustomerMessage} />


            {/* App Section routes -> end */}

            {/*   Finance Reports Sub routes -> start */}
            <Route
              path="/admin/reports/finance-summary"
              component={FinanceSummaryReportPage}
            />
            <Route
              path="/admin/reports/sales-over-time"
              component={SalesOverTimeReportPage}
            />
            <Route
              path="/admin/reports/sales-by-product"
              component={SalesByProductPage}
            />
            <Route
              path="/admin/reports/sales-by-brand"
              component={SalesByBrandPage}
            />
            <Route
              path="/admin/reports/sales-by-discount"
              component={SalesByDiscountPage}
            />
            <Route
              path="/admin/reports/payments-over-time"
              component={PaymentsOverTimeReportPage}
            />
            <Route
              path="/admin/reports/payment-method-report"
              component={PaymentMethodReportPage}
            />
            <Route
              path="/admin/reports/store-conversion-rate-over-time"
              component={StoreConversionRateOverTimePage}
            />
            {/*   Finance Reports Sub routes -> end */}

            {/*   Inventory Reports Sub routes -> start */}
            <Route
              path="/admin/reports/current-inventory-report"
              component={CurrentInventoryReportsPage}
            />
            <Route
              path="/admin/reports/stock-adjustment-report"
              component={StockAdjustmentReportPage}
            />
            <Route
              path="/admin/reports/supplier-payments-report"
              component={SupplierPaymentsReportPage}
            />
            {/*   Inventory Reports Sub routes -> end */}

            <Route
              path="/admin/reports/visitor-report"
              component={VisitorReportPage}
            />
            <Route
              path="/admin/reports/customer-message-report"
              component={CustomerMessagesPage}
            />
            <Route
              path="/admin/reports/customer-review-report"
              component={CustomerReviewsPage}
            />
            {/* Setting Section routes */}
            <Route
              path="/admin/settings/general"
              component={GeneralSettingsPage}
            />
            <Route
              path="/admin/settings/edit-checkout-settings"
              component={CheckoutSettingsPage}
            />
            <Route
              path="/admin/store-payment-methods"
              component={PaymentMethodsPage}
            />
            <Route
              exact
              path="/admin/delivery-services"
              component={ShippingMethodsPage}
            />
            <Route
              path="/admin/delivery-services/standard-shipping"
              exact
              component={StandardShippingPage}
            />
            <Route
              path="/admin/delivery-services/standard-shipping/:id/edit"
              component={EditStandardShippingPage}
            />
            <Route path="/admin/tax-rates" exact component={TaxRatesPage} />
            <Route
              path="/admin/tax-rates/:id/edit"
              component={EditTaxRatesPage}
            />
            <Route path="/admin/users" exact component={UserPage} />
            <Route path="/admin/users/new" component={AddNewUserPage} />
            {/* Profile Section routes */}
            <Route
              path="/admin/settings/1/edit-profile"
              component={UpdateProfilePage}
            />
            <Route
              path="/admin/settings/1/edit-password"
              component={ChangePasswordPage}
            />
            
        
        </div>
      </div>
    </Router>
  );
}

export default App;
