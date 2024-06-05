Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 049F78FCD73
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2024 14:43:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39B963850E4
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2024 08:43:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717591431; bh=mZeHR0zxGWV58T1gL/Gc/K61FG9WynoppqhpcK+2G84=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=RyTitPITQY/Gg7/sfdRHuHuTmfXkwJerNfKyBP5uT88pM2rfemIG2XNFqFapzpL/V
	 OPXoqSRvfFmEQwp+Kkkfx4Pvo5H0bzwFTSZIFB+ASHFLORkYV7Hcg3oVXTeZ2GLoq7
	 2l9Of6Kjwd9On7KUGWvKJmD7BOomPez7Hv/9WwtESjf4qs/yfkdYaS5vgi7pImEqvf
	 BEsF0I24RA2e9fIw6Vney7VNK2Eq8s/v2s9Kga+D0YMEIn+wyeJPttdpmFm4OxtyIQ
	 IGUWc+fqDLTAJbt07z3vpn6j7EFQysRyRQ5s/9XXQrdsxKFILzrSkfa30aY7r/r2/F
	 UthwGA4z81L8A==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0111.outbound.protection.office365.us [23.103.209.111])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B7093814E9
	for <usrp-users@lists.ettus.com>; Wed,  5 Jun 2024 08:43:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="o5zfHkR0";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=QZSi10URIO5b1SXYBhYB+5DNX+XSwPu8shn6G6+ILiyGrK2WL8TTdrgU43pbWzTrPpXi/RrywI5JEE9wmT0WUlQibp37gFyCX3VINLDe/4S2FAh4BTl5EdDIC0yEyjRUfAtj3MhW5jjmW41CzxZzA96RaBruB8lHvpEa+N09g3eDppHS9fTbMcB/AdunzvDPQOS0+lprSGW51pWzGpkZ3H2NyMTrr7j8DVVfMh5/Ieap6AEOTlHk/izfcDJ3/qsP2zCWsrHGCa3hyfExXwvWFENvBRQLSTfzYoxfASGq/MClDmGyVdbIqFgd2Atos22s6xZ+9v/3i+lYcCIhfoFRMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9i/njOzHdzb3y2g/7M+YrqLFYIpZ61w22gI16zqh/4=;
 b=zJdHkyicVW3si8M+G9lNlmpCw4mCerSR/zaybtCJgpcahDBjlkD7mQDtjyQoYz6OBxEiu3HeylVFYsyXtTW+MZ+Tt/YLt+ktZx/zXnh1jZgDnO8OOJvr3Sr7jfWlnjxKgNmU5oOZo9osez7jNSn8mFY537WxVc+fnVschQu5xzd8JHPpq3+zPxUopXG12/T4py6b4N1cjuFV/Iu2z9y1u/moz02E9r+4yJw7PLGQNlpu7f+jgC6spexbYshmfhEC1sS9lXZtUguWSFcSwSYg38j0I9654+jz6MXnpXU5wx2vQESJD9ee7Hn0j2yv1lKXLYCwbcGUATD4NKmNnvDXNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B9i/njOzHdzb3y2g/7M+YrqLFYIpZ61w22gI16zqh/4=;
 b=o5zfHkR0w87aK8T1CslBMo9C1jNqQDC8B94t8PyZyIUYQV9WWIt5f/Sd0zqQ+iVofmbncvxgoAJMHvtvCPS7zMKgrDQB+HP6+H1wKMwEYQRPsJzSW0z4Zd/71PrfeRfsyNnaOWzdYQe4z0nAXIsVKEsWZMOkdTvDW+q0Tx2a+MXpfFZJ0dUg9MdyrLBgFKhBVJrYX2sBQHVl8zC4N5fPxAScLO8rB12yFFOaqXlV1AGQhy0Uap92/c3uFJfWFtLe5kPhFbUYzsoMJcISOX9wdXnxEM0+Hxle9Nao28M4pakY0K8czZB+ynSUnSlnXOlWt4DqH5+srWT4N+4Of2aGlA==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1669.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.31; Wed, 5 Jun
 2024 12:43:38 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::e88:20af:890c:f6dd]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::e88:20af:890c:f6dd%6]) with mapi id 15.20.7633.021; Wed, 5 Jun 2024
 12:43:38 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: GPS fix behavior on USRP E320
Thread-Index: Adq3RKforcEfuDW+SLa9FZ2HPK/S7w==
Date: Wed, 5 Jun 2024 12:43:38 +0000
Message-ID: 
 <BN2P110MB1747451A80AF745107DB2C51B7F9A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1747:EE_|BN2P110MB1669:EE_
