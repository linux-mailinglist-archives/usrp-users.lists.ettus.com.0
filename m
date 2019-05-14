Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE1E1C64C
	for <lists+usrp-users@lfdr.de>; Tue, 14 May 2019 11:47:06 +0200 (CEST)
Received: from [::1] (port=56346 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hQU1S-00082v-CH; Tue, 14 May 2019 05:46:58 -0400
Received: from mail-eopbgr1380122.outbound.protection.outlook.com
 ([40.107.138.122]:51640 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.91) (envelope-from <koyel.das@vehere.com>)
 id 1hQU0u-0007xG-Pp
 for usrp-users@lists.ettus.com; Tue, 14 May 2019 05:46:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector1-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=flsGZf0bG8X1W3/LbjFr40UcY5ddRSeX4m2OfJvgiO8=;
 b=5phKUlXOnY7rAct2hxx9/3rInJyIX3mHjZ2x/wzq2HydKY5MEPirwIwAA9/R4rKPtRXXCHti3vU7ra9RxTxEQACNhTCOutKOueZUv3AlwWHQX7alFZEdvI00Q4upPe8aCiIbUeqZRNIjHQBAy4f/ZDjz5iJ0CBRRwRIDYBMyw30=
Received: from BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM (10.174.210.147) by
 BM1PR01MB0804.INDPRD01.PROD.OUTLOOK.COM (10.174.210.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 14 May 2019 09:45:41 +0000
Received: from BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::e134:121:21f0:7218]) by BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::e134:121:21f0:7218%5]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 09:45:41 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: vert 2450 quarter wave monopole?
Thread-Index: AQHVCjmUtNzjpV94kECUvxMD29gWJA==
Date: Tue, 14 May 2019 09:45:41 +0000
Message-ID: <BM1PR01MB07059D1A9462238627D2B9DD90080@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=koyel.das@vehere.com; 
x-originating-ip: [14.143.49.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20a5b079-99c9-472d-e08b-08d6d850edc1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(7168020)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BM1PR01MB0804; 
x-ms-traffictypediagnostic: BM1PR01MB0804:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <BM1PR01MB0804D611CEFF9A916DF1F5C690080@BM1PR01MB0804.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39830400003)(366004)(376002)(346002)(136003)(189003)(199004)(365934003)(8676002)(66574012)(25786009)(7736002)(81156014)(81166006)(33656002)(26005)(8936002)(186003)(52536014)(6916009)(102836004)(74316002)(53936002)(508600001)(76116006)(73956011)(91956017)(68736007)(256004)(6506007)(606006)(14444005)(5024004)(6116002)(55236004)(66556008)(64756008)(66446008)(66476007)(66946007)(3846002)(236005)(78486014)(9686003)(66066001)(99286004)(19627405001)(5660300002)(55016002)(54896002)(6306002)(316002)(2906002)(486006)(7696005)(476003)(6436002)(86362001)(14454004)(71200400001)(71190400001)(6606003)(733005)(861006)(491001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BM1PR01MB0804;
 H:BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vehere.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cJHvChDiwQoLyAK8nJ02FAZhlQES+8/KLIQ0wETNGlrZl/apdfYFcwoFXfcQAYURSrbbq0yMslYypVzKO1uOx8/4Pax/fJkoZZ9L/YulsAZDoMfoX4tL73x9XAe+jkOp/PspS0T60xDkPDFS6+1WS7KCZa65/kJjOxzmLALo4E6XfJPVQ6YKszjFNrchkAn7dkN2+loB4+OyH03ckR78lEPzMIwPgaJt6ftXorxQdEfKX2gL2qR/0dI0eUPH4ZihY6hjtZDk9FHsJdKBTMEWmnF7d2+LmYwbL2GoZ4DY+CNbr9Hy7K2XMv+3+v1nevJc6B0uB9c/HHppwAkKidriB+UT+TpMAM297EJL/1+3yd2FW0mz3VXjICv2EQBO8eH0MCh3UynZRbRQvgjepHRuhCL+PWhd6y0lglPz4nfjo8w=
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a5b079-99c9-472d-e08b-08d6d850edc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 09:45:41.6772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR01MB0804
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] vert 2450 quarter wave monopole?
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
Content-Type: multipart/mixed; boundary="===============2453223576849484192=="
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

--===============2453223576849484192==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB07059D1A9462238627D2B9DD90080BM1PR01MB0705INDP_"

--_000_BM1PR01MB07059D1A9462238627D2B9DD90080BM1PR01MB0705INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,


Can someone tell me if vert 2450 is quarter wave monopole antenna? Or what =
is it?


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

--_000_BM1PR01MB07059D1A9462238627D2B9DD90080BM1PR01MB0705INDP_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Can someone tell me if vert 2450 =
is quarter wave monopole antenna? Or what is it?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Regards,</p>
<div id=3D"Signature">
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
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
-ltd" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><span sty=
le=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,se=
rif,EmojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed"=
 style=3D"width: 18pt; height: 18pt; user-select: none;" src=3D"https://mai=
l.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D=
15cd46f4a213fe89&amp;attid=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ_cw8QOmJ=
OuH5dOGgYLOxSybsCNVtf-NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kc=
oQwHmymFim1kkqNhKdcHOplQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D149821924=
5179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=
=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,seri=
f,EmojiFont">&nbsp;</span><a href=3D"https://twitter.com/VehereIndia" targe=
t=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><span style=3D"color=
:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFo=
nt; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed (1)" style=
=3D"width: 18pt; height: 18pt; user-select: none;" src=3D"https://mail.goog=
le.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46=
f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;attbid=3DANGjdJ9np2yLYTWiL8_6=
6KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-plEkGO73mWlh0cet3WXZglkDC-aWF=
dkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&a=
mp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"col=
or:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,Emoji=
Font">&nbsp;</span><a href=3D"https://www.facebook.com/VehereIndia/" target=
=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><span style=3D"color:=
rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFon=
t; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed (2)" style=
=3D"width: 18pt; height: 18pt; user-select: none;" src=3D"https://mail.goog=
le.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46=
f4a213fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=3DANGjdJ9JZdmekO-R6DmU=
lgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjwSBYH5RwgNDRH=
Aoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&a=
mp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"col=
or:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,Emoji=
Font">&nbsp;&nbsp;</span><span style=3D"color:rgb(34,34,34); font-family:Ta=
homa,sans-serif,serif,EmojiFont"><br>
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

--_000_BM1PR01MB07059D1A9462238627D2B9DD90080BM1PR01MB0705INDP_--


--===============2453223576849484192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2453223576849484192==--

