Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA6051188C
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 15:54:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DC3A384C3C
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 09:54:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651067697; bh=Ss+C9QXO/DICt0Ukgcx7knV3ctxzNQkgZR42q89bAAs=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vnbZ1+ZPniyqZiS+RqLK/crT/Ypj86YrAHqNGg93WDJlYKI0o8/9tFNqFz5586rBa
	 Bwdi8Dlq8k/4baFimyMSOGeWbASIhmNEc7/B7BtaRfuqSfpuNveHAVxWQkG0tyzvPv
	 uRmV2eJIQF/IOTht18pSo7JqQ0O3d7WbpdH4P7U2M2vlCgpcenbbamW1WhV0Geha5w
	 8TpSJCNgRAtD+hPp2ZIhTIqIF0KQY4OIFL6iZVZvETPQ5+VqiXd08BMtkPGTcPLRfm
	 aNL4rQT68Y00bzDBWlebZQhNI+XnKXpIcH/f4u/yII9m1Hmf6IhSwH/6Atld5fAerd
	 zKVqz2wN6YxSA==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0079.outbound.protection.office365.us [23.103.209.79])
	by mm2.emwd.com (Postfix) with ESMTPS id A8B6B384703
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 09:53:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="JOAnC6SP";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=s4RrnnUWfKzShDPh8MMFGw+4tfofZ6KIIuyN8Sf5jW5t4rkGBCBi+NyCz3hF19rCmlJId/Yc1HNu0iTwQNmKeyX2kLZJsn7S4NXAalxY72VplIPazsoYelpfx/1qzVBcuSWrzFzn0Swoln4s9xxncRybKY/WWtY+MgI39FH3Ct1nt6duMZSsgVcGdnjRMaCPLT8ngHxJ+S7t1S9W0dbRiZz0WxsDdlqihIheIpcyTnwGHZmaM3FvWiIxflllRvzIy1w5cDwEuoBjJ/+N/fadSETjEOOBW9cP+wtGdNtc+iwYNOd+XrQpV0iXFTt6cRseezCqJPB8jkSkaHaOjxWHLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SxNc5btdk9r+VEYeppB/9zU7aV9qNKhsCe5OjRf9ZAg=;
 b=pGlQyAQixmACoh5JjEI0lWuvcv/Q4LzlhjEv3YtwtGAdPIVDVRiiJ4t7HV7ADf0bsBi6R+oSRfg/NDh8dBKnHwiDbnmxEHCnq/+bKX37adIMT+1VBLEMnkeByvo+ci0RnxUFvkb4qmnOcolByWBbphKR8sn5XRX/M18dwyNrgXJDnapOotDefbZRneo7AgTsDXi+LbPzJNzwndyx8y4QN0u6t/Mem84m2ss57DhGy1ga0EJLBvt1Ckg4l25i/7V6/sRf4p3pGA6CP1rz6GfniDa//U5QiOOVe7xDwSnpsbxXH686Rq5i09JydwayesvuKwP910XWy6lA4yjWRoESWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SxNc5btdk9r+VEYeppB/9zU7aV9qNKhsCe5OjRf9ZAg=;
 b=JOAnC6SP4+PWnjs0VMo4sBEZ1CD9LnxW4APZ1/CCCe8dmIWtdekscU0ke4dNuPnHNnlX3Ytpo4eyQTAVVjbiT1falT/1LkPnv9i2FtHMbGNpsNvu6oBZq2jlusr7VOfAAySolb3+P3/TCVgkj7v65yvcbEMq61HiYaROXbrbytmV9E4wf7TP6efDC9k4JeeivNfk62ZPPKU+v+EFMwDBYtT8vtRwli8pepFJ2zZjw6seR7s5J7BFiquLbDXgKW8Y8w9uq5Xx79dYpYy8ET1/9ZbRDM2A3qt1/Agl+cq6odqlVXwrEyvOqkPXQoft5Wlh2BnoHeHo1UGJbRM1wDougg==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1489.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Wed, 27 Apr
 2022 13:53:43 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::75f6:cf8e:ab07:b9ae]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::75f6:cf8e:ab07:b9ae%6]) with mapi id 15.20.5186.021; Wed, 27 Apr 2022
 13:53:43 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Programmatic determine rfnoc_chdr_clk from UHD?
Thread-Index: AdhZuCfXGH7vbomoQ768CqBzno+Cpw==
Date: Wed, 27 Apr 2022 13:53:42 +0000
Message-ID: 
 <PH1P110MB166525241D59E5FC42386591B7FA9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 71f210df-69a9-4a3a-44a9-08da2855576b
