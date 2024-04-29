--insert value in customer_address
INSERT INTO customer_address (
    address_id,
    street,
    city,
    zipcode,
    country
) VALUES (
    1,
    '42/1, Shanti Villa, MG Road',
    'Mumbai',
    '400002',
    'India'
);

INSERT INTO customer_address (
    address_id,
    street,
    city,
    zipcode,
    country
) VALUES (
    2,
    '55, Shivaji Nagar, Shivaji Road',
    'Pune',
    '411002',
    'India'
);

INSERT INTO customer_address (
    address_id,
    street,
    city,
    zipcode,
    country
) VALUES (
    3,
    '23, Ramakrishna Lane, Gandhi Bagh',
    'Nagpur',
    '440002',
    'India'
);

INSERT INTO customer_address (
    address_id,
    street,
    city,
    zipcode,
    country
) VALUES (
    4,
    '4/5, Sardar Patel Road, Gandhi Nagar',
    'Nashik',
    '422002',
    'India'
);

INSERT INTO customer_address (
    address_id,
    street,
    city,
    zipcode,
    country
) VALUES (
    5,
    '8/9, Subhash Chowk, Naya Bazar',
    'Aurangabad',
    '431002',
    'India'
);

INSERT INTO customer_address (
    address_id,
    street,
    city,
    zipcode,
    country
) VALUES (
    6,
    '12/3, Thane West, Ghodbunder Road',
    'Thane',
    '400602',
    'India'
);

INSERT INTO customer_address (
    address_id,
    street,
    city,
    zipcode,
    country
) VALUES (
    7,
    '17, Sadashiv Peth, Budhwar Peth',
    'Solapur',
    '413002',
    'India'
);

INSERT INTO customer_address (
    address_id,
    street,
    city,
    zipcode,
    country
) VALUES (
    8,
    '34, Rajapeth, Badnera Road',
    'Amravati',
    '444602',
    'India'
);

INSERT INTO customer_address (
    address_id,
    street,
    city,
    zipcode,
    country
) VALUES (
    9,
    '6/7, Mahadikwad, Shahupuri',
    'Kolhapur',
    '416002',
    'India'
);

INSERT INTO customer_address (
    address_id,
    street,
    city,
    zipcode,
    country
) VALUES (
    10,
    '3, Gandhi Chowk, Near Collector Office',
    'Akola',
    '444003',
    'India'
);

INSERT INTO customers (
    first_name,
    last_name,
    email,
    customer_id,
    age,
    gender,
    payment_mode,
    address_id
) VALUES (
    'Rajesh',
    'Kumar',
    'rajesh.kumar@example.com',
    11,
    28,
    'Male',
    'Credit Card',
    1
);

INSERT INTO customers (
    first_name,
    last_name,
    email,
    customer_id,
    age,
    gender,
    payment_mode,
    address_id
) VALUES (
    'Neha',
    'Sharma',
    'neha.sharma@example.com',
    12,
    25,
    'Female',
    'PayPal',
    2
);

INSERT INTO customers (
    first_name,
    last_name,
    email,
    customer_id,
    age,
    gender,
    payment_mode,
    address_id
) VALUES (
    'Amit',
    'Patel',
    'amit.patel@example.com',
    13,
    32,
    'Male',
    'Credit Card',
    3
);

INSERT INTO customers (
    first_name,
    last_name,
    email,
    customer_id,
    age,
    gender,
    payment_mode,
    address_id
) VALUES (
    'Priya',
    'Singh',
    'priya.singh@example.com',
    14,
    24,
    'Female',
    'Cash',
    4
);

INSERT INTO customers (
    first_name,
    last_name,
    email,
    customer_id,
    age,
    gender,
    payment_mode,
    address_id
) VALUES (
    'Rahul',
    'Verma',
    'rahul.verma@example.com',
    15,
    29,
    'Male',
    'PayPal',
    5
);

INSERT INTO customers (
    first_name,
    last_name,
    email,
    customer_id,
    age,
    gender,
    payment_mode,
    address_id
) VALUES (
    'Anjali',
    'Gupta',
    'anjali.gupta@example.com',
    16,
    27,
    'Female',
    'Credit Card',
    6
);

INSERT INTO customers (
    first_name,
    last_name,
    email,
    customer_id,
    age,
    gender,
    payment_mode,
    address_id
) VALUES (
    'Vishal',
    'Yadav',
    'vishal.yadav@example.com',
    17,
    31,
    'Male',
    'Credit Card',
    7
);

