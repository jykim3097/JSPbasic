package servlet.example._210426;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//2. web.xml에 선언하는 방법(어노테이션 방법과 같이 사용할 수 없다)
public class TestServlet_xml extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TestServlet_xml() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
