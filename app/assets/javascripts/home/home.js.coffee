# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
gross_profit_line3_calc = 0.0
gross_profit_line3 = ->
  gross_profit_line3_calc= parseFloat($('#gross_receipts_line1a').attr 'value') - parseFloat($('#expense_cost_of_goods_sold_line2').attr 'value')
  $('#gross_profit_line3').val gross_profit_line3_calc.toFixed(2)
total_income_line11_calc = 0.0
total_income_line11 = ->  
  total_income_line11_calc= parseFloat($('#gross_profit_line3').attr 'value') + parseFloat($('#interest_income_line5').attr 'value')
  $('#total_income_line11').val total_income_line11_calc.toFixed(2)
compensation_of_officers_line_12_calc = 0.0
compensation_of_officers_line_12 = ->
  compensation_of_officers_line_12_calc = parseFloat($('#marcs_gross').attr 'value') + parseFloat($('#sherees_gross').attr 'value')
  $('#compensation_of_officers_line_12').val compensation_of_officers_line_12_calc.toFixed(2)
salary_and_wages_expense_employee_pay_line13_calc = 0.0
salary_and_wages_expense_employee_pay_line13 = ->
  salary_and_wages_expense_employee_pay_line13_calc =parseFloat($('#exp_payroll').attr 'value')+
    parseFloat($('#exp_payroll_taxes').attr 'value') +
    parseFloat($('#exp_payroll_other').attr 'value')
  $('#salary_and_wages_expense_employee_pay_line13').val salary_and_wages_expense_employee_pay_line13_calc.toFixed(2)
expense_taxes_licenses_line17_calc = 0.0
expense_taxes_licenses_line17 = ->
  expense_taxes_licenses_line17_calc =   parseFloat($('#exp_tax_1120_refund').attr 'value') + 
    parseFloat($('#exp_form1120_deposits').attr 'value') +
    parseFloat($('#exp_form1120_settlement').attr 'value') +
    parseFloat($('#exp_form100_settlement').attr 'value') +
    parseFloat($('#exp_form100_deposits').attr 'value') +
    parseFloat($('#exp_taxes_other').attr 'value')
  $('#expense_taxes_licenses_line17').val expense_taxes_licenses_line17_calc.toFixed(2)
  $('#exp_total_tax_pl').val expense_taxes_licenses_line17_calc.toFixed(2)
exp_meals_50_percent_calc = 0.0
exp_meals_50_percent = -> 
  exp_meals_50_percent_calc = parseFloat($('#exp_meals').attr 'value')/2
  $('#exp_meals_50_percent').val exp_meals_50_percent_calc.toFixed(2)
other_deductions_line26_calc = 0.0
other_deductions_line26 = -> 
  other_deductions_line26_calc = exp_meals_50_percent_calc +
    parseFloat($('#exp_travel').attr 'value') +
    parseFloat($('#exp_postage').attr 'value') +
    parseFloat($('#exp_postage_adjust').attr 'value') +
    parseFloat($('#exp_telephone').attr 'value') +
    parseFloat($('#exp_telephone_isp').attr 'value') +
    parseFloat($('#exp_accounting').attr 'value') +
    parseFloat($('#exp_office').attr 'value') +
    parseFloat($('#exp_ins_workers_comp').attr 'value') +
    parseFloat($('#exp_ins_liability').attr 'value') +
    parseFloat($('#exp_indepentdent_consultants').attr 'value') +
    parseFloat($('#exp_dues_and_subscriptions').attr 'value') +
    parseFloat($('#exp_computer').attr 'value') +
    parseFloat($('#exp_bankcharges').attr 'value') +
    parseFloat($('#exp_auto').attr 'value') 
  
  
  $('#other_deductions_line26').val other_deductions_line26_calc.toFixed(2)
total_deductions_line27_calc = 0.0
total_deductions_line27  = ->
  total_deductions_line27_calc = compensation_of_officers_line_12_calc +
    salary_and_wages_expense_employee_pay_line13_calc +
    parseFloat($('#expense_rents_line16').attr 'value')   +
    expense_taxes_licenses_line17_calc +
    parseFloat($('#expense_interest_line18').attr 'value')   +
    parseFloat($('#expense_advertising_line23 ').attr 'value')  +
    parseFloat($('#expense_employee_benefit_line25 ').attr 'value') +
    other_deductions_line26_calc
  $('#total_deductions_line27').val total_deductions_line27_calc.toFixed(2)
taxable_income_line30_calc = 0.0
taxable_income_line30 = ->
  taxable_income_line30_calc = total_income_line11_calc - total_deductions_line27_calc 
  $('#taxable_income_line30').val taxable_income_line30_calc.toFixed(2)
income_tax_line31_calc = 0.0
income_tax_line31 = ->
  income_tax_line31_calc = taxable_income_line30_calc * parseFloat($('#federal_tax_rate').attr 'value')
  $('#income_tax_line31').val income_tax_line31_calc.toFixed(2)
deposits_32b_calc = 0.0
deposits_32b = ->
  deposits_32b_calc = parseFloat($('#exp_form1120_deposits').attr 'value')
  $('#deposits_32b').val deposits_32b_calc.toFixed(2)
deposits_32d_calc = 0.0
deposits_32d = ->
  deposits_32d_calc = parseFloat($('#exp_form1120_deposits').attr 'value') +
    parseFloat($('#previous_years_refund_applied_line32c').attr 'value')
  $('#deposits_32d').val deposits_32d_calc.toFixed(2)
deposits_32h_calc = 0.0
deposits_32h = ->
  deposits_32h_calc = parseFloat($('#exp_form1120_deposits').attr 'value') +
    parseFloat($('#previous_years_refund_applied_line32c').attr 'value')
  $('#deposits_32h').val deposits_32h_calc.toFixed(2)
  
do_calculations = ->
   gross_profit_line3()
   total_income_line11()
   compensation_of_officers_line_12()
   salary_and_wages_expense_employee_pay_line13()
   expense_taxes_licenses_line17()
   exp_meals_50_percent()
   other_deductions_line26()
   total_deductions_line27()
   taxable_income_line30()
   income_tax_line31()
   deposits_32b()
   deposits_32d()
   deposits_32h()
   

zero = 0

$ ->
  $('#interest_income_line5').bind 'click', (event) =>
    $('#interest_income_line5').val ''
    $('#interest_income_line5').removeClass 'tax-input-empty'
  $('#interest_income_line5').blur ->
    if !! $('#interest_income_line5').attr( 'value')
      inval = parseFloat($('#interest_income_line5').attr( 'value'))
      
      if isFinite ($('#interest_income_line5').attr( 'value'))
        $('#interest_income_line5').val inval.toFixed(2)
      else
        $('#interest_income_line5').val zero.toFixed(2)
    else
      $('#interest_income_line5').val zero.toFixed(2)

$ ->
  $('input.tax-input').blur ->
   do_calculations()

   $('input.tax-input').each ->
     if parseFloat($(this).attr 'value') == 0.00
       $(this).addClass 'tax-input-empty'
     else
       $(this).removeClass 'tax-input-empty'
	 

$ ->
  $('input.tax-input').each ->
    if parseFloat($(this).attr 'value') == 0.00
      $(this).addClass 'tax-input-empty'
	  

do_calculations()