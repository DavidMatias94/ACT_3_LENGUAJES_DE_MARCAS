<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


	<xsl:template match="/">
	 
		<html>
			<head>
				
					
				<title>Instituto tecnológico EDIX</title>
			<!-- Este link lleva al CSS que da el estilo a la página-->
			 <link rel="stylesheet" href="ite.css" /> 

		
				
			</head>
			<body>
				<main>

					<header>

				 		<img src="https://keystoneacademic-res.cloudinary.com/image/upload/a_0/e_trim:10:white/f_auto,q_auto,h_76/element/14/141115_logotipo-edix-negro-policromatico-horizontal.png" ></img>

					</header>

					

				<nav>
					
						<ul>
							<li><a href="Formulario.html">Contacto</a></li>
							
						  </ul>
					  
					

				</nav>

			<section>

				

				<h2>Nuestros profesores</h2>

				<xsl:for-each select="ite/profesores/profesor">

					<ul>
						<li><xsl:value-of select="nombre"/></li>
						
					</ul>

				</xsl:for-each>

			</section>

			<aside>

				<h2>Nuestra oferta de cursos:</h2>


				<table border="2">

					<tr>
						<th>Ciclo</th>
						<th>Nombre</th>
						<th>Grado</th>
						
					</tr>

					
				<xsl:for-each select="ite/ciclos/ciclo">
					
						<tr>
							<!-- Con arroba (@) accedemos a atributos -->
							<td><xsl:value-of select="@id"/></td>
							<td><xsl:value-of select="nombre"/></td>
							<td><xsl:value-of select="grado"/></td>
							
						</tr>
					

					</xsl:for-each>

					</table>

					

				
					<br>

					</br>
				
					<h2>Otros miembros de nuestro equipo:</h2>

					<table border="3" color="red">

						<tr>
						
							<th>Nombre</th>
							<th>Despacho</th>
						</tr>
						
						<xsl:for-each select="ite/director">

						<tr>

							<td><xsl:value-of select="nombre"/></td>
							<td><xsl:value-of select="despacho"/></td>
						</tr>


						</xsl:for-each>

					</table>

					

					<table border="3" color="red">

						<tr>
						
							<th>Nombre</th>
							<th>Despacho</th>
						</tr>
						
						<xsl:for-each select="ite/jefe_estudios">

						<tr>

							<td><xsl:value-of select="nombre"/></td>
							<td><xsl:value-of select="despacho"/></td>
						</tr>


						</xsl:for-each>

					</table>

					<br></br>
					<br></br>
					<br></br>
					<br></br>
					<br></br>


					<h5>Teléfono de contacto:</h5>
				
				<h5><xsl:value-of select="ite/telefono"/></h5>
				<h5><xsl:value-of select="ite/empresa"/></h5>

				</aside>

				



				
					<footer>
						<ul>
							<li><a href="https://institutotecnologico.edix.com/">Enlace a página web</a></li>
							
						  </ul>

						 
					</footer>
			


				

				</main>
			</body>
		</html>
			
	</xsl:template>
</xsl:stylesheet>