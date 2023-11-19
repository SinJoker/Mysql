# 查看表
SHOW TABLES; 

# 查看表结构
SHOW COLUMNS FROM formula_main;
SHOW COLUMNS FROM formula_category;
SHOW COLUMNS FROM formula_category_relation;
SHOW COLUMNS FROM formula_main_relation;
SHOW COLUMNS FROM formula_param;

# 查看表中数据
SELECT * FROM formula_category ORDER BY category_id;

# 查看表中数据
SELECT * FROM formula_main;
SELECT * FROM formula_category ORDER BY category_id;
SELECT * FROM formula_param;
SELECT * FROM formula_category_relation;
SELECT * FROM formula_main_relation;