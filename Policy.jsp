<%--
    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at
    http://www.dspace.org/license/
--%>
<%--
  - Display a tombstone indicating that an item has been withdrawn.
  --%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
    prefix="fmt" %>
    
<dspace:layout titlekey="jsp.tombstone.title">
    <p align="center">		
        <h1>Citing SANBI publications</h1>
		Please follow the guidelines below when citing a SANBI publication.<br><br>
        1.    SCIENTIFIC AND TECHNICAL PAPERS: <br>
        Author citation as per journal formats.<br><br>
        2.    SCIENTIFIC SYNTHESIS/ ASSESSMENT WITH POLICY IMPLICATIONS  (E.G. NBA)<br>
        Option 1: Cite institution with main contributors as editors (e.g. IPCC)<br>
        IPCC, 2013: Climate Change 2013: The Physical Science Basis. Contribution of Working Group I to the Fifth Assessment Report of the Intergovernmental Panel on Climate Change [Stocker, T.F., D. Qin, G.-K. Plattner, M. Tignor, S.K. Allen, J. Boschung, A. Nauels, Y. Xia, V. Bex and P.M. Midgley (eds.)]. Cambridge University Press, Cambridge, United Kingdom and New York, NY, USA, 1535 pp.<br>
        Option 2: Dual Citation (e.g. IPCC) <br>
        For policy makers: IPCC, 1994. Radiative Forcing of Climate Change and An Evaluation of the IPCC IS92 Emission Scenarios. JT Houghton, LG Meira Filho, J Bruce, Hoesung Lee, BA Callander, E Haites, N Harris and K Maskell (Eds), Cambridge University Press, UK. pp 339. <br>
        OR<br>
        For reference in science publications: JT Houghton, LG Meira Filho, J Bruce, Hoesung Lee, BA Callander, E Haites, N Harris and K Maskell (Eds), 1994. Radiative Forcing of Climate Change and An Evaluation of the IPCC IS92 Emission Scenarios. A report of the Intergovernmental Panel on Climate Change. Cambridge University Press, UK. pp 339.<br><br>
        3.    For policy makers<br>
        Cite the institution and acknowledge the authors or contributors<br>
        For example, the suggested citation for the World Wildlife Crime Report published by the United Nations Office on Drugs and Crime (UNODC) is:<br>
        UNODC 2016.  World Wildlife Crime Report: Trafficking in protected species. United Nations Office on Drugs and Crime.<br><br>
        In this case, the authors are acknowledged on the cover page<br>
    </p>
</dspace:layout>
