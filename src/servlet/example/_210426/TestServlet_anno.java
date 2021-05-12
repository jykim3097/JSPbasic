package servlet.example._210426;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//URL-mapping
//1. 어노테이션을 이용하는 방법(브라우저 상에서 특정 단어 요청과 연결)
@WebServlet("/KKK")
public class TestServlet_anno extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TestServlet_anno() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out = response.getWriter();
		out.println("her!"); //화면에 찍히는 구문
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
