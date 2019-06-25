Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3685F550F0
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2019 15:56:17 +0200 (CEST)
Received: from [::1] (port=46602 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hflvj-0003jS-N5; Tue, 25 Jun 2019 09:56:15 -0400
Received: from mail-eopbgr1390120.outbound.protection.outlook.com
 ([40.107.139.120]:32488 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <koyel.das@vehere.com>)
 id 1hflvd-0003Ru-Vj
 for usrp-users@lists.ettus.com; Tue, 25 Jun 2019 09:56:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector1-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wLVlWhCEGGR+dMP/6LCFN9NtpAhCha0UhyAbQ19jcUU=;
 b=4xLSpjNi1G4C3NpYzuKm9vhmWoGLXMzUWqCdGgiSKpgIS4UaqegzQEiBP7xKOFt12fbLR13T9dH5yKCjBKgKKlhAJh4nUNz5W5JwIjCj1qERb0xiYRDLmWwKVzwwow5NtlKxKEEvpVQfqjYkVSg2A1kdMru+RtYh5n+aGSbMdZI=
Received: from MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM (52.134.128.12) by
 MAXPR0101MB1739.INDPRD01.PROD.OUTLOOK.COM (52.134.131.135) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 13:55:26 +0000
Received: from MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5db6:cc2c:219a:47f9]) by MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5db6:cc2c:219a:47f9%10]) with mapi id 15.20.2008.014; Tue, 25 Jun
 2019 13:55:26 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] USRP gain refers to which amplifier
Thread-Index: AQHVJ1WK/ApWd/NCjkKXYaWKwyB6IaaklKiAgAfXqZk=
Date: Tue, 25 Jun 2019 13:55:25 +0000
Message-ID: <MAXPR0101MB1530656FD7730B7E7C44218A90E30@MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB0705C8B2232B5566D41DE1CE90E40@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM>,
 <5D0B9369.5050401@gmail.com>
In-Reply-To: <5D0B9369.5050401@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=koyel.das@vehere.com; 
x-originating-ip: [42.110.143.232]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3df11475-2c66-4742-1592-08d6f974c677
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MAXPR0101MB1739; 
x-ms-traffictypediagnostic: MAXPR0101MB1739:
x-ms-exchange-purlcount: 8
x-microsoft-antispam-prvs: <MAXPR0101MB173980DB8E45C33B1629E22E90E30@MAXPR0101MB1739.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(51914003)(189003)(199004)(365934003)(6306002)(6436002)(733005)(5660300002)(73956011)(86362001)(55016002)(54896002)(1411001)(256004)(486006)(476003)(236005)(5024004)(53936002)(9686003)(81166006)(2906002)(6916009)(99286004)(229853002)(66066001)(76176011)(6246003)(33656002)(6506007)(14454004)(14444005)(53546011)(606006)(966005)(15974865002)(508600001)(3846002)(25786009)(6116002)(446003)(7696005)(4326008)(102836004)(11346002)(26005)(66476007)(64756008)(66446008)(66574012)(81156014)(7736002)(66556008)(52536014)(68736007)(76116006)(19627405001)(8676002)(74316002)(66946007)(8936002)(71190400001)(186003)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MAXPR0101MB1739;
 H:MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vehere.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YwV3+XLObfotNZfpmg5eJmptKSNE9IBz7LbTdCu1cVIxFy+yz6oHAS3XGmvG0+tajyLN43VB/JkoZokxny0G6jqqiWsVXyyj/MR3OzR8SUYh4px4YzwJrFvHxlpmeAuSqFZap1/Drc3uMMxHTpyufByjZdbUP7h95BsYBjJOhr3/hCIwa+PntLGhbqzRwEzwYCeN16bJ4j0okpEYz/YIvlxnV77VqXbYdkobXhI3w/I1jdZiQiI8J8RYTaz3YpV19z5zbF/cTD+tyXQhRPffMZIzAoO8nculdHgAKtCFRlk1fHc3ZJ1tzk+uM3nzqNCgu92MzUesar4n/geGR0NqCJKLPgXHw2S9BjswAV8Zfq/a/ywkfxJUxtlFDYpVLDKjrOdAPBoZ23ManHFRp8+vv9cRtg05VkFQo39mpM1g9Gg=
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3df11475-2c66-4742-1592-08d6f974c677
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 13:55:25.9528 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: koyel.das@vehere.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR0101MB1739
Subject: Re: [USRP-users] USRP gain refers to which amplifier
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
Cc: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4812240471312674500=="
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

