using ContractService as service from '../../srv/contract-service';
annotate service.ContractBudgets with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'budgetCategory',
                Value : budgetCategory,
            },
            {
                $Type : 'UI.DataField',
                Label : 'targetAmount',
                Value : targetAmount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'spentAmount',
                Value : spentAmount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'currency_code',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'approvalRequired',
                Value : approvalRequired,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastModified',
                Value : lastModified,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'budgetCategory',
            Value : budgetCategory,
        },
        {
            $Type : 'UI.DataField',
            Label : 'targetAmount',
            Value : targetAmount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'spentAmount',
            Value : spentAmount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'currency_code',
            Value : currency_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'status',
            Value : status,
        },
    ],
);

annotate service.ContractBudgets with {
    contract @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PurchaseContracts',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : contract_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'contractNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'title',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'startDate',
            },
        ],
    }
};