INSERT INTO customers (
    first_name,
    last_name,
    email,
    customer_id,
    age,
    gender,
    payment_mode,
    address_id
) VALUES (
    'Sakshi',
    'Mishra',
    'sakshi.mishra@example.com',
    18,
    26,
    'Female',
    'Cash',
    8
);

INSERT INTO customers (
    first_name,
    last_name,
    email,
    customer_id,
    age,
    gender,
    payment_mode,
    address_id
) VALUES (
    'Ananya',
    'Shukla',
    'ananya.shukla@example.com',
    20,
    30,
    'Female',
    'Credit Card',
    10
);

INSERT INTO category (
    category_name,
    category_description
) VALUES (
    'Clothing',
    'Indian Clothing and Apparel'
);

INSERT INTO category (
    category_name,
    category_description
) VALUES (
    'Electronics',
    'Indian Electronics and Gadgets'
);

INSERT INTO category (
    category_name,
    category_description
) VALUES (
    'Home Decor',
    'Indian Home Decor and Furnishings'
);

INSERT INTO category (
    category_name,
    category_description
) VALUES (
    'Food',
    'Indian Food and Groceries'
);

INSERT INTO category (
    category_name,
    category_description
) VALUES (
    'Jewelry',
    'Indian Jewelry and Accessories'
);

INSERT INTO category (
    category_name,
    category_description
) VALUES (
    'Furniture',
    'Indian Furniture and Furnishings'
);

INSERT INTO category (
    category_name,
    category_description
) VALUES (
    'Footwear',
    'Indian Footwear and Shoes'
);

INSERT INTO category (
    category_name,
    category_description
) VALUES (
    'Books',
    'Indian Books and Literature'
);

INSERT INTO category (
    category_name,
    category_description
) VALUES (
    'Cosmetics',
    'Indian Cosmetics and Beauty Products'
);

INSERT INTO category (
    category_name,
    category_description
) VALUES (
    'Toys',
    'Indian Toys and Games'
);

INSERT INTO products (
    product_code,
    product_name,
    product_description,
    category_name,
    product_price
) VALUES (
    'P1001',
    'Mens Cotton Shirt',
    'Comfortable and stylish',
    'Clothing',
    30
);

INSERT INTO products (
    product_code,
    product_name,
    product_description,
    category_name,
    product_price
) VALUES (
    'P1002',
    'LED Smart TV',
    '55" 4K Ultra HD',
    'Electronics',
    700
);

INSERT INTO products (
    product_code,
    product_name,
    product_description,
    category_name,
    product_price
) VALUES (
    'P1003',
    'Decorative Cushions',
    'Set of 4, Indian designs',
    'Home Decor',
    20
);

INSERT INTO products (
    product_code,
    product_name,
    product_description,
    category_name,
    product_price
) VALUES (
    'P1004',
    'Basmati Rice',
    'Premium quality',
    'Food',
    10
);

INSERT INTO products (
    product_code,
    product_name,
    product_description,
    category_name,
    product_price
) VALUES (
    'P1005',
    'Gold Plated Earrings',
    'Traditional Indian design',
    'Jewelry',
    50
);

INSERT INTO products (
    product_code,
    product_name,
    product_description,
    category_name,
    product_price
) VALUES (
    'P1006',
    'Wooden Coffee Table',
    'Handcrafted, elegant',
    'Furniture',
    150
);

INSERT INTO products (
    product_code,
    product_name,
    product_description,
    category_name,
    product_price
) VALUES (
    'P1007',
    'Leather Shoes',
    'Mens formal shoes',
    'Footwear',
    60
);

INSERT INTO products (
    product_code,
    product_name,
    product_description,
    category_name,
    product_price
) VALUES (
    'P1008',
    'Indian Literature Classics',
    'Set of 5 books',
    'Books',
    40
);

INSERT INTO products (
    product_code,
    product_name,
    product_description,
    category_name,
    product_price
) VALUES (
    'P1009',
    'Cosmetic Gift Set',
    'Makeup essentials',
    'Cosmetics',
    30
);

