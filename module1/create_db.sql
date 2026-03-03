TRUNCATE products, users, categories, suppliers, orders, clients 
RESTART IDENTITY CASCADE;

INSERT INTO categories (name) VALUES 
('Женская обувь'), ('Мужская обувь')
ON CONFLICT (name) DO NOTHING;

INSERT INTO suppliers (name) VALUES 
('Kari'), ('Обувь для вас') 
ON CONFLICT (name) DO NOTHING;

INSERT INTO users (full_name, login, password, role) VALUES
('Никифорова Весения Николаевна', '94d5ous@gmail.com', 'uzWC67', 'администратор'),
('Сазонов Руслан Германович', 'uth4iz@mail.com', '2L6KZG', 'администратор'),
('Степанов Михаил Артёмович', '1diph5e@tutanota.com', '8ntwUp', 'менеджер'),
('Михайлюк Анна Вячеславовна', '5d4zbu@tutanota.com', 'rwVDh9', 'авторизованный_клиент'),
('Гость системы', 'guest', 'guest', 'гость');

INSERT INTO products (article, name, id_category, id_supplier, price, stock_quantity, discount, description) VALUES
('A112T4', 'Ботинки Kari женские', 1, 1, 4990.00, 6, 3, 'Демисезонные'),
('F635R4', 'Ботинки Marco Tozzi', 1, 2, 3244.00, 13, 2, 'Размер 39 бежевые'),
('H782T5', 'Туфли Kari мужские', 2, 1, 4499.00, 5, 4, 'Классика черные'),
('G783F5', 'Ботинки Рос', 2, 1, 5900.00, 8, 2, 'Кожа+мех'),
('J384T6', 'Rieker мужские', 2, 2, 3800.00, 16, 2, 'Полуботинки'),
('D572U8', 'Кроссовки Рос', 2, 2, 4100.00, 0, 3, 'Нет на складе'), -- ГОЛУБОЙ
('X999Z9', 'Супер скидка!', 1, 1, 999.00, 3, 25, 'Женские туфли'), -- ЗЕЛЕНЫЙ
('Y888Y8', 'Ботинки зимние', 1, 2, 12000.00, 2, 18, 'Скидка 18%'), -- ЗЕЛЕНЫЙ
('Z777Z7', 'Тапочки', 2, 1, 500.00, 0, 13, 'Мужские'), -- ГОЛУБОЙ+ЗЕЛЕНЫЙ
('W666W6', 'Кроссовки', 2, 2, 5500.00, 9, 20, 'Скидка 20%'); -- ЗЕЛЕНЫЙ

SELECT 'products' AS таблица, COUNT(*) AS количество FROM products
UNION ALL 
SELECT 'users', COUNT(*) FROM users
UNION ALL 
SELECT 'categories', COUNT(*) FROM categories
UNION ALL 
SELECT 'suppliers', COUNT(*) FROM suppliers;