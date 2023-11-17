# 使用mysql命令登录MySQL数据库。
mysql -u root -p

# 要查看 MySQL 数据库中所有数据库的名称
SHOW DATABASES;

# 创建一个新的数据库
CREATE DATABASE formula_database;

# 删除一个数据库
DROP DATABASE formula_database;

# 创建一个新的表，用于存放公式
USE formula_database;

CREATE TABLE formulas (
   id INT AUTO_INCREMENT PRIMARY KEY,
   formula VARCHAR(255) NOT NULL,
   description TEXT
);

# 向表中插入一些公式
INSERT INTO formulas (formula, description)
VALUES
   ('sin(x)', 'Sine of x'),
   ('cos(x)', 'Cosine of x'),
   ('tan(x)', 'Tangent of x');

# 查询表中的所有公式
SELECT * FROM formulas;

退出MySQL命令行界面
exit;

# 删除表格或者数据库，需要具有相应权限的数据库。
DROP TABLE formulas;
DROP DATABASE formula_database;