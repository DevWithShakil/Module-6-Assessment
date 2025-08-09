-- Create Employee table
CREATE TABLE employee (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    salary NUMERIC(10,2)
);

INSERT INTO employee (emp_name, salary) VALUES
('Shakil', 5000),
('Hisham', 6000),
('Hridoy', 5500),
('Antor', 7000),
('Rahul', 5000),
('Sabit', 8000),
('Sumon', 7500);

-- Create Account table
CREATE TABLE account (
    account_id SERIAL PRIMARY KEY,
    account_name VARCHAR(50),
    pending_balance NUMERIC(10,2),
    is_active BOOLEAN,
    open_branch_id INT
);

INSERT INTO account (account_name, pending_balance, is_active, open_branch_id) VALUES
('Acc1', 4200, TRUE, 1),
('Acc2', 3000, TRUE, 1),
('Acc3', 4500, TRUE, 2),
('Acc4', 2000, FALSE, 2),
('Acc5', 4000, TRUE, 3),
('Acc6', 3500, TRUE, 3),
('Acc7', 1000, TRUE, 1);
