CREATE TABLE item(
    id INT PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    category VARCHAR2(50) NOT NULL,
    price INT NOT NULL
);

-- DROP table ORDERS;
CREATE TABLE orders(
    id INT PRIMARY KEY,
    item_id INT REFERENCES item(id),
    quantity INT NOT NULL,
    order_date DATE NOT NULL
);

-- Data for the 'item' table
INSERT INTO item (id, name, category, price) VALUES (1, 'Smartphone', 'Electronics', 799);
INSERT INTO item (id, name, category, price) VALUES (2, 'Laptop', 'Electronics', 1200);
INSERT INTO item (id, name, category, price) VALUES (3, 'Wireless Headphones', 'Electronics', 150);
INSERT INTO item (id, name, category, price) VALUES (4, 'Smartwatch', 'Electronics', 250);
INSERT INTO item (id, name, category, price) VALUES (5, 'Gaming Mouse', 'Gaming', 75);
INSERT INTO item (id, name, category, price) VALUES (6, 'Mechanical Keyboard', 'Gaming', 120);
INSERT INTO item (id, name, category, price) VALUES (7, 'Gaming Monitor', 'Gaming', 300);
INSERT INTO item (id, name, category, price) VALUES (8, 'External Hard Drive', 'Electronics', 90);
INSERT INTO item (id, name, category, price) VALUES (9, 'Webcam', 'Electronics', 60);
INSERT INTO item (id, name, category, price) VALUES (10, 'Router', 'Electronics', 80);
INSERT INTO item (id, name, category, price) VALUES (11, 'Coffee Maker', 'Kitchenware', 85);
INSERT INTO item (id, name, category, price) VALUES (12, 'Blender', 'Kitchenware', 55);
INSERT INTO item (id, name, category, price) VALUES (13, 'Air Fryer', 'Kitchenware', 100);
INSERT INTO item (id, name, category, price) VALUES (14, 'Robot Vacuum', 'Home Appliances', 350);
INSERT INTO item (id, name, category, price) VALUES (15, 'Smart Thermostat', 'Home Appliances', 200);
INSERT INTO item (id, name, category, price) VALUES (16, 'Digital Camera', 'Electronics', 600);
INSERT INTO item (id, name, category, price) VALUES (17, 'Tablet', 'Electronics', 450);
INSERT INTO item (id, name, category, price) VALUES (18, 'Drone', 'Gaming', 400);
INSERT INTO item (id, name, category, price) VALUES (19, 'Electric Toothbrush', 'Personal Care', 65);
INSERT INTO item (id, name, category, price) VALUES (20, 'Smart Scale', 'Personal Care', 40);

