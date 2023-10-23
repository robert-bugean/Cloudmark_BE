-- employee-job
select E.first_name, E.last_name, J.description
from employee E, job J, employee_job EJ
where E.id = EJ.employee_id and EJ.job_id = J.id
and J.id = 10

-- employee-company
select E.first_name, E.last_name, C.company_name
from employee E, company C
where E.company_id = C.id
and E.company_id = 8