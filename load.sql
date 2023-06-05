load data local
infile './data/category.csv'
into table
    categories
fields
    terminated by ','
lines
    terminated by '\r\n'
ignore 1 lines
set
    category_major_cd = nullif(category_major_cd, ''),
    category_major_name = nullif(category_major_name, ''),
    category_medium_cd = nullif(category_medium_cd, ''),
    category_medium_name = nullif(category_medium_name, ''),
    category_small_cd = nullif(category_small_cd, ''),
    category_small_name = nullif(category_small_name, '');

load data local
infile './data/customer.csv'
into table
    customers
fields
    terminated by ','
ignore 1 lines
set
    customer_id = nullif(customer_id, ''),
    customer_name = nullif(customer_name, ''),
    gender_cd = nullif(gender_cd, ''),
    gender = nullif(gender, ''),
    birth_day = nullif(birth_day, '0000-00-00'),
    age = nullif(age, 0),
    postal_cd = nullif(postal_cd, ''),
    address = nullif(address, ''),
    application_store_cd = nullif(application_store_cd, ''),
    application_date = nullif(application_date, ''),
    status_cd = nullif(status_cd, '');

load data local
infile './data/geocode.csv'
into table
    geocodes
fields
    terminated by ','
ignore 1 lines
set
    postal_cd = nullif(postal_cd, ''),
    prefecture = nullif(prefecture, ''),
    city = nullif(city, ''),
    town = nullif(town, ''),
    street = nullif(street, ''),
    address = nullif(address, ''),
    full_address = nullif(full_address, ''),
    longitude = nullif(longitude, 0),
    latitude = nullif(latitude, 0);

load data local
infile './data/product.csv'
into table
    products
fields
    terminated by ','
ignore 1 lines
set
    product_cd = nullif(product_cd, ''),
    category_major_cd = nullif(category_major_cd, ''),
    category_medium_cd = nullif(category_medium_cd, ''),
    category_small_cd = nullif(category_small_cd, ''),
    unit_price = nullif(unit_price, 0),
    unit_cost = nullif(unit_cost, 0);

load data local
infile './data/receipt.csv'
into table
    receipts
fields
    terminated by ','
ignore 1 lines
set
    sales_ymd = nullif(sales_ymd, 0),
    sales_epoch = nullif(sales_epoch, 0),
    store_cd = nullif(store_cd, ''),
    receipt_no = nullif(receipt_no, 0),
    receipt_sub_no = nullif(receipt_sub_no, 0),
    customer_id = nullif(customer_id, ''),
    product_cd = nullif(product_cd, ''),
    quantity = nullif(quantity, 0),
    amount = nullif(amount, 0);

load data local
infile './data/store.csv'
into table
    stores
fields
    terminated by ','
ignore 1 lines
set
    store_cd = nullif(store_cd, ''),
    store_name = nullif(store_name, ''),
    prefecture_cd = nullif(prefecture_cd, ''),
    prefecture = nullif(prefecture, ''),
    address = nullif(address, ''),
    address_kana = nullif(address_kana, ''),
    tel_no = nullif(tel_no, ''),
    longitude = nullif(longitude, 0),
    latitude = nullif(latitude, 0),
    floor_area = nullif(floor_area, 0);
