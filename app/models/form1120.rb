class Form1120 < ActiveRecord::Base
  attr_accessor  :total_income_line11_calc, 
		:gross_profit_line3_calc,
		:compensation_of_officers_line_12_calc,
		:salary_and_wages_expense_employee_pay_line13_calc,
		:expense_taxes_licenses_line17_calc,
		:total_deductions_line27_calc,
		:taxable_income_line30_calc,
		:income_tax_line31_calc,
		:deposits_32b_calc,
		:deposits_32d_calc,
		:deposits_32h_calc,
		:other_deductions_line26_calc,
		:exp_meals_50_percent_calc
  self.table_name  ='form1120'
  
  after_find do |year|
	  year.gross_profit_line3_calc = year.gross_receipts_line1a  - year.expense_cost_of_goods_sold_line2
	  year.total_income_line11_calc =year.gross_profit_line3_calc + year.interest_income_line5
	  year.compensation_of_officers_line_12_calc = year.marcs_gross
	  year.salary_and_wages_expense_employee_pay_line13_calc = year.exp_payroll + year.exp_payroll_taxes +
		year.exp_payroll_other
		
	  year.expense_taxes_licenses_line17_calc = year.exp_tax_1120_refund +
										year.exp_form1120_deposits +
										year.exp_form1120_settlement +
										year.exp_form100_settlement +
										year.exp_form100_deposits +
										year.exp_taxes_other
	  year.exp_meals_50_percent_calc = year.exp_meals/2
	  year.other_deductions_line26_calc = year.exp_meals_50_percent_calc +
									year.exp_travel +
									year.exp_postage +
									year.exp_postage_adjust +
									year.exp_telephone +
									year.exp_telephone_isp +
									year.exp_accounting +
									year.exp_office +
									year.exp_ins_workers_comp +
									year.exp_ins_liability +
									year.exp_indepentdent_consultants +
									year.exp_dues_and_subscriptions +
									year.exp_computer +
									year.exp_bankcharges +
									year.exp_auto 

	  year.total_deductions_line27_calc = year.compensation_of_officers_line_12_calc +
								year.salary_and_wages_expense_employee_pay_line13_calc +
								year.expense_rents_line16 +
								year.expense_taxes_licenses_line17_calc +
								year.expense_interest_line18 +
								year.expense_advertising_line23 +
								year.expense_employee_benefit_line25 +
								year.other_deductions_line26_calc
	  year.taxable_income_line30_calc = year.total_income_line11_calc - year.total_deductions_line27_calc 
	  year.income_tax_line31_calc = year.taxable_income_line30_calc * year.federal_tax_rate
	  year.deposits_32b_calc = year.exp_form1120_deposits
	  year.deposits_32d_calc = year.exp_form1120_deposits + year.previous_years_refund_applied_line32c
	  year.deposits_32h_calc = year.exp_form1120_deposits + year.previous_years_refund_applied_line32c
									
  end
end
