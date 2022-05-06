Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD125B8E8B
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 20:05:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6417380BB8
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 14:05:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663178746; bh=VkQqDZVYJfltgvKuSbakOsOibQ1IZ7tjrxNWWVYAqxo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OPY3R/HCAhdC99ntWm5e75o7DY4E6BWKTeRnJ8WGZN+doJBPABQOzkNzCEV944phy
	 UHGZq+1rG+hUnU2zuP/oO9/mOhO1Yjwq3xf3EBQ1blloCaepzNzHyB2000lMmABfYS
	 ueVVPRXZp7h/kugwiDBHGgxjg6XzBoDZ1nCspIiB9uIDWpkgpqiAbiy+FnIX9bLhjP
	 y3RcGlRwShrt+7uWI0H6A1AqCJcnkxriy4ZzfmvzZorj39PeNAbu4EtmGoHsBjmmPA
	 wfciRrWZiSenMZQ6ChlTUt8S3crEfHU103nbsHXpEpVgqLE+tlytTIhC+QrQkNBxkB
	 9wKen8NVcmIgA==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0101.outbound.protection.office365.us [23.103.208.101])
	by mm2.emwd.com (Postfix) with ESMTPS id DFC0F3849CF
	for <usrp-users@lists.ettus.com>; Fri,  6 May 2022 11:16:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=riversideresearch.org header.i=@riversideresearch.org header.b="EQdhdzZr";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=zsxIF+ZG7hMykoKCt4a97KMLZYe1oYdzbOIT+oCdq5+bWR6sF6UPvWGtp5J8qLWaA2mXpL0Hxw4Os9tRiNT80sE0i8xDTBiCW9mWx7ac4KayVGxUGWioUPTi3M6kuejSBa7m4MMqr+J0pX+6r8ufYR+XiWjV7MAR++Y3lHgLORPfU+1ZtqIaAWIWsxK/dd2MU/3nBZ83htA3Z7rSvj9aHnX/xTG3PASbYI3BclxrhloDzZrFWbY59M6C06I8y5GnbOjG9mf6ayHUsw/HQrY4L77M5qlgx2XAoZht9oS0GRQ2oqEKxh5hI6RkWOtRY9+gjAxfaxOVi5AAIprnSkEmtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sq9T1MYDTaDzImX+5VILKeTiiO4/KC5aW+NwhrydaA0=;
 b=rfuYYsJijbFzBclaUgykZ4MRF6cfoy7kyg9KIZzW7omcdujLYKZY2vIgsx2jUXkMRhOZoK/b5nbeOoOV+729s08U4av3l3gKX5KgB9HPGqxB0CStB5XAkhZWvZDlTUb2PmoWWJ176nKGitBRV6F4i1HYfXx++JCIhG97e3YT6g0/w51a6KbPN2cg++TORflt+vJeSHQ0/oL6JsNurGD4jdolA1Sl8t1elKtLTCcjbzD9dHkHFHnJStHf46UwKX1RqUoVao75oMSlo2i8b8yYorGXgO3mBSUoAT/ni8D/hhZ3l7uS4OechxzdNFQ+S6gWah38lZOJ/R5CYW1Mh1VHLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=riversideresearch.org; dmarc=pass action=none
 header.from=riversideresearch.org; dkim=pass header.d=riversideresearch.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riversideresearch.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sq9T1MYDTaDzImX+5VILKeTiiO4/KC5aW+NwhrydaA0=;
 b=EQdhdzZrAeOYRb6d7KlWSzQlJN886DrnLAK0rUDF088FeRbCiEAO3VCZX8I2GLmziF6kUcXREb3n2qqziBAnA5BVYZnUzNzoroIWb138d48/d+r2TxIE+GBppuPfl7Yy9XNl9Xd+8+wvjYDocj3kpWeeGL796edE0YfJF2oyNgt4gBmF0h+z8vbAiDaLbj/lhMn8mKFPBNlBRFkfxV/0r+cq1BQrZBU6c5K19Amz6BAQXSiZdWNEKZGbnKCTPbm7uONYuO0jA+gOJMqw7V73HywDcNTyML3ROIDtA31Gca+M24hi3an1fbNX5gFyY6gB/Uf3S6GR3gs4w4mvnob+cQ==
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16f::9)
 by BN0P110MB1354.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:181::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.27; Fri, 6 May
 2022 15:16:39 +0000
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7811:f343:1b68:6c21]) by BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7811:f343:1b68:6c21%5]) with mapi id 15.20.5206.027; Fri, 6 May 2022
 15:16:39 +0000
