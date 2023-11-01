Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 880A37DE7F1
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 23:09:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7DE2E385734
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 18:09:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698876573; bh=XFysPAYE6rAKWllJqumxUN6RKiycdbGiRFeRR2CKRbk=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=I1AYVZIgNXLw+NWAPYsB5LdS/VWzU7K1IKRlIidcNiXL5hsGeCj8/D60JCsrxfhI6
	 M+e9l0bRXAe/my8Ks8YhGQV8SBedtoxdB/AtU8DSbotQG0WLyXei2JwS/doPpjNN9i
	 f4lxqT6agpcNZSnAlPeq9wS4vaP+BaxyyOOwNfSojlQcQP2lGRqmZjYDy7y6QOoPBi
	 Eq0pFoGL1OQNCwwvY66ArxSoD74ZXvGYZ7ZUpuDYvnp0NXYdH++pCnRKjut7QZRuaX
	 vg5SHp3rGiS74iGTP2g1o2vXascD7OatgKkNnYK62cJ4E8biG6fToLTFamKrSeXbtN
	 K7lA9yodzzKyA==
Received: from az25dmzegs01.gd-ms.com (az25dmzegs01.gd-ms.com [137.100.136.43])
	by mm2.emwd.com (Postfix) with ESMTPS id B3CDE3852DF
	for <usrp-users@lists.ettus.com>; Wed,  1 Nov 2023 18:08:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gd-ms.com header.i=@gd-ms.com header.b="wJxvC0WX";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=gd-ms.com; i=@gd-ms.com; q=dns/txt; s=esa;
  t=1698876513; x=1730412513;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=R3CpbQzbw+w0c5NztE10xDJi5o26ga/8hiB0Vth7K4o=;
  b=wJxvC0WX0U4NxU+dmMY2I+/ivf6j85MdA/VW47iDFFTFKVOjgwcDoU4E
   NYO4MuzUrNiu3GT/w9rt2EMNvgcH/Ep0W3s0x3b3Mjjo3UkFI/kyKUeZd
   zKtDyA+a49e3/u/8ua93QT6i12tUh5beJHy2DLl6pouTo83kMnIkTxfKB
   ZLIlJbVwK0HeamWldLKETAmPq1Gw9WGt1FyAzZ6TD4FxS36bYp/IXyvSl
   ZFWoKLuqJPH27KchFN/bdFOPEltBCZMw5t6+EFQhRvz3xPurF++4RBRgS
   1l46j0oOofd96v7bWoFXukiHx9nZMIv0zFKDKS2KCinTSYplC84TLmFCN
   g==;
X-CSE-ConnectionGUID: 737tsNdZSqqNgibPwUhkRw==
X-CSE-MsgGUID: hyjM3WYuTbWojiIWeFCLMg==
X-IronPort-AV: E=Sophos;i="6.03,269,1694761200";
   d="scan'208,217";a="61712599"
Received: from unknown (HELO az25sec06.localdomain) ([10.240.16.97])
  by az25dmzegs01.gd-ms.com with ESMTP; 01 Nov 2023 15:08:32 -0700
Received: from azr-a-mbx01.GD-MS.US (azr-a-mbx01.gd-ms.us [10.145.20.52])
	by az25sec06.localdomain (Postfix) with ESMTP id 1E00425898D;
	Wed,  1 Nov 2023 22:08:32 +0000 (UTC)
Received: from azr-a-mbx01.GD-MS.US (10.145.20.52) by azr-a-mbx01.GD-MS.US
 (10.145.20.52) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34; Wed, 1 Nov
 2023 15:08:30 -0700
