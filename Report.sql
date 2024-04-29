/*Report no :1*/

set SERVERoutput on;
SELECT
   distinct dc.first_name,
    dc.last_name,
     dc.age,
    dc.gender
FROM
    fact_order fo
JOIN
    dim_customers dc ON fo.customer_id = dc.customer_id
WHERE
    dc.active_flag = 'Y'
    AND dc.age >= 20 -- Replace :min_age with the minimum age you want to filter by
    AND dc.age <= 50 -- Replace :max_age with the maximum age you want to filter by
    AND dc.gender = 'Female' -- Replace :selected_gender with the gender you want to filter by



set serveroutput on;
--customer purchase history
DECLARE
    v_order_number        fact_order.order_number%TYPE;
    v_product_code        fact_order.product_code%TYPE;
    v_product_name        dim_products.product_name%TYPE;
    v_product_description dim_products.product_description%TYPE;
BEGIN
    FOR rec IN (
        SELECT
            fo.order_number,
            fo.product_code,
            dp.product_name,
            dp.product_description
        FROM
                 fact_order fo
            JOIN dim_products dp ON fo.product_code = dp.product_code
        WHERE
            fo.customer_id = 13
    ) LOOP
        v_order_number := rec.order_number;
        v_product_code := rec.product_code;
        v_product_name := rec.product_name;
        v_product_description := rec.product_description;
        dbms_output.put_line('Order Number: ' || v_order_number);
        dbms_output.put_line('Product Code: ' || v_product_code);
        dbms_output.put_line('Product Name: ' || v_product_name);
        dbms_output.put_line('Product Description: ' || v_product_description);
    END LOOP;
END;
/

--Report No:2
-------------------
---sales agent performance
SELECT
    sa.agent_id,
    COUNT(fo.order_number) AS total_orders,
    SUM(dp.product_price)  AS total_sales_value
FROM
         fact_order fo
    JOIN dim_sales_agents sa ON fo.agent_id = sa.agent_id
    JOIN dim_products     dp ON fo.product_code = dp.product_code
GROUP BY
    sa.agent_id
ORDER BY
    total_sales_value DESC;
   

   ---Report No:3
---------------------------------
-----customer location analysis

SELECT
    da.city,
    da.street,
    COUNT(fo.order_number) AS total_orders,
    SUM(dp.product_price)  AS total_sales_value
FROM
         fact_order fo
    JOIN dim_customer_address da ON fo.address_id = da.address_id
    JOIN dim_products         dp ON fo.product_code = dp.product_code
GROUP BY
    da.city,
    da.street
ORDER BY
    total_sales_value DESC;

---Report No:4
-----------------------------------
--product performance
DECLARE
    v_category_name dim_products.category_name%TYPE;
    v_product_code  dim_products.product_code%TYPE;
    v_product_name  dim_products.product_name%TYPE;
    v_total_sales   NUMBER;
BEGIN
    FOR rec IN (
        SELECT
            dp.category_name,
            dp.product_code,
            dp.product_name,
            COUNT(fo.serial_number) AS total_sales
        FROM
                 fact_order fo
            JOIN dim_products dp ON fo.product_code = dp.product_code
        GROUP BY
            dp.category_name,
            dp.product_code,
            dp.product_name
        ORDER BY
            dp.category_name,
            total_sales DESC
    ) LOOP
        v_category_name := rec.category_name;
        v_product_code := rec.product_code;
        v_product_name := rec.product_name;
        v_total_sales := rec.total_sales;
        dbms_output.put_line('Category Name: '
                             || v_category_name
                             || ', Product Code: '
                             || v_product_code
                             || ', Product Name: '
                             || v_product_name
                             || ', Total Sales: '
                             || v_total_sales);

    END LOOP;
END;

---Report N0:5
--------------------------------
---current_inventory

DECLARE
    CURSOR inventory_cursor IS
    SELECT
        dp.product_code,
        dp.product_name,
        di.stock_quantity AS current_inventory
    FROM
             dim_inventory di
        JOIN dim_products dp ON di.product_code = dp.product_code;

BEGIN
    FOR rec IN inventory_cursor LOOP
        dbms_output.put_line('Product Code: '
                             || rec.product_code
                             || ', Product Name: '
                             || rec.product_name
                             || ', Current Inventory: '
                             || rec.current_inventory);
    END LOOP;
END;
/

--Report No :6
set serveroutput on;

DECLARE
    CURSOR sales_cursor IS
    SELECT
        dp.category_name,
        dp.product_code,
        dp.product_name,
        COUNT(fo.serial_number) AS total_sales,
        RANK()
        OVER(PARTITION BY dp.category_name
             ORDER BY
                 COUNT(fo.serial_number) DESC
        )                       AS category_rank
    FROM
             fact_order fo
        JOIN dim_products dp ON fo.product_code = dp.product_code
    GROUP BY
        dp.category_name,
        dp.product_code,
        dp.product_name
    ORDER BY
        dp.category_name,
        total_sales DESC;

BEGIN
    FOR rec IN sales_cursor LOOP
        dbms_output.put_line('Category Name: '
                             || rec.category_name
                             || ', Product Code: '
                             || rec.product_code
                             || ', Product Name: '
                             || rec.product_name
                             || ', Total Sales: '
                             || rec.total_sales
                             || ', Category Rank: '
                             || rec.category_rank);
    END LOOP;
END;
/


--Report No:7
---customer info about active flag is y and gender female and age bet 20 to 50

SELECT DISTINCT
    dc.first_name,
    dc.last_name,
    dc.age,
    dc.gender
FROM
         fact_order fo
    JOIN dim_customers dc ON fo.customer_id = dc.customer_id
WHERE
        dc.active_flag = 'Y'
    AND dc.age >= 20
    AND dc.age <= 50
    AND dc.gender = 'Female';     