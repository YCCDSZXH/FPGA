module con_signal(input mova,
                  movb,
                  movc,
                  add,
                  sub,
                  and1,
                  not1,
                  rsr,
                  rsl,
                  jmp,
                  jz,
                  z,
                  jc,
                  c,
                  in1,
                  out1,
                  nop,
                  halt,
                  [7:0]ir,
                  sm,
                  output reg [1:0]reg_ra,
                  [1:0]reg_wa,
                  [1:0]madd,
                  [3:0]alu_s,
                  pc_ld,
                  pc_inc,
                  reg_we,
                  ram_xl,
                  ram_dl,
                  alu_m,
                  shi_fbus,
                  shi_flbus,
                  shi_frbus,
                  ir_ld,
                  cf_en,
                  zf_en,
                  sm_en,
                  in_en,
                  out_en);
    
    
always@(mova,movb,movc,add,sub,and1,not1,rsr,rsl,jmp,jz,z,jc,c,in1,out1,nop,halt,sm,ir)
    begin
        sm_en <= !halt;
        //ALU
        alu_m      <= add||sub||and1||not1||rsr||rsl||out1;
        cf_en      <= add||sub||rsr||rsl;
        zf_en      <= add||sub;
        alu_s[3:0] <= ir[7:4];
        //移位逻辑
        shi_fbus  <= mova||movb||add||sub||and1||not1||out1;
        shi_frbus <= rsr;
        shi_flbus <= rsl;
        //RAM
        ram_dl <= movc||jmp||(jz&&z)||(jc&&c)||!sm;
        ram_xl <= movb;
        //指令寄存�???
        ir_ld <= !sm;
        //寄存器组
        reg_we      <= !(mova||movc||add||sub||and1||not1||rsl||rsr||in1)||!sm;
        reg_wa      <= ir[3:2];
        reg_ra[1:0] <= ir[1:0];
        //计数器PC
        pc_ld  <= jmp||(jz&&z)||(jc&&c);
        pc_inc <= (jz&&!z)||(jc&&!c)||!sm;
        //选择器MADD
        if (movb&&sm) madd      <= 2'b10;
        else if (movc&&sm) madd <= 2'b01;
        else if (!sm) madd      <= 2'b00;
        else madd               <= 2'b00;
        //输入输出设备
        in_en  <= in1;
        out_en <= out1;
    end
endmodule
