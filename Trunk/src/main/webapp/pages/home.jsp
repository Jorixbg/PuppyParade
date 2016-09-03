<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="language"
	value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
	scope="session" />

<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.puppyparade.lang.text" />
<html lang="${language}">
<body>



	<nav role="navigation" class="navbar navbar-default navbar-static-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/"><fmt:message
						key="puppyparade.title" /></a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/"><fmt:message
							key="puppyparade.home" /></a></li>
				<li><a href="about"><fmt:message key="puppyparade.about" /></a></li>
			</ul>
			<div class="text-right">
				<form>
					<select id="language" name="language" onchange="submit()">
						<option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
						<option value="fr" ${language == 'bg' ? 'selected' : ''}>Български</option>
					</select>
				</form>
			</div>
		</div>
	</nav>
	<div class="container-fluid" role="main">
		<!-- <div class="logo-center">
		<img class="logo-bg" src="<c:url value="/resources/images/logo_bg.jpg" />">
	</div> -->
		<hr>
		<div id="searchPane" class="jumbotron twm">
			<div id="searchBar" class="container text-center">

			</div>
		</div>
<%-- 		<div class="content row">
			<div class="col-md-2 col-sm-2">
				<!-- Sidebar  -->
				<%@ include file="sidebar.jsp"%>

			</div>
			<div class="col-md-8 col-sm-8"
				style="height: 700px; !important"></div>
			<div class="col-md-2 col-sm-2"></div>

		</div> --%>


	</div>
	<%@ include file="footer.jsp"%>

</body>
</html>