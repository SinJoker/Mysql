# 显示所有的数据库
SHOW DATABASES;

# 显示当前数据库的编码
SHOW VARIABLES LIKE 'character%';

# 新建库数据（如果不存在）
CREATE DATABASE IF NOT EXISTS test;

# 删除库数据（如果存在）
DROP DATABASE IF EXISTS test;

# 显示当前数据库
SELECT DATABASE();

# 切换数据库
USE section_steel_contour;

# 显示当前数据库的所有表
SHOW TABLES;

# 显示当前数据库的所有表结构
SHOW CREATE TABLE test;

# 新建表
CREATE TABLE IF NOT EXISTS test(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20)
);

# 删除表
DROP TABLE IF EXISTS test;

# 显示表结构
DESC test;

# 插入数据
INSERT INTO test(name) VALUES('张三');
INSERT INTO test(name) VALUES('李四');

#修改数据
UPDATE test SET name='王五' WHERE id=1;

# 删除数据
DELETE FROM test WHERE id=1;

# 查询数据
SELECT * FROM test;

