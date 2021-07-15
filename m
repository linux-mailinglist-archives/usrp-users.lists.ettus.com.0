Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 980703C9C0D
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jul 2021 11:40:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EDF83842DD
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jul 2021 05:40:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=hmgcc.gov.uk header.i=@hmgcc.gov.uk header.b="o5juJsRL";
	dkim-atps=neutral
Received: from GBR01-LO2-obe.outbound.protection.outlook.com (mail-eopbgr100129.outbound.protection.outlook.com [40.107.10.129])
	by mm2.emwd.com (Postfix) with ESMTPS id 8F7BB38414D
	for <usrp-users@lists.ettus.com>; Thu, 15 Jul 2021 05:39:11 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GW3JZvTg8/1+7fC8jrlwRmgTH3Ve35AP4g3+k0X7uB8xo/0VLQ7R2ZiZp/x63zPJshDMlSAzE2ffu3hctYdOkJgQngm3iBvlz1IpHf36PIxBBWWOuvNAl12fVaFVBlTCvp+M9rNm83IzWReW6w0sc35+L4YLK7SkrlBOYNXjSQKmZdMth7LHrvXZ5ZAOsBUR5M2SD6nI+E+XUnDqNZSsl764DH/v/aNyXnBKnErBQKOg7nIBPNxB7+SBHu53cyV9OT5Vf8WXzejsWiL0/nXOHyxQVJ3y8T+0q4zcqA/nZ/N1kE7Jcst8mv23AntJbs4yTFbyykucVzwzBpRcK3xpgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MINM8rdAcIkJFDuh2ItosEFJEuCyiMq8w8uX9LdrIuI=;
 b=UDVdeEh4MqgisbLEVUxQC7wwyhGar+/OFlIFBajwd0wU7vYWVz40BpBbAvFxUAMFNEPkiS9NmuJejKGzFyyBtpclyrM9j+lq7M6vsil/gt9MTEPHcNJ0c7jPuotrKicZFMjHNB3D2vrKeSirMQjdGSmiZPEQr7Rygsqnm86iAteeijBiKEWnnLBgcpNwXQJC/497Q7dxMoExp0ouox+oHjKoDuole6sWs2Tl2VOVz9KJi6eckD2Al6QG6iGVf+QwtsEaqLjESSHy+SztAo4hvPA2BzRc9NqJBO6rNpim++lF9ghXNQuOs1nZkpx7y1bUF5dlThOYuat3PemFifZhaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MINM8rdAcIkJFDuh2ItosEFJEuCyiMq8w8uX9LdrIuI=;
 b=o5juJsRLunXNOflus9uhXZ8M1QBTbNbGtpy1xN0GEAohLRlzt+k8Czy0ALAE43rdDmZcVNO0fkHJkjr+/a1rtFtyDHeR4fFQDt0ATcsU0WrWW9F6uMsw72kDtyapCqqEVYM6pWufpS3+2/3knxwaZvwn1QKN7sR6aIWERNHeTlg=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LO0P123MB4345.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:187::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23; Thu, 15 Jul
 2021 09:39:09 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::b968:ffb7:31b7:ac94]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::b968:ffb7:31b7:ac94%5]) with mapi id 15.20.4331.023; Thu, 15 Jul 2021
 09:39:09 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: VHDL Source Files in RFNoC 4.0
Thread-Index: Add5XUKrEeV1qPErRqyNo0met7fMOw==
Date: Thu, 15 Jul 2021 09:39:09 +0000
Message-ID: 
 <LNXP123MB37241495636C06E84529045FCA129@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=hmgcc.gov.uk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: decc148a-7f2e-4b8f-ecf6-08d94774657f
