package main.java.servlets;

import main.java.entities.Book;
import main.java.model.BooksList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 */
@WebServlet(urlPatterns = "/add")
public class AddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher request = req.getRequestDispatcher("views/add.jsp");
        request.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String author = req.getParameter("author");
//        String isbn = req.getParameter("isbn");
//        String descrip = req.getParameter("description");
//       int year = Integer.parseInt(req.getParameter("printYear"));
//        Boolean read = Boolean.parseBoolean("readAlredy");
        Book book = new Book(title, author);
        BooksList booksList = BooksList.getInstance();
        booksList.addBook(book);


        req.setAttribute("title", title);
        doGet(req, resp);
    }
}
