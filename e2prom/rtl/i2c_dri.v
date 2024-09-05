module i2c_dri
#(
    parameter   DEVICE_ADDR     =       7'b1010_000;            //  设备地址
    parameter   SYS_CLK         =       26'd50_000_000;         //输入时钟频率
    parameter   SCL_FREQ        =       18'd250_000;            //SCL频率|不宜超过400k
)(
    input   wire    sys_clk,                                    //系统时钟输入
    input   wire    sys_rst_n,                                  //系统复位信号

    input   wire    trigger,                                    //主机需求触发信号
    input   wire    wl_rh,                                      //读写选择信号
    input   wire    addr_width,                                 //地址位宽
    input   wire    [15:0]  addr,                               //地址
    input   wire    [7:0]   wr_data,                            //待写数据

    output  reg     i2c_clk,                                    //i2c驱动时钟
    output  reg     done,                                       //i2c操作完成标志
    output  reg     [7:0]   rd_data,                            //i2c读取数据
    output  reg     i2c_scl,                                    //i2c主机输出时钟SCL

    inout   wire    i2c_sda                                     //双向数据通路SDA
);

//i2c_clk产生





















endmodule