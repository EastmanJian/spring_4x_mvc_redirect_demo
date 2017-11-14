<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
<head>
    <title>Spring Page Redirection and Static Pages</title>
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
<a href="./redirect">Redirect Page</a>

<hr/>
<h2>Static Pages</h2>
<p><pre>
    Spring MVC Framework can access static pages along with dynamic pages with the help of &lt;mvc:resources&gt; tag in Spring Config.

    Click the links below to visit some static pages or resources. Also vew the Spring Config to see the configuration.
</pre></p>

<a href="./staticPage">Link to a static html page</a><br/> <!-- This link uses the RequestMapping in controller -->
<a href="./staticPages/web.xml">View web.xml</a><br/>      <!-- This link uses mvc:resources mapping in the Spring Config directly -->
<a href="./staticPages/dispatcher-servlet.xml">View Spring Config</a> <!-- This link uses mvc:resources mapping in the Spring Config directly -->

</body>

</html>