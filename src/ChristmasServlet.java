

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NyugakuServlet
 */
@WebServlet("/Christmas")
public class ChristmasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChristmasServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final String driverName = "oracle.jdbc.driver.OracleDriver";
		final String url = "jdbc:oracle:thin:@192.168.54.226:1521/orcl";
		final String id = "OUBO";
		final String pass = "TOUSEN";
		
		new java.util.Date();
		
		try {
			Class.forName(driverName);
			Connection connection=DriverManager.getConnection(url,id,pass);
			PreparedStatement st;
			st = connection.prepareStatement(
					"select trunc(kigen-sysdate+1) as result from kigen"
					);
			 
			ResultSet rs = st.executeQuery();//DB�A�N�Z�X
			rs.next();
			String kigen = rs.getString("result");
			request.setAttribute("Result", kigen);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/JSP/Christmas.jsp");
			rd.forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
