package fpoly.com.filter;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter(urlPatterns = {"/*",""})
public class CounterFilter implements Filter{
	
	
	private int count ;
	File file = new File("E:\\Teamp\\count.txt");
	Path path = Paths.get("E:\\Teamp\\count.txt");
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		try {
			Files.write(path, String.valueOf(count).getBytes(), StandardOpenOption.WRITE);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		count++;
		chain.doFilter(request, response);
		request.setAttribute("count",count );
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		count = 1;
		try {
			if(!file.exists()) {
				file.createNewFile();
				count = Integer.parseInt(Files.readAllLines(path).get(0));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
