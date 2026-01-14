using { contract.management as db } from '../db/schema';

service ContractService {
  
  entity Suppliers as projection on db.Suppliers;
  
  @odata.draft.enabled
  entity PurchaseContracts as projection on db.PurchaseContracts {
    *,
    budgets : redirected to ContractBudgets
  } excluding { budgets };
  
  entity ContractBudgets as projection on db.ContractBudgets;

  // Actions for budget management
  action requestBudgetChange(budgetID: UUID, newTargetAmount: Decimal(15,2)) returns String;
  action approveBudgetChange(budgetID: UUID, approved: Boolean) returns String;
}