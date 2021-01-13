Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C40842F4464
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 07:09:23 +0100 (CET)
Received: from [::1] (port=46704 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzZLL-0002sC-Mg; Wed, 13 Jan 2021 01:09:19 -0500
Received: from mail-eopbgr1380118.outbound.protection.outlook.com
 ([40.107.138.118]:57340 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1kzZLG-0002m2-OI
 for USRP-users@lists.ettus.com; Wed, 13 Jan 2021 01:09:15 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cYo/WywLLoW/pH6Q2uRqjHh9wOf5HKJcIS/XOxU0JwiAiQDFW5ZMjJvNvvR8YTgxtPl+nyv2S4aL3BgnimdflI27G9MWB++PR7wAKyeaeM7e332vdmex4A/cJMt+sugl08grxcadx1djdMstqWxD8vEad+xu3HKovh+lcPOsDepBUDLrPzHutN0n121xRhkF4SVcc4QXLIIrA6qFR8Qz00QqorqGbAYYtlCVr4IzI8+j0IRThw3AbfGL/avDohXciB4A3P9V3oIuzA6OBJ0/MEKppWnMTD1cjrFQz73/zZ3hYB6h2/81WHzQ/zzuSqS+TAqjciNSZP5d//+PHQSnqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5v0IFyQZ06ZDwDDjJpng8+yY8li797FOyA8Jomd+P7k=;
 b=RNrw7U6p+kAcEHSETIeX1uzRBdOg5t4aKiogjtx2SxKbLN2ulbKgPtbhehbAbrQ1QxKdXsNBiQKZpUwZArjANDTC5557M+ebgKPePEGxA9vFxt05Qx8FLldKbysROcx0D2cLuNdf3S627NqxwJZrGxUhsriFN4CsCTsaMqUZPSf8DgjVh25UI+4e9/MvKgcN4Y8vfrhIehJVAxhRQMhevBPMI9XPJOqEJHl7vxIHLekm4JhEBEkzXPqr+scTHq9BtaAcVAkAPi60h3qeNypdyjqIPscz6aaViAzAFylwIVlv4GHkaIBl21D9XWfaB3CwylEWD4+yzvqvr67Z/eEmUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5v0IFyQZ06ZDwDDjJpng8+yY8li797FOyA8Jomd+P7k=;
 b=ExZntX03Ygug6XMYaRQsPHmM5weZDRarRFsWF2Q7PgU1RvALdlLx3kETmNbR0dP9EAfGp/0cqdWexXxRtqpmTOKPPsVTKwMWKGBZJePMI8QyhWSNWsM5WstWlRwl82chCH6nGxWIBBHwr/bP0dafLJ5cUUsNy1sDWVXr5RKUTVY=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR01MB2333.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:4d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Wed, 13 Jan
 2021 06:08:31 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::910b:3b21:70f7:372b]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::910b:3b21:70f7:372b%4]) with mapi id 15.20.3742.012; Wed, 13 Jan 2021
 06:08:31 +0000
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: USRP sample rate and bandwidth
Thread-Index: AQHW6XG/cAfb865gnU+dBcxvX5qtbQ==
Date: Wed, 13 Jan 2021 06:08:31 +0000
Message-ID: <MA1PR01MB2588D349CDCE2F00C0B209C090A90@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [219.65.75.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4267353-ec60-481c-7fe2-08d8b789a6ee
x-ms-traffictypediagnostic: MAXPR01MB2333:
x-microsoft-antispam-prvs: <MAXPR01MB23337C613A838FF54F6051F990A90@MAXPR01MB2333.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PH7mw9ARUaUDM7ZHDegP9puWw2O9pKomLfFrpMbXaTLI9WfZ1qmFV3Zt7VSQ6PBTe6eE9jHxToXDSJT6TOnG5o2AmNxILdtA5fguZNJtSpojgjONr49tLQlD/UxGcFdUoMHx1+e5MLSPKrvk0xkc7LERc10ZPbw9qAxB/vTbYVImJo6TDwv2XI1GePaR6vFQXabhMAFzb966jhgjj3UAD9WBnN0TC/SJr2mY6Tg00XimHJTikhiNxa1Mrv9LnbtcTDfB99mqidTCfTLUehdPPRO4fo9IZQioiL67SGtRXPPVvNvtDfYvqzvR3liEuifZiG2Y0c0GkCUp2gsEPFm2tsEAvFWrjK5BZPMZ55cE2SmJZ2QIP+zWMwzEq6jnEDarRj+rk8DnpOYdwedrXPF2NYVxa+Vp4UGAw4jebteY5jrt/4Dq6DHIkuHIpo0eN1EuOwvYwbkETn0kxAH0Fw0VOA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(376002)(346002)(39830400003)(366004)(396003)(136003)(8676002)(6506007)(478600001)(26005)(66446008)(86362001)(83380400001)(66476007)(66574015)(166002)(5660300002)(186003)(33656002)(316002)(52536014)(9686003)(66946007)(8936002)(91956017)(55016002)(7696005)(76116006)(2906002)(66556008)(6916009)(71200400001)(64756008)(19627405001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?Windows-1252?Q?OeCSghTz5ziInZDizxfYkDZOaL76s6OjwkZM8QUoTFNLFd3+UYcGRbDW?=
 =?Windows-1252?Q?rWC3tFwB7XCO1g/kaeVoBMF578y+6LOSc+/O/Aw8n5Yntv/cRjGhB+M/?=
 =?Windows-1252?Q?JB5UEtVL3pfF/BqFqHirhYnSlWcKyB2mshsR5nBUmpo779j7dc3jljE2?=
 =?Windows-1252?Q?YR2Cl6v6eopGcE/pZ6ThE1qQDSnmMpDlDyspPCsrN+aANWRJ+qhxu5UA?=
 =?Windows-1252?Q?5gQB3/WyXX6xHs5s51IMgPCBPY166A0KV8HXR6x3y5MJP9Lhl6ZeOimq?=
 =?Windows-1252?Q?IPG8HArTrRiuErsVUJ1pgrkkZdsQ6LCTUTum3u2CGNbgxirUt5vStSdy?=
 =?Windows-1252?Q?cWwbr9bhW+vM9ZPvLxSF68paOYyacnJlgF6HT4ew3YBh2GrYdLE52FeU?=
 =?Windows-1252?Q?HLsUJvismhIYpdyzVXx+Pj3mhxUFvGjiZewf93UlokiJv8KMdRYhpecG?=
 =?Windows-1252?Q?qbq2naegU5wCc6K+lkWDYR2UPCLrJRi+3RnPF4LIXLOR8Zt/QVHSI+h0?=
 =?Windows-1252?Q?53hKNioNsqnE+EhKO6VvRRcixnsUaQmTm+gxVSvZOLFCIoVXudmcZ6xJ?=
 =?Windows-1252?Q?VUHyFs/BreSTNFQvN31YHVAPgs34GhpGhLgdnwUa5vmxybeJJs162z6g?=
 =?Windows-1252?Q?v6+l5UkkqwdrAfyrmBUS2KWucpVrM27TaJQ+EtZi79evyqCVKUOGeScX?=
 =?Windows-1252?Q?u2e2Kky9b+xzqcBmKOxfQ2oVe5pjdsE5sEnuVXs1BmhlQTkIjPHaEPhX?=
 =?Windows-1252?Q?1oeSV9QT2kYsyDmQKF5oQFm1PdTPW9aDD588PKVe4IiQZ0N9yyX2t/FS?=
 =?Windows-1252?Q?64q9hpNWFST8KnEl149OfFEq5cgZGw4WhbDPa3dLLJaluGTsdC9HQEG9?=
 =?Windows-1252?Q?j0H1qE9LwQcKKWnu1J5zoiJ2H8RVFMwiA+8HIDYw7y4XiPEpj1YVIZXH?=
 =?Windows-1252?Q?cGMwy/HDymmPShyu3O0O25xCB3+x7kUfPnVV0lV5ZSiSdguBEoCtEV8N?=
 =?Windows-1252?Q?ZppqlyWsSzf5h7gxfnEctfBGX4NpYEEuTHmjr/rNLzBOKZ26fvY=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f4267353-ec60-481c-7fe2-08d8b789a6ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2021 06:08:31.1276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jYKGvTEgLW5DBMAIBoehSnoNWF+j+EKt0izPUiQKCDoQzyWk7yJzqbQGEoibOYXLwXOSsufMJQm5wk/gqwpzbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB2333
Subject: [USRP-users] USRP sample rate and bandwidth
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============0781672705210827947=="
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

--===============0781672705210827947==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588D349CDCE2F00C0B209C090A90MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588D349CDCE2F00C0B209C090A90MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

The USRP sample rate and bandwidth are two different parameters in gnuradio=
 so if I want 20 MHz bandwidth and 100 MSps sample rate then will setting b=
andwidth =3D 20 MHz and sample rate =3D 100 MHz serve my purpose? Normally =
sample rate (100 MHz in this case) is the bandwidth unless filter is used s=
o does that mean USRP is filtering out 20 MHz keeping sample rate at 100 MH=
z by itself?

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

--_000_MA1PR01MB2588D349CDCE2F00C0B209C090A90MA1PR01MB2588INDP_
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
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
The USRP sample rate and bandwidth are two different parameters in gnuradio=
 so if I want 20 MHz bandwidth and 100 MSps sample rate then will setting b=
andwidth =3D 20 MHz and sample rate =3D 100 MHz serve my purpose? Normally =
sample rate (100 MHz in this case) is
 the bandwidth unless filter is used so does that mean USRP is filtering ou=
t 20 MHz keeping sample rate at 100 MHz by itself?</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div id=3D"Signature">
<div>
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Helvetica,sans-serif">
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
M: +919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" styl=
e=3D"font-size:16px"><font style=3D"font-size:9pt">T: +91&nbsp;33 40545454 =
| F: +91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.vehere.com/" targ=
et=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP">www.vehere.com</a><=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><i><br>
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
</body>
</html>

--_000_MA1PR01MB2588D349CDCE2F00C0B209C090A90MA1PR01MB2588INDP_--


--===============0781672705210827947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0781672705210827947==--

