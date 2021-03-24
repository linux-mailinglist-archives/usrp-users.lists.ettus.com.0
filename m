Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D8E347D8D
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 17:21:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F59B383B8A
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 12:21:26 -0400 (EDT)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2088.outbound.protection.outlook.com [40.107.93.88])
	by mm2.emwd.com (Postfix) with ESMTPS id A8AD7383822
	for <USRP-users@lists.ettus.com>; Wed, 24 Mar 2021 12:20:32 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CTdpca3I8vGKNcG4cK1/pbzQ/ZN4Bw5cUxQAOjfdjLbdYhCSC9ihDN6tDKjQ7s1p5ycqYj20t2EstOt/aTgPE7+Ubak7E3rBNM5XhHRmLSRvd+Btyz5LvBNa0n6Rf/YVuepaxBPMWAxUH++jl3buQo9/FwJDM+L4a5qmg9hbntSFQR/74ENi5KaCcHNI8H+1mZeWtIv74/+1g2QKFCRwZO8zac+RXmByQ6nT+HPQJxMw1IncDBcntxrSUE22fgDpRTdRkLP33AaUhfdX/aaZN8xzWWFnCFYz6ry9l3FQaUKbDE2V6OHMPpS7CAzhEpuSEAZlqF0Y3fQlQQHSXdaOfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zDizxh4RG2wwQkbouS6JVMlIYGMsw58OROZ9HnqiHbc=;
 b=fFYmfCbczEVaIAtuAJxhVTPnSzxfebG07wGIppDcGpeFGLLlKtFsdqgmpl92SSGKEPhYTFuzWqiJadlGjU02rQVs+N++uQYON1jxtFXrv3VafhedySIpaDAZxX1EYZJACBg4nCVUWVMlomJ8BQmKkz3hdlorOd44IY/IMeDlGgYpN7K830J2vFzHeuX+EiQgWWaBzfIDbZwvV/KFg3iNb6oljrkdaviDqb9oO/rSTuoFbe3SCYJWawrm9zU3//dK6t1WqI1nauHdleNGGgOiavFsaqMyOgKJZ8k3y/xLPUu1GrpY10YPfZ2YXwFEFqP+3WrFSSZz4cbHFwAAqpCnBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zDizxh4RG2wwQkbouS6JVMlIYGMsw58OROZ9HnqiHbc=;
 b=HQdLtV4sQvekb7oWWgGnLaqtp73httkpDnImqv+JDBJzYbs8cTWDC4jjO7+2NCUMzNZGkkR2ihG2j0GBB2TPTK0Uynk3vn0A5cVYU19mpmWTPPYlMhKuqUAi1C1ly3JNeExEnZoakQm6KGXHtOXk8lwFVRdPZ4CYJ51+R2poH0U=
Received: from CO6PR19MB4801.namprd19.prod.outlook.com (2603:10b6:5:341::23)
 by MW2PR1901MB2057.namprd19.prod.outlook.com (2603:10b6:302:e::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.23; Wed, 24 Mar
 2021 16:20:30 +0000
Received: from CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::4c0c:538a:a172:921a]) by CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::4c0c:538a:a172:921a%3]) with mapi id 15.20.3977.028; Wed, 24 Mar 2021
 16:20:29 +0000
From: Jerrid Plymale <jerrid.plymale@canyon-us.com>
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: Strong noise added to signal transmitted by X310 with a UBX 40
 daughterboard
Thread-Index: AdcgyJLsD55rgs8HR2mww9MLp3UBHw==
Date: Wed, 24 Mar 2021 16:20:29 +0000
Message-ID: 
 <CO6PR19MB480129D90FEE1BBDDE609C7BC6639@CO6PR19MB4801.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d56869ff-f5a4-4561-0c10-08d8eee0bdc2
