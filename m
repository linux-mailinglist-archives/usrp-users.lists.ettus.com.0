Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 601A47A9E56
	for <lists+usrp-users@lfdr.de>; Thu, 21 Sep 2023 22:00:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48D6B38507F
	for <lists+usrp-users@lfdr.de>; Thu, 21 Sep 2023 16:00:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695326449; bh=wf8ruySykn01jYViZoRkM8AVOXzZ9KQHFqvkowVl16U=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FSRLA5qUvEAbDlj1vB1C0a9YhC3TA2bXEixkqgkKhGAxcavbpNU5ABNDcTwyPTbUM
	 gUqMX2K3vg1B5wJVMAZ29RGNJJWUi/xeDlRvPvPhY8KkYJnkkinaItRC1cPnFjUdzI
	 rpFG71FSrGGaBdRGt2YOcJ5ILlq02bmppP6QTusCztHFL76Yjkiv6+Uz4rXD+OeM/p
	 qxAUUZl58XOx0A/G//usSi4ppvja7Wr6CNFhl8wG3tbY87e5aZBEeUb2axWkrkQ3qM
	 CpYenO4Fm2CT7CFg48f7g91W3admnHg6wsyy9HsXn9PjZmO1XoeV76lkJ3MOEaw9O4
	 qhfT60Jdyqisg==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0080.outbound.protection.office365.us [23.103.209.80])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B415385047
	for <usrp-users@lists.ettus.com>; Thu, 21 Sep 2023 16:00:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="DYgr237R";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=cjGcyzK2i3N1ftEs0r5fwsnolcCVzUgbhKXTFSDatXGm3CKjKS8J1Uo1GVWxfGjD5far2M1ryGBipXj2BZU22EjIjQOkdon7rTP2AbrrNFZ4kScOnD9RQXeaaI0KvI6uTEzu3gQZ594mX1qJ/ZOZgrykHz/ie2U1ubHvMN43LWhSBvuEsekNNlX6+h56ojZlSwdV5KN9LZV5KbTYP0CscymCtYKpjW/48drBcy0zyD06gywW3YE5dDaCuMj8NJXERY1M090DAeEeg5r5toXJLIvVdp7wEfkmPQJkdp5E4UFty9kvLxgCnSrhFlZfd26oHm6DaqoHpHItDp0j9YLIng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jHMqcCFKYXUDYrysKgsCnlw+6WwNBklEXfVZOQp6Q/E=;
 b=CcvrexmTH1yomM1Inf/tqKqLeupMu5HxHIMeSRFf8BDL5yWXsVBQcWWGcd6z8YhlD6KATD3RNV7ZSq67mZlF5Uege9pjOjzMTjaScFzXxZBDnPgvCTpzcq0aS1+GtaoKr6JSDxCo3ulg+Xfgh7AOs+mPtJYMDyyRUXISGGX4PKwcRvS9at/8CpHCozgoluVmgrhqgaWI4hpsfWCRM8jVFyooR+JVK64RaButkS/Q2KEDKnxgZmBptgy2R/n/VGN/bfI8RkgrGZwl4J8FD5Snwjov1gnl9svhmPYdscgvNvhs5p4YnzNvrKu2gt3vsFCs7GmwBqDFisVbuvN+5R+qGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jHMqcCFKYXUDYrysKgsCnlw+6WwNBklEXfVZOQp6Q/E=;
 b=DYgr237RIQcDjKtLTv8RawL5BdClWXBjZeFtcHmE6yhC3A8/BhRkF/aFT3pnRSlq2ZGJZEY5Ok8PpqURoZUzrQDeUxU+u5E686kDI1QPekdO5JXYr6EY/pUKPcR25RDyM2JaOYbrMCHhetqJ/V5dFulP/dXvHNQmfJWr06Airw94/VSHSIeMjc16UHwq8D6SKnE1XPTS+KtfNABfLuKA9+bKUqVNWZJ/WUUlLxocxx9eUMltwxHRjlTmsP4nb0mkjtp0HiVjSsQ6Bn/ywRczOshcDzFdiyP+KhJf43cj8rs7jANb8MxJzOsQjjAeTa1b6vqGtUlAc7bc683lZxEFFg==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1716.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:169::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.31; Thu, 21 Sep
 2023 20:00:30 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5cc6:4077:4922:71fd]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5cc6:4077:4922:71fd%3]) with mapi id 15.20.6792.026; Thu, 21 Sep 2023
 20:00:29 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Toggling a panel GPIO at a specific time (via RFNoC or
 otherwise)
