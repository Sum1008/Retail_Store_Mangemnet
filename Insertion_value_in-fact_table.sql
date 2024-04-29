--insert into facts table
--
CREATE SEQUENCE fact_orders_sequence START WITH 1 INCREMENT BY 1;
CREATE OR REPLACE PROCEDURE ETL_Fact_Order AS
BEGIN
    INSERT INTO fact_order(
            serial_number,
            product_code,
            order_number,
            customer_id,
            category_name,
            agent_id,
            store_code,
            address_id
        )
        SELECT
           fact_orders_sequence.NEXTVAL as serial_number,d.product_code as product_code,
            c.order_number as order_number,a.customer_id as customer_id,
            e.category_name as category_name,h.agent_id as agent_id ,
            f.store_code as store_code, b.address_id address_id
            from dim_customers a join dim_customer_address b on a.address_id=b.address_id
join dim_orders c on a.customer_id=c.customer_id
join dim_products d on c.product_code=d.product_code
join dim_category e on d.category_name=e.category_name
join dim_inventory f on f.product_code=d.product_code
join dim_stores g on g.store_code=f.store_code
join dim_sales_agents h on h.store_code=g.store_code
WHERE NOT EXISTS (
            SELECT 1
            FROM fact_order fo
            WHERE fo.product_code = d.product_code
        )
;
COMMIT;
END;
/
exec etl_fact_order;




