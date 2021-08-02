Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7B03DE32C
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 01:41:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 129E63846C2
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 19:41:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=canyonconsulting.onmicrosoft.com header.i=@canyonconsulting.onmicrosoft.com header.b="GSLXsBPi";
	dkim-atps=neutral
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2048.outbound.protection.outlook.com [40.107.243.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 0EF2D384220
	for <USRP-users@lists.ettus.com>; Mon,  2 Aug 2021 19:40:41 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RER71ZKPHSaRbC2z6NQEYQHxaEI9VPW8Zj5EzaWShLknH/Xwry1P67a6AkePUolCJ+Z51yff1o5r+iSKtbYB3JzP2AcSI8J9DgKNwEw1Y/mSwQhNytfEuScbUqgvDXP3vGCOTD/4niWWvWlYOOZpLnaLgQkQ2XrDXyxjY8druDcvBSQSlyanDCabe3qpxtrQ8FUV2WSCeAN3JjdVZP7WxNRVjEVATHzaG3ZNevvgsFBAF4cf0iN1UWPmjvV8XzbR2cYxS+Q1VELrlx1/89gUVmBeqRS7UZ5Nwbuh8/djyySYaLOKWRkYVmB0pPZ2xbWvAlMkKoLisTO7qS1vQsADgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ticT1jJOxBj1xNUXZKi0OwfDDiJSf6FDPkWfQWXLIkM=;
 b=IXf76Y4XdQv5eIIbHXqZOz7oJkPv6wzKbw94/14QotlMknorLBIP/6ueoo8Ms4jO5xHOmFqvlHHc/lG+7Yb+NftBEwOGgP4Doz4qDYSfTQSBo0kkLGMCgpQKE1uILBp8Xak79TtCfEkFcBH7daczD+whP79Ofa5PItkfFwuLZTPTadNVVcN/yYhhHUOQPTkiMZGaYdo/N92O7xqvpYA+dsprjRPKBc7+4Cfs1awlBbSQZ7LhoVFaMWJOWjS6FlXluvD+z3A1z7gJ0ovQAei/RsHV5VuMPDWPMysHeLd2FMKcjTdD11OLX3ytEWc5WiObmRapDMXoKsJW+bNgORvvSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ticT1jJOxBj1xNUXZKi0OwfDDiJSf6FDPkWfQWXLIkM=;
 b=GSLXsBPiPK+k8QWd8QoJeueBelV+szlDhJ8bPQhhtazdpQdYz4ueywtAG8TRrHECbmeyKEm7LyKxeMi1Ke4Qa39iEgd3SbUvrEc9gc30Qz14WB3T5rBDTZATXjbo8Y+quHDuIfRR+d0ZgNni779qMW0W7TLAOSZG5U8PGXhy2UU=
Received: from CO6PR19MB4801.namprd19.prod.outlook.com (2603:10b6:5:341::23)
 by MWHPR19MB0943.namprd19.prod.outlook.com (2603:10b6:300:a4::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.25; Mon, 2 Aug
 2021 23:40:39 +0000
Received: from CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::e937:6f45:7891:cdd0]) by CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::e937:6f45:7891:cdd0%2]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 23:40:39 +0000
From: Jerrid Plymale <jerrid.plymale@canyon-us.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: Re: Setting the TX SPP to reduce underruns 
Thread-Index: AdeH975uNiqFdJ1iRaaboeD4hQUv9g==
Date: Mon, 2 Aug 2021 23:40:38 +0000
Message-ID: 
 <CO6PR19MB48015606D1B15436822D285FC6EF9@CO6PR19MB4801.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac3fdcbd-8861-461f-0a0a-08d9560eef27
