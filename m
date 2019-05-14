Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DEF1C8F7
	for <lists+usrp-users@lfdr.de>; Tue, 14 May 2019 14:42:01 +0200 (CEST)
Received: from [::1] (port=49408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hQWkl-0006ic-GC; Tue, 14 May 2019 08:41:55 -0400
Received: from otransport-4.outbound.emailsrv.net ([54.84.14.167]:57234)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <jason@gardettoengineering.com>)
 id 1hQWkC-0006aj-R0
 for usrp-users@lists.ettus.com; Tue, 14 May 2019 08:41:50 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-4.outbound.emailsrv.net (Postfix) with ESMTPS id 43F1261723;
 Tue, 14 May 2019 12:40:40 +0000 (UTC)
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam05lp2057.outbound.protection.outlook.com [104.47.49.57])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id DC6FEA2641;
 Tue, 14 May 2019 12:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com; s=selector1-gardettoengineering-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xO0EdCnKz7jF1wR5D3zCrejKe2MXGVrDHbZLCS5hcwE=;
 b=yPn3OCx65vNSgNCo2rQXcmzSNiQXcAOV3A3WFW60n7bqyxjnGdVTsdzyv4+QIX04JJQszrwZ2gBZAaWcGmU5r/eK7G/jLUQFDCvFiLkoL3Y9wKZ7q9p/Rs8TQcyQL6s9wQ6nKKleaqzJZTCXrdJPJRpGbmJJ8PjqdMV84suWxfM=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2436.namprd12.prod.outlook.com (52.132.11.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Tue, 14 May 2019 12:40:38 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::5570:e6c8:1b85:dbc5%7]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 12:40:38 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>, "Koyel Das
 (Vehere)" <koyel.das@vehere.com>
Thread-Topic: vert 2450 quarter wave monopole?
Thread-Index: AQHVCjmUtNzjpV94kECUvxMD29gWJKZqj+Sl
Date: Tue, 14 May 2019 12:40:38 +0000
Message-ID: <BL0PR12MB23409F2DBB6EC943F6D1ED9BAF080@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BM1PR01MB07059D1A9462238627D2B9DD90080@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB07059D1A9462238627D2B9DD90080@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f384fbd9-770d-4144-3a5d-08d6d8695e51
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR12MB2436; 
x-ms-traffictypediagnostic: BL0PR12MB2436:
x-ms-exchange-purlcount: 5
x-microsoft-antispam-prvs: <BL0PR12MB2436C911E429AF4DEED0BACBAF080@BL0PR12MB2436.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(366004)(376002)(396003)(39830400003)(365934003)(199004)(189003)(446003)(73956011)(8936002)(11346002)(74316002)(66946007)(68736007)(66066001)(316002)(66476007)(76116006)(64756008)(66556008)(66446008)(7736002)(54896002)(105004)(53936002)(6436002)(6306002)(8676002)(9686003)(733005)(33656002)(55016002)(476003)(81166006)(81156014)(76176011)(486006)(52536014)(6246003)(5660300002)(966005)(236005)(102836004)(25786009)(606006)(2906002)(71200400001)(26005)(3846002)(508600001)(6116002)(71190400001)(99286004)(256004)(19627405001)(5024004)(14454004)(7696005)(14444005)(110136005)(53546011)(186003)(66574012)(6506007)(86362001)(229853002)(491001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2436;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Pu7maxlVtbXXOG0CarSZAdSNHVpIcQD/mhA4eqlLlurbbckKWdBWNQaaz3nFGwxqozchXo2jRhisFdiDr6AF5np5MVt+l/6ofCRjCbVHgfVZrcf4yt37npMkrEpRVde4yPCY/6+PzQbpQeswi82z5AZFwD2DcHG0nhGoUzSACjHOfd36GsAehSu7Js9iSyyaVWQ09OE3zuAjwmscwEXmTM6+B9ji3t676W24ra9HeoybF9eFz6BqrzwfQtWOG6b08FtVqDElEeqLZma9UxhpqBtElWvEYulq+y/ybeKU2KLBOb9bHtGGGKlDj9Y8lKfKySRWnyhS2ognxcPuXoz3sZVGxFwiA32JTuVYZN0sqhAIk6sbJxhYTqgjA7XXbHNiNCCysAnRSqOk7lRjHVmcwL4ZeZWX6zAUmqWyTH5vKgY=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f384fbd9-770d-4144-3a5d-08d6d8695e51
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 12:40:38.4661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2436
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-dm3nam05lp2057.outbound.protection.outlook.com|104.47.49.57|NAM05-DM3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.49.57, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-19550-c
X-Mailprotector-ID: fd4629d3-3d7e-4c58-bbba-9c2b3a6dea7a
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] vert 2450 quarter wave monopole?
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
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============4176335305408627077=="
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

