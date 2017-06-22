<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head></head>
<body onload="callPrintPages()">
	<div>
		<h2 id="printMessage"></h2>
		<c:choose>
			<c:when test="${empty images}">
				<td colspan="3" align="center"><b>Unable to load PDF Pages.
						Try again</b></td>
			</c:when>
			<c:otherwise>
				<c:forEach items="${images}" var="page" varStatus="status">
					<div>
						<img src="<c:url value='/previewImage/${page.id}' />" />
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>

	<script>
	function callPrintPages() {
		window.print();
		window.location.href = "<c:url value='/attachments/${citationId}' />";
	}
	</script>
</body>
</html>