x-ms-traffictypediagnostic: LO0P123MB4345:
x-microsoft-antispam-prvs: 
 <LO0P123MB4345E68CFD99EA2DA7A16309CA129@LO0P123MB4345.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 70GRvovS/HHFWhZpC587Jgk0uf1Iq/AF08xiDJ4gMw2FrNuXtriIBu1XKIBJA3AnFDNbZ8dWjRiJREvkX6tYnBWqvSnPJh2hgr0PvxXVK1aAH8QAy6J/kiSS8l0ReBSfgxEjjT3pQDA/l0ZTbCrFUYpPbQqEZrD2CUyLbGGEUH3DIZLd0wk0RsnrHROXGmLfUbcj3IhzZk+4lDx+sDJH7LYjvLy1QFiUmF23VhIyFiLzKy+OiyjNxCT0oN6FDCiHSU7xKk2oCyO4vel9p2uKZJH1MYJ+VRitAqm5+OV0N7WCqaJt8LsKag+t84k13oFdriTu3LwY5So+ME8chFVRbGs619HyQpQdpcdLcPlVSnjBLkO5IxcLf/XR95RzJ+G6GNFVltvTxkpZABkDKHa2lr6AQcACPOwHPdCCfYt35ZDUZok/prf9SW3+mGvuIDYxIwsvtDrW+PFS+7GALkIMF3n+IeWJbuWkOCFDWP5bHGsJtFHUa+Z12nhvz+XEHinoX1UqZTo916ZqNKbhqcUSUM+Na464GKLQl2SaIO8QKbZb0SFMDA3KI+yHJBf8LX2GTg5jFW2gWovNGsF+oIO/AKe8fYLPpKShZVZY0KsEAz5Cut7pZpInoORrrA+/myT2lP6kPD+TI7fZmu4Q76wQ7LL8jI4bP/lP0c8pRPIRB+9qfMGFeTfBZAjuhX19azb3A6GcE9Ze1wOg6zMmbomRVA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(396003)(376002)(136003)(39840400004)(66446008)(186003)(86362001)(8676002)(66476007)(66556008)(64756008)(66946007)(76116006)(52536014)(478600001)(26005)(38100700002)(71200400001)(8936002)(83380400001)(55016002)(9686003)(316002)(6916009)(33656002)(7696005)(2906002)(122000001)(5660300002)(9326002)(6506007)(38070700004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?dBo3VteEdIuwD8H1ErFIV/F6pAIA/GL7+F+6LcGjOkwguZmhrokswfoSLUT7?=
 =?us-ascii?Q?DOfu/3IUyXbxz+uVipXoWu6pAZsSWyIGg4HwkmQXC9F9ewVPNAwK956eL3Ai?=
 =?us-ascii?Q?dz21J3FVuPI93HDSQt6dvHgivEecvZWu8Hkx+cUaPSBsBePLB1GfonJm9+Ar?=
 =?us-ascii?Q?8qgQXvtCPlmpW3dMSBtiUUzp+1FRoaNbuc6ag596b1YtmPFSGRzJ4Ms6j0QL?=
 =?us-ascii?Q?XPWZvSKGjhdp5wDEuWE+EGFyAn1eAckUZo2g5IzdbvaKB00+lK6feNCRkJGs?=
 =?us-ascii?Q?PWBvo2GoyQQtSEdsWQuC3hwVJr9jB4N3QTlQHjGR/8YoxsYrEA+Nr6sEmXL5?=
 =?us-ascii?Q?mcx3egTznwLhc84Fk5Wy3rRderaSA4F+2/VY2Jda7EMcf8sTKuuZdwWSPkeX?=
 =?us-ascii?Q?KThVRrrGsefLhXPYF8x4zbdE5aXSfqCJJOxJxVqvEAg2ohsfIpBiTXIZux2q?=
 =?us-ascii?Q?IMnp7B1u17pe8evjMqU0mtE1oYf47hYv1ESRjeITePIK72/IkBk9oQxYSAgQ?=
 =?us-ascii?Q?5BKJLEE0nVDiZsfTJQqH1nm6lUJXrIbYMcsDLI15OlrmtTJHHFqKevZRoMV+?=
 =?us-ascii?Q?IC7bsDRLKhfXQy65yOLOtdN6O2XgNvmvmBsMMApAG9xuPu5WMnXCunn7JfTH?=
 =?us-ascii?Q?BkDklPSy08dWqW20HNz+dfMQLgaF23xsCNE+EDMg0e05vAQqpNej7JnsbSsC?=
 =?us-ascii?Q?oxedn6eobAcBj0TFis9Oy52iGPlbn5uN3KxvPjiigbswmri2WVUZdk8UQLjI?=
 =?us-ascii?Q?sRlGly4tF2I4ITi7fj/xLk+34Vcg0hxlSyGn0N1Zwy8S1Bjoz0lXxfLRqjEX?=
 =?us-ascii?Q?HYjyFuq5HOMQMPpvCjb0o0hUffwsaQsEVmZB3UqYmGjVRiEuIR683Y+1G0xs?=
 =?us-ascii?Q?RKqr42L0U2fUzKAds4/u9Tt+BvL8L5SG2bP6OwTddwdzNlcxfEHaA4O35EcX?=
 =?us-ascii?Q?VDxurGkRDUM0xICqjKzzP1j5kD48IQ0GkUmlfk98t0aWfy+W2Qdkg8exBTCo?=
 =?us-ascii?Q?iVuWacyr3/zzFJXXgkj7bOj/iE3sCc+hfhZpv8TZQ6cA0FdzMGrWqvFslCBU?=
 =?us-ascii?Q?TaRKFIycpGAs3sqQ2veSWiEHV+CP+7C7BjIboVGClv4FTVtiUCB/Vy4rOJQ5?=
 =?us-ascii?Q?XQuYP9dOy2Mrjj9iQ7YypsEoRBRGrLys5GMPlqafsuxjwAsaxyygf9JHLRo5?=
 =?us-ascii?Q?4x5zdV/jWL2e9oaF4sM8Gsj6wex2rEuV2jQ5LI9at59lzB7WFUEiJoUKfyhq?=
 =?us-ascii?Q?4ccjhJ3pOIoIR0gGcGji5i2Yq1HECl3HkdjLA7/lsTVC8cHw316/akxKmNe2?=
 =?us-ascii?Q?4/ZXImrOrOw7xS/0mpmVxDX/?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: decc148a-7f2e-4b8f-ecf6-08d94774657f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2021 09:39:09.3380
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CScFrIDrFu6ue/PEC0u9GspZDE/X3dVw6IxtgO2B2OCPJhHUO31DrGBbk3fvg2WbJFL/RmLtccQqx1bRmDB0rQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P123MB4345
Message-ID-Hash: ZWUVCYEC55ZAVFLVGRM6PEENTW2SXHWB
X-Message-ID-Hash: ZWUVCYEC55ZAVFLVGRM6PEENTW2SXHWB
X-MailFrom: md964@hmgcc.gov.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] VHDL Source Files in RFNoC 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HJCPLZVTUFPC7XYZMEFTMOJEMOXDTUMS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Mark D via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark D <md964@hmgcc.gov.uk>
Content-Type: multipart/mixed; boundary="===============3734802614853756888=="

