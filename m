Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F285468532
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jul 2019 10:28:42 +0200 (CEST)
Received: from [::1] (port=56470 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hmwLg-00010L-W0; Mon, 15 Jul 2019 04:28:41 -0400
Received: from mail-eopbgr1380130.outbound.protection.outlook.com
 ([40.107.138.130]:31280 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <koyel.das@vehere.com>)
 id 1hmwLd-0000tT-8j
 for usrp-users@lists.ettus.com; Mon, 15 Jul 2019 04:28:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z/la+QT/zjZ5QBIbBjKKRQj7osnxuBdwN6hMOv0itv9MRWFe0ErwrXhKFPrp/Rf2hz2JErMHoWHX5UldWm+LgXCnEq7qeEO3lSudAjZl/bWgtY1+AShEzskiUzDVnWcuYK9S64mo4TXBwwKL0N35mE1+jpWIzTVeEvlNWfxtGYABPx02rzaVEMPJqwBpxtujZx3vWVCwzROFvFom4hy6aKUPb+kC2RcRQK8ZdMlfgfmrLJfRjjxccEqkJUZmN8cgj4BWKFoY1NXafTbyvI/FweAgalYCTwnD/4FxIkKEA8dElDAi5/wLG/V67O/C8oMgNLUjL71Ix3BjYya+OzNCdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mExgvibZFNo7nOARQDLyhrBKFDGNoDY4U8ZZKyjlKFU=;
 b=EdUelpegteMOJhnK6uqvlMbhfuszoVdlgIEt1WQrQGp5ZafoEulRPjqsFi3aOHmsOyWQ2+ZR1tnOadgoZf5voPh/Dz7FLXR7/nZmo80Tg++w/7LC9ob3Eg/L6bUBSePs1KCofF3ovVFwx865e5LXLq31jIugcjGzRl6jTYyh+gl/YF3VcxRyzRI6dfmv2qHyeMS5PRCBK9MmN365REEFCld4sTnmdAHYAdaGo/xmJ95XfSf+3CNYBsMGH85eIVdsurPo5HWOE3vu0XiWBOJWbKkwRwS9NJ5AnX3+GJxdcWgViecgPEtcKSZ1z7tpH4aBKoxhOj3to7WWQL6dZhxinw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=vehere.com;dmarc=pass action=none
 header.from=vehere.com;dkim=pass header.d=vehere.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mExgvibZFNo7nOARQDLyhrBKFDGNoDY4U8ZZKyjlKFU=;
 b=cHNoHt4Xv96Sks+R6SQifPUu/25DKMaY5bXuj0EB8QUgN/7cpq0RaoG1odDRR4EPPQ4vgEwLgsGZbbIfeAHo9U0DLpzUaZLtNDh5gOYwhiWKuKlOPfhMhn3LRke1NMdVupuSL9Yjm1sCZ+S4XYec0o2P6PZdh8gk0/0uPOeL1Y4=
Received: from MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM (52.134.128.12) by
 MAXPR0101MB1946.INDPRD01.PROD.OUTLOOK.COM (52.134.129.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 08:27:52 +0000
Received: from MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::446a:70fa:58ff:ef49]) by MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::446a:70fa:58ff:ef49%7]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 08:27:52 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: USRP E313
Thread-Index: AQHVOucxymOz7T55AUuyh9O0QDUUAg==
Date: Mon, 15 Jul 2019 08:27:52 +0000
Message-ID: <MAXPR0101MB153020BA8AEC1D99B16F030790CF0@MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=koyel.das@vehere.com; 
x-originating-ip: [14.143.49.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07797ce2-e786-4cc6-487d-08d708fe544a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(7168020)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MAXPR0101MB1946; 
x-ms-traffictypediagnostic: MAXPR0101MB1946:
x-ms-exchange-purlcount: 5
x-microsoft-antispam-prvs: <MAXPR0101MB19461A97552AD440F196EF4B90CF0@MAXPR0101MB1946.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(396003)(376002)(366004)(39830400003)(365934003)(189003)(199004)(486006)(66446008)(66946007)(64756008)(66556008)(66476007)(33656002)(91956017)(71200400001)(6506007)(14454004)(102836004)(55236004)(71190400001)(186003)(7116003)(7696005)(66066001)(76116006)(5660300002)(99286004)(26005)(25786009)(733005)(6436002)(3846002)(861006)(476003)(6116002)(19627405001)(52536014)(508600001)(6916009)(5024004)(2906002)(14444005)(256004)(74316002)(78486014)(316002)(8936002)(7736002)(966005)(9686003)(606006)(54896002)(55016002)(66574012)(81156014)(6306002)(236005)(68736007)(8676002)(15974865002)(86362001)(6606003)(53936002)(81166006)(491001)(15398625002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MAXPR0101MB1946;
 H:MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vehere.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: x89HWjctQSKv41AqFw1MYNiMgGfHKOz+cRW9GgCt4rungLOH3Igv4CWRJDboQ218/qTuyLoBeBvF3aGwKfCkOSS18KWUYxVwX7If6mU6sLGuCPyANdb2NaYQRPm3eZrqsByJXV0h47Duc8FwX+opbwQZmKMNjSnN6tBV6j5ldswwdu9ZNMhk0Sz8fjJv9GBE/u96KR+A0yX6zfOE0uB/ZRqeP7cWwx5ewP+/y8GkeQmNjYX0b8Ev712siK0JzqVdUBzGrJJHqb8CitII9Mq19Y+zauwVtZ+fqRLhHzU/YbzObhfGaA6s6xhZez4X3xJw0QqrFE+gJ4qm5FnNDIhIbvAogW4bkYtngjlAEza2pPLqnQr914jALjcb3zkwpiZyIfiAvUSpGgT5qd0fJE6sFuh+HN2ZqLXOYV7F6WyL9U8=
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07797ce2-e786-4cc6-487d-08d708fe544a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 08:27:52.4013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: koyel.das@vehere.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR0101MB1946
Subject: [USRP-users] USRP E313
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Content-Type: multipart/mixed; boundary="===============0186149299659362571=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0186149299659362571==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR0101MB153020BA8AEC1D99B16F030790CF0MAXPR0101MB1530_"

--_000_MAXPR0101MB153020BA8AEC1D99B16F030790CF0MAXPR0101MB1530_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,


The following USRP


https://www.ettus.com/all-products/usrp-e313/

[https://www.ettus.com/wp-content/uploads/2019/01/E313_Front-Large_2-1200x6=
30.jpg]<https://www.ettus.com/all-products/usrp-e313/>
USRP E313 | Ettus Research, a National Instruments Brand | The leader in So=
ftware Defined Radio (SDR)<https://www.ettus.com/all-products/usrp-e313/>
www.ettus.com
The USRP E313 is a rugged and weatherproof SDR designed for outdoor deploym=
ent. Containing an embedded USRP E310 inside an IP67-rated enclosure, the U=
SRP E313 provides ingress protection against dust and water with extensive =
testing to ensure operation under demanding environmental conditions.

has embedded processor I think. So is it possible that we don't use the emb=
edded processor and use it like USRP 2955 that is capture data using gnurad=
io API and process it in our computer as we are doing with 2955?



Regards,

Koyel Das
Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>

[unnamed]<https://www.linkedin.com/company/vehere-interactive-p-ltd> [unnam=
ed (1)] <https://twitter.com/VehereIndia>  [unnamed (2)] <https://www.faceb=
ook.com/VehereIndia/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.

--_000_MAXPR0101MB153020BA8AEC1D99B16F030790CF0MAXPR0101MB1530_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p style=3D"margin-top:0; margin-bottom:0"></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
Hi,</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
The following USRP</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" target=3D"_blank"=
 rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" id=3D"LPlnk349954"=
 previewremoved=3D"true">https://www.ettus.com/all-products/usrp-e313/</a><=
/p>
<div id=3D"LPBorder_GT_15631740463640.4609731603017766" style=3D"font-famil=
y: Calibri, Helvetica, sans-serif, serif, EmojiFont; font-size: 16px; width=
: 885px; margin-bottom: 20px; overflow: auto;">
<table cellspacing=3D"0" id=3D"LPContainer_15631740463610.5595525113046114"=
 role=3D"presentation" style=3D"width: 796px; margin-top: 20px; padding-top=
: 20px; padding-bottom: 20px; border-top: 1px dotted rgb(200, 200, 200); bo=
rder-bottom: 1px dotted rgb(200, 200, 200); overflow: auto;">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td colspan=3D"1" id=3D"ImageCell_15631740463620.520711699452409" style=3D"=
width: 250px; padding-right: 20px;">
<div id=3D"LPImageContainer_15631740463620.7982520787803893" style=3D"displ=
ay: table; width: 250px; height: 131px; margin: auto;">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" target=3D"_blank"=
 rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" id=3D"LPImageAncho=
r_15631740463620.5859776582035903" style=3D"text-align: center; display: ta=
ble-cell;"><img id=3D"LPThumbnailImageID_15631740463620.0445211311981637" s=
tyle=3D"vertical-align: bottom; display: inline-block; width: 250px; height=
: 131px; max-width: 250px; border-width: 0px; max-height: 250px;" src=3D"ht=
tps://www.ettus.com/wp-content/uploads/2019/01/E313_Front-Large_2-1200x630.=
jpg"></a></div>
</td>
<td colspan=3D"2" id=3D"TextCell_15631740463630.9983429177449736" style=3D"=
vertical-align: top; padding: 0px; position: relative;">
<div id=3D"LPRemovePreviewContainer_15631740463630.5835837580145755"></div>
<div id=3D"LPTitle_15631740463630.9487633221229601" style=3D"color: rgb(0, =
120, 215); font-size: 21px; font-family: wf_segoe-ui_light, &quot;Segoe UI =
Light&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe =
WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiFont; line-height: 21px; t=
op: 0px;">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" target=3D"_blank"=
 rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" id=3D"LPUrlAnchor_=
