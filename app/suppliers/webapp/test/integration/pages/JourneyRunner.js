sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"contract/management/suppliers/suppliers/test/integration/pages/SuppliersList",
	"contract/management/suppliers/suppliers/test/integration/pages/SuppliersObjectPage"
], function (JourneyRunner, SuppliersList, SuppliersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('contract/management/suppliers/suppliers') + '/test/flpSandbox.html#contractmanagementsupplierssup-tile',
        pages: {
			onTheSuppliersList: SuppliersList,
			onTheSuppliersObjectPage: SuppliersObjectPage
        },
        async: true
    });

    return runner;
});

