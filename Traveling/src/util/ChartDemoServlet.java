package util;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;

import org.jfree.data.general.*;
import org.jfree.chart.*;
/**
 * ��ʾͨ��servletֱ�����ͼ��
  */
public class ChartDemoServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void service(ServletRequest req, ServletResponse res)
		throws ServletException, IOException 
	{
		res.setContentType("image/jpeg");
		DefaultPieDataset data = getDataSet();
		JFreeChart chart = ChartFactory.createPieChart3D("ˮ������ͼ",
		data,
		true,
		false,
		false
		);
				
		ChartUtilities.writeChartAsJPEG(res.getOutputStream(),
			100,chart,400,300,null);
	}
	/**
	 * ��ȡһ����ʾ�õļ����ݼ�����
	 * @return
	 */
	private static DefaultPieDataset getDataSet() {
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("ƻ��",100);
		dataset.setValue("����",200);
		dataset.setValue("����",300);
		dataset.setValue("�㽶",400);
		dataset.setValue("��֦",500);
		return dataset;
	}
}
