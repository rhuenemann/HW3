

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>salary results</title>
    </head>
    
        
    <%
        double hours = Integer.parseInt(request.getParameter("hours"));
        double rate = Integer.parseInt(request.getParameter("rate"));
        double pre = Integer.parseInt(request.getParameter("pre"));
        double post = Integer.parseInt(request.getParameter("post"));
        double hoursover = hours - 40;
        double rateover = rate * 1.5;
        double tax;
        double gross = ((hours-hoursover)*rate)+(hoursover*rateover);
        if (gross>500){
            tax = 0.18;
        }
        else{
            tax = 0.22;
        }
        double postTaxpay = gross*( 1 + tax);
        double netpay = postTaxpay-post;
        %>
    

    <body>
        <h1>Salary Info</h1>
        
                <h1>Salary Info</h1>
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked: </td>
                    <td><%= hours %></td>
                </tr>
                <tr>
                    <td>Hourly Rate: </td>
                    <td><%= rate %></td>
                </tr>
                <tr>
                    <td># Hours Overtime: </td>
                    <td><%= hoursover %></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate: </td>
                    <td><%= rateover %></td>
                </tr>
                <tr>
                    <td>Gross Pay: </td>
                    <td><%= gross %></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct: </td>
                    <td><%= pre %></td>
                </tr>
                <tr>
                    <td>Tax Amount: </td>
                    <td><%= tax %></td>
                </tr>
                <tr>
                    <td>Post-tax Pay: </td>
                    <td><%= postTaxpay %></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct: </td>
                    <td><%= post %></td>
                </tr>
                <tr>
                    <td>Net Pay: </td>
                    <td><%= netpay %></td>
                </tr>

        </table>

    </body>
</html>
