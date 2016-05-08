<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:template match="/">
		<html> 
			<head>
				<title>Credencial</title>
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />
				<link rel="stylesheet" href="css/Credencial.css" />
				<link rel="stylesheet" href="css/main.css" />
				<link rel="stylesheet" href="css/style.css" />
				<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,400italic,600italic,700' rel='stylesheet' type='text/css' />
			</head>

			<body>
				<!-- Page Wrapper -->
				<div id="page-wrapper">

					<!-- Header -->
					<header id="header" >
						<h1>Instituto Politécnico Nacional | Escuela Superior de Cómputo</h1>
					</header>

					<!-- Main -->
					<article id="main">

						<header>
							<h2>Credencial Generada del alumno
								<br />
								<xsl:value-of select='Escuela/Carrera/Alumno/@nombre' />
							</h2>
						</header>

						<!-- Principal -->
						<section id="searchPlace" class="wrapper style5">
							
							<!-- Credencial -->
							<xsl:for-each select='Escuela'>
								<div class='credencialAnverso'>
									<div class='fotoAlumno'>
										<xsl:element name='img'> 
											<xsl:attribute name='src'> 
												<xsl:value-of select='Carrera/Alumno/@foto'/>
											</xsl:attribute>
										</xsl:element>
									</div>

									<div class='encabezadoAnverso'>  
										<p><xsl:value-of select='@Nombre' /></p>
										<img id="escuela" src='images\logoE.png' />
									</div>

									<div class='datos'>
										<p><xsl:value-of select='Carrera/Alumno/@boleta' /></p>
										<p><xsl:value-of select='Carrera/Alumno/@telefono' /></p>
										<p><xsl:value-of select='Carrera/Alumno/@nombre' /></p>
									</div>
								</div>

								<div class='credencialReverso'>
									<div class='encabezadoReverso'>
										PROGRAMA ACADÉMICO
										<p><xsl:value-of select='Carrera/@Nombre' /></p>
										Director
										<p>Dr. Flavio Arturo Sánchez Garfias</p>
									</div>

									<div class='logoInstituto'>
										<img src='images/logoP.png' />
									</div>

									<div class='direccion'>
										<p><xsl:value-of select='@Direccion' /></p>
									</div>
								</div>
							</xsl:for-each>
						</section>
					</article>

					<!-- Footer -->
					<footer id="footer">
						<ul class="copyright">
							<li>Marco Antonio Rubio Cortés - 2015630446 - ma.rubiocor@outlook.com</li>
						</ul>
						<ul class="copyright">
							<li>David Vega Ramírez - 2015630518 - vg.ursa@gmail.com</li>
						</ul>
						<ul class="copyright">
							<li>Credits: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</footer>
				</div>

				<!-- Scripts -->
				<script src="js/jquery.min.js"></script>
				<script src="js/jquery.scrollex.min.js"></script>
				<script src="js/jquery.scrolly.min.js"></script>
				<script src="js/skel.min.js"></script>
				<script src="js/util.js"></script>
				<script src="js/main.js"></script>
			</body>
		</html>     
	</xsl:template>
</xsl:stylesheet>