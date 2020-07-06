<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/">
		<html>
		<head>
			<title>Our Items</title>
			<style>
			h1 { color:#0D3427 }
			img { margin: 5px 0px 10px 80px }
			body { background-color: #4db8ff; font-family:Arial, Helvetica, sans-serif }
			</style>
		</head>
		<body>
			<xsl:for-each select="/items/item">
				<h1>
				    <div><xsl:text> Name: </xsl:text>
					<xsl:value-of select="name" />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="photo">
							</xsl:value-of>
						</xsl:attribute>
					</img> 
					</div>
					<div><xsl:text> Price: </xsl:text>
					<xsl:value-of select="price" /></div>
					
				</h1>
			</xsl:for-each>
		</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
