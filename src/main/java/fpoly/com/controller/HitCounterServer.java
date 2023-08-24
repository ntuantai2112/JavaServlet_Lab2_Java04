package fpoly.com.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HitCounterServer
 */
@WebServlet("/bai4")
public class HitCounterServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private int count ;
	File file = new File("E:\\Teamp\\count.txt");
	Path path = Paths.get("E:\\Teamp\\count.txt");
	
	
    public HitCounterServer() {
        super();
    }

	
	@Override
	public void init() throws ServletException {
		count = 1;
		try {
			if(!file.exists()) {
				file.createNewFile();
				count = Integer.parseInt(Files.readAllLines(path).get(0));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void destroy() {
				try {
					Files.write(path, String.valueOf(count).getBytes(), StandardOpenOption.WRITE);
				} catch (Exception e) {
					e.printStackTrace();
				}
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		count++;
		req.setAttribute("counter",count );
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/Counter.jsp");
		requestDispatcher.forward(req, resp);
		
	}

}