x-ms-office365-filtering-correlation-id: f4a15bd2-db47-4abe-7c0e-08dc855d1f3e
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230031|41320700004|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?hsL3DtgUicXBQOdpAnag3We/HROHe4GNWaie6JGPjxxf885eo2ro5k4AMUzx?=
 =?us-ascii?Q?McP9m6NLWm/2ZnPnocRWWtOCqa6vcCfY5fXDmfrrV5wPc3imrMyTkp8im2cH?=
 =?us-ascii?Q?07gQFDiu9UPoDgOIcnlgZ3dUoyLQ3opHWiLWjvsxAKd7lCwSLEPBXVD+8jjK?=
 =?us-ascii?Q?G0wg+DaxN4VkzpSp8Y+OysrjyXTPgLK88SAcDdyO3oRvE4SU8RZmaxroZNXX?=
 =?us-ascii?Q?8HdM4ktT/alVoC7pnKTHg1D1flCKnvHWtP6u7kMWnZaegrKMrybokL81OnDZ?=
 =?us-ascii?Q?Lmmgeg62gvy4p5VbEiKjKLFLzCp2sHF5FqJzceb89mQlb6gfcRJH9E71jfjL?=
 =?us-ascii?Q?zN67AMN7JkF7cjyruAuyNS1A/XKn3ySaxmYCmh/rxQEHvvXiq5Xt52rcrHL2?=
 =?us-ascii?Q?fKHBH+QsiJuDlPP2AgB3Y6J8fSsiroohWPhbFdcDyIOodphkFupx0b+qWrvA?=
 =?us-ascii?Q?aXGQOlKxu7lAUCci2PjX7RSq/plky3Qhc3nV7cMYO1yrgkztWZVJ3gh7/X6+?=
 =?us-ascii?Q?Y93DUtVlB4+xZDlxBfs9BL3LfNm7q0gsLBmz6jfVoZeF4TlgtBDBFZ/dbdzl?=
 =?us-ascii?Q?WhLcBzxGSIHAxLBRKqCuX1FYSQlo2UVNkqz3f9yFz5jAddU2ulhDl0vtWP6z?=
 =?us-ascii?Q?yMZq7z2KRdmWjYYYejypjP9rL3FsGihVkiVCvwdOxk0xGpBonS3Tc0YBBwlM?=
 =?us-ascii?Q?fLlaPKqFNvFDJavS1sAjcm98uWK7AN350jAT12VuO96b7udKTP6DsEXDUVOM?=
 =?us-ascii?Q?zVze4zv0ix0i8iKM/DTfgTKGlVrxWPvqkihoD5XSSyyHo4Hf0yfoa2uqCC5r?=
 =?us-ascii?Q?EvgxyeTTScm7mit40rHsxM4A1Ogl9PzNN4+yIPgZW9FP/83FvO2uYxLzT2oj?=
 =?us-ascii?Q?dXx/nmjufWWX4QjT2X9QQco62PztNPXgsDq+uQ73Y78r9oidjIJ8uu5Bc4Y3?=
 =?us-ascii?Q?RrVgE91oVVJsWiaRtJk5m2aDmoPFaS0i4AwoGWX/+4azsTyoi0rvkmjPbdF1?=
 =?us-ascii?Q?BvOOQNhZHzhWRCAbmHg5TQaSaAq1nExr2EO220L+3ZdSazPmLFYrYHoTf3XJ?=
 =?us-ascii?Q?4taCL28Xy4wAsXudnYfGTviefMRBMVkZPd6otRWnqRiF4Y8HbkFTrt/9L0rD?=
 =?us-ascii?Q?hXaT10DWhM6QSXds+hDiwY1WCS3ZH6DQbhcwhIAic0xxwN3RP279wFNDKK0w?=
 =?us-ascii?Q?c4frbCoVbziRNMzmbvvbllrsU7NI3FPOMN50T0II+TvRR1rtFVnQG+O3c0Pl?=
 =?us-ascii?Q?ZWRthqjfTr2fLOlCJB8mxUtOqfh66oWi7bXO8j8O34BXsP+hHOxF3Gx1y9Dk?=
 =?us-ascii?Q?zVwfH1/kFEYzbo9zwRkmMpuGAGCgTRY6uRAxp46ylfb6rg=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(41320700004)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?kyFDVvpQXh+4CBqYm+BshRyg2RmiYyTkyrtzXgzZxwZtkhmso35P5hzeSoXQ?=
 =?us-ascii?Q?6NTivmAyrYaeoPNMgfAJh49yYl7s4Q7BeMGCNRRdO2UQCevyuSLKNTXR8pIT?=
 =?us-ascii?Q?MCSz7ADJwYVgx761zCWxgJbE4Cxbf5ixMkl7nF27qE0zD8qpEFR5jhueAYLp?=
 =?us-ascii?Q?ZuOtip18kHxuTVbEZoDEHNDprtTm+kauazFTnyMX0cMwx6i2FrRmWhIHGCLN?=
 =?us-ascii?Q?76BYqyjkEAB0/grG9CQhce/0dpy3Mfewq3yZl0aHYjeqzTGsx9zR9aEksaG/?=
 =?us-ascii?Q?wPn+1bFbtcfPfDMph36XKyVb6qYSZV84r7tnIIFZ60iZORuAdL/d908HIdr+?=
 =?us-ascii?Q?DxvQZbpeZZM8TGcHHkHUAAEC028zdC3mqoFiCtqKcY/QFBYq/D9ZjveGgvQj?=
 =?us-ascii?Q?gDfv7wL/q5QJZUezXuyDc1ApOdL/ffyxxoIVGq599J+6QaBTgoYhubSh23St?=
 =?us-ascii?Q?4ygeG5BpEMAtuhXjT8vzQVz+zU1i0V+H2nzPM5xocF0alEQivWZHtanReiRH?=
 =?us-ascii?Q?OJ9xzbGXb+f1fpWe2whJzeEtLzjBBiDRP+ZthulNXjZI4OdX3ATZ8hyIuUxM?=
 =?us-ascii?Q?iZuasrVHR47HsLn2yjDPE/JkA6HFHjY4jWkMb/BoAicbntBA7/b14kiZj4J0?=
 =?us-ascii?Q?a6zMC/zdxer029hzbiOqNFYIAmyk/+Rkab6GxOpmv/SVLZ67fSMDfq7EvN1z?=
 =?us-ascii?Q?sHM12bO4rayaQotKHu5zGE6/rrh1W1dRG/7Y2d38YKBM43lT11ri8z7VRSnL?=
 =?us-ascii?Q?6tP8RjfbocV+kT2egLiWm2NRGt720THKeFdPCk98DM/1p/U0T0iPhQlNpqvf?=
 =?us-ascii?Q?31JZzI6BIjCpyY+uTG7VkmNS4NZgW/9H/08wu9f7GNu6YwlxnzC4m/Wm5abL?=
 =?us-ascii?Q?6Hu3XU/SlLVwiGIFy1moobscEviFvZLKGc7jmnJES1e/yZkbksp+7hXyb2Ui?=
 =?us-ascii?Q?wd7ZBVvXEbgLs7Hm6WUzhVrPA2cAOZEFnMt4qVel3lWpxL5zs9qH7CHVk88O?=
 =?us-ascii?Q?grfPUxb2WCJHjADAs36JD4VBkP4vYk4NLQgpIOe6h1pF5wn8vwfqrdhJFvP/?=
 =?us-ascii?Q?oJaSneY96NlXf27Rf2W3w9djxn59TQIbcupD48Ja2AzAwZdwBk0kfkEbnDHA?=
 =?us-ascii?Q?9WqaEDtKoXVkve2XyO78GcwRiiHLweGwN6PjC1YGdnV4zDCDy+2a44wwWeBy?=
 =?us-ascii?Q?6mLVEKnmgjQCs/87wq1j+4LHx82EIM9VZBR9yRXmHSyH37blJDBro4arTR+U?=
 =?us-ascii?Q?Mkf+e8CqE4POMwlPzYx/8iTos1ss+b+T9vKzmH/bx5bxKqgkgjA7S2g9mYK7?=
 =?us-ascii?Q?2ke001hSIdtQjjcWO4cGMqpi+YYs2SNyDEv+umXhTAjH5cIqknCfyHH2Bb0u?=
 =?us-ascii?Q?+LVjft1PsFqU3UvuJjBZDtcApdyhjThdc/jL9MhmppqdyTsAku9Z9Y7KsqP7?=
 =?us-ascii?Q?txP0sOoB8a5om43ycLTjFXvKkMKVAS5/WImsGKgtHh02cc6PnwWfi/pbrxI0?=
 =?us-ascii?Q?t3i0DEiHc3fuu1EyNUTzAnsOCZZUl260lYamIVLtZ/YsOhUdrAN7nvKiEQr1?=
 =?us-ascii?Q?YX9jNJlkINaT0SUjLmMiS9SY4BpF9+1AGHW+jpyavVJIR6MfwD9AtdP6wWPk?=
 =?us-ascii?Q?WQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f4a15bd2-db47-4abe-7c0e-08dc855d1f3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2024 12:43:38.2193
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1669
Message-ID-Hash: D2LFDMRYT2FKNHIYDQKBLWA7UILAUBD5
X-Message-ID-Hash: D2LFDMRYT2FKNHIYDQKBLWA7UILAUBD5
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GPS fix behavior on USRP E320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RLEPKKULAXVF42MFA74DTISUUZWC25AP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: David Raeman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Raeman <david@SynopticEngineering.com>
Content-Type: multipart/mixed; boundary="===============5373457547567773180=="