--===============3734802614853756888==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB37241495636C06E84529045FCA129LNXP123MB3724GBRP_"

--_000_LNXP123MB37241495636C06E84529045FCA129LNXP123MB3724GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to add VHDL into a RFNoC design using UHD 4.0.

I've added the source file into the OOT module folder along with the source=
 files created by rfnoc mod tool. I've then added the source file name into=
 the Makefile.srcs as 'dsp_wrapper.vhd'.

When I run 'make install' it stops on the error can't find "..../dsp_wrappe=
r.v'

The file path in the error message is correct, so it's looking in the right=
 place, but the file name has been truncated from .vhd to .v

I did notice the note at the top of Makefile.srcs that states file names sh=
ould be "nicely detectable by a regex. Best to put one on each line". So I =
tried modifying the file to have one file per line and the closing bracket =
on it's own line. However I still get the same error.

Is there any way that I can include .vhd source files?

Mark
________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_LNXP123MB37241495636C06E84529045FCA129LNXP123MB3724GBRP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to add VHDL into a RFNoC design usi=
ng UHD 4.0.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve added the source file into the OOT module=
 folder along with the source files created by rfnoc mod tool. I&#8217;ve t=
hen added the source file name into the Makefile.srcs as &#8216;dsp_wrapper=
.vhd&#8217;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I run &#8216;make install&#8217; it stops on th=
e error can&#8217;t find &#8220;&#8230;./dsp_wrapper.v&#8217;<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The file path in the error message is correct, so it=
&#8217;s looking in the right place, but the file name has been truncated f=
rom .vhd to .v<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I did notice the note at the top of Makefile.srcs th=
at states file names should be &#8220;nicely detectable by a regex. Best to=
 put one on each line&#8221;. So I tried modifying the file to have one fil=
e per line and the closing bracket on it&#8217;s own
 line. However I still get the same error.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there any way that I can include .vhd source file=
s?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</body>
</html>

--_000_LNXP123MB37241495636C06E84529045FCA129LNXP123MB3724GBRP_--

--===============3734802614853756888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3734802614853756888==--
