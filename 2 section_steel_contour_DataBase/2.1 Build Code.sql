-- 创建新数据库（如果不存在）
CREATE DATABASE IF NOT EXISTS section_steel_contour COMMENT "型钢截面数据库" ;
-- 使用数据库（如果不存在） 
USE section_steel_contour;

CREATE TABLE
    IF NOT EXISTS hm (
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
        hm_wx DOUBLE NOT NULL COMMENT '截面模数x方向，单位：cm^3',
        hm_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3'
    ) COMMENT 'HM型钢';

CREATE TABLE
    IF NOT EXISTS hn (
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
        hn_wx DOUBLE NOT NULL COMMENT '截面模数x方向，单位：cm^3',
        hn_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3'
    ) COMMENT 'HN型钢';

CREATE TABLE
    IF NOT EXISTS ht (
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
        ht_wx DOUBLE NOT NULL COMMENT '截面模数x方向，单位：cm^3',
        ht_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3'
    ) COMMENT 'HT型钢';

CREATE TABLE
    IF NOT EXISTS hw (
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
        hw_wx DOUBLE NOT NULL COMMENT '截面模数x方向，单位：cm^3',
        hw_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3'
    ) COMMENT 'HW型钢';

CREATE TABLE
    IF NOT EXISTS tm (
        tm_id INT AUTO_INCREMENT PRIMARY COMMENT '序号',
        tm_standard VARCHAR(255) COMMENT '标准',
        tm_specification VARCHAR(255) UNIQUE NOT NULL COMMENT '规格',
        tm_h DOUBLE NOT NULL COMMENT '高度，单位：mm',
        tm_b DOUBLE NOT NULL COMMENT '宽度，单位：mm',
        tm_t1 DOUBLE NOT NULL COMMENT '腹板厚度，单位：mm',
        tm_t2 DOUBLE NOT NULL COMMENT '翼缘厚度，单位：mm',
        tm_r DOUBLE NOT NULL COMMENT '圆角半径，单位：mm',
        tm_sc DOUBLE NOT NULL COMMENT '截面面积，单位：cm^2',
        tm_weight DOUBLE NOT NULL COMMENT '理论重量，单位：kg/m',
        tm_se DOUBLE NOT NULL COMMENT '表面积，单位：m^2/m',
        tm_ix DOUBLE NOT NULL COMMENT '惯性矩x方向，单位：cm^4',
        tm_iy DOUBLE NOT NULL COMMENT '惯性矩y方向，单位：cm^4',
        tm_rx DOUBLE NOT NULL COMMENT '惯性半径x方向，单位：cm',
        tm_ry DOUBLE NOT NULL COMMENT '惯性半径y方向，单位：cm',
        tm_wx DOUBLE NOT NULL COMMENT '截面模数x方向，单位：cm^3',
        tm_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3',
        tm_cx DOUBLE NOT NULL COMMENT '重心，单位：cm',
        tm_specification_h VARCHAR - (255) COMMENT '对应h型钢规格'
    ) COMMENT 'TM型钢';

