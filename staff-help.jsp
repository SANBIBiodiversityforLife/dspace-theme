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
        <h2>How to use Opus</h2>
		<ul>
			<li>In order to upload your published outputs please log in using the “via LDAP” option (<a href="http://opus.sanbi.org/ldap-login">http://opus.sanbi.org/ldap-login</a>) with your SANBI username (not email) and password.</li>
			<li>Before uploading a multi SANBI authored paper search the publication records to make sure that it has not been entered into the system by one of the other SANBI authors.</li>
			<li>Complete the requested metadata fields (at least all of the compulsory fields).</li>
			<li>Upload the pdf. Please follow the following format for the file names: authorsurname_year_journalname (e.g. Conrad_2017_Peerj), authorsurname_year_thesis/dissertation_university (e.g. Daly_2019_MPhil_UCT), Year_SeriesAndNo_MainAuthorSurname (e.g. 2017_Strelitzia_38_Bester).</li>
			<li>If the journalname is more than one word, please use the standard journal title abbreviation (e.g. Crouch_2013_Ann_Mo_Bot_Gard). If unsure please see (<a href="http://www.journalabbr.com/">the Journal Abbreviation Database</a>).</li>
			<li>Grant permission.</li>
		</ul>
		<h2>What to do when an article is published to a traditional journal?</h2>
		<ul>
			<li>Check the website (<a href="http://www.sherpa.ac.uk/romeo/index.php">Sherpa/Romeo</a>) for details on the publisher copyright policies and self-archiving.</li>
			<li>If the copyright policy states the author cannot archive the pre-print, post-print and publisher's version, then please complete the metadata record and upload the article. Send us an <a href="mailto:opus@sanbi.org.za">email</a> and we will permanently restrict access to the article.
		</ul>
		<h2>What to do when an article needs to be embargoed?</h2>
		<ul>
			<li>Please upload the article and send us an <a href="mailto:opus@sanbi.org.za">email</a> so we can embargo the article. Provide details on how long the embargo should be.</li>
		</ul>
		<h2>How to determine which journal type my article relates to</h2>
		<ul>
			<li> The Institute for Scientific Information (ISI) and Department of Higher Education and Training (DHET) make an accredited journal list available every year. Click on the links for a list to the current <a href="ISI accredited journal list 2017.pdf" target="_blank">ISI</a> and <a href="DHET accredited list of SA journals 2017.pdf" target="_blank">DHET</a> accredited journals.</li>
		</ul>
		<h2>How to link a file to download directly from Opus</h2>
		<ul>
			<li> Using the following Opus URL template, you need to replace what is in square brackets with the handle and file name (e.g. URL: http://opus.sanbi.org/bitstream/[xxxxxxxx/xxxx]/1/[xxxxxxxxx.pdf], example: http://opus.sanbi.org/bitstream/20.500.12143/5602/1/Strelitzia_36_2015.pdf</li>
		</ul>
    </p>
</dspace:layout>
