## [Training] Weekly Assingment 5 - Terraform
Company Alpha is a global company with two regional offices, located in Oregon and Northern Virginia. The CTO of the company would like to host their application on the AWS Cloud. 
He would like to have a single public-facing EC2 and a PostgreSQL database. He also wants to have a customized VPC instead of the default one. 
This setup needs to be deployed in the customer’s regional offices.


[Training-Assignment-5-Architecture.drawio](https://github.com/user-attachments/files/21819388/Training-Assignment-5-Architecture.drawio)
<mxfile host="app.diagrams.net" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36" version="28.0.7">
  <diagram name="Page-1" id="us-j5HEDvc6BtlQDiR_q">
    <mxGraphModel dx="1281" dy="2447" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1200" pageHeight="1920" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="ON2FSCemYnbZDFyny8tu-1" value="AWS Cloud" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_aws_cloud_alt;strokeColor=#232F3E;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#232F3E;dashed=0;" vertex="1" parent="1">
          <mxGeometry x="20" y="-320" width="1190" height="680" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-22" value="Region - N. Virginia" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_region;strokeColor=#00A4A6;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=1;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-1">
          <mxGeometry x="630" y="30" width="535" height="620" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-24" value="Private subnet" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#00A4A6;fillColor=#E6F6F7;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=0;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-22">
          <mxGeometry x="35" y="360" width="190" height="150" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-25" value="PostgreSQL RDS" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#C925D1;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.rds;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-24">
          <mxGeometry x="70" y="50" width="50" height="50" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-26" value="Public subnet" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#7AA116;fillColor=#F2F6E8;verticalAlign=top;align=left;spacingLeft=30;fontColor=#248814;dashed=0;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-22">
          <mxGeometry x="35" y="115" width="190" height="150" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-27" value="Alpha App" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#ED7100;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-26">
          <mxGeometry x="70" y="50" width="50" height="50" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-31" value="&lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;VPC- N. Virginia&lt;/font&gt;" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_vpc2;strokeColor=#8C4FFF;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#AAB7B8;dashed=0;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-22">
          <mxGeometry x="-12.5" y="35" width="560" height="540" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-28" value="Availability Zone B" style="fillColor=none;strokeColor=#147EBA;dashed=1;verticalAlign=top;fontStyle=0;fontColor=#147EBA;whiteSpace=wrap;html=1;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-31">
          <mxGeometry x="307.5" y="32.5" width="220" height="475" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-29" value="Public subnet" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#7AA116;fillColor=#F2F6E8;verticalAlign=top;align=left;spacingLeft=30;fontColor=#248814;dashed=0;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-31">
          <mxGeometry x="322.5" y="75" width="190" height="150" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-30" value="Private subnet" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#00A4A6;fillColor=#E6F6F7;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=0;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-31">
          <mxGeometry x="322.5" y="320" width="190" height="150" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-43" value="Security group - db" style="fillColor=none;strokeColor=#DD3522;verticalAlign=top;fontStyle=0;fontColor=#DD3522;whiteSpace=wrap;html=1;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-31">
          <mxGeometry x="85" y="345" width="115" height="105" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-46" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="ON2FSCemYnbZDFyny8tu-31" source="ON2FSCemYnbZDFyny8tu-45" target="ON2FSCemYnbZDFyny8tu-43">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-45" value="Security group - app" style="fillColor=none;strokeColor=#DD3522;verticalAlign=top;fontStyle=0;fontColor=#DD3522;whiteSpace=wrap;html=1;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-31">
          <mxGeometry x="85" y="105" width="115" height="105" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-23" value="Availability Zone A" style="fillColor=none;strokeColor=#147EBA;dashed=1;verticalAlign=top;fontStyle=0;fontColor=#147EBA;whiteSpace=wrap;html=1;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-31">
          <mxGeometry x="32.5" y="35" width="220" height="475" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-47" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" edge="1" parent="ON2FSCemYnbZDFyny8tu-22" source="ON2FSCemYnbZDFyny8tu-33" target="ON2FSCemYnbZDFyny8tu-45">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-33" value="IGW" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#8C4FFF;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.internet_gateway;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-22">
          <mxGeometry x="242.5" y="15" width="50" height="50" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-5" value="&lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;VPC- Oregon&lt;/font&gt;" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_vpc2;strokeColor=#8C4FFF;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#AAB7B8;dashed=0;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-1">
          <mxGeometry x="20" y="70" width="560" height="540" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-2" value="Region - Oregon" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_region;strokeColor=#00A4A6;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=1;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-1">
          <mxGeometry x="50" y="35" width="565" height="640" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-3" value="Availability Zone A" style="fillColor=none;strokeColor=#147EBA;dashed=1;verticalAlign=top;fontStyle=0;fontColor=#147EBA;whiteSpace=wrap;html=1;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-2">
          <mxGeometry x="20" y="65" width="220" height="475" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-7" value="Private subnet" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#00A4A6;fillColor=#E6F6F7;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=0;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-2">
          <mxGeometry x="35" y="360" width="190" height="150" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-10" value="PostgreSQL RDS" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#C925D1;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.rds;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-7">
          <mxGeometry x="70" y="50" width="50" height="50" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-42" value="Security group - db" style="fillColor=none;strokeColor=#DD3522;verticalAlign=top;fontStyle=0;fontColor=#DD3522;whiteSpace=wrap;html=1;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-7">
          <mxGeometry x="37.5" y="22.5" width="115" height="105" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-8" value="Public subnet" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#7AA116;fillColor=#F2F6E8;verticalAlign=top;align=left;spacingLeft=30;fontColor=#248814;dashed=0;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-2">
          <mxGeometry x="35" y="115" width="190" height="150" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-9" value="Alpha App" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#ED7100;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-8">
          <mxGeometry x="70" y="50" width="50" height="50" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-41" value="Security group - app" style="fillColor=none;strokeColor=#DD3522;verticalAlign=top;fontStyle=0;fontColor=#DD3522;whiteSpace=wrap;html=1;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-8">
          <mxGeometry x="37.5" y="22.5" width="115" height="105" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-11" value="Availability Zone B" style="fillColor=none;strokeColor=#147EBA;dashed=1;verticalAlign=top;fontStyle=0;fontColor=#147EBA;whiteSpace=wrap;html=1;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-2">
          <mxGeometry x="270" y="65" width="220" height="475" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-14" value="Private subnet" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#00A4A6;fillColor=#E6F6F7;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=0;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-2">
          <mxGeometry x="285" y="360" width="190" height="150" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-49" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" edge="1" parent="ON2FSCemYnbZDFyny8tu-2" source="ON2FSCemYnbZDFyny8tu-16" target="ON2FSCemYnbZDFyny8tu-41">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-16" value="IGW" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#8C4FFF;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.internet_gateway;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-2">
          <mxGeometry x="230" y="5" width="50" height="50" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-39" value="Public subnet" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#7AA116;fillColor=#F2F6E8;verticalAlign=top;align=left;spacingLeft=30;fontColor=#248814;dashed=0;" vertex="1" parent="ON2FSCemYnbZDFyny8tu-2">
          <mxGeometry x="285" y="115" width="190" height="150" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-44" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="ON2FSCemYnbZDFyny8tu-2" source="ON2FSCemYnbZDFyny8tu-41" target="ON2FSCemYnbZDFyny8tu-42">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-19" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="ON2FSCemYnbZDFyny8tu-18" target="ON2FSCemYnbZDFyny8tu-16">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-18" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#232F3D;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.user;" vertex="1" parent="1">
          <mxGeometry x="300" y="-450" width="50" height="50" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-34" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="ON2FSCemYnbZDFyny8tu-32" target="ON2FSCemYnbZDFyny8tu-33">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="ON2FSCemYnbZDFyny8tu-32" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#232F3D;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.user;" vertex="1" parent="1">
          <mxGeometry x="892.5" y="-450" width="50" height="50" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
