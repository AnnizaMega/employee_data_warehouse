CREATE VIEW public.performace_employee_bad AS
SELECT 
    f.performance_id,
    f.employee_id,
    f.performance_score,
    f.performance_date,
    e.first_name,
    e.last_name,
    e.birt_date,
    e.hire_date,
    e.gender,
    e.department_id,
    d.department_name,
    e.education_id,
    ed.education_level
FROM 
    fact_employee_performance f
LEFT JOIN 
    dim_employee e ON f.employee_id = e.employee_id
LEFT JOIN 
    dim_department d ON e.department_id = d.department_id
LEFT JOIN 
    dim_education ed ON e.education_id = ed.education_id
WHERE f.performance_score < 75 ;



CREATE VIEW public.performace_employee_good AS
SELECT 
    f.performance_id,
    f.employee_id,
    f.performance_score,
    f.performance_date,
    e.first_name,
    e.last_name,
    e.birt_date,
    e.hire_date,
    e.gender,
    e.department_id,
    d.department_name,
    e.education_id,
    ed.education_level
FROM 
    fact_employee_performance f
LEFT JOIN 
    dim_employee e ON f.employee_id = e.employee_id
LEFT JOIN 
    dim_department d ON e.department_id = d.department_id
LEFT JOIN 
    dim_education ed ON e.education_id = ed.education_id
WHERE f.performance_score BETWEEN 75 AND 81 ;

CREATE VIEW public.performace_employee_excellent AS
SELECT 
    f.performance_id,
    f.employee_id,
    f.performance_score,
    f.performance_date,
    e.first_name,
    e.last_name,
    e.birt_date,
    e.hire_date,
    e.gender,
    e.department_id,
    d.department_name,
    e.education_id,
    ed.education_level
FROM 
    fact_employee_performance f
LEFT JOIN 
    dim_employee e ON f.employee_id = e.employee_id
LEFT JOIN 
    dim_department d ON e.department_id = d.department_id
LEFT JOIN 
    dim_education ed ON e.education_id = ed.education_id
WHERE f.performance_score > 81 ;