x-ms-traffictypediagnostic: PH1P110MB1489:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB1489DECC8C9EE7467A46DDE1B7FA9@PH1P110MB1489.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 4vIQ0OJcCqkLnX/LbliN8f08tz2Kaumwef2jktZMfEuG4CCZSgpIAe9uojr1wEnphJNUzODxErl/sRTf3h7O3HsW0wI6wHgpLKXCqX4sWIkhH836kNWpGSSl2d7dtvpoWsqa7nvTYQThCP4SMFSEaJf8xAWLPr9dAgN2+d1LY5wkMe78q/O0pRlevZejaaKYSpOF+QNOmwZibxoOlRhK32bkRWbbttXVxtMQsPUUARvbHzH9usZFuQrAlF5014JSZgOjT7XIws3Hv+6EF/yk7iOl3li6AvPCoYC9PCpLs6rgSONujth7l9qn33sHOOiNoD+QIL9USEgZwf7g6v+gieWdxdNb9iVH/oVcyLz8d8Xt54xcr7Jmy+wqupM+KwvX8KSM43NocJWn9HunaMhtWS9xtJrKg8ilErHS4UFytByDYoQMrBfxrjzseIwx0hpjEsygd8ahZq8kgCT9R2GpTb5Er1xN7kd85aC3pbaSXJkK+4FW3I8/SNrJtQhsHLvSnDF2rIIYS2QBBdMnao5vxjVzRYLOx+b68UK3cCINmGmnUqMlR1t+swMNbaSo9gzQ7+Vdg289oIJf+CcLwWTN0O0c/55V+dZSeFZJGXzXMe8gp0dMUE3pkwUSZU28WFptq1LW/Fbt5huAR8R0nua8P8IFYeDJKUw3KQ4IF787p/1O0VaEnBiR3wuL9rJMyPwpkBMZZhjIIErLXKI5exTtJ+2CjVaC9Zt6dUCIrZ22fVQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(136003)(376002)(39830400003)(366004)(396003)(346002)(33656002)(8676002)(64756008)(83380400001)(8936002)(76116006)(66446008)(86362001)(966005)(66476007)(66556008)(4744005)(66946007)(122000001)(166002)(52536014)(5660300002)(508600001)(6506007)(186003)(6916009)(316002)(71200400001)(9686003)(2906002)(38070700005)(55016003)(38100700002)(7696005)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 BrEK9YJFN4ccVJ/db6+yH1VzFFN8FKyxZEjxygocCmQa2HqpG6MBa3KqhOfHqtkLgmfxwBYr4STB1dtRCojAasOoKFlTpJ0N85wCZQDT6H1oCVCHRvU1YcuZZ2PbNLhjldRjtHyHnQGyyK0Il2Hi9Lhwq78EFCY7tnFvFhJ1CbkgsYBYVHg2Ak4PQUou5PFrgI7N0CWZu0Ns9u9dqx+Zgw8zhIXs/PYG/xIc27XU9YBdJkPOxge5OdKptE1PDGKCdZ6b57SmZsIOUkP1GQJHOFPKTIimV1uQJS64qq/64atjykj1wM3soDZ/+s+d/fAkk+JOM8U7XJOQU2UKxFcvSPTxaI6ByavOW1bwLV0mjFQlr2SnsT85iDSEhsxHJNGKQCB79y823jaHS42hFM1wzqzBqeDkZnI+mz4JHvGCXMNZbMySL70wF3O4r6eJ0XyIsdYN3vclHEJxJqRsQt4H6FL04Io/vNil8L6rhgYbWns=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 71f210df-69a9-4a3a-44a9-08da2855576b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2022 13:53:42.9699
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1489
Message-ID-Hash: SR2543SYD7KDYQMEGAJXHJZUQKMBVGZY
X-Message-ID-Hash: SR2543SYD7KDYQMEGAJXHJZUQKMBVGZY
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Programmatic determine rfnoc_chdr_clk from UHD?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AKOINO4ZB5YRSCH54DIE6R4TENNG6IIT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6698760174655519623=="

--===============6698760174655519623==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB166525241D59E5FC42386591B7FA9PH1P110MB1665NAMP_"

--_000_PH1P110MB166525241D59E5FC42386591B7FA9PH1P110MB1665NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Is it possible to programmatically determine the "rfnoc_chdr_clk" rate from=
 a UHD application? More specifically, I have a custom RFNoC block clocked =
from rfnoc_chdr_clk, and I'd like to programmatically determine its clock r=
ate from the associated custom software driver so I can convert tick rate t=
o physical units of time. I know it varies by radio model [1], and I'd like=
 the driver code to be portable across a few models.

I've poked around quite a bit in the docs and code, and I haven't found an =
obvious solution in UHD 4. I guess I could dump it into a register within m=
y RFNoC block, but I wanted to make sure I'm not missing something in the e=
xisting framework. Calling get_tick_rate() on the block control object just=
 returns 0.

Thanks!
David

[1] https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_are_the_cloc=
k_frequencies.3F


--_000_PH1P110MB166525241D59E5FC42386591B7FA9PH1P110MB1665NAMP_
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
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
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
<p class=3D"MsoNormal">Is it possible to programmatically determine the &qu=
ot;rfnoc_chdr_clk&quot; rate from a UHD application? More specifically, I h=
ave a custom RFNoC block clocked from rfnoc_chdr_clk, and I&#8217;d like to=
 programmatically determine its clock rate from the
 associated custom software driver so I can convert tick rate to physical u=
nits of time. I know it varies by radio model [1], and I&#8217;d like the d=
river code to be portable across a few models.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve poked around quite a bit in the docs and =
code, and I haven&#8217;t found an obvious solution in UHD 4. I guess I cou=
ld dump it into a register within my RFNoC block, but I wanted to make sure=
 I&#8217;m not missing something in the existing framework.
 Calling get_tick_rate() on the block control object just returns 0.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal">David<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[1] <a href=3D"https://kb.ettus.com/RFNoC_Frequently=
_Asked_Questions#What_are_the_clock_frequencies.3F">
https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_are_the_clock_fr=
equencies.3F</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH1P110MB166525241D59E5FC42386591B7FA9PH1P110MB1665NAMP_--

--===============6698760174655519623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6698760174655519623==--
