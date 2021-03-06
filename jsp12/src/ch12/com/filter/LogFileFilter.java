package ch12.com.filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LogFileFilter implements Filter {
	PrintWriter writer;

	@Override
	public void init(FilterConfig filterConfig) 
			    throws ServletException {
	String filename=filterConfig.getInitParameter("filename");
	if(filename==null) 
		throw new ServletException("로그파일의 이름을 찾을 수 없습니다.");
     try {
    	 //FileWriter(파일명,append여부(true/false));
    	 writer = new PrintWriter(new FileWriter(filename,true),true);
     }catch(Exception e) {
    	 throw new ServletException("로그 파일을 열 수 없습니다.");
     }
	}

	@Override
	public void doFilter(ServletRequest request, 
			             ServletResponse response, 
			             FilterChain chain)
			throws IOException, ServletException {
	//자원으로 요청하는 request의 접속요청시각
	writer.printf("현재 일시:%s %n", getCurrentTime());	
	String clientAddr = request.getRemoteAddr();//접근하는 클라이언트 ip주소
	writer.printf("클라이언트 주소:%s %n", clientAddr);
	
	//request객체를 요청 자원으로 전달
	chain.doFilter(request, response);
	//요청 전달 후 응답 객체를 확인하여 콘텐츠 유형을 기록함.
	String contentType=response.getContentType();
	writer.printf("문서의 콘텐츠 유형:%s %n", contentType);
	writer.println("--------------------------------");
	}

	private String getCurrentTime() {
     DateFormat formatter 
          = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.S");
     Calendar calendar = Calendar.getInstance();
     calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
		/* return new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.S").format(new Date()); */
	}
	
	@Override
	public void destroy() {
		System.out.println("LogFileFilter 해제...");
	}

}