INSERT INTO products (
    product_code,
    product_name,
    product_description,
    category_name,
    product_price
) VALUES (
    'P1010',
    'Children Board Games',
    'Family entertainment',
    'Toys',
    20
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1001,
    'P1001',
    11,
    TO_DATE('2023-10-01', 'YYYY-MM-DD'),
    'Shipped',
    30,
    2
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1002,
    'P1002',
    12,
    TO_DATE('2023-10-02', 'YYYY-MM-DD'),
    'Processing',
    700,
    1
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1003,
    'P1003',
    13,
    TO_DATE('2023-10-03', 'YYYY-MM-DD'),
    'Delivered',
    20,
    4
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1004,
    'P1004',
    14,
    TO_DATE('2023-10-04', 'YYYY-MM-DD'),
    'Shipped',
    10,
    5
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1005,
    'P1005',
    15,
    TO_DATE('2023-10-05', 'YYYY-MM-DD'),
    'Delivered',
    50,
    2
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1006,
    'P1006',
    16,
    TO_DATE('2023-10-06', 'YYYY-MM-DD'),
    'Processing',
    150,
    1
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1007,
    'P1007',
    17,
    TO_DATE('2023-10-07', 'YYYY-MM-DD'),
    'Shipped',
    60,
    3
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1008,
    'P1008',
    18,
    TO_DATE('2023-10-08', 'YYYY-MM-DD'),
    'Delivered',
    40,
    2
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1009,
    'P1009',
    19,
    TO_DATE('2023-10-09', 'YYYY-MM-DD'),
    'Processing',
    30,
    4
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1010,
    'P1010',
    20,
    TO_DATE('2023-10-10', 'YYYY-MM-DD'),
    'Shipped',
    20,
    3
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1011,
    'P1001',
    13,
    TO_DATE('2023-10-11', 'YYYY-MM-DD'),
    'Processing',
    30,
    1
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1011,
    'P1002',
    13,
    TO_DATE('2023-10-11', 'YYYY-MM-DD'),
    'Processing',
    700,
    1
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1011,
    'P1003',
    13,
    TO_DATE('2023-10-11', 'YYYY-MM-DD'),
    'Processing',
    20,
    1
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1012,
    'P1002',
    14,
    TO_DATE('2023-10-12', 'YYYY-MM-DD'),
    'Delivered',
    700,
    2
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1012,
    'P1003',
    14,
    TO_DATE('2023-10-12', 'YYYY-MM-DD'),
    'Delivered',
    20,
    1
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1013,
    'P1001',
    15,
    TO_DATE('2023-10-13', 'YYYY-MM-DD'),
    'Shipped',
    30,
    2
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1013,
    'P1002',
    15,
    TO_DATE('2023-10-13', 'YYYY-MM-DD'),
    'Shipped',
    700,
    1
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1014,
    'P1001',
    16,
    TO_DATE('2023-10-14', 'YYYY-MM-DD'),
    'Processing',
    30,
    1
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1014,
    'P1003',
    16,
    TO_DATE('2023-10-14', 'YYYY-MM-DD'),
    'Processing',
    20,
    1
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1015,
    'P1004',
    16,
    TO_DATE('2023-10-15', 'YYYY-MM-DD'),
    'Processing',
    10,
    1
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    1015,
    'P1005',
    16,
    TO_DATE('2023-10-15', 'YYYY-MM-DD'),
    'Processing',
    50,
    1
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    211,
    'P1001',
    11,
    TO_DATE('2023-03-15', 'YYYY-MM-DD'),
    'Shipped',
    30.00,
    2
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    212,
    'P1002',
    12,
    TO_DATE('2023-04-10', 'YYYY-MM-DD'),
    'Delivered',
    40.00,
    3
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    213,
    'P1003',
    13,
    TO_DATE('2023-05-20', 'YYYY-MM-DD'),
    'Shipped',
    35.00,
    4
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    214,
    'P1004',
    14,
    TO_DATE('2023-06-08', 'YYYY-MM-DD'),
    'Delivered',
    50.00,
    2
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    215,
    'P1005',
    15,
    TO_DATE('2023-07-14', 'YYYY-MM-DD'),
    'Shipped',
    45.00,
    3
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    216,
    'P1001',
    16,
    TO_DATE('2023-08-01', 'YYYY-MM-DD'),
    'Delivered',
    30.00,
    2
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    217,
    'P1002',
    17,
    TO_DATE('2023-09-22', 'YYYY-MM-DD'),
    'Shipped',
    40.00,
    3
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    218,
    'P1003',
    18,
    TO_DATE('2023-10-05', 'YYYY-MM-DD'),
    'Delivered',
    35.00,
    4
);

