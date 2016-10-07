

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>salary results</title>
        <link rel="stylesheet" type="text/css" href="/css/style.css" />

    </head>
    
        
    <%
        double hours = Integer.parseInt(request.getParameter("hours"));
        double rate = Integer.parseInt(request.getParameter("rate"));
        double pre = Integer.parseInt(request.getParameter("pre"));
        double post = Integer.parseInt(request.getParameter("post"));
        double taxablePay;
        double reghours = 40;
        double otHours;
        double otPayRate;
        double otPay;
        double taxAmount;
        double postTaxPay;
        double netpay;
        double gross;
        otHours = hours -40;
        otPayRate = rate *1.5;
        if (hours > 40) {
            otPay = otHours * otPayRate;
            rate = reghours * rate;
            gross = rate + otPay;
        }
        else {
            gross = hours * rate;
        }
        taxablePay = gross - pre;
        
        if (gross<500){
            taxAmount = taxablePay * .18;   
        }
        else {
            taxAmount = taxablePay * .22;
        }
        postTaxPay = taxablePay - taxAmount;
        
        netpay = postTaxPay - post;
            
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
                    <td><%= otHours %></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate: </td>
                    <td><%= otPayRate %></td>
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
                    <td><%= taxAmount %></td>
                </tr>
                <tr>
                    <td>Post-tax Pay: </td>
                    <td><%= postTaxPay %></td>
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
