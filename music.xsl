<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Hip-Hop Hub</title>
                <style>
                    body { font-family: 'Roboto', sans-serif; background-color: #f4f4f4; color: #000000; }
                    h1 { color: #000000; text-align: center; }
                    ul { list-style-type: none; padding: 0; }
                    li { margin: 10px 0; padding: 15px; border: 1px solid #ddd; border-radius: 8px; background-color: #ffffff; }
                    .songTitle { font-weight: bold; color: #000000; }
                    .artist { color: #000000; font-weight: bold; margin-top: 10px; }
                    .albums { color: #000000; margin-top: 10px; }
                    .album-item { background-color: #f9f9f9; padding: 8px; margin: 5px 0; border-radius: 5px; border: 1px solid #ddd; }
                    .debutYear { color: #000000; font-style: italic; margin-top: 10px; }
                </style>
            </head>
            <body>
                <h1>Hip-Hop Hub</h1>
                <ul>
                    <xsl:for-each select="music/song">
                        <li>
                            <div class="songTitle"><xsl:value-of select="songTitle"/></div>
                            <div class="artist">Artist: <xsl:value-of select="artist"/></div>
                            <div class="albums">
                                Albums:
                                <ul>
                                    <xsl:for-each select="albums/album">
                                        <li class="album-item"><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                            <div class="debutYear">Debut Year: <xsl:value-of select="debutYear"/></div>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>