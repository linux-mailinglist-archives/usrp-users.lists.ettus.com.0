Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B302051E6E4
	for <lists+usrp-users@lfdr.de>; Sat,  7 May 2022 14:23:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6262D384BA1
	for <lists+usrp-users@lfdr.de>; Sat,  7 May 2022 08:23:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651926201; bh=viJDuU3RSmibq0+lvnIxF6AwjMnuFfOmG5HjKWy/sPA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0dMcXGJQC/5ozZX29h/gd55i+U36utKhFCS3nVdo2S9kNl3BPMI0Cgi+l7djDBez6
	 uESJGDXjOo1CNsyhoVF6ssdobFzqPU0YgLFTT1r4NZqZ19AjCL97ehXvnHzKt6vKvB
	 Sftx2GSy8MzMXAG3c3FmdwAn8umb/r0yDlIIMpTWVGWN/9myEOPvn3p8x77AkarIJ+
	 T4skDZp5dQjBixrrB5Y779PU+bPobS9OlNE43D/SBfR8fHGsU9YWX3cJ9f7GxcQ9Pr
	 6EDZ189KlsgCszkYHNnQ6sqxSIiyAfTe3AIAPjmsb2QKq/yZMuD9FYh83dPoSFwY/2
	 3GXpDAPyes6ZQ==
Received: from GBR01-CWL-obe.outbound.protection.outlook.com (mail-cwlgbr01olkn0147.outbound.protection.outlook.com [104.47.20.147])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A7E538482D
	for <usrp-users@lists.ettus.com>; Sat,  7 May 2022 08:22:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=msn.com header.i=@msn.com header.b="bAwNKO0I";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l25dMh+7lPfqoXhWFgM4v3ccwepRieNUbcxEZ2PwbqXORdOzG8F77CGFLhBv3tcCxuVDOdrzqjOTzKQFt16RqjmeXXhOSBla/C+nod7CA7sG+F2aEtSDMtLsN2mFsl/bh25Qhg1Pprn6mjXhyVE85Hwyxg4frMYYAsLbKJLdYxg7v9VGBau6KSUWP0n5vTkw616cS5QpfLrz02xj5ytCHhhJlvlipMD97c4xKtwJxNjFRiHPciKXki+55SdxPd2MFt8c3wnKYepMkk6PIjmfZomcjT5Av81VdEK9UValhVlTc1M0XownUh3CpdQ3wFulvSeDWAw5nKis35w6j9+yNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gLpGRXLhSUYodQDJE0EMmQidN1ZiSwbkbtNt3xZmWjY=;
 b=OoES0OT3u92DdYXmh0kq6BMh5Q4dq+qO4ju6l0MxaZ0LmJoUYZ2gnIVVdP2lHoemZzVroj6BGYFV+VJgagmdgcVAVyUpDg2O5rS7sB4pQ9heHeR47o0CrQkHcgBEDaChAUPCPLbeG4zVMROCSA4TF+G9DEu1SoGmGO6xks5dU0nfbcoIz7jAk/agetAsth9B033yfYeSzkmjB5YBWpgunXODZxZZy6wMKcsNEC8RAaBhrXskkDSo35xHUxCb2Ny+wORrxGiDW2V8n69dcaJ/vs/dycqsO1XGYj7D6jI4Wg8HjVZe+PPFjy/u47lrpHjcGV6vjgrjXY9sTkVtfH8oCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gLpGRXLhSUYodQDJE0EMmQidN1ZiSwbkbtNt3xZmWjY=;
 b=bAwNKO0IjIw97rnruwDB52SweuzwFJdvP4gMgcflhsk1Jx5JoXP9E5UQQXzX6SnrhdOGIrSM1CqcNizmTdhvSG6Y34KoekiczcS6s2hehqUkEiI30mYrFjSfvekmB1ThN/+wu32axPGEkfqZ3GSsqwGM8mOiwPInRb0j1hFXoHCUVmsyblrBqbFH+4PtAPb5MhM0+qSjyT3Viv+VE/clEjEbJnoykOVstZjZ0v2E9URQsTYPuNsQl2/6DrDa+4zRDtXk1zpmHysmfZ/jEBWXg7y6Lxtlza5MAaTanj4JrvZ9LhMBXZKcLLk1GASh/gT5arIefy18JlPVsAA3Kx6EBQ==
Received: from LOYP265MB1887.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:f0::14)
 by LO6P265MB6189.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:2b6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.20; Sat, 7 May
 2022 12:22:09 +0000
Received: from LOYP265MB1887.GBRP265.PROD.OUTLOOK.COM
 ([fe80::4095:ea73:feb:afc7]) by LOYP265MB1887.GBRP265.PROD.OUTLOOK.COM
 ([fe80::4095:ea73:feb:afc7%7]) with mapi id 15.20.5227.021; Sat, 7 May 2022
 12:22:09 +0000
From: ?? WANG Cui <iucgnaw@msn.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X300 simultaneously transmit 2 signals of different sample rate
 and center frequency
