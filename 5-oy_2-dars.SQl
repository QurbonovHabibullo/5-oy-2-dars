--   1-topshiriq

DROP TABLE if exists departments;
DROP TABLE if exists employees;
DROP TABLE if exists projects;
DROP TABLE if exists tasks;

CREATE TABLE if not exists departments(
	id SERIAL primary key,
	name text,
	location text
);

 CREATE TABLE if not exists employees(
	id SERIAL primary key,
	name text,
	position text,
	department_id integer references departments(id)
 );


 CREATE TABLE if not exists projects(
	id SERIAL primary key,
	title text,
	department_id integer references departments(id)
 );

 CREATE TABLE if not exists tasks(
	id SERIAL primary key,
	description text,
	project_id integer references projects(id),
	employee_id integer references employees(id)
 );
 
 select * from departments;
 select * from employees;
 select * from projects;
 select * from tasks;
-- ===================================
--   2-topshiriq

ALTER TABLE employees 
ADD COLUMN email text;

ALTER TABLE tasks
ALTER COLUMN description type VARCHAR(255);
-- ==========================================
--    3-topshiriq
UPDATE employees SET position = 'Senior Developer' WHERE id = 1;
UPDATE projects SET title = 'New Project Title' WHERE id = 2;

-- ============================================
--    4-topshiriq
DELETE FROM tasks WHERE project_id = 3;
DELETE FROM projects WHERE id = 3;

UPDATE tasks SET employee_id = NULL WHERE employee_id = 4
DELETE FROM employees WHERE id = 4



 





 
 