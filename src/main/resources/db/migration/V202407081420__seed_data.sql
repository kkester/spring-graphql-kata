INSERT INTO CATALOG (CATALOG_ID, NAME, DESCRIPTION, START_DATE, END_DATE, CREATED_DATE)
VALUES (1, 'sears', 'Sears Roebuck', '2024-01-01', '2025-01-01', current_timestamp);

INSERT INTO CATALOG (CATALOG_ID, NAME, DESCRIPTION, START_DATE, END_DATE, CREATED_DATE)
VALUES (2, 'cabellas', 'Cabellas', '2024-01-01', '2025-01-01', current_timestamp);

INSERT INTO CATALOG (CATALOG_ID, NAME, DESCRIPTION, START_DATE, END_DATE, CREATED_DATE)
VALUES (3, 'jcpenny', 'JC Pennys', '2024-01-01', '2025-01-01', current_timestamp);

INSERT INTO CATEGORY (CATEGORY_ID, NAME, DISPLAY_TEXT, CREATED_DATE)
VALUES (1, 'home', 'Home Goods', current_timestamp);

INSERT INTO CATEGORY (CATEGORY_ID, NAME, DISPLAY_TEXT, CREATED_DATE)
VALUES (2, 'sporting', 'Sporting Goods', current_timestamp);

INSERT INTO CATEGORY (CATEGORY_ID, NAME, DISPLAY_TEXT, CREATED_DATE)
VALUES (3, 'electronics', 'Electronics', current_timestamp);

INSERT INTO PRODUCT (PRODUCT_ID, NAME, DESCRIPTION, SKU, CREATED_DATE, CATEGORY_ID)
VALUES (1, 'Coffee Mug', 'This is a description of Coffee Mug', 'abc-123', current_timestamp, 1);

INSERT INTO PRODUCT (PRODUCT_ID, NAME, DESCRIPTION, SKU, CREATED_DATE, CATEGORY_ID)
VALUES (2, 'Toothpicks', 'This is a description of Toothpicks', 'cba-321', current_timestamp, 2);

INSERT INTO PRODUCT (PRODUCT_ID, NAME, DESCRIPTION, SKU, CREATED_DATE, CATEGORY_ID)
VALUES (3, 'Umbrella', 'This is a description of Umbrella', 'acb-132', current_timestamp, 3);

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