Thread-Index: AdhiDQ/yjHyFHg4pSxyutwSmBSIADA==
Date: Sat, 7 May 2022 12:22:09 +0000
Message-ID: 
 <LOYP265MB1887CCC056B0637CA4A49C74A5C49@LOYP265MB1887.GBRP265.PROD.OUTLOOK.COM>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: 
 [TfBhteeTl+xHxQw2R9bPTHkNIT+Xp5EwX/6hayG5CHFnhOsAkE+JwF8GbcsGfclEeln/pP5tm3A=]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 457434a2-0ae4-46e9-9652-08da30243540
x-ms-traffictypediagnostic: LO6P265MB6189:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 20+CYbyUq/FJ6eHhqARvELmmfUNEq8ADZjCgK8T1+G140fEL05Y5r6U3ymJARfYaQ6D6SfRs7IRYR6vpteQF89M4ezDV/ChjesErV+028FtMP1rk23AfnwaYZe1Xzb4sKdU2eqn4zLLlnnTobuGU3FROeuVecOuCK0wEf7veEvC+0BSBDTWRAB9Mzsbm5LcpQ6PrflDLoaqaehonCFkvdDVzPvQIPxnEvqrswenoCoNNOSoNYo7tHa0L11hHxRX2LZIHD+pyz/YxyG+aMw+Hm0G+ct1y60SPQ7KCIDp5keFjSO0ENJgejXGI9cA3Q4Eig34Dos/aanqr5u2BMJCN+w6y6/dog9PhTBJYzwm4UNGq9+Zjlb+FI8VKFxGAdOxP3CrIYoI6ovnRa7wNkEfBiI/hgcT7ZihTX1aKs0YQOOhoIX5Qr757P+LV8z2nn6Mbn5RgFOyb6ZCWp0aNFmUjNN8HYDP/xhSPlvWd9g+qxUltekqieiHrf3es2tnTd/JPLlf30/p0fDNdEZnWJ0EezGKHXEXLZDbRVCi2gc8FpURRTyKHE96EDRGYUFJaf2bAVo0zdVoBxmB/sFhYmZ8+jPFvOXOb0yRHTUrd9xMi9JutDOLd0p3ZvBMuRVjeigUe0wEHmHDA9XWi2gX8UxA15A==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?YC9LxfXd9yw5XWjEmixxGK28gY3Mjor3JTDFEPDkJ5f0PcSy4vADG87geCv/?=
 =?us-ascii?Q?88d4nkEomc65nh01aG5mlO7MODuXkEGVRwKQnYxvcSBUh+XyQyMV2T8GvOCa?=
 =?us-ascii?Q?BvI9ddeSWgMqmqIXdzbDOL6OR5IyiZr+c8f3dezEPNqYmsubhTLCSYlRMxaE?=
 =?us-ascii?Q?h+8NUKLVo3HG+ciivk3whujqAjRv0fjF3Ndl8wMctTLA26UNIC8oL3RMDHmU?=
 =?us-ascii?Q?dNRrNupSue1G7AwBnIR/gBjY4Pth2+dCMGXa8/J/VeQlg+3WH3RR3Ah5rO/e?=
 =?us-ascii?Q?eriZfVFCn8UOEj1l6o3kfBnXGSxGT3w75nY2SXPQ0ZddP0ZwEEOot4xwFMdd?=
 =?us-ascii?Q?rjaNOHK31P+3QFvDwpzGdSFN7wQWJSrlfxHFiNMLazICHYTZUPsaiJLdmGQa?=
 =?us-ascii?Q?juRiMXgaoxoPh54ACarBHSz5Pos7EwhbMIAwcywtQHWAurddfgWX+72/g8cJ?=
 =?us-ascii?Q?GxoGN3hUGiCJ5vJmhtWc8MGwf70Y7xXVkEuq6iSY1ydZLkGJGrs4QBI2wCq5?=
 =?us-ascii?Q?7HZ16Ew36tyC8RM0ZCpZl29Ei3k5pNyHkBXi+l6DcD6aT2/lKMZzs/1hVN7m?=
 =?us-ascii?Q?57RfxxRUIgOgavxq1pBgv/yL2NAF7HChHEMhe2cZiDwY7t5nClPXCFt4rt3u?=
 =?us-ascii?Q?vms369QbwQGhCsMZD9z+7MuTfLifUS8INu2ZkOZRYcEPg76wt42CSMOtXlXK?=
 =?us-ascii?Q?d/0KBItLc4htJF42TJT6aRh3ZJV01J3SQz5+1CWOv/cno2FdfwphlT4xkXnd?=
 =?us-ascii?Q?cAghTUQqHTHdCWj4e5yZCsQjmXdeKCsJM7J+PfB6U92f8aX3gEF/SuCFetf3?=
 =?us-ascii?Q?PvnUJlE6TbTpWGoI/BIATXIUFRbwFrJp3AHxbLkUQIXNU0GmYBx6afX91ucw?=
 =?us-ascii?Q?VjRzj94Mz7LbTQ3KmPSzvYdZDi/iwaFVSGyb9IL8S+CI+Ara5qK2B3yz2ESU?=
 =?us-ascii?Q?6e6yQRDSQqvDWiHej/rllYYOZnzDEIUmwH3ZD/fPJ3UhNEXkZm731TLNJ4/p?=
 =?us-ascii?Q?jMWTuBatQY0AeMYssex0oXwjJitPopZ58MLBG5MpVRkCdcnKFJj+8WvSNeFT?=
 =?us-ascii?Q?0c1I/KI/vNviXaJqQxaQ3P62MoMg7HdEhiEIbMts0C7oXSXT+gb6AhTrqBYP?=
 =?us-ascii?Q?HKW2mOOv06SGOfa2lBvy56Zk6HBvJF2gTzyByQCTNt0n2Y1y9bZZ3AxtL/In?=
 =?us-ascii?Q?gtQlg0wVUgA0mVdihQnFgM7DjiphEj9yJxLVtV+Jwu8lXMSX5Y6rlhrafwwv?=
 =?us-ascii?Q?g5m1Bf25G2yKATELDh7mMH+OdLdSPIoQ8UD/seJeJ7JS0kL2YV/ZfE+VEWXT?=
 =?us-ascii?Q?cYQ0cFFON2xHMvH1Ye1tXKbMjV3Jypdcqs8jok8Otdzze+IizUYBgVvLbCb4?=
 =?us-ascii?Q?hwY2S6YDAlTfViFVbmI6GXmJSDpF5ysEfoQmhb5kETGYnwlfnny52BgR3Qt0?=
 =?us-ascii?Q?2czv0ESDzmFsg/ggvkNll0T8bOJ1kY/jGUJxrXiD7vZV6wbxDX16/Q=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5e42a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LOYP265MB1887.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 457434a2-0ae4-46e9-9652-08da30243540
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2022 12:22:09.6102
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO6P265MB6189
Message-ID-Hash: 2SGLEB7FHQL3Q6LRTFI2RWW5K3XA75T5
X-Message-ID-Hash: 2SGLEB7FHQL3Q6LRTFI2RWW5K3XA75T5
X-MailFrom: iucgnaw@msn.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X300 simultaneously transmit 2 signals of different sample rate and center frequency
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5WPPR735ZCQ3R6BEGZGPR45TDCYJ6OVQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1898874522642942039=="

