import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ProfileServlet")
@MultipartConfig(fileSizeThreshold = 1024*1024, // 1MB
                 maxFileSize = 1024*1024*5,     // 5MB
                 maxRequestSize = 1024*1024*10) // 10MB
public class ProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String program = request.getParameter("program");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String intro = request.getParameter("intro");

        // Handle file upload
        Part filePart = request.getPart("photo");
        String fileName = filePart.getSubmittedFileName();
        String uploadPath = getServletContext().getRealPath("") + "uploads";

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        String filePath = uploadPath + File.separator + fileName;
        filePart.write(filePath);

        // Pass data to JSP
        request.setAttribute("name", name);
        request.setAttribute("studentId", studentId);
        request.setAttribute("program", program);
        request.setAttribute("email", email);
        request.setAttribute("hobbies", hobbies);
        request.setAttribute("intro", intro);
        request.setAttribute("photo", "uploads/" + fileName);

        RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
        dispatcher.forward(request, response);
    }
}
