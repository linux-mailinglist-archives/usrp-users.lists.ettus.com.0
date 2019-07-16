Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C996A886
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jul 2019 14:16:48 +0200 (CEST)
Received: from [::1] (port=35576 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnMNy-0002AN-K4; Tue, 16 Jul 2019 08:16:46 -0400
Received: from mail-eopbgr1380109.outbound.protection.outlook.com
 ([40.107.138.109]:28278 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <koyel.das@vehere.com>)
 id 1hnMNt-00020a-VT
 for usrp-users@lists.ettus.com; Tue, 16 Jul 2019 08:16:42 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=no0pMmmgCkSJKCYTpMAAWOlpVkELMaOS/LxC7BEM8fJrJqOhlS1SHQjTddVXNyKVJw9rJbI5ByqJG+MJLXv6Nuo2jTyFqPILOjhqafXWrw5dYTdpnNosz7dJBcxn3ZnxHU0Hho3RXIu0MNptcnIKDxSMuLItJduyTv70KdqQde8bQokzdfdfg/SHazJNXAvfQI5SbHtmPh1hTxklKzPzClkpeXCLMfLAb47H3YiPVALO9uVCUfdckSXWOQLRndVTHF58tbNwc0mcdxBTLxd6lMd0rKkN7pBanLHyeXQjYY3Xb+0qtqnhvy5DQCt9NBuLVYvlz+L39lJME2PL0DvXJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vm/UDhTtmgqTVyFI3TzFos1X9Rq7rKlvMPQL370Zbl4=;
 b=J8QXkmRQnLH3wyXgBxOJ/UrYTcQ+fuqJR6BBYGcNMyXqPK3UUCOKtCDy5xmjm/9FN6pa2yPEmnEw/tUj4eM97lqdl2cCT8lhTkSBqFsRazJdtoL2eyZyVPdk7Vx/UU6LPErkwQiZ5I1EAIQiP7UFFM/IJ36TYihfcrroC+t+REnE3ju01raDnxbhiw+cshXA8yZNshJVhnQ10OrbzOkz1R2DjEBppjDtRoWQZ4LJy4QHeSLqub4xeB2n0yKChuWO/bv9mVEuKytXcZc1DOEwMwAiVnzIF1osfjY7u+1GbD6+f2OjdZ3nTOKO4PXL328RDpFte4oFTi2TVI0xshW25g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=vehere.com;dmarc=pass action=none
 header.from=vehere.com;dkim=pass header.d=vehere.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vm/UDhTtmgqTVyFI3TzFos1X9Rq7rKlvMPQL370Zbl4=;
 b=PiYZ36juYhje3Ne7JBEj7Abk6pyWBfoeS+QJ+iymmP2Zl7qab7S+X7VIAvDr+gxmpoAwjUX5nSdPO8XnmvmDsTXnbv/BGXVy7TJ6PhwvqIOhk/f3+Ba+nZ25rAjToAom+wGx7bWyeDo6OmELSPrS62Q7So/3/FM75UFsvK2ze2s=
Received: from MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM (52.134.128.12) by
 MAXPR0101MB2106.INDPRD01.PROD.OUTLOOK.COM (52.134.133.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Tue, 16 Jul 2019 12:15:54 +0000
Received: from MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::446a:70fa:58ff:ef49]) by MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::446a:70fa:58ff:ef49%7]) with mapi id 15.20.2073.012; Tue, 16 Jul 2019
 12:15:54 +0000
To: Robin Coxe <coxe@quanttux.com>, Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] USRP E313
Thread-Index: AQHVOucxymOz7T55AUuyh9O0QDUUAqbLwY6AgAABbICAAWazww==
Date: Tue, 16 Jul 2019 12:15:53 +0000
Message-ID: <MAXPR0101MB153054C9EB83046C3964087290CE0@MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR0101MB153020BA8AEC1D99B16F030790CF0@MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM>
 <1915F48D-FF15-4AD4-A124-A15ABFB9324A@gmail.com>,
 <CAKJyDkLz2Q=J2SL1DSZzCvm2sEKmu_jMbZfTievjOUmD9XCcvA@mail.gmail.com>
