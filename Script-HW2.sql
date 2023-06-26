1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.employee_name, salary.monthly_salary from employees
join salary on employees.id = salary.id;

2. Вывести всех работников у которых ЗП меньше 2000.

select employees.employee_name, salary.monthly_salary from employees
join salary on employees.id = salary.id
where monthly_salary < 2000; 

3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select * from employees 
right join employee_salary ON employees.id = employee_id
where employees.id is null;

4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select * from employees 
right join employee_salary ON employees.id = employee_id
join salary on salary.id = salary_id
where employees.id is null
and monthly_salary < 2000;

5. Найти всех работников кому не начислена ЗП.

select * from employees 
left join employee_salary on employees.id = employee_id
where salary_id is null;

6. Вывести всех работников с названиями их должности.
 
select employee_name, roles from roles_employee
left join employees on roles_employee.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id;

7. Вывести имена и должность только Java разработчиков.

select employee_name, roles from roles_employee
left join employees on roles_employee.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
where role_name in ('Junior_Java_developer', 'Middle_Java_developer', 'Senior_Java_developer');

8. Вывести имена и должность только Python разработчиков.

select employee_name, roles from roles_employee
left join employees on roles_employee.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
where role_name in ('Junior_Python_developer', 'Middle_Python_developer', 'Senior_Python_developer');

 9. Вывести имена и должность всех QA инженеров.
 
select employee_name, roles from roles_employee
left join employees on roles_employee.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';
 
10. Вывести имена и должность ручных QA инженеров.

select employee_name, roles from roles_employee
left join employees on roles_employee.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
where role_name like '%Manual_QA%';

 11. Вывести имена и должность автоматизаторов QA
 
select employee_name, roles from roles_employee
left join employees on roles_employee.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
where role_name like '%Automation_QA%';

12. Вывести имена и зарплаты Junior специалистов

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Junior%';

13. Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Middle%';

14. Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Senior%';

15. Вывести зарплаты Java разработчиков
 
select monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Java%'; 

16. Вывести зарплаты Python разработчиков

select monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Python%';

17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE 'Junior_Python%';

18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE 'Middle_JavaScript%';

19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE 'Senior_JavaScript%';

20. Вывести зарплаты Junior QA инженеров

select monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE 'Junior%QA%';

21. Вывести среднюю зарплату всех Junior специалистов

select avg(monthly_salary) as "Средняя зп Junior" from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE 'Junior%';

22. Вывести сумму зарплат JS разработчиков

select sum(monthly_salary) as "Сумма зп JS dev" from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE '%JavaScript%';

23. Вывести минимальную ЗП QA инженеров

select min(monthly_salary) as "Мин зп QA" from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE '%QA%';

24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary) as "Мин зп QA" from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE '%QA%';

25. Вывести количество QA инженеров

select COUNT(employees.id) as "Кол-во QA" from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
WHERE role_name LIKE '%QA%';

 26. Вывести количество Middle специалистов.
 
select COUNT(employees.id) as "Кол-во Middle" from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
WHERE role_name LIKE 'Middle%';

 27. Вывести количество разработчиков
 
select COUNT(employees.id) as "Кол-во QA" from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
WHERE role_name LIKE '%developer';

28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary) as "Сумма зп dev" from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
WHERE role_name LIKE '%developer';

 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
select employee_name, role_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
ORDER BY monthly_salary ASC;

30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_name, monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, role_name, monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where monthly_salary < 2300
order by monthly_salary asc;

 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, role_name, monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 