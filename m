Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D79404DCF17
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 20:58:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B60BB385370
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 15:58:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="mO2OOV1M";
	dkim-atps=neutral
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0073.outbound.protection.office365.us [23.103.208.73])
	by mm2.emwd.com (Postfix) with ESMTPS id A8348384C87
	for <usrp-users@lists.ettus.com>; Thu, 17 Mar 2022 15:57:05 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=yAE7m0TdnV3pHlriamFQsgLb9JRBQZLd9yFMHXK+K0gDbvXoa444toQsPO8XlfNjH2AEjtoDeNx3fgFIfeBXVp7gkM8qQ3BBaYVR7jeSGrmfWgKCTdK+c80WqY1y6Vyy7SsyMvpZWeQV98OWdagXxJ994exdHfS1ts5wLxcT/hfxmYygtWZslyvFWN/Qnp7LitlD9vIY6/cQPC72EyNHhpAb5wlVFSRP9Pt8v9D6lPJbiiVqn2kiHiUvGWGGXCvWcQc4zKMcSPCxw/4V4DoEsBMGxwathqJSZKI33m+sb0Nxb27pz0rTBGc8NRbvzM+4dXeUO48p3Cyz1zx8Fk+G8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d7iZpLuCmWpYLdv0xJ+XVMKtkTRn+QsH+6d028/+Jdo=;
 b=u3wHnW+6WiFepHJvGMTzNERSUHM9wGMEj4ciqEcRelYKX+1u2MvxWUeyc6xuu9Dk539wlt4f5nJTwqGNvx6dmw450XK1JhIcUgMG/T8OM6FrZ7yNZAmeBciQNGXpJNbkTuujZtNZpUe5XsrjB4LOInxuaGvDfzBVUTF1WHrNrF5BrFrG+fUdghRsFI8en+jcAMLPwiSQ6iWfa9iu4tsAJVLoRdHkbDvDDQZ8uQGGca+9BbgnSrj2u7y+/JaddJ+cCMkG5UjuBsQodn4lS6VrMrMZ/pCQxsb1s4x8z2O2tFzw9NTEb0s0D0xwoufdhiFDUfVG7ZK9gN5Nz04YkOgXOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d7iZpLuCmWpYLdv0xJ+XVMKtkTRn+QsH+6d028/+Jdo=;
 b=mO2OOV1MDay0Ul8c6Bm33Z3tZ1GXdFir4MgbteNj/zfey6oOXfJoi2nUp3xDBBKRKhKKlNcmhR5X62T1mV+MStCbd4+XDdP3no0X7HjWoAz7+Hu7li5ktNHJuAzdFGO8TexVDYmEhRWvrZS//Zsrgg9CwQoP27H5AJ7wao8ubca4BcKFkJPdB5vk2A2kloQFwSPr2tH6n/txuC1gpJyiWaE14NV3z9flBfaTmgqz3iqMghmM3ISPBwEgkt2quxxSP0RtbbwHXXvP0YDz216nnvfyhFG4ihicFfjoSLK0uj+4rIqxoLb2ctUGcghgyh57uk9PyavRtE0zD6KfHPLsBA==
Received: from BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:187::5)
 by BN0P110MB1125.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.13; Thu, 17 Mar
 2022 19:57:00 +0000
Received: from BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM
 ([fe80::1082:c31e:b163:88fd]) by BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM
 ([fe80::1082:c31e:b163:88fd%6]) with mapi id 15.20.5061.024; Thu, 17 Mar 2022
 19:57:00 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Supporting ttyUSB peripherals on the Linux filesystem?
Thread-Index: Adg6OO/cbbTEuy+7TgGLiMBmJUImKQ==
Date: Thu, 17 Mar 2022 19:57:00 +0000
Message-ID: 
 <BN0P110MB16755D2F51E1A33D646A0075B7129@BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50e079f1-b29e-430f-4222-08da08504cf1
