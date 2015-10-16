#修改状态为默认 为处理
update xx_photos set status = 'UNASSIGNED'

#删除没有图片路径的记录
DELETE FROM xx_photos WHERE thumbnail IS NULL;