In-Reply-To: <CAKJyDkLz2Q=J2SL1DSZzCvm2sEKmu_jMbZfTievjOUmD9XCcvA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=koyel.das@vehere.com; 
x-originating-ip: [14.143.49.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2958314-3804-463f-5dbc-08d709e7599a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(7168020)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MAXPR0101MB2106; 
x-ms-traffictypediagnostic: MAXPR0101MB2106:
x-ms-exchange-purlcount: 7
x-microsoft-antispam-prvs: <MAXPR0101MB2106999EC531153F80D3955490CE0@MAXPR0101MB2106.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39830400003)(396003)(376002)(346002)(136003)(189003)(199004)(365934003)(6246003)(6506007)(53546011)(476003)(54896002)(76176011)(55016002)(5070765005)(486006)(68736007)(55236004)(9686003)(53386004)(5660300002)(966005)(8936002)(81156014)(8676002)(33656002)(6306002)(508600001)(53936002)(316002)(446003)(236005)(2906002)(110136005)(66066001)(102836004)(81166006)(11346002)(26005)(66556008)(186003)(6116002)(256004)(14444005)(66446008)(66476007)(64756008)(3846002)(229853002)(25786009)(7736002)(66574012)(76116006)(14454004)(606006)(71190400001)(71200400001)(66946007)(52536014)(6436002)(5024004)(74316002)(7696005)(86362001)(4326008)(733005)(6606003)(19627405001)(78486014)(99286004)(15398625002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MAXPR0101MB2106;
 H:MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vehere.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: G+jjGWx44qSa8xaiI+ip1qGT5qi+rtguSpAzx3ajZThgpVlzvM5+19AuBU0LELWE0KZjnEl+W82edP4sYM8Dl+Lpx8jNM9O/BTttp3ikIIBHhTEKqAvUGzcraYT7lZwzq5wAeXOW5ee/yQO0egmmVo4tKE//3b379NoZCNem/wZD8uuFP1mWhJYQ4zyDFMQwaWUnLd0mVtk0VXdWhRVK3LWQAv20XGwYsZmsyLiqL7ZmAEaMhtMwcMKUyuku/KyH+70nBYqpru+7GQ3XviMaYezcUzOcvBN2dg1zJFAlcqc29I2e79vnaZ86Aj6zcQtC6lxOThU8fYFteWsioGukX1WIiz8ihF1Oqwkd/lJFRXZDpFm3XUAfv9K29w0bF80d+7WQ6qvSr5fWvGoA0zalwl1s5RJt3Gyrd9/KErQt4qc=
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2958314-3804-463f-5dbc-08d709e7599a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 12:15:53.9887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: koyel.das@vehere.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR0101MB2106
Subject: Re: [USRP-users] USRP E313
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5921828606360351663=="
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

--===============5921828606360351663==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR0101MB153054C9EB83046C3964087290CE0MAXPR0101MB1530_"

--_000_MAXPR0101MB153054C9EB83046C3964087290CE0MAXPR0101MB1530_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,


I understand that there is a limitation on the Ethernet that it doesn't sup=
port more than 1 gig. But is there any limitation from the product side whe=
n it is in network mode as compared to 2955? Further  There are two TRx and=
 two Rx ports so can TRx be also used as receiver and if yes then can 3 cha=
nnels(1 TRx and 2 Rx ) be streamed simultaneously as receivers?


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

________________________________
From: Robin Coxe <coxe@quanttux.com>
Sent: Monday, July 15, 2019 8:18:41 PM
To: Marcus D Leech
Cc: Koyel Das (Vehere); Ettus Mail List
Subject: Re: [USRP-users] USRP E313

The USRP E313 is an E310 in a weatherproof enclosure with PoE capability.  =
 As Marcus points out, the network interface to the PC (over 1gigE RJ-45) h=
as far less bandwidth than an Ettus-branded USRP X310 or NI USRP 294x or 29=
5x using a PCIe or 2x10 gigE link to a host PC.



On Mon, Jul 15, 2019 at 7:44 AM Marcus D Leech via USRP-users <usrp-users@l=
ists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Not really possible except for a test mode called network mode that offers =
very low bandwidth

Sent from my iPhone

On Jul 15, 2019, at 4:27 AM, Koyel Das (Vehere) via USRP-users <usrp-users@=
lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:


Hi,


The following USRP


https://www.ettus.com/all-products/usrp-e313/

[https://www.ettus.com/wp-content/uploads/2019/01/E313_Front-Large_2-1200x6=
30.jpg]<https://www.ettus.com/all-products/usrp-e313/>
USRP E313 | Ettus Research, a National Instruments Brand | The leader in So=
ftware Defined Radio (SDR)<https://www.ettus.com/all-products/usrp-e313/>
www.ettus.com<http://www.ettus.com>
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

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_MAXPR0101MB153054C9EB83046C3964087290CE0MAXPR0101MB1530_
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
<p style=3D"margin-top:0;margin-bottom:0">I understand that there is a limi=
tation on the Ethernet that it doesn't support more than 1 gig. But is ther=
e any limitation from the product side when it is in network mode as compar=
ed to 2955? Further&nbsp; There are two
 TRx and two Rx ports so can TRx be also used as receiver and if yes then c=
an 3 channels(<span style=3D"font-family: Calibri, Helvetica, sans-serif, E=
mojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols; font-size: 16px;">1
 TRx and 2 Rx )</span>&nbsp;be streamed simultaneously as receivers?</p>
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
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Robin Coxe &lt;coxe@q=
uanttux.com&gt;<br>
<b>Sent:</b> Monday, July 15, 2019 8:18:41 PM<br>
<b>To:</b> Marcus D Leech<br>
<b>Cc:</b> Koyel Das (Vehere); Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] USRP E313</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">The USRP E313 is an E310 in a weatherproof enclosure with =
PoE capability.&nbsp; &nbsp;As Marcus points out, the network interface to =
the PC (over 1gigE RJ-45) has far less bandwidth than an Ettus-branded USRP=
 X310 or NI USRP 294x or 295x using a PCIe or
 2x10 gigE link to a host PC.
<div><br>
</div>
<div><br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Jul 15, 2019 at 7:44 AM Mar=
cus D Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"auto">Not really possible except for a test mode called network=
 mode that offers very low bandwidth<br>
<br>
<div id=3D"x_gmail-m_-3497708271369395004AppleMailSignature" dir=3D"ltr">Se=
nt from my iPhone</div>
<div dir=3D"ltr"><br>
On Jul 15, 2019, at 4:27 AM, Koyel Das (Vehere) via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div id=3D"x_gmail-m_-3497708271369395004divtagdefaultwrapper" dir=3D"ltr" =
style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,sa=
ns-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;=
,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emoji=
Symbols">
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
Hi,</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
The following USRP</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" rel=3D"noopener n=
oreferrer" id=3D"x_gmail-m_-3497708271369395004LPlnk349954" target=3D"_blan=
k">https://www.ettus.com/all-products/usrp-e313/</a></p>
<div id=3D"x_gmail-m_-3497708271369395004LPBorder_GT_15631740463640.4609731=
603017766" style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFon=
t; font-size:16px; width:885px; margin-bottom:20px; overflow:auto">
<table cellspacing=3D"0" id=3D"x_gmail-m_-3497708271369395004LPContainer_15=
631740463610.5595525113046114" style=3D"width:796px; margin-top:20px; paddi=
ng-top:20px; padding-bottom:20px; border-top:1px dotted rgb(200,200,200); b=
order-bottom:1px dotted rgb(200,200,200); overflow:auto">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td colspan=3D"1" id=3D"x_gmail-m_-3497708271369395004ImageCell_15631740463=
620.520711699452409" style=3D"width:250px; padding-right:20px">
<div id=3D"x_gmail-m_-3497708271369395004LPImageContainer_15631740463620.79=
82520787803893" style=3D"display:table; width:250px; height:131px; margin:a=
uto">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" rel=3D"noopener n=
oreferrer" id=3D"x_gmail-m_-3497708271369395004LPImageAnchor_15631740463620=
.5859776582035903" target=3D"_blank" style=3D"text-align:center; display:ta=
ble-cell"><img id=3D"x_gmail-m_-3497708271369395004LPThumbnailImageID_15631=
740463620.0445211311981637" style=3D"vertical-align:bottom; display:inline-=
block; width:250px; height:131px; max-width:250px; border-width:0px; max-he=
ight:250px" src=3D"https://www.ettus.com/wp-content/uploads/2019/01/E313_Fr=
ont-Large_2-1200x630.jpg"></a></div>
</td>
<td colspan=3D"2" id=3D"x_gmail-m_-3497708271369395004TextCell_156317404636=
30.9983429177449736" style=3D"vertical-align:top; padding:0px">
<div id=3D"x_gmail-m_-3497708271369395004LPRemovePreviewContainer_156317404=
63630.5835837580145755">
</div>
<div id=3D"x_gmail-m_-3497708271369395004LPTitle_15631740463630.94876332212=
29601" style=3D"color:rgb(0,120,215); font-size:21px; font-family:wf_segoe-=
ui_light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,&quot;Segoe =
UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; line=
-height:21px">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" rel=3D"noopener n=
oreferrer" id=3D"x_gmail-m_-3497708271369395004LPUrlAnchor_15631740463630.8=
538318560805709" target=3D"_blank" style=3D"text-decoration-line:none">USRP=
 E313 | Ettus Research, a National Instruments
 Brand | The leader in Software Defined Radio (SDR)</a></div>
