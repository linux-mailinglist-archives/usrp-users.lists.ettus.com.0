Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7553751E7B0
	for <lists+usrp-users@lfdr.de>; Sat,  7 May 2022 16:11:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 693B1384DB7
	for <lists+usrp-users@lfdr.de>; Sat,  7 May 2022 10:11:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651932664; bh=I6iBXXbke8bn4g8zTbmObMQcPceABSTShquz8K2lAOY=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MfnSpUjpKoLreJwCo0ODrbtOF/0T3BfFw2nkAN6GmskrVnZ4EA7KAMnyXrm7dM/yr
	 K7ivNGR3XhRUfb3eAf9qLpE37Izvn+wHghjmXEmLym3E89ho1pxi411Cox1Qav82TW
	 xD3PC4nDJA/WVr7xzPjyytmZ0P/RGiswKKLAmI5V7M2UgcDhLKS1xZM8V+6Gt/Fukr
	 I+UEjBnuovZETvwYSr215ZjhJdkuoWOaZYvVPc/YITjGwVefdx2AtgVWbynIy7WhGP
	 gFU6By/smRU37Rgbwl0dsSxq8bhrXejSYYCrj1kRddiCO023YQl4dIn7wKHzrm/qR6
	 Zh6vkkRj0Qjng==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0089.outbound.protection.office365.us [23.103.209.89])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C877384D82
	for <usrp-users@lists.ettus.com>; Sat,  7 May 2022 10:09:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="gVlKdBcN";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=m2H6ZbbYjyUt5sJf6gfEz+rrHoANouViuQO8wVDFLNMOnZD3VcOh2xCpEsjN+0tY9xDSjlT4YBi7DwbDe/+/gPhbc3GvZTDbkc1q8MWYFUYVxY1p2zc6Z54rXD+0Xq9/8uyTdcuZJMg13UdicHV3CEUm+7SRQSY0mzlZI6wVRWh4b6Ax6wl3jK74S7zMi9Gi7hDU5AepmriyRR1ZW32noePwOCnNmDzT1e+YbMW3bAgAggb2fDmJG6I6P7rxFPu4Mp7eUNcEAkfv2W2W0FkJREVTWmKtOagAFZHJh2yoCSJA8YKlklVgQWCIiToLEk+9WPBVoAcgwG/hJG5s/lcpjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=493WFStQCsXNDM4S73PHqCDGULY7o7wjs0HglS5/vVI=;
 b=XL6iuf4wS91Pl/Ln5RCSExbFRUG5JjzQbMM8XyBB0IchAJ4UUABHgH+ZSAFKM25XeUfoO1LufbNMk4WMJ+59jxiY6tuEFR2qqzi/Kekb+ih28KCyXj1hcM8l6n7UNCQJboKRQqo68SpEkVg73Vz/5tZDKqwDfhkbBFpphBJab96rHjenE6JmHWND6kobJEJzfDxbAPCX1T2uOwQ/UkdVQPezpMmkvp5QJIpznKo+pyTQKKHqi4b8tAIiexnanq9LacNEexsn8WwXycQUOLLcVrf6mJjaha+5xexyW9fa7MNeUrkA9OHRweNQ63q5OdwhjIVvrLMZ3ZRFk/zolYtPJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=493WFStQCsXNDM4S73PHqCDGULY7o7wjs0HglS5/vVI=;
 b=gVlKdBcN+OOnkuwWCX2mSdmeYMGoZejKjPVUE2YU9/2yye8xp+P2NcWVO6Bqvm2C0gosh3kdvb7UvydwgPeDbTp1ezx3oF1huv7u2b1l35IQCzUiPYbIgCf0Ygy7ALTdLXduu/fp8enCS/Ml0as/A+lVJOccNp31ZTiLkX0RnSAnxngEGKDhDGvr4ubN7/cE8ncXurm7LACnKeERr8rQdwwNoMXWDy9hlpMZIeYSDNe9tnmq+jNOPaXUzVD7SXBVwx6Q6lD2KoUO4N3iA99m6CrUaKOcSI+FgR1Cu8Xjbo7va2ONWtRkx0KIp3DTJ0+h8TQ3kVU61J5Pr2h00hGYbw==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1066.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:176::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.27; Sat, 7 May
 2022 14:08:11 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::75f6:cf8e:ab07:b9ae]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::75f6:cf8e:ab07:b9ae%6]) with mapi id 15.20.5206.028; Sat, 7 May 2022
 14:08:10 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Supporting power calibration for USRP E320
Thread-Index: AdhiG5RknkI28MIaQDWYQyGd9GIN3Q==
Date: Sat, 7 May 2022 14:08:10 +0000
Message-ID: 
 <PH1P110MB1665904EF23D3C169287D1CAB7C49@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c8b80e3-937a-4217-d1ca-08da303304ba