CREATE TABLE
    IF NOT EXISTS tn (
        tn_id INT AUTO_INCREMENT PRIMARY COMMENT '序号',
        tn_standard VARCHAR(255) COMMENT '标准',
        tn_specification VARCHAR(255) UNIQUE NOT NULL COMMENT '规格',
        tn_h DOUBLE NOT NULL COMMENT '高度，单位：mm',
        tn_b DOUBLE NOT NULL COMMENT '宽度，单位：mm',
        tn_t1 DOUBLE NOT NULL COMMENT '腹板厚度，单位：mm',
        tn_t2 DOUBLE NOT NULL COMMENT '翼缘厚度，单位：mm',
        tn_r DOUBLE NOT NULL COMMENT '圆角半径，单位：mm',
        tn_sc DOUBLE NOT NULL COMMENT '截面面积，单位：cm^2',
        tn_weight DOUBLE NOT NULL COMMENT '理论重量，单位：kg/m',
        tn_se DOUBLE NOT NULL COMMENT '表面积，单位：m^2/m',
        tn_ix DOUBLE NOT NULL COMMENT '惯性矩x方向，单位：cm^4',
        tn_iy DOUBLE NOT NULL COMMENT '惯性矩y方向，单位：cm^4',
        tn_rx DOUBLE NOT NULL COMMENT '惯性半径x方向，单位：cm',
        tn_ry DOUBLE NOT NULL COMMENT '惯性半径y方向，单位：cm',
        tn_wx DOUBLE NOT NULL COMMENT '截面模数x方向，单位：cm^3',
        tn_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3',
        tn_cx DOUBLE NOT NULL COMMENT '重心，单位：cm',
        tn_specification_h VARCHAR(255) COMMENT '对应h型钢规格'
    ) COMMENT 'TN型钢';

CREATE TABLE
    IF NOT EXISTS tw (
        tw_id INT AUTO_INCREMENT PRIMARY COMMENT '序号',
        tw_standard VARCHAR(255) COMMENT '标准',
        tw_specification VARCHAR(255) UNIQUE NOT NULL COMMENT '规格',
        tw_h DOUBLE NOT NULL COMMENT '高度，单位：mm',
        tw_b DOUBLE NOT NULL COMMENT '宽度，单位：mm',
        tw_t1 DOUBLE NOT NULL COMMENT '腹板厚度，单位：mm',
        tw_t2 DOUBLE NOT NULL COMMENT '翼缘厚度，单位：mm',
        tw_r DOUBLE NOT NULL COMMENT '圆角半径，单位：mm',
        tw_sc DOUBLE NOT NULL COMMENT '截面面积，单位：cm^2',
        tw_weight DOUBLE NOT NULL COMMENT '理论重量，单位：kg/m',
        tw_se DOUBLE NOT NULL COMMENT '表面积，单位：m^2/m',
        tw_ix DOUBLE NOT NULL COMMENT '惯性矩x方向，单位：cm^4',
        tw_iy DOUBLE NOT NULL COMMENT '惯性矩y方向，单位：cm^4',
        tw_rx DOUBLE NOT NULL COMMENT '惯性半径x方向，单位：cm',
        tw_ry DOUBLE NOT NULL COMMENT '惯性半径y方向，单位：cm',
        tw_wx DOUBLE NOT NULL COMMENT '截面模数x方向，单位：cm^3',
        tw_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3',
        tw_cx DOUBLE NOT NULL COMMENT '重心，单位：cm',
        tw_specification_h VARCHAR(255) COMMENT '对应h型钢规格'
    ) COMMENT 'TW型钢';

CREATE TABLE
    IF NOT EXISTS u (
        u_id INT AUTO_INCREMENT PRIMARY COMMENT '序号',
        u_standard VARCHAR(255) COMMENT '标准',
        u_serial VARCHAR(255) COMMENT '系列号',
        u_specification VARCHAR(255) UNIQUE NOT NULL COMMENT '规格',
        u_h DOUBLE NOT NULL COMMENT '高度，单位：mm',
        u_b DOUBLE NOT NULL COMMENT '宽度，单位：mm',
        u_t1 DOUBLE NOT NULL COMMENT '腹板厚度，单位：mm',
        u_t2 DOUBLE NOT NULL COMMENT '翼缘厚度，单位：mm',
        u_r DOUBLE NOT NULL COMMENT '圆角半径，单位：mm',
        u_sc DOUBLE NOT NULL COMMENT '截面面积，单位：cm^2',
        u_weight DOUBLE NOT NULL COMMENT '理论重量，单位：kg/m',
        u_se DOUBLE NOT NULL COMMENT '表面积，单位：m^2/m',
        u_ix DOUBLE NOT NULL COMMENT '惯性矩x方向，单位：cm^4',
        u_iy DOUBLE NOT NULL COMMENT '惯性矩y方向，单位：cm^4',
        u_rx DOUBLE NOT NULL COMMENT '惯性半径x方向，单位：cm',
        u_ry DOUBLE NOT NULL COMMENT '惯性半径y方向，单位：cm',
        u_wx DOUBLE NOT NULL COMMENT '截面模数x方向，单位：cm^3',
        u_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3'
    ) COMMENT 'U系列型钢';

