
# 事务——插入一条数据

    # 向formula_category表中插入一条数据
    INSERT INTO formula_category (
        category_name)
    VALUES 
        ('工程计算'),
        ('会计学'),
        ('流体力学'),
        ('传热学');

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