--===============1898874522642942039==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LOYP265MB1887CCC056B0637CA4A49C74A5C49LOYP265MB1887GBRP_"

--_000_LOYP265MB1887CCC056B0637CA4A49C74A5C49LOYP265MB1887GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I searched around and still can't get clear answer, so I would seek help he=
re.
I want to simultaneously transmit 2 baseband files which are different samp=
le rate (one is rate 2.5 MHz at freq 1.5 GHz, and the other is rate 8 MHz a=
t freq 1.8 GHz), and would like to utilize 2 daughter boards of X300.
I tried to configure it with 2 multi_usrp objects, but the call failed when=
 get second tx_streamer (however, the first get call succeed.), with: Error=
: RuntimeError: Multiple sampling rates downstream of TX terminator 0: ...
I know X300 can transmit/receive 2 channels at 2 different sample rate, jus=
t wonder is it possible to simultaneously transmit 2 channels as described =
above? Or have to resample one file to the same sample rate of the other fi=
le, then transmit together?
Thanks in advance,
WANG Cui

--_000_LOYP265MB1887CCC056B0637CA4A49C74A5C49LOYP265MB1887GBRP_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:11.0pt;
	font-family:DengXian;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:DengXian;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:DengXian;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">I searched around and still can&#8217;t get clear an=
swer, so I would seek help here.<o:p></o:p></p>
<p class=3D"MsoNormal">I want to simultaneously transmit 2 baseband files w=
hich are different sample rate (one is rate 2.5 MHz at freq 1.5 GHz, and th=
e other is rate 8 MHz at freq 1.8 GHz), and would like to utilize 2 daughte=
r boards of X300.<o:p></o:p></p>
<p class=3D"MsoNormal">I tried to configure it with 2 multi_usrp objects, b=
ut the call failed when get second tx_streamer (however, the first get call=
 succeed.), with: Error: RuntimeError: Multiple sampling rates downstream o=
f TX terminator 0: ...<o:p></o:p></p>
<p class=3D"MsoNormal">I know X300 can transmit/receive 2 channels at 2 dif=
ferent sample rate, just wonder is it possible to simultaneously transmit 2=
 channels as described above? Or have to resample one file to the same samp=
le rate of the other file, then transmit
 together?<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks in advance,<o:p></o:p></p>
<p class=3D"MsoNormal">WANG Cui<o:p></o:p></p>
</div>
</body>
</html>

--_000_LOYP265MB1887CCC056B0637CA4A49C74A5C49LOYP265MB1887GBRP_--

--===============1898874522642942039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1898874522642942039==--
