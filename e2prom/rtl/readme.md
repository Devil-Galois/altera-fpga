# FPGAʵ��I2Cͨ���ĵ�

## I2Cʱ��

![alt text](i2c_tim.png)

��ʼSDA����Ȩ�ƽ�MASTER

- ����д����
IDEL--->SDA����/SLAVE�ȴ�--->SCL����/���ݴ��俪ʼ--->���ݴ����SLAVEӦ��--->SCL����/SDA������
���ݴ����ʽ:DEVICE_ADDR(7'b)+W(1'b0)---SDA�����ƽ�SLAVE---ACK(1'b0��ʾ��ȷӦ��)---SDA�����ƽ�MASTER---WORD_ADDR(8'b)---SDA�����ƽ�SLAVE---ACK(1'b0��ʾ��ȷӦ��)---SDA�����ƽ�MASTER---DATA(8'b)---SDA�����ƽ�SLAVE---ACK(1'b0��ʾ��ȷӦ��)---SDA�����ƽ�MASTER---STOP�׶�
����˫�ֵ�ַҪ����д����WORD_ADDR(15-8,7-0)
- ҳд����
�ڵ���д�������ظ�n��DATA�׶�ʱ��,�����ڲ��Զ�����д��ַ,n���ô��ڵ�ҳ������,������ͷ����
- ���������
IDEL--->SDA����/SLAVE�ȴ�--->SCL����/���ݴ��俪ʼ--->���ݴ����SLAVEӦ��--->SCL����/SDA������
���ݴ����ʽ:DEVICE_ADDR(7'b)+W(1'b0)---SDA�����ƽ�SLAVE---ACK(1'b0��ʾ��ȷӦ��)---SDA�����ƽ�MASTER---WORD_ADDR(8'b)---SDA�����ƽ�SLAVE---ACK(1'b0��ʾ��ȷӦ��)---SDA�����ƽ�MASTER ***����Ĳ����Ƕ�λ��ǰ��ַ��Ŀ���ַ*** ---DEVICE_ADDR(7'b)+W(1'b1)---SDA�����ƽ�SLAVE---ACK(1'b0��ʾ��ȷӦ��)---SDA�����ƽ�MASTER---DATA(8'b)---SDA�����ƽ�SLAVE---ACK(1'b1��ʾ��Ӧ��)---SDA�����ƽ�MASTER---STOP�׶�
- ˳�������
��������Ļ������ظ���DATA����,ֻ���������һ���ⶼ����ACK(1'b0��ʾ��ȷӦ���ź�)

## I2C-FSM����

��ʵ�ֵ���д��������ҽ����ߺϲ�,ǰ����

![alt text](i2c_fsm.png)

## .v�ļ�

i2c_dri.v����i2c״̬����scl,sda�ź����,����������������,��i2c����ʵ�ֵ�������
