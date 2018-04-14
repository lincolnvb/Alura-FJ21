<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="novaTarefa">Criar Nova tarefa</a>

	<table class=table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Descricao</th>
				<th>Finalizacao</th>
				<th>Data de finalizacao</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${tarefas}" var="tarefa">
				<tr>
					<td>${tarefa.id}</td>
					<td>${tarefa.descricao}</td>
					<c:if test="${tarefa.finalizado eq false}">
						<td>Nao finalizado</td>
					</c:if>
					<c:if test="${tarefa.finalizado eq true}">
						<td>Finalizado</td>
					</c:if>
					<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
							pattern="dd/MM/yyyy" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>