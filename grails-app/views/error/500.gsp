<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>500 Error Page</title>
    </head>
    <body>
        <section class="content">
            <div class="error-page">
              <h2 class="headline text-danger">500</h2>

              <div class="error-content">
                <h3><i class="fas fa-exclamation-triangle text-danger"></i> Oops! Something went wrong.</h3>

                <p>
                  We will work on fixing that right away.
                  Meanwhile, you may <g:link controller="main" action="landing">return to dashboard</g:link> or try using the search form.
                </p>
              </div>
            </div>
            <!-- /.error-page -->

          </section>
    </body>
</html>
