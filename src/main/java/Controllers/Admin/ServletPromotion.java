package Controllers.Admin;

import Dao.PromotionDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletPromotion", value = "/Promotion")
public class ServletPromotion extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PromotionDao promotionDao  = new PromotionDao();
        request.setAttribute("AllPromotion",promotionDao.getAllPromotion());
        request.getRequestDispatcher("./AdminGlobal/Promotion.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