15631740463630.8538318560805709" style=3D"text-decoration-line: none;">USRP=
 E313 | Ettus Research, a National Instruments
 Brand | The leader in Software Defined Radio (SDR)</a></div>
<div id=3D"LPMetadata_15631740463630.9319280120041624" style=3D"color: rgb(=
102, 102, 102); font-size: 14px; font-family: wf_segoe-ui_normal, &quot;Seg=
oe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiF=
ont; margin: 10px 0px 16px; line-height: 14px;">
www.ettus.com</div>
<div id=3D"LPDescription_15631740463630.7323390913605139" style=3D"color: r=
gb(102, 102, 102); font-size: 14px; font-family: wf_segoe-ui_normal, &quot;=
Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Emo=
jiFont; overflow: hidden; max-height: 100px; line-height: 20px;">
The USRP E313 is a rugged and weatherproof SDR designed for outdoor deploym=
ent. Containing an embedded USRP E310 inside an IP67-rated enclosure, the U=
SRP E313 provides ingress protection against dust and water with extensive =
testing to ensure operation under
 demanding environmental conditions.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont;=
 font-size: 16px;">
<span style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFon=
t; font-size: 16px;">has embedded processor I think. So is it possible that=
 we don't use the embedded processor and use it like USRP 2955 that is capt=
