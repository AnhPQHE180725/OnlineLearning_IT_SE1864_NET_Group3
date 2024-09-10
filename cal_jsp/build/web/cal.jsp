<%-- 
    Document   : cal
    Created on : May 22, 2024, 8:29:18 AM
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
                String x1= request.getParameter("x1");
                 String x2= request.getParameter("x2");
                 String op = request.getParameter("operation");
        %>
        <form>
            x1 <input type="number"  step="any" name="x1" value="<%=x1%>"/><br/>
            x2 <input type="number" step="any" name="x2" value="<%=x2%>"/><br/>
            Operator:<br/>
            <input type="radio" name="operation" Value="+" id="Add" <%=op!=null && op.equals("+")? "checked": ""%>/>
            <label for="Add" > Add</label><br>
            <input type="radio" name="operation" Value="-" id="Subtract" <%=op!=null && op.equals("-")? "checked": ""%>/>
            <label for="Subtract"> Subtract</label><br>
            <input type="radio" name="operation" Value="*" id="Multiply"<%=op!=null && op.equals("*")? "checked": ""%>/>
            <label for="Multiply"> Multiply</label><br>
            <input type="radio" name="operation" Value="/" id="Divide"<%=op!=null && op.equals("/")? "checked": ""%>/>
            <label for="Divide"> Divide</label><br>
            <input type="submit"/>
        </form>

        <h3 style="color: green">
            <%
            if (x1!=null && x2!= null && op!=null){
                    try{
                            double x1_num = Double.parseDouble(x1);
                            double x2_num = Double.parseDouble(x2);
                            String result = "";
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
                    catch(Exception e){
                    out.println("Invalid input. </br>");
                }
                }    


            %>

        </h3>
    </body>
</html>