x-ms-traffictypediagnostic: MWHPR19MB0943:
x-microsoft-antispam-prvs: 
 <MWHPR19MB09435A363D934AD222D18BC5C6EF9@MWHPR19MB0943.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 qjRFy/dkgixqSgvnAePNObUGkOqMWA/4jz6AmmAytf7HqAhI5FIKsh1+vWh1EaZMRm7VwS+F+s4K2bRPbA3qzK5DRoi3EuQapXoEbs8GVOVP5sZax1TWOIfa+bUlC24+kSrKzGXKSGKrfKYz4voc6LX9m4TE63YyA8zJrazDqKOdVY5ocKJ0fVNMZi2ReMjgYjrIr4p7LuYPk3Pi9RWysBiMDZOqAA2nfv+qpAvzAu9Ck4Q3ryqjwu9klXB0+KvKnJwr/5SQ+nABQiWA5n7uJkytKCRxbE4qFPR1gi4kUrzKIDhDyVx7UYEnVX+oovexXNcb273pnvu897K5mgpkwZdxV7+krS3QCii8knEvo1vmlVJfPLih4c7EfWrDh0AUNB3dOuao6qr463VYtyGxKBMbwBmBBAdbD5QdQVzI8Lu4WXLOC3LKWLTwhmtQmMDaEpvzkuGFOWGzPZvFS6lNexKDRJuguaxXHPo4XbpCm1b3RbD5RpBJQq1TLRcaUROqU2BG/KD/avPYmA4mJXHhj7qRH7hY0AhG8Bqwf5hJBAwOscR1N+ISUrgRV04DpP0uf6Nq01QPdrpNnmIDm/223/9DXsdvMGw1UvWwA/JATGMh/79RRxfYc1CTP+dL4UM7GmT7ukMblXtBBg9yKe6o87GGML0vPwRpLEXdlyuRL8iCiUujYO8f75mKbOZguYRqAEsE1NtROhn3/NW9gHRlxw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR19MB4801.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39830400003)(366004)(376002)(136003)(38100700002)(2906002)(7696005)(44832011)(122000001)(71200400001)(66946007)(38070700005)(6916009)(76116006)(9326002)(316002)(66556008)(66446008)(8676002)(64756008)(66476007)(8936002)(52536014)(5660300002)(33656002)(6506007)(26005)(4743002)(478600001)(83380400001)(86362001)(9686003)(55016002)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?UPtvefmQ0GVY3FQtoWSJ0WWiTkUGeTW8c7gb4hbWhGA7DNHm5Tvh+OpTBiZN?=
 =?us-ascii?Q?KlzoD1NqDv7tVENKWjlYLHQGbAGKY/RLxhBHHUFcNwiVpDS6pfgG/lpjRKss?=
 =?us-ascii?Q?p3Wq3cH+ApvdrruyGKMnQL/Xe6cPBqNwKLPxNf/0IkaxltYo/aKm+bv0vpqd?=
 =?us-ascii?Q?V4w55zPkWelqOXKyhXJyDWhjGkCufbAP8+dX6cavvXllKuzVXvvlVfGWXo8O?=
 =?us-ascii?Q?7dGJUpScR8k89LWSqVL1KpLGmDWRfj7Ljfp5K8zkFbw4fML5Ao7nXBAn1JNw?=
 =?us-ascii?Q?+kFH0/al87v4ci/bICZ7maxzGIUu8+TxBTheclP68t0WjfcpNeJxBB2Lohem?=
 =?us-ascii?Q?BFraA5XN7arpPH0r1QBs4Jg0lJK7FEkzSbzyhYYRjnS7Zv7FeRt8bPx33TbC?=
 =?us-ascii?Q?60vt9H/5qGanLn0+KkT8huNgn5gjxuHKkQ8srlcykCQOgkCvYsqk5eqBeSBk?=
 =?us-ascii?Q?zQg30lRpOItpNaTApsD9+/k7NRFL61QTzdVIon2ot40HiV8tfLFHdVtWZImH?=
 =?us-ascii?Q?acBuJCq3cUsoZ082LMj5JQuls6oKryhHLO2kDfWjN/1JHa5+vl4HOO63e0ff?=
 =?us-ascii?Q?KQ7GeDsIqYZdX/km2ZBn1+zrVGwMPJDKeZ68MtCVh0dDMQU44Vf3WFNmG6na?=
 =?us-ascii?Q?CwOJM1glIPpD16v8jGyiphwPAGj5RDQiV/SOb2kPylimz4Yp6OJChtJipO7K?=
 =?us-ascii?Q?9EkVxzb1f2r91Pic2j5ZsX/XG0fz3FXv+Rg3K8YKvmXpuRmuquUOlFWulUOf?=
 =?us-ascii?Q?ji4WqciZbZij9gZnCrw+ZwXEwHd1g6VlFOmUKXb6znaqqD3kSYCSfbdjxI2P?=
 =?us-ascii?Q?PvKH8O2rNnVfzPw2mTx99Tptn87Qhws/pKC4rN8Wrr0eDobhD5YYwg5Hn+Ax?=
 =?us-ascii?Q?4uBUMuodoyW9qRsi+7vPqns0qsn7jlvOB+GbM/Tqk4/R1U7BFnBZZyMaaPfG?=
 =?us-ascii?Q?W0c51c/fw1T4Q/x1vZwIs69R1bxByL5tt29o8PD0y1Gm8JJSOdQpQcJwUdOm?=
 =?us-ascii?Q?mu2IalGo2VX6jBU8GKY+cgG5PLeiMxbMURT80srrOQ52LOeSTWvCsf56iDic?=
 =?us-ascii?Q?UtOSVaQyjrRw3w9mjEg3PLUaEmbdTaCUXJIV3Bll7c9KKAZBr225VPCGu8r1?=
 =?us-ascii?Q?lGkL7BYBCVzpMaqP13/hTb50SDQRIaecqEqizp/66e/sqhw2OEjzqN3x18TI?=
 =?us-ascii?Q?NCeXmAlsFTi42ul88XMuyEAT7d0qZz9Y84MMJ1LrUj3KB5sgsLFN4BwDqgqP?=
 =?us-ascii?Q?5/+1W2nk5C2Aiss4VJ04W5z0cbKG4Dr+VIfQFejYnomk40yp5REZ5QvwKW0J?=
 =?us-ascii?Q?evo=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR19MB4801.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac3fdcbd-8861-461f-0a0a-08d9560eef27
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2021 23:40:38.9319
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AYonXMOXJbAuk3l8x/J5iclCHSWtgdxRWf+ZWyxyEMv7bjytZTDarXGMvXsDDcpmYe9e/4Eh9WnXA+1LoEAQB2KfFA2dROJrD4ATdqA+vcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR19MB0943
Message-ID-Hash: MO7ZX37GBOCGMKFCFURTSD5LREVOEWOK
X-Message-ID-Hash: MO7ZX37GBOCGMKFCFURTSD5LREVOEWOK
X-MailFrom: jerrid.plymale@canyon-us.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting the TX SPP to reduce underruns 
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RFDKZ6WH46CT2ALTNRXZPM57LO6JMG3M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6524447545458258669=="

