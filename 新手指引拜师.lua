// raid.flow
// 新手指引拜师
// author:四区白三三
#select ($Bsmp) = 完成指引后拜师门派,不加门派|武当派|少林派|华山派|峨眉派|逍遥派|丐帮|杀手楼,逍遥派
#config
@cmdDelay 200
setting show_command 1
setting item_firstme 1
setting keep_msg 1
setting off_move 1
setting off_plist 1
setting auto_sortitem 1
setting auto_showcombat 1
setting auto_hideroom 1
setting no_combatmsg 1
setting combat_wrap 1
setting show_hpnum 1
setting show_damage 1
setting fontsize 0.75rem
setting hide_equip 1
setting auto_get 1
setting auto_work wakuang
select {r指引者}
guid {r指引者}
@tip 坐下来试试
zuo
@tip 房间里有些隐藏物品
look yizi;zuo2 yizi
@tip 来东面的训练室
go east
@tip 你打开背包
study {b拳脚快速入门}
@tip 这本书上的内容对你来说太浅了
next {r指引者}
@tip 杀掉一个木头人
go south
@kill 木头人
go north
next {r指引者}
@tip 你需要学会内功心法
study {b内功快速入门}
@tip 这本书上的内容对你来说太浅了
@liaoshang
next {r指引者}
@tip 可以去闯荡江湖
ask6 {r指引者}
@until (:room) == 扬州城-有间客栈
[if] (Bsmp) == 武当派
    $to 武当派-三清殿
    bai {r谷虚道长}
[if] (Bsmp) == 少林派
    $to 少林派-广场
    bai {r清乐比丘}
[if] (Bsmp) == 华山派
    $to 华山派-镇岳宫
    bai {r高根明}
[if] (Bsmp) == 峨眉派
    $to 峨眉派-庙门
    bai {r苏梦清}
[if] (Bsmp) == 逍遥派
    $to 逍遥派-木屋
    bai {r薛慕华}
[if] (Bsmp) == 丐帮
    $to 丐帮-树洞下
    bai {r左全}
[if] (Bsmp) == 杀手楼
    $to 杀手楼-大厅
    bai {r何小二}
$wait 3000
$zdwk