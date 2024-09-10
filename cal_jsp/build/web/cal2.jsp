<%-- 
    Document   : cal2
    Created on : May 25, 2024, 9:21:12 PM
    Author     : trong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            String x1 = request.getParameter("x1");
            String x2 = request.getParameter("x2");
            String[] operations = request.getParameterValues("operation");
        %>
        <form>
            x1 <input type="number" step="any" name="x1" value="<%=x1%>"/><br/>
            x2 <input type="number" step="any" name="x2" value="<%=x2%>"/><br/>
            Operators:<br/>
            <input type="checkbox" name="operation" value="+" id="Add" <%=operations != null && java.util.Arrays.asList(operations).contains("+") ? "checked" : "" %>/>
            <label for="Add"> Add</label><br>
            <input type="checkbox" name="operation" value="-" id="Subtract" <%=operations != null && java.util.Arrays.asList(operations).contains("-") ? "checked" : "" %>/>
            <label for="Subtract"> Subtract</label><br>
            <input type="checkbox" name="operation" value="*" id="Multiply" <%=operations != null && java.util.Arrays.asList(operations).contains("*") ? "checked" : "" %>/>
            <label for="Multiply"> Multiply</label><br>
            <input type="checkbox" name="operation" value="/" id="Divide" <%=operations != null && java.util.Arrays.asList(operations).contains("/") ? "checked" : "" %>/>
            <label for="Divide"> Divide</label><br>
            <input type="submit"/>
        </form>

        <h3 style="color: green">
            <%
                if (x1 != null && x2 != null && operations != null) {
                     try{
                            double x1_num = Double.parseDouble(x1);
                            double x2_num = Double.parseDouble(x2);
                            String result = "";
                            for (String op : operations) {
                            switch(op){
                            case "+":
                            result = x1 + op + x2 + "=" +(x1_num+x2_num)+"</br>";
                            break;
                            case "-":
                            result = x1 + op + x2 + "=" +(x1_num-x2_num)+"</br>";
                            break;
                            case "*":
                            result = x1 + op + x2 + "=" +(x1_num*x2_num)+"</br>";
                            break;
                            case "/":
                            if(x2_num==0){
                            out.println("Divide by 0");
                } else
                            result = x1 + op + x2 + "=" +(x1_num/x2_num)+"</br>";
                            break;
                            default:
                            result="";
                }
                out.println(result);
                }
                }
                    catch(Exception e){
                    out.println("Invalid input. </br>");
                }
                }    
            %>
        </h3>
    </body>
</html>
