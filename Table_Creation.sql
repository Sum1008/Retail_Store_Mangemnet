--create customer_address
CREATE TABLE customer_address (
    address_id NUMBER(10) PRIMARY KEY,
    street     VARCHAR2(255),
    city       VARCHAR2(50),
    zipcode    VARCHAR2(50),
    country    VARCHAR2(255)
);

---create customers 
CREATE TABLE customers (
    first_name   VARCHAR2(255),
    last_name    VARCHAR2(255),
    email        VARCHAR2(255),
    customer_id  NUMBER PRIMARY KEY,
    age          NUMBER,
    gender       VARCHAR2(25),
    payment_mode VARCHAR2(255),
    address_id   NUMBER,
    CONSTRAINT fk_address FOREIGN KEY ( address_id )
        REFERENCES customer_address ( address_id )
);

--create category
CREATE TABLE category (
    category_name        VARCHAR2(50) PRIMARY KEY,
    category_description VARCHAR2(255)
);

--create product
CREATE TABLE products (
    product_code        VARCHAR2(25) PRIMARY KEY,
    product_name        VARCHAR2(255),
    product_description VARCHAR2(255),
    category_name       VARCHAR2(50),
    product_price       NUMBER(10, 2),
    CONSTRAINT fk_category FOREIGN KEY ( category_name )
        REFERENCES category ( category_name )
);

--create order
CREATE TABLE orders (
    order_number     NUMBER(10) PRIMARY KEY,
    product_code     VARCHAR2(25),
    customer_id      NUMBER,
    order_date       DATE,
    order_status     VARCHAR2(255),
    product_price    NUMBER(10, 2),
    product_quantity NUMBER(5),
    CONSTRAINT fk_product_code FOREIGN KEY ( product_code )
        REFERENCES products ( product_code ),
    CONSTRAINT fk_customer_id FOREIGN KEY ( customer_id )
        REFERENCES customers ( customer_id )
);

--create stores
CREATE TABLE stores (
    store_code NUMBER(10) PRIMARY KEY,
    store_name VARCHAR2(255),
    location   VARCHAR2(255)
);

--create inventory
CREATE TABLE inventory (
    stock_code     NUMBER(10) PRIMARY KEY,
    product_code   VARCHAR2(25),
    stock_quantity NUMBER(10),
    store_code     NUMBER(10),
    CONSTRAINT fk_product_code_inventory FOREIGN KEY ( product_code )
        REFERENCES products ( product_code ),
    CONSTRAINT fk_store_code FOREIGN KEY ( store_code )
        REFERENCES stores ( store_code )
);

--create sales_agent
CREATE TABLE sales_agents (
    agent_id   NUMBER(10) PRIMARY KEY,
    first_name VARCHAR2(255),
    last_name  VARCHAR2(255),
    store_code NUMBER(10),
    CONSTRAINT fk_store_code_agent FOREIGN KEY ( store_code )
        REFERENCES stores ( store_code )
);




--create dim_customer_address
CREATE TABLE dim_customer_address (
    address_id  NUMBER(10) PRIMARY KEY,
    street      VARCHAR2(255),
    city        VARCHAR2(50),
    zipcode     VARCHAR2(50),
    country     VARCHAR2(255),
    start_date  DATE,
    end_date    DATE,
    active_flag VARCHAR2(25)
);

--create dim_customer
CREATE TABLE dim_customers (
    first_name   VARCHAR2(255),
    last_name    VARCHAR2(255),
    email        VARCHAR2(255),
    customer_id  NUMBER PRIMARY KEY,
    age          NUMBER,
    gender       VARCHAR2(25),
    payment_mode VARCHAR2(255),
    start_date   DATE,
    end_date     DATE,
    active_flag  VARCHAR2(25),
    address_id   NUMBER,
    CONSTRAINT fk_dim_address FOREIGN KEY ( address_id )
        REFERENCES dim_customer_address ( address_id )
);

--create dim_category

CREATE TABLE dim_category (
    category_name        VARCHAR2(50) PRIMARY KEY,
    category_description VARCHAR2(255)
);



--create dim_products
CREATE TABLE dim_products (
    product_code        VARCHAR2(25) PRIMARY KEY,
    product_name        VARCHAR2(255),
    product_description VARCHAR2(255),
    category_name       VARCHAR2(50),
    product_price       NUMBER(10, 2),
    start_date          DATE,
    end_date            DATE,
    active_flag         VARCHAR2(25),
    CONSTRAINT fk_dim_category FOREIGN KEY ( category_name )
        REFERENCES dim_category ( category_name )
);

--create dim_order
CREATE TABLE dim_orders (
    order_number     NUMBER(10) PRIMARY KEY,
    product_code     VARCHAR2(25),
    customer_id      NUMBER,
    order_date       DATE,
    order_status     VARCHAR2(255),
    product_price    NUMBER(10, 2),
    product_quantity NUMBER(5),
    time_id          INT,
    CONSTRAINT fk_dim_product_code FOREIGN KEY ( product_code )
        REFERENCES dim_products ( product_code ),
    CONSTRAINT fk_dim_customer_id FOREIGN KEY ( customer_id )
        REFERENCES dim_customers ( customer_id )
);

--create dim_stores
CREATE TABLE dim_stores (
    store_code NUMBER(10) PRIMARY KEY,
    store_name VARCHAR2(255),
    location   VARCHAR2(255)
);


--create dim_inventory
CREATE TABLE dim_inventory (
    stock_code     NUMBER(10) PRIMARY KEY,
    product_code   VARCHAR2(25),
    stock_quantity NUMBER(10),
    store_code     NUMBER(10),
    start_date     DATE,
    end_date       DATE,
    active_flag    VARCHAR2(25),
    CONSTRAINT fk_dim_product_code_inventory FOREIGN KEY ( product_code )
        REFERENCES dim_products ( product_code ),
    CONSTRAINT fk_dim_store_code FOREIGN KEY ( store_code )
        REFERENCES dim_stores ( store_code )
);



---create dim_sales_agent
CREATE TABLE dim_sales_agents (
    agent_id   NUMBER(10) PRIMARY KEY,
    first_name VARCHAR2(255),
    last_name  VARCHAR2(255),
    store_code NUMBER(10),
    CONSTRAINT fk_dim_store_code_agent FOREIGN KEY ( store_code )
        REFERENCES dim_stores ( store_code )
);


--create fact_order
CREATE TABLE fact_order (
    serial_number NUMBER(10),
    product_code  VARCHAR2(25),
    order_number  NUMBER(10),
    customer_id   NUMBER,
    category_name VARCHAR2(50),
    agent_id      NUMBER(10),
    store_code    NUMBER(10),
    address_id    NUMBER(10),
    CONSTRAINT fk_f_pc FOREIGN KEY ( product_code )
        REFERENCES dim_products ( product_code ),
    CONSTRAINT fk_f_on FOREIGN KEY ( order_number )
        REFERENCES dim_orders ( order_number ),
    CONSTRAINT fk_f_id FOREIGN KEY ( customer_id )
        REFERENCES dim_customers ( customer_id ),
    CONSTRAINT fk_f_cn FOREIGN KEY ( category_name )
        REFERENCES dim_category ( category_name ),
    CONSTRAINT fk_f_ai FOREIGN KEY ( agent_id )
        REFERENCES dim_sales_agents ( agent_id ),
    CONSTRAINT fk_f_sc FOREIGN KEY ( store_code )
        REFERENCES dim_stores ( store_code ),
    CONSTRAINT fk_f_addi FOREIGN KEY ( address_id )
        REFERENCES dim_customer_address ( address_id )
);