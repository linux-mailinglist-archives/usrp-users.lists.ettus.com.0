Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BC3768026
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jul 2023 16:52:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B087B3843BC
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jul 2023 10:52:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690642353; bh=ULv9ifhXY13A2jOukpkYA8IanUO7O4yvz9+hip6r6IM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tsSYND4ikoOpSdUnfBMn2yMBkIOe0gTly4zq9FM4pmoEHsKVZZcjxp2l1rMoV+Rt2
	 LTvhdMJU3xecck0QMWzGzuCEtZ/4LrrmhWxGEjKoOgJi7gNwKf+rvbEnhbcfCaoeRo
	 h1miK4OQWUE4WH5DURxUkkQYbLEegIrYTFMNdremzh1/OnDA1Q4thQE9z0KsflhpXb
	 8RL2kvZcKqgbCA7m3y6USByN1VGpsVovjYHMujzne51cYJfa3zKCkfwfDtOnqmx94o
	 WCaVbmqdr/Ec4NWbDwtw2lqPIpMyzywo8KluEfNSf1uPyi5E42KSJ/QOxk19AKVkqz
	 PzI6F2PfraoqA==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0079.outbound.protection.office365.us [23.103.208.79])
	by mm2.emwd.com (Postfix) with ESMTPS id C691338414A
	for <usrp-users@lists.ettus.com>; Sat, 29 Jul 2023 10:51:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="lSsfJHP7";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=1V8/q+qA4psOjywUGK28iBB38UmvFLe7Q9kOcasSn88wtmuGbwwEnWOZ1zcWevmvmio/5j2W4trmF96IrvW7XCZQuZJUuTVNZ1VsRfQXq1qwuIbYEyM6U0Rismz0NVHiqDP1r219erQl06U3ZN94BfSoVndJjZ+Gxn8U7R3GGLgxm/SusxXQByxcuztOQ7LWDq/IRx5XZVO97YgMSXoRIxQggbrbOPXdZjD66Qnr7LuSEJH0a151AL+nyEqteuWFwnNkswTB89I4Y71shOYK6hPqqugFqS+4dZJCpubn35CVUgHGVLE1oSsmkwkSshmrm81RX+rRO2kYkEJCfE+e2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2LZkwtMFuPVLrGvPFQ8zEEi2NaZZomOls5IiwX7YMlQ=;
 b=A6QN2q1h0OQCsOAToEbNyy1EiF65abQ8VFUuuk3bReXCSfPgK7L+rfCHvzjssMeEwsAYYWWgHizc2jHrbYaO1Wc0jY99S2nlmobrjY33vYwvb2D+jWzaqSgM2CF79JhZXSY1MKQbe4w27oYLDnlhKAnnhvY0JPdHhP4eeGoRhWPjk36JgnQKE4vJbbnJskS3Hg5H3hgga4exef6gm2FdbjA/4MRNF7UlvM6Foy5x8Dy/F3x3XdVFBZSrzwo75Z0liCqvu9JOvvwC3vcEaMmlS/0d8lVBzxlZr1BV1dgTtFfTYPtwCiRD8fnssnv93ZEL/vSa0x7wPTxO1UFKzolhZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2LZkwtMFuPVLrGvPFQ8zEEi2NaZZomOls5IiwX7YMlQ=;
 b=lSsfJHP7SeViQxPwbMUJUl2NDDlmWaX4j8SXn97Jr7sQcgVgxpCSKYvmoSFqFybIAcKRG7DmzHowPdkcy/LL9ZCWxWZv4Uq6nSqVV3B8B+ulm+SHTuG+D+I7RPCgEUP8uxpjrV+HO5cKGHgU/JiuiTf+FfJrYQFWryEkGxCzxpyG3NihGfHS3Ja6u3/ypLLwVGo3XCsQoMMSrmDWMVZlqAwJW6C9USB0JG95dwq3TSwQCr1tOdMpgKHqQtxhyFGDS8QqY6QZs3j8NN5jb/EEqgw1zIjE3QS0nsPI+M2GjYHhCE9LdQZQaTVN9iDYAd7Dw/1qc7mDIZc2q/P1AvCoyQ==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB0964.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:169::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Sat, 29 Jul
 2023 14:51:55 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::fdd7:6114:9f0b:419]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::fdd7:6114:9f0b:419%3]) with mapi id 15.20.6631.026; Sat, 29 Jul 2023
 14:51:55 +0000