<div id=3D"x_gmail-m_-3497708271369395004LPMetadata_15631740463630.93192801=
20041624" style=3D"color:rgb(102,102,102); font-size:14px; font-family:wf_s=
egoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-=
serif,serif,EmojiFont; margin:10px 0px 16px; line-height:14px">
<a href=3D"http://www.ettus.com" target=3D"_blank">www.ettus.com</a></div>
<div id=3D"x_gmail-m_-3497708271369395004LPDescription_15631740463630.73233=
90913605139" style=3D"color:rgb(102,102,102); font-size:14px; font-family:w=
f_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sa=
ns-serif,serif,EmojiFont; overflow:hidden; max-height:100px; line-height:20=
px">
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
<br style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font=
-size:16px">
<span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; fo=
nt-size:16px">has embedded processor I think. So is it possible that we don=
't use the embedded processor and use it like USRP 2955 that is capture dat=
a using gnuradio&nbsp;API and process it
 in our computer as we are doing with 2955?</span>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
</p>
<div><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFon=
t; font-size:16px"><br>
</span></div>
<br>
<p></p>
<p style=3D"margin-top:0px; margin-bottom:0px">Regards,</p>
<div id=3D"x_gmail-m_-3497708271369395004Signature">
<div id=3D"x_gmail-m_-3497708271369395004divtagdefaultwrapper" dir=3D"ltr" =
style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,sa=
ns-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;=
,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emoji=
Symbols">
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
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
e.com/" rel=3D"noopener noreferrer" id=3D"x_gmail-m_-3497708271369395004LPN=
oLP" target=3D"_blank">www.vehere.com</a></font></font><font face=3D"Tahoma=
,serif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; fon=
t-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" rel=3D"noopener noreferrer" id=3D"x_gmail-m_-3497708271369395004LPNoL=
P" title=3D"https://www.linkedin.com/company/vehere-interactive-p-ltd
Ctrl&#43;Click or tap to follow the link" target=3D"_blank"><span style=3D"=
color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,Em=
ojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed" style=
=3D"width:18pt; height:18pt" src=3D"https://mail.google.com/mail/u/0/?ui=3D=
2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=
=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ_cw8QOmJOuH5dOGgYLOxSybsCNVtf-NS_W=
wKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kcoQwHmymFim1kkqNhKdcHOplQP4=
e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213=
fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34); fo=
nt-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;</span><=
a href=3D"https://twitter.com/VehereIndia" rel=3D"noopener noreferrer" id=
=3D"x_gmail-m_-3497708271369395004LPNoLP" target=3D"_blank"><span style=3D"=
color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,Em=
ojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed (1)" s=
tyle=3D"width:18pt; height:18pt" src=3D"https://mail.google.com/mail/u/0/?u=
i=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;att=
id=3D0.2&amp;disp=3Demb&amp;attbid=3DANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKUBvlR=
tQ_pTYQysvBjAQVxtHSIbIzZfOj-plEkGO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAaCgYT=
axHO_-lXXFvlK4&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a2=
13fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34); =
font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;</span=
><a href=3D"https://www.facebook.com/VehereIndia/" rel=3D"noopener noreferr=
er" id=3D"x_gmail-m_-3497708271369395004LPNoLP" target=3D"_blank"><span sty=
le=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,se=
rif,EmojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed =
(2)" style=3D"width:18pt; height:18pt" src=3D"https://mail.google.com/mail/=
u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&a=
mp;attid=3D0.3&amp;disp=3Demb&amp;attbid=3DANGjdJ9JZdmekO-R6DmUlgNehr-eRw41=
OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjwSBYH5RwgNDRHAoz8EfzpBBa4=
gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd=
46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34=
,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;=
&nbsp;</span><span style=3D"color:rgb(34,34,34); font-family:Tahoma,sans-se=
rif,serif,EmojiFont"><br>
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
</div>
</blockquote>
<blockquote type=3D"cite">
<div dir=3D"ltr"><span>_______________________________________________</spa=
n><br>
<span>USRP-users mailing list</span><br>
<span><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-=
users@lists.ettus.com</a></span><br>
<span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_MAXPR0101MB153054C9EB83046C3964087290CE0MAXPR0101MB1530_--


--===============5921828606360351663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5921828606360351663==--

