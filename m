Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A356C51D6EA
	for <lists+usrp-users@lfdr.de>; Fri,  6 May 2022 13:43:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67179384829
	for <lists+usrp-users@lfdr.de>; Fri,  6 May 2022 07:43:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651837389; bh=Ch4RHqZ5MAbt2cvFyJp9PEg8j+qsuxg4gqvqG/0FzQU=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=vz/x9i4CVOz8tuNYyNwyTwXfNycL4PEK7eucnw0/wKcqeOqwY5hROtiUMEzCE2WPl
	 yCmLzPLTWN7edxUyyVQanNYAA0eYQWzOiMG+v+PUm4hEg4iVgcj07/3QyfAjC/010F
	 y70D0/PGNJ44jxCH7FNULWVOsXJZc/nbuGkguvAcnK/pCn2cMEr5k3Fs+SS7UrZown
	 lEo2l11gCUNXWJf0FObvfGQbqlmQLiCEnVnOgZpjHSZijBOlSTi8RFa60NdvV42Y5Y
	 fLHyygvtA9NYLtJaxYP6eoq34wkGkSMQTXbajQueEAqq7JtruUB8M4QqBDEvF4NqNo
	 5G2Wb5hZ/8UmA==
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2092.outbound.protection.outlook.com [40.107.104.92])
	by mm2.emwd.com (Postfix) with ESMTPS id 7EEE0384828
	for <usrp-users@lists.ettus.com>; Fri,  6 May 2022 07:42:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="OFlvKlFX";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U7ylLvJ1awPvBzMJShhFLDUzGsqXr/pYA96hctEf1DZmt6gtJrw3CcLpSqKze63t6Ob0VikILg/NYD0vBNCbkBZMACS2uf72Q9TdpXz0/gXxC7iKQzUE3av2EkHjQCyTVdtxzxU1x3zyGG3wfSPO7u23gxE4BkPqpmutiHnKPgJKxRfXbISkES9kJ5csXK6d4T/y3Y8X8YhHeOeLd5cZVNRUxb/yQOk6NKsCuEM6+Hfs7ERS5FmvifhEpy2CP/QbFxQOCEmgbUyXW7bN8EU7hhH6fSlGLqW1eMMW/Yhl3YhBQyxbYF9ElWAHRAPoorRErAXCAn3Ua045anzAi7siDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ySKS0WoPrdOf94kPoj6Gwq0XA2Aze+mKqimHLZoxyA=;
 b=ivfoDy+8be0y3CYbWx/6DMoCL1+/XzYKovmpy+qnUWFMgpyvgjo0IJ9GJyAvNSnsKoswLQFQOSRw6w0+ZXv5jyZojUOV7JMEirhJ5wDoVkWy+z9r2I43WC7X0EW3AWaWH1t7BAh/yce79P3O1l3ALZqQV0TKDPgu4+oMZhndwC9ED8jzT1R/xVLyLrbV2mBPlUO2/AoClxTEeAzY+JTj+oXae8qzv1kdxJlGnbZxvxvgQNgwWGwsyP8fFr9E04BIbFdyJBTTpmt/3Uide3ky7ClZPEl4Y1bQaQgMGLOPINxd/vzeh8+nrih01Swqj7yWU0vU8w6FLW8nPBQxgA6isA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ySKS0WoPrdOf94kPoj6Gwq0XA2Aze+mKqimHLZoxyA=;
 b=OFlvKlFXPJsDdFTINTIGxjKUP4l33iRxqJHZRp5tL3YF+SFd0Lw6RhsWJqUoaxWmAU4dQ1juLNV+fUQ17e+JcXNSMY6oSMLcSwzWbKtTCmNElKZwgtCcaveM502qnx0O2ElbJgMvUzFgGe2PYCp6Wd1FpT0vz3tt2LkfofX2e8w=