From: David Raeman <david@SynopticEngineering.com>
To: Ofer <ofer@navigicom.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: E320 not detecting any devices after power failure
Thread-Index: AQHZwd8CkTSXQMXp2kCIU53Zyyl1u6/Q0lCw
Date: Sat, 29 Jul 2023 14:51:54 +0000
Message-ID: 
 <BN2P110MB1747319051B7422ABD29B6E8B707A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
References: 
 <AM0PR06MB6179F4337F84319EA0A8D76CD407A@AM0PR06MB6179.eurprd06.prod.outlook.com>
In-Reply-To: 
 <AM0PR06MB6179F4337F84319EA0A8D76CD407A@AM0PR06MB6179.eurprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1747:EE_|BN2P110MB0964:EE_
x-ms-office365-filtering-correlation-id: 567936e5-b880-420f-9437-08db90435a05
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 FR1gUuWgmN2l2H6pQQYpTxKFzr5t4db8sybstpDfvXRlp4w/lubnL14MvpF4wYKxlLGARiXdcrVzNL10WUI6Ky0plJJgYqgqs0goshCBGgmv0ZtuuH46gDUiPCY5WqLOJ23CNYJ0bcOBEVtDQbC39SkI2MVQFwweL0tWn0fVoJ0JFU7yINo6ir4AGg+X3RGiPYEKzlL32NuS/bLFbGyjLzMRFiOdHIOj+zpjfkVHFvOBYDPs42qJ8qJ5zCcXOvqSmgpn740WJQP3Dp238TAPz72ENAgutzAenYz8MuHHKdS+bmNc3AHsMbLznoRLOcUEJ/eOmzqW8TyG7k/HndW7i+XS3IZnyigKvlnqaVFmhB6DcSbh573yBXpGE2E7Jp9yJXjjLMtbdshxyPF30QEWmBcsbzviDQwfkOm47UuBI+hKVsuZgQInUyO9YywMR8n1YyedmqFbeYF8MlRwabid/OfC58vD0rFGzwI7sAVivHQxUU67OVy/TOpWYsVI9dbM0GkPcsorVn9Wc8Kkma8d9wniYZDa9uVAFHnRwuRamz2WAu0BoYMFD+0ylZyrhYLP6GIilq8H4vWFPE3P8hzPADpfnIdd/r/qSWS8tpG/vxkFFKQKJqCLC8JhT17C9itTPh1Bg26+x+/Ll4ac4sz56A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(396003)(39830400003)(451199021)(7696005)(41320700001)(38070700005)(9686003)(86362001)(71200400001)(55016003)(186003)(83380400001)(6506007)(53546011)(38100700002)(33656002)(122000001)(52536014)(5660300002)(41300700001)(8936002)(8676002)(76116006)(66946007)(66446008)(64756008)(66556008)(66476007)(2906002)(508600001)(110136005)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 hMMeBery53mzRs0uZ+sd405aKKAaDcCKe4teuehcZiXOyJUvCmaj7EBTiiJSKpmGQbgdBQSc2zaE/GcxCy3G2FiMJYSZP+44fEX029AC+dAGqV8rMluadQ87fESYipBbj7dMu5ntV99qVx5Js78eAA/8RXzLEahOAO/sfFjmGgW0WInLJBFcFA5tThz3eX+jAoYKPEUOsC3tYjvUy0p4GfyVfR8PWmyTbwuPeDw6phN5z6Ym8o9D1U/fmwwAf/gdOumTsFLQDmUOtJyDgLEwsWq/RsZSzFnoEOvm9SyuWCliDCRqgT1j7nF6PUNMB/b8HORONk6VBZIp6yU3qoi/xsbmea20qxyci/aqxBxrwovZFsWCuAlRE1t7xde3sPPLqHoThbfVpdNVJWmXCEudke+ZUUi/FMnWJauRmgAK0B+QOFa0Uw2IJYTDh3v6dy6eSl7utVN8v8H0tFGP4/kpxWv7YaeUMlqzsgf+TyH8AkA=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 567936e5-b880-420f-9437-08db90435a05
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2023 14:51:55.0052
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB0964
Message-ID-Hash: FB4CFBOBOVBHRZU2C5U4CK6LKBHGL54G
X-Message-ID-Hash: FB4CFBOBOVBHRZU2C5U4CK6LKBHGL54G
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 not detecting any devices after power failure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6LAB7FNHVNOIJL67FW7K3QFJGOEXUVNX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1433474291524091781=="

--===============1433474291524091781==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB1747319051B7422ABD29B6E8B707ABN2P110MB1747NAMP_"

