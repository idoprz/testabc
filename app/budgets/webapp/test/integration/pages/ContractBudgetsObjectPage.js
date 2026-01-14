sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'contract.management.budgets.budgets',
            componentId: 'ContractBudgetsObjectPage',
            contextPath: '/ContractBudgets'
        },
        CustomPageDefinitions
    );
});