--===============6524447545458258669==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR19MB48015606D1B15436822D285FC6EF9CO6PR19MB4801namp_"

--_000_CO6PR19MB48015606D1B15436822D285FC6EF9CO6PR19MB4801namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

I am reaching out on this subject again as I had some interesting results t=
oday from some tests I ran. First, I want to make sure I understand this co=
rrectly, the SPP argument is going to set the size of each packet sent rece=
ived and sent by the UHD source and sink blocks. This could be checked then=
 by looking at the length of the in_sig in a python block correct?

I ask because today I ran a test and was able to see the length of each in_=
sig packet was the same value as the SPP I set in the UDH source and sink b=
locks, however when I ran the same test, and subsequent tests today, the fi=
rst packet length would be the same as the SPP, but then the rest would be =
at 4096 or so. I have been running tests today using different min and mac =
output buffer values trying to eliminate the occasional underruns that happ=
en when my flowgraph running. With that said, does anyone know how changing=
 the min and max output buffers may be Having an affect on the SPP getting =
set? Does anyone know why the SPP seems to be setting the first packet corr=
ectly, be the remaining packets do not match the SPP in length?

Any help with these problems will be greatly appreciated!

Best Regards,
Jerrid

--_000_CO6PR19MB48015606D1B15436822D285FC6EF9CO6PR19MB4801namp_
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
<p class=3D"MsoNormal">I am reaching out on this subject again as I had som=
e interesting results today from some tests I ran. First, I want to make su=
re I understand this correctly, the SPP argument is going to set the size o=
f each packet sent received and sent
 by the UHD source and sink blocks. This could be checked then by looking a=
t the length of the in_sig in a python block correct?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I ask because today I ran a test and was able to see=
 the length of each in_sig packet was the same value as the SPP I set in th=
e UDH source and sink blocks, however when I ran the same test, and subsequ=
ent tests today, the first packet
 length would be the same as the SPP, but then the rest would be at 4096 or=
 so. I have been running tests today using different min and mac output buf=
fer values trying to eliminate the occasional underruns that happen when my=
 flowgraph running. With that said,
 does anyone know how changing the min and max output buffers may be Having=
 an affect on the SPP getting set? Does anyone know why the SPP seems to be=
 setting the first packet correctly, be the remaining packets do not match =
the SPP in length?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help with these problems will be greatly appreci=
ated! <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jerrid <o:p></o:p></p>
</div>
</body>
</html>

--_000_CO6PR19MB48015606D1B15436822D285FC6EF9CO6PR19MB4801namp_--

--===============6524447545458258669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6524447545458258669==--
