# 创建新数据库（如果不存在）
CREATE DATABASE IF NOT EXISTS formula;

SHOW DATABASES;
# 使用数据库；
USE formula;

# 创建公式类目表 formula_category
CREATE TABLE IF NOT EXISTS formula_category (
 category_id INT AUTO_INCREMENT PRIMARY KEY,
 category_name VARCHAR(255) UNIQUE
);

# 插入常用的类目
INSERT INTO formula_category (category_name)
    VALUES ('会计学'),('流体力学'),('传热学'),('工程计算'),('其他');

# 查看表中数据
SELECT * FROM formula_category ORDER BY category_id;

# 删除formula_category表
drop table IF EXISTS formula_category;


# 创建主表 formula_main
CREATE TABLE IF NOT EXISTS formula_main (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 format_latex VARCHAR(255) NOT NULL,
 format_excel VARCHAR(255),
 description TEXT,
 example_usage TEXT,
 created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


# 创建公式-类别和公式-主表之间的关联表formula_category_relation和formula_main_relation
CREATE TABLE IF NOT EXISTS formula_category_relation (
 formula_id INT NOT NULL,
 formula_category_id INT NOT NULL,
 PRIMARY KEY (formula_id, formula_category_id),
 FOREIGN KEY (formula_id) REFERENCES formula_main(formula_id),
 FOREIGN KEY (formula_category_id) REFERENCES formula_category(formula_category_id)
);

# 创建公式参数表 formula_param
CREATE TABLE IF NOT EXISTS formula_param (
 formula_param_id INT AUTO_INCREMENT PRIMARY KEY,
 formula_id INT NOT NULL,
 param_name VARCHAR(255) NOT NULL,
 # 有些参数没有固定数值，一般可以为空
 param_value DOUBLE ,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 FOREIGN KEY (formula_id) REFERENCES formula_main(formula_id)
);

CREATE TABLE IF NOT EXISTS formula_main_relation (
 formula_main_relation_id INT AUTO_INCREMENT PRIMARY KEY,
 formula_id INT ,
 formula_param_id INT ,
 FOREIGN KEY (formula_id) REFERENCES formula_main(formula_id),
 FOREIGN KEY (formula_param_id) REFERENCES formula_param(formula_param_id)
);

# 查看表
SHOW TABLES; 

# 查看表结构
SHOW COLUMNS FROM formula_main;
SHOW COLUMNS FROM formula_category;
SHOW COLUMNS FROM formula_category_relation;
SHOW COLUMNS FROM formula_main_relation;
SHOW COLUMNS FROM formula_param;

# 删除数据库（慎重）
 DROP DATABASE IF EXISTS formula;

# 事务——插入一条数据
START TRANSACTION;

    -- 向formula_main表中插入一条数据
    INSERT INTO formula_main (formula_name, formula_latex, formula_excel, description, example_usage)
    VALUES ('加法', 'a + b', '=', '这是一条加法公式的示例', '1 + 2 = 3');

    -- 向formula_category表中插入一条数据
    INSERT INTO formula_category (formula_category_name)
    VALUES ('数学');

    -- 向formula_param表中插入一条数据
    INSERT INTO formula_param (param_name, param_value)
    VALUES ('a', 10), ('b', 5);

-- 提交事务
COMMIT;

# 查看表中数据
SELECT * FROM formula_main;
SELECT * FROM formula_category;
SELECT * FROM formula_param;



