Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BD0616852
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 17:20:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 912E938405D
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 12:20:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667406017; bh=z96VCA+UJKvs99bG15P2ssvfaYvV3+o3//PJUGt3rfY=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KWkf8Kd+TKfmxcFgAoT3RG1mh85i8JDhOOQ7rIywH1kUWEAsDQD8Sklpta85oSkLU
	 JRaSFrbidygnIUCPpZ03mbcfPdqUa1rZJCROidUIkOsQyFwn4TwgH/XAe0Vwb/lzC8
	 fjTpRag5jrpgHxtTQw39fONyb96SwsT7u5PgrMrxda1BYxTP+7R6xXKKOvRIYbCYJt
	 dje9PTKD0jxUTZ8gGvtnwGEl7E30HGcIeHVuSIY60NYiqHZTwWSc29NJm6eHYv2xNA
	 TVYDJE7i9h5a6QW4hGknNRYkEskkcEYbNJ5ocFwhkbjXxHmYSjj0tr/P0KincQuD2Z
	 tzX1dzrrpjqQQ==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0082.outbound.protection.office365.us [23.103.208.82])
	by mm2.emwd.com (Postfix) with ESMTPS id 3338B3841F0
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 12:09:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=is4s.com header.i=@is4s.com header.b="lRWBYwFb";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=pSRQ6wfIDbHCYj+wtPWEZyZOS4wp37/2lgWyzUjuBnb020kVoJIikRHX1f+T5muPHz3UOvFWNJo5jbkkk8N715e95EqJDAIf8IXcXCNr9pOSWyATctw/DqVNvRY8zhxz0CMZrs7vZtPCBwhHRElEZ+URpAH08RNzmWOY2Zz8qJGel4vg2IyTa5dSNFLFh8BtEqU/h1eIFTLR+zUU1ndDAXv1lF7W9X6yX7Lq1ThUNfmf2ge4RwPOSF8HCEn4V11OKxiGsT5Vjp+7L0eJqi+8B1lE7Lzt45SFhUQWaETdjjS+rw+DYUGxc8JBr+CpqtJEtY5Rf+sZeqkcS5RsJ5J6+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FD9vHcgsY2wK75zMpYKyjeiF21YThYHlzER1UrizMGo=;
 b=MNR74kRQhOSf/s39LGclFxur2JGtTfv7lC385kLpuV+PFaLJKi6+3waoYSNEWJm864uXE+G9YRwFwBlJIVkfgVjFMWnVehvGkElWKLcBEC3d45YKoE72iPmnn0GvayETIUXB45xQrcfzUU5jE75BMIFRledX607hX4sYiqINCFdsntHk7cVm6Qo3wKiIbyzbQ0CJTPYPhWeN0J9ftzQlPZV5gAxX9/VbFkkLODj08RAaN3KGsfrCEPAACyePSauPyKOeauWX16sHThucGpUsGUeYCtFtNDquqgsl2gtx+zx1wkZYe6qNwdQUXpZw1I3f9ljDkW/3yZd+YPLzJ0MFJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=is4s.com; dmarc=pass action=none header.from=is4s.com;
 dkim=pass header.d=is4s.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=is4s.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FD9vHcgsY2wK75zMpYKyjeiF21YThYHlzER1UrizMGo=;
 b=lRWBYwFbtCgewjUS287FLFGYX8aLRzzqUEvfjzPPFc751WP7pbqqMEAFfxNDTpGwwrMdgniCzAHE2u2YgvVtEi0AS8vRDVTTkF4HlviF2kVRf8hVn6mN1ZqBjpdiVaeYCTn1rJ6ACTRJvI1V18oA6UjW9KAtFb/L56DFaiYURR/eCpRjLIlaQ/PIQzXqKJG8NMo+LNKM29HcG5CmEuwPzwgeMuo72RIf/KejZl8ADPGTjul6mkB18sswo49yyPNHa5l/R6QZz5OuFPty/Jcezl7b6bAVzsWzZA4rBJeIOuwJJEMLsd1a9Yaon/OCGrTTg1wlSqjhuquY5dB9D74CrA==
Received: from PH1P110MB1633.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::18)
 by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Wed, 2 Nov
 2022 16:09:57 +0000
Received: from PH1P110MB1633.NAMP110.PROD.OUTLOOK.COM
 ([fe80::282a:a406:4a7:9746]) by PH1P110MB1633.NAMP110.PROD.OUTLOOK.COM
 ([fe80::282a:a406:4a7:9746%5]) with mapi id 15.20.5746.034; Wed, 2 Nov 2022
 16:09:57 +0000
From: Scott Burchfield <Scott.Burchfield@is4s.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Re: [USRP-users] examples using N310 with ext LO
Thread-Index: Adju1HKP3r1KGrDYQTaNrv9x+uKoKQ==
Date: Wed, 2 Nov 2022 16:09:57 +0000
Message-ID: 
 <PH1P110MB1633522B87A4411653915131B5399@PH1P110MB1633.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=is4s.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1633:EE_|PH1P110MB1665:EE_