x-ms-traffictypediagnostic: PH1P110MB1066:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB1066C0AAFB16A8631AA215F6B7C49@PH1P110MB1066.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 u+GC7gfnL0xBr5D2etIglQu4OXDj+TnYpd3AChkpCyLnoDFyrX0+SJl9S8pMN/mYG0fZum+5u/sI1NUzseazUHISyfFhWg6Zq+nPxBu5XSIPVGIZCHngvVCeuNplGyQ7/e9GtDJ8zQx1lIymq581qPO6oHA5ZP52YO4E3o0FK7Fs/UgTJdj+YoeWIIyW7yNa+0J4VDyFUJ4LkPlzxjmoWyQ1OP/ErAQ7ljSuvjWbti0Sxk8wSYLnwA929eEd6LGTz4ImKDknxcjb/Vlao8spLXqReF7Ov/F7Uhkt3JStG9Z+09HOLvsxYiKafCfKQatUT4UxlBbDdoEsoYOUaWQV+b9XvAY7YhFdpiWkOsB9uRgxHy9qcYA1xmx3ngRvxXutm9PdxiJIrvYlQFaNcXwjSiIfovYS2md0Cgydgn6nw56l6zb0OqMZPhyUmhVDabh0JeHhMePJo/QXWnbAOTDDZxmrKwH8t8t9tjit8t1Bn0UC/1o+jpEgf9HeR125kzwYzyG1B3DmtY5NM7YNx4bd1frq0EVvOKaOhCy1BH4ktLdgcpXzJPwJyEwpZzgo+VLoZzP5rsnF9lFQ1GZS2zC2BU0odOO23JdiR8d5T8VqLHvaov/fZ3forI00nDCk58B27a6F30f2mu0IJUKBdRy1aosK7MQeWJuXP14Mf/pzLhudgMMNTSBS78BdlNfztiSuRG2XatX/3hQTMChjkn6BJwgK0e4F8nJARz8QIQgAjFg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(346002)(9686003)(8676002)(6506007)(76116006)(2906002)(71200400001)(64756008)(66446008)(7696005)(33656002)(5660300002)(86362001)(66556008)(66476007)(4744005)(66946007)(8936002)(508600001)(52536014)(38070700005)(55016003)(38100700002)(122000001)(186003)(83380400001)(6916009)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ZDq0eEhhVzvjogQDglTUMO3h56WS5409ohU7VFy+LWrlQu9MeOtY7+g8Kb0B?=
 =?us-ascii?Q?chYL2qqhDjO7YcCWEbIOPC/n9icqC5p7jIEO4lxn0F/uYHiuG7SGz+KD2ihs?=
 =?us-ascii?Q?XNW+Em+h+v/8M4QV6XSAvXsikUHWeVSk2MDAg+XlpbwYidSXJG3iYvthPUpJ?=
 =?us-ascii?Q?FfhzxMhnhC+FkguSDCcI2N3nEeqZrSVy15BkxAAdMR/5IeeId7v7yYoeuAxI?=
 =?us-ascii?Q?PPcogp0aVHprptfBaM7PUqlRRZbAeqbmdEzVjGpfHCWbHybmGdrkDlvsY6iB?=
 =?us-ascii?Q?Huqc0+vCedgZ2dTOqt46tsgrTagnVqCX+n+07E4keC+cKM1oH117yMX//TdU?=
 =?us-ascii?Q?OQ6R79DTaUV8X82dS2AeGF6gnKSHloL1Fmbab7cYZFuM+1imH6khcdoUYluj?=
 =?us-ascii?Q?7MDoIZj8+S5W/RSODc5hriY2bNthxzmhXO/pCEExdK8reJsEjRl1Iobkl+cm?=
 =?us-ascii?Q?kZbiAuKAG2OwFllpTGNkN+EcnX+vcvexC1dLGA67VvbLrKSEGnZf2XK151sW?=
 =?us-ascii?Q?66OmEmfe0cBZlpk43Opq7e8cUqF8nJtZEAdz0SmuWnCBLjtUAFvrGQ+Jssdg?=
 =?us-ascii?Q?6RNYFjhgSfuBA6X6uqBzBvOtrFqt0RDCWxHVNW9zbFnDiiRQiwU3i+U4u6n1?=
 =?us-ascii?Q?7ithCmnzwGVCWmmQL9PPaymcXeypSLCB3pLMj3ZfF+jKvWvKA8TwVcMa4xvp?=
 =?us-ascii?Q?o7JW1THj6k5OmcHmdLKXW2u/bUJu+Q26vJtWgP1DrwVVT7hHJnDf2+VmxyG1?=
 =?us-ascii?Q?J++U+2/Gd+LPkVZcuVXbGqT9TWSxxOeixOumLwExN/RTb/jikKN86ODD69yB?=
 =?us-ascii?Q?nFErjnwtubVq1/GEYwnw+RTLDi4JeoupIOq8GD6JTdlr7xMyyOaRKsX1tBLL?=
 =?us-ascii?Q?EBpLWuOkB8uUJ0ajT9IbcVLBfIpMGEv+Rwqfa/MUgz9VEFaRI1Il/Gx+ZgU+?=
 =?us-ascii?Q?PTQoWxL0267Vst/7a1cj0B+sOL04CImB6uefabLBSAClBWqvuGx0i3FoxJhe?=
 =?us-ascii?Q?Mgv+rD0YhV/edbtw6b4ya9gJzYTPMlXPvDva6pJaVnfgFyEOIWUed6oTMwFW?=
 =?us-ascii?Q?zb/nUQHKmluYuPaYMZM5KYiV5RMPQjuvLTnMmYx0qsN5SVxjdKOCtmlxA0Sn?=
 =?us-ascii?Q?BfJ1fl6XTXOH2wN/iFf4MsXZz+YNVeArB0BvMFF6qITA845RVdbbEOqxxx2R?=
 =?us-ascii?Q?B8ckp2BH0Nky0oXpa0wWzogXjuezozixZCRVVgGJk6kNyY1IezSjYUs/7k27?=
 =?us-ascii?Q?NdIZOyeYeRaHad3AEmbVO3/gikI8dfNbGxfNhbS/9Nfvj9LYqAu48bGdPhRT?=
 =?us-ascii?Q?j5CemncIYISlaDZYqLaXlFmCJWwHYtHrnIIfy1ztJhilHUgEyewj7oW0BVZG?=
 =?us-ascii?Q?p+xbkStgi2t0fBGBqfuocyDGTG2s1cUK8ZqVhOcR3dhFDxxUjndZr+Nf6Kym?=
 =?us-ascii?Q?rjGa+f0oYc0wZ3h+8kDPatac66IhwBWJe5cK3mVwTAl0b0sUX/C+aPrKZBSm?=
 =?us-ascii?Q?QY74hKmD96dA1EunMyUBf0BGkf18D8EyBKRmOL89nO1rexujKLcfoTRQHJda?=
 =?us-ascii?Q?CqdBu+aCcBndzQMhQLYBUfjyyVkT0Pg0yWBA3R0IfCloWgdne7K+uWWoCs+8?=
 =?us-ascii?Q?9cro2Dtj54s/yM8Jyi76eiotORIccaXbHlA5JqUz3fKuXNjebHXzUVFfQiM9?=
 =?us-ascii?Q?WGiU+7VnrJx+OE7kPPiM4vOr/2MM3mn64vApCCYjS+OJWBwsLTmp9ABnwwxR?=
 =?us-ascii?Q?88yeuxCdDnefB+AXgAa1pHKjkSlZTw8=3D?=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c8b80e3-937a-4217-d1ca-08da303304ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2022 14:08:10.7007
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1066
Message-ID-Hash: VTBJITV5JBBB7EAB4QSLQLB4PTQYVBA3
X-Message-ID-Hash: VTBJITV5JBBB7EAB4QSLQLB4PTQYVBA3
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Supporting power calibration for USRP E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HVZO5CMP3ORAMDV73NKEZRWJ2PIN42UK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0538585140752912911=="