Received: from USG02-BN3-obe.outbound.protection.office365.us (137.100.136.86)
 by smtp-relay.gd-ms.us (10.145.20.55) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 1 Nov 2023 15:08:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=Usy1/NsA/tQc1YUS4hjbcxrPyxvn4Aieu+CKuJEwuYbMnTJiL85ajW/bLsfojJpb4Lux/9QqUCIMkpBZs2AnfbE85PrQhvxCCZ+xYWBSJSNI+ZIh/3tPunPArL6uEyu6PF6uNJOKEKsxTqpF6WjcqW7IGxU1cHDK4fa3vMoNqnlsu5ge5KC0GO2ygTlMA2i7ocNgFHpOPndg15omK9BZL8SaxLPBpB6riHhkbTdBG0Wcxn0rTpersUIn3FBuu3FYst08oiZU+dc19UG+tfg4pQtVXywXn1ubMGrDY290YRm/B75r9U0Y4hXx/LGOAPr6vvqyHjq6MFZMdgzy9seTMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pco9bqdvb9bT2tl6887xZHOdOxhAZwQBbLsJCt3QB7Y=;
 b=WgmAXAgAJGuTpk96bc+CACUdcqU1kPCxiDOr63Vf1Zu5WZBGfd2cBTGVgnRRxQIeOy5VVtnx7VWgxMrnMTpcorjjWF35NggsbtMaD491CGnWCB1ShtNCQiRef3YujOEmRFIVXY7MTd3yptRVOpH5Av1XQE0DHr2F1IlYsT4r1ytzofAM+BGizdj4T9OEjsH2QMikXlQfVhLXr9WWWH2ctdPxCXLm4DetrjlvUTWE8kmzxKXSJGH+J4cEB0dcyoLDB4yaFm3WVhUlM0LEddpmdlXp3eOIzgX6lial38+8BVyURxnZvi0mjaEB3jFVxpdzaWV4b1/0BNzhII3Js7XwKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gd-ms.com; dmarc=pass action=none header.from=gd-ms.com;
 dkim=pass header.d=gd-ms.com; arc=none
Received: from BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:169::12)
 by BN2P110MB1224.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.31; Wed, 1 Nov
 2023 22:08:29 +0000
Received: from BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8e9f:bec7:36f7:ba97]) by BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8e9f:bec7:36f7:ba97%6]) with mapi id 15.20.6933.031; Wed, 1 Nov 2023
 22:08:29 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: X410 gui
Thread-Index: AdoNBSGYZPpGbhvsT2yv/amYX/xocQABe2CAAAC+SIA=
Date: Wed, 1 Nov 2023 22:08:28 +0000
Message-ID: <BN2P110MB0948BDD32B607C714324FD4FCAA7A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
References: <BN2P110MB0948CE39707B3966A22ACAE5CAA7A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
 <fda9b390-0dc0-470a-bf84-ce16e2d5742d@gmail.com>
