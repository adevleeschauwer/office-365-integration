<%--
  ~ Copyright (c) 2019 Savoir-faire Linux Inc.
  ~
  ~ This program is free software: you can redistribute it and/or modify
  ~ it under the terms of the GNU LesserGeneral Public License as published by
  ~ the Free Software Foundation, either version 2.1 of the License, or
  ~ (at your option) any later version.
  ~
  ~ This program is distributed in the hope that it will be useful,
  ~ but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~ GNU LesserGeneral Public License for more details.
  ~
  ~ You should have received a copy of the GNU LesserGeneral Public License
  ~ along with this program.  If not, see <https://www.gnu.org/licenses/>.
  -->

<%@ include file="init.jsp"%>

<portlet:actionURL name="removeAuth" var="removeAuth"/>
<portlet:actionURL name="removeSession" var="removeSession"/>
<portlet:actionURL name="expirerSession" var="expirerSession"/>
<portlet:actionURL name="removeProperties" var="removeProperties"/>
<portlet:actionURL name="createEvent" var="createEvent"/>
<c:choose>
	<c:when test="${isConnected}">
		<pre>
		    unread mail: ${unreadMail}
		    next event time: ${nextEventTime}
		</pre>
		<a href="${removeAuth}" class="btn btn-danger">Suprimmer Auth</a>
		<a href="${removeSession}" class="btn btn-danger">Suprimer session</a>
		<a href="${removeSession}" class="btn btn-warning">expirer session</a>
		<a href="${removeProperties}" class="btn btn-danger">Suprimer propri&eacute;t&eacute;</a>
		<br/>
		<a href="${createEvent}" class="btn btn-primary">creer &eacute;v&eacute;nement</a>

	</c:when>
	<c:otherwise>
		<a href="/o/o365/login?backURL=${backURL}" class="btn btn-primary">Connection &agrave; Office365</a>
	</c:otherwise>
</c:choose>
