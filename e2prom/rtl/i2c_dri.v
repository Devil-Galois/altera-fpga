module i2c_dri
#(
    parameter   DEVICE_ADDR     =       7'b1010_000;            //  �豸��ַ
    parameter   SYS_CLK         =       26'd50_000_000;         //����ʱ��Ƶ��
    parameter   SCL_FREQ        =       18'd250_000;            //SCLƵ��|���˳���400k
)(
    input   wire    sys_clk,                                    //ϵͳʱ������
    input   wire    sys_rst_n,                                  //ϵͳ��λ�ź�

    input   wire    trigger,                                    //�������󴥷��ź�
    input   wire    wl_rh,                                      //��дѡ���ź�
    input   wire    addr_width,                                 //��ַλ��
    input   wire    [15:0]  addr,                               //��ַ
    input   wire    [7:0]   wr_data,                            //��д����

    output  reg     i2c_clk,                                    //i2c����ʱ��
    output  reg     done,                                       //i2c������ɱ�־
    output  reg     [7:0]   rd_data,                            //i2c��ȡ����
    output  reg     i2c_scl,                                    //i2c�������ʱ��SCL

    inout   wire    i2c_sda                                     //˫������ͨ·SDA
);

//i2c_clk����





















endmodule