<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" encoding="utf-8" indent="yes" />
<xsl:template match="/">
<html lang="en"> 
<head>
<link rel="stylesheet" href="style1.css"/>
<script type='text/javascript' src='https://www.google.com/jsapi'></script>
</head>
<body> 
    <div class="view">
    <div class="header-wrapper">         
	<h1>Account Fact Sheet - <xsl:value-of select="//TAB1/ZTDS_ADDRESS_DATA/NAME1"/></h1> 
    </div> 
	    <section > 
		<table align="center" border="0">
		<!-- Quick info start -->
					<tr>
		<td valign="top" align="left">
            <div class="group-wrapper"  valign="top"> 
                
					   <table class="block" > 
                   <tr class="header">    
                        <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="4"> Quick Info</td> 
                     </tr>
					 <tr>
					
					<td class="field">Last Order</td><td colspan="3"> 
					<xsl:if test="//TAB21/ZTDS_CFS_QUICKINFO/LAST_ORDER!=''" >
					
<xsl:value-of select="number(//TAB21/ZTDS_CFS_QUICKINFO/LAST_ORDER)"/> from <xsl:value-of select="//TAB21/ZTDS_CFS_QUICKINFO/DATE_LAST_ORDER"/>
					</xsl:if>
					</td>
					</tr>
					
					<tr>
					<td class="field">Last Billing Document</td><td colspan="3"> 
					<xsl:if test="//TAB21/ZTDS_CFS_QUICKINFO/LAST_INVOICE!=''" >
					<xsl:value-of select="number(//TAB21/ZTDS_CFS_QUICKINFO/LAST_INVOICE)"/> from <xsl:value-of select="//TAB21/ZTDS_CFS_QUICKINFO/DATE_LAST_INVOICE"/>
					</xsl:if>
					
					</td>
					</tr>
					
					<tr>
					<td class="field">Last Delivery</td><td colspan="3"> 
					<xsl:if test="//TAB21/ZTDS_CFS_QUICKINFO/LAST_DELIVERY!=''" >
					<xsl:value-of select="number(//TAB21/ZTDS_CFS_QUICKINFO/LAST_DELIVERY)"/> from <xsl:value-of select="//TAB21/ZTDS_CFS_QUICKINFO/DATE_LAST_DELIVERY"/> 
					</xsl:if>
				
					</td>
					</tr>
					
					<tr>
					<td class="field">Next Contact</td><td><xsl:value-of select="//TAB21/ZTDS_CFS_QUICKINFO/NEXT_CONTACT"/></td>
					</tr>
				<!--	<tr>
					<td class="field">Date Of Last Dunn Notice</td><td> <xsl:value-of select="//TAB21/TDS_CFS_QUICKINFO/DATE_LAST_REMINDER"/></td>
					</tr> -->
					<tr>
					<td class="field">Maximum Credit Limit Used</td><td> <xsl:value-of select="number(//TAB21/ZTDS_CFS_QUICKINFO/CONSUMPTION_CREDIT_LIMIT)"/> %
					 
					</td>
					 </tr>
					 <tr>
					    <td class="header1" colspan="2">
					    </td>
					    
					 </tr>
					  <tr>
					    <td class="field">Orders Blocked For Delv</td><td><xsl:value-of select="number(//TAB21/ZTDS_CFS_QUICKINFO/NUM_DELIVERY_BLOCK)"/>
					    
					    </td>
					    
					 </tr>
					  <tr>
					    <td class="field">Orders Blocked For Billing</td><td> <xsl:value-of select="number(//TAB21/ZTDS_CFS_QUICKINFO/NUM_INVOICE_BLOCK)"/>
					    </td>
					    
					 </tr>
					  <tr>
					    <td class="field">Back Orders </td><td><xsl:value-of select="number(//TAB21/ZTDS_CFS_QUICKINFO/NUM_BACKLOG)"/>
					    </td>
					  
					 </tr>
					 
					 <tr>
					 <td class="field">Open Sales Orders</td><td><xsl:value-of select="number(//TAB21/ZTDS_CFS_QUICKINFO/NUM_OPEN_ORDER)"/>
					    </td>
					 </tr>
					 
					 <tr>
					 <td class="field">Open Deliveries</td><td><xsl:value-of select="number(//TAB21/ZTDS_CFS_QUICKINFO/NUM_OPEN_DELIVERY)"/>
					    </td>
					 </tr>
					 
					 <tr>
					   <td class="field">Open Billing Docs </td><td><xsl:value-of select="number(//TAB21/ZTDS_CFS_QUICKINFO/NUM_OPEN_INVOICE)"/>
					    </td>
					 </tr>
					 </table>
			</div> 
			</td>
			</tr>
		<!-- Quick info End -->
		<!-- Address start -->
		<tr>
		<td valign="top" align="left">
            <div class="group-wrapper"  valign="top"> 
                
					   <table class="block"> 
                   <tr class="header">    
                    <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;"> Address</td> 
                     </tr>
					 <tr>
					 <td>
				<!--	<xsl:value-of select="//TAB1/ZTDS_CFS_ADDRESS_DATA/TITLE_TEXT"/> <br/> -->
					<xsl:value-of select="//TAB1/ZTDS_ADDRESS_DATA/NAME1"/> <br/>
					 <xsl:value-of select="//TAB1/ZTDS_ADDRESS_DATA/STREET"/><br/>
					 <xsl:value-of select="//TAB1/ZTDS_ADDRESS_DATA/CITY1"/><xsl:text>  </xsl:text><xsl:value-of select="//TAB1/ZTDS_ADDRESS_DATA/REGION"/><xsl:text>  </xsl:text> <xsl:value-of select="//TAB1/ZTDS_ADDRESS_DATA/POST_CODE1"/><br/>
					<xsl:value-of select="//TAB1/ZTDS_ADDRESS_DATA/INTCA3"/>
					 </td>
					 </tr>
					 </table>
			</div> 
			</td>
			</tr>
		<!-- Address End-->
		
