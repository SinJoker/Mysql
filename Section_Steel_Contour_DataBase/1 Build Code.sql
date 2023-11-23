__ 创建新数据库（如果不存在）
CREATE DATABASE IF NOT EXISTS section_steel_contour COMMENT '型钢截面数据库';

__ 使用数据库（如果不存在）
USE section_steel_contour;

__ 创建表格hm HM型钢（如果不存在）
CREATE TABLE IF NOT EXISTS hm (
  hm_id INT AUTO_INCREMENT PRIMARY COMMENT '序号',
  hm_standard VARCHAR(255) COMMENT '标准',
  hm_specification VARCHAR(255) UNIQUE NOT NULL COMMENT '规格',
  hm_h DOUBLE NOT NULL COMMENT '高度，单位：mm',
  hm_b DOUBLE NOT NULL COMMENT '宽度，单位：mm',
  hm_t1 DOUBLE NOT NULL COMMENT '腹板厚度，单位：mm',
  hm_t2 DOUBLE NOT NULL COMMENT '翼缘厚度，单位：mm',
  hm_r DOUBLE NOT NULL COMMENT '圆角半径，单位：mm',
  hm_sc DOUBLE NOT NULL COMMENT '截面面积，单位：cm^2',
  hm_weight DOUBLE NOT NULL COMMENT '理论重量，单位：kg/m',
  hm_se DOUBLE NOT NULL COMMENT '表面积，单位：m^2/m',
  hm_ix DOUBLE NOT NULL COMMENT '惯性矩x方向，单位：cm^4',
  hm_iy DOUBLE NOT NULL COMMENT '惯性矩y方向，单位：cm^4',
  hm_rx DOUBLE NOT NULL COMMENT '惯性半径x方向，单位：cm',
  hm_ry DOUBLE NOT NULL COMMENT '惯性半径y方向，单位：cm',
  hm_wx DOUBLE NOT NULL COMMENT 截面模数x方向，单位：cm^3,
  hm_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3'
) COMMENT 'HM型钢';

CREATE TABLE IF NOT EXISTS hn(
  hn_id INT AUTO_INCREMENT PRIMARY COMMENT '序号',
  hn_standard VARCHAR(255) COMMENT '标准',
  hn_specification VARCHAR(255) UNIQUE NOT NULL COMMENT '规格',
  hn_h DOUBLE NOT NULL COMMENT '高度，单位：mm',
  hn_b DOUBLE NOT NULL COMMENT '宽度，单位：mm',
  hn_t1 DOUBLE NOT NULL COMMENT '腹板厚度，单位：mm',
  hn_t2 DOUBLE NOT NULL COMMENT '翼缘厚度，单位：mm', 
  hn_r DOUBLE NOT NULL COMMENT '圆角半径，单位：mm',
  hn_sc DOUBLE NOT NULL COMMENT '截面面积，单位：cm^2',
  hn_weight DOUBLE NOT NULL COMMENT '理论重量，单位：kg/m',
  hn_se DOUBLE NOT NULL COMMENT '表面积，单位：m^2/m',
  hn_ix DOUBLE NOT NULL COMMENT '惯性矩x方向，单位：cm^4',
  hn_iy DOUBLE NOT NULL COMMENT '惯性矩y方向，单位：cm^4',
  hn_rx DOUBLE NOT NULL COMMENT '惯性半径x方向，单位：cm',
  hn_ry DOUBLE NOT NULL COMMENT '惯性半径y方向，单位：cm',
  hn_wx DOUBLE NOT NULL COMMENT 截面模数x方向，单位：cm^3,
  hn_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3'
  ) COMMENT 'HN型钢';

CREATE TABLE IF NOT EXISTS ht(
  ht_id INT AUTO_INCREMENT PRIMARY COMMENT '序号',
  ht_standard VARCHAR(255) COMMENT '标准',
  ht_specification VARCHAR(255) UNIQUE NOT NULL COMMENT '规格',
  ht_h DOUBLE NOT NULL COMMENT '高度，单位：mm',
  ht_b DOUBLE NOT NULL COMMENT '宽度，单位：mm',
  ht_t1 DOUBLE NOT NULL COMMENT '腹板厚度，单位：mm',
  ht_t2 DOUBLE NOT NULL COMMENT '翼缘厚度，单位：mm', 
  ht_r DOUBLE NOT NULL COMMENT '圆角半径，单位：mm',
  ht_sc DOUBLE NOT NULL COMMENT '截面面积，单位：cm^2',
  ht_weight DOUBLE NOT NULL COMMENT '理论重量，单位：kg/m',
  ht_se DOUBLE NOT NULL COMMENT '表面积，单位：m^2/m',
  ht_ix DOUBLE NOT NULL COMMENT '惯性矩x方向，单位：cm^4',
  ht_iy DOUBLE NOT NULL COMMENT '惯性矩y方向，单位：cm^4',
  ht_rx DOUBLE NOT NULL COMMENT '惯性半径x方向，单位：cm',
  ht_ry DOUBLE NOT NULL COMMENT '惯性半径y方向，单位：cm',
  ht_wx DOUBLE NOT NULL COMMENT 截面模数x方向，单位：cm^3,
  ht_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3'
  ) COMMENT 'HT型钢';

CREATE TABLE IF NOT EXISTS hw(
  hw_id INT AUTO_INCREMENT PRIMARY COMMENT '序号',
  hw_standard VARCHAR(255) COMMENT '标准',
  hw_specification VARCHAR(255) UNIQUE NOT NULL COMMENT '规格',
  hw_h DOUBLE NOT NULL COMMENT '高度，单位：mm',
  hw_b DOUBLE NOT NULL COMMENT '宽度，单位：mm',
  hw_t1 DOUBLE NOT NULL COMMENT '腹板厚度，单位：mm',
  hw_t2 DOUBLE NOT NULL COMMENT '翼缘厚度，单位：mm', 
  hw_r DOUBLE NOT NULL COMMENT '圆角半径，单位：mm',
  hw_sc DOUBLE NOT NULL COMMENT '截面面积，单位：cm^2',
  hw_weight DOUBLE NOT NULL COMMENT '理论重量，单位：kg/m',
  hw_se DOUBLE NOT NULL COMMENT '表面积，单位：m^2/m',
  hw_ix DOUBLE NOT NULL COMMENT '惯性矩x方向，单位：cm^4',
  hw_iy DOUBLE NOT NULL COMMENT '惯性矩y方向，单位：cm^4',
  hw_rx DOUBLE NOT NULL COMMENT '惯性半径x方向，单位：cm',
  hw_ry DOUBLE NOT NULL COMMENT '惯性半径y方向，单位：cm',
  hw_wx DOUBLE NOT NULL COMMENT 截面模数x方向，单位：cm^3,
  hw_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3'
  ) COMMENT 'HW型钢';
