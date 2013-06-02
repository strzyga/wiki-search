<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#outer { 
	height: 600px;
	overflow: hidden;
	position: relative;
	width: 100%;
}

#outer[id] {
	display: table;
	position: static;
}

#middle[id] {
	display: table-cell;
	vertical-align: middle;
	position: static;
}
#inner {
	width: 400px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}
</style>
<title>Insert title here</title>
<script language="javascript" type="text/javascript">
	var xmlHttp;
	function showState(str) {
		// 		if (typeof XMLHttpRequest != "undefined") {
		xmlHttp = new XMLHttpRequest();
		// 		} else if (window.ActiveXObject) {
		// 			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		// 		}

		var url = "suggests.jsp";
		url += "?query=" + str;
		xmlHttp.onreadystatechange = stateChange;
		xmlHttp.open("GET", url, true);
		xmlHttp.send(null);
	}
	function stateChange() {
		if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
			document.getElementById("suggests").innerHTML = xmlHttp.responseText;
		}
	}
</script>
</head>
<body>
	<div id="outer">
		<div id="middle">
			<div id="inner">
				<div style="position: relative; top: 0; left: 0; z-index: 2">
					<img alt="TJUG" src='/jsp-test/img/logo_tjug.png'>
					<form method="post" action="SaveName.jsp">
						<input type="text" name="query" size="40"
							onkeyup="showState(this.value)"> <br> <input
							type="submit" value="search">
					</form>
				</div>
				<div id="suggests" style="position: relative; top: -50; left: 0; z-index: 6;"></div>
			</div>
		</div>
	</div>
</body>
</html>