Thread-Index: AdnsxdnqUzPejFxqTpiXsRqOggvkNg==
Date: Thu, 21 Sep 2023 20:00:29 +0000
Message-ID: 
 <BN2P110MB17470A026C94DFF2E9370914B7F8A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1747:EE_|BN2P110MB1716:EE_
x-ms-office365-filtering-correlation-id: c729574a-11d1-4aad-b7cf-08dbbadd6812
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 wfyyWhFTPObJ328SDvoUZEHs8fKJJAGFr4GPc8xpiebvQbtbHzA9V7IsQHRH/zcZEn/Vsf6OxrG68EJZesAO9tAchKEbH0t2VzgshUNnv2HWQeSoWK41qy8zAz9jynzhJELTWYD43Lil4Sb4AmnOJ7pOTU87M1etfffmniMzFK+/a5781F8afoS6eIZLfheHB/nGUVYuFhZFzlz0u1bi/8SpgjYa4ArlOF33XXeVKl8nzjX8th+ITTDFwIs0fkNc3Jyzs+O6eDTa0VTupBHNLZr4vpQ4oMwRKerOvhwysnlO4MwTTT8TZmV0/8nPxaCBq80lbD/HsXtOG6NU5TpkmoXVT4XpYyhKp4o1Zm+8AmPx3MNszhsN8/NNHItWmTfIMETkKydCNbzebll8e6zksvbOsPuPrMxp4d5jkLxqAaZR7dKpgRyD5osRTY2jWQRayqdC9cZ91x+d+0QN0VPK42NkxkA4iFYlroRIpvsSdR2BV6iO0Mwkal30gyP8s+GCs/03CzKDnBBF8dW8L0fix0xQHPTQ+BaF4GLY4dwE3MjZUGqZnUdbgBIr+NtQAy7TKdQpBe7rap212AjiXs/G7JZZPVdWCe8RQ9hOBZXRYQItIQmk1axtBV+VqB+YxnH6Eep731zIFUPWemJqHwlf5w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(39830400003)(396003)(186009)(1800799009)(451199024)(55016003)(508600001)(6506007)(33656002)(26005)(7696005)(83380400001)(86362001)(6916009)(66946007)(66556008)(41320700001)(76116006)(9686003)(2906002)(66446008)(64756008)(66476007)(71200400001)(41300700001)(5660300002)(38100700002)(52536014)(38070700005)(122000001)(9326002)(8676002)(8936002)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 Qlvzm4gE5Ih7gEVsQ/J23f1R7lwXsZiWWS+jvz6wVHVvmZ58+5OIVhEcPo1TPjH9JW6gNvpa7UwLJ49i2jhhgVuv/yD+TbWCh5h9PspO9x/u4QYYqHOYpqESInEcJJiw3gB5xZ14BV1NuC7wQUFs6Htr72zC2qTHxnd0kwZ2w/7cOXEBY4hQ0aD4ChE2Pz/ZzNCs2a1064wUN48gZ7dshUpOyvtWglC/2EmKcsmEVhAgqtMh/dJDNE3BdaMGgPoBYuuQFy+10+cCKYAVpANYD2wSYStjIUoFSSVUBV9PsTIH1HLAo1LeZpwGNGHt0pw5at95EhdjuDxugfPLpl2INSSOcO/gVcb5CKzp+gQI6Iiqpt/11LkuwGQ7f8T+U0ZLvbST00rhbBLydjysfgqoI8LNUpb02tAXbktkBW05uLw=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c729574a-11d1-4aad-b7cf-08dbbadd6812
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2023 20:00:29.9124
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1716
Message-ID-Hash: OT3LBVQYFDWZVPUS62PHFJY36DXJEFMS
X-Message-ID-Hash: OT3LBVQYFDWZVPUS62PHFJY36DXJEFMS
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Toggling a panel GPIO at a specific time (via RFNoC or otherwise)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HJFLTOXZP4MCRTTBLJ76GPDVTRGT5INV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4093509404175571185=="