--===============4176335305408627077==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23409F2DBB6EC943F6D1ED9BAF080BL0PR12MB2340namp_"

--_000_BL0PR12MB23409F2DBB6EC943F6D1ED9BAF080BL0PR12MB2340namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

According to this, it is a dipole: https://kb.ettus.com/images/9/9e/ettus_r=
esearch_vert2450_datasheet.pdf

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Koyel Da=
s (Vehere) via USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, May 14, 2019 5:45 AM
To: 'USRP-users@lists.ettus.com'
Subject: [USRP-users] vert 2450 quarter wave monopole?


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

--_000_BL0PR12MB23409F2DBB6EC943F6D1ED9BAF080BL0PR12MB2340namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
According to this, it is a dipole:&nbsp;<a href=3D"https://kb.ettus.com/ima=
ges/9/9e/ettus_research_vert2450_datasheet.pdf">https://kb.ettus.com/images=
/9/9e/ettus_research_vert2450_datasheet.pdf</a></div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Koyel Das (Vehere) via USRP-u=
sers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, May 14, 2019 5:45 AM<br>
<b>To:</b> 'USRP-users@lists.ettus.com'<br>
<b>Subject:</b> [USRP-users] vert 2450 quarter wave monopole?</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0">Hi,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0">Can someone tell me if vert 2450 is quarter wave monopole antenna? Or w=
hat is it?</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0">Regards,</p>
<div id=3D"x_Signature">
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;App=
le Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe =
UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0"></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:Calibri,Helveti=
ca,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,=
EmojiSymbols; font-size:16px; line-height:16px">
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
 style=3D"width:18pt; height:18pt" src=3D"https://mail.google.com/mail/u/0/=
?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;a=
ttid=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ_cw8QOmJOuH5dOGgYLOxSybsCNVtf-=
NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kcoQwHmymFim1kkqNhKdcHOp=
lQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4=
a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34)=
; font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;</sp=
an><a href=3D"https://twitter.com/VehereIndia" target=3D"_blank" rel=3D"noo=
pener noreferrer" id=3D"LPNoLP"><span style=3D"color:rgb(34,34,34); font-si=
ze:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont; text-decoration-lin=
e:none"><img border=3D"0" alt=3D"unnamed (1)" style=3D"width:18pt; height:1=
8pt" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&am=
p;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;=
attbid=3DANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-=
plEkGO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-=
h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1">=
</span></a><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family=
:Arial,sans-serif,serif,EmojiFont">&nbsp;</span><a href=3D"https://www.face=
book.com/VehereIndia/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"=
LPNoLP"><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Ar=
ial,sans-serif,serif,EmojiFont; text-decoration-line:none"><img border=3D"0=
" alt=3D"unnamed (2)" style=3D"width:18pt; height:18pt" src=3D"https://mail=
.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D1=
5cd46f4a213fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=3DANGjdJ9JZdmekO-=
R6DmUlgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjwSBYH5Rw=
gNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&amp;ats=3D1498219245=
179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=
=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,seri=
f,EmojiFont">&nbsp;&nbsp;</span><span style=3D"color:rgb(34,34,34); font-fa=
mily:Tahoma,sans-serif,serif,EmojiFont"><br>
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
<p style=3D"margin-top: 0px; margin-bottom: 0px;"></p>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB23409F2DBB6EC943F6D1ED9BAF080BL0PR12MB2340namp_--


--===============4176335305408627077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4176335305408627077==--