--===============0538585140752912911==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB1665904EF23D3C169287D1CAB7C49PH1P110MB1665NAMP_"

--_000_PH1P110MB1665904EF23D3C169287D1CAB7C49PH1P110MB1665NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

It looks like power calibration is supported by B200/X3xx/X410 radios, but =
not E3xx radios. I'm interested in adding this support for E320 (and submit=
 as a pull request).

Before I move ahead, is there any reason it's infeasible or unsuitable for =
the E3xx architecture? Since the B2xx models also use the AD9361 and alread=
y support this, my inclination is to copy similar logic for E3xx. Just want=
ed to make sure I'm not missing any hiccups that might explain why support =
was excluded for these radios.

Thanks,
David

--
David Raeman
Synoptic Engineering


--_000_PH1P110MB1665904EF23D3C169287D1CAB7C49PH1P110MB1665NAMP_
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
<p class=3D"MsoNormal">It looks like power calibration is supported by B200=
/X3xx/X410 radios, but not E3xx radios. I'm interested in adding this suppo=
rt for E320 (and submit as a pull request).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Before I move ahead, is there any reason it's infeas=
ible or unsuitable for the E3xx architecture? Since the B2xx models also us=
e the AD9361 and already support this, my inclination is to copy similar lo=
gic for E3xx. Just wanted to make
 sure I'm not missing any hiccups that might explain why support was exclud=
ed for these radios.<o:p></o:p></p>
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

--_000_PH1P110MB1665904EF23D3C169287D1CAB7C49PH1P110MB1665NAMP_--

--===============0538585140752912911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0538585140752912911==--
