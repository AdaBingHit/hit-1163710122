package com.core;

public class ChStr {
	public static String toChinese(String strvalue) {
		try {
			if (strvalue == null) {										//������strvalueΪnullʱ
				strvalue="";											//������strvalue��ֵΪ��
			} else {
				strvalue = new String(strvalue.getBytes("ISO8859_1"), "GBK");	//���ַ���ת��ΪGBK����
				strvalue = strvalue.trim();								//ȥ���ַ�������β�ո�
			}
		} catch (Exception e) {
			strvalue="";												//������strvalue��ֵΪ��
		}
		return strvalue;												//����ת������������strvalue
	}

	//����Σ���ַ�
	public static final String filterStr(String str){
		str=str.replaceAll(";","");
		str=str.replaceAll("&","&amp;");
		str=str.replaceAll("<","&lt;");
		str=str.replaceAll(">","&gt;");
		str=str.replaceAll("'","");
		str=str.replaceAll("--"," ");
		str=str.replaceAll("/","");
		str=str.replaceAll("%","");
		return str;
	}
}
