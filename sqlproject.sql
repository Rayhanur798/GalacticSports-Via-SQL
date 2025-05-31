CREATE TABLE gsCUSTOMER(
    customer_id SMALLINT,
    cust_name VARCHAR(100),
    cust_address VARCHAR(100),
    cust_number VARCHAR(100)

);

ALTER TABLE gsCUSTOMER ADD CONSTRAINT pk_customer_id PRIMARY KEY (customer_id);

INSERT INTO gsCUSTOMER(customer_id,cust_name,cust_address,cust_number)VALUES(821,"NABIHA","BIRMINGHAM","07513682135");
INSERT INTO gsCUSTOMER(customer_id,cust_name,cust_address,cust_number)VALUES(340,"KARIM","NEWHAM","07939450642");
INSERT INTO gsCUSTOMER(customer_id,cust_name,cust_address,cust_number)VALUES(901,"MARCEL","WESTHAM","07452943114");
INSERT INTO gsCUSTOMER(customer_id,cust_name,cust_address,cust_number)VALUES(854,"LEVI","WHITECHAPEL","07882391309");
INSERT INTO gsCUSTOMER(customer_id,cust_name,cust_address,cust_number)VALUES(220,"TOSIN","BANKAI","01393219093");
INSERT INTO gsCUSTOMER(customer_id,cust_name,cust_address,cust_number)VALUES(654,"TRENT","BRIXTON","07412934568");


CREATE TABLE gsORDER(
    order_id SMALLINT,
    ordered_date DATE,
    shipping_date DATE,
    order_value SMALLINT,
    customer_id SMALLINT,
    item_id SMALLINT,
    seconditem_id SMALLINT,
    thirditem_id SMALLINT
);

ALTER TABLE gsORDER ADD CONSTRAINT pk_order_id PRIMARY KEY (order_id);
ALTER TABLE gsORDER ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES gsORDER(customer_id);
ALTER TABLE gsORDER ADD CONSTRAINT fk_item_id FOREIGN KEY (item_id) REFERENCES gsORDER(item_id);

INSERT INTO gsORDER(order_id,ordered_date,shipping_date,order_value,customer_id,item_id,seconditem_id,thirditem_id)VALUES(1001,'2024-10-21','2024-10-28',40.00,821,2000,NULL,NULL);
INSERT INTO gsORDER(order_id,ordered_date,shipping_date,order_value,customer_id,item_id,seconditem_id,thirditem_id)VALUES(1002,'2024-11-18','2024-11-25',55.00,340,3000,NULL,NULL);
INSERT INTO gsORDER(order_id,ordered_date,shipping_date,order_value,customer_id,item_id,seconditem_id,thirditem_id)VALUES(1003,'2024-10-22','2024-10-29',35.00,901,1000,NULL,NULL);
INSERT INTO gsORDER(order_id,ordered_date,shipping_date,order_value,customer_id,item_id,seconditem_id,thirditem_id)VALUES(1004,'2024-10-21','2024-10-28',75.00,854,1000,2000,NULL);
INSERT INTO gsORDER(order_id,ordered_date,shipping_date,order_value,customer_id,item_id,seconditem_id,thirditem_id)VALUES(1005,'2024-11-18','2024-11-25',130.00,220,1000,2000,3000);
INSERT INTO gsORDER(order_id,ordered_date,shipping_date,order_value,customer_id,item_id,seconditem_id,thirditem_id)VALUES(1006,'2024-11-18','2024-11-25',95.00,654,2000,3000,NULL);

CREATE TABLE gsEMPLOYEE(
    employee_id SMALLINT,
    employee_name VARCHAR(100),
    employee_role VARCHAR(100),
    planet VARCHAR(100),
    department_id SMALLINT ,
    peformance_id SMALLINT,
    salary SMALLINT 

);

ALTER TABLE gsEMPLOYEE ADD CONSTRAINT pk_employee_id PRIMARY KEY (employee_id);
ALTER TABLE gsEMPLOYEE ADD CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES gsEMPLOYEE(department_id);

INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(1659,"SMITH","MANAGER","MERCURY",0004,32000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(2431,"MUDRYK","ANALYST","MARS",0002,28000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(9851,"JACKSON","SALESMAN","SUN",0001,18000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(4172,"PALMER","CASHIER","SUN",0001,25000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(8089,"HUNCHO","MARKETING MANAGER","MARS",0002,230000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(5813,"TERRY","SECURITY GUARD","MERCURY",0004,20000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(7701,"JAMES","ASSISTANT MANAGER","SUN",0001,29000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(5467,"CALLUM","SALESMAN","SUN",0001,30000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(3734, "MUSTAFA","SALESMAN","SUN",0001,10000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(4567,"MENDES","SALESMAN","SUN",0001,21000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(1234,"MARK","PRODUCT DESIGNER","SATURN",0003,5000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(9876,"ENZO","UX DESIGNER","SATURN",0003,11000);
INSERT INTO gsEMPLOYEE(employee_id,employee_name,employee_role,planet,department_id,salary)VALUES(4402,"SANCHEZ","PROJECT MANAGER","SATURN",0003,20000);




CREATE TABLE product(
    product_id SMALLINT,
    product_name VARCHAR(100),
    price SMALLINT,
    stock_quantity SMALLINT
    
);

ALTER TABLE product ADD CONSTRAINT pk_product_id PRIMARY KEY (product_id);


INSERT INTO product(product_id,product_name,price,stock_quantity)VALUES(2024,"Hoverball",35.00,750);
INSERT INTO product(product_id,product_name,price,stock_quantity)VALUES(2025,"astro-wrestling",40.00,550);
INSERT INTO product(product_id,product_name,price,stock_quantity)VALUES(2026,"antigravity-racing",55.00,600);


CREATE TABLE gsDEPARTMENT(
    department_id SMALLINT,
    department_name VARCHAR(100),
    planet VARCHAR(100)
    
);

ALTER TABLE gsDEPARTMENT ADD CONSTRAINT pk_department_id PRIMARY KEY (department_id);

INSERT INTO gsDEPARTMENT(department_id,department_name,planet)VALUES(0001,"SALES","SUN");
INSERT INTO gsDEPARTMENT(department_id,department_name,planet)VALUES(0002,"PLANETARY LOGISTICS","MARS");
INSERT INTO gsDEPARTMENT(department_id,department_name,planet)VALUES(0004,"HUMAN RESOURCES","MERCURY");
INSERT INTO gsDEPARTMENT(department_id,department_name,planet)VALUES(0003,"PRODUCT MANAFACTURE","SATURN");



CREATE TABLE item(
    item_id SMALLINT,
    item_code VARCHAR(100),
    item_condition VARCHAR(100)
    
);

ALTER TABLE item ADD CONSTRAINT pk_item_id PRIMARY KEY (item_id);
ALTER TABLE item ADD CONSTRAINT fk_product_id FOREIGN KEY(product_id) REFERENCES product(product_id);
INSERT INTO item(item_id,item_code,item_condition,product_id)VALUES(100,"VAXNOL","EXCELLENT",2024);
INSERT INTO item(item_id,item_code,item_condition,product_id)VALUES(102,"SHUSHH","GOOD",2024);
INSERT INTO item(item_id,item_code,item_condition,product_id)VALUES(103,"NHHALR","OK",2024);
INSERT INTO item(item_id,item_code,item_condition,product_id)VALUES(104,"IDKTBH", "EXCELLENT",2025);
INSERT INTO item(item_id,item_code,item_condition,product_id)VALUES(105,"CBALOL","EXCELLENT",2026);
INSERT INTO item(item_id,item_code,item_condition,product_id)VALUES(106,"SMTIDK","EXCELLENT",2024);
INSERT INTO item(item_id,item_code,item_condition,product_id)VALUES(107,"XHJNWS","GOOD",2025);
INSERT INTO item(item_id,item_code,item_condition,product_id)VALUES(108,"DCBFEB","GOOD",2026);
INSERT INTO item(item_id,item_code,item_condition,product_id)VALUES(109,"WHEDNE","OK",2025);
INSERT INTO item(item_id,item_code,item_condition,product_id)VALUES(110,"CRNYWQ","OK",2026);
INSERT INTO item(item_id,item_code,item_condition,product_id)VALUES(111,"CEJNNS","GOOD",2025);





CREATE TABLE salesPeformance(
    peformance_id SMALLINT,
    total_sales SMALLINT,
    commision_percentage SMALLINT,
    employee_id SMALLINT,
    commision_money SMALLINT

);

ALTER TABLE salesPeformance ADD CONSTRAINT pk_peformance_id PRIMARY KEY (peformance_id);
ALTER TABLE salesPeformance ADD CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES gsEMPLOYEE(employee_id);

INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(11234,25,10,1659,3200);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(21348,0,NULL,2431,NULL);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(20815,50,20,9851,3600);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(11213,0,NULL,4172,NULL);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(29051,55,20,8089,6000);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(31790,0,NULL,5813,NULL);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(21123,27,10,7701,2900);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(24472,60,20,5467,6000);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(30215,34,10,3734,1000);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(18434,40,10,4567,2100);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(26111,0,NULL,1234,NULL);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(21859,0,NULL,9876,NULL);
INSERT INTO salesPeformance(peformance_id,total_sales,commision_percentage,employee_id,commision_money) VALUES(6522,0,NULL,4402,NULL);


