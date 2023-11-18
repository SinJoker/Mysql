# 创建新数据库（如果不存在）
CREATE DATABASE IF NOT EXISTS formula;

# 使用数据库；
USE formula;

# 创建公式类目表 formula_category
CREATE TABLE IF NOT EXISTS formula_category (
 category_id INT AUTO_INCREMENT PRIMARY KEY,
 category_name VARCHAR(255) UNIQUE
);

# 创建主表 formula_main
CREATE TABLE IF NOT EXISTS formula_main (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(255) NOT NULL UNIQUE,
 format_latex VARCHAR(255) NOT NULL UNIQUE,
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

