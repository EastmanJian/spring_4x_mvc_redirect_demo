<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
<head>
    <title>Spring Page Redirection</title>
</head>

<body>
<h2>Spring Page Redirection</h2>
<p><pre>
    In the controller, makes use of redirect to transfer a http request to another page.

    @RequestMapping(value = "/redirect", method = RequestMethod.GET)
      public String redirect() {
      return "redirect:finalPage";
    }

    The form action is "./redirect" below. When you click the submit button, the page will be redirect from
    ./redirect to ./finalPage.
</pre></p>
<p>Click below button or the link to redirect the result to new page</p>

<form:form method = "GET" action = "./redirect">
    <table>
        <tr>
            <td>
                <input type = "submit" value = "Redirect Page"/>
            </td>
        </tr>
    </table>
</form:form>
<br/>
<a href="./redirect">Redirect Page</a>
</body>

</html>