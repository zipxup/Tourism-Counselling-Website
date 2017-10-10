package util;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;

import org.jfree.data.general.*;
import org.jfree.chart.*;
/**
 * 演示通过servlet直接输出图表
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
		JFreeChart chart = ChartFactory.createPieChart3D("水果产量图",
		data,
		true,
		false,
		false
		);
				
		ChartUtilities.writeChartAsJPEG(res.getOutputStream(),
			100,chart,400,300,null);
	}
	/**
	 * 获取一个演示用的简单数据集对象
	 * @return
	 */
	private static DefaultPieDataset getDataSet() {
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("苹果",100);
		dataset.setValue("梨子",200);
		dataset.setValue("葡萄",300);
		dataset.setValue("香蕉",400);
		dataset.setValue("荔枝",500);
		return dataset;
	}
}
