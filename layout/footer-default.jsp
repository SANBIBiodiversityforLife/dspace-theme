<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Footer for home page
  --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.net.URLEncoder" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>

<%
    String sidebar = (String) request.getAttribute("dspace.layout.sidebar");
%>

            <%-- Right-hand side bar if appropriate --%>
<%
    if (sidebar != null)
    {
%>
	</div>
	<div class="col-md-3">
                    <%= sidebar %>
    </div>
    </div>       
<%
    }
%>
</div>
</main>
            <%-- Page footer --%>
    <footer style="background-color:#333; color:white; padding-top:35px;">
        <div class="container">
            <div class="row" style="border-bottom: 6px solid #bcbcbc ; margin-bottom:35px;">
            <div class="text-2 widget_text col-sm-4">
            <div style="border-top:6px solid #ffb15b ; width=80%"> </div>
                <h3>Contact</h3>
                <div class="textwidget">
                    <b>Pretoria</b></br>
                    Phone: +27 12 843 5000</br>
                    <a href="http://biodiversityadvisor.sanbi.org/contact/">Contact us</a></br></br>
                </div>
                <div class="textwidget">
                    <b>Cape Town</b></br>
                    Phone: +27 21 799 8800</br>
                    <a href="http://biodiversityadvisor.sanbi.org/contact/">Contact us</a>                </div>
            </div>
            <div class="text-3 widget_text col-sm-4";>
            <div style="border-top:6px solid #a48dc4 ; width=80%"> </div>
                <h3>SANBI's online information resources</h3>
                <div class="textwidget">
                    <a href="http://bgis.sanbi.org">Biodiversity GIS (BGIS)</a></br>
                    <a href="http://posa.sanbi.org">Plants of Southern Africa (POSA)</a></br>
                </div>
            </div>
            <div class="text-4 widget_text col-sm-4">
            <div style="border-top:6px solid #75b47a ; width=80%"> </div>
                <h3>Quick Links</h3>
                <div class="textwidget">
                   <a href="http://www.sanbi.org">SANBI Corporate website</a></br>
                   <a href="http://www.sanbi.org">Corporate website information resources</a></br>
                 <a href="http://www.sanbi.org/terms">Terms and Conditions</a>    
                </div>
            </div>
            <div class="row" style="margin-bottom:25px;">
            </div>
            </div >
            <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0; margin-bottom:5px" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
        </div>
    </footer>
    </body>
</html>