<!--		<tr>
			<td valign="top">
			 <div class="group-wrapper" > 
                
					   <table class="block" > 
                   <tr class="header">    
              <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="2">Classification</td> 
                     </tr>
					 <tr>
					 <td class="field">Nielsion ID</td> <td><xsl:value-of select="//TAB2/TDS_CFS_CLASSIFICATION/NIELS"/></td>
					 </tr>
					 <tr>
					<td class="field">Regional Market</td> <td> <xsl:value-of select="//TAB2/TDS_CFS_CLASSIFICATION/RPMKR"/></td>
					</tr>
						 <tr>
					<td class="field">Customer Classification</td><td><xsl:value-of select="//TAB2/TDS_CFS_CLASSIFICATION/KUKLABEZ"/></td>
						 </tr>
						 	 <tr>
					<td class="field">Industry Sector</td><td><xsl:value-of select="//TAB2/TDS_CFS_CLASSIFICATION/BRSCHBEZ"/></td>
					
					 </tr>
					 </table>
			</div> 
			</td>
			</tr>  -->
			
	<!-- Last SD Doc Start-->
			 <tr>
		<td valign="top" align="left">
            <div class="group-wrapper"  valign="top"> 
                
					   <table class="block"> 
                   <tr class="header">    
                        <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="4"> Last SD Documents</td> 
                     </tr>
					 <tr>
					 <td class="header1">Order</td>
					 <td class="header1">Date</td>
					 <td class="header1">Net Value</td>
					 <td class="header1">Status</td>
					 </tr>
					 <xsl:for-each select="//TAB15/ZTDS_CFS_LAST_SD_DOC[VBTYP_TEXT='Order']">
					 <tr>
					<td class="field"><xsl:value-of select="VBELN"/> </td>
					<td><xsl:value-of select="DATUM"/>  </td>
					<td>
					    <xsl:value-of select="NETTOWERT"/>,
					<xsl:value-of select="CURRENCY"/>
					</td>
					<td><xsl:value-of select="STATUS"/>  </td>
					</tr>
		 </xsl:for-each>
					
			    </table>
			</div> 
			</td>
			
			</tr>
			<!-- Last SD Doc  end -->	
			
			<!-- Shipping start -->
			<tr>
		<td valign="top" align="left">
            <div class="group-wrapper"  valign="top"> 
                
					   <table class="block"> 
                   <tr class="header">    
                   <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="4"> Shipping [Sales Area : <xsl:value-of select="//TAB7/ZTDS_CFS_SHIPPING_CUST/VKORG"/>/<xsl:value-of select="//TAB7/ZTDS_CFS_SHIPPING_CUST/VTWEG"/>/<xsl:value-of select="//TAB7/ZTDS_CFS_SHIPPING_CUST/SPART"/>]</td>				   
                     </tr>
					 <tr>
					 <td class="field">Delivery Priority</td><td><xsl:value-of select="//TAB7/ZTDS_CFS_SHIPPING_CUST/TPRITBEZEI"/></td>
					
					</tr>
					
					<tr>
					 <td class="field">Shipping Condition</td><td> <xsl:value-of select="//TAB7/ZTDS_CFS_SHIPPING_CUST/TVSBTVTEXT"/></td>
					
					 </tr>
					 <tr>
					  <td class="field">Delivering Plant</td><td><xsl:value-of select="//TAB7/ZTDS_CFS_SHIPPING_CUST/WERKNAME1"/></td>
					 </tr>
					<tr> <td class="field">Order Combination</td><td><xsl:value-of select="//TAB7/ZTDS_CFS_SHIPPING_CUST/KZAZU"/></td></tr>
					 <tr><td class="field">Batch Split Allowed</td><td><xsl:value-of select="//TAB7/ZTDS_CFS_SHIPPING_CUST/CHSPL"/></td></tr>
					 </table>
			</div> 
			</td>
			</tr>
			
			<tr>
			<td valign="top">
			 <div class="group-wrapper" > 
                
					   <table class="block"> 
					   
					   <tr class="header">    
                   <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="2">Partial Deliveries [Sales Area : <xsl:value-of select="//TAB8/ZTDS_CFS_PART_DELIVERIES/VKORG"/>/<xsl:value-of select="//TAB8/ZTDS_CFS_PART_DELIVERIES/VTWEG"/>/<xsl:value-of select="//TAB8/ZTDS_CFS_PART_DELIVERIES/SPART"/>]</td>				   
                     </tr>
					   
   
					 <tr>
					 
					 <td class="field">Partial Delivery/Item</td><td><xsl:value-of select="//TAB8/ZTDS_CFS_PART_DELIVERIES/KZTLF_TEXT"/> </td>
					 </tr>
					 <tr>
					 <td class="field">Maximum Partial Deliveries</td><td><xsl:value-of select="//TAB8/ZTDS_CFS_PART_DELIVERIES/ANTLF"/>
					
					 </td>
					 </tr>
					 </table>
			</div> 
			</td>
			</tr>
			
			<!-- Partial Deliveries end -->
			
			<!-- General transportation data -->
   <tr>
		<td valign="top" align="left">
            <div class="group-wrapper"  valign="top"> 
                
					   <table class="block"> 
                   <tr class="header">    
                        <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="2"> General Transportation Data</td> 
                     </tr>
					 <tr>
					 
					<td class="field">Transportation Zone</td><td><xsl:value-of select="//TAB9/ZTDS_CFS_TRANSP_DATA/LZONETEXT"/> </td>
					 </tr>
					 <tr>
					<td class="field">Express Station</td><td><xsl:value-of select="//TAB9/ZTDS_CFS_TRANSP_DATA/BAHNE"/></td>
					</tr>
					 <tr>
					 <td class="field">Train Station</td><td><xsl:value-of select="//TAB9/ZTDS_CFS_TRANSP_DATA/BAHNS"/>
					 </td>
					 </tr>
					 </table>
			</div> 
			</td>
			</tr>
			
			<tr>
			<td valign="top">
			 <div class="group-wrapper" > 
                
					   <table class="block"> 
					   
					    <tr class="header">    
                   <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="2">Billing Document<xsl:text>  </xsl:text>[Sales Area : <xsl:value-of select="//TAB10/ZTDS_CFS_BILLING_DATA/VKORG"/>/<xsl:value-of select="//TAB10/ZTDS_CFS_BILLING_DATA/VTWEG"/>/<xsl:value-of select="//TAB10/ZTDS_CFS_BILLING_DATA/SPART"/>]</td>				   
                     </tr>
          
					 <tr>
					 
					 <td class="field">Subs.Invoice Procg</td><td><xsl:value-of select="//TAB10/ZTDS_CFS_BILLING_DATA/PERRL"/>  </td>
					 </tr>
					 <tr>
					 <td class="field">Invoicing Dates</td><td><xsl:value-of select="//TAB10/ZTDS_CFS_BILLING_DATA/PERFK"/>
					
					 </td>
					 </tr>
					 </table>
			</div> 
			</td>
			</tr>
	
		   <tr>
		<td valign="top" >
            <div class="group-wrapper"  valign="top"> 
                
					   <table class="block"> 
                   
				    <tr class="header">    
                   <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="2">Payment and Delivery Terms [Sales Area : <xsl:value-of select="//TAB11/ZTDS_CFS_DELIVERY_TERMS/VKORG"/>/<xsl:value-of select="//TAB11/ZTDS_CFS_DELIVERY_TERMS/VTWEG"/>/<xsl:value-of select="//TAB11/ZTDS_CFS_DELIVERY_TERMS/SPART"/>]</td>				   
                     </tr>
				   
					 <tr>
					 
					<td class="field">Incoterms</td><td><xsl:value-of select="//TAB11/ZTDS_CFS_DELIVERY_TERMS/INCO1"/><xsl:text>  </xsl:text>
					   <xsl:value-of select="//TAB11/ZTDS_CFS_DELIVERY_TERMS/INCO2"/> </td>
					</tr>
					 <tr>
					<td class="field">Payment Terms</td><td><xsl:value-of select="//TAB11/ZTDS_CFS_DELIVERY_TERMS/ZTERM"/> 
					 
					 </td>
					 </tr>
					 </table>
			</div> 
			</td>
			
			</tr>
		   <tr>
		<td valign="top" align="left">
            <div class="group-wrapper"  valign="top"> 
                
					   <table class="block"> 
                   
				    <tr class="header">    
                   <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="3">Partners [Sales Area : <xsl:value-of select="//TAB12/ZTDS_CFS_PARTNER_DATA/VKORG"/>/<xsl:value-of select="//TAB12/ZTDS_CFS_PARTNER_DATA/VTWEG"/>/<xsl:value-of select="//TAB12/ZTDS_CFS_PARTNER_DATA/SPART"/>]</td>
					
                     </tr>
				   
					 <tr>
					 <td class="header1">Partner Function</td>
					 <td class="header1">Number</td>
					 <td class="header1">Name</td>
					 </tr>
					 <tr>
					<td class="field">
					    <xsl:for-each select="//TAB12/ZTDS_CFS_PARTNER_DATA/PARTNER_FUNCTIONS/ZTDS_PARTNER_FUNCTIONS">
					 <xsl:value-of select="TPARTVTEXT"/><br/>
					
					 </xsl:for-each>
					</td>
					<td >
					 <xsl:for-each select="//TAB12/ZTDS_CFS_PARTNER_DATA/PARTNER_FUNCTIONS/ZTDS_PARTNER_FUNCTIONS">
					 <xsl:value-of select="number(KUNN2)"/><br/>
					
					 </xsl:for-each>   
					</td>
					<td>
					
					 <xsl:for-each select="//TAB12/ZTDS_CFS_PARTNER_DATA/PARTNER_FUNCTIONS/ZTDS_PARTNER_FUNCTIONS">
					 <xsl:value-of select="NAME1"/><br/>
					
					 </xsl:for-each>   
					</td>
					
					
					
					</tr>
					 </table>
			</div> 
			</td>
			
			</tr>
		   <!-- Partners end -->
		   <!-- Pricing start -->
		   <tr>
			<td valign="top">
			<div class="group-wrapper" > 
                
					   <table class="block"> 
                   <tr class="header">    
                   <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="2">Pricing [Sales Area : <xsl:value-of select="//TAB6/ZTDS_CFS_PRICING_CUST/VKORG"/>/<xsl:value-of select="//TAB6/ZTDS_CFS_PRICING_CUST/VTWEG"/>/<xsl:value-of select="//TAB6/ZTDS_CFS_PRICING_CUST/SPART"/>]</td>
                     </tr>
					 <tr>
					 
					<td class="field">Price Group</td><td><xsl:value-of select="//TAB6/ZTDS_CFS_PRICING_CUST/KONDABEZ"/></td>
					</tr>
					 <tr>
					<td class="field">Customer Pricing Proc</td><td><xsl:value-of select="//TAB6/ZTDS_CFS_PRICING_CUST/KALKSBEZ"/></td>
					</tr>
					 <tr>
					<td class="field">Price List</td><td><xsl:value-of select="//TAB6/ZTDS_CFS_PRICING_CUST/PLTYPBEZ"/>
					</td>
					 </tr>
					 </table>
			</div> 
			</td>
			
			</tr>
		   <!-- pricing ends -->
			<tr>
		<td valign="top">
            <div class="group-wrapper" > 
                
					   <table class="block" > 
                   <tr class="header">    
                        <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="2"> Key Figures</td> 
                     </tr>
					 <tr>
					 <td class="field">Annual Sales </td>
					 <td><xsl:value-of select="//TAB3/ZTDS_CFS_KEY_FIGURES/UMSA1"/><xsl:text> </xsl:text>
					<xsl:value-of select="//TAB3/ZTDS_CFS_KEY_FIGURES/UWAER"/> in <xsl:value-of select="number(//TAB3/ZTDS_CFS_KEY_FIGURES/UMJAH)"/> </td></tr>
					 <tr>
					 <td class="field">Employee</td><td><xsl:value-of select="number(//TAB3/ZTDS_CFS_KEY_FIGURES/JMZAH)"/> in <xsl:value-of select="//TAB3/TDS_CFS_KEY_FIGURES/JMJAH"/></td></tr>
					 <tr><td class="field">Legal Status</td><td><xsl:value-of select="//TAB3/ZTDS_CFS_KEY_FIGURES/GFORMBEZ"/>
					 </td>
					 </tr>
					 </table>
			</div> 
			</td>
			</tr>
			
	<!--		<tr>
			<td valign="top">
			 <div class="group-wrapper" > 
                
					   <table class="block"> 
                   <tr class="header">    
                        <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="2">Contact Person</td> 
                     </tr>
					 <tr>
					
					<td class="field">Name </td><td><xsl:value-of select="//TAB4/TDS_CFS_CONTACT_PERSON/ANRED"/><xsl:text> </xsl:text> <xsl:value-of select="//TAB4/TDS_CFS_CONTACT_PERSON/NAME_TEXT"/></td>
					 </tr>
					 <tr>
					<td class="field">Phone</td><td><a href='tel:{//TAB4/TDS_CFS_CONTACT_PERSON/TELNRLONG}'>
					<xsl:value-of select="//TAB4/TDS_CFS_CONTACT_PERSON/TELNRLONG"/></a></td>
					</tr>
					<tr>
					<td class="field">Email</td><td><a href='mailto:{//TAB4/TDS_CFS_CONTACT_PERSON/EMAIL}'>
					<xsl:value-of select="//TAB4/TDS_CFS_CONTACT_PERSON/EMAIL"/></a></td>
					</tr>
					 <tr>
					<td class="field">Department</td><td><xsl:value-of select="//TAB4/TDS_CFS_CONTACT_PERSON/ABTNRBEZ"/></td>
					 </tr>
					 <tr>
					<td class="field">Function</td><td><xsl:value-of select="//TAB4/TDS_CFS_CONTACT_PERSON/PAFKTBEZ"/>
					</td>
					 </tr>
					 </table>
			</div> 
			</td>
			</tr>
			
			-->
			
			<tr>
			<td valign="top">
			<div class="group-wrapper" > 
                
					   <table class="block"> 
                   <tr class="header">    
                   <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="4">Order [Sales Area : <xsl:value-of select="//TAB5/ZTDS_CFS_ORDER_INFO_CUST/VKORG"/>/<xsl:value-of select="//TAB5/ZTDS_CFS_ORDER_INFO_CUST/VTWEG"/>/<xsl:value-of select="//TAB5/ZTDS_CFS_ORDER_INFO_CUST/SPART"/>]</td>
					</tr>
					
					 <tr>
					 <td class="field">Sales District</td><td> <xsl:value-of select="//TAB5/ZTDS_CFS_ORDER_INFO_CUST/BZIRKBEZ"/></td></tr>
					

					
					<tr>
					<td class="field">Sales Office</td><td><xsl:value-of select="//TAB5/ZTDS_CFS_ORDER_INFO_CUST/VKBURBEZ"/></td>
					
					</tr>
					
					<tr>
					<td class="field">Sales Group</td><td><xsl:value-of select="//TAB5/ZTDS_CFS_ORDER_INFO_CUST/VKGRPBEZ"/></td>
					
					</tr>
					<tr>
					<td class="field">Customer Group</td><td><xsl:value-of select="//TAB5/ZTDS_CFS_ORDER_INFO_CUST/KDGRPBEZ"/></td>
					</tr>
					<tr><td class="field">Order Probability</td><td><xsl:value-of select="//TAB5/ZTDS_CFS_ORDER_INFO_CUST/AWAHR"/>%</td></tr>
					<tr><td class="field">Currency</td><td><xsl:value-of select="//TAB5/ZTDS_CFS_ORDER_INFO_CUST/WAERS"/></td></tr>
					<tr><td class="field">Item Proposal</td><td><xsl:value-of select="//TAB5/ZTDS_CFS_ORDER_INFO_CUST/VSORT"/></td></tr>
					 </table>
			</div> 
			</td>
			</tr>
			
			
			
			
		
			<tr>
		<td valign="top" align="left">
            <div class="group-wrapper"  valign="top"> 
                
					   <table class="block"> 
                   <tr class="header">    
                        <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="4"> Credit Relevant Information</td> 
                     </tr>
					
					<tr>
					 <td class="field" >Credit Control Area</td> <td><xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/KKBER"/> </td>
					 </tr>
					 <tr>
					<td class="field" >Account</td><td> <xsl:value-of select="number(//TAB18/ZTDS_CFS_CREDIT_INFO/KNKLI)"/> </td> 
					</tr>
					 <tr>
			<td class="field" >Participating Sales Areas</td><td><xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/SALES_AREA/TDS_SALESAREA/VKORG"/><xsl:text>  </xsl:text>
					<xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/SALES_AREA/ZTDS_SALESAREA/VTWEG"/><xsl:text>  </xsl:text>
					<xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/SALES_AREA/ZTDS_SALESAREA/SPART"/>
					 
					</td>
					 </tr>
					 <tr>
					    <td class="header1" colspan="2">Credit Limit</td>
					   
					 </tr>
					 
					  <tr>
					    <td class="field">Credit Limit</td><td> <xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/KLIMK"/><xsl:text>  </xsl:text>
					    <xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/WAERS"/>
					    </td>
					  </tr>
					  
					  <tr>
					    <td class="field">Usage</td><td><xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/SUM_OPENS"/><xsl:text>  </xsl:text>
					    <xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/WAERS"/>
					    </td>
					   </tr>
					   
					  <tr>
					    <td class="field">Delta</td><td><xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/DELTA_TO_LIMIT"/><xsl:text>  </xsl:text>
					    <xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/WAERS"/>
					    </td>
					    
					 </tr>
					  <tr>
					    <td class="field">Consumption in %</td><td><xsl:value-of select="number(//TAB18/ZTDS_CFS_CREDIT_INFO/PERCENTAGE)"/> %</td>
					    
					 </tr>
					 
					 <tr>
					 <td>
					 <img src="http://chart.googleapis.com/chart?cht=p3&amp;chs=250x100&amp;chd=t:{(//TAB18/ZTDS_CFS_CREDIT_INFO/SUM_OPENS div //TAB18/ZTDS_CFS_CREDIT_INFO/KLIMK)*100},{(//TAB18/ZTDS_CFS_CREDIT_INFO/DELTA_TO_LIMIT div //TAB18/ZTDS_CFS_CREDIT_INFO/KLIMK)*100}&amp;chco=F88017,41A317&amp;chl=Usage"/>
					 
	</td></tr>
					 
					 <tr>
					  <td class="header1" colspan="2">Commitment</td>
					 </tr>
					  <tr>
					   <td class="field">Receivables</td><td> <xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/SKFOR"/><xsl:text>  </xsl:text>
					    <xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/WAERS"/>
					    </td>
					   
					 </tr>
					 
					 <tr>
					  <td class="field">Special Liabilities</td><td><xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/SSOBL"/><xsl:text>  </xsl:text>
					    <xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/WAERS"/>
					    </td>
					</tr>
					
					<tr>
					<td class="field">Open Delivery Value</td><td><xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/OPEN_DELIVERY"/><xsl:text>  </xsl:text>
					    <xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/WAERS"/>
					    </td>
					</tr>	
					
					<tr>
					<td class="field">Open Sales Order Value</td><td><xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/OPEN_ORDERS"/><xsl:text>  </xsl:text>
					    <xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/WAERS"/>
					    </td>
						
					</tr>	
					
					<tr>
					 <td class="field">Open Billing Doc Value</td><td><xsl:text>  </xsl:text><xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/OPEN_INVOICE"/><xsl:text>  </xsl:text>
					    <xsl:value-of select="//TAB18/ZTDS_CFS_CREDIT_INFO/WAERS"/>
					    </td>
					</tr>	
					
					 
					 </table>
			</div> 
			</td>
			
			</tr>

			<tr>
		<td valign="top" align="left">
            <div class="group-wrapper"  valign="top"> 
                
					   <table class="block"> 
                   <tr class="header">    
                        <td style=" padding-left:10px;padding-right:10px;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;" colspan="4">Back Orders</td> 
                     </tr>
					 <tr>
					 <td class="header1">Order</td>
					 <td class="header1">Date</td>
					 <td class="header1">Net Value</td>
					 <td class="header1"></td>
					 </tr>
					 <xsl:for-each select="//TAB22/ZTDS_CFS_BACKORDER">
					 <tr>
					<td class="field"><xsl:value-of select="number(VBELN)"/> </td>
					<td><xsl:value-of select="FMBDAT"/>  </td>
					<td>
					    <xsl:value-of select="NETWR"/><xsl:text>  </xsl:text>   
					<xsl:value-of select="WAERK"/>
					</td>
					<td><xsl:value-of select="STATUS_TEXT"/>  </td>
					</tr>
					 </xsl:for-each>
					 
					 
					    
					
			    </table>
			</div> 
			</td>
			
			</tr>
		
			</table>
			
		</section>
	</div>
    </body> 
</html> 
</xsl:template>
</xsl:stylesheet>
  