--===============4093509404175571185==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB17470A026C94DFF2E9370914B7F8ABN2P110MB1747NAMP_"

--_000_BN2P110MB17470A026C94DFF2E9370914B7F8ABN2P110MB1747NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm looking for advice on toggling an E320 GPIO pin at a specific uhd::time=
_spec_t. My use case is a UHD application that starts a long transmit burst=
 at a known timespec, then later toggles a pin at a time corresponding to t=
he Nth sample being transmitted. The pin controls an external RF switch. I =
recognize there will be some amount of group delay through the RFIC and int=
ernal analog components - my goal is just to be roughly synchronous with sa=
mples clocked out of the radio block.

As a first pass, I have a custom RFNoC block that counts valid samples from=
 the start of burst and toggles the pin after the Nth sample (where N is pr=
ovided in a user register). This is a poor solution because there is deep b=
uffering downstream in the radio block, so my block sees "sample N" and tog=
gles the pin several thousand sample-periods before it's transmitted. It is=
n't a fixed lag that can be added as a constant - consider that if N is sma=
ll and "sample N" is observed when the FIFO is initially being filled, the =
toggle would occur while the corresponding sample is sitting in the back-pr=
essured FIFO waiting for the transmit start time.

Since this is synchronous manipulation of external state, and not just samp=
les, I don't believe it will be sufficient to use CHDR header timestamps - =
the block would also need to know current radio_time, and I'm not sure how =
to get that in an RFNoC block..

Just wondering if I might be overlooking some simpler approach, or any advi=
ce on how to plumb this into a custom RFNoC block.

Thank you,
-David


--_000_BN2P110MB17470A026C94DFF2E9370914B7F8ABN2P110MB1747NAMP_
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I'm looking for advice on toggling an E320 GPIO pin =
at a specific uhd::time_spec_t. My use case is a UHD application that start=
s a long transmit burst at a known timespec, then later toggles a pin at a =
time corresponding to the Nth sample
 being transmitted. The pin controls an external RF switch. I recognize the=
re will be some amount of group delay through the RFIC and internal analog =
components &#8211; my goal is just to be roughly synchronous with samples c=
locked out of the radio block.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As a first pass, I have a custom RFNoC block that co=
unts valid samples from the start of burst and toggles the pin after the Nt=
h sample (where N is provided in a user register). This is a poor solution =
because there is deep buffering downstream
 in the radio block, so my block sees &#8220;sample N&quot; and toggles the=
 pin several thousand sample-periods before it's transmitted. It isn&#8217;=
t a fixed lag that can be added as a constant &#8211; consider that if N is=
 small and &#8220;sample N&#8221; is observed when the FIFO is initially
 being filled, the toggle would occur while the corresponding sample is sit=
ting in the back-pressured FIFO waiting for the transmit start time.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Since this is synchronous manipulation of external s=
tate, and not just samples, I don&#8217;t believe it will be sufficient to =
use CHDR header timestamps &#8211; the block would also need to know curren=
t radio_time, and I&#8217;m not sure how to get that
 in an RFNoC block..<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Just wondering if I might be overlooking some simple=
r approach, or any advice on how to plumb this into a custom RFNoC block.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal">-David<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN2P110MB17470A026C94DFF2E9370914B7F8ABN2P110MB1747NAMP_--

--===============4093509404175571185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4093509404175571185==--
