# 创建新数据库（如果不存在）
CREATE DATABASE IF NOT EXISTS formula;

# 使用数据库；
USE formula;

# 创建公式类目表 formula_category
CREATE TABLE IF NOT EXISTS formula_category (
 category_id INT AUTO_INCREMENT PRIMARY KEY,
 category_name VARCHAR(255) UNIQUE NOT NULL
);

# 创建物理量参数表 formula_param
CREATE TABLE IF NOT EXISTS formula_param (
 param_id INT AUTO_INCREMENT PRIMARY KEY,
 param_name VARCHAR(255) NOT NULL,
 description TEXT,
 # 有些参数没有固定数值，一般可以为空
 param_value DOUBLE,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
);

# 创建公式参数表 formula_param
CREATE TABLE IF NOT EXISTS formula_param (
 param_id INT AUTO_INCREMENT PRIMARY KEY,
 param_name VARCHAR(255) NOT NULL,
 # 有些参数没有固定数值，一般可以为空
 param_description TEXT,
 # 有时候不一定是数值
 param_value VARCHAR(255),
 param_unit VARCHAR(255),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

# 创建主表 formula_main
CREATE TABLE IF NOT EXISTS formula_main (
 formula_id INT AUTO_INCREMENT PRIMARY KEY,
 formula_name VARCHAR(255) NOT NULL UNIQUE,
 format_latex VARCHAR(255) NOT NULL UNIQUE,
 format_excel VARCHAR(255),
 description TEXT,
 example_usage TEXT,
 created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

# 创建公式-类别和公式-主表之间的关联表formula_category_relation和formula_param_relation
CREATE TABLE IF NOT EXISTS formula_category_relation (
 formula_id INT NOT NULL,
 category_id INT NOT NULL,
 PRIMARY KEY (formula_id, category_id),
 FOREIGN KEY (formula_id) REFERENCES formula_main(formula_id),
<<<<<<< HEAD
 FOREIGN KEY (formula_category_id) REFERENCES formula_category(category_id)
);


CREATE TABLE IF NOT EXISTS formula_param_relation (
 formula_id INT,
 formula_param_id INT ,
 PRIMARY KEY (formula_id, formula_param_id),
 FOREIGN KEY (formula_id) REFERENCES formula_main(formula_id),
 FOREIGN KEY (formula_param_id) REFERENCES formula_param(param_id)
);
=======
 FOREIGN KEY (category_id) REFERENCES formula_category(category_id)
);

CREATE TABLE IF NOT EXISTS formula_main_relation (
 formula_main_relation_id INT AUTO_INCREMENT PRIMARY KEY,
 formula_id INT,
 formula_param_id INT,
 PRIMARY KEY (formula_id, formula_param_id),
 FOREIGN KEY (formula_id) REFERENCES formula_main(formula_id),
 FOREIGN KEY (formula_param_id) REFERENCES formula_param(param_id)
);

>>>>>>> c8d38f93776f71d307729083e4208a65739adab5
