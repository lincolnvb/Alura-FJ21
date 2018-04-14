<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<link href="assets/css/jquery.css" rel="stylesheet">
		<script src="assets/js/jquery.js"></script>
		<script src="assets/js/jquery-ui.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		
  
		<meta charset="UTF-8">
		<title>Adicionar Contato</title>
	</head>
	<body>
		<c:import url="header.html"/>
		<form action="mvc?logica=AdicionaContatoLogic">
			Nome: 
			<input type="text" name="nome"/> <br />
			
			Email:
			<input type="email" name="email"/> <br />
			
			Endereco:
			<input type="text" name="endereco"/> <br />
			
			Data de nascimento:
			<tags:campoData dateType="dataNascimento"/> <br />
					
			<button>Adiciona</button>
			 
		</form>
		<c:import url="footer.html"/>
	</body>
</html>