--inserting in dimension table _customer_address
CREATE OR REPLACE PROCEDURE etl_customer_address AS
BEGIN
    -- Inserting  data into dim_customer_address from customer_address
    INSERT INTO dim_customer_address (
        address_id,
        street,
        city,
        zipcode,
        country,
        start_date,
        end_date,
        active_flag
    )
        SELECT
            ca.address_id,
            ca.street,
            ca.city,
            ca.zipcode,
            ca.country,
            sysdate,
            NULL,
            'Y'
        FROM
            customer_address ca
        WHERE
            NOT EXISTS (
                SELECT
                    1
                FROM
                    dim_customer_address da
                WHERE
                    da.address_id = ca.address_id
            );

    COMMIT;
END;
/

exec etl_customer_address;
/

---insert into dim_customers
CREATE OR REPLACE PROCEDURE etl_dim_customers AS
BEGIN
    -- Inserting data into dim_customers from customers
    INSERT INTO dim_customers (
        customer_id,
        first_name,
        last_name,
        email,
        age,
        gender,
        payment_mode,
        address_id,
        start_date,
        end_date,
        active_flag
    )
        SELECT
            cu.customer_id,
            cu.first_name,
            cu.last_name,
            cu.email,
            cu.age,
            cu.gender,
            cu.payment_mode,
            cu.address_id,
            sysdate,
            NULL,
            'Y'
        FROM
            customers cu
        WHERE
            NOT EXISTS (
                SELECT
                    1
                FROM
                    dim_customers dc
                WHERE
                    dc.customer_id = cu.customer_id
            );

    COMMIT;
END;
/

exec etl_dim_customers;
/



----insert into dim_category
CREATE OR REPLACE PROCEDURE etl_dim_category AS
BEGIN
    -- Inserting data into dim_category from category
    INSERT INTO dim_category (
        category_name,
        category_description
    )
        SELECT
            c.category_name,
            c.category_description
        FROM
            category c
        WHERE
            NOT EXISTS (
                SELECT
                    1
                FROM
                    dim_category dc
                WHERE
                    dc.category_name = c.category_name
            );

    COMMIT;
END;
/

exec etl_dim_category;
/



--insert into products
CREATE OR REPLACE PROCEDURE etl_dim_products AS
BEGIN
    -- Inserting data into dim_products from products
    INSERT INTO dim_products (
        product_code,
        product_name,
        product_description,
        category_name,
        product_price,
        start_date,
        end_date,
        active_flag
    )
        SELECT
            p.product_code,
            p.product_name,
            p.product_description,
            p.category_name,
            p.product_price,
            sysdate,
            NULL,
            'Y'
        FROM
            products p
        WHERE
            NOT EXISTS (
                SELECT
                    1
                FROM
                    dim_products dp
                WHERE
                    dp.product_code = p.product_code
            );

    COMMIT;
END;
/

exec etl_dim_products;



--insert into orders
CREATE OR REPLACE PROCEDURE etl_dim_orders AS
BEGIN
    -- Inserting data into dim_orders from orders
    INSERT INTO dim_orders (
        order_number,
        product_code,
        customer_id,
        order_date,
        order_status,
        product_price,
        product_quantity,
        time_id
    )
        SELECT
            o.order_number,
            o.product_code,
            o.customer_id,
            o.order_date,
            o.order_status,
            o.product_price,
            o.product_quantity,
            TO_NUMBER(to_char(sysdate, 'YYYYMMDDHH24MISS'))
        FROM
            orders o
        WHERE
            NOT EXISTS (
                SELECT
                    1
                FROM
                    dim_orders do
                WHERE
                    do.order_number = o.order_number
            );

    COMMIT;
END;
/

exec etl_dim_orders;
/



--insert into dim_stores
CREATE OR REPLACE PROCEDURE etl_dim_stores AS
BEGIN
    -- Insert data into dim_stores from stores
    INSERT INTO dim_stores (
        store_code,
        store_name,
        location
    )
        SELECT
            s.store_code,
            s.store_name,
            s.location
        FROM
            stores s
        WHERE
            NOT EXISTS (
                SELECT
                    1
                FROM
                    dim_stores ds
                WHERE
                    ds.store_code = s.store_code
            );

    COMMIT;
END;
/

exec etl_dim_stores;
/



--insert into dim_inventory
CREATE OR REPLACE PROCEDURE etl_dim_inventory AS
BEGIN
    -- Insert data into dim_inventory from inventory
    INSERT INTO dim_inventory (
        stock_code,
        product_code,
        stock_quantity,
        store_code,
        start_date,
        end_date,
        active_flag
    )
        SELECT
            i.stock_code,
            i.product_code,
            i.stock_quantity,
            i.store_code,
            sysdate,
            NULL,
            'Y'
        FROM
            inventory i
        WHERE
            NOT EXISTS (
                SELECT
                    1
                FROM
                    dim_inventory di
                WHERE
                    di.stock_code = i.stock_code
            );

    COMMIT;
END;
/

exec etl_dim_inventory;
/


---insert into dim_sales_agent
CREATE OR REPLACE PROCEDURE etl_dim_salesagents AS
BEGIN
    -- Insert data into dim_salesagents from sales_agents
    INSERT INTO dim_sales_agents (
        agent_id,
        first_name,
        last_name,
        store_code
    )
        SELECT
            sa.agent_id,
            sa.first_name,
            sa.last_name,
            sa.store_code
        FROM
            sales_agents sa
        WHERE
            NOT EXISTS (
                SELECT
                    1
                FROM
                    dim_sales_agents dsa
                WHERE
                    dsa.agent_id = sa.agent_id
            );

    COMMIT;
END;
/

exec etl_dim_salesagents;