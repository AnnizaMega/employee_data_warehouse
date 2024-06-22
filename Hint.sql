--- HINT
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
    dim_education ed ON e.education_id = ed.education_id;
    
   
   
-- HINT
SELECT 
    fs.sale_id,
    fs.store_id,
    ds.store_name,
    ds.city,
    ds.state,
    ds.country,
    fs.sales_name_id,
    dns.sales_name,
    dns.sales_age,
    dns.sales_gender,
    fs.time_id,
    dt.date,
    dt.day_of_week,
    dt.month,
    dt.year,
    fs.product_id,
    dp.product_name,
    dp.category,
    fs.quantity,
    fs.price
FROM 
    fact_sales fs
LEFT JOIN 
    dim_store ds ON fs.store_id = ds.store_id
LEFT JOIN 
    dim_sales_name dns ON fs.sales_name_id = dns.sales_name_id
LEFT JOIN 
    dim_time dt ON fs.time_id = dt.time_id
LEFT JOIN 
    dim_product dp ON fs.product_id = dp.product_id;