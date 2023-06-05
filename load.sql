LOAD DATA LOCAL
INFILE './data/category.csv'
INTO TABLE
    categories
FIELDS
    TERMINATED by ','
LINES
    TERMINATED by '\r\n'
IGNORE 1 LINES
SET
    category_major_cd = NULLIF(category_major_cd, ''),
    category_major_name = NULLIF(category_major_name, ''),
    category_medium_cd = NULLIF(category_medium_cd, ''),
    category_medium_name = NULLIF(category_medium_name, ''),
    category_small_cd = NULLIF(category_small_cd, ''),
    category_small_name = NULLIF(category_small_name, '');

LOAD DATA LOCAL
INFILE './data/customer.csv'
INTO TABLE
    customers
FIELDS
    TERMINATED by ','
IGNORE 1 LINES
SET
    customer_id = NULLIF(customer_id, ''),
    customer_name = NULLIF(customer_name, ''),
    gender_cd = NULLIF(gender_cd, ''),
    gender = NULLIF(gender, ''),
    birth_day = NULLIF(birth_day, '0000-00-00'),
    age = NULLIF(age, 0),
    postal_cd = NULLIF(postal_cd, ''),
    address = NULLIF(address, ''),
    application_store_cd = NULLIF(application_store_cd, ''),
    application_date = NULLIF(application_date, ''),
    status_cd = NULLIF(status_cd, '');

LOAD DATA LOCAL
INFILE './data/geocode.csv'
INTO TABLE
    geocodes
FIELDS
    TERMINATED by ','
IGNORE 1 LINES
SET
    postal_cd = NULLIF(postal_cd, ''),
    prefecture = NULLIF(prefecture, ''),
    city = NULLIF(city, ''),
    town = NULLIF(town, ''),
    street = NULLIF(street, ''),
    address = NULLIF(address, ''),
    full_address = NULLIF(full_address, ''),
    longitude = NULLIF(longitude, 0),
    latitude = NULLIF(latitude, 0);

LOAD DATA LOCAL
INFILE './data/product.csv'
INTO TABLE
    products
FIELDS
    TERMINATED by ','
IGNORE 1 LINES
SET
    product_cd = NULLIF(product_cd, ''),
    category_major_cd = NULLIF(category_major_cd, ''),
    category_medium_cd = NULLIF(category_medium_cd, ''),
    category_small_cd = NULLIF(category_small_cd, ''),
    unit_price = NULLIF(unit_price, 0),
    unit_cost = NULLIF(unit_cost, 0);

LOAD DATA LOCAL
INFILE './data/receipt.csv'
INTO TABLE
    receipts
FIELDS
    TERMINATED by ','
IGNORE 1 LINES
SET
    sales_ymd = NULLIF(sales_ymd, 0),
    sales_epoch = NULLIF(sales_epoch, 0),
    store_cd = NULLIF(store_cd, ''),
    receipt_no = NULLIF(receipt_no, 0),
    receipt_sub_no = NULLIF(receipt_sub_no, 0),
    customer_id = NULLIF(customer_id, ''),
    product_cd = NULLIF(product_cd, ''),
    quantity = NULLIF(quantity, 0),
    amount = NULLIF(amount, 0);

LOAD DATA LOCAL
INFILE './data/store.csv'
INTO TABLE
    stores
FIELDS
    TERMINATED by ','
IGNORE 1 LINES
SET
    store_cd = NULLIF(store_cd, ''),
    store_name = NULLIF(store_name, ''),
    prefecture_cd = NULLIF(prefecture_cd, ''),
    prefecture = NULLIF(prefecture, ''),
    address = NULLIF(address, ''),
    address_kana = NULLIF(address_kana, ''),
    tel_no = NULLIF(tel_no, ''),
    longitude = NULLIF(longitude, 0),
    latitude = NULLIF(latitude, 0),
    floor_area = NULLIF(floor_area, 0);
