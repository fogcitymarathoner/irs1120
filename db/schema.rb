# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120826231303) do

  create_table "form1120", :id => false, :force => true do |t|
    t.integer "year",                                                          :null => false
    t.decimal "compensation_of_officers_line_12",             :default => 0.0, :null => false
    t.decimal "deposits_32d",                                 :default => 0.0, :null => false
    t.decimal "deposits_32h",                                 :default => 0.0, :null => false
    t.decimal "expense_advertising_line23",                   :default => 0.0, :null => false
    t.decimal "expense_cost_of_goods_sold_line2",             :default => 0.0, :null => false
    t.decimal "expense_employee_benefit_line25",              :default => 0.0, :null => false
    t.decimal "expense_form_1120_deposits_line32b",           :default => 0.0, :null => false
    t.decimal "expense_interest_line18",                      :default => 0.0, :null => false
    t.decimal "expense_rents_line16",                         :default => 0.0, :null => false
    t.decimal "expense_taxes_licenses_line17",                :default => 0.0, :null => false
    t.decimal "federal_tax_rate",                             :default => 0.0, :null => false
    t.decimal "gross_profit_line3",                           :default => 0.0, :null => false
    t.decimal "gross_receipts_line1a",                        :default => 0.0, :null => false
    t.decimal "income_tax_line31",                            :default => 0.0, :null => false
    t.decimal "interest_income_line5",                        :default => 0.0, :null => false
    t.decimal "less_line29c",                                 :default => 0.0, :null => false
    t.integer "officer1",                                     :default => 0,   :null => false
    t.integer "officer2",                                     :default => 0,   :null => false
    t.decimal "other_deductions_line26",                      :default => 0.0, :null => false
    t.decimal "previous_years_refund_applied_line32c",        :default => 0.0, :null => false
    t.decimal "salary_and_wages_expense_employee_pay_line13", :default => 0.0, :null => false
    t.decimal "special_deductions_line29b",                   :default => 0.0, :null => false
    t.decimal "taxable_income_line30",                        :default => 0.0, :null => false
    t.decimal "taxable_income_before_less_line28",            :default => 0.0, :null => false
    t.decimal "tax_due_line34",                               :default => 0.0, :null => false
    t.decimal "tax_over_payment_line35",                      :default => 0.0, :null => false
    t.decimal "tax_penalty_line33",                           :default => 0.0, :null => false
    t.decimal "tax_refund_line36",                            :default => 0.0, :null => false
    t.decimal "total_deductions_line27",                      :default => 0.0, :null => false
    t.decimal "total_income_line11",                          :default => 0.0, :null => false
    t.decimal "bad_debts",                                    :default => 0.0, :null => false
    t.decimal "bsap_l16",                                     :default => 0.0, :null => false
    t.decimal "bsar_l2",                                      :default => 0.0, :null => false
    t.decimal "bsCash_l1",                                    :default => 0.0, :null => false
    t.decimal "bsloansfromshareholders",                      :default => 0.0, :null => false
    t.decimal "bsopenbalanceequity",                          :default => 0.0, :null => false
    t.decimal "bsothercurrentassets",                         :default => 0.0, :null => false
    t.decimal "bsotherliabilites_l18",                        :default => 0.0, :null => false
    t.decimal "bsotherliabilityCAPITSDI",                     :default => 0.0, :null => false
    t.decimal "bsotherliabilityCASUIETT",                     :default => 0.0, :null => false
    t.decimal "bsotherliabilityDirectDeposit",                :default => 0.0, :null => false
    t.decimal "bsotherliabilityFederalPayrollTax",            :default => 0.0, :null => false
    t.decimal "bsotherliabilityPayroll",                      :default => 0.0, :null => false
    t.decimal "bsotherliabilitySIMPLEIRA",                    :default => 0.0, :null => false
    t.decimal "bsretainedearnings_line25",                    :default => 0.0, :null => false
    t.decimal "bsstock_line22",                               :default => 0.0, :null => false
    t.decimal "bstotalassets_l15",                            :default => 0.0, :null => false
    t.decimal "bstotalliabilities_line30",                    :default => 0.0, :null => false
    t.decimal "charitiblecontribution",                       :default => 0.0, :null => false
    t.decimal "exp_accounting",                               :default => 0.0, :null => false
    t.decimal "exp_auto",                                     :default => 0.0, :null => false
    t.decimal "exp_bankcharges",                              :default => 0.0, :null => false
    t.decimal "exp_computer",                                 :default => 0.0, :null => false
    t.decimal "exp_dues_and_subscriptions",                   :default => 0.0, :null => false
    t.decimal "exp_form100_deposits",                         :default => 0.0, :null => false
    t.decimal "exp_form100_settlement",                       :default => 0.0, :null => false
    t.decimal "exp_form1120_deposits",                        :default => 0.0, :null => false
    t.decimal "exp_form1120_settlement",                      :default => 0.0, :null => false
    t.decimal "exp_indepentdent_consultants",                 :default => 0.0, :null => false
    t.decimal "exp_ins_liability",                            :default => 0.0, :null => false
    t.decimal "exp_ins_workers_comp",                         :default => 0.0, :null => false
    t.decimal "exp_meals",                                    :default => 0.0, :null => false
    t.decimal "exp_meals_50_percent",                         :default => 0.0, :null => false
    t.decimal "exp_office",                                   :default => 0.0, :null => false
    t.decimal "exp_payroll",                                  :default => 0.0, :null => false
    t.decimal "exp_payroll_other",                            :default => 0.0, :null => false
    t.decimal "exp_payroll_taxes",                            :default => 0.0, :null => false
    t.decimal "exp_postage",                                  :default => 0.0, :null => false
    t.decimal "exp_postage_adjust",                           :default => 0.0, :null => false
    t.decimal "exp_tax_1120_refund",                          :default => 0.0, :null => false
    t.decimal "exp_taxes_other",                              :default => 0.0, :null => false
    t.decimal "exp_telephone",                                :default => 0.0, :null => false
    t.decimal "exp_telephone_isp",                            :default => 0.0, :null => false
    t.decimal "exp_total_tax_pl",                             :default => 0.0, :null => false
    t.decimal "exp_travel",                                   :default => 0.0, :null => false
    t.decimal "frm_100_estimated_payments",                   :default => 0.0, :null => false
    t.decimal "frm_100_min_tax",                              :default => 0.0, :null => false
    t.decimal "frm_100_pg_1_18_19",                           :default => 0.0, :null => false
    t.decimal "frm_100_pg_1_9",                               :default => 0.0, :null => false
    t.decimal "frm_100_sch_a_form_100_exp",                   :default => 0.0, :null => false
    t.decimal "frm_100_sch_a_total",                          :default => 0.0, :null => false
    t.decimal "frm_100_sch_f_11",                             :default => 0.0, :null => false
    t.decimal "frm_100_sch_f_12",                             :default => 0.0, :null => false
    t.decimal "frm_100_sch_f_26a",                            :default => 0.0, :null => false
    t.decimal "frm_100_sch_f_26a_adjust",                     :default => 0.0, :null => false
    t.decimal "frm_100_sch_f_26b",                            :default => 0.0, :null => false
    t.decimal "frm_100_sch_f_26b_adjust",                     :default => 0.0, :null => false
    t.decimal "frm_100_sch_f_27",                             :default => 0.0, :null => false
    t.decimal "frm_100_sch_f_3",                              :default => 0.0, :null => false
    t.decimal "frm_100_tax_pg_1_24",                          :default => 0.0, :null => false
    t.decimal "frm_100_tax_rate",                             :default => 0.0, :null => false
    t.decimal "frm_3885_depreciation",                        :default => 0.0, :null => false
    t.decimal "income_reconciliation_difference",             :default => 0.0, :null => false
    t.decimal "m1_6",                                         :default => 0.0, :null => false
    t.decimal "m1_non_taxable_income_7",                      :default => 0.0, :null => false
    t.decimal "m1_taxable_income_before_less",                :default => 0.0, :null => false
    t.decimal "marcs_gross",                                  :default => 0.0, :null => false
    t.decimal "mode_context",                                 :default => 0.0, :null => false
    t.decimal "netincome_books",                              :default => 0.0, :null => false
    t.decimal "nol_29a",                                      :default => 0.0, :null => false
    t.decimal "other_increases",                              :default => 0.0, :null => false
    t.decimal "pl_interest_income",                           :default => 0.0, :null => false
    t.integer "previous_year",                                :default => 0,   :null => false
    t.decimal "retained_earnings_M2_sch",                     :default => 0.0, :null => false
    t.decimal "retained_earnings_unappropriated",             :default => 0.0, :null => false
    t.decimal "sherees_gross",                                :default => 0.0, :null => false
    t.decimal "total_expense_books",                          :default => 0.0, :null => false
    t.decimal "exp_employee_benefit_medical",                 :default => 0.0, :null => false
    t.decimal "exp_employee_benefit_wellness",                :default => 0.0, :null => false
    t.decimal "exp_employee_benefit_other",                   :default => 0.0, :null => false
    t.decimal "frm100_refund_applied_to_next_year_42a",       :default => 0.0, :null => false
    t.decimal "frm100tax_due_37",                             :default => 0.0, :null => false
  end

end
