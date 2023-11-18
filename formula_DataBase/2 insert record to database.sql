# 插入常用的类目
INSERT INTO formula_category (category_name)
    VALUES ('会计学'),('流体力学'),('传热学'),('工程计算'),('其他');


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