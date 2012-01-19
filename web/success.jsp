<%-- 
    Document   : success
    Created on : Jan 18, 2012, 2:03:10 PM
    Author     : Stathis
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        if (name != null && email != null) {

            session.setAttribute("user", name);
            session.setAttribute("email", email);
        }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Basket</title>
    </head>
    <body>
        <h1>Shopping Basket</h1>
        <jsp:useBean id="bean" scope="session" class="classes.prices" />
        <jsp:setProperty name="bean" property="cafe" param="coffee" />
        <jsp:setProperty name="bean" property="sugar" param="sugar" />         
        <jsp:setProperty name="bean" property="water" param="water" />   
        <jsp:useBean id="bean1" scope="session" class="classes.products" />
        <jsp:setProperty name="bean1" property="cafe" param="coffee" />
        <jsp:setProperty name="bean1" property="sugar" param="sugar" />         
        <jsp:setProperty name="bean1" property="water" param="water" />   

        <form action="success.jsp">
            <table border="1">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Quant</th>
                        <th>Sum</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Cafe</td>
                        <td>18.5</td>
                        <td><input type="text" name="coffee" value=<jsp:getProperty name="bean1" property="cafe" />
                                   />
                        </td>
                        <td>

                            <jsp:getProperty name="bean" property="cafe" />

                        </td>
                    </tr>
                    <tr>
                        <td>Sugar</td>
                        <td>6.95</td>
                        <td><input type="text" name="sugar" value=<jsp:getProperty name="bean1" property="sugar" />
                                   />
                        </td>
                        <td>
                            <jsp:getProperty name="bean" property="sugar" />
                        </td>
                    </tr>
                    <tr>
                        <td>Water</td>
                        <td>1.29</td>
                        <td><input type="text" name="water" value=<jsp:getProperty name="bean1" property="water" />
                                   />
                        </td>
                        <td>
                            <jsp:getProperty name="bean" property="water" />
                        </td>
                    </tr>
                    <tr>
                        <td>Total</td>
                        <td></td>
                        <td></td>
                        <td><jsp:getProperty name="bean" property="sum" /></td>
                    </tr>
                </tbody>
            </table>

            <br/>

            <input type="submit" value="Checkout" />
            <br/>
        </form>
        <a href="http://evotsis.wordpress.com" target="_blank">Report</a>
        <a href="http://https://github.com/evotsis/Project/zipball/master" target="_blank">Code</a>
        <p>your name is: <%=session.getAttribute("user")%> </p>
        <p>your email is: <%=session.getAttribute("email")%></p>
    </body>
</html>