ure data using gnuradio&nbsp;API and process
 it in our computer as we are doing with 2955?</span>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; =
font-size: 16px;">
</p>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, serif, Emo=
jiFont; font-size: 16px;"><br>
</span></div>
<br>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0">Regards,</p>
<div id=3D"Signature">
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple=
 Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI=
 Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0; margin-bottom:0"></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px; line-h=
eight:16px">
<font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
Senior =96 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: &#43;919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" =
style=3D"font-size:16px"><font style=3D"font-size:9pt">T: &#43;91&nbsp;33 4=
0545454 | F: &#43;91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.veher=
e.com/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP">www.veh=
ere.com</a></font></font><font face=3D"Tahoma,serif" style=3D"font-size:16p=
x"><font style=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; fon=
t-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP" title=3D"=
https://www.linkedin.com/company/vehere-interactive-p-ltd
Ctrl&#43;Click or tap to follow the link"><span style=3D"color:rgb(34,34,34=
); font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont; text-deco=
ration-line:none"><img border=3D"0" alt=3D"unnamed" style=3D"width: 18pt; h=
eight: 18pt; user-select: none;" src=3D"https://mail.google.com/mail/u/0/?u=
i=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;att=
id=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ_cw8QOmJOuH5dOGgYLOxSybsCNVtf-NS=
_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kcoQwHmymFim1kkqNhKdcHOplQ=
P4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a2=
13fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34); =
font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;</span=
><a href=3D"https://twitter.com/VehereIndia" target=3D"_blank" rel=3D"noope=
ner noreferrer" id=3D"LPNoLP"><span style=3D"color:rgb(34,34,34); font-size=
:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont; text-decoration-line:=
none"><img border=3D"0" alt=3D"unnamed (1)" style=3D"width: 18pt; height: 1=
8pt; user-select: none;" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&am=
p;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.2=
&amp;disp=3Demb&amp;attbid=3DANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQy=
svBjAQVxtHSIbIzZfOj-plEkGO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lX=
XFvlK4&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&a=
mp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34); font-siz=
e:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;</span><a href=
=3D"https://www.facebook.com/VehereIndia/" target=3D"_blank" rel=3D"noopene=
r noreferrer" id=3D"LPNoLP"><span style=3D"color:rgb(34,34,34); font-size:9=
.5pt; font-family:Arial,sans-serif,serif,EmojiFont; text-decoration-line:no=
ne"><img border=3D"0" alt=3D"unnamed (2)" style=3D"width: 18pt; height: 18p=
t; user-select: none;" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;=
ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.3&a=
mp;disp=3Demb&amp;attbid=3DANGjdJ9JZdmekO-R6DmUlgNehr-eRw41OXSOu3PfaFGXC98w=
Y0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjwSBYH5RwgNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfa=
el_k&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp=
;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34); font-size:=
9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;&nbsp;</span><sp=
an style=3D"color:rgb(34,34,34); font-family:Tahoma,sans-serif,serif,EmojiF=
ont"><br>
</span><br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!</i></font></font><font face=3D"Tahoma,s=
erif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><br>
<br>
The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are n=
ot the addressee, or the person responsible for delivering it to the addres=
see, any disclosure, copying, distribution or any action taken or omitted t=
o be taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error,=
 please notify the sender and remove this communication entirely from your =
system. The recipient acknowledges that no guarantee or any warranty is giv=
en as to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the v=
iews contained in the email message are those of the sender and may not nec=
essarily reflect those of Vehere Interactive Pvt Ltd. Before opening and ac=
cessing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email=
. The recipient should check this email and any attachments for the presenc=
e of viruses. The company accepts no liability for any damage caused by any=
 virus transmitted by this email.</font></font><br>
<p></p>
</div>
</div>
</div>
</body>
</html>

--_000_MAXPR0101MB153020BA8AEC1D99B16F030790CF0MAXPR0101MB1530_--


--===============0186149299659362571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0186149299659362571==--