-- Data for the 'orders' table
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (101, 1, 10, TO_DATE('2022-03-22', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (102, 2, 14, TO_DATE('2021-08-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (103, 3, 6, TO_DATE('2020-04-18', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (104, 4, 1, TO_DATE('2023-01-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (105, 5, 20, TO_DATE('2021-07-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (106, 6, 16, TO_DATE('2020-11-09', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (107, 7, 4, TO_DATE('2022-05-14', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (108, 8, 13, TO_DATE('2023-09-01', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (109, 9, 10, TO_DATE('2021-12-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (110, 10, 8, TO_DATE('2020-02-04', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (111, 11, 12, TO_DATE('2022-06-19', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (112, 12, 2, TO_DATE('2023-08-03', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (113, 13, 15, TO_DATE('2021-01-11', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (114, 14, 17, TO_DATE('2020-06-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (115, 15, 7, TO_DATE('2022-10-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (116, 16, 11, TO_DATE('2023-04-29', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (117, 17, 5, TO_DATE('2021-09-17', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (118, 18, 14, TO_DATE('2020-10-02', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (119, 19, 9, TO_DATE('2022-07-21', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (120, 20, 6, TO_DATE('2023-02-14', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (121, 19, 20, TO_DATE('2022-05-14', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (122, 18, 1, TO_DATE('2023-07-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (123, 1, 14, TO_DATE('2021-08-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (124, 16, 18, TO_DATE('2020-09-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (125, 1, 12, TO_DATE('2022-11-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (126, 7, 5, TO_DATE('2023-04-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (127, 2, 8, TO_DATE('2021-06-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (128, 1, 11, TO_DATE('2020-09-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (129, 12, 19, TO_DATE('2022-04-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (130, 19, 3, TO_DATE('2023-01-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (131, 11, 13, TO_DATE('2021-02-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (132, 15, 6, TO_DATE('2020-07-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (133, 16, 17, TO_DATE('2022-10-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (134, 18, 9, TO_DATE('2023-05-18', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (135, 12, 2, TO_DATE('2021-09-01', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (136, 14, 11, TO_DATE('2020-12-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (137, 13, 15, TO_DATE('2022-06-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (138, 1, 10, TO_DATE('2023-08-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (139, 10, 8, TO_DATE('2021-01-18', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (140, 17, 12, TO_DATE('2020-04-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (141, 1, 4, TO_DATE('2022-11-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (142, 1, 13, TO_DATE('2023-07-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (143, 16, 10, TO_DATE('2021-08-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (144, 15, 8, TO_DATE('2020-10-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (145, 1, 12, TO_DATE('2022-03-30', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (146, 10, 2, TO_DATE('2023-01-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (147, 1, 15, TO_DATE('2021-05-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (148, 1, 17, TO_DATE('2020-09-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (149, 1, 7, TO_DATE('2022-12-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (150, 1, 11, TO_DATE('2023-07-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (151, 15, 5, TO_DATE('2021-06-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (152, 1, 14, TO_DATE('2020-11-09', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (153, 11, 9, TO_DATE('2022-02-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (154, 16, 6, TO_DATE('2023-04-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (155, 17, 1, TO_DATE('2021-11-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (156, 18, 20, TO_DATE('2020-03-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (157, 19, 16, TO_DATE('2022-09-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (158, 20, 4, TO_DATE('2023-06-12', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (159, 1, 13, TO_DATE('2021-07-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (160, 2, 10, TO_DATE('2020-01-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (161, 3, 8, TO_DATE('2022-10-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (162, 4, 12, TO_DATE('2023-05-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (163, 5, 2, TO_DATE('2021-05-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (164, 6, 15, TO_DATE('2020-08-18', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (165, 7, 17, TO_DATE('2022-11-01', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (166, 8, 7, TO_DATE('2023-08-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (167, 9, 11, TO_DATE('2021-04-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (168, 10, 5, TO_DATE('2020-05-29', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (169, 11, 14, TO_DATE('2022-09-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (170, 12, 9, TO_DATE('2023-03-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (171, 13, 6, TO_DATE('2021-10-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (172, 14, 1, TO_DATE('2020-01-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (173, 15, 20, TO_DATE('2022-08-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (174, 16, 16, TO_DATE('2023-04-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (175, 17, 4, TO_DATE('2021-06-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (176, 18, 13, TO_DATE('2020-09-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (177, 19, 10, TO_DATE('2022-04-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (178, 20, 8, TO_DATE('2023-01-30', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (179, 1, 12, TO_DATE('2021-03-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (180, 2, 2, TO_DATE('2020-07-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (181, 3, 15, TO_DATE('2022-10-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (182, 4, 17, TO_DATE('2023-05-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (183, 5, 7, TO_DATE('2021-09-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (184, 6, 11, TO_DATE('2020-12-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (185, 7, 5, TO_DATE('2022-06-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (186, 8, 14, TO_DATE('2023-08-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (187, 9, 9, TO_DATE('2021-01-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (188, 10, 6, TO_DATE('2020-04-01', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (189, 11, 1, TO_DATE('2022-11-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (190, 12, 20, TO_DATE('2023-07-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (191, 13, 16, TO_DATE('2021-08-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (192, 14, 4, TO_DATE('2020-10-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (193, 15, 13, TO_DATE('2022-03-18', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (194, 16, 10, TO_DATE('2023-01-13', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (195, 17, 8, TO_DATE('2021-05-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (196, 18, 12, TO_DATE('2020-09-01', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (197, 19, 2, TO_DATE('2022-12-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (198, 20, 15, TO_DATE('2023-07-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (199, 1, 17, TO_DATE('2021-03-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (200, 2, 7, TO_DATE('2020-01-18', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (201, 3, 11, TO_DATE('2022-05-01', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (202, 4, 5, TO_DATE('2020-09-11', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (203, 5, 14, TO_DATE('2022-12-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (204, 6, 9, TO_DATE('2023-07-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (205, 7, 6, TO_DATE('2021-06-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (206, 8, 1, TO_DATE('2020-11-04', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (207, 9, 20, TO_DATE('2022-02-09', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (208, 10, 16, TO_DATE('2023-04-12', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (209, 11, 4, TO_DATE('2021-11-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (210, 12, 13, TO_DATE('2020-03-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (211, 13, 10, TO_DATE('2022-09-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (212, 14, 8, TO_DATE('2023-06-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (213, 15, 12, TO_DATE('2021-07-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (214, 16, 2, TO_DATE('2020-01-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (215, 17, 15, TO_DATE('2022-10-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (216, 18, 17, TO_DATE('2023-05-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (217, 19, 7, TO_DATE('2021-05-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (218, 20, 11, TO_DATE('2020-08-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (219, 1, 5, TO_DATE('2022-11-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (220, 2, 14, TO_DATE('2023-08-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (221, 3, 9, TO_DATE('2021-03-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (222, 4, 6, TO_DATE('2020-05-19', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (223, 5, 1, TO_DATE('2022-09-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (224, 6, 20, TO_DATE('2023-03-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (225, 7, 16, TO_DATE('2021-10-18', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (226, 8, 4, TO_DATE('2020-02-01', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (227, 9, 13, TO_DATE('2022-08-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (228, 10, 10, TO_DATE('2023-04-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (229, 11, 8, TO_DATE('2021-06-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (230, 12, 12, TO_DATE('2020-09-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (231, 13, 2, TO_DATE('2022-04-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (232, 14, 15, TO_DATE('2023-01-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (233, 15, 17, TO_DATE('2021-02-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (234, 16, 7, TO_DATE('2020-07-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (235, 17, 11, TO_DATE('2022-10-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (236, 18, 5, TO_DATE('2023-05-18', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (237, 19, 14, TO_DATE('2021-09-01', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (238, 20, 9, TO_DATE('2020-12-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (239, 1, 6, TO_DATE('2022-06-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (240, 2, 1, TO_DATE('2023-08-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (241, 3, 20, TO_DATE('2021-01-18', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (242, 4, 16, TO_DATE('2020-04-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (243, 5, 4, TO_DATE('2022-11-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (244, 6, 13, TO_DATE('2023-07-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (245, 7, 10, TO_DATE('2021-08-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (246, 8, 8, TO_DATE('2020-10-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (247, 9, 12, TO_DATE('2022-03-30', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (248, 10, 2, TO_DATE('2023-01-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (249, 11, 15, TO_DATE('2021-05-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (250, 12, 17, TO_DATE('2020-09-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (251, 13, 7, TO_DATE('2022-12-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (252, 14, 11, TO_DATE('2023-07-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (253, 15, 5, TO_DATE('2021-06-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (254, 16, 14, TO_DATE('2020-11-09', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (255, 17, 9, TO_DATE('2022-02-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (256, 18, 6, TO_DATE('2023-04-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (257, 19, 1, TO_DATE('2021-11-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (258, 20, 20, TO_DATE('2020-03-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (259, 1, 16, TO_DATE('2022-09-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (260, 2, 4, TO_DATE('2023-06-12', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (261, 3, 13, TO_DATE('2021-07-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (262, 4, 10, TO_DATE('2020-01-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (263, 5, 8, TO_DATE('2022-10-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (264, 6, 12, TO_DATE('2023-05-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (265, 7, 2, TO_DATE('2021-05-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (266, 8, 15, TO_DATE('2020-08-18', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (267, 9, 17, TO_DATE('2022-11-01', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (268, 10, 7, TO_DATE('2023-08-28', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (269, 11, 11, TO_DATE('2021-04-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (270, 12, 5, TO_DATE('2020-05-29', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (271, 13, 14, TO_DATE('2022-09-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (272, 14, 9, TO_DATE('2023-03-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (273, 15, 6, TO_DATE('2021-10-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (274, 16, 1, TO_DATE('2020-01-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (275, 17, 20, TO_DATE('2022-08-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (276, 18, 16, TO_DATE('2023-04-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (277, 19, 4, TO_DATE('2021-06-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (278, 20, 13, TO_DATE('2020-09-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (279, 1, 10, TO_DATE('2022-04-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (280, 2, 8, TO_DATE('2023-01-30', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (281, 3, 12, TO_DATE('2021-03-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (282, 4, 2, TO_DATE('2020-07-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (283, 5, 15, TO_DATE('2022-10-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (284, 6, 17, TO_DATE('2023-05-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (285, 7, 7, TO_DATE('2021-09-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (286, 8, 11, TO_DATE('2020-12-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (287, 9, 5, TO_DATE('2022-06-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (288, 10, 14, TO_DATE('2023-08-08', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (289, 11, 9, TO_DATE('2021-01-05', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (290, 12, 6, TO_DATE('2020-04-01', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (291, 13, 1, TO_DATE('2022-11-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (292, 14, 20, TO_DATE('2023-07-15', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (293, 15, 16, TO_DATE('2021-08-10', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (294, 16, 4, TO_DATE('2020-10-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (295, 17, 13, TO_DATE('2022-03-18', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (296, 18, 10, TO_DATE('2023-01-13', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (297, 19, 8, TO_DATE('2021-05-25', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (298, 20, 12, TO_DATE('2020-09-01', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (299, 1, 2, TO_DATE('2022-12-20', 'YYYY-MM-DD'));
INSERT INTO orders (id, item_id, quantity, order_date) VALUES (300, 2, 15, TO_DATE('2023-07-10', 'YYYY-MM-DD'));

select * from item;
select * from orders;
select item_id from orders where item_id = 14;
select order_data from orders
where 
select sum(i.price) from
item i 
join 
orders o
on
i.id = o.item_id
where i.category = 'Electronics';
select category , count(*)
from item 
group by category;
select sum(quantity) from 
item i 
join 
orders o 
on 
i.id = o.item_id
where name = 'Robot Vaccum';
select  name ,max(price) from item ;