From: "White, Joshua J" <jjwhite@RiversideResearch.org>
To: =?iso-8859-1?Q?Struyf_Am=E9lia?= <amelia.struyf@ulb.be>, "
  usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP X310 with GPSDO : clock source parameter
Thread-Index: AQHYYS1qtsJsGZNqI0eblaoHJICwHK0R9XtQ
Date: Fri, 6 May 2022 15:16:39 +0000
Message-ID: 
 <BN0P110MB10159C620D05A1EE9F596A6AB1C59@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
References: 
 <DU0P190MB2026B4775C1C68097F2928BD94C59@DU0P190MB2026.EURP190.PROD.OUTLOOK.COM>
In-Reply-To: 
 <DU0P190MB2026B4775C1C68097F2928BD94C59@DU0P190MB2026.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=RiversideResearch.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c23d7ff6-d4d5-4887-3420-08da2f736b6d
x-ms-traffictypediagnostic: BN0P110MB1354:EE_
x-microsoft-antispam-prvs: 
 <BN0P110MB13547EB65D59940A5C2019D0B1C59@BN0P110MB1354.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 A67rU8gHz0mbVlkSv37WrrYJiKRrfyuoey8euOZ8GbToq2KS+0DGgg4KX8csNrSKrANfW8JzZRA4VnN1XWmOx32GOgiwvls6h2vdd4ub8ogTnF7gVDn5iltZ5xBdWhS8/ML0pur2MC+jGRcu+yX9p9cLumlCzphYxWcyLST8NWnUeQua0FtpEAAdsrZe9dD8FG09gZ8fUeRoA525OuxDB7MkAIbBnHCS4EpGW3Si9n4Rk5J+oBM1mRpRekVSeZnlMiOHPHxlP46b6+hPhKS9tQ8/JtiFR5ndETeqHWzBA+M6CLCASCUk4xurHNybsH2fMK6K8cAlaxjGCmAoNJL+KyRtIvQDAG3YgfWB/Wz56fkBBZ+wJyByOhZDi1KN4Zi4GHWwXjkx0j5InDr2vAQrJfNXDxHG+YUmIKL+/8LjF01SRhzEo9ph5RPxb+cJxZvofIMtUho83mA6QwPVvX7SnSYZOBtNLY2EnOW+3qPifznzTmxAoewIrv6J0xluuzhyz63mDUs5QjwJkt8eN+wV+OqAv/Lzy7ayOS/jpE8pL2mgkncuAXVDhT7ceqsRm29cwM1vkxhInsUA33pEbMCxzqwJZ4QH8knXsSGev/ewlSu2J8olmlcpYvPKpKCP/Z93XntT7QjSeArdspdLCllhzqAx1hU55Tngin9z6XP3N3P8zfOxzeOO27Ja3aeC/cGZNcSmj9ClR2lDFDTKBpv9QQ/5i3iR20iqvSgLVIQJwmQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(66574015)(186003)(166002)(66556008)(66476007)(66446008)(64756008)(110136005)(8676002)(76116006)(83380400001)(38100700002)(38070700005)(66946007)(53546011)(33656002)(52536014)(86362001)(6506007)(26005)(9686003)(40140700001)(5660300002)(508600001)(71200400001)(99936003)(122000001)(82960400001)(55016003)(7696005)(2906002)(8936002)(85282002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 LeMPXhXxC7zqzwUg5XjbkiOeirnjeuzlN38GBvTKIVWELYK6MY+uNZSzc9l0aWS0ngsjC9oy7th8n67o4XKLyn9TwclqXVnCKYbGCz87u9P52zP3aU5s4ICF86uA+nVfXbdZWYL8/RLrl1+SiHHSAtPdKf/vhA6YoszbE2OlfuYxr82c5RcCZ2Pnw10Kdy3ploRsgZu3v9DooOP/vDI9fGgH1Is5J7+ZMeorDP3yREEBuSTLmc37hxd0jkQnoUzC9WtPbYABE26VqDCWgjKqgnjw7cNKiLl6Gec9kkwiLgTkvL7IpfEDegOE/xYONExkyuYp88N7YxMuJrsqmd2QLMqX9snu5N+uFpyeYpskxL1CMqZ7yV3M4vyX7uposECsDE+WTMDW0kVWGkiFyOpl5E/fOzp4rplzM0ScgBPFrhw=
MIME-Version: 1.0
X-OriginatorOrg: riversideresearch.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c23d7ff6-d4d5-4887-3420-08da2f736b6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2022 15:16:39.5940
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bfc64a8d-9064-4c64-91c3-9d10b44c1cb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1354
X-MailFrom: jjwhite@RiversideResearch.org
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: 7SKZVOGVYZG3352R37IWXTWHXO3K3CEV
X-Message-ID-Hash: 7SKZVOGVYZG3352R37IWXTWHXO3K3CEV
X-Mailman-Approved-At: Wed, 14 Sep 2022 14:02:28 -0400
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X310 with GPSDO : clock source parameter
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MQRRKPCMB4EX6P355HBZGXIYVRXHWW77/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2806972183227774861=="

--===============2806972183227774861==
Content-Language: en-US
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=SHA1;
	boundary="----=_NextPart_000_009C_01D8613A.C0D5BCA0"

------=_NextPart_000_009C_01D8613A.C0D5BCA0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_009D_01D8613A.C0D5BCA0"


------=_NextPart_001_009D_01D8613A.C0D5BCA0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Internal is to the SDR=92s on-board TCXO, while external pulls the clock =
from
the external clock in port on the rear of the device. Unless I am =
mistaken,
to use the GPSDO, you must set the clock source and time source to =
=93gpsdo=94.
That=92s the way it works on the N310, at least, so I suspect it=92s =
similar for
the X310.

=20

Very respectfully,

=20

Joshua White

Precision Timing Systems Engineer

Engineering & Support Solutions Directorate

 <http://www.riversideresearch.org/> www.riversideresearch.org=20

T: 937.986.3153 | F: 937.431.3811

=20

This e-mail message, including any attachments, is for the sole use of =
the
intended recipient(s) and may contain proprietary, confidential or
privileged information or otherwise be protected by law. Any =
unauthorized
review, use, disclosure or distribution is prohibited. If you are not =
the
intended recipient, please notify the sender and destroy all copies and =
the
original message.

=20

From: Struyf Am=E9lia via USRP-users <usrp-users@lists.ettus.com>=20
Sent: Friday, May 6, 2022 7:42 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] USRP X310 with GPSDO : clock source parameter

=20

 CAUTION: This email is from outside of Riverside Research. Be careful =
when
clicking links or opening attachments unless you know the content is =
safe.=20

Dear all,=20

=20

I=92m using USRPs X310 with integrated GPSDO. My goal is to compare the
quality of different types of local oscillators but I=92m confused with =
the
clock reference source parameter.

=20

When the clock reference source is specified as =93internal=93 will my =
reference
be the internal TCXO or the GPSDO? Similarly, when the clock source is
specified as =93external=93 which of these two clocks will be the =
reference?=20

=20

Thank you for your answer,

Am=E9lia


------=_NextPart_001_009D_01D8613A.C0D5BCA0
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Microsoft Word =
15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Internal is to the SDR&#8217;s =
on-board TCXO, while external pulls the clock from the external clock in =
port on the rear of the device. Unless I am mistaken, to use the GPSDO, =
you must set the clock source and time source to &#8220;gpsdo&#8221;. =
That&#8217;s the way it works on the N310, at least, so I suspect =
it&#8217;s similar for the X310.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Very respectfully,<o:p></o:p></span></p><p =
class=3DMsoNormal><b><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></b></p><p =
class=3DMsoNormal><b><span style=3D'color:#1F497D'>Joshua =
White<o:p></o:p></span></b></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Precision Timing Systems =
Engineer<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Engineering &amp; Support Solutions =
Directorate<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><a =
href=3D"http://www.riversideresearch.org/"><span =
style=3D'color:blue'>www.riversideresearch.org</span></a> =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>T: 937.986.3153 | F: =
937.431.3811<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:9.0pt;color:#1F497D'>This =
e-mail message, including any attachments, is for the sole use of the =
intended recipient(s) and may contain proprietary, confidential or =
privileged information or otherwise be protected by law. Any =
unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the intended recipient, please notify the sender and destroy =
all copies and the original message.</span><span =
style=3D'color:#1F497D'><o:p></o:p></span></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Struyf Am=E9lia via =
USRP-users &lt;usrp-users@lists.ettus.com&gt; <br><b>Sent:</b> Friday, =
May 6, 2022 7:42 AM<br><b>To:</b> usrp-users@lists.ettus.com =
&lt;usrp-users@lists.ettus.com&gt;<br><b>Subject:</b> [USRP-users] USRP =
X310 with GPSDO : clock source parameter<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div =
style=3D'mso-element:para-border-div;border:solid #F9E436 =
1.5pt;padding:2.0pt 0in 2.0pt 0in;background:#F2463D'><p =
style=3D'background:#F2463D;border:none;padding:0in'><span lang=3DFR-BE =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#F6F6F6'>&n=
bsp;</span><strong><span lang=3DFR-BE =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#0F0F0F'>CA=
UTION:</span></strong><span lang=3DFR-BE =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#F6F6F6'> =
This email is from outside of Riverside Research. Be careful when =
clicking links or opening attachments unless you know the content is =
safe.</span><span lang=3DFR-BE style=3D'color:black'> </span><span =
lang=3DFR-BE><o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DFR-BE>Dear all, <o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DFR-BE><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DFR-BE>I&#8217;m using USRPs X310 with integrated GPSDO. My goal =
is to compare the quality of different types of local oscillators but =
I&#8217;m confused with the clock reference source =
parameter.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DFR-BE><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DFR-BE>When the clock reference source is specified as =
</span><span lang=3DFR-BE =
style=3D'font-size:9.5pt;font-family:"Arial",sans-serif;color:black;backg=
round:#F9F9F9'>&#8220;</span><span lang=3DFR-BE>internal</span><span =
lang=3DFR-BE =
style=3D'font-size:9.5pt;font-family:"Arial",sans-serif;color:black;backg=
round:#F9F9F9'>&#8220;</span><span lang=3DFR-BE> will my reference be =
the internal TCXO or the GPSDO? Similarly, when the clock source is =
specified as </span><span lang=3DFR-BE =
style=3D'font-size:9.5pt;font-family:"Arial",sans-serif;color:black;backg=
round:#F9F9F9'>&#8220;</span><span lang=3DFR-BE>external</span><span =
lang=3DFR-BE =
style=3D'font-size:9.5pt;font-family:"Arial",sans-serif;color:black;backg=
round:#F9F9F9'>&#8220;</span><span lang=3DFR-BE> which of these two =
clocks will be the reference? <o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DFR-BE><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DFR-BE>Thank you for your =
answer,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DFR-BE>Am=E9lia<o:p></o:p></span></p></div></div></body></html>
------=_NextPart_001_009D_01D8613A.C0D5BCA0--

------=_NextPart_000_009C_01D8613A.C0D5BCA0
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

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
y5hBglp6x595DCG05IgGyQRzP9bNyqPglQMRekuqNtiM8s/BZZ0LiVtMDkna9k9jj28wggbAMIIF
qKADAgECAhMsAAP4qhx1+DitimPYAAcAA/iqMA0GCSqGSIb3DQEBCwUAMEExEzARBgoJkiaJk/Is
ZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREwDwYDVQQDEwhCUk8tRFMwMjAeFw0y
MTA3MjExNjI2MzhaFw0yMzEyMjcxNzIyNDFaMIGsMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTEMMAoGA1UECxMDRFJDMQ4wDAYDVQQLEwVVc2VyczEWMBQGA1UE
CxMNT24tU2l0ZSBVc2VyczEYMBYGA1UEAxMPV2hpdGUsIEpvc2h1YSBKMSwwKgYJKoZIhvcNAQkB
Fh1qandoaXRlQFJpdmVyc2lkZVJlc2VhcmNoLm9yZzCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkC
gYEAq1tErUsiT3Xmo0whVata7DEky+wTGh0D0AlHBuQNdHfogoK2vCrdCDk6216x7OSYO37lrxbB
Qd/3oXGaqk8zsyRl/N221uflWYVs9qgOqABYXkn7bWHrSQf15D/yQB/keqFeFjPrW+tmcjHEYJta
w2Dr0K9gyQVsbcrfbkk6HXUCAwEAAaOCA8cwggPDMD4GCSsGAQQBgjcVBwQxMC8GJysGAQQBgjcV
CIWbhmWDndEtgsWVEIGmmyuDmZlRgSWH0qVDgrHkJgIBZQIBBTA1BgNVHSUELjAsBgorBgEEAYI3
FAICBggrBgEFBQcDAgYIKwYBBQUHAwQGCisGAQQBgjcKAwQwCwYDVR0PBAQDAgWgMEMGCSsGAQQB
gjcVCgQ2MDQwDAYKKwYBBAGCNxQCAjAKBggrBgEFBQcDAjAKBggrBgEFBQcDBDAMBgorBgEEAYI3
CgMEMEQGCSqGSIb3DQEJDwQ3MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUr
DgMCBzAKBggqhkiG9w0DBzBXBgNVHREEUDBOoC0GCisGAQQBgjcUAgOgHwwdamp3aGl0ZUByaXZl
cnNpZGVyZXNlYXJjaC5vcmeBHWpqd2hpdGVAUml2ZXJzaWRlUmVzZWFyY2gub3JnMB0GA1UdDgQW
BBSSFzfpC6wiUiUs2WbKNUrY6pYBmzAfBgNVHSMEGDAWgBT+5/KpKajUn7P6830wA8KstUdQZTCC
AQAGA1UdHwSB+DCB9TCB8qCB76CB7IaBs2xkYXA6Ly8vQ049QlJPLURTMDIoNyksQ049QlJPLUNB
MDEsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZp
Z3VyYXRpb24sREM9cnJpLXVzYSxEQz1vcmc/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNl
P29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50hjRodHRwOi8vY3JsLnJpdmVyc2lkZXJl
c2VhcmNoLm9yZy9jcmwvQlJPLURTMDIoNykuY3JsMIIBEwYIKwYBBQUHAQEEggEFMIIBATCBpwYI
KwYBBQUHMAKGgZpsZGFwOi8vL0NOPUJSTy1EUzAyLENOPUFJQSxDTj1QdWJsaWMlMjBLZXklMjBT
ZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPXJyaS11c2EsREM9b3JnP2NB
Q2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5MFUGCCsG
AQUFBzAChklodHRwOi8vY3JsLnJpdmVyc2lkZXJlc2VhcmNoLm9yZy9jcmwvQlJPLUNBMDEucnJp
LXVzYS5vcmdfQlJPLURTMDIoNykuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQBAcpalu96zFfEytfTu
gF/lYkyKgnMGiq64hC5VNVwKJ2dQ6TjJkFWONo3nMDL08QBPHVReQMqORLw+TkLxj6fA+8SYHiuP
i74wleDZzmP6iicscyf+mFsYSmvk6606E27c6Qq3FOMrbI3yNlDHP9K2KL9Dcv/JK0l266aQOGCK
LqDiS/DpYK7So4G+wUn932/go3CY02vxsmFq9RJZ7V2ax0cNtYk9fLNxKXhIVNCWhag0JuLZt1z5
YCWUoDZedDiV8aaBaOqtgDwiLwJCZlpdtte/5Zxb1zwpmtx/LklY1w1Ha1UBf0HC/0G1lkXtraWS
gLWtKHTC/TqNs6cfPKSFMYICyTCCAsUCAQEwWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD
+KowCQYFKw4DAhoFAKCCAccwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUx
DxcNMjIwNTA2MTUxNjM3WjAjBgkqhkiG9w0BCQQxFgQUVU/vVAHxoWvd3hezpNaeG4FJjI8wZwYJ
KwYBBAGCNxAEMVowWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYKCZImiZPyLGQBGRYHcnJp
LXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD+KowaQYLKoZIhvcNAQkQ
AgsxWqBYMEExEzARBgoJkiaJk/IsZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREw
DwYDVQQDEwhCUk8tRFMwMgITLAAD+Kocdfg4rYpj2AAHAAP4qjCBkwYJKoZIhvcNAQkPMYGFMIGC
MAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4GCCqG
SIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUD
BAICMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASBgHRwvLtMY3Szcc0p3Gx/MP/b9h5q5tjo
SYs3a12UnBvpPy+p/pGYNrbOWlAcI040qQT29U/e/DoVCTBPVVK9Fk7dAQeDvaXvGItc+9EroXsB
OuCnh28oLxLqeHKAxcAgzDSKMM+yl7XC1LOsvBIW1z86h4z2EYY7HDxHHAjLX5jOAAAAAAAA

------=_NextPart_000_009C_01D8613A.C0D5BCA0--

--===============2806972183227774861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2806972183227774861==--
