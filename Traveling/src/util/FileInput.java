package util;
/**
 * 文件保存读取
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
		int x = 1 + random.nextInt(16);// 生成1-16之间的随机数
		return x;
	}

	public int fileinput() {// 文件读取 用于首页的景点信息
		BufferedReader file = null;// 定义一个文件输入流的对象
		String read = "";
		int number = 0;
		try {
			file = new BufferedReader(new FileReader(
					"C:\\Program Files\\apache-tomcat-8.0.3\\webapps\\link.txt"));// 建立文件流对象，与文件相关
			file.readLine();
			read = String.valueOf(number());
			number = Integer.parseInt(read);

		} catch (FileNotFoundException e) {
			e.printStackTrace();
			System.out.println("文件没有找到!");
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("文件读取失败!");
		} finally {
			try {
				file.close();// 关闭文件流对象
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return number;
	}

	public void fileoutput(String file) {// 文件保存
		FileOutputStream fout;// 定义一个文件输出流对象
		// 创建一个输出流对象，同时打开文件*.txt，若文件不存在则创建文件
		try {
			fout = new FileOutputStream("");// 保存文件信息到...
			String userinfo = file;// 要保存的文件信息，从外部传入
			fout.write(userinfo.getBytes());
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("文件保存失败!");
		}
	}
}
