DROP TABLE IF EXISTS categories;
CREATE TABLE categories(
    category_major_cd    VARCHAR(2) NOT NULL,
    category_major_name  VARCHAR(32) DEFAULT NULL,
    category_medium_cd   VARCHAR(4) DEFAULT NULL,
    category_medium_name VARCHAR(32) DEFAULT NULL,
    category_small_cd    VARCHAR(6) DEFAULT NULL,
    category_small_name  VARCHAR(32) DEFAULT NULL,
    PRIMARY KEY (category_small_cd)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
    customer_id          VARCHAR(14) NOT NULL,
    customer_name        VARCHAR(20) DEFAULT NULL,
    gender_cd            VARCHAR(1) DEFAULT NULL,
    gender               VARCHAR(2) DEFAULT NULL,
    birth_day            DATE DEFAULT NULL,
    age                  INTEGER DEFAULT NULL,
    postal_cd            VARCHAR(8) DEFAULT NULL,
    address              VARCHAR(128) DEFAULT NULL,
    application_store_cd VARCHAR(6) DEFAULT NULL,
    application_date     VARCHAR(8) DEFAULT NULL,
    status_cd            VARCHAR(12) DEFAULT NULL,
    PRIMARY KEY (customer_id)
);

DROP TABLE IF EXISTS geocodes;
CREATE TABLE geocodes(
    postal_cd    VARCHAR(8) DEFAULT NULL,
    prefecture   VARCHAR(4) DEFAULT NULL,
    city         VARCHAR(30) DEFAULT NULL,
    town         VARCHAR(30) DEFAULT NULL,
    street       VARCHAR(30) DEFAULT NULL,
    address      VARCHAR(30) DEFAULT NULL,
    full_address VARCHAR(80) DEFAULT NULL,
    longitude    NUMERIC DEFAULT NULL,
    latitude     NUMERIC DEFAULT NULL
);

DROP TABLE IF EXISTS products;
CREATE TABLE products(
    product_cd         VARCHAR(10) NOT NULL,
    category_major_cd  VARCHAR(2) DEFAULT NULL,
    category_medium_cd VARCHAR(4) DEFAULT NULL,
    category_small_cd  VARCHAR(6) DEFAULT NULL,
    unit_price         INTEGER DEFAULT NULL,
    unit_cost          INTEGER DEFAULT NULL,
    PRIMARY KEY (product_cd)
);

DROP TABLE IF EXISTS receipts;
CREATE TABLE receipts(
    sales_ymd      INTEGER NOT NULL,
    sales_epoch    INTEGER DEFAULT NULL,
    store_cd       VARCHAR(6) NOT NULL,
    receipt_no     SMALLINT NOT NULL,
    receipt_sub_no SMALLINT NOT NULL,
    customer_id    VARCHAR(14) DEFAULT NULL,
    product_cd     VARCHAR(10) DEFAULT NULL,
    quantity       INTEGER DEFAULT NULL,
    amount         INTEGER DEFAULT NULL,
    PRIMARY KEY (sales_ymd, store_cd, receipt_no, receipt_sub_no)
);

DROP TABLE IF EXISTS stores;
CREATE TABLE stores(
    store_cd      VARCHAR(6) NOT NULL,
    store_name    VARCHAR(128) DEFAULT NULL,
    prefecture_cd VARCHAR(2) DEFAULT NULL,
    prefecture    VARCHAR(5) DEFAULT NULL,
    address       VARCHAR(128) DEFAULT NULL,
    address_kana  VARCHAR(128) DEFAULT NULL,
    tel_no        VARCHAR(20) DEFAULT NULL,
    longitude     NUMERIC DEFAULT NULL,
    latitude      NUMERIC DEFAULT NULL,
    floor_area    NUMERIC DEFAULT NULL,
    PRIMARY KEY (store_cd)
);