x-ms-traffictypediagnostic: MW2PR1901MB2057:
x-microsoft-antispam-prvs: 
 <MW2PR1901MB205727E118EF183E2E61E7BFC6639@MW2PR1901MB2057.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 +XluVe6Q77pts35f6x8iXLP4uFGFPNtCn4xCqQXNMlDTDGiS4JeSnXNB0xW4ME9CCl2DtWZHYEqbBhBVIS+zrK+ctw3qiW2rEBwKkiSNEOakdLCPupbk7E2vqGuzEsDdUzD4Tg8kWNXOborsjSKjHqAYFYfLYish3QD7PSv4Myo722JnMDCUQnsNr6J4MXzdfvUzewCW86+AJeB6175i44c5SDtNCUgndKMXMaBqOj3Leye2G5gP6wYdgvkz+GLWecmjJKX+0PcSoTjI2E+yOXuYH7o0lW2OdCTapceTLzZSswb8p6jqdjIUFMO7xCcwhHQcU4hzvTwto/bxUMgWufDR7PRXKCLASWfmKwtJSc3xpIPuFOMRWr9IYkUEYhe34LT/zQ18YmTqp8gwpmK+3aknbxCJgsLcTGYZFKQtKyP+ILNUi98GEFmvb15LZhNppW/Q045Cl1zwpvCoxbg5/uJFH8OzYZDeJqueqLOWsa0Or9Aylslc2A9Kqs/LLbB3SkFwxLOsYWfzNOUdvnt8M7vo0NXbHS74Wr6VhAhGGc7aWdg1tLppXSFV4e6aPQwpeY4hruA4F56dw4DOmDS0K4vq0jUPLAkwuvu7+vmk1sPGKGieFOJz7ypKll1ei2x8wcXywM8zcUG2Ed/9tnVwaFbwP396Z1PIMf6+rtWQiww=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR19MB4801.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(366004)(136003)(376002)(39830400003)(83380400001)(44832011)(478600001)(52536014)(86362001)(4744005)(33656002)(9326002)(71200400001)(186003)(316002)(66476007)(8936002)(66556008)(9686003)(8676002)(7696005)(66946007)(64756008)(55016002)(38100700001)(2906002)(6506007)(26005)(6916009)(5660300002)(66446008)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?1e5CHBBn2pXLKtmjkJR3Rk9l/XoUq5GWMR4ebUU3Y7ju2WamPWCM6tXLcSJ3?=
 =?us-ascii?Q?7W0aJ5FJndnx8itMNDHEjV+q/W4iXN25dPmNQ+Hhg0UMTWO15B5OIywykgHd?=
 =?us-ascii?Q?SgM1g3rT81p0ghjaEXpBrKRtj2cAmIqjfJyEllLZfq7rWSao/Se+ubiqnmZ1?=
 =?us-ascii?Q?3HTfXvCd74GvJpJYCR32EhrR7cxd3Ww37doFX9vYiy6G5hegBbM0do62u+9U?=
 =?us-ascii?Q?wpV6O95BkbVk2pvoGq0Mc7+5uJ7PJ7Qye+33UlSCjtFWMFagVj5G7qvhcR4K?=
 =?us-ascii?Q?aZZiGs3nCD3okaqynorE/Qg2Q7am2oBmiBtiO/R4jQcdyWYSbGWd4fB1oFUu?=
 =?us-ascii?Q?Q7GfJD3blR3vDdPrAT8oTznHA1J7RTdSqtRHHrG5b8ebMDRjJ22bS6YxzEQF?=
 =?us-ascii?Q?NwlVLjH0K9IqV0A6vic2Ht6jTFJQlgdwNXewQFE06MQ2nCXukhxmDYvbZ3BK?=
 =?us-ascii?Q?lujXdiCAAHPQ3pYpCxEcDZi0HiPz1I1hP+Uc6G85N+JKr8rPC1OUXpeUHB1X?=
 =?us-ascii?Q?LzxLFZ5paW+Ecbm5LQ84YCu/mJGeKHvzsOorCwxakEDJ1jhHGaGeoNtnDV9K?=
 =?us-ascii?Q?iriJNmI3TrcffrwOkwznyfoh6ztIQ+BXZEeYUBECeAPuaqQms3TGU98hF2/1?=
 =?us-ascii?Q?tWLlSFvnIGtKxMDsHRJqkQzAS1gx3knxev3khjdv/ZpI8maJYDn+eHIsxDs1?=
 =?us-ascii?Q?clJ+EGFUJu2qBs6zEHA2cfNKmraRP1M7DzelzXhadMEGD9NspRxVNOfst0vb?=
 =?us-ascii?Q?YrrUseyyxyRMhQu+FoCE2OOif0k/Hcxk084EL3BIexv5Mw8W5aGxnI9t6YpT?=
 =?us-ascii?Q?xXFSdxGcZBK0wCXpOwcD1dOmDG3EFgcdf5IFdZpBJyPn1/lM0+INasHJ85/1?=
 =?us-ascii?Q?ieP3GzXjp+dat2Rrq9tmTVWhNs1nBIQLcKdVwEDeW1JNprcdb6GjTOepJINg?=
 =?us-ascii?Q?G6HwTJMiUTQZh81RTijiWo8qc20vzwSNr4xQgDq54v8VCRF/lkaNgbkjPmkr?=
 =?us-ascii?Q?rFQMrJFXQCQ3zwqY1+obEakGU35QSWmcOAaQQN2kUw+TrJWuXE7BsOMH0gsQ?=
 =?us-ascii?Q?XYd/zDVyn8HJ4KPgUcST3vElBZEKWIxuNHK0PvLF6PvXGS4Bgt08X5RpApNo?=
 =?us-ascii?Q?CKwe53M55dxKYJmJSKaHIxWnuzPxxCNSAYeRo+Dkw4bO/ZMWfKOs9P+oSKDo?=
 =?us-ascii?Q?T1GQC9pg9aCrlXNAWHoeMBbeGm7ua7Zn4rf2nfzqaQURJ35YJBNzaFiX0Fbx?=
 =?us-ascii?Q?vNQmkJ3HQ/CYeYAz+knSVwe/WQ1zDsGUPHimx4SGP4069vLOyEJn7+QOxiow?=
 =?us-ascii?Q?ipz1j9CJVA+dqQ1Rw5SoB2XB?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR19MB4801.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d56869ff-f5a4-4561-0c10-08d8eee0bdc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2021 16:20:29.4809
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zUIun32Byk37dcVZTqvXElJQLM25u5J9lzdZPU3zrLvGjvIGfE6yZSLpfN5UxU257SilTRnuGrcOPLi546LF12ZLmjciA4VY+5J1j+KM088=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1901MB2057
Message-ID-Hash: DFEPMTTQQG6JKGHGDTPMP7TIW3RGBM45
X-Message-ID-Hash: DFEPMTTQQG6JKGHGDTPMP7TIW3RGBM45
X-MailFrom: jerrid.plymale@canyon-us.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Strong noise added to signal transmitted by X310 with a UBX 40 daughterboard
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VOOP7J46SEYDKCUZP4PNHPAJ23I2JIKC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0432619986071009060=="

