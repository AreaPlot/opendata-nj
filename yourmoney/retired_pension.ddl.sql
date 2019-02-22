CREATE TABLE retired (
	report_year_month integer, 
	as_of_date date, 
	member_key integer, 
	member_last_name text, 
	member_first_name text, 
	member_middle_initial text, 
	member_full_name text, 
	member_birth_year text, -- integer and "Not Reported"
	member_retirement_cause text, 
	member_last_employer text, 
	member_pension_fund text, 
	member_retirement_date text, -- date may be incomplete (e.g. '1970-09') 
	member_salary_for_calculation text, 
	member_final_months_of_service integer, 
	type_of_benefit text, 
	mthly_pension_allowance text, 
	mthly_cost_of_living_allowance text, 
	mthly_supplemental_allowance text, 
	mthly_total_allowances text, 
	last_standard_allowance_yearmo text,  -- date may be incomplete (e.g. '1970-09') 
	ytd_pension_pymnts text, 
	ytd_cost_of_living_pymnts text, 
	ytd_supplemental_pymnts text, 
	ytd_one_time_adjustment_pymnts text, 
	ytd_total_paymnts text, 
	last_disbursement_yearmo text,  -- date may be incomplete (e.g. '1970-09') 
	retirement_cancellation_date text -- date may be incomplete (e.g. '1970-09') 
);
