<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

	<div class="Container" >
		<div class="header" style="border:1 solid; border-color:black; margin:20px;">
			<h1 style="text-align:center;"> formulaire d'inscription</h1>
			<p style="text-align:center;"> (Tous les champs sont obligatoires)</p>
		</div>
		<div style="border:1 solid black; margin-left:20%; margin-top:80px; width:90%;">
		<form action="index" method="post" >
				<div style="display:inline-flex;justify:space-between;">
				<div style="display:inline-block;">
				<h6 >civilite</h6>
			  
			    <input type="text" name="civilite"  style="width:300px;height:40px;border:1 solid gray; border-radius:5px;">
			    </div>
			  	<div style="display:inline-block;margin-left:10px;">
			 	<h6 >CP</h6>
			    <input type="text" name="CP"   style="width:300px;height:40px;border:1 solid gray; border-radius:5px;">
			 	</div>
			 	<div style="display:inline-block;margin-left:10px;">
			  	<h6 >ville</h6>
			    <input type="text" name="ville"   style="width:300px;height:40px;border:1 solid gray; border-radius:5px;">
				</div>
			 	</div>
				
			  <div style="display:inline-flex;justify:space-between;">
				<div style="display:inline-block;">
				<h6 >Nom de famille</h6>
			  
			    <input type="text" name="nom_famille"  style="width:300px;height:40px;border:1 solid gray; border-radius:5px;">
			    </div>
			  	<div style="display:inline-block;margin-left:10px;">
			 	<h6 >Prenom</h6>
			    <input type="text" name="Prenom"   style="width:300px;height:40px;border:1 solid gray; border-radius:5px;">
			 	</div>
			 	
			 	</div>
			 	
			 	<div style="display:inline-flex;justify:space-between;">
				<div style="display:inline-block;">
				<h6 >adresse</h6>
			  
			    <input type="text" name="adresse"  style="width:300px;height:40px;border:1 solid gray; border-radius:5px;">
			    </div>
			  	</div>
			 	
			 	<div>
			 	<div style="display:inline-flex;justify:space-between;">
				<div style="display:inline-block;">
				<h6 >Naissance</h6>
			  
			    <input type="text" name="naissance"  style="width:300px;height:40px;border:1 solid gray; border-radius:5px;">
			    </div>
			  	<div style="display:inline-block;margin-left:10px;">
			 	<h6 >mail</h6>
			    <input type="text" name="mail"   style="width:300px;height:40px;border:1 solid gray; border-radius:5px;">
			 	</div>
			 	<div style="display:inline-block;margin-left:10px;">
			  	<h6 >Telephone</h6>
			    <input type="text" name="Telephone"  style="width:300px;height:40px;border:1 solid gray; border-radius:5px;">
				</div>
				</div>
				<div style="margin-top.30px;">
				
			  	<button type="submit" class="btn btn-primary">soumettre</button>
			  	
			  	</div>
		</form>
		</div>
	</div>
</body>
</html>