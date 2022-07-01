Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A43C5634C3
	for <lists+usrp-users@lfdr.de>; Fri,  1 Jul 2022 15:56:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B73F138441E
	for <lists+usrp-users@lfdr.de>; Fri,  1 Jul 2022 09:56:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656683787; bh=EpOeWcvUp6njo+Zns2ZBGCuOGZdhZRKAbSBIwhIW3dQ=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=J5E1mkbKhcC06WCarDhnuzWYJqopL3PwrGuVnLzA7iBmkluek0H7z7JjpoQfEMtaJ
	 FHuQAYsENGqc6b9ymQMXJh9GK804VlPEEX8UzgfqOVO/yi36/HIiqLTR9neqCRXzWr
	 ik2vgs5REx/uX3aTSvP8t8aM3b6twXWU0zYJRr0bMa8SB5KtVIqFj7lu2pK2K6WDF+
	 6KwcJ+e10Fz/NcWFm2PoHp9YqsWI3p3P17cS6nYptDhUEDx7VgynT4BEOLSyfKIMb8
	 Kz7tjlze++L0S9BVG7QWMqY/drRGN6zmeKokhbAgwRH7qiQx4HZ+K4ZpQ1NixU6CtF
	 oH4oxoxP+NloQ==
Received: from mx0a-00272701.pphosted.com (mx0a-00272701.pphosted.com [67.231.145.144])
	by mm2.emwd.com (Postfix) with ESMTPS id BCD4038482A
	for <usrp-users@lists.ettus.com>; Fri,  1 Jul 2022 09:53:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ou.edu header.i=@ou.edu header.b="jH5ckfI7";
	dkim-atps=neutral
