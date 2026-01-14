sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"contract/management/contracts/contracts/test/integration/pages/PurchaseContractsList",
	"contract/management/contracts/contracts/test/integration/pages/PurchaseContractsObjectPage"
], function (JourneyRunner, PurchaseContractsList, PurchaseContractsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('contract/management/contracts/contracts') + '/test/flpSandbox.html#contractmanagementcontractscon-tile',
        pages: {
			onThePurchaseContractsList: PurchaseContractsList,
			onThePurchaseContractsObjectPage: PurchaseContractsObjectPage
        },
        async: true
    });

    return runner;
});

