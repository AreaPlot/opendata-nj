CREATE TABLE agency (
	calendar_year integer, 
	calendar_quarter integer, 
	as_of_date date, 
	payroll_id integer, 
	last_name text, 
	first_name text, 
	middle_initial text, 
	full_name text, 
	salary_hourly_rate money, 
	master_department_agency_desc text, 
	master_section_desc text, 
	master_title_desc text, 
	employee_relations_group text, 
	compensation_method text, 
	master_ytd_regular_pay money, 
	master_ytd_overtime_payments money, 
	master_ytd_all_other_payments money, 
	master_ytd_earnings money, 
	paid_department_agency_desc text, 
	paid_section_desc text, 
	regular_pay money, 
	supplemental_pay money, 
	one_time_payments money, 
	legislator_or_back_pay money, 
	overtime_payments money, 
	clothing_uniform_payments money, 
	retroactive_pay money, 
	lump_sum_pay money, 
	cash_in_lieu_maintenance money, 
	ytd_earnings money, 
	record_type text
);