--===============0432619986071009060==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR19MB480129D90FEE1BBDDE609C7BC6639CO6PR19MB4801namp_"

--_000_CO6PR19MB480129D90FEE1BBDDE609C7BC6639CO6PR19MB4801namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

I have been running tests in which I am transmitting a signal from one USRP=
 X310 that's using a UBX 40 daughterboard, and that signal is being receive=
d by another USRP X310 using a UBX 40 daughterboard. I have noticed that wh=
en I have the receiving USRP running with the Gnuradio flowgraph active, as=
 soon as I start the transmitting USRP's Gnuradio flowgraph, there is a jum=
p in the noise floor as it is seen by the receiving USRP, and its roughly a=
 14 dB increase. This occurs even if I have the signal being transmitted mu=
ted. Does anyone have any idea what the source of this added noise could be=
? It is something that I need to mitigate as much as possible for the tests=
 I am running using these USRPs. Any feedback will be greatly appreciated, =
thanks!

Best Regards,

Jerrid

--_000_CO6PR19MB480129D90FEE1BBDDE609C7BC6639CO6PR19MB4801namp_
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
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have been running tests in which I am transmitting=
 a signal from one USRP X310 that&#8217;s using a UBX 40 daughterboard, and=
 that signal is being received by another USRP X310 using a UBX 40 daughter=
board. I have noticed that when I have the
 receiving USRP running with the Gnuradio flowgraph active, as soon as I st=
art the transmitting USRP&#8217;s Gnuradio flowgraph, there is a jump in th=
e noise floor as it is seen by the receiving USRP, and its roughly a 14 dB =
increase. This occurs even if I have the
 signal being transmitted muted. Does anyone have any idea what the source =
of this added noise could be? It is something that I need to mitigate as mu=
ch as possible for the tests I am running using these USRPs. Any feedback w=
ill be greatly appreciated, thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
</div>
</body>
</html>

--_000_CO6PR19MB480129D90FEE1BBDDE609C7BC6639CO6PR19MB4801namp_--

--===============0432619986071009060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0432619986071009060==--
