using { Currency, managed, cuid } from '@sap/cds/common';

namespace contract.management;

entity Suppliers : cuid, managed {
  name           : String(100) not null;
  contactPerson  : String(100);
  email         : String(100);
  phone         : String(20);
  address       : String(500);
  status        : String(10) default 'Active';
  
  // Navigation
  contracts     : Composition of many PurchaseContracts on contracts.supplier = $self;
}

entity PurchaseContracts : cuid, managed {
  contractNumber : String(20) not null;
  supplier      : Association to Suppliers not null;
  title         : String(200) not null;
  description   : String(1000);
  startDate     : Date not null;
  endDate       : Date not null;
  totalValue    : Decimal(15,2);
  currency      : Currency;
  status        : String(10) default 'Draft';
  popo          : String;
  
  // Navigation
  budgets       : Composition of many ContractBudgets on budgets.contract = $self;
}

entity ContractBudgets : cuid, managed {
  contract         : Association to PurchaseContracts not null;
  budgetCategory   : String(100) not null;
  targetAmount     : Decimal(15,2) not null;
  spentAmount      : Decimal(15,2) default 0;
  currency         : Currency;
  status           : String(20) default 'Active';
  approvalRequired : Boolean default false;
  lastModified     : DateTime;
}