Received: from pps.filterd (m0282641.ppops.net [127.0.0.1])
	by mx0a-00272701.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2616ajnJ015299
	for <usrp-users@lists.ettus.com>; Fri, 1 Jul 2022 08:53:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu; h=from : to : subject :
 date : message-id : content-type : mime-version; s=domainkey;
 bh=goUU//oNU1uWvA4wsiY4yOWnTOBK5iejMw10TKqGfvk=;
 b=jH5ckfI7wqdtwJtakytptjvdC5IPcCFGKgUB91B8Gl5se1/J//mkQiRmNbA3c2YaZL3h
 ogAS+BdERbm2z3i6WT8B4mvd6rYlqZc+sCES22zH5Kl+UADHL/5FdwN1/HceZhgJ0LLi
 FqIM+cHZ/+AYMgcoD53dTDooV6FQkJ9xmRH5PjfFnXpqkduwbqx9/dxe/N3XanHyZY9o
 K4swKMGsRDDcmlQIYP1k4pjCeacoMJdcbqlBuLGG8EEpJMsDsAwmD6hi2mpZzNdDlR69
 doFVXIS+PZi7SXgtVI8sHZRQ1CPP11GmhvglYYbne2A/yirbpKgaOtcx8PNyBUswg6fC UA==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-00272701.pphosted.com (PPS) with ESMTPS id 3h1ggvt1mx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Fri, 01 Jul 2022 08:53:52 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CzeJaaFDebqs2OJcHFmPKCg/m8fGSMiOvA5VP5/SuVyo/KlaL1EHXt5A7O9BmekWwHFogHv3Y6UP39Qe+LWQKRxRWWPFWnm7rxLPMi1azTQnqBYxi95+s3BNO7zhKv/NRXC6czmkqVBqdXrcBdoy1xddU/uUI/RIMMFxQo1RjOOrRx4Tsi6ZdXQ4FXpiyB9X7z8Mi1jJyCD4KznzoleXLu427NNy58H3tj0M9KinB5vU/6sPNPiLhX9LwlFUb6lpiElCbb9blqTeLodPdMTZPjk8KqLRUzFoUIf1FJx3IHzy4mpFWTMTgIw8L56IZeYSg55SGdFS/9uBtVPF4lZVrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=goUU//oNU1uWvA4wsiY4yOWnTOBK5iejMw10TKqGfvk=;
 b=HWhn9Gbj55mfmWPV3YzyG4rGmAqjgiVspXB4yWVYwubInKm5SFl5J/cTKtmFRK1THdK94rRh2ikaYropox3A1GBwQAF4WHarpfOOUDzpzy+Pi67rV52YOym4gWmHxkkYbOtAS8vJ6+HDEfwtsAtqoGKoJzxkldDF9XY54Ebzt11pml+ozmiDyvpfQCNSxmS5BSAQyanTTcEsxxRSiI/Sxahi00Y64k4xSuO6kMOfYNDbBjBszLkrepmTuISLGz7TxqRW2CnsxSdVlh/W0zwy/qdx1TnMPMegl1I3IbgmYuz3yQb7HlkVLwWMgLy/vw6v3OOR5WW5jo5mOLEvL8/Q0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SJ0PR03MB6795.namprd03.prod.outlook.com (2603:10b6:a03:40e::10)
 by PH7PR03MB6861.namprd03.prod.outlook.com (2603:10b6:510:15e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Fri, 1 Jul
 2022 13:53:49 +0000
Received: from SJ0PR03MB6795.namprd03.prod.outlook.com
 ([fe80::d80d:ada5:525c:c8bd]) by SJ0PR03MB6795.namprd03.prod.outlook.com
 ([fe80::d80d:ada5:525c:c8bd%9]) with mapi id 15.20.5395.015; Fri, 1 Jul 2022
 13:53:49 +0000
From: "Mattingly, Rylee" <rmattingly@ou.edu>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc_chdr Clock on X3xx Radios
Thread-Index: AQHYjVCCElMhlYKUPUqMiAQQholupg==
Date: Fri, 1 Jul 2022 13:53:49 +0000
Message-ID: 
 <SJ0PR03MB67952B33C9B89FB9014E9348B1BD9@SJ0PR03MB6795.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7787396d-1495-4ea2-1e83-08da5b69203f
x-ms-traffictypediagnostic: PH7PR03MB6861:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 fmgccJpoaX1bcIKVT8znj4F3edOsXWNoHuXKofUDeE9HIFOjoHBX0spxWK9sUcItm8upsepr1vp8Z6283jTAtTjOHV9bjWJhQInm5orz4eZdZqQJdbBTGetV4/mUThIov3HexXQcX1YPG2SDk7oVOrC92/BhACYrizvKJI2RcNPH1wa1Vw2mZ7AnuHd98KLDF43MMsBHR+MN3QXZCv92cMQPcO1Z+IaEx+n1LvlskrXs5HJwCss6cNEFvb9pMQSoUCoCe6SemcCeAud9ld527IJd67gqKMatnvjtemRfa7Z1n/Aqm9XfDfqkX3MG2NqF0NbWNpgo75yGzo5z5LT89Ms05Y31FVqiOMtgLxPuXLcBs2UxcQvla9v27to/S1ymmZJVxSUzRBcxrApBvRQBIMxI8gudS9lEblmeE6ElWILX/I5mLpa9iCaaIynLzLlVbTicjtBchv/ZDdRHecUcDQynl99txoCAFx7s9vdnGhQ8mlpwLrphmz0PvcHmCdDoeny6kBXyFKc5KcKspi9YinuToLTPN9r/Q1srCAU8Gzi/konNKd4msUSxFQYeJh0J3KTT5uMHcfqiPLbj66x6IscZ+Mpqh7YxhQ2CSvW0VsZnDtAa0Sy14+F7cjNwfaL2FRjpDZur/lT36j7EYounRk/HVl85hquBhWOPoQOqYGeti3oIb7TZQNx4WoOkSm7yOGSPCjyz7asbHnR3ZftgmzZdZPegmpsla3EExeE7PrrPfUkoMdYb9GgJDsBEJiPx/6m3hdRhkkCj+7ZT4CfzN+riPMXoduT5HS+GCVV3enudpz0hhwmU+aLa/c8ySOlSOZnJiUFrMDEuY75Z6g9IQe4aw6xI1mm53Uq1JhGnkrlOT0ACJj0XMtnzknBKe6tM
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB6795.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(136003)(376002)(366004)(346002)(396003)(6506007)(7696005)(186003)(33656002)(26005)(9686003)(71200400001)(86362001)(166002)(41300700001)(38100700002)(41320700001)(75432002)(122000001)(38070700005)(2906002)(55016003)(66556008)(66446008)(66476007)(786003)(76116006)(64756008)(66946007)(478600001)(8676002)(4744005)(8936002)(5660300002)(91956017)(52536014)(83380400001)(316002)(6916009)(32563001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?UgxXoHbkXxr1YRt74fiuuVx0XLBsEPqfEJfCQys4oe8vkYrHDToiy8r6tu7M?=
 =?us-ascii?Q?lJby0/M5HUH+4A7fKOVxguAdGPAhVo9mR6px+Ojajj4lBrLam13ASZ97fZD+?=
 =?us-ascii?Q?QP7R4sgjW9uIjV64xX1hXJ96RKwaHEA8uZnNI6Vehitlw+rQxUM8fsNLWHjP?=
 =?us-ascii?Q?tWveg3SIr/z4hHV2QayuakHa3Iu1KToBjLldzKYfig9jEr9GtB2inNtjkAoJ?=
 =?us-ascii?Q?Ro2Gn1LnVfMF9MBjafeYXnsJ7zjT9+b8CHQ51Aa4SQvIEtklu3wVZMOR1cvU?=
 =?us-ascii?Q?sFCqHgD8sMl0tEzfjsEETUuKOQjpPaN+x3zFQsEpRsfrqnbcUqBBnzAYMC5r?=
 =?us-ascii?Q?b70JprZDEhN3sDAlKFjx+YJXHHIt1xxPYZ056PXNwBMj3UAU1W7lSSTk+PC9?=
 =?us-ascii?Q?37vznPslFddGXcL2WtYH9s6tEzxfUbaIlJ8Nk3KCovJreRwu09s3fnVZXRXn?=
 =?us-ascii?Q?Y9V73ExHXNLxDlC68IVvCTm+W14KKFngsgHrw5bUBHTJcqojnhVmEZtUuXGD?=
 =?us-ascii?Q?owDe80pt//NyzMrmc4goaWF31yjAtvdus6Cc7h4QCjtFdIhgTaAFhuOWqgmU?=
 =?us-ascii?Q?P9/O3H3L8TKrc7kVeDrWzgHXeuQ4WoYMzkFDp7rWnK1AqYpZEhmgFZOvZFEx?=
 =?us-ascii?Q?qjMYzjzSL/z1DZaevgIESkJSYT1o9zHq06wz2kYy3ugJXvvUEII0voEjErcn?=
 =?us-ascii?Q?+eNkI4GrSwYp36FzfoU7C7/OEU7v4T0VsSEvzc5IUpIez+UBlNLHzHPwkdOh?=
 =?us-ascii?Q?xWgCaxKUhadf/hPeEhpOUHVtFrRUuScH+vlcQGEo3Ycd9IZ/sb5a734rwrMv?=
 =?us-ascii?Q?O70TjFkj6tHG5qW6hD64kBCBc8Kb69xXnwJ3d3liuG397PB92pxbpAXZXVSb?=
 =?us-ascii?Q?/GaIeEJCu6uJ/ZsED8WjUsut4d66ToE0MlLNrMEy9znYotPY8un75kSqY0Bb?=
 =?us-ascii?Q?rxiifYPi4jO/9YxnvZvYd3VvlTGzY2ZHsYhLomXAd0BgQul7vmKPCC3UoI7x?=
 =?us-ascii?Q?GHteHzG8jLM5ThyCq/KClObxdGd2lopTeXuWqqkJ0i3W3kgGHMkJdaFPlAkt?=
 =?us-ascii?Q?Wx6inY4BtuHWIgv4Yyn01H0LwJf2k2HPwylqx1Z5ERNUdr8qByGW+N4R7l38?=
 =?us-ascii?Q?wmUFXTGESHUOoK7NtG/pDo3FFwSdyWsfh+noSG27pbrHVS3Nr3meXGAc248Y?=
 =?us-ascii?Q?nf1LlWDbWh0vVp5DBUbTyxt9047pLATwF7sc2W0EKddzk9HcntHvNos5OmAg?=
 =?us-ascii?Q?gTITQgiQP3h01SLh8AYUvTb3q2j+PX0AGpYnB5mQM5xKbu4r7WsnZ+H37DS+?=
 =?us-ascii?Q?iG/qArg1gO8oPtKaH5Cm5wIRaO8Jqgm2KbTlTXGatYKX2u74WJdTV4YUxn0U?=
 =?us-ascii?Q?G8ILHQb0L2yHVXqwY1SK+Ir6JSlizVcNi4xJHrPQA9AsMXOU3gbnzmmb2I05?=
 =?us-ascii?Q?GaQ4P5Pq1bB8p1TcySZpNUQzngyt1cCSg2EjnP4VIk64INYskcljkQuPv/er?=
 =?us-ascii?Q?HbCKN7CCgYqkCtHCPemHMUwVnruMx0fOTHH+LKVNr/qGhDfKZr4xtYs0iwgN?=
 =?us-ascii?Q?opg9DA80l4dM7WVvVS3TibyB8+rZvNE5j7q4Z6EbXR/Qc17DJnUeOxvwzOuK?=
 =?us-ascii?Q?KA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB6795.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7787396d-1495-4ea2-1e83-08da5b69203f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2022 13:53:49.6891
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 58AiRCM7mxlpP8KBt2AI+CzPlN9bJfyDbAfgXvNx+zIdLk8hFg5ug6Xs70fOVvtHiZTB+CputWP/dA3+2MSXMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR03MB6861
X-Proofpoint-GUID: GC3zmrma8EvyPl0M-TSvDJNjaexgFrP1
X-Proofpoint-ORIG-GUID: GC3zmrma8EvyPl0M-TSvDJNjaexgFrP1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-01_07,2022-06-28_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1011
 phishscore=0 suspectscore=0 mlxlogscore=829 lowpriorityscore=0 mlxscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2207010053
Message-ID-Hash: NU4X5UEHUZ65OXZV4TQ2R4G2PU2T35GI
X-Message-ID-Hash: NU4X5UEHUZ65OXZV4TQ2R4G2PU2T35GI
X-MailFrom: prvs=6181687c77=rmattingly@ou.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc_chdr Clock on X3xx Radios
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KPSSN2ACQJPTNAWBJ7CCKJRFXMYZMAGT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2606327866700922229=="

--===============2606327866700922229==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR03MB67952B33C9B89FB9014E9348B1BD9SJ0PR03MB6795namp_"

--_000_SJ0PR03MB67952B33C9B89FB9014E9348B1BD9SJ0PR03MB6795namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

I am looking at the RFNoC FAQ page<https://kb.ettus.com/RFNoC_Frequently_As=
ked_Questions> and it lists the rfnoc_chdr clock as 187.5 MHz. Now this is =
plenty fast to pipe around packets and sequential headers for the 184.32 MS=
/s sample rate but how does this support the 200 MHz master clock/200MS/s s=
ample rate?

This seems like a NIPC > 1 would be needed, but my understanding is that al=
l blocks use NIPC =3D 1 by default.

Thank you,

Rylee Mattingly
The University of Oklahoma
Graduate Research Assistant

--_000_SJ0PR03MB67952B33C9B89FB9014E9348B1BD9SJ0PR03MB6795namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Hello all,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">I am looking at the
<a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Questions" title=3D"=
https://kb.ettus.com/RFNoC_Frequently_Asked_Questions">
RFNoC FAQ page</a> and it lists the rfnoc_chdr clock as 187.5 MHz. Now this=
 is plenty fast to pipe around packets and sequential headers for the 184.3=
2 MS/s sample rate but how does this support the 200 MHz master clock/200MS=
/s sample rate?&nbsp;
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">This seems like a NIPC &gt; 1 would be needed, but my u=
nderstanding is that all blocks use NIPC =3D 1 by default.<o:p></o:p></span=
></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Thank you,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Rylee Mattingly<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">The University of Oklahoma<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Graduate Research Assistant<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_SJ0PR03MB67952B33C9B89FB9014E9348B1BD9SJ0PR03MB6795namp_--

--===============2606327866700922229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2606327866700922229==--
