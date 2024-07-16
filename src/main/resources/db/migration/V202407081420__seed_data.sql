INSERT INTO CATALOG (CATALOG_ID, NAME, DESCRIPTION, START_DATE, END_DATE, CREATED_DATE)
VALUES (nextval('catalog_catalog_id_seq'), 'sears', 'Sears Roebuck', '2024-01-01', '2025-01-01', current_timestamp);

INSERT INTO CATALOG (CATALOG_ID, NAME, DESCRIPTION, START_DATE, END_DATE, CREATED_DATE)
VALUES (nextval('catalog_catalog_id_seq'), 'cabellas', 'Cabellas', '2024-01-01', '2025-01-01', current_timestamp);

INSERT INTO CATALOG (CATALOG_ID, NAME, DESCRIPTION, START_DATE, END_DATE, CREATED_DATE)
VALUES (nextval('catalog_catalog_id_seq'), 'jcpenny', 'JC Pennys', '2024-01-01', '2025-01-01', current_timestamp);

INSERT INTO CATEGORY (CATEGORY_ID, NAME, DISPLAY_TEXT, CREATED_DATE)
VALUES (nextval('category_category_id_seq'), 'home', 'Home Goods', current_timestamp);

INSERT INTO CATEGORY (CATEGORY_ID, NAME, DISPLAY_TEXT, CREATED_DATE)
VALUES (nextval('category_category_id_seq'), 'sporting', 'Sporting Goods', current_timestamp);

INSERT INTO CATEGORY (CATEGORY_ID, NAME, DISPLAY_TEXT, CREATED_DATE)
VALUES (nextval('category_category_id_seq'), 'electronics', 'Electronics', current_timestamp);

INSERT INTO PRODUCT (PRODUCT_ID, NAME, DESCRIPTION, SKU, CREATED_DATE, CATEGORY_ID)
VALUES (nextval('product_product_id_seq'), 'Coffee Mug', 'This is a description of Coffee Mug', 'abc-123', current_timestamp, 1);

INSERT INTO PRODUCT (PRODUCT_ID, NAME, DESCRIPTION, SKU, CREATED_DATE, CATEGORY_ID)
VALUES (nextval('product_product_id_seq'), 'Toothpicks', 'This is a description of Toothpicks', 'cba-321', current_timestamp, 2);

INSERT INTO PRODUCT (PRODUCT_ID, NAME, DESCRIPTION, SKU, CREATED_DATE, CATEGORY_ID)
VALUES (nextval('product_product_id_seq'), 'Umbrella', 'This is a description of Umbrella', 'acb-132', current_timestamp, 3);

INSERT INTO CATALOG_PRODUCT (catalog_id, product_id)
VALUES (1,1);

INSERT INTO CATALOG_PRODUCT (catalog_id, product_id)
VALUES (1,2);

INSERT INTO CATALOG_PRODUCT (catalog_id, product_id)
VALUES (2,2);

INSERT INTO CATALOG_PRODUCT (catalog_id, product_id)
VALUES (2,3);

INSERT INTO CATALOG_PRODUCT (catalog_id, product_id)
VALUES (3,1);

INSERT INTO CATALOG_PRODUCT (catalog_id, product_id)
VALUES (3,3);