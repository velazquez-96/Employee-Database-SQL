

CREATE TABLE "Departments" (
    "department_num" VARCHAR   NOT NULL,
    "department_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "department_num"
     )
);

CREATE TABLE "Departments_manager" (
    "department_num" VARCHAR   NOT NULL,
    "employee_num" INT   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL
);

CREATE TABLE "Departments_employees" (
    "employee_num" INT   NOT NULL,
    "department_num" VARCHAR   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL
);

CREATE TABLE "Employees" (
    "employee_num" INT   NOT NULL,
    "birth_date" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "employee_num"
     )
);

CREATE TABLE "Salaries" (
    "employee_num" INT   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL
);

CREATE TABLE "Titles" (
    "employee_num" INT   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL
);

ALTER TABLE "Departments_manager" ADD CONSTRAINT "fk_Departments_manager_department_num" FOREIGN KEY("department_num")
REFERENCES "Departments" ("department_num");

ALTER TABLE "Departments_manager" ADD CONSTRAINT "fk_Departments_manager_employee_num" FOREIGN KEY("employee_num")
REFERENCES "Employees" ("employee_num");

ALTER TABLE "Departments_employees" ADD CONSTRAINT "fk_Departments_employees_employee_num" FOREIGN KEY("employee_num")
REFERENCES "Employees" ("employee_num");

ALTER TABLE "Departments_employees" ADD CONSTRAINT "fk_Departments_employees_department_num" FOREIGN KEY("department_num")
REFERENCES "Departments" ("department_num");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_employee_num" FOREIGN KEY("employee_num")
REFERENCES "Employees" ("employee_num");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_employee_num" FOREIGN KEY("employee_num")
REFERENCES "Employees" ("employee_num");