CREATE TABLE
    IF NOT EXISTS w (
        w_id INT AUTO_INCREMENT PRIMARY COMMENT '序号',
        w_standard VARCHAR(255) COMMENT '标准',
        w_serial VARCHAR(255) COMMENT '系列号',
        w_specification VARCHAR(255) UNIQUE NOT NULL COMMENT '规格',
        w_h DOUBLE NOT NULL COMMENT '高度，单位：mm',
        w_b DOUBLE NOT NULL COMMENT '宽度，单位：mm',
        w_t1 DOUBLE NOT NULL COMMENT '腹板厚度，单位：mm',
        w_t2 DOUBLE NOT NULL COMMENT '翼缘厚度，单位：mm',
        w_r DOUBLE NOT NULL COMMENT '圆角半径，单位：mm',
        w_sc DOUBLE NOT NULL COMMENT '截面面积，单位：cm^2',
        w_weight DOUBLE NOT NULL COMMENT '理论重量，单位：kg/m',
        w_se DOUBLE NOT NULL COMMENT '表面积，单位：m^2/m',
        w_ix DOUBLE NOT NULL COMMENT '惯性矩x方向，单位：cm^4',
        w_iy DOUBLE NOT NULL COMMENT '惯性矩y方向，单位：cm^4',
        w_rx DOUBLE NOT NULL COMMENT '惯性半径x方向，单位：cm',
        w_ry DOUBLE NOT NULL COMMENT '惯性半径y方向，单位：cm',
        w_wx DOUBLE NOT NULL COMMENT '截面模数x方向，单位：cm^3',
        w_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3'
    ) COMMENT 'W系列型钢'

CREATE TABLE
    IF NOT EXISTS h_other (
        h_other_id INT AUTO_INCREMENT PRIMARY COMMENT '序号',
        h_other_standard VARCHAR(255) COMMENT '标准',
        h_other_specification VARCHAR(255) UNIQUE NOT NULL COMMENT '规格',
        h_other_h DOUBLE NOT NULL COMMENT '高度，单位：mm',
        h_other_b DOUBLE NOT NULL COMMENT '宽度，单位：mm',
        h_other_t1 DOUBLE NOT NULL COMMENT '腹板厚度，单位：mm',
        h_other_t2 DOUBLE NOT NULL COMMENT '翼缘厚度，单位：mm',
        h_other_r DOUBLE NOT NULL COMMENT '圆角半径，单位：mm',
        h_other_sc DOUBLE NOT NULL COMMENT '截面面积，单位：cm^2',
        h_other_weight DOUBLE NOT NULL COMMENT '理论重量，单位：kg/m',
        h_other_se DOUBLE NOT NULL COMMENT '表面积，单位：m^2/m',
        h_other_ix DOUBLE NOT NULL COMMENT '惯性矩x方向，单位：cm^4',
        h_other_iy DOUBLE NOT NULL COMMENT '惯性矩y方向，单位：cm^4',
        h_other_rx DOUBLE NOT NULL COMMENT '惯性半径x方向，单位：cm',
        h_other_ry DOUBLE NOT NULL COMMENT '惯性半径y方向，单位：cm',
        h_other_wx DOUBLE NOT NULL COMMENT '截面模数x方向，单位：cm^3',
        h_other_wy DOUBLE NOT NULL COMMENT '截面模数y方向，单位：cm^3'
    ) COMMENT 'H型钢其他系列';