--_000_BN2P110MB1747319051B7422ABD29B6E8B707ABN2P110MB1747NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ofer, does the probe work if you specify the radio's IP address?  e.g. s=
omething like:

        uhd_usrp_probe --args addr=3D192.168.10.2

If that syntax works, then you might try switching between the SFP+ port (v=
ia copper adapter) and the native RJ45. My memory could be mistaken here, b=
ut I vaguely recall that MPM discovery for an E320 worked using one of thos=
e ports but not the other. However, if you specify the address, it would wo=
rk with either port. Again, I'm working from fuzzy memory here..

Hope this helps,
David

From: Ofer <ofer@navigicom.com>
Sent: Saturday, July 29, 2023 1:47 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] E320 not detecting any devices after power failure

Hello all,
I operate a USRP E320 using an externa battery. Usually I have time to shut=
 it down in an orderly fashion before the battery is depleted.
On one occasion it happened that the battery was depleted before I had a ch=
ance to shut it down properly.
Since then when I run uhd_usrp_probe I get a message that no devices could =
be detected.
The E320 boots up normally and I can communicate with it using both serial =
console and LAN.
I initially suspected an SD card image corruption and I tried to rewrite th=
e image using mender.
I tried the same version I am using (UHD 4.1.0.5) and I tried a newer versi=
on UHD 4.4.0.0 and and older version UHD 3.15.LTS.
Nothing seems to help. The E320 still reports "No devices found". I even tr=
ied uhd_usrp_probe with an argument of IP address. Nothing helps.
Here is a sample dump:
root@ni-e320:~# uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.4.0.0-0-g5fa=
c246b
[INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD sess=
ion. Specify find_all to find all devices.
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

Can someone help me fix this problem? Point me in the right direction?
Is it fixable by myself or do I have to return the unit to be serviced?

Thanks,
Ofer Saferman

--_000_BN2P110MB1747319051B7422ABD29B6E8B707ABN2P110MB1747NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
span.EmailStyle20
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Ofer, does the probe work if you specify the radi=
o&#8217;s IP address?&nbsp; e.g. something like:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd_usrp_=
probe --args addr=3D192.168.10.2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If that syntax works, then you might try switching b=
etween the SFP+ port (via copper adapter) and the native RJ45. My memory co=
uld be mistaken here, but I vaguely recall that MPM discovery for an E320 w=
orked using one of those ports but
 not the other. However, if you specify the address, it would work with eit=
her port. Again, I&#8217;m working from fuzzy memory here..<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hope this helps,<o:p></o:p></p>
<p class=3D"MsoNormal">David<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Ofer &lt;ofer@navigicom.com&gt; <br>
<b>Sent:</b> Saturday, July 29, 2023 1:47 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] E320 not detecting any devices after power fai=
lure<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hello a=
ll,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I opera=
te a USRP E320 using an externa battery. Usually I have time to shut it dow=
n in an orderly fashion before the battery is depleted.<o:p></o:p></span></=
p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">On one =
occasion it happened that the battery was depleted before I had a chance to=
 shut it down properly.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Since t=
hen when I run uhd_usrp_probe I get a message that no devices could be dete=
cted.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">The E32=
0 boots up normally and I can communicate with it using both serial console=
 and LAN.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I initi=
ally suspected an SD card image corruption and I tried to rewrite the image=
 using mender.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I tried=
 the same version I am using (UHD 4.1.0.5) and I tried a newer&nbsp;version=
 UHD 4.4.0.0 and and older&nbsp;version UHD 3.15.LTS.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Nothing=
 seems to help. The E320 still reports &quot;No devices found&quot;. I even=
 tried uhd_usrp_probe with an argument of IP address. Nothing helps.<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Here is=
 a sample dump:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">root@ni=
-e320:~# uhd_usrp_probe
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.4.0.0-0-g5fac246b<o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPMD FIND] Found MPM devices, but none are reachable for a UHD session. Sp=
ecify find_all to find all devices.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Error: =
LookupError: KeyError: No devices found for -----&gt;<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Empty D=
evice Address<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Can som=
eone help me fix this problem? Point me in the right direction?<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Is it f=
ixable by myself or do I have to return the unit to be serviced?<o:p></o:p>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Thanks,=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Ofer Sa=
ferman<o:p></o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_BN2P110MB1747319051B7422ABD29B6E8B707ABN2P110MB1747NAMP_--

--===============1433474291524091781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1433474291524091781==--
