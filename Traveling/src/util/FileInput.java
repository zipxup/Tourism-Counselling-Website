package util;
/**
 * �ļ������ȡ
 * */
import java.io.BufferedReader;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.Random;

public class FileInput {

	public int number() {
		Random random = new Random();
		int x = 1 + random.nextInt(16);// ����1-16֮��������
		return x;
	}

	public int fileinput() {// �ļ���ȡ ������ҳ�ľ�����Ϣ
		BufferedReader file = null;// ����һ���ļ��������Ķ���
		String read = "";
		int number = 0;
		try {
			file = new BufferedReader(new FileReader(
					"C:\\Program Files\\apache-tomcat-8.0.3\\webapps\\link.txt"));// �����ļ����������ļ����
			file.readLine();
			read = String.valueOf(number());
			number = Integer.parseInt(read);

		} catch (FileNotFoundException e) {
			e.printStackTrace();
			System.out.println("�ļ�û���ҵ�!");
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("�ļ���ȡʧ��!");
		} finally {
			try {
				file.close();// �ر��ļ�������
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return number;
	}

	public void fileoutput(String file) {// �ļ�����
		FileOutputStream fout;// ����һ���ļ����������
		// ����һ�����������ͬʱ���ļ�*.txt�����ļ��������򴴽��ļ�
		try {
			fout = new FileOutputStream("");// �����ļ���Ϣ��...
			String userinfo = file;// Ҫ������ļ���Ϣ�����ⲿ����
			fout.write(userinfo.getBytes());
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("�ļ�����ʧ��!");
		}
	}
}