INSERT INTO orders (
    order_number,
    product_code,
    customer_id,
    order_date,
    order_status,
    product_price,
    product_quantity
) VALUES (
    220,
    'P1005',
    20,
    TO_DATE('2023-12-28', 'YYYY-MM-DD'),
    'Delivered',
    45.00,
    3
);

INSERT INTO stores (
    store_code,
    store_name,
    location
) VALUES (
    1,
    'Fashion Bazaar',
    'Mumbai'
);

INSERT INTO stores (
    store_code,
    store_name,
    location
) VALUES (
    2,
    'Electro Haven',
    'Delhi'
);

INSERT INTO stores (
    store_code,
    store_name,
    location
) VALUES (
    3,
    'Home Mart',
    'Bangalore'
);

INSERT INTO stores (
    store_code,
    store_name,
    location
) VALUES (
    4,
    'Grocery World',
    'Chennai'
);

INSERT INTO stores (
    store_code,
    store_name,
    location
) VALUES (
    5,
    'Jewel Emporium',
    'Kolkata'
);

INSERT INTO stores (
    store_code,
    store_name,
    location
) VALUES (
    6,
    'Furniture Palace',
    'Hyderabad'
);

INSERT INTO stores (
    store_code,
    store_name,
    location
) VALUES (
    7,
    'Shoe Galaxy',
    'Pune'
);

INSERT INTO stores (
    store_code,
    store_name,
    location
) VALUES (
    8,
    'Book Nook',
    'Ahmedabad'
);

INSERT INTO stores (
    store_code,
    store_name,
    location
) VALUES (
    9,
    'Beauty Bliss',
    'Jaipur'
);

INSERT INTO stores (
    store_code,
    store_name,
    location
) VALUES (
    10,
    'Toys R Us',
    'Lucknow'
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    1,
    'P1001',
    50,
    1
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    2,
    'P1002',
    30,
    2
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    3,
    'P1003',
    75,
    3
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    4,
    'P1004',
    100,
    4
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    5,
    'P1005',
    40,
    5
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    6,
    'P1006',
    25,
    6
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    7,
    'P1007',
    60,
    7
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    8,
    'P1008',
    20,
    8
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    9,
    'P1009',
    55,
    9
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    10,
    'P1010',
    45,
    10
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    11,
    'P1001',
    40,
    1
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    12,
    'P1003',
    60,
    2
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    13,
    'P1004',
    80,
    3
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    14,
    'P1006',
    35,
    4
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    15,
    'P1007',
    70,
    5
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    16,
    'P1008',
    30,
    6
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    17,
    'P1009',
    65,
    7
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    18,
    'P1010',
    55,
    8
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    19,
    'P1002',
    45,
    9
);

INSERT INTO inventory (
    stock_code,
    product_code,
    stock_quantity,
    store_code
) VALUES (
    20,
    'P1005',
    50,
    10
);

INSERT INTO sales_agents (
    agent_id,
    first_name,
    last_name,
    store_code
) VALUES (
    1,
    'Abhishek',
    'Rabde',
    1
);

INSERT INTO sales_agents (
    agent_id,
    first_name,
    last_name,
    store_code
) VALUES (
    2,
    'Anuj',
    'Zanwar',
    2
);

INSERT INTO sales_agents (
    agent_id,
    first_name,
    last_name,
    store_code
) VALUES (
    3,
    'Raunak',
    'Khandelwal',
    3
);

INSERT INTO sales_agents (
    agent_id,
    first_name,
    last_name,
    store_code
) VALUES (
    4,
    'Sumit',
    'Chougule',
    4
);

INSERT INTO sales_agents (
    agent_id,
    first_name,
    last_name,
    store_code
) VALUES (
    5,
    'Rohit',
    'Virani',
    5
);

INSERT INTO sales_agents (
    agent_id,
    first_name,
    last_name,
    store_code
) VALUES (
    6,
    'Satyam',
    'Bansal',
    1
);

INSERT INTO sales_agents (
    agent_id,
    first_name,
    last_name,
    store_code
) VALUES (
    7,
    'Pranjal',
    'Singh',
    2
);

INSERT INTO sales_agents (
    agent_id,
    first_name,
    last_name,
    store_code
) VALUES (
    8,
    'Sagnik',
    'Ghosh',
    4
);