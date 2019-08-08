<?xml version="1.0" encoding="ISO-8859-1" standalone="no"?>

<xslt:transform
	version="1.0"
	xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
	>

<!--
    *** Basisregeln für die 7 Knotentypen von XPath ***

    ÷ Wurzelknoten . . . . . . . . . [/]
    ÷ Elementknoten² . . . . . . . . [*]
    ÷ Textknoten². . . . . . . . . . [text()]
    ÷ Attributknoten . . . . . . . . [attribute::*] [@*]
    ÷ Namensraumknoten¹. . . . . . . [ NICHT MÖGLICH IN XSLT ]
    ÷ Processing-Instruction-Knoten² [processing-instruction()]
    ÷ Kommentarknoten² . . . . . . . [comment()]

    ¹ [...] There is no pattern that can match a namespace node;  so, the built-in
      template rule is the only template rule that is applied for namespace nodes.
      [...]
                                         [http://www.w3.org/TR/xslt#built-in-rule]
      Hm, komisch.  In XPath v1.0 hingegen existiert die Möglichkeit,  Namensraum-
      knoten zu benennnen ...

    ² [node()]  entspricht  jedem Kindknoten  (also allem außer Attributs-,
      Wurzel- & Namespace-Knoten)
-->

<!--== Wurzelknoten ==-->
<xslt:template match="/">
	<!-- store matching node -->
	<xslt:variable name="this" select="current()" />
	
		<!-- transform child nodes -->
	<xslt:apply-templates select="($this)/node()" />
</xslt:template>

<!--== Elementknoten ==-->
<xslt:template match="*">
	<!-- store matching node -->
	<xslt:variable name="this" select="current()" />
	
	<!-- copy that node -->
	<xslt:copy>
		<!-- transform attributes and child nodes -->
		<xslt:apply-templates select="($this)/@*|($this)/node()" />
	</xslt:copy>
</xslt:template>

<!--== Textknoten ==-->
<xslt:template match="text()">
	<!-- copy that node -->
	<xslt:copy />
</xslt:template>

<!--== Attributknoten ==-->
<xslt:template match="@*">
	<!-- copy that node -->
	<xslt:copy />
</xslt:template>

<!--== Processing-Instruction-Knoten ==-->
<xslt:template match="processing-instruction()">
	<!-- copy that node -->
	<xslt:copy />
</xslt:template>

<!--== Kommentarknoten ==-->
<xslt:template match="comment()">
	<!-- copy that node -->
	<xslt:copy />
</xslt:template>

</xslt:transform>