CREATE OR REPLACE TRIGGER orders_etl_trigger AFTER
    INSERT OR UPDATE ON orders
    FOR EACH ROW
BEGIN
    -- Calculate the time_id as a numeric value representing SYSDATE
    DECLARE
        time_id NUMBER;
    BEGIN
        -- Use SYSDATE to obtain the current date and time as a numeric value
        SELECT
            TO_NUMBER(to_char(sysdate, 'YYYYMMDDHH24MISS'))
        INTO time_id
        FROM
            dual;

        MERGE INTO dim_orders do
        USING (
            SELECT
                :new.order_number     AS order_number,
                :new.product_code     AS product_code,
                :new.customer_id      AS customer_id,
                :new.order_date       AS order_date,
                :new.order_status     AS order_status,
                :new.product_price    AS product_price,
                :new.product_quantity AS product_quantity,
                time_id               AS time_id  -- Include time_id in the source
            FROM
                dual
        ) source ON ( do.order_number = source.order_number )
        WHEN MATCHED THEN UPDATE
        SET do.product_code = source.product_code,
            do.customer_id = source.customer_id,
            do.order_date = source.order_date,
            do.order_status = source.order_status,
            do.product_price = source.product_price,
            do.product_quantity = source.product_quantity,
            do.time_id = source.time_id -- Update time_id
        WHEN NOT MATCHED THEN
        INSERT (
            do.order_number,
            do.product_code,
            do.customer_id,
            do.order_date,
            do.order_status,
            do.product_price,
            do.product_quantity,
            do.time_id )
        VALUES
            ( source.order_number,
              source.product_code,
              source.customer_id,
              source.order_date,
              source.order_status,
              source.product_price,
              source.product_quantity,
              source.time_id );

    END;
END;
/