Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9142A8011BB
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 18:30:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9621F385B67
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 12:30:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701451853; bh=59TNvxPk3yDJVcFVKHaCzmloF2QaU8/4P4WrGMR4nE0=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MojEjUQYWLm9Us4+bzknw7wGBNKmxc4BGTbTjObm4WO52g/o/gKrf/+6Kmpfqaxib
	 th05bv5B9RzMc8CkwyuxHM1AVPxPuPE8mUtKYRenWoo0mTVikxludTyKPHBONClh9e
	 R6NAQblKiyv4g5dxtNGkzWdx7UvwqL8YsmyPOiI7IAW+kSlmvvqOIbsP4cj/ozqebL
	 oRqfdGa1xmstomVE/oborR86Y0rhJVEtpqP64jxCcE5pnuLKnIOJZBBwC/1/ZPgE3b
	 ek2HNNlaISe8WOK0K1mDAMMIlFpK9f5ZEtGVaS4aS42r1+qUxutRyox0a0ZVnHn58M
	 AzCxJR0RxqQFQ==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2077.outbound.protection.outlook.com [40.107.8.77])
	by mm2.emwd.com (Postfix) with ESMTPS id 59843385ABF
	for <usrp-users@lists.ettus.com>; Fri,  1 Dec 2023 12:29:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=phd.unipi.it header.i=@phd.unipi.it header.b="EnHMFBlJ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ONaQjrUwKCO/4NOHL922WkYQwNBu91NczIN8LpfSTjG8w76KlMuqdv3oLGXYlBRfGqOWy3O9bqV5R4xWWwbZfmyldSAekprGQg5gFdXdld8LhHcA8u03ES5ZNYNmjbk439wH2mFQzRHi6jv83TA4MFfg7QCQT1Pyn98v1FyTcIj2gjJOjrjfrc4kqbttp3mQQg72PHxgZoTGzPWnbTk1SX8NcJ1wa2graaVuHX84tlC73PLHuU5O509sGUpW3U6r6/o0UFbpSdYjPQ5f4Q9T2vtcp0KpUdrifFGcyRTuxBf4oenPCOV/d6EMN89Ahv1Vp0EMrfwtRdjnP8ZRKZFgWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0wVJP1gDnB56D1QVAbiKWI1sFVqIqviOKKiiscPGiSk=;
 b=XnHtRiVj+wINE3jDyeljMltrH8vhnzxCnXGZEZWHCn2qwANqEd4bDPzbgg2UGh99MUcL66ckqYxdIJUBdQe2fOfXju8UGC9njqDfIikSsNoZyjJlw64g+c22P2kcQ+TQ0Qk2uJqE2J3klwmNHV8bJ4MoM9qu9G0x8GoZNrDq/OleVQUlXOKX0TV8rFq/2j68H2o52n9VwJFa2H/FR7AEpt7aAJPDAuC/4jd72wdTxYbG9jTidvSlfIwQiESqc35mVxAlwPcWMO1NAZtH444RSqPbkHCfv4lFuDbaqOBtVfip4UipX7wTg68bYaxsoMJVFApfjtJe0Ez4K/DTFTNe7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=phd.unipi.it; dmarc=pass action=none header.from=phd.unipi.it;
 dkim=pass header.d=phd.unipi.it; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phd.unipi.it;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0wVJP1gDnB56D1QVAbiKWI1sFVqIqviOKKiiscPGiSk=;
 b=EnHMFBlJ3u+OQDvMtV+MaPs2dMaqmpGKFCqpP18Q0VsAxY181bfEpE5eBlmWfS4e+5DM03OuQ5HtpDpukwkw42xDoQMa+Wxb5JeJSIiIJmn16wd2vKnxEGN3c7rgfHWtVbRJLOm3gU4QFYBz2wARAO4n7V9u0yK9fvWEveHqG28=
