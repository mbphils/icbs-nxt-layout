<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>404 Error Page</title>
    </head>
    <body>
        <section class="content">
        <div class="error-page">
          <h2 class="headline text-warning"> 404</h2>

          <div class="error-content">
            <h3><i class="fas fa-exclamation-triangle text-warning"></i> Oops! Page not found.</h3>

            <p>
              We could not find the page you were looking for.
              Meanwhile, you may <g:link controller="main" action="landing">return to dashboard</g:link> or try using the search form.
            </p>
          </div>
          <!-- /.error-content -->
        </div>
        <!-- /.error-page -->
        </section>
    </body>
</html>