--===============4812240471312674500==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR0101MB1530656FD7730B7E7C44218A90E30MAXPR0101MB1530_"

--_000_MAXPR0101MB1530656FD7730B7E7C44218A90E30MAXPR0101MB1530_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

This clears everything. Thanks for the information.

Regards,

Koyel Das
Senior =96 Product Engineer
Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com



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
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, June 20, 2019 7:38:41 PM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP gain refers to which amplifier

On 06/20/2019 06:48 AM, Koyel Das (Vehere) via USRP-users wrote:

Hi,


When we set the gain of USRP does that mean we are increasing the gain of a=
mplifier just after the antenna or the gain is spread across various amplif=
iers in the chain?


Regards,

Koyel Das
Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>
It depends very much on exactly which USRP and daughterboard is in use.

By default, the set-gain function will make "sensible" decisions about dist=
ributing gain over the various elements in whatever hardware
  it's dealing with.

See:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a496745=
114d83049ed3d0f5fc96e87b2a

and:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a7e077f=
c7331f7675aa796e030bd8a03e

and:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7=
681b796deddd9231f022ffef11



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



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com



--_000_MAXPR0101MB1530656FD7730B7E7C44218A90E30MAXPR0101MB1530_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
Hi Marcus,<br>
<br>
This clears everything. Thanks for the information.<br>
<br>
Regards,<br>
<br>
Koyel Das<br>
Senior =96 Product Engineer<br>
Vehere | Proactive Communications Intelligence &amp; Cyber Defence<br>
M: &#43;919051132173 | T: &#43;91 33 40545454 | F: &#43;91 33 40545455 | W:=
 www.vehere.com<br>
<br>
<br>
<br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!<br>
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
 virus transmitted by this email.<br>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Thursday, June 20, 2019 7:38:41 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] USRP gain refers to which amplifier</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 06/20/2019 06:48 AM, Koyel Das (Vehere)=
 via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">When we set the gain of USRP doe=
s that mean we are increasing the gain of amplifier just after the antenna =
or the gain is spread across various amplifiers in the chain?</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Regards,</p>
<div id=3D"x_Signature">
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"">
<p style=3D""><font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koy=
el Das &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b=
r>
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
</i></font></font></div>
</div>
</div>
</blockquote>
<font face=3D"Tahoma,serif"><i>It depends very much on exactly which USRP a=
nd daughterboard is in use.<br>
<br>
By default, the set-gain function will make &quot;sensible&quot; decisions =
about distributing gain over the various elements in whatever hardware<br>
&nbsp; it's dealing with.<br>
<br>
See:<br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/classuhd_1_1usrp_1_1multi__usrp.html#a496745114d83049ed3d0f5fc96e87b2a">ht=
tps://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a49674511=
4d83049ed3d0f5fc96e87b2a</a><br>
<br>
and:<br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/classuhd_1_1usrp_1_1multi__usrp.html#a7e077fc7331f7675aa796e030bd8a03e">ht=
tps://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a7e077fc7=
331f7675aa796e030bd8a03e</a><br>
<br>
and:<br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7681b796deddd9231f022ffef11">ht=
tps://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e768=
1b796deddd9231f022ffef11</a><br>
<br>
<br>
</i></font>
<blockquote type=3D"cite">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<div id=3D"x_Signature">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D""><font face=3D"Tah=
oma,serif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><i></i></=
font></font><br style=3D"">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><span sty=
le=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,se=
rif,EmojiFont; text-decoration-line:none"><img alt=3D"unnamed" border=3D"0"=
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
e:none"><img alt=3D"unnamed (1)" border=3D"0" style=3D"width:18pt; height:1=
8pt" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&am=
p;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;=
attbid=3DANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-=
plEkGO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-=
h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1">=
</span></a><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family=
:Arial,sans-serif,serif,EmojiFont">&nbsp;</span><a href=3D"https://www.face=
book.com/VehereIndia/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"=
LPNoLP"><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Ar=
ial,sans-serif,serif,EmojiFont; text-decoration-line:none"><img alt=3D"unna=
med (2)" border=3D"0" style=3D"width:18pt; height:18pt" src=3D"https://mail=
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
</div>
</div>
</div>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________
USRP-users mailing list
<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ett=
us.com">USRP-users@lists.ettus.com</a>
<a class=3D"x_moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com</a>
</pre>
</blockquote>
<br>
</div>
</body>
</html>

--_000_MAXPR0101MB1530656FD7730B7E7C44218A90E30MAXPR0101MB1530_--


--===============4812240471312674500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4812240471312674500==--

