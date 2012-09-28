class CreateForm1120s < ActiveRecord::Migration
  def change
    create_table :form1120 do |t|

     t.integer "year",                                         :null => false
    t.decimal "compensation_of_officers_line_12",  :null => false,  :default => 0
    t.decimal "deposits_32d" ,  :null => false,  :default => 0
    t.decimal "deposits_32h" ,  :null => false,  :default => 0
    t.decimal "expense_advertising_line23" ,  :null => false,  :default => 0
    t.decimal "expense_cost_of_goods_sold_line2" ,  :null => false,  :default => 0
    t.decimal "expense_employee_benefit_line25" ,  :null => false,  :default => 0
    t.decimal "expense_form_1120_deposits_line32b" ,  :null => false,  :default => 0
    t.decimal "expense_interest_line18" ,  :null => false,  :default => 0
    t.decimal "expense_rents_line16" ,  :null => false,  :default => 0
    t.decimal "expense_taxes_licenses_line17" ,  :null => false,  :default => 0
    t.decimal "federal_tax_rate" ,  :null => false,  :default => 0
    t.decimal "gross_profit_line3" ,  :null => false,  :default => 0
    t.decimal "gross_receipts_line1a" ,  :null => false,  :default => 0
    t.decimal "income_tax_line31" ,  :null => false,  :default => 0
    t.decimal "interest_income_line5" ,  :null => false,  :default => 0
    t.decimal "less_line29c" ,  :null => false,  :default => 0
    t.integer "officer1" ,  :null => false,  :default => 0
    t.integer "officer2" ,  :null => false,  :default => 0
    t.decimal "other_deductions_line26" ,  :null => false,  :default => 0
    t.decimal "previous_years_refund_applied_line32c" ,  :null => false,  :default => 0
    t.decimal "salary_and_wages_expense_employee_pay_line13" ,  :null => false,  :default => 0
    t.decimal "special_deductions_line29b" ,  :null => false,  :default => 0
    t.decimal "taxable_income_line30" ,  :null => false,  :default => 0
    t.decimal "taxable_income_before_less_line28" ,  :null => false,  :default => 0
    t.decimal "tax_due_line34" ,  :null => false,  :default => 0
    t.decimal "tax_over_payment_line35" ,  :null => false,  :default => 0
    t.decimal "tax_penalty_line33" ,  :null => false,  :default => 0
    t.decimal "tax_refund_line36" ,  :null => false,  :default => 0
    t.decimal "total_deductions_line27" ,  :null => false,  :default => 0
    t.decimal "total_income_line11" ,  :null => false,  :default => 0
    t.decimal "bad_debts" ,  :null => false,  :default => 0
    t.decimal "bsap_l16" ,  :null => false,  :default => 0
    t.decimal "bsar_l2" ,  :null => false,  :default => 0
    t.decimal "bsCash_l1" ,  :null => false,  :default => 0
    t.decimal "bsloansfromshareholders" ,  :null => false,  :default => 0
    t.decimal "bsopenbalanceequity" ,  :null => false,  :default => 0
    t.decimal "bsothercurrentassets" ,  :null => false,  :default => 0
    t.decimal "bsotherliabilites_l18" ,  :null => false,  :default => 0
    t.decimal "bsotherliabilityCAPITSDI" ,  :null => false,  :default => 0
    t.decimal "bsotherliabilityCASUIETT" ,  :null => false,  :default => 0
    t.decimal "bsotherliabilityDirectDeposit" ,  :null => false,  :default => 0
    t.decimal "bsotherliabilityFederalPayrollTax" ,  :null => false,  :default => 0
    t.decimal "bsotherliabilityPayroll" ,  :null => false,  :default => 0
    t.decimal "bsotherliabilitySIMPLEIRA" ,  :null => false,  :default => 0
    t.decimal "bsretainedearnings_line25" ,  :null => false,  :default => 0
    t.decimal "bsstock_line22" ,  :null => false,  :default => 0
    t.decimal "bstotalassets_l15" ,  :null => false,  :default => 0
    t.decimal "bstotalliabilities_line30" ,  :null => false,  :default => 0
    
    t.decimal "charitiblecontribution" ,  :null => false,  :default => 0
    t.decimal "exp_accounting" ,  :null => false,  :default => 0
    t.decimal "exp_auto" ,  :null => false,  :default => 0
    t.decimal "exp_bankcharges" ,  :null => false,  :default => 0
    t.decimal "exp_computer" ,  :null => false,  :default => 0
    t.decimal "exp_dues_and_subscriptions" ,  :null => false,  :default => 0
    t.decimal "exp_form100_deposits" ,  :null => false,  :default => 0
    t.decimal "exp_form100_settlement" ,  :null => false,  :default => 0
    t.decimal "exp_form1120_deposits" ,  :null => false,  :default => 0
    t.decimal "exp_form1120_settlement" ,  :null => false,  :default => 0
    t.decimal "exp_indepentdent_consultants" ,  :null => false,  :default => 0
    t.decimal "exp_ins_liability" ,  :null => false,  :default => 0
    t.decimal "exp_ins_workers_comp" ,  :null => false,  :default => 0
    t.decimal "exp_meals" ,  :null => false,  :default => 0
    t.decimal "exp_meals_50_percent" ,  :null => false,  :default => 0
    t.decimal "exp_office" ,  :null => false,  :default => 0
    t.decimal "exp_payroll" ,  :null => false,  :default => 0
    t.decimal "exp_payroll_other" ,  :null => false,  :default => 0
    t.decimal "exp_payroll_taxes" ,  :null => false,  :default => 0
    t.decimal "exp_postage" ,  :null => false,  :default => 0
    t.decimal "exp_postage_adjust" ,  :null => false,  :default => 0
    t.decimal "exp_tax_1120_refund" ,  :null => false,  :default => 0
    t.decimal "exp_taxes_other" ,  :null => false,  :default => 0
    t.decimal "exp_telephone" ,  :null => false,  :default => 0
    t.decimal "exp_telephone_isp" ,  :null => false,  :default => 0
    t.decimal "exp_total_tax_pl" ,  :null => false,  :default => 0
    t.decimal "exp_travel" ,  :null => false,  :default => 0
    t.decimal "frm_100_estimated_payments" ,  :null => false,  :default => 0
    t.decimal "frm_100_min_tax" ,  :null => false,  :default => 0
    t.decimal "frm_100_pg_1_18_19" ,  :null => false,  :default => 0
    t.decimal "frm_100_pg_1_9" ,  :null => false,  :default => 0
    t.decimal "frm_100_sch_a_form_100_exp" ,  :null => false,  :default => 0
    t.decimal "frm_100_sch_a_total" ,  :null => false,  :default => 0
    t.decimal "frm_100_sch_f_11" ,  :null => false,  :default => 0
    t.decimal "frm_100_sch_f_12" ,  :null => false,  :default => 0
    t.decimal "frm_100_sch_f_26a" ,  :null => false,  :default => 0
    t.decimal "frm_100_sch_f_26a_adjust" ,  :null => false,  :default => 0
    t.decimal "frm_100_sch_f_26b" ,  :null => false,  :default => 0
    t.decimal "frm_100_sch_f_26b_adjust" ,  :null => false,  :default => 0
    t.decimal "frm_100_sch_f_27" ,  :null => false,  :default => 0
    t.decimal "frm_100_sch_f_3" ,  :null => false,  :default => 0
    t.decimal "frm_100_tax_pg_1_24" ,  :null => false,  :default => 0
    t.decimal "frm_100_tax_rate" ,  :null => false,  :default => 0
    t.decimal "frm_3885_depreciation" ,  :null => false,  :default => 0
    t.decimal "income_reconciliation_difference" ,  :null => false,  :default => 0
    t.decimal "m1_6" ,  :null => false,  :default => 0
    t.decimal "m1_non_taxable_income_7" ,  :null => false,  :default => 0
    t.decimal "m1_taxable_income_before_less" ,  :null => false,  :default => 0
    t.decimal "marcs_gross" ,  :null => false,  :default => 0
    t.decimal "mode_context" ,  :null => false,  :default => 0
    t.decimal "netincome_books" ,  :null => false,  :default => 0
    t.decimal "nol_29a" ,  :null => false,  :default => 0
    t.decimal "other_increases" ,  :null => false,  :default => 0
    t.decimal "pl_interest_income" ,  :null => false,  :default => 0
    t.integer "previous_year" ,  :null => false,  :default => 0
    t.decimal "retained_earnings_M2_sch" ,  :null => false,  :default => 0
    t.decimal "retained_earnings_unappropriated" ,  :null => false,  :default => 0
    t.decimal "sherees_gross" ,  :null => false,  :default => 0
    t.decimal "total_expense_books" ,  :null => false,  :default => 0
    t.decimal "exp_employee_benefit_medical" ,  :null => false,  :default => 0
    t.decimal "exp_employee_benefit_wellness" ,  :null => false,  :default => 0
    t.decimal "exp_employee_benefit_other" ,  :null => false,  :default => 0
	t.decimal 'frm100_refund_applied_to_next_year_42a',  :null => false,  :default => 0
	t.decimal 'frm100tax_due_37',  :null => false,  :default => 0
    end
    execute  "alter table form1120 drop column id;" 
    execute  "alter table form1120 add primary key (year);" 
  end
end