x-ms-traffictypediagnostic: BN0P110MB1125:EE_
x-microsoft-antispam-prvs: 
 <BN0P110MB11250EF8BAB037F6CCA74AA0B7129@BN0P110MB1125.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0l4HyVsqAG7ZLPAN0lNL1k2MpyP7mW+qx9Kg08A8V2B0idy5jhJd4p5vfyFkX0JaBV8Lmmao6JS2cvwiTx2XcMQvaGVQN4JZwhHnsDPzooLqSaqaDbpUEgJK3GQ09X4sL2SpnOtX4S+2llt3V5qXHb0g5bmYxZqDVycjfi6Pv7MxZQ1euoq/kH9Kf0feH1b1hJcA0V8kw682ITi42wdjAluD68P9+Vuj8A4LxfK0tzq3SCDt5+NqLbD3DUrKX3NDz2KsErzJv610t1vCSJyOx1qZfTBoP+8lUq9zaCPKEBOJuZm53Y7zK7Omfc1uvy9UFtKALVSAlelp1IHwb9RDKetj/x3rIf4Qec+jiP8edkOVR9OEdueHjAPY4r4yF/D2BswNJmoOYIL64mbxxs4m5Oo9w8+y4KCpRMuvvP79LQvm2pGgQZY+sF1UbBfuCsWBLMuablwIFGPEJlPKKaEep18rzi3252CPMIgDNzrEQieUPpWgpnldQvagi8BphaRdHkZkcuReNtROMRF9Y/XKekOh1w++sLgWAXPBQNx2Rj14oRbbLcv62FBmn3M/J23XPG2AjzJeAPs67p76nGz1x8DtIVfIRH/hhmmkcf38Zee33ew46MI28At22e6ZWy1BqjEmf0BNydim/AY4istdTw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(346002)(76116006)(66946007)(122000001)(66556008)(38100700002)(186003)(64756008)(66446008)(66476007)(8676002)(38070700005)(6916009)(55016003)(8936002)(9686003)(5660300002)(52536014)(7696005)(6506007)(33656002)(508600001)(86362001)(71200400001)(2906002)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 by/aG1p7VSVPCVh+0HowIBollEdkTTC6916UmFPWyv5Lc5nNs0SwyqMMdsk3gtAmZyVxE6rAA7X5K8y/zXk9HHvSJWQSTAIUBFpByq5WI/JKOkX0Aj/7xb7RSni74AK4FwGSVKU01CNsZQg/cirOZQTld0F3Dl3e+SLu1hra9XACB7ucKV4p4Q9BRGqPb1XGqgSlhj0Dk4tP/VoEw7IBtA==
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 50e079f1-b29e-430f-4222-08da08504cf1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2022 19:57:00.6226
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1125
Message-ID-Hash: S2RISS7FWVGEEHF2VHRNPJTUQ2TKICXE
X-Message-ID-Hash: S2RISS7FWVGEEHF2VHRNPJTUQ2TKICXE
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Supporting ttyUSB peripherals on the Linux filesystem?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EBXQM565OJHXA336ZG7WPGGMR3TJSZCM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7412037368620447040=="

--===============7412037368620447040==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB16755D2F51E1A33D646A0075B7129BN0P110MB1675NAMP_"

--_000_BN0P110MB16755D2F51E1A33D646A0075B7129BN0P110MB1675NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm investigating how to expand the usefulness of the USB Type-A port on th=
e E320 and N320 by supporting peripherals that show up as ttyUSB devices (e=
.g. those that use FTDI or PL2303 chips for USB-to-serial interfacing). Thi=
s would enable me to do more on the radio in embedded mode, and possibly al=
low the elimination of a separate SBC. It looks like the kernel that ships =
on USRPs disables CONFIG_USB_SERIAL and therefore also lacks drivers for th=
e common chips such as USB_SERIAL_FTDI_SIO, USB_SERIAL_PL2303, USB_SERIAL_C=
P210X. I believe my options are to either rebuild the stock kernel, or poss=
ibly do something with an out-of-tree module build.

I'm comfortable with kernel builds and Yocto (though it's been a few years)=
, but I don't know anything about the typical Ettus build process or sugges=
ted cross-compile environment. I also just want to rebuild the kernel bits,=
 not the full filesystem. I'd appreciate any thoughts on whether this type =
of customization is generally done, and any pointers on the quickest/easies=
t approach. :)

Thanks,
David

--
David Raeman
Synoptic Engineering


--_000_BN0P110MB16755D2F51E1A33D646A0075B7129BN0P110MB1675NAMP_
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I'm investigating how to expand the usefulness of th=
e USB Type-A port on the E320 and N320 by supporting peripherals that show =
up as ttyUSB devices (e.g. those that use FTDI or PL2303 chips for USB-to-s=
erial interfacing). This would enable
 me to do more on the radio in embedded mode, and possibly allow the elimin=
ation of a separate SBC. It looks like the kernel that ships on USRPs disab=
les CONFIG_USB_SERIAL and therefore also lacks drivers for the common chips=
 such as USB_SERIAL_FTDI_SIO, USB_SERIAL_PL2303,
 USB_SERIAL_CP210X. I believe my options are to either rebuild the stock ke=
rnel, or possibly do something with an out-of-tree module build.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I'm comfortable with kernel builds and Yocto (though=
 it's been a few years), but I don't know anything about the typical Ettus =
build process or suggested cross-compile environment. I also just want to r=
ebuild the kernel bits, not the full
 filesystem. I'd appreciate any thoughts on whether this type of customizat=
ion is generally done, and any pointers on the quickest/easiest approach. :=
)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">David<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
<p class=3D"MsoNormal">Synoptic Engineering<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN0P110MB16755D2F51E1A33D646A0075B7129BN0P110MB1675NAMP_--

--===============7412037368620447040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7412037368620447040==--
