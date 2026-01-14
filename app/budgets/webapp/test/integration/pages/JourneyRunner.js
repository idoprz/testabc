sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"contract/management/budgets/budgets/test/integration/pages/ContractBudgetsList",
	"contract/management/budgets/budgets/test/integration/pages/ContractBudgetsObjectPage"
], function (JourneyRunner, ContractBudgetsList, ContractBudgetsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('contract/management/budgets/budgets') + '/test/flpSandbox.html#contractmanagementbudgetsbudge-tile',
        pages: {
			onTheContractBudgetsList: ContractBudgetsList,
			onTheContractBudgetsObjectPage: ContractBudgetsObjectPage
        },
        async: true
    });

    return runner;
});