--===============5373457547567773180==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB1747451A80AF745107DB2C51B7F9ABN2P110MB1747NAMP_"

--_000_BN2P110MB1747451A80AF745107DB2C51B7F9ABN2P110MB1747NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm having a difficult time getting consistent GPS fix behavior from a set =
of USRP E320 radios. They are all using UHD 4.4 with the same active GPS an=
tenna (Siretta Tango 21, which has a 28dB LNA and short ~6" coax run).

When outside with a view of the sky and 6 radios sitting together, 10-15 mi=
nutes after power-on, some of the radios will have a lock and others will n=
ot. For radios that get a lock, sometimes they will briefly glitch into "un=
locked" state briefly every 20-30 seconds before reporting as locked again.=
 If I let it sit another 10-15 minutes, nothing really changes. Looking at =
the output of 'gpsmon' on the radio, the radios which never locked will see=
 fewer satellites, and the ones in common will have far different SNR level=
s.

I'm trying to find a solution for more consistent behavior, especially sinc=
e these are outside with a view of the sky. I confirmed the radio's GPS ANT=
 port has the +3.3V bias so I assume the antennas receive power as expected=
.

Searching the mailing list, over the years this topic has come up a couple =
times specifically with E320 radios. I know the same Jackson Labs LTE-Lite =
SOM is also used in the newer X410 radios, though it's configured a bit dif=
ferently via strapping pins. I think:

* The X410 sets the module in 1Hz mode instead of 5Hz.
* The X410 uses it in "mobile" mode instead of auto-surveying "stationary" =
mode.
* Curiously, the E320 seems to connect pin 1 (EFC) to pin 2 (NC), though th=
is doesn't make any sense based on the LTE-Lite public tech manual. The X41=
0 leaves them NC.

Does anybody know whether any of the changes (or others) represent "lessons=
 learned" that would improve GPS TTFF or disciplining behavior? I don't min=
d changing resistor populations if there is a reason to. Or any other sugge=
stions around this topic?

Thank you,
David Raeman


--_000_BN2P110MB1747451A80AF745107DB2C51B7F9ABN2P110MB1747NAMP_
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
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
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
<p class=3D"MsoNormal">I'm having a difficult time getting consistent GPS f=
ix behavior from a set of USRP E320 radios. They are all using UHD 4.4 with=
 the same active GPS antenna (Siretta Tango 21, which has a 28dB LNA and sh=
ort ~6&quot; coax run).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When outside with a view of the sky and 6 radios sit=
ting together, 10-15 minutes after power-on, some of the radios will have a=
 lock and others will not. For radios that get a lock, sometimes they will =
briefly glitch into &quot;unlocked&quot; state
 briefly every 20-30 seconds before reporting as locked again. If I let it =
sit another 10-15 minutes, nothing really changes. Looking at the output of=
 'gpsmon' on the radio, the radios which never locked will see fewer satell=
ites, and the ones in common will
 have far different SNR levels.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I'm trying to find a solution for more consistent be=
havior, especially since these are outside with a view of the sky. I confir=
med the radio's GPS ANT port has the +3.3V bias so I assume the antennas re=
ceive power as expected.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Searching the mailing list, over the years this topi=
c has come up a couple times specifically with E320 radios. I know the same=
 Jackson Labs LTE-Lite SOM is also used in the newer X410 radios, though it=
's configured a bit differently via
 strapping pins. I think:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">* The X410 sets the module in 1Hz mode instead of 5H=
z.<o:p></o:p></p>
<p class=3D"MsoNormal">* The X410 uses it in &quot;mobile&quot; mode instea=
d of auto-surveying &#8220;stationary&#8221; mode.<o:p></o:p></p>
<p class=3D"MsoNormal">* Curiously, the E320 seems to connect pin 1 (EFC) t=
o pin 2 (NC), though this doesn't make any sense based on the LTE-Lite publ=
ic tech manual. The X410 leaves them NC.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does anybody know whether any of the changes (or oth=
ers) represent &quot;lessons learned&quot; that would improve GPS TTFF or d=
isciplining behavior? I don&#8217;t mind changing resistor populations if t=
here is a reason to. Or any other suggestions around
 this topic?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN2P110MB1747451A80AF745107DB2C51B7F9ABN2P110MB1747NAMP_--

--===============5373457547567773180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5373457547567773180==--