Received: from DU0P190MB2026.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:3b5::16)
 by PAXP190MB1583.EURP190.PROD.OUTLOOK.COM (2603:10a6:102:1bc::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.18; Fri, 6 May
 2022 11:42:04 +0000
Received: from DU0P190MB2026.EURP190.PROD.OUTLOOK.COM
 ([fe80::b132:ee16:5e1:f02c]) by DU0P190MB2026.EURP190.PROD.OUTLOOK.COM
 ([fe80::b132:ee16:5e1:f02c%7]) with mapi id 15.20.5186.028; Fri, 6 May 2022
 11:42:03 +0000
To: "  usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP X310 with GPSDO : clock source parameter
Thread-Index: AQHYYS1qtsJsGZNqI0eblaoHJICwHA==
Date: Fri, 6 May 2022 11:42:03 +0000
Message-ID: 
 <DU0P190MB2026B4775C1C68097F2928BD94C59@DU0P190MB2026.EURP190.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-BE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d124e4f-61b8-4934-8cc0-08da2f5570e8
x-ms-traffictypediagnostic: PAXP190MB1583:EE_
x-microsoft-antispam-prvs: 
 <PAXP190MB1583AD8EFDFB18460B2F769F94C59@PAXP190MB1583.EURP190.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kHcIhhXQareHTkFez8knOWRvYOzLTdHMlAgeeTxCDap6co4X0jnVyqdB0VWKMOXMZ8HLlDJqQq+7NfAJ/lkDHxQ7OZChHgJtSZoT/LpJYOqq08H77n5wgKfOaqye6Sr7UzJVbYp+y+QjA82W2I8611gDZaSiDS/2ftlUjIcGvuB9gxjtOg+BJDNEuOEGzYRlr+SCcCN5cf/jVFtqK6XexmuvdZiA4V8ELYazgizFMbWs3Qb8YvQk/NsBa6cvf26p6TqgELj6+ipR0x3XOag9OiLwTnapiyrN7E/rdYQGsQY6bSOnI3AAp9+4XguBaoC23xEOka0+MBOCdTsIHVa5DNPTiojlAwWyv2skZ7FqynhUb9Ez8634UxCllwQb/SoMDrcDKeCvxzLBYuODdffyLTrqMdigWKOkwrA+kEOtFAhWM+GCsf0fxJaozRSdHGY5CuuswPHUMqq7lP/Jheliknyzv2ql5IzWR0wc13Ej35rEIRB9GMHz26OOAQaeBT4GN2gOpYLHxybXJsJZhpOojwb242dtCi2hgSu/QFW/nugPm1btjtzyQhK023DZqx9isPI6QxyxpMHjFiLKrspKDw07cptpypuqzfeNxulo0/rvC7STedZEjcp/h5Qf5NjfXBHA+egjoKS20mJIMcYaxi4uge1ZOscCzYk1QED9AMrVsOWRPJ6eWwgT4+GJhWx306pa8tmT2g/lq+EHA1nXKQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0P190MB2026.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(71200400001)(316002)(508600001)(786003)(6916009)(55016003)(83380400001)(5660300002)(91956017)(66446008)(76116006)(66946007)(66556008)(66476007)(64756008)(52536014)(8936002)(2906002)(8676002)(4744005)(33656002)(6506007)(9686003)(7696005)(26005)(186003)(38100700002)(86362001)(38070700005)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?HvXBqfCI3znA+GCaaWLRxfaRRFbOQEIYTicyEjOzrCArcOi/fSHd4mr1?=
 =?Windows-1252?Q?YYQZoTRpOziXn8qnCcQse2UD7MRJzfIMZGG/ttvhN8EgO0FnEdv5h2JZ?=
 =?Windows-1252?Q?AUwJDgLlnm6S0TaAcL9PgntbTUsAfYhzrBHJnaK/C0fVGe8TaCUaz9nw?=
 =?Windows-1252?Q?1uXy5SU2Oam82Te0fldpOMnhSQuB0prlBNmP1D2ZRp0RTAiBP+kJ6R0I?=
 =?Windows-1252?Q?opG0L9NZBI1uEOBFKfU9bF7lhxiq74mJTxMz0c8GxO8CFuMj85OVb1qm?=
 =?Windows-1252?Q?U1bhME2akxMlNheLarA5MZN/a0K5YWF+4LCmhPDHPDd4tyb4fzKjnayN?=
 =?Windows-1252?Q?VkcBvm5LtZjG3jXyrJpeNbfq7MOUgJK8MWK3uwF9iBUYmqJeKFgwkt8K?=
 =?Windows-1252?Q?1e6Q3pCVIF9o6RTQveL3WY1uYOfrUicCciTDFIRdjOnyJYJ/+KoWO/jw?=
 =?Windows-1252?Q?fcAHmgd0FkVBoXFnyXNwvyKD3Tu4El49TnnCFCoxLI0Oaum5UfXpLuK2?=
 =?Windows-1252?Q?I9JyaeCu0JBC33jSrz61r0SfW8d5IXnE9JhcLsBQD182HVEpUXv/Ofru?=
 =?Windows-1252?Q?VfUlD4GBx+2uSs4PgcQNtkUGb9dhiQo7irr0sYgFRtx+2YYOQVqoJFwy?=
 =?Windows-1252?Q?bGA1zm+hSGN3pUpFSsACe5hi0JiWkBMOGhF83a5gNgP7H9yHjbXsezSw?=
 =?Windows-1252?Q?qdY6JbbrfV/t7LkwyoIVGUnHNr8A2LzyyTvhKGT9jQhCR6WDAthgLcsg?=
 =?Windows-1252?Q?hNvtI/RCbixtIHSv7RuLA83aEUSVoMw5T7YJdJckOrAfHatNfJuKlrgV?=
 =?Windows-1252?Q?axu9zsX2oXlSc8Gda/UQevBR+P4Wk+lAJInhIt2BF0ay5lEJ3Wqqbw/b?=
 =?Windows-1252?Q?a4qXwD0fBH1qsjpL1gc1ivju5CKLfXILAJtE3k/eILcc7vIOT4ZQltlv?=
 =?Windows-1252?Q?HyJIwnE86ifk7Mv8EH1agiv2D/T/hDlwnXfnvdS3ivRW+GJWDiqEnFs5?=
 =?Windows-1252?Q?rivlMFKrS4pDN6MnXtNDTr+HR2tNitZqdqbfnA81RYo1Wio7jQtth5Tq?=
 =?Windows-1252?Q?wzHF3VfMv6pSNqo/qZJrJGwfnz/QLhPETaMtvvChuyciylE+LO1TYW3Y?=
 =?Windows-1252?Q?okxvYkOiUjWQE72UQSat3HDC5i1zBjtvs6w1eFe0cj6H3dijorgwX0FD?=
 =?Windows-1252?Q?JFJTlZqgMd1xhKoydhPeQc10gtJ+qDep5wPYl87vnge5H3W6ln8Qo2Tv?=
 =?Windows-1252?Q?bgwUObZoIT6sRjHQDZFeUiIgrrBNWPKaLYtYoeRybG/Vq8NF0+Qgz0bG?=
 =?Windows-1252?Q?b7Xzv1G2S0NycggEs9JVgfnlNKvMs2M17g7OjXc7eMqro5nlPBV6d6Jx?=
 =?Windows-1252?Q?mCvmLvXRfMOTjTpy7kvl2W1r8ehKkvLjV1iSM1r1RFbRjFZNLNLFMKfL?=
 =?Windows-1252?Q?dtoWcYK1KhihqLVVdwx7qciluk7StyVXSkU3dtKuP5vlnjP1vMFP/fOP?=
 =?Windows-1252?Q?1iHcVSCID+DSljExWzHoT4J1Jy+wtRP5WYqcg9+0kCogg3G5msg22+DZ?=
 =?Windows-1252?Q?9i4U6lTBGM28IP49Rh7wEDuhvJDp+rvNIty4vzCTaeWEeo/EP5405kND?=
 =?Windows-1252?Q?/VgH2Mo+Pp4FimnTbhlIequyWpvndZfTAAs/np/zSkgp2NMPyjclE637?=
 =?Windows-1252?Q?WdqSekqRMEg3cn9ra8zD212PqLu2IXssOjLnwaqMd2vsiXPW07Ws4D2d?=
 =?Windows-1252?Q?6C9GYP1aXUPhw86T9sxnRQgBblaaejbsCLExgNoyFIF3JtenQRSzW166?=
 =?Windows-1252?Q?zFYK0jk0U+kJWPV+h/FN5Gvv1Fo0H8s7XN6u3GFYrLBJVsCSE93zBLRW?=
 =?Windows-1252?Q?CxUIbt/2zriQ+xkqtf1633honF+HTKkIINk=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0P190MB2026.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d124e4f-61b8-4934-8cc0-08da2f5570e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2022 11:42:03.9048
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1+i9KnwZwWXQph+izcTlJSEiWMt1Ds/vV5R7siVRq/DXgRxYQzetCquVDZunuUgSiQhQ9UGYP5ejz0TADVEVKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXP190MB1583
Message-ID-Hash: RYSP56I54DRYKAZCDSMIDT63L5OKRZOK
X-Message-ID-Hash: RYSP56I54DRYKAZCDSMIDT63L5OKRZOK
X-MailFrom: amelia.struyf@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X310 with GPSDO : clock source parameter
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TDN2NT5LUQUAQVZ4TZ5KDDI3WXUDBVKC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Struyf_Am=C3=A9lia_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?Windows-1252?Q?Struyf_Am=E9lia?= <amelia.struyf@ulb.be>
Content-Type: multipart/mixed; boundary="===============4724309754330500921=="

--===============4724309754330500921==
Content-Language: fr-BE
Content-Type: multipart/alternative;
	boundary="_000_DU0P190MB2026B4775C1C68097F2928BD94C59DU0P190MB2026EURP_"

--_000_DU0P190MB2026B4775C1C68097F2928BD94C59DU0P190MB2026EURP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Dear all,

I=92m using USRPs X310 with integrated GPSDO. My goal is to compare the qua=
lity of different types of local oscillators but I=92m confused with the cl=
ock reference source parameter.

When the clock reference source is specified as =93internal=93 will my refe=
rence be the internal TCXO or the GPSDO? Similarly, when the clock source i=
s specified as =93external=93 which of these two clocks will be the referen=
ce?

Thank you for your answer,
Am=E9lia

--_000_DU0P190MB2026B4775C1C68097F2928BD94C59DU0P190MB2026EURP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"FR-BE" style=3D"word-wrap:break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear all, </p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I=92m using USRPs X310 with integrated GPSDO. My goa=
l is to compare the quality of different types of local oscillators but I=
=92m confused with the clock reference source parameter.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When the clock reference source is specified as <spa=
n style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:b=
lack;background:#F9F9F9">
=93</span>internal<span style=3D"font-size:9.5pt;font-family:&quot;Arial&qu=
ot;,sans-serif;color:black;background:#F9F9F9">=93</span> will my reference=
 be the internal TCXO or the GPSDO? Similarly, when the clock source is spe=
cified as
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black;background:#F9F9F9">
=93</span>external<span style=3D"font-size:9.5pt;font-family:&quot;Arial&qu=
ot;,sans-serif;color:black;background:#F9F9F9">=93</span> which of these tw=
o clocks will be the reference?
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for your answer,</p>
<p class=3D"MsoNormal">Am=E9lia</p>
</div>
</body>
</html>

--_000_DU0P190MB2026B4775C1C68097F2928BD94C59DU0P190MB2026EURP_--

--===============4724309754330500921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4724309754330500921==--
