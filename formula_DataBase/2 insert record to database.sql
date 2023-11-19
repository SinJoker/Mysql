<<<<<<< HEAD
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
=======
>>>>>>> c8d38f93776f71d307729083e4208a65739adab5

# 事务——插入一条数据

    # 向formula_category表中插入一条数据
    INSERT INTO formula_category (
        category_name)
    VALUES 
        ('工程计算'),
        ('会计学'),
        ('流体力学'),
        ('传热学');

<<<<<<< HEAD
    # 向formula_main表中插入一条数据
    INSERT INTO formula_main (formula_name, format_latex, format_excel, description, example_usage)
    VALUES ('根据流量与管径计算流速', 'v= \\frac{Q_{V}}{S} = \\frac{Q_{V}}{\\frac{1}{4} \\pi d^{2}}', '=(Volume_FLux)/(3600/(0.25*pi()*(Diameter)^2)/1000000)', '根据体积流量、管道直径计算管内流速。', '无');

    # 指定其类目
    INSERT INTO formula_category_relation (formula_id,formula_category_id)
    VALUES
     (1, 4);

    # 指定其用到的参数
    INSERT INTO formula_param_relation (formula_id,formula_param_id)
    VALUES 
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5);

-- 提交事务
COMMIT;
=======
    -- 向formula_main表中插入一条数据
    INSERT INTO formula_main (
        formula_name, 
        format_latex, 
        format_excel, 
        description, 
        example_usage)
    VALUES
        ('介质流速','V=\\frac{Q}{S} =\\frac{Q}{\\frac{1}{4} \\cdot  \\pi \\cdot d^2}','=流量/(0.5*pi()*直径^2)/3600*1000000','通过气体流量（立方每小时）与通道直径（毫米）计算流体流速','1/0.25*pi()*100^2/3600*1000000');

    INSERT INTO formula_category_relation
    (formula_id,
    category_id)
    VALUES
    (1,1)
    ;

    -- 向formula_param表中插入一条数据
    INSERT INTO formula_param (
        formula_id,
        param_name, 
        description,
        param_value)
    VALUES 
    (1,'V','速度，单位：米每秒', 27), 
    (1,'Q','燃气流量，单位：立方米每小时', 27),
    (1,'S','管道面积，单位：平方米', 27),
    (1,'d','管道直径，单位：毫米', 27);
>>>>>>> c8d38f93776f71d307729083e4208a65739adab5
