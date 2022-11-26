# con_signal 的控制信号
## mova
1. mux3_1 8重3-1多路选择器
不需要,madd=00
2. shift  移位逻辑
不需要移位,fbus=1,flbus=0,frbus=0
3. sm 翻转器
sm_en=0,sm=1
4. ir 指令寄存器
ir_ld=0
5. psw 状态寄存器
cf_en=0,zf_en=0
6. pc 指令计数器
pc_ld=0,pc_inc=0
7. reg_group 通用寄存器组
需要将输出的一个打开接入总线,总线再连接到寄存器的输入端
reg_ra=ir[3:2],reg_wa=ir[1:0],we=0
8. LPM_RAM.bdf RAM
不需要读写,ram_xl=0.ram_dl=0

## movb
需要将输出的一个打开通过一个口连接到ram,ram得到地址后读出对应地址上的数据,然后通过总线写入到寄存器
1. mux3_1 8重3-1多路选择器
需要将输出B的地址输入到ram里面madd=01
2. shift  移位逻辑
fbus=1,flbus=0,frbus=0
3. sm 翻转器
sm_en=0,sm=1
4. ir 指令寄存器
ir_ld=0
5. psw 状态寄存器
cf_en=0,zf_en=0
6. pc 指令计数器
pc_ld=0,pc_inc=0
7. reg_group 通用寄存器组
通用寄存器的左右两个出口都有数据流出,左侧口的数据金国选择器到ram的地址端口
reg_ra = [3:2],we = 1,reg_wa = ir[1:0]
8. LPM_RAM.bdf RAM
打开写数据的口,ram_xl = 1,ram_dl = 0
需要接受传进来的数据,
## movc
1. mux3_1 8重3-1多路选择器
将寄存器的右侧接口通过选择器连接到ram中
madd = 10
2. shift  移位逻辑
fbus=1,flbus=0,frbus=0
3. sm 翻转器
sm_en=0,sm=1
4. ir 指令寄存器
ir_ld = 0
5. psw 状态寄存器
zf_en = 0,cf_en = 0
6. pc 指令计数器
pc_ld = 0,pc_inc = 0
7. reg_group 通用寄存器组
reg_ra = ir[3:2],reg_wa[1:0] = ir[1:0],we = 0
8. LPM_RAM.bdf RAM
ram_xl = 0,ram_dl = 1
## add
1. mux3_1 8重3-1多路选择器
madd=00
2. shift  移位逻辑
fbus=1,flbus=0,frbus=0
3. sm 翻转器
sm_en=0,sm=1
4. ir 指令寄存器
5. psw 状态寄存器
6. pc 指令计数器
7. reg_group 通用寄存器组
8. LPM_RAM.bdf RAM
## movb
1. mux3_1 8重3-1多路选择器
madd=00
2. shift  移位逻辑
fbus=1,flbus=0,frbus=0
3. sm 翻转器
sm_en=0,sm=1
4. ir 指令寄存器
5. psw 状态寄存器
6. pc 指令计数器
7. reg_group 通用寄存器组
8. LPM_RAM.bdf RAM
## movb
1. mux3_1 8重3-1多路选择器
madd=00
2. shift  移位逻辑
fbus=1,flbus=0,frbus=0
3. sm 翻转器
sm_en=0,sm=1
4. ir 指令寄存器
5. psw 状态寄存器
6. pc 指令计数器
7. reg_group 通用寄存器组
8. LPM_RAM.bdf RAM
## movb
1. mux3_1 8重3-1多路选择器
madd=00
2. shift  移位逻辑
fbus=1,flbus=0,frbus=0
3. sm 翻转器
sm_en=0,sm=1
4. ir 指令寄存器
5. psw 状态寄存器
6. pc 指令计数器
7. reg_group 通用寄存器组
8. LPM_RAM.bdf RAM
