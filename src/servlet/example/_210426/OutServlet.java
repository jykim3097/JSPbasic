package servlet.example._210426;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/_210426_OutServlet")
public class OutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public OutServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("이클립스 콘솔창에 출력된다.");
		
		//서블릿에서 아웃객체를 이용해서 브라우저 화면으로 보내는 방법
		//out 객체를 얻어오는 방법, 반환이 PrinWriter 객체를 사용
		//브라우저에 out객체를 이용해 데이터를 보낼 때 문서에 대한 타입을 반드시 지정해야 한다 content-type
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();		
		out.println("<h3>화면에 출력한다</h3>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
	}

}
