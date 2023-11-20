# 插入常用的类目
INSERT INTO formula_category 
    (category_name)
VALUES 
    ('会计学'),
    ('流体力学'),
    ('传热学'),
    ('工程计算'),
    ('其他');

INSERT INTO formula_param 
    (param_name,
    param_description,
    param_value,
    param_unit)
VALUES
    ('v','velocity,速度','','m/s'),
    ('Q_{V}','Volume Flux,体积流量','','m^3/s'),
    ('S','Cross Section Area,横截面积','','m^2'),
    ('d','Diameter,直径','','m'),
    ('pi','圆周率','3.14159265359','')
;

# 事务——插入一条数据
START TRANSACTION;
    # 向formula_category表中插入一条数据
    INSERT INTO formula_category (
        category_name)
    VALUES 
        ('工程计算'),
        ('会计学'),
        ('流体力学'),
        ('传热学');

    # 向formula_main表中插入一条数据
    INSERT INTO formula_main 
        (formula_name, format_latex, format_excel, description, example_usage)
    VALUES 
        ('根据流量与管径计算流速', 'v= \\frac{Q_{V}}{S} = \\frac{Q_{V}}{\\frac{1}{4} \\pi d^{2}}', '=(Volume_FLux)/(3600/(0.25*pi()*(Diameter)^2)/1000000)', '根据体积流量、管道直径计算管内流速。', '无');

    # 指定其类目
    INSERT INTO formula_category_relation 
        (formula_id,formula_category_id)
    VALUES
        (1, 4);

    # 指定其用到的参数
    INSERT INTO formula_param_relation 
        (formula_id,formula_param_id)
    VALUES 
        (1, 1),
        (1, 2),
        (1, 3),
        (1, 4),
        (1, 5);

-- 提交事务
COMMIT;