In-Reply-To: <fda9b390-0dc0-470a-bf84-ce16e2d5742d@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gd-ms.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB0948:EE_|BN2P110MB1224:EE_
x-ms-office365-filtering-correlation-id: 7bbe54a3-f400-4927-f7c7-08dbdb271417
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 67Crz3tpBn5QxO+9r2pDwI4EDFBdVHfal/Dz5NXvEw61ECv/Nd51vWbqjXBbvO1N9s2mJPvhzI04GdPKPL3i4tCoZKLoEIMzwDVuCnUBdKX4KNwAayCcXMpC4xfvTZnWKPVz4dzwZwM0gGAVAZALAcWtG1BnunIhPpuI3Qnn95Nfra0fig+3ie38VdD9yRlCyxoCoevt3a8Ls8glh9IguC+77ppPSNvQqD4GBdP+msQwvTQTMs5j3N67qRspwzQDRvIMVNpJY/eick8OEKmddld0WTycKGYUY3IOKLaS88OvQSRTig6Dzwy7I1uSG9/xA0dUlPr4V8/n25V1KREeA7frMsNONx1GMfI9RJxewu5sAZUEW4Mxjhfby2pPB4jF0mdxP9/NHXA3XKj1UGIB+I2MAMyTHzdwrbymWhp30tewbEFMa0qcd6ChIwejrpXyT9Iz2Mpue7vPO0qY2jL8qwgLxMX52E37V4FIVP119ltuGJPmWUFfYRVyw/3ZZl9QpbA5wCY2BUxhBJO2yEE7/Vv6t5qiqaVJLI8S543SzPZS7AliKDR3XtGdtzGLex216Ibob7aF73q2TFk4RES1YgvG1Zf7SsiT7ApCC68djtyBaRL0dixbcRTtKaz0XsetgnXzR1/EQlEDgNji6P6w/EYIej7RHAffNZkZdbm05x0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(230922051799003)(230173577357003)(230273577357003)(1800799009)(186009)(451199024)(26005)(9686003)(66556008)(53546011)(498600001)(71200400001)(52536014)(2906002)(7696005)(8676002)(5660300002)(76116006)(6506007)(110136005)(66946007)(64756008)(8936002)(66446008)(66476007)(38070700009)(38100700002)(83380400001)(82960400001)(122000001)(86362001)(33656002)(55016003)(66899024);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: TvMBHaMvf3CGMRyYNhEN0PnHp+qvro2QIL/UwQWJzHeCfOGeRdJysCTUDdCRbxXaiU2d/B8J+0WUz6WgeDcZoVFjagxkKBoRhdtnLmgo3Z+DSEjSF+5gO2wAXpKjX8rATmxrWTn2Dzwk84JRXRo+NrDnPJzevxXgAtFGndokorPwJDfdrfCyqy3Rov0UyCx6kO44wGyhMIOlmINWKdzuQli9eJFqQ1oIrx0IOdcfE95zQ2L95mQvY63KneoZS2BdWXThnamrhDD8y30CDvWFUSxWEnw4dqmHKYWCJhiGeHao2LCxYwDSyG9ugcQcnoTwjxK2nG9jNASoft8356vEyYrb/wQ8+MGH1tAGlifNz91c7osaxmgHzdwzbkz2bLtWXB4M96YdRQb4CCmlrEChweEmkMy7WXTtjdj7aeCcKok=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bbe54a3-f400-4927-f7c7-08dbdb271417
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2023 22:08:29.0109
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7c5a26cf-ddf0-400c-9703-4070b4e3a54d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1224
X-OriginatorOrg: gd-ms.com
X-Content-Scanned: Fidelis Mail
Message-ID-Hash: INC7RFAKAOP4BZRBYDDDHOBEOHGGNTSB
X-Message-ID-Hash: INC7RFAKAOP4BZRBYDDDHOBEOHGGNTSB
X-MailFrom: Alvin.Begaye@gd-ms.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 gui
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/INC7RFAKAOP4BZRBYDDDHOBEOHGGNTSB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Alvin.Begaye--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Alvin.Begaye@gd-ms.com" <Alvin.Begaye@gd-ms.com>
Content-Type: multipart/mixed; boundary="===============2348157332225940618=="

--===============2348157332225940618==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB0948BDD32B607C714324FD4FCAA7ABN2P110MB0948NAMP_"

--_000_BN2P110MB0948BDD32B607C714324FD4FCAA7ABN2P110MB0948NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks.  we just noticed these in /usr/bin

uhd_adc_self_cal       uhd_cal_tx_iq_balance  uhd_find_devices       uhd_rx=
_cfile  uhd_siggen_gui
uhd_cal_rx_iq_balance  uhd_config_info        uhd_image_loader       uhd_rx=
_nogui  uhd_usrp_probe
uhd_cal_tx_dc_offset   uhd_fft                uhd_images_downloader  uhd_si=
ggen

when I looked at uhd_fft as an example it is a gui app, I thought perhaps t=
here as VNC, or xserver that needed to be configured.   Even uhd_siggen_gui=
 suggest there is a GUI.    If these aren't part of the normal install, I'm=
 not sure how they got there I would have to do some digging,  just got exc=
ited that we could actually see an FFT visually.   I assume we can not run =
uhd_fft based on your response.

From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Wednesday, November 1, 2023 2:34 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: X410 gui

External E-mail --- CAUTION: This email originated from outside GDMS. Do no=
t click links or open attachments unless you recognize the sender and know =
the content is safe.

