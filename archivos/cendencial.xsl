<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
	<xsl:template match='/'>  
		<html> 
			<head>  
				<meta charset='UTF-8'/>
				<style> 
					#credencial {
						border-radius: 10px;
						border: 1px solid black;
						overflow: auto;
						width: 438px; 
						height: 254px; 
					}
					#encabezado { 
						width: 314px; 
						padding:5px; 
						float:left;  
					} 
					#logoEscuela {
						overflow: hidden;      
						padding:6px; 
					} 
					#logoEscuela img{
						width:100px; 
					}
					#foto { 
						padding:6px;
						float:left; 
					}
					#datos { 
						overflow: hidden; 
						padding:6px; 
					}
					#logoInstituto {  
						overflow: hidden;   
						padding:6px;
					}  
				</style>
				<title>Credencial</title> 
			</head>  
			<body>  
				<xsl:for-each select='Escuela'>
					<div id='credencial'>
						<div id='encabezado'>  
							<h2>Instituto Politécnico Nacional</h2>   
							<h3>Escuela Superior de Cómputo</h3>  
						</div> 
						<div id='logoEscuela' class=''>
							<img src='imagen base 64' alt='' width='74' height='101'/>
						</div>";
						<br/>  
						<div id='foto'> 
								<xsl:element name='img'> 
									<xsl:attribute name='src'> 
										<xsl:value-of select='Carrera/Alumno/@foto'/>
										<!--nombre etiqueta/nombre etiqueta hijo/@nombre del elemento de la etiqueta-->
									</xsl:attribute>
									<xsl:attribute name='height'>101
									</xsl:attribute> 
									<xsl:attribute name='width'>74
									</xsl:attribute>
								</xsl:element>   
						</div>
						<div id='datos'>
							<h4>
								<xsl:value-of select='Carrera/Alumno/@nombre'>
								</xsl:value-of>
							</h4>
							<h4>
								<xsl:value-of select='Carrera/Alumno/@boleta'>
								</xsl:value-of>
							</h4>
							<h4>
								<xsl:value-of select='Carrera/Alumno/@telefono'>
								</xsl:value-of>
							</h4>
						</div>
					</div>  
					<br/>
					<br/>  
					<div id='credencial'>  
						<div id='encabezado'> 
							<p>Av. Juan de Dios Bátiz esq. Av. Miguel Othón de Mendizába, Gustavo A. Madero, Lindavista, 07738 Ciudad de Mexico, D.F.</p>
						</div>
						<div id='logoInstituto' class=''>
							<img src='imagen base 64' alt='' width='74' height='101'/>
						<div id='datos'>    
							<p><xsl:value-of select='Carrera/@Nombre'></xsl:value-of></p>
						</div>
					</div> 
					</div>
				</xsl:for-each>  
			</body> 
		</html>     
	</xsl:template>
</xsl:stylesheet>