Received: from AM7PR07MB6498.eurprd07.prod.outlook.com (2603:10a6:20b:1a1::19)
 by DU0PR07MB9640.eurprd07.prod.outlook.com (2603:10a6:10:323::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.24; Fri, 1 Dec
 2023 17:29:55 +0000
Received: from AM7PR07MB6498.eurprd07.prod.outlook.com
 ([fe80::ba12:be31:15e5:fa32]) by AM7PR07MB6498.eurprd07.prod.outlook.com
 ([fe80::ba12:be31:15e5:fa32%4]) with mapi id 15.20.7046.025; Fri, 1 Dec 2023
 17:29:55 +0000
From: Purva Joshi <purva.joshi@phd.unipi.it>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP N310 no device found
Thread-Index: AQHaJHtRL+CnWlF6iUS6x6k0mN+7pg==
Date: Fri, 1 Dec 2023 17:29:55 +0000
Message-ID: 
 <AM7PR07MB649855EA1BF7754CEAC433A5C981A@AM7PR07MB6498.eurprd07.prod.outlook.com>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=phd.unipi.it;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM7PR07MB6498:EE_|DU0PR07MB9640:EE_
x-ms-office365-filtering-correlation-id: 108f1f0b-7dcb-4da0-c868-08dbf293227c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Iw7V0c88X3gMjHru5gnhS/za5xH5YTu4ldUkoqqeCi1pXm4LTPjqh53lOHQ8168IAvWVf4l6kerTr2756S8fmbUgrimJzSEAK6x4bYhkmdHeq/nSUjLdKw7lztdngyAfLycuMFhQ7nR2UiP5wDCKL5+z41SWiiNu68oNcKPsPrzxR0Ba7dTbaeVRbLbJ7A0LCsC6FCI2IZvv88WnxCk0z3J5L3ia8jG/ecBVE6S3/7WjXdiksNxKltQOlU8rhagnNNMRlHBxnL7ZKqFJ/BYZUPb1AYeISTfULby6vHIzj8WlxXNwy5e0TPgCaqPeBWOkUTIK2/l4OXpVD0SCHDkJ0YorNIDVHXOwgrNp+Ed/Ry+TRVPkGXdq54qTwAe5VwU0OjAZw6rsqjDnAB+QbUn4nbdwN0yXUbDAHYRRowtPBC10Y0lmdnAyTPhKYHGMf9iz/wKmVzgO1U6quuoweTm996fA61xhPY5/Fa4wbz0mKMQFacIjfSDdfFiXb+NI3LkraoVQE97E8wi9A8d+ztKkB18PvMPCn/Q3gBcjE+yWR1WLsPkR8OUNvvowGAs89BaZ692cpW1afsYdVHg6qrv6LwNQFpQf6Z/PqEKHf01ATD7oKR8qmKmCrIu9suNCtft/6p8DmvrzNI3wo2YpBWE1T5fY93oMzpTaH/UngIJTUkg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR07MB6498.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(346002)(366004)(376002)(136003)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(83380400001)(86362001)(64756008)(6506007)(26005)(9686003)(7696005)(786003)(41300700001)(8936002)(52536014)(8676002)(4744005)(44832011)(5660300002)(2906002)(508600001)(316002)(66556008)(66476007)(76116006)(91956017)(66446008)(71200400001)(6916009)(122000001)(38100700002)(66946007)(33656002)(55016003)(19627405001)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?/pmEYNu5N6/96GGEgA+PMK/UXy6H6Sj8dGi3t7LJS7r2mWApYkI97efHtg?=
 =?iso-8859-1?Q?7avvoybRJXU60V83+lGVPoSuxHQdDpBEYQUSr/FneevfOkqD7rzIev59Pr?=
 =?iso-8859-1?Q?n/LB4wietTJeCIZdmpiIFJlqDfbyhfFpcrjM7hkW9KOvEvKq92/FSSpsxQ?=
 =?iso-8859-1?Q?OeeuHWMajmXJhG4QzmH7ZA6C+BJmlk35m4EZW+Q5O+mwFspPmL6p6fQdn/?=
 =?iso-8859-1?Q?O8/y2vFGf4s2pVTrp9+qGk9ID6VW0Th4KOl4b4kbo2s6NLCoHiUWtX0pcg?=
 =?iso-8859-1?Q?aDD69tOA5P0AMB15f5u3qRf9iI+8czq8dMS5RqPbJli/AG5XGDCtfY84Fy?=
 =?iso-8859-1?Q?1/FXigCDq8OcUE/bvD29Ujciz2KM4so12VhmKkIz0QEBFZ1lnvXzh7SpKx?=
 =?iso-8859-1?Q?VnYPtgtdk3K7de9VA8kpSySW7bUpGfzmZw+LuDTLNiO0xwchAlCVTkWPPa?=
 =?iso-8859-1?Q?FUVLctd+2vGba0iPFU3vdFX+vJ81DTpbDEKESsyIUz/qU8ZAuiOYeyMwgZ?=
 =?iso-8859-1?Q?62ejWe1WNIeSPTtjRUD7+HUKnXKows+v+8exRJA/R6MgqHuRS0h1NGpmj7?=
 =?iso-8859-1?Q?aBJg/omN8eSvpR+uQibWpRd8ynYFQDSo0L9dkLRKeenBEipbEnxWwdloS2?=
 =?iso-8859-1?Q?1Yu3nSgIxH5GTB9Oj8b9lttslIJdEICEjjIFWmaBV36ApMVQRzJIaK2lzH?=
 =?iso-8859-1?Q?jEldnpWPP5XZVozg8wjtloQ53kMyOspmsIpeWarVYwvU1psDTeaRLbIm0o?=
 =?iso-8859-1?Q?/j9OoWm8sSsi9Trrhpa7gqLf1m9FRUywAVuwFaCK3RQOjaWaPvFRvY2lNy?=
 =?iso-8859-1?Q?nslgrBRrMXf059PuGMhIuHREIvUXN0vX+ToJ/oY67q5JdCru/shfYfmre+?=
 =?iso-8859-1?Q?xcxJDIxvMHP+6fmDvyrd8P4paYLRaZcM8/1DqszdqfBH43wE4oGRNw5NN7?=
 =?iso-8859-1?Q?e+SAqxvQLtdlb3WXQd2Yw60YqMye0LgfwJJ6ZwWY/5oZd0MD7+kF2qXbVu?=
 =?iso-8859-1?Q?yMlvm39rGJkzdCPTFugOcru/dp9csP/LWx8dehDm104GYlVdjsSzhL5Wrn?=
 =?iso-8859-1?Q?wgGjl6GI5ksL2Ws5Q3lQzM+kHtUz6vmUvwNAX5ArsrSjt/KsPBZOfIfdI2?=
 =?iso-8859-1?Q?/VYUJ3IhrT1QJJP5GLVc6QyWexG8GD7b8/v7UuWwvyvo56jE5m+cKuLU9P?=
 =?iso-8859-1?Q?K5S1SymLWNGVXx0x7MMHfd4NgeokH42puhv/BaIxOzsFa8/F9bSX07qGdV?=
 =?iso-8859-1?Q?Lqv3mrdYkimV8Qbm+OuRom+oONNurA6wrUSLn6LTw/Xp0uEFX3Q/nXTLWa?=
 =?iso-8859-1?Q?YD+vH5wKtf+NVMkpgB7snCnC1f3BgSynay7VeDQIjmmGqZjijgZ5MhST9N?=
 =?iso-8859-1?Q?jTiG1Gs5on6Pdci0VVNcjLvkucjIttVmX4cWqckrOVKcHItk9snHKB3ERP?=
 =?iso-8859-1?Q?nb7ayEzg24dQ37hAPQNbgLGrIYKz7UJ6Ij3khBAoY9Xjt8nHHbfxj9yWoF?=
 =?iso-8859-1?Q?JHLpo6Iho5UEEq/bxbJ1V/R0jyp1buXDDXxMqtSOhmoAgrkle5+wwi+yhd?=
 =?iso-8859-1?Q?tPt6fNUv+5kvw9Gxwxmfxj8T/LGgjDuTXRUIsPsqWnIE+Th3mQbX3PjxZk?=
 =?iso-8859-1?Q?GnhBV3/MOXG38A8Bdo7tA5FnkSLCNKAqD2?=
MIME-Version: 1.0
X-OriginatorOrg: phd.unipi.it
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR07MB6498.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 108f1f0b-7dcb-4da0-c868-08dbf293227c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2023 17:29:55.5695
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c7456b31-a220-47f5-be52-473828670aa1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fu0s2pr9Tu6v+uHwQEqrxh+5BrLIYMufrbjTXWswGq5Ous8MQKV7vYnomap8kZH0iwTVTdaXEElYfc5KfhTkFvW4HEtU5ArGG7XEO8iLsDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR07MB9640
Message-ID-Hash: LBPEAFN7W4B7ZNOTK46A4NHNSJRD6Z2Z
X-Message-ID-Hash: LBPEAFN7W4B7ZNOTK46A4NHNSJRD6Z2Z
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VY4NNVDVBFLBOXWHAJICRZM4CA3RB3WZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6663705868483351319=="

--===============6663705868483351319==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_AM7PR07MB649855EA1BF7754CEAC433A5C981AAM7PR07MB6498eurp_"

--_000_AM7PR07MB649855EA1BF7754CEAC433A5C981AAM7PR07MB6498eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear All,

My name is Purva Joshi. I am using USRP N310 from Ettus Research. I am not =
able to find my device. I am using Ubuntu 18.04 with UHD version 4.0. From =
physical set up, I have everything ready. If I ping for the USRP IP it give=
s me positive response and from "ifconfig" command, I can see that my wired=
 connection is okay. However, when I asked for "uhd_find_devices" this comm=
and gives me " no device found". Kindly help me in this matter.


Thanks in advance.


Regards,

Purva

--_000_AM7PR07MB649855EA1BF7754CEAC433A5C981AAM7PR07MB6498eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<p class=3D"elementToProof" style=3D"margin-top: 0px; margin-bottom: 0px;">=
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Dea=
r All,</span></p>
<p><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
My name is Purva Joshi. I am using USRP N310 from Ettus Research. I am not =
able to find my device. I am using
 Ubuntu 18.04 with UHD version 4.0. From physical set up, I have everything=
 ready. If I ping for the USRP IP it gives me positive response and from &q=
uot;ifconfig&quot; command, I can see that my wired connection is okay. How=
ever, when I asked for &quot;uhd_find_devices&quot;
 this command gives me &quot; no device found&quot;. Kindly help me in this=
 matter.</span></p>
<p><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
</span></p>
<p><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
Thanks in advance.</span></p>
<p><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
</span></p>
<p><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
Regards,</span></p>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">Purva</span></div>
</body>
</html>

--_000_AM7PR07MB649855EA1BF7754CEAC433A5C981AAM7PR07MB6498eurp_--

--===============6663705868483351319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6663705868483351319==--