On 01/11/2023 17:03, Alvin.Begaye--- via USRP-users wrote:
Is there a GUI interface to the X410?   I noticed there are some gnuradio t=
ype programs when I ssh into it.  How are those executed?

Thank You!


  1.  Alvin

The Linux image running on the X410 is there largely to run MPM to control =
the radio hardware you should NOT
  think of it as a place to host your applications.  It's not powerful enou=
gh, and AFAIR, Ettus/NI DO NOT install
  Gnu Radio by default on the filesystem image.

You may be thinking of some of the example programs, which would be in /usr=
/lib/uhd/examples.  They don't use
  Gnu Radio and I think only one of them has an interface that could even r=
emotely be called "GUI"--the "curses_fft"
  example.






_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


--_000_BN2P110MB0948BDD32B607C714324FD4FCAA7ABN2P110MB0948NAMP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle23
	{mso-style-type:personal-reply;
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
/* List Definitions */
@list l0
	{mso-list-id:110059080;
	mso-list-template-ids:1349828874;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:1692948519;
	mso-list-template-ids:1283233078;}
@list l1:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Thanks.&nbsp; we just noticed these in /usr/bin<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">uhd_adc_self_cal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd_cal_=
tx_iq_balance&nbsp; uhd_find_devices&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uh=
d_rx_cfile&nbsp; uhd_siggen_gui</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">uhd_cal_rx_iq_balance&nbsp; uhd_config_info&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; uhd_image_loader&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; uhd_rx_nogui&nbsp; uhd_usrp_probe</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">uhd_cal_tx_dc_offset&nbsp;&nbsp;
<b>uhd_fft&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; </b>uhd_images_downloader&nbsp; uhd_siggen</span>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">when I looked at uhd_fft as an example it is a gui a=
pp, I thought perhaps there as VNC, or xserver that needed to be configured=
.&nbsp;&nbsp; Even uhd_siggen_gui suggest there is a GUI.&nbsp; &nbsp;&nbsp=
;If these aren&#8217;t part of the normal install, I&#8217;m not sure how
 they got there I would have to do some digging,&nbsp; just got excited tha=
t we could actually see an FFT visually.&nbsp;&nbsp; I assume we can not ru=
n uhd_fft based on your response.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech &lt;patchvonbraun@gmail=
.com&gt; <br>
<b>Sent:</b> Wednesday, November 1, 2023 2:34 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: X410 gui<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0" style=3D"bac=
kground:#3F7FBF">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto;text-align:center;line-height:12.0pt">
<strong><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif;color:yellow">External E-mail
</span></strong><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&q=
uot;,sans-serif;color:yellow">--- CAUTION: This email originated from outsi=
de GDMS. Do not click links or open attachments unless you recognize the se=
nder and know the content is safe.
</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal">&nbsp; <o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 01/11/2023 17:03, Alvin.Begaye--- via USRP-users =
wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Is there a GUI interface to the X410?&nbsp;&nbsp; I =
noticed there are some gnuradio type programs when I ssh into it.&nbsp; How=
 are those executed?<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Thank You!<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"color:black;margin-left:0in;mso-lis=
t:l1 level1 lfo3;background:white;vertical-align:top">
<b>Alvin</b><o:p></o:p></li></ol>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal">The Linux image running on the X410 is there largely=
 to run MPM to control the radio hardware you should NOT<br>
&nbsp; think of it as a place to host your applications.&nbsp; It's not pow=
erful enough, and AFAIR, Ettus/NI DO NOT install<br>
&nbsp; Gnu Radio by default on the filesystem image.<br>
<br>
You may be thinking of some of the example programs, which would be in /usr=
/lib/uhd/examples.&nbsp; They don't use<br>
&nbsp; Gnu Radio and I think only one of them has an interface that could e=
ven remotely be called &quot;GUI&quot;--the &quot;curses_fft&quot;<br>
&nbsp; example.<br>
<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_BN2P110MB0948BDD32B607C714324FD4FCAA7ABN2P110MB0948NAMP_--

--===============2348157332225940618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2348157332225940618==--
