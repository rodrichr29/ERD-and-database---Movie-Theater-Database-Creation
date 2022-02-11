--VALUES
--customer
insert into
  customer (customer_id, first_name, last_name)
values
  (1, 'Bill', 'Nye')
insert into
  customer (customer_id, first_name, last_name)
values
  (2, 'Johnny', 'Test')
insert into
  customer (customer_id, first_name, last_name)
values
  (3, 'Ivo', 'Robotnik')
insert into
  customer (customer_id, first_name, last_name)
values
  (4, 'Mario', 'Mario')
insert into
  customer (customer_id, first_name, last_name)
values
  (5, 'Steve', 'Stonecutter') --employee
insert into
  employee (employee_id, first_name, last_name)
values
  (1, 'Berto', 'Mix')
insert into
  employee (employee_id, first_name, last_name)
values
  (2, 'Tom', 'Nook') --ticket
insert into
  ticket (ticket_id, customer_id, ticket_number)
values
  (1, 3, 10001)
insert into
  ticket (ticket_id, customer_id, ticket_number)
values
  (2, 1, 10002)
insert into
  ticket (ticket_id, customer_id, ticket_number)
values
  (3, 2, 10003)
insert into
  ticket (ticket_id, customer_id, ticket_number)
values
  (4, 4, 10004)
insert into
  ticket (ticket_id, customer_id, ticket_number)
values
  (5, 5, 10005) --payment
insert into
  payment (
    payment_id,
    customer_id,
    employee_id,
    ticket_id,
    amount
  )
values
  (1, 3, 2, 1, 9.99)
insert into
  payment (
    payment_id,
    customer_id,
    employee_id,
    ticket_id,
    amount
  )
values
  (2, 1, 1, 2, 29.99)
insert into
  payment (
    payment_id,
    customer_id,
    employee_id,
    ticket_id,
    amount
  )
values
  (3, 2, 1, 3, 0.00)
insert into
  payment (
    payment_id,
    customer_id,
    employee_id,
    ticket_id,
    amount
  )
values
  (4, 5, 2, 4, 19.99)
insert into
  payment (
    payment_id,
    customer_id,
    employee_id,
    ticket_id,
    amount
  )
values
  (5, 5, 1, 5, 9.99)