x-ms-office365-filtering-correlation-id: 084e9092-e730-4e8f-2cb5-08dabcecb004
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3cd0af0xFC1p7dFhE9W6xdFThyqg0t47NDgii/TOy+5eRV7lyVHZO0A/eb3BnGDITdOsuKfESq07FtdMN/1QH94K0hO5vVBLlxc4ZkQZFNf1EBDSzPbUyvC7HZbaUx6qr3gpkrNpE6Advnm5OKOb/fW5rTlWlcHsSTEmqQ6vK6AivWZZp6OGOSCdHR6yWu7cEwUNgBp3Ap/zXjqrGC/LToxB29H5L0wBmecrSco+5d2655t5eKbm2gVWz0eZB1tTM4mtD14CyrgWJQwkVOCCwPkmbPvk7KdAgjWuf/ZATM1Fo9k4/29FtRXCZQ/7G1xNNzxCmJg0aUdLN2VumhhFYbboXwwfbvU/61J4zRMU4oQ33mZL4oNZu46vwXcH2zSMLl1pealKvyK+q58UvznDhPQkdzIFaJbtsibXkt/dFih5JaimEy9IDDsZgghkIlsyimYNyHeRHSh4ehVVi1PsrRmnfbH3J7tXlCxKkpvGgjYSqWZxrWoSnsZtfDObhslu3HtdBhun1+vyhlUfcEgNfI3CfyUhIm/02FAsN+XakCgXjEMN19uus1BqVB33PcxCnqZSYT139/+oWanny+njBzXcRcvOZDzFZfbwXZYLS0iHb6PR/ACqFaemzU6lu96qEQdICCaVuN7WDrem4rjGgPJLc1kE5GQFT2WpUakoU9Xl65IUi8Py+7WhRmaaV/AJVqU0lpsw+XBMtWk/e3Dkgg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1633.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(396003)(136003)(39830400003)(451199015)(6916009)(55016003)(21615005)(83380400001)(4744005)(8676002)(41300700001)(2906002)(33656002)(6506007)(9686003)(26005)(186003)(66446008)(66476007)(76116006)(66556008)(71200400001)(64756008)(7696005)(166002)(66946007)(966005)(508600001)(8936002)(86362001)(38070700005)(9326002)(52536014)(41320700001)(122000001)(38100700002)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 J45kztGJ4mUr1wL0d9Yhu7JaLdPRZ+dpEFB1qVQufAlCc4KhLCl3gUk95OeXPEmcvIKJhjiu80BdgqH4n3BH2SFibAYh9kQZoxg2P4+oty/ARNFl+3fjU/x7mBaBRCU9zguoO2dj3SBBGyvcSlh1M4tJSs4Be6O+lCTYURtE12XvQwRB09eEkHAk2o5INszHMRls5FVubEy6EPUMSx5fu87GZLJfRGEfeT91VMaXJkC9mCz0dNDfW1Iqm2CBQMNJqc8wYRyP0FZN5+ocCQw/k11jb+NxJHXdW1lGMGgF7wfaT7/RY1FP8Jy2+I+EMU9B8EVvfzXDk6es0RxwiTMlCpd6rtMtF6eJJlmztEPpJPJeCwivdHY515p9zDEDXLl2mWtxMXaDm2/lOgRVaq9T07Pq7UWX9rbtTqkJEfp9EfI=
MIME-Version: 1.0
X-OriginatorOrg: is4s.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1633.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 084e9092-e730-4e8f-2cb5-08dabcecb004
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 16:09:57.7557
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ed7b1ca0-7d8e-4acb-ac42-830a688573ae
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1665
Message-ID-Hash: QYCE5R7ZZR7TSJCSWQPUJF5APKR5G4YC
X-Message-ID-Hash: QYCE5R7ZZR7TSJCSWQPUJF5APKR5G4YC
X-MailFrom: Scott.Burchfield@is4s.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: examples using N310 with ext LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z6ND6SPEFK2MTFTODKBRXR4BAB3URJ62/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8472472018350330304=="

--===============8472472018350330304==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB1633522B87A4411653915131B5399PH1P110MB1633NAMP_"

--_000_PH1P110MB1633522B87A4411653915131B5399PH1P110MB1633NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Are there any updates on this problem.  I normally try not to reply to old =
threads, but I am seeing the same the same spectral mirroring Rob described=
 earlier.  My setup is also the same as Rob's.

I have tracked some newer threads that mentioned disabling TX_QEC_INIT, but=
 I am still seeing the mirroring after disabling QEC.
https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07489.html

Thanks,
Scott
_____________________________________
The information contained in this e-mail and any attachments from Integrate=
d Solutions for Systems may contain confidential and/or proprietary informa=
tion, and is intended only for the named recipient to whom it was originall=
y addressed. If you are not the intended recipient, any disclosure, distrib=
ution, or copying of this e-mail or its attachments is strictly prohibited.=
 If you have received this e-mail in error, please notify the sender immedi=
ately by return e-mail and permanently delete the e-mail and any attachment=
s.

--_000_PH1P110MB1633522B87A4411653915131B5399PH1P110MB1633NAMP_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Are there any updates on this problem.&nbsp; I norma=
lly try not to reply to old threads, but I am seeing the same the same spec=
tral mirroring Rob described earlier.&nbsp; My setup is also the same as Ro=
b&#8217;s.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have tracked some newer threads that mentioned dis=
abling TX_QEC_INIT, but I am still seeing the mirroring after disabling QEC=
.<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://www.mail-archive.com/usrp-users@l=
ists.ettus.com/msg07489.html">https://www.mail-archive.com/usrp-users@lists=
.ettus.com/msg07489.html</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Scott<o:p></o:p></p>
</div>
<div style=3D"" font-size:9pt;=3D"" font-family:=3D"" ?Calibri?,sans-serif;=
??=3D"">_____________________________________<br>
The information contained in this e-mail and any attachments from Integrate=
d Solutions for Systems may contain confidential and/or proprietary informa=
tion, and is intended only for the named recipient to whom it was originall=
y addressed. If you are not the
 intended recipient, any disclosure, distribution, or copying of this e-mai=
l or its attachments is strictly prohibited. If you have received this e-ma=
il in error, please notify the sender immediately by return e-mail and perm=
anently delete the e-mail and any
 attachments.</div>
</body>
</html>

--_000_PH1P110MB1633522B87A4411653915131B5399PH1P110MB1633NAMP_--

--===============8472472018350330304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8472472018350330304==--
