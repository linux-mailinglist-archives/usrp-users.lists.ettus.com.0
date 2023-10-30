Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 270B17DB292
	for <lists+usrp-users@lfdr.de>; Mon, 30 Oct 2023 05:59:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F004738536D
	for <lists+usrp-users@lfdr.de>; Mon, 30 Oct 2023 00:59:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698641951; bh=aXE7ZxAcGzVpVgY5jPEC3Nqrdi57G5Vark9UQMqPpQY=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=G3VPzZe6OPq1vOLoBecmPf+geSiyojuekSqQpLt9+kFWB0vATVUY3N056PCUU53Jv
	 ufPjHviBvVDf/zNVEao0ZATpmmj/gjNyl91dC0SQJarsdkibAiPcNcUMCJVNlZAr/w
	 aisxddkgTv7BnP2jrQdRWdmHmfLovFbMcnMVKWz45B7x8XSfgDwaJ7s1NaWyuIugtZ
	 YhGRn8Fa5jS/szMFG90ihNn99Cb6Aukn9HzyauUAgIY63XeSUzYKDRkWrzMhHygiiD
	 Zh93Uz8KXwYUW6W5SyXIbyccrzQv74mQtrfJEq3thtRd8P1sJzNApeoqZ3E8l+StPY
	 V5vQHXPPVW9yg==
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01on2071.outbound.protection.outlook.com [40.107.239.71])
	by mm2.emwd.com (Postfix) with ESMTPS id 03BC838519B
	for <usrp-users@lists.ettus.com>; Mon, 30 Oct 2023 00:58:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ltts.com header.i=@ltts.com header.b="DjyjCCMv";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EelU/+uzUGnj/FxojBkvNEi6Omz17ra7ALjzivlBElvxYQAzXAsKyqY/0k8oWNykHMlDsaH2KhZSQLhUUvtcYKFE2W4rqdCfnnoaEiEqVtdshGUCUHquqB/KSNdKwi2eMfBTNYM0Eh9rGW4r1hw5wlXandLiG1d7Q+3sSq9T5ltWy1U2bHXgUtr8om1veIPROtP42KwzJC8zbSWYq3LfmrTa24qiJyMKC68oEbVdBp/XJ91Rv3mbrwbTLUth/qh1P7lv1vrJc94VLBQxSo5pLOykcAp8mqEoOFI2izNFC/wE/sCjLXWKtVdx6Gsz9wPfFiy7t+PCgd7yk2Hsj6x0/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y7EPZ+nQWmoEJweJWEm41/DV6qOAhG9FZJ3Fc/xFCJQ=;
 b=B83YmvaQhmZu3c94U1nqmEOB066PQXeM+iOMxOofLKwq+5KPx76ZzY//cGbzn5xFMcmC/qgMdvKgYV8pr9sJPnBaG9jb+hb2bGkz7+FAC6+9HvdsLgpLWnJUy3+5zALGiUMe8NJFL1HbHNn17nOpcp7gHZ61gUp9R5+i8CLLrdLTAhlGtfNRBEdB6TfBW4HUQIGug6JdgQtGmps+flgIQCZcj1z5nkRSoa9exkocQC5O1KWreXnE7gJgInU6cAMkpyQzhDun1ZRm7PeqBh/lesiAcvx4v6pgy5kLLTQS6fTaA+Law46VACEIgCGiBG1IeS1q6p0d8ndAzS4EJbGZig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ltts.com; dmarc=pass action=none header.from=ltts.com;
 dkim=pass header.d=ltts.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ltts.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y7EPZ+nQWmoEJweJWEm41/DV6qOAhG9FZJ3Fc/xFCJQ=;
 b=DjyjCCMvsrmAetHWNXE/bs65wQto6Z/aqCHY1+wpHWkboSe1v7fV1Ry95NzDRLS/TuOG9tz++/QDI5LATW8VQrUghxKEcqF3lyJkN1Lk4C/KaQkqdc7VtlPKthErfa8QzyFVKhJlBR4e8CwfvEdKIDRCRITrK0utJT6uUPVDEcGZSm8ThJYPnvWvwyiAYHISSdK5shKKnWyC6osC+TUvRZkp+qkDqM05k/VLs7PHOLOa3c3lFy3VxdHsVHz/o7FqjNt3qQRqhVYlc1OxVQaDeIEF4Cxfc2duZge1ipvr0mXen2dgFL+p1vpWvXEf7ph/A3qe1HrqnG4/vHgc8lTA+A==
Received: from BM1PR01MB4627.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b01:b::17)
 by PN3PR01MB6401.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:84::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.23; Mon, 30 Oct
 2023 04:58:30 +0000
Received: from BM1PR01MB4627.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::4ee1:ae7a:1240:7b76]) by BM1PR01MB4627.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::4ee1:ae7a:1240:7b76%3]) with mapi id 15.20.6933.023; Mon, 30 Oct 2023
 04:58:30 +0000
From: Anil P Antony <Anil.Antony@Ltts.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: B210 not generating proper waveforms for terminal dft/fft
 testing
Thread-Index: AdoK69cy0xjPkvWySSCAPEXKTwqkOg==
Date: Mon, 30 Oct 2023 04:58:30 +0000
Message-ID: 
 <BM1PR01MB4627FE9AB5A3EF362F6D73198DA1A@BM1PR01MB4627.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=Ltts.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BM1PR01MB4627:EE_|PN3PR01MB6401:EE_
x-ms-office365-filtering-correlation-id: df7af867-53b3-4716-4a47-08dbd904dc3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UMAow0zOxU9l8lt39SdJR/YjQf2sy9HIdBy3JTrG/Vg96KNMcxwDNcyaDeG9+IqDjdReX3MvjmVGC+ceZ1D+iaAo9e4hgf+sDXttgT36YHmWiVw+83YI1aSLoD9ZU34NLFnKqICYXVqOADbh4j60KjjiYpb7aGa7ksvMKBiY6KH2dZf9z9K4FTUxxaoYGVvvoJKxmbMUHa5m1U4VGgnZOrWkFanKtPL9AhY/Ro8s3Lbi8yMD0YFvIhmeYP0ZDlWBV5jFa8yQsz257rS5NaEA3VtrmoiD3+xbA5Vh12QwaBh8TnULlr0oh1lk/gDf1QtwRQ7Ws8xTr/C22cemnP52cIeWwFLW1+pqupkTkiRms8y4sZ6WNZlrH3XHk71k00vl5UlwNw8bp29s8S7DhtffOSVHSAwLwrlCl/teCTd85IsC6nHNi0DmF4TfMwlY/dnRS/wzzwrvXEkJhJXKpUmZhrA3g+NszJAZgvUs+BmZ2qiQN/OAQKfpOzOViW4gBeGqwS+0vHyRj/xgOCC10ESONygWvLqt/tZYGqq0vmtZ4bQehRnq0NvaF7OpLXdmAJWCENHJUv3KYFMJ+LU7iYpXlsfAatceY5ZW306YzRBQMVPO9tRzO23ZcFyCPdSGIo/g
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BM1PR01MB4627.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(346002)(366004)(136003)(39860400002)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(1690799017)(52536014)(8676002)(8936002)(86362001)(38100700002)(41300700001)(66446008)(15974865002)(5660300002)(9326002)(2906002)(83380400001)(66946007)(76116006)(66556008)(6916009)(64756008)(316002)(66476007)(33656002)(99936003)(66899024)(122000001)(6506007)(7696005)(55016003)(71200400001)(478600001)(166002)(38070700009)(9686003)(82960400001)(26005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?O4PI9VzgUTzaeS9dIg5ftzNKLYf1OsA6FalWQCkhNErPUj3UWMClakEhqWIw?=
 =?us-ascii?Q?2SJ7u+XgRCEScb4po7tvdybaSM1ubxXtkdU7CQYBtJdWELEJnQ5odCJmAVzg?=
 =?us-ascii?Q?k1rC0s4bxoCMgc7us1znmhSWZ+teP2Ci3H1Ie1vqYcWWlPyO1B69HHPWYO+h?=
 =?us-ascii?Q?9HXPfCRvR8OyeWJu8e+OkDimCJJaj682YnCqAPw0LbgCdK7eHuuXdnssolAu?=
 =?us-ascii?Q?Rzq3bXf8HDpK1JcUFIj8/4RA2ePIlybpBF9/klI0ywLxLn8XemWjsPxqtvIX?=
 =?us-ascii?Q?9kqXfVnP4yRFv3BGadu7xrW68iiG9dMmEPLaPRdMQ4VbSqRkU7nLzbTQWHKH?=
 =?us-ascii?Q?tWLJDFSPcjjYRxMbdKhdBKJ/QWKpGwtqCU3zPtvlPCie1IdSFms+QBJedf+D?=
 =?us-ascii?Q?Jtk934qLU3UnA25cn6yjXsmpdZQ1HCpr0vy3Zm5+J3cNnHHesXz8RvxQH2XT?=
 =?us-ascii?Q?p/2fU4/a30F8+7H25cYZrm603loE9toLOPAREFuegXh98HhJrANi1r5Uofya?=
 =?us-ascii?Q?dpWqxvzT1A4BCIfxsTcHF2F3YFaFSA7Gsr5JP/cvCXoZJh8nGiDiLuZFxdYQ?=
 =?us-ascii?Q?WagQ3mkOfwWN75HrDMjNjh9ixYo/PrVmvcskHY9HNhlzSFuf+DvGYhYfJbT/?=
 =?us-ascii?Q?zbczB60Lpdl88nhg8cSk+ib38bPxliARrsu8BkOAcpjdOoZh3MDXo80XkyvX?=
 =?us-ascii?Q?fGmVXNOE6twCEokCT5d6Lbv0PuAhWjS8Xe6GPmYF7sR3Bb0OfxVua0RGpgfr?=
 =?us-ascii?Q?A+W6XP4WgQICCbIWHBEy7ddVwUSQdbXWtjdtmePsK4M1sr97H+K4nB8Ez5jN?=
 =?us-ascii?Q?4EmwdoV65K4+n3YlEX0IhfgLnlD7MApOiGnu+9IadkGYUFJQucTmnokdfzeG?=
 =?us-ascii?Q?R4EZQ4v9RDgnAYkYp1OrNHBcjOvoYSq2uAIQ6IFCpesRo+OFuX8pNJ+VDJme?=
 =?us-ascii?Q?jzbFB2ILQ27lylagqzb7AJXOXA3OQLrcXopA5qIS+/WMdPH+DgVM9gxP74di?=
 =?us-ascii?Q?q+L94VN4MEwAZqL+1RwEMx6FYOThL5/9PIt/UE3/qQ2Q9cG+eaWoiFSbQZue?=
 =?us-ascii?Q?oceOW89fcTijQe+eEzcjmRmTQADsET7wL2SLn1Vngh8TxaEPaJXPrLvHcWjo?=
 =?us-ascii?Q?B1IFAKqlvg/frWUzkk7ayILY1jZsBL55hYULZvnuJvtxYcHlRk6JnyFtOj9z?=
 =?us-ascii?Q?S/b5EyXbfd9CtpFz1A5wpzrQKRAq86Np+J0PeIrnPB4+SxeTlGATN4gsuwxR?=
 =?us-ascii?Q?u/HG697ACoKZWhyM52X1ND06r0RJLsSMOLsyPXANgDNZjpoysdQAlx2l1XWE?=
 =?us-ascii?Q?noLOv1I7YZgRSyTSyglFrmqtR3nYOOAs7Kr9msI2C0CkjpEnUQ/DHltsgcKl?=
 =?us-ascii?Q?mqk+iVYMm59HLVS5dOjJxyAJaDWKhxkknauvJzVJOLgEL+PgkP+sQiWEYHy/?=
 =?us-ascii?Q?tQG7ACO49Z+O3OoNYmfftcC5l0hg+J2nM7qhpKXPsCP9x/wmL9EBtpJTMB/H?=
 =?us-ascii?Q?QCMjgE03vzEatOIPYW6uyQVuMyr+J3S0KXg1XttiqEYZktXtEP0ksVCPEFnE?=
 =?us-ascii?Q?thbT8xqB2g1lF6w9YocXDEA8+GX38jmvOZSWRn6o?=
Content-Type: multipart/mixed;
	boundary="_005_BM1PR01MB4627FE9AB5A3EF362F6D73198DA1ABM1PR01MB4627INDP_"
MIME-Version: 1.0
X-OriginatorOrg: ltts.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BM1PR01MB4627.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: df7af867-53b3-4716-4a47-08dbd904dc3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 04:58:30.0869
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 311b3378-8e8a-4b5e-a33f-e80a3d8ba60a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tanJ+44EQBh1sUXLzIdxX1hM686ZK5tTKagZ/vKKOS4H2Nm7e/t82HrhMcDn+D0mamYLguqa0+8X7fMiUy4rXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3PR01MB6401
Message-ID-Hash: NXCAH45IGLWWFD6IDE3RECP52NY4EZXQ
X-Message-ID-Hash: NXCAH45IGLWWFD6IDE3RECP52NY4EZXQ
X-MailFrom: Anil.Antony@Ltts.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 not generating proper waveforms for terminal dft/fft testing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SLWBLNIISCN44LW4WKYKIRAQ3D5O26SL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--_005_BM1PR01MB4627FE9AB5A3EF362F6D73198DA1ABM1PR01MB4627INDP_
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB4627FE9AB5A3EF362F6D73198DA1ABM1PR01MB4627INDP_"

--_000_BM1PR01MB4627FE9AB5A3EF362F6D73198DA1ABM1PR01MB4627INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am using Ettus B210 for a 5G test bench project. It is not showing proper=
 output waveforms for Terminal DFT/FFT testing.
Also, when I use USRP B210 as OAI gNB, I am seeing few  "U" and "L". What c=
ould be reason for this performance issue?
My setup is:
HOST:    Intel i7, 8 core, 8GB Ram

  *   Ubuntu 18.04 LTS, Low latency kernel 4.15.0
  *   UHD 4.3.0
  *   USRP B210 with LP0965 Antenna, USB 3.0
  *   Operating in 3.6192 GHz with 46.080000MSps(TX/RX)
Kindly help me.

Regards,
Anil

[Ltts.com]

L&T Technology Services Ltd

www.LTTS.com

L&T Technology Services Limited (LTTS) is committed to safeguard your priva=
cy. Read the appropriate privacy notice<https://www.ltts.com/privacy-polici=
es-notices> applicable to you to know more about how LTTS collects, uses an=
d stores your personal data. Please visit our privacy policy<https://www.lt=
ts.com/data-privacy-policy> available on our website www.Ltts.com for more =
information about our commitment towards data privacy under applicable data=
 protection laws. This email may contain confidential or privileged informa=
tion for the intended recipient(s). If you are not the intended recipient, =
please do not use or disseminate the information, notify the sender and del=
ete it from your system.

--_000_BM1PR01MB4627FE9AB5A3EF362F6D73198DA1ABM1PR01MB4627INDP_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
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
/* List Definitions */
@list l0
	{mso-list-id:1506749791;
	mso-list-type:hybrid;
	mso-list-template-ids:2141231702 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using Ettus B210 for a 5G test bench project. I=
t is not showing proper output waveforms for Terminal DFT/FFT testing.
<o:p></o:p></p>
<p class=3D"MsoNormal">Also, when I use USRP B210 as OAI gNB, I am seeing f=
ew &nbsp;&#8220;U&#8221; and &#8220;L&#8221;. What could be reason for this=
 performance issue?<o:p></o:p></p>
<p class=3D"MsoNormal">My setup is:<o:p></o:p></p>
<p class=3D"MsoNormal">HOST: &nbsp;&nbsp; Intel i7, 8 core, 8GB Ram<o:p></o=
:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">Ubuntu 18.04 LTS, Low latency kernel 4.15.0<o:p></o:p></li><li class=
=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 lfo1">UHD=
 4.3.0<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0=
in;mso-list:l0 level1 lfo1">USRP B210 with
<b>LP0965 Antenna, USB 3.0</b><o:p></o:p></li><li class=3D"MsoListParagraph=
" style=3D"margin-left:0in;mso-list:l0 level1 lfo1">Operating in 3.6192 GHz=
 with 46.080000MSps(TX/RX)<o:p></o:p></li></ul>
<p class=3D"MsoNormal">Kindly help me.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Anil<o:p></o:p></p>
</div>
<br>
<img alt=3D"Ltts.com" src=3D"https://lttswallpaper.blob.core.windows.net/lt=
tswp/GPTW-email-sign-2.jpg"><br>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"" http:=3D"" www.LTTS.com=3D"" ??=3D"" target=3D"" _blank??=
=3D"">www.LTTS.com</a></p>
<p>L&amp;T Technology Services Limited (LTTS) is committed to safeguard you=
r privacy. Read the appropriate
<a href=3D"https://www.ltts.com/privacy-policies-notices" target=3D"_blank"=
>privacy notice</a> applicable to you to know more about how LTTS collects,=
 uses and stores your personal data. Please visit our
<a href=3D"https://www.ltts.com/data-privacy-policy" target=3D"_blank">priv=
acy policy</a> available on our website www.Ltts.com for more information a=
bout our commitment towards data privacy under applicable data protection l=
aws. This email may contain confidential
 or privileged information for the intended recipient(s). If you are not th=
e intended recipient, please do not use or disseminate the information, not=
ify the sender and delete it from your system.</p>
</body>
</html>

--_000_BM1PR01MB4627FE9AB5A3EF362F6D73198DA1ABM1PR01MB4627INDP_--

--_005_BM1PR01MB4627FE9AB5A3EF362F6D73198DA1ABM1PR01MB4627INDP_
Content-Type: image/png; name="USRP_B210_DFT_FFT_waveform.PNG"
Content-Description: USRP_B210_DFT_FFT_waveform.PNG
Content-Disposition: attachment; filename="USRP_B210_DFT_FFT_waveform.PNG";
	size=34480; creation-date="Mon, 30 Oct 2023 04:57:49 GMT";
	modification-date="Mon, 30 Oct 2023 04:58:29 GMT"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAABjgAAAN9CAYAAAAuTnAfAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAAEnQAABJ0Ad5mH3gAAIZFSURBVHhe7P3513zbWRh2pv+H9m/08rJDy3bj
xhgwBDBmkCmMJWwDHmgBooEVZ6Uar6SdDnGIQIBZSSdxxctugwyIyQ4mGFJITJbEZDCYYCiEuQLN
QldX05VezWjADKfrqeGt6VTVPlW73n32eT/PWp91v7dq1xn2dIbnrTr/UZMxfvf3fr+5e/+Hmze+
/b3N697y7gcX6431x3bkiPd+4EPNr77idc23/rMfbr75H38vQDYxr8T8EvOMEEIIIYQQQgghhBCi
e2RJcPzBH/5h89Q73te88e3vad757vc1v/M7H2w+8uEPP7hYb6w/tiO2J7brkvgPv/f7zXf/y59o
vuYbJ81f+5tf1vyVv/oFzed//ucDZBPzSswvMc/EfBPzjhBCCCGEEEIIIYQQIj2uTnBEEuHN73hf
874P/E7z4Q99qDdie2K7uiY54ibjd/yLFzef/9e+qHn2s58NcHMx38S8I8khhBBCCCGEEEIIIUR6
XJ3gePLp9zbvfd/7mw/+zu/0TmzXU/Pt65LkiL+kftZf+YLmL//lvwzwYGLeeeH3/2jz+3/wB6vZ
SAghhBBCCCGEEEIIcSquSnB88CP/oXnT297VfPADH+ittzz97uZ9v/Ph1Rafjre9873N3/4vv7b5
S3/pLwE8uOd85bh59W+/dTUjCSGEEEIIIYQQQgjxOOMP//APj3rP+z5y/++rEhxveef7m3fcvbv5
wPvf31vvfs97F98ySYnpS36++ct/5Yuaz/3czwV4cJ/37L/afNcP/PhqRjof8W2PH/v5f99830/8
UhEv/tcvb975ng+stkYIIYQQQgghhBBCiDyxndDY9pV/9+ebL/7bP73493f881ddnuD43d/7/eb1
b75rTSr0zW+/5a758O/+3mrL2+MDH/xw819/4//SfM7nfA5AMV/933xTc/fetKTBb73hLc3P/LtX
Nq958u1F/MZrnmp+9Ode3rz8VU/6aS0hhBBCCCGEEEIIkS32Exvhf/hHv958+l/9scV/f+lXnl78
++IExzvf96HmrU/fNe9/3/uyefULXrDQ9t41nn7nu5q3vuv0DcNfevkrm8//ouc0z3zmMwGK+dxn
/bXmR37q365mptMx/ZlZ84rXvbk1+fCQfm72quYnfuHfS3IIIYQQQgghhBBCiCyxn9z4kZc+uUho
xDc43vy2DzTP+tKXNJ/9N378sgRHPLT7tU+9s3n3u9/dvPc978ni5V/zNc1LP/qjF175rd/aWuZS
sZ2vm2/v7/1++823uCn3P/yT720++5l/sfmsz/qso775m7/5Km3LBNjx2Z/dfP3/9ILmI2e+dRbx
y0+8vvmFl7+mNenw0H7ql39z8V8hhBBCCCGEEEIIIa6N7eTGb736PYtkRiQ1IrkRSY5IdkTS46IE
x/s++JHmjW9+R/PeSHBksE5u/MaLXtT80gu+Y/HveO1dT7+j+Zbv+s2Fts918dRb39m8+/3tDxt/
41vvmr/53P+s/Wbjlhe+8IXNs5/97IvEZ9uWCbDv2V/0Jc0rXvvUaoY6HvH8i/iJqP1kQwm/9qon
m3/1C7+x2jIhhBBCCCGEEEIIIS6PdXIjHigez9yIhEb8LNX2z1RF4uOiBMcb3/6e5h3veGfznne9
6yrvevvTzS9+0Rc1L/uzH79Ibrz61a9eiH9HkuPXvuZr7hMcbZ/v4u6dd4tnhsS3T/bjhd//o81n
/cXPbT7jMz7jpG/5lm9p/twnfuKOr/gbf2Zh//V98dmDZX7V9zSvuLtr7hZe0XzPV+29n+TvNz+5
/9m//5OrZc694nuar9ouf9E6W9bxGV/VfM8r1su5a17xPV+1eW97/efWcWp7Mm3rV33PK1bLWPvJ
5u/vfAYu90/+yT9pPu/zPu/g9Xgt3tt/PcVnftYzm3/wT78v6Sef4kHf8SyMtqTDQ/vhn/215n0f
+NBqy4QQQgghhBBCCCGEuCzWCY6/+/xfXiQ04oHi65+pioRHfJMj/ts5wREP637dk29v3n13d5W7
t729+cUv/MJFcuO3fvan7pMb+0mOHxx98SLB0baMrl7/1NPNBz/yH1Z7soz3vP+Dzf/ra76p+fRP
//Sz9hMc03/wJ5pXfP8fa/7g3/5fFv/efm9ffHZ3ed/UvGy+TS/7ptX/f9PLmru7lzXftFPmnOUy
4ub/d3/l6rWv/O5FUmC93K/87lc0d6/47uYrt8p3W2fLOua+6WXz19bLXaxz/f7uOhbrP7qOU9uT
d1vvlwOZPec5z2l++Id/uPncz/3c+9fi3/FavLddtosv/8//q+Zt73zvaqY6HjkfNP5Pv+3bFv5/
3/Ktre+f829e/prmV3/zt1dbJoQQQgghhBBCCCHEZRHJjUhqREIjkhzbz92If68TH50THG971wea
p978tuZd73znxZ5+3evukxuv/KV/u0ho/Iuf/HfNJ/43P7Dw0//Hv1+8FomPKBNJjne+9bp1hre+
7enmTU/v3jB8yc/9SvNZo2c1n/Zpn3bWdoIjvrURyY3RZ338IsERTn2TIz67s7xvfFlz98R3NV9x
/9o3Ni+7e6L5rq/YKnPCV3zXE018G+GJl72seWL7c6eW23GdR9dx6nOxjruXNd94/9qZsjff1q9o
vuuJ45+DHL74i7+4mU6nzed8zucsxL/jtbayqT7jmaPmX7z4p1Yz1fH40Ef+Q/O///SvNq9649ta
kw5dRHLjAx/88MUJjle8/i3N9KdnHjYuhBBCCCGEEEIIIa6K+Pmp/W9rxP/Htzi2Ex+dEhzxkO7X
Pvl0846nn27u3vGOi7z9ta9tfvbTP7352dHoPrmxTnD8n7742xfWCY4QZSLJ8Qtf+IWLz7Yts4u4
Cfe7v/f7i/2Jh/g+7//7Lc2nfOqnNp/yKZ9y1naCY/wlH3uf2Fj72r/9MTtJjW3x2bZlbnxD89K4
Mf/lbe8d+vJv+Ibmy+PfX/5dyxv66899w0sXiYHFewux3Lvmpd+w/v9tp9d5dB2L/39p8w1bZTd2
1/flkXjY2Z5TTm3Phdu6+twTT8Q3O8LxZcA1/tbf+lvNi1/84uZHfuRHFv9uK9PV3/l739y8N+En
n372V17V/LsnXn+QcEj1bd/2bfd+50Mfuf/3JYmOl/ziE81Tb3/XasuEEEIIIYQQQgghhOge62dt
7D93I/4//r1+4HinBMe73/+h5vVPvrV559NPX2yd3HjVb/zGfRIjRFLjWd/8ooXtBEeIJEd8JpIc
bcvs4smn3tq8470fXOzPK1//5ubzvuD/0XzyJ39yku0ER3jXv/ojOwmO+P/4Rsd2mbX4bNsy157/
0rtFIuC5Le+d9NzVDf3nbv//XfPS56/+//kvXdzYv///Lcnr3F9HLHP+ueevvjVxuPznL5Ici/c6
7NOp7bl4W/f+/7mLbX5p8/ztz0AG8XDwl770pQvx77YyXT3z8/5a829/7bcW89WpiIRCJBbaEg4p
1omNfZckOCLREgkXIYQQQgghhBBCCCEujUhgrL+9EQmNr/y7P7/zM1XxDY9IeHRKcLz2qXc2b3vr
25p3vP3tF3v1j//4QXIjRXzm9T/zM63L7OLtb3tb8+onn148bPx//qff1/wnn/JpzSd90icl2U9w
RDJj/RyOdbLjWJIjPtu2zPBl3xk33Z9ovvPL2t8/6cu+c3EDf+ezz3/JfeLh7iXf2XznE3fNS56/
9f5cp3Xur2O1/Ce+88ta3n9+85Lt9xZlX9I8f72sI05tz1XbemC5ffv1Adf4zM/8zOaHfuiHmr/+
1//6Qvw7Xmsr28knf3Lz/H/w7Uk/+fS//9SvLH4iqi3pcE4kMsI60bH+/0sSHOGHfvJXFj+dJYQQ
QgghhBBCCCHEJRFJjHVSIxIckeyI/49/x89UrR84npzgiIdzv/a339K8421vu8qb3vjmg+TF4iHj
/9u37dj++aq1t775za3L7Op1T761ec2bnm6+5D/9L5pP/MRPTLaf4NgWP1m1fuD4+tkc2+/HZ9uW
ubl5f/hekvsb+i3vLXxZ851P7L7feZ376/j6ZdLi6+/LxDrumpd8/brs9ntfv0woxHv3r+06tT1X
b+uBrW1tfR+6+Qt/4S80P/iDP9h84Rd+4f1r8e94Ld7bLnuJz/8bX9a86g1vWc3Ex+Plr3pT83Oz
V7UmHFJ927d9e/PBD//uxYmNtX/9q69qnnjtU6stE0IIIYQQQgghhBCiW6yTGfFNjXjmRiQ84v/j
3/Fa/H98myM5wfHU0+9tnnzyqebpt771Kk/+9lMHiYtX/6P/rnn1M//Irn/+jw/KveWp69cf3vzU
m5tv/4GfaP6TP/9ZzSd8wickO5XgCOsHj8e3OOK/2+/FZ/eX96UvXN68f+GX7r7eyZe+cHFD/+gy
Fu+/pPm61f9ftM79dewt8xM+4UubF0bS4OvOvHf/2sap7cmyrQe+rnlJ12XCCd/7vd/bfMEXfMHB
6/FavLf/elef9Cl/vvn273vxaiY+Hu/7wIeaH/7ZX2tNOKS69psba7/xmqeaF//rl6+2TAghhBBC
CCGEEEKIbrH9rI3493ve95HFtzni3/FavBf/TkpwxEO5X/n6tzRve/Obr/bGN7zpIHGRmuB485NP
ti6zq9e/7g3N3/lv//vm4z/+4zs5l+AI20mO7YeOx2d3lvclqxvxX7L12iX2l7P3/1/3kviZqq9r
L5uq5XOx3Cde+CXL//+65Tc6vm7x3pcsEhrt7+05tT25tnVv/Yv6eOKFzZesy0MFvvLv/L3m7r0f
WM3Ix+Nlv/RE86uvfGNr0uGh/fi/+ffN29/1vtWWCSGEEEIIIYQQQgiRHn/4h394/zNUIX6iKsS/
49sb8V6USUpwxEO5X/uGJ5u3PvXU1X779U8eJC5SExxPvfGNrcvs6sd/8t80f+EvPqv5uI/7uE5S
Ehwhfq5qO7kR4rPby3pe3GiPZ2Tsecnz4v3nNN8R33pY/PuM53zH4ob+dzxn89pzviO++bBa5hPf
0Txn9frF62xZx7r87jLWnrf4Warle9uf213Hqe3Jua079XH3kuZ52+WhAp/8aZ/ZvOhlv7CakY/H
6596R/OT/8crmlc/+fbifvHXXzf32tWWCSGEEEIIIYQQQgiRHpG8CPFzVH/3+b+8+NZGiH/Ha+v3
zyY44mHcr3rj25un3vSm5s0ZvOF1bzxIXOwnON7yJR/bmuB48o1vbF1mF7GMb/qHL2w+7s9+fPOx
H/uxnbzwhS9snv3sZ18kPtu2TICz/syfaf7eN/+j5iO/+3urmbk94mHkP/RTv9LMXvVka9LhIb3y
jW9rvv8lv7zaMiGEEEIIIYQQQggh8sfZBMf7PviR5pWvfbI1WXCJSHD8q596cscvfuPzdxIc4d/8
oxcclHvNa9uX2cW/e/lvNp/7V7+4+dN/+k939rVf+7VXaVsmQIo//8xnNa9IeHB3PIvjX/3Cbywe
9B1Jhrbkw0P5vp/4pdVWCSGEEEIIIYQQQgiRP84mOF7/lrvmjb/9xsXzL3KIBMeLX/LkjrYExy+9
4DsOyr3mNe3L7GLyrf+s+TMf/+eaj/mYjwGoxv/9Yz+u+e//8XcvvqWREk+89qnFNygiyVDKv/zJ
X1ltjRBCCCGEEEIIIYQQ+eNkguPDv/t7zW+99k3Nm377twfhN3/zVc1X/p3/tvlTf+pPAVTnb3z5
f9687Z3vXc3QQgghhBBCCCGEEEI87jiZ4HjLO9/XvOrVr2uefMMbBuF//aGfaP7sJ31a8yf/5J8E
qM7Hfvyfa/759KWrGVoIIYQQQgghhBBCiMcdRxMcv/f7f9D81uve3Lzhda9r3vj611fvNa96TfNf
f+P/0jzjT/yJ5hnPeAZAlf7T//J5zXs/8KHVTC2EEEIIIYQQQgghxOONowmOd7/vg81vvvJ1zRsj
wTEAP/vzv9z8+b/47OajP/qjAar15z7ts5tfnP3maqYWQgghhBBCCCGEEOLxRmuCI5698crXv6V5
7atf07zhta+t3st//Ynm6/7Hb23+r8/4k80f/+N/HKBe//F/3PwXz/sfm6ff9f7VjC2EEEIIIYQQ
QgghxOOMnQRH/CzVm9/x3uY3XvXbzatf9erm9a95TdVe+Vuvav7ZD/xo8yV/+//dPONP/t+aP/bH
/hhA9SJZ+zf/n+PmB370p5sPffh3VzO4EEIIIYQQQgghhBCPK/6jH/uxH2u+5Xt+sPmH3/3DzT/7
4Z9qfupnf7H5uZ+r3//6L3+s+Vv/2d9r/tTHfkLzR//oHwUYnD/xMR/XfOFX/lfNf/cPvrv5n77t
+5v/+dv+NwAAAAB4UJFjKGXnGxwf9VEfBQAAAAAA0EsR733vexckOAAAAAAAgCpESHAAAAAAAABV
iZDgAAAAAAAAqhIhwQEAAAAAAFQlQoIDAAAAAACoSoQEBwAAAAAAUJUICQ4AAAAAAKAqERIcAAAA
AABAVSIkOAAAAAAAgKpESHAAAAAAAABViZDgAAAAAAAAqhIhwQEAAAAAAFQlQoIDAAAAAACoSkS3
BMd42tzd3e2aTZqRcsopp5xyyimnnHLKKaeccsopp5xyyimnnHLKKafcteUSRUhwKKeccsopp5xy
yimnnHLKKaeccsopp5xyyimnnHL9KJcooluCAwAAAAAAoLAICQ4AAAAAAKAqERIcAAAAAABAVSIk
OAAAAAAAgKpESHAAAAAAAABViZDgAAAAAAAAqhIhwQEAAAAAAFQlQoIDAAAAAACoSoQEBwAAAAAA
UJUICQ4AAAAAAKAqEd0SHKNRMx6Pd81fay1bQtv2jXu0ffAYmTeANfMB9M8jHpfjybSZjNvfAwAA
+i+iW4JjPG3u7u6au9msma1Nx+1lF0bNZDpbfmZh2oxby2Uy37777QqLbZ00o7ayMCSjyaK/T/t4
kd553nhg5g2Gpur5YH7eMCs4Bs0H3Irj9OVuNi6X881sIol5zGgS13GzZjJqfx8AAEqLuCDBkZ6k
GE/nFyDXnhSvLgg3SZJtp5e9OCkf8o2Jed1M40bQuj5m0/b62C83r7fpVRdze4mrY+vNXu6ccTNd
LWP/YnXZF2PZ0R9W5Vou3pflbpyIu4Xe3zh5yDrd9INts+hXCX/xmWPeWN4Q6GF7rG9itbh8W/s6
zrc/88hUPR/M+0nWBMeJ+SCh//XqPOJRjV/H6Qf14MfpjdFkunOeP5tOmvGZvpV1XI5GPTtejBbf
KpntnN/Pz9tbz19yjcvjlucz6+ut6+ZTAAC4hYgbJjgy3aRYXRBe8tdVvboxkduqXuLif71/o0X7
7CV9jpa7rE6323V5ARoXYtsXP7cql2Lrwmun3fdfd+PkQT34jZO29l33q/N1lGPeWN4Q6GF7rMZ+
vu3q8zjf/swjU/V8sOkredrwyHywmOvP979enUc8qvHb1m5LjtM38ODH6aX7cXh/8345Ns+dnw75
/H5dJ9sJjdF4cy6/KZtzXB63PJ9ZL/O6+RQAAG4h4pEmOEbNaH0SHr/rO5k000n83vB2mVvaWv+F
jl3gL17fuvDYvTBZu6JtWm+wtFzw5C6XZP256fy/W/sc65jNX7vf5+PLP1avvTeIGye5xuWx9k3r
9zlunCzHXe72uH7eaB9vV+j1ON/+zCMjwbHlSD9LPLfIMR8sGb9LqeP3+PIdp2/g7Li8gaP9eX78
P/NtyyzH6fjmxlrL+5e5fpzHtzfa2uHgfD7ruDxud71Hln/FtRoAAFwrIn+CY3XC3e6Ci6crTpqP
XQAtT9bn2zLf1lj2Zvu2LhwWRrtf/Z6/3/oV8dH8hD8uylflFl+v378Qube6OJi7/CL3+A2g+33b
+f+W/brwBtLJxMrW67nLpdlceMXn131m+e/x1j4fvwBs3742XbftxgZw4yR9XJ6T3r5tjs4b4/ip
t9jGzXbFb5Rvym3GdquDZSbOLws55o251fycq58cq8/2cXS+XJrUcb4qP5+f9+t5t9028+HiZ0G2
yh2b708vrweqng86tsdZR+aDxHOL3fng/LFz2af35yzjdyN1/B5pt1XZw+1r03XbbmwAx+lu57un
XdZ/li4/Tq+sxtL9fhzMA1vz0Lzs/Tx08qeYMo3zY/bG/7H6u6Zez7fvkXF5xbUaAABcK+JRfoNj
eSM1tm2+L9sXKvMT+81fXq1O4uPiZvXa+qeddi5cVtsXJ/vr9dwvv+2Cb11+7vILgeN1u1z39npX
Fyvb27fYj7hZtPlcmtT15i6XauvCK/Zxsdx4LZazva4jF2hzZy8M79vvwovHW1ltV803Tu7Hzclx
meJY+x7vb9sW27FfZl6/0/3fBY/XFtt7rP+eao/VNs4/e3J+Wcsyb8yt1rEjbthcdOO47+N8q+xW
PYeo683N8tVnVstcb2N7G6Ysrweqng+6tEeKrf5y/1r6T6os1rvVd09/7khfN363pI7ftnZbcpy+
gbPjMmzmv/1x2b0fHO9XKfbH5cK8frscp5eW23E4LlfbN/9sJN4Wn72/+X+knnKN8yN2557c43Ju
vf338258k3a/fdvGZfp8CgAAtxBRTYJjeYK9p+XCd1vrBdD69fnnT11ktl8gHO7TyXJHTvYXf2G2
vmC60LEL/NaLjPlF2fpCbWE2f/+iC+zt/d/8O7Zhtx5yl0u1feEV/55/frK+gbK9rlW5o4718fXn
um7XA1iNk3pvnKzbPMc+HLkAT1z+YjsW/aT9/W3LbT7ct3P70t6/t/vo9utLOeaNjzpYRtyYSKuX
Q6njN7VcqtRxPi+7GhenbzatPpPSHknL64Gq54MO7ZHkyHx/8i+xNxZ9dHudi+0/Urfr85WWcxPj
dy11/B5pt3uO01klHKfb23vVZlf1g7b3TzsYlycst/vYvi23/3iCY/dz5/p8lnHeZjXvbPZ5e6xs
/n35uDyWvN1v3yPjMnE+BQCAW4gom+BYn7DvnCTvlb/ihtKxC6DzJ//Ht303sXCuXPcLjGTruptf
HK7XHX9FvLi5sr3e+/o7LNe9Trf3d/Pvwwuq3OVS7V4wL9tgvZ/b6zp+Yb3bvm3vXdYXb67yGych
uc3PzhvHL8B3/rLziMV27Cxv9XqMm+hDB8s+3Oblvhxrj+2+uPveqf53O6vt6bze1PGbWi5V6jjf
Khtms8Vf98Zfu+/W+/5nNg7bI2V5PVD1fNClPeZS54Od+X6d8Dz/TcaD+WBVt7v9b7VNq2152Hpf
1dfgxm9buy219oOd9xynO7t6XO71gwvG5bI/rcuf7s8H43L9+ny9qcfppeV+HfaX9v1db+ODtuF6
ztnZh+3t2/z78nGZ2r7XzacAAHALEY84wZFwIbe/bffWJ/rH9/GyC4xulr81vNmu+J3h3d/KPX4j
4NQNguNS9zd3uVR7F16L/tW2ru43Tpbb0/6ZXqj6xsnSso4T+uTZeaOlfeOnJQ7KtVtsx165dftv
Jwo3rx/203X59vZY9cXYnlZd+/31ju3HaX0f56vyi58VWbbHxnY/67h9Z5fXAwO9kdraHpfMBwvH
17Ntsc6dMtufWy17tU2X9efrXbbe1Hru2B5npY7fY+3mOH0TDz4ujy8v5fx0sc69z67bP/U4vbTc
jt4mOFqTG6Fje5yVurzr5lMAALiFiLIJjhQlExxnt/14ueUFWtcLjOst1nu/PakXLOmOXXjuv567
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
QoIDAAAAAACoSoQEBwAAAAAAUJUICQ4AAAAAAKAqERIcAAAAAABAVSIkOAAAAAAAgKpESHAAAAAA
AABViZDgAAAAAAAAqhIhwQEAAAAAAFQlQoIDAAAAAACoSoQEBwAAAAAAUJUICQ4AAAAAAKAqERIc
AAAAAABAVSIkOAAAAAAAgKpESHAAAAAAAABViZDgAAAAAAAAqhIhwQEAAAAAAFQlQoIDAAAAAACo
SoQEBwAAAAAAUJUICQ4AAAAAAKAqERIcAAAAAABAVSIkOAAAAAAAgKpESHAAAAAAAABViZDgAAAA
AAAAqhIhwQEAAAAAAFQlQoIDAAAAAACoSoQEBwAAAAAAUJUICQ4AAAAAAKAqERIcAAAAAABAVSIk
OAAAAAAAgKpESHAAAAAAAABViZDgAAAAAAAAqhIhwQEAAAAAAFQlQoIDAAAAAACoSoQEBwAAAAAA
UJUICQ4AAAAAAKAqERIcAAAAAABAVSIkOAAAAAAAgKpESHAAAAAAAABViZDgAAAAAAAAqhIhwQEA
AAAAAFQlQoIDAAAAAACoSoQEBwAAAAAAUJUICQ4AAAAAAKAqERIcAAAAAABAVSIkOAAAAAAAgKpE
SHAAAAAAAABViZDgAAAAAAAAqhIhwQEAAAAAAFQlQoIDAAAAAACoSoQEBwAAAAAAUJUICQ4AAAAA
AKAqERIcAAAAAABAVSIkOAAAAAAAgKpESHAAAAAAAABViZDgAAAAAAAAqhIhwQEAAAAAAFQlQoID
AAAAAACoSoQEBwAAAAAAUJUICQ4AAAAAAKAqERIcAAAAAABAVSIkOAAAAAAAgKpESHAAAAAAAABV
iZDgAAAAAAAAqhIhwQEAAAAAAFQlQoIDAAAAAACoSoQEBwAAAAAAUJUICQ4AAAAAAKAqERIcAAAA
AABAVSIkOAAAAAAAgKpESHAAAAAAAABViZDgAAAAAAAAqhIhwQEAAAAAAFQlQoIDAAAAAACoSoQE
BwAAAAAAUJUICQ4AAAAAAKAqERIcAAAAAABAVSIkOAAAAAAAgKpESHAAAAAAAABViZDgAAAAAAAA
qhIhwQEAAAAAAFQlQoIDAAAAAACoSoQEBwAAAAAAUJUICQ4AAAAAAKAqERIcAAAAAABAVSIkOAAA
AAAAgKpESHAAAAAAAABViZDgAAAAAAAAqhIhwQEAAAAAAFQlQoIDAAAAAACoSkTmBMe4md7dNXdH
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
b/R9HipFPR+R+3yo5/N9KcbllfSroYqQ4DhnKCeM2fdj1ExmMTFMm3Hr+ytDmYBL9YNS601t31TJ
/aBbv4oD02wyai/TRal6zj0+ivWXRH2fD3LXX/b9LTTvllreqly2cZ5b3/tL7uWlGsp+JB8He34+
VKz+Mis13lblHnwe6nu75d6+vrdHqlL9NPd6uU6pflpqXD426vmIzOdDq3K9ne9LMS6vo18NVoQE
xzlDOWG8wX6MpxkPYH1Xqh+UWu9cUvum6tAPUtc7Gk+a6WTcjFre66xUPeceHwX7S5K+zwe56+8G
+1tk3i24vKzjPLe+95cb9L8kQ9mPudTjUa/PhwrWX1YFx1uReajv7ZZ7+/reHqlK9dPc6+Vqg5g3
+j4PlaKej8p9PtTr+b4U4/Jq+tUwRUhwnDOUE8Yb7MdoMmvuZpPTE8NQJuBS/aDUeueS2jdVlxOZ
nOtNVaqec4+Pgv0lSd/ng9z1d4P9LTLv9n15pfS9v5Sq5wH1l9TjUa/PhwrWX1YVzM9ZPbbt00/b
pdZL7vVSJ+PyYajno3p9PjQU6g9aRUhwnDOUE8Yb7MfiADYdt753bygTcKl+UGq9c0ntm6pDP8i6
3lSl6jn3+CjYX5L0fT7IXX832N8i827fl1dK3/tLqXoeUH9JPR71+nyoYP1lVcH8nNVj2z79tF1q
veReL3UyLh+Gej6q1+dDQ6H+oFWEBMc5QzlhLLUfQ5mAS9VfqfXm1vd+UKqec9dL3/vLY+sHpfY3
93r7vrxS+t5f9L9+GUp7lDKU+TnVY9s+/bRdar3kXi91Mi4fhnq+jn51HfUHrSIkOM4ZygnjLfZj
NG7GozMP5hnKBFyqH5Rab0hp31Rd+kHSetcPMZs1k1Hb+x2Vqufc46Nkf0nR9/kgd/3dYn8zz7tJ
v0Gaez+Sl5d5nM9l/c3VvveXW/S/FBXsR3I/SD0O9vl8qNR6cys23vLPQ0n63m4dti/vcSa9PYr8
xnapfpp7vVyp0PlL7nmj7/NQKcXmvwpkPR8qdPztu0c4LvMez/WroYqQ4DhnKCeMufdjNbHenZtc
hzIBl+oHpdab2r6pUvtBx34V5WaThJtP5xSu52zjo9R+pMq9v7nlrr/c+9txfJxdb+7lpbpg+7KM
89T9TVVJf8m2vFR934/UfnCjctn2I1Wp9eZWarxttW+WeShV39vtgvo7WTZ3e6SuN7dS/TT3erlO
aj9NldqfU/tLqtzLG4rUeinVbqXk3t+t5T3o8bfvhtJfUqX2q1T61WBFSHCcM5QTxtz7kTrRDGUC
LtUPSq33RgeSs8tKXu+oGU9nzWw2bcat73dUuJ6zjY9S+5Gq7/NB7vrLvb+p4yN1vbmXlyp5eZnH
eer+pqqkv2RbXqq+70dqP7hRuWz7karUenMrNt4yz0Op+t5uqdu3KpdvfCS2R+p6cyvVT3OvlysV
On9JHkeJci9vKFLrpVS7lZJ9fwsdf/tuKP0lVWq/SqZfDVWEBMc5QzlhvMF+jMbjZjw+k/UcygRc
qh+UWu9cUvum6tAPsq43Val6zj0+CvaXJH2fD3LX3w32N/+8Ozr/dd/c+1G0HyTsb6q+95dS9VzF
fqT1g9TjUa/Ph0qtN7cK5uesBrV9BY4zCxnn+1Sl+mnu9dJDj+18rceqmP/K6PX50FA8yvorcDyn
OhESHOcM5YSx1H4MZQIuVX+l1ptb3/tBqXrOXS997y+PrR+U2t/c6+378krpe3/R//plKO1RylDm
51SPbfv003ap9ZJ7vdTJuHwY6vk6+tV11B+0ipDgOGcoJ4yl9mMoE3Cp+iu13tz63g9K1XPueul7
f3ls/aDU/uZeb9+XV0rf+4v+1y9DaY9ShjI/p3ps26eftkutl9zrpU7G5cNQz9fRr66j/qBVhATH
OUM5YSy1H0OZgEvVX6n15tb3flCqnnPXS9/7y2PrB6X2N/d6+768UvreX/S/fhlKe5QylPk51WPb
Pv20XWq95F4vdTIuH4Z6vo5+dR31B60iZrN4vspMggMAAAAAAKhDhAQHAAAAAABQlQgJDgAAAAAA
oCoREhznDOU3TXPvR+pv/w3lNyqz94NRMxqPm/HcqPX9lezrTZS7nnPvR9+3L9VQ9iNVqfGbKnf9
DWUcGW/tSrVHqtzLS9X3/SjVbn3fj2IKnQ+ltkepes7dX3J7bO2RSr0MXM/nq9zzRt+XV0qp9s0t
93qHUi+5FRtHifNV3xWrP65SoJ4jJDjOyT1Rl1LqgDOUCSl7Pxg30/l+3N3Nmsmo7f2V7OtNlLue
c+9H37cv1VD2I1Wp8Zsqd/0NZRwZb+1KtUeq3MtL1ff9KNVufd+PYgqdD6W2R6l6zt1fcnts7ZFK
vQxcz+er3PNG35dXSqn2zS33eodSL7kVG0eJ81XfFas/rlKgniMkOM7JPVGXUuqAM5QJKXs/kOBo
lVqu79uXaij7karU+E2Vu/6GMo6Mt3al2iNV7uWl6vt+lGq3vu9HMRIcrXL3l9weW3ukUi8DJ8Fx
ldzLK6VU++aWe71DqZfcio0jCY5WQ+lXfVegniMkOM7JPVGXUuqAM5QJKXs/kOBolVqu79u3MGpG
504mhrIfqUqN31S5628o46iKfppgKO2RKvfyUvV9P0q1W9/3YyF1vs94XJDgaJe7v+Q2qPbI2J8H
VS99l3MeSiXBcZXcyyulVPvmlnu9Q6mXhVLXvwnrTV6eBEerov3qESlQzxESHOfknqhLKXXAGcqE
lL0fSHC0Si3X9+27b98z2ziU/UhVavymyl1/QxlHve+niYbSHqlyLy9V3/ejVLv1fT+S5/vMx4VS
50Op7ZG9nhPl7i+5DaY9MvfnwdRL3+Weh1L1fL7KPW/0fXmllGrf3HKvdyj1knt+Sd6PxPV2Xp4E
x45i/eqRKVDPERIc5+SeqEspdcAZyoSUvR+MmsksDjjTZtz6/kr29SbKXc+596OS7YsTlNlk1F4m
DGU/UuXe39xuVH/Vj6O+70eqobRHqtzLS9X3/SjVbpXsR+pxK9txodT5UGp75F5vqtz9JbehtEfu
/jyUeum73O2WrOfzVWq5VH1fXiml2je33OsdWL08+PVv6nqT6yVxvuq73P0g9/JoV6CeIyQ4zsk9
UZdS6oAzlAnpBv1gPC1wgpwqdz3n3o++b9/caDxpppNxM2p5795Q9iNVqfGbKnf9DWUcVdBPkwyl
PVLlXl6qvu9HqXbr+37Mpc73WY8Lc0XOh1Lb4wb1nCR3f8ltQO2RtT8PqF76Lvc8lKrX81XueaPv
yyulVPvmlnu9Q6mXuVLXv0nr7bC8pPmq73L3g4L96lEpUM8REhzn5J6oSyl1wBnKhHSDfjCazJq7
2eT0AewG602Su55z70ffty/VUPYjVanxmyp3/Q1lHBlv7Uq1R6rcy0vV9/0o1W5934+CipwPpbZH
qXrO3V9ye2ztkUq9DF6v56vc80bfl1dKqfbNLfd6h1IvuRUcR0nzVd8VrD+uUKCeIyQ4zsk9UZdS
6oAzlAnpBv1gccCZjlvfu3eD9SbJXc+596Pv25dqKPuRqtT4TZW7/oYyjoy3dqXaI1Xu5aXq+36U
are+70dBRc6HUtujVD3n7i+5Pbb2SKVeBq/X81XueaPvyyulVPvmlnu9Q6mX3AqOo6T5qu8K1h9X
KFDPERIc5+SeqEspdcAZyoRUqh+UWm/ues69H33fvlRD2Y9UpcZvqtz1N5RxZLy1K9UeqXIvL1Xf
96NUu/V9P/quVLuVqufc/SW3x9YeqdQLoVQ/yD1v9H15pZRq39xyr3co9ZKbcXQd9VenAvUcIcFx
Tu6JupRSB5yhTEi36AejcTMenXlw1S3WmyJ3Pefej75v3/1DvWbNZNT2/spQ9iNVqfGbKnf9DWUc
9b6fJhpKe6TKvbxUfd+PUu3W9/1Inu8zHxdCifOh1PbIXs+JcveX3AbTHpn782Dqpe/S2y37szr6
PF/lnjf6vry5Is9iKdW+ueVe71Dqpdj1b+J6u9RLynw1V+qZRkly94Ni/arn9ZxbgXqOkOA4J/dE
XUqpA85QJqQb1d/duX3Jvd5Uuev5RvXX9+2L9p1NTpxUDGU/UuXe39xuVH/Vj6O+70eqobRHqtzL
S9X3/SjVbpXsR+pxK/dx4cHPh1LbI/d6U+XuL7kNpT1y9+eh1EvfpbbbVrksYyl1eaX6QWq5VJUs
L1v7pirVvrnlXu/A6iXbcSF1P1LXe8HyTpZNLVdK6v6myr28VH2v59wK1HOEBMc5uSfqUkodcIYy
Id2o/s5OcLnXmyp3Pd+o/nq7fR81asbTmFynzbj1/ZWh7EeqUuM3Ve76G8o46n0/TTSU9kiVe3mp
+r4fpdqt7/uRPN/f5rjw4OdDqe2RvZ4T5e4vuQ2mPTL358HUS991O8/OdkMpdXml+kFquVSVLO/B
bxiWat/ccq93KPVS7Pq327x2dnmrcmfHR2q5UnL3g9zLS9X3es6tQD1HSHCck3uiLqXUAWcoE9IN
+sFoPG7G4zN/FXCD9SbJXc+596Pv25dqKPuRqtT4TZW7/oYyjoy3dqXaI1Xu5aXq+36Uare+70dB
Rc6HUtujVD3n7i+5Pbb2SKVeemiU9edAej1f5Z43+r68hbztm6RU++aWe71DqZfcCo6jpPlqocA4
SlWw/vLrcT3nVqCeIyQ4zsk9UZdS6oAzlAmpVD8otd7c9Zx7P/q+famGsh+pSo3fVLnrbyjjyHhr
V6o9UuVeXqq+70epduv7fvRdqXYrVc+5+0tuj609UqkXQql+kHve6PvySinVvrnlXu9Q6iU34+g6
6q9OBeo5QoLjnNwTdSmlDjhDmZBK9YNS681dz7n3o+/bl2oo+5Gq1PhNlbv+hjKOjLd2pdojVe7l
per7fpRqt77vR9+VardS9Zy7v+T22NojlXohlOoHueeNvi+vlFLtm1vu9Q6lXnIzjq6j/upUoJ4j
JDjOyT1Rl1LqgDOUCalUPyi13tz1nHs/+r59qYayH6lKjd9UuetvKOPIeGtXqj1S5V5eqr7vR6l2
6/t+9F2pditVz7n7S26PrT1SqRdCqX6Qe97o+/JKKdW+ueVe71DqJTfj6Drqr04F6jlCggMAAAAA
AKhKhAQHAAAAAABQlQgJDgAAAAAAoCoREhzn5P4twWSjZjQeN+O5Uev7a4nlSv0mYu7fXsveHj2v
v+z7myi53Xpef8ZHu+z1nCj38lJp33ZD2Y9Upeqv1P7mbrfU+TT3evve/0r1g76vN5V6aWf72qmX
drnX23el9jf3evve73OPj2LLe2TXg6lyr7dU/ZVab6qh1Espudsj9/KyXx8lLq/vstfzeRG3SXDM
d2Y6u2vu5ju0MJs2k1FLuXnjTaazhHIFFZsYxs10US+zM3WSWC73fqR22NwdO3t79Lz+su9vouR2
63n9GR/tstdzotzLS6V92w1lP1KVqr9S+5u73VLn09zr7Xv/K9UP+r7eVOqlne1rp17a5V5v35Xa
39zr7Xu/zz0+ii3vkV0Ppsq93lL1V2q9qYZSL6Xkbo/cy8t+fZS4vL7LXs/nReRPcKx25G66yTiN
xtOWBho1k0iCzCbNePH6qBlPItnRs4YsNjGkduxHdsDO3h49r7/s+5soud16Xn/GR7vs9Zwo9/JS
ad92Q9mPVKXqr9T+5m631Pk093r73v9K9YO+rzeVemln+9qpl3a519t3pfY393r73u9zj49iy3tk
14Opcq+3VP2VWm+qodRLKbnbI/fysl8fJS6v77LX83kR2RMc42k0xrQZt70+HW9eWyQ99nd41Zjb
5Uq7ycQwakZnO2tqx35kB+zs7dHz+su+v4lyT8Cl6s/4aJe9nhPlXl4q7dtuKPuxkHBcLVV/N9nf
BJ3aLeN5Se7+kns/htIP+r7eVOqlne1rp17a5V7vQspxoZCb7G+C3Ovte7/PPT6KLe+RXQ+myr3e
UvVXar2phlIvCwWOC53aI2H7crdv9uujxOX1XfZ6Pi8ic4Jj862M/d8LGy2+nbFJfJxMhLS8Xkz2
iWHdYc81dmrHfmQH7Ju1R0/rL/v+Jso9AZeqP+OjXfZ6TpR7eam0b7uh7Mf9OD+zjaXqL/v+Jkpu
t8T6S51Pc/eX3PsxlH7Q9/WmUi/tbF879dIu93qTjwuFZN/fRLnX2/d+n3t8FFte4vnLUOo5Ve71
lqq/UutNNZR6KXVcSG6PxO3L3b6p80vn/TizvL7LXs/nRTxwgmPdSKnleuBGE1IMvNlk1F5mYVVH
Z5M9ieVutB9nO2zujp17P/pef9n3N1Fyu/W8/oyPdtnrOVHu5aXSvu0Gth9nj6ul6i/3elN1bN9s
5yW5+0vu/RhKP+j7elOpl3a2r516aXej9Z4/LhSSe39T3aiee9vvc4+PYst7ZNeDqXKvt1T9lVpv
qoHVy4MfF1L3N3X7crdv9uujxOX1XfZ6Pi8ic4Lj3Dcz2hIcm3/HZwaf4JgbjSfNdHL+qfip32ZJ
KnejCS51osnWsW/QHr2uvxvsb5IO7dbr+pszPlrcoJ6T5F5eKu3bbij7MZd0XC1VfzfY3yQd2i3r
eUnu/pJ7P4bSD/q+3lTqpZ3ta6de2uVe71zqcaGIG+xvktzr7Xu/zz0+Ci7vUV0Ppsq93lL1V2q9
qYZSL3NFjgsd2iNp+3K371zu66Ok5fXdDer5nIhuCY7VczN27H8LY11m7yHjsXMSHN0s6mK/flsk
lcu9H6kdNnfHvkF79Lr+brC/STq0W6/rb874aHGDek6Se3mptG+7oexHqlL1V2p/c7fbXNJ8mnu9
fe9/pfpB39ebSr20s33t1Eu73Ovtu1L7m3u9fe/3ucdHweU9quvBVLnXW6r+Sq031VDqpZTc7ZF7
eXO5r4+Sltd3N6jncyLyJzjmFpmzxddqlmbTcTOORmpNcOx9dqdcDxScGBZ1kfDA9aRyufcjtcPm
7tg3aI9e198N9jdJ1wm4r/U3Z3y0uEE9J8m9vFTat91Q9iNVqfortb+5220uaT7Nvd6+979S/aDv
602lXtrZvnbqpV3u9fZdqf3Nvd6+9/vc46Pg8h7V9WCq3OstVX+l1ptqKPVSSu72yL28udzXR0nL
67sb1PM5Ed0SHFdYfM1mK6Fx7Gs3vfs6zlAmhtz7kdphc3fsUu1Rqv5K7W/f220o2/fY6jn38lJp
33ZD2Y9Upeqv1P7mbrdUudfb9/5Xqh/0fb2p1Es729dOvbTLvd6+K7W/udfb936fe3z0fXlDqedU
Q6m/UutNNZR6KSV3e+ReXqpS6y2lwP5GPFCCY/kk+J2Hvay+DbK7w6snxvcpW5V9Ylh9eyXlWyqj
cTMeJTzAJ6Vc7v1I7bC5O3b29pjrc/3dYn9TdGm3PtdfMD4O3aKeU+ReXirt224o+5F6XC1Vf9n3
N1Fyu2U+L8ndX3Lvx1D6Qd/Xm0q9tLN97dRLu9zr7XJcKCH7/ibKvd6+9/sO46PIb993Wd5Argez
PgMhd3uUqr9S6001lHrpcFxI7ad5543E7cvdviH39VHK8vruFvV8RsQNEhzjZjLd6qTzxll0tNn+
tzJWHXA2mTfe8v93f8aqJ240IS1+uivh6f6HSaA9qeVutB9nO2zujn3D9uhl/eVeb6qO7dv3/md8
7Mm9H6lyLy+V9m03sP2IcX7yuFqq/nKvN1XH9j1bf1vlTi4zdb2pcu/HUPpB39ebSr20s33t1Eu7
G6337HxaSu79TXWjeu5tv+9Yrobzg5Nlh1LPqVLXm6pU/ZVab6qB1cvZ48JWuZPb2LHc2f3tuH3Z
2veG+5FtG0vIXc8JIm7yDY7dZ3DMV7Cd8NgxaibTSGqsys6m/fsrkdwTQyRy5vs8O0j47Ok4UM6W
u9EElzpAs3XsG+1Hb+sv93pTdWzfvvc/42NP7v1IlXt5qbRvu6HsR+pxtVT9Zd/fRMntdpvzkmz9
Jfd+DKUf9H29qdRLO9vXTr20y73e1Pm0lOz7myj3evve7zuW6+35Qer2DaWeU6WuN1Wp+iu13lRD
qZdS9zGT26Pb9mVr39z7kbq8vstdzwkibpLgGJTsE0O60XjcjMfn/2omqVzu/eg4QLN17Bu0R6/r
7wb7m6RDu/W6/uaMjxY3qOckuZeXSvu2G8p+pCpVf6X2N3e7zSXNp7nX2/f+V6of9H29qdRLO9vX
Tr20y73eviu1v7nX2/d+32l8jM7/bFLu8dZhecO5Hkyo51S526NU/ZVab6qh1Esnqf203/NGqtzX
R0nL67sb1PM5ERIc5xSdGDLKvR+pHTZ3xy7VHqXqr9T+9r3dhrJ9j62ecy8vlfZtN5T9SFWq/krt
b+52S5V7vX3vf6X6Qd/Xm0q9tLN97dRLu9zr7btS+5t7vX3v97nHR9+XN5R6TjWU+iu13lRDqZdS
crdH7uWlKrXeUgrsb4QExzlDmRhy70dqh83dsUu1R6n6K7W/fW+3oWzfY6vn3MtLpX3bDWU/UpWq
v1L7m7vdUuVeb9/7X6l+0Pf1plIv7WxfO/XSLvd6+67U/uZeb9/7fe7x0fflDaWeUw2l/kqtN9VQ
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

--_005_BM1PR01MB4627FE9AB5A3EF362F6D73198DA1ABM1PR01MB4627INDP_
Content-Type: text/plain; name="USRP_B210_verification_logs.txt"
Content-Description: USRP_B210_verification_logs.txt
Content-Disposition: attachment; filename="USRP_B210_verification_logs.txt";
	size=11516; creation-date="Mon, 30 Oct 2023 04:58:20 GMT";
	modification-date="Mon, 30 Oct 2023 04:58:29 GMT"
Content-Transfer-Encoding: base64

YWRtaW5zQE1ZVFNQMDAxOTI6L3Vzci9sb2NhbC9saWIvdWhkL2V4YW1wbGVzJA0KYWRtaW5zQE1Z
VFNQMDAxOTI6L3Vzci9sb2NhbC9saWIvdWhkL2V4YW1wbGVzJCB1aGRfdXNycF9wcm9iZQ0KW0lO
Rk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNy41LjA7IEJvb3N0XzEwNjUwMTsgVUhE
XzQuMy4wLkhFQUQtMC1nMWY4ZmQzNDUNCltJTkZPXSBbQjIwMF0gRGV0ZWN0ZWQgRGV2aWNlOiBC
MjEwDQpbSU5GT10gW0IyMDBdIE9wZXJhdGluZyBvdmVyIFVTQiAzLg0KW0lORk9dIFtCMjAwXSBJ
bml0aWFsaXplIENPREVDIGNvbnRyb2wuLi4NCltJTkZPXSBbQjIwMF0gSW5pdGlhbGl6ZSBSYWRp
byBjb250cm9sLi4uDQpbSU5GT10gW0IyMDBdIFBlcmZvcm1pbmcgcmVnaXN0ZXIgbG9vcGJhY2sg
dGVzdC4uLg0KW0lORk9dIFtCMjAwXSBSZWdpc3RlciBsb29wYmFjayB0ZXN0IHBhc3NlZA0KW0lO
Rk9dIFtCMjAwXSBQZXJmb3JtaW5nIHJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QuLi4NCltJTkZPXSBb
QjIwMF0gUmVnaXN0ZXIgbG9vcGJhY2sgdGVzdCBwYXNzZWQNCltJTkZPXSBbQjIwMF0gU2V0dGlu
ZyBtYXN0ZXIgY2xvY2sgcmF0ZSBzZWxlY3Rpb24gdG8gJ2F1dG9tYXRpYycuDQpbSU5GT10gW0Iy
MDBdIEFza2luZyBmb3IgY2xvY2sgcmF0ZSAxNi4wMDAwMDAgTUh6Li4uDQpbSU5GT10gW0IyMDBd
IEFjdHVhbGx5IGdvdCBjbG9jayByYXRlIDE2LjAwMDAwMCBNSHouDQogIF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQogLw0KfCAgICAgICBEZXZp
Y2U6IEItU2VyaWVzIERldmljZQ0KfCAgICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCnwgICAgLw0KfCAgIHwgICAgICAgTWJvYXJkOiBCMjEw
DQp8ICAgfCAgIHNlcmlhbDogMzEyOTAyMQ0KfCAgIHwgICBuYW1lOiBNeUIyMTANCnwgICB8ICAg
cHJvZHVjdDogMg0KfCAgIHwgICByZXZpc2lvbjogNA0KfCAgIHwgICBGVyBWZXJzaW9uOiA4LjAN
CnwgICB8ICAgRlBHQSBWZXJzaW9uOiAxNi4wDQp8ICAgfA0KfCAgIHwgICBUaW1lIHNvdXJjZXM6
ICBub25lLCBpbnRlcm5hbCwgZXh0ZXJuYWwsIGdwc2RvDQp8ICAgfCAgIENsb2NrIHNvdXJjZXM6
IGludGVybmFsLCBleHRlcm5hbCwgZ3BzZG8NCnwgICB8ICAgU2Vuc29yczogcmVmX2xvY2tlZA0K
fCAgIHwgICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQp8ICAgfCAgICAvDQp8ICAgfCAgIHwgICAgICAgUlggRFNQOiAwDQp8ICAgfCAgIHwN
CnwgICB8ICAgfCAgIEZyZXEgcmFuZ2U6IC04LjAwMCB0byA4LjAwMCBNSHoNCnwgICB8ICAgICBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KfCAg
IHwgICAgLw0KfCAgIHwgICB8ICAgICAgIFJYIERTUDogMQ0KfCAgIHwgICB8DQp8ICAgfCAgIHwg
ICBGcmVxIHJhbmdlOiAtOC4wMDAgdG8gOC4wMDAgTUh6DQp8ICAgfCAgICAgX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCnwgICB8ICAgIC8NCnwg
ICB8ICAgfCAgICAgICBSWCBEYm9hcmQ6IEENCnwgICB8ICAgfCAgICAgX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCnwgICB8ICAgfCAgICAvDQp8
ICAgfCAgIHwgICB8ICAgICAgIFJYIEZyb250ZW5kOiBBDQp8ICAgfCAgIHwgICB8ICAgTmFtZTog
RkUtUlgyDQp8ICAgfCAgIHwgICB8ICAgQW50ZW5uYXM6IFRYL1JYLCBSWDINCnwgICB8ICAgfCAg
IHwgICBTZW5zb3JzOiB0ZW1wLCByc3NpLCBsb19sb2NrZWQNCnwgICB8ICAgfCAgIHwgICBGcmVx
IHJhbmdlOiA1MC4wMDAgdG8gNjAwMC4wMDAgTUh6DQp8ICAgfCAgIHwgICB8ICAgR2FpbiByYW5n
ZSBQR0E6IDAuMCB0byA3Ni4wIHN0ZXAgMS4wIGRCDQp8ICAgfCAgIHwgICB8ICAgQmFuZHdpZHRo
IHJhbmdlOiAyMDAwMDAuMCB0byA1NjAwMDAwMC4wIHN0ZXAgMC4wIEh6DQp8ICAgfCAgIHwgICB8
ICAgQ29ubmVjdGlvbiBUeXBlOiBJUQ0KfCAgIHwgICB8ICAgfCAgIFVzZXMgTE8gb2Zmc2V0OiBO
bw0KfCAgIHwgICB8ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KfCAgIHwgICB8ICAgIC8NCnwgICB8ICAgfCAgIHwgICAgICAgUlggRnJv
bnRlbmQ6IEINCnwgICB8ICAgfCAgIHwgICBOYW1lOiBGRS1SWDENCnwgICB8ICAgfCAgIHwgICBB
bnRlbm5hczogVFgvUlgsIFJYMg0KfCAgIHwgICB8ICAgfCAgIFNlbnNvcnM6IHRlbXAsIHJzc2ks
IGxvX2xvY2tlZA0KfCAgIHwgICB8ICAgfCAgIEZyZXEgcmFuZ2U6IDUwLjAwMCB0byA2MDAwLjAw
MCBNSHoNCnwgICB8ICAgfCAgIHwgICBHYWluIHJhbmdlIFBHQTogMC4wIHRvIDc2LjAgc3RlcCAx
LjAgZEINCnwgICB8ICAgfCAgIHwgICBCYW5kd2lkdGggcmFuZ2U6IDIwMDAwMC4wIHRvIDU2MDAw
MDAwLjAgc3RlcCAwLjAgSHoNCnwgICB8ICAgfCAgIHwgICBDb25uZWN0aW9uIFR5cGU6IElRDQp8
ICAgfCAgIHwgICB8ICAgVXNlcyBMTyBvZmZzZXQ6IE5vDQp8ICAgfCAgIHwgICAgIF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQp8ICAgfCAgIHwg
ICAgLw0KfCAgIHwgICB8ICAgfCAgICAgICBSWCBDb2RlYzogQQ0KfCAgIHwgICB8ICAgfCAgIE5h
bWU6IEIyMTAgUlggZHVhbCBBREMNCnwgICB8ICAgfCAgIHwgICBHYWluIEVsZW1lbnRzOiBOb25l
DQp8ICAgfCAgICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18NCnwgICB8ICAgIC8NCnwgICB8ICAgfCAgICAgICBUWCBEU1A6IDANCnwgICB8ICAg
fA0KfCAgIHwgICB8ICAgRnJlcSByYW5nZTogLTguMDAwIHRvIDguMDAwIE1Ieg0KfCAgIHwgICAg
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQp8
ICAgfCAgICAvDQp8ICAgfCAgIHwgICAgICAgVFggRFNQOiAxDQp8ICAgfCAgIHwNCnwgICB8ICAg
fCAgIEZyZXEgcmFuZ2U6IC04LjAwMCB0byA4LjAwMCBNSHoNCnwgICB8ICAgICBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KfCAgIHwgICAgLw0K
fCAgIHwgICB8ICAgICAgIFRYIERib2FyZDogQQ0KfCAgIHwgICB8ICAgICBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KfCAgIHwgICB8ICAgIC8N
CnwgICB8ICAgfCAgIHwgICAgICAgVFggRnJvbnRlbmQ6IEENCnwgICB8ICAgfCAgIHwgICBOYW1l
OiBGRS1UWDINCnwgICB8ICAgfCAgIHwgICBBbnRlbm5hczogVFgvUlgNCnwgICB8ICAgfCAgIHwg
ICBTZW5zb3JzOiB0ZW1wLCBsb19sb2NrZWQNCnwgICB8ICAgfCAgIHwgICBGcmVxIHJhbmdlOiA1
MC4wMDAgdG8gNjAwMC4wMDAgTUh6DQp8ICAgfCAgIHwgICB8ICAgR2FpbiByYW5nZSBQR0E6IDAu
MCB0byA4OS44IHN0ZXAgMC4yIGRCDQp8ICAgfCAgIHwgICB8ICAgQmFuZHdpZHRoIHJhbmdlOiAy
MDAwMDAuMCB0byA1NjAwMDAwMC4wIHN0ZXAgMC4wIEh6DQp8ICAgfCAgIHwgICB8ICAgQ29ubmVj
dGlvbiBUeXBlOiBJUQ0KfCAgIHwgICB8ICAgfCAgIFVzZXMgTE8gb2Zmc2V0OiBObw0KfCAgIHwg
ICB8ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KfCAgIHwgICB8ICAgIC8NCnwgICB8ICAgfCAgIHwgICAgICAgVFggRnJvbnRlbmQ6IEIN
CnwgICB8ICAgfCAgIHwgICBOYW1lOiBGRS1UWDENCnwgICB8ICAgfCAgIHwgICBBbnRlbm5hczog
VFgvUlgNCnwgICB8ICAgfCAgIHwgICBTZW5zb3JzOiB0ZW1wLCBsb19sb2NrZWQNCnwgICB8ICAg
fCAgIHwgICBGcmVxIHJhbmdlOiA1MC4wMDAgdG8gNjAwMC4wMDAgTUh6DQp8ICAgfCAgIHwgICB8
ICAgR2FpbiByYW5nZSBQR0E6IDAuMCB0byA4OS44IHN0ZXAgMC4yIGRCDQp8ICAgfCAgIHwgICB8
ICAgQmFuZHdpZHRoIHJhbmdlOiAyMDAwMDAuMCB0byA1NjAwMDAwMC4wIHN0ZXAgMC4wIEh6DQp8
ICAgfCAgIHwgICB8ICAgQ29ubmVjdGlvbiBUeXBlOiBJUQ0KfCAgIHwgICB8ICAgfCAgIFVzZXMg
TE8gb2Zmc2V0OiBObw0KfCAgIHwgICB8ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KfCAgIHwgICB8ICAgIC8NCnwgICB8ICAgfCAgIHwg
ICAgICAgVFggQ29kZWM6IEENCnwgICB8ICAgfCAgIHwgICBOYW1lOiBCMjEwIFRYIGR1YWwgREFD
DQp8ICAgfCAgIHwgICB8ICAgR2FpbiBFbGVtZW50czogTm9uZQ0KDQphZG1pbnNATVlUU1AwMDE5
MjovdXNyL2xvY2FsL2xpYi91aGQvZXhhbXBsZXMkIHVoZF9maW5kX2RldmljZXMNCltJTkZPXSBb
VUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDcuNS4wOyBCb29zdF8xMDY1MDE7IFVIRF80LjMu
MC5IRUFELTAtZzFmOGZkMzQ1DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQ0KLS0gVUhEIERldmljZSAwDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KRGV2aWNlIEFkZHJlc3M6DQogICAgc2VyaWFsOiAz
MTI5MDIxDQogICAgbmFtZTogTXlCMjEwDQogICAgcHJvZHVjdDogQjIxMA0KICAgIHR5cGU6IGIy
MDANCg0KDQphZG1pbnNATVlUU1AwMDE5MjovdXNyL2xvY2FsL2xpYi91aGQvZXhhbXBsZXMkIC4v
YmVuY2htYXJrX3JhdGUgLS1yeF9yYXRlIDEwZTYgLS10eF9yYXRlIDEwZTYNCg0KW0lORk9dIFtV
SERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNy41LjA7IEJvb3N0XzEwNjUwMTsgVUhEXzQuMy4w
LkhFQUQtMC1nMWY4ZmQzNDUNClswMDowMDowMC4wMDA3MTddIENyZWF0aW5nIHRoZSB1c3JwIGRl
dmljZSB3aXRoOiAuLi4NCltJTkZPXSBbQjIwMF0gRGV0ZWN0ZWQgRGV2aWNlOiBCMjEwDQpbSU5G
T10gW0IyMDBdIE9wZXJhdGluZyBvdmVyIFVTQiAzLg0KW0lORk9dIFtCMjAwXSBJbml0aWFsaXpl
IENPREVDIGNvbnRyb2wuLi4NCltJTkZPXSBbQjIwMF0gSW5pdGlhbGl6ZSBSYWRpbyBjb250cm9s
Li4uDQpbSU5GT10gW0IyMDBdIFBlcmZvcm1pbmcgcmVnaXN0ZXIgbG9vcGJhY2sgdGVzdC4uLg0K
W0lORk9dIFtCMjAwXSBSZWdpc3RlciBsb29wYmFjayB0ZXN0IHBhc3NlZA0KW0lORk9dIFtCMjAw
XSBQZXJmb3JtaW5nIHJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QuLi4NCltJTkZPXSBbQjIwMF0gUmVn
aXN0ZXIgbG9vcGJhY2sgdGVzdCBwYXNzZWQNCltJTkZPXSBbQjIwMF0gU2V0dGluZyBtYXN0ZXIg
Y2xvY2sgcmF0ZSBzZWxlY3Rpb24gdG8gJ2F1dG9tYXRpYycuDQpbSU5GT10gW0IyMDBdIEFza2lu
ZyBmb3IgY2xvY2sgcmF0ZSAxNi4wMDAwMDAgTUh6Li4uDQpbSU5GT10gW0IyMDBdIEFjdHVhbGx5
IGdvdCBjbG9jayByYXRlIDE2LjAwMDAwMCBNSHouDQpVc2luZyBEZXZpY2U6IFNpbmdsZSBVU1JQ
Og0KICBEZXZpY2U6IEItU2VyaWVzIERldmljZQ0KICBNYm9hcmQgMDogQjIxMA0KICBSWCBDaGFu
bmVsOiAwDQogICAgUlggRFNQOiAwDQogICAgUlggRGJvYXJkOiBBDQogICAgUlggU3ViZGV2OiBG
RS1SWDINCiAgUlggQ2hhbm5lbDogMQ0KICAgIFJYIERTUDogMQ0KICAgIFJYIERib2FyZDogQQ0K
ICAgIFJYIFN1YmRldjogRkUtUlgxDQogIFRYIENoYW5uZWw6IDANCiAgICBUWCBEU1A6IDANCiAg
ICBUWCBEYm9hcmQ6IEENCiAgICBUWCBTdWJkZXY6IEZFLVRYMg0KICBUWCBDaGFubmVsOiAxDQog
ICAgVFggRFNQOiAxDQogICAgVFggRGJvYXJkOiBBDQogICAgVFggU3ViZGV2OiBGRS1UWDENCg0K
WzAwOjAwOjAyLjE5ODkyODUyM10gU2V0dGluZyBkZXZpY2UgdGltZXN0YW1wIHRvIDAuLi4NCltJ
TkZPXSBbQjIwMF0gQXNraW5nIGZvciBjbG9jayByYXRlIDQwLjAwMDAwMCBNSHouLi4NCltJTkZP
XSBbQjIwMF0gQWN0dWFsbHkgZ290IGNsb2NrIHJhdGUgNDAuMDAwMDAwIE1Iei4NClswMDowMDow
Mi41OTA0MzY3NDVdIFRlc3RpbmcgcmVjZWl2ZSByYXRlIDEwLjAwMDAwMCBNc3BzIG9uIDEgY2hh
bm5lbHMNClNldHRpbmcgVFggc3BwIHRvIDIwNDANClswMDowMDowMi42MTI0NzUwNTldIFRlc3Rp
bmcgdHJhbnNtaXQgcmF0ZSAxMC4wMDAwMDAgTXNwcyBvbiAxIGNoYW5uZWxzDQpVVVVPWzAwOjAw
OjEyLjYxOTI0MjcxNl0gQmVuY2htYXJrIGNvbXBsZXRlLg0KDQoNCkJlbmNobWFyayByYXRlIHN1
bW1hcnk6DQogIE51bSByZWNlaXZlZCBzYW1wbGVzOiAgICAgMTAwMTQ4NTg0DQogIE51bSBkcm9w
cGVkIHNhbXBsZXM6ICAgICAgNzEzNjQNCiAgTnVtIG92ZXJydW5zIGRldGVjdGVkOiAgICAxDQog
IE51bSB0cmFuc21pdHRlZCBzYW1wbGVzOiAgOTk5NzQyODANCiAgTnVtIHNlcXVlbmNlIGVycm9y
cyAoVHgpOiAwDQogIE51bSBzZXF1ZW5jZSBlcnJvcnMgKFJ4KTogMA0KICBOdW0gdW5kZXJydW5z
IGRldGVjdGVkOiAgIDMNCiAgTnVtIGxhdGUgY29tbWFuZHM6ICAgICAgICAwDQogIE51bSB0aW1l
b3V0cyAoVHgpOiAgICAgICAgMA0KICBOdW0gdGltZW91dHMgKFJ4KTogICAgICAgIDANCg0KDQpE
b25lIQ0KDQphZG1pbnNATVlUU1AwMDE5MjovdXNyL2xvY2FsL2xpYi91aGQvZXhhbXBsZXMkIHN1
ZG8gLi9yeF9zYW1wbGVzX3RvX2ZpbGUgLS1mcmVxIDk4ZTYgLS1yYXRlIDVlNiAtLWdhaW4gMjAg
LS1kdXJhdGlvbiAxMCB1c3JwX3NhbXBsZXMuZGF0DQpbc3Vkb10gcGFzc3dvcmQgZm9yIGFkbWlu
czoNCg0KQ3JlYXRpbmcgdGhlIHVzcnAgZGV2aWNlIHdpdGg6IC4uLg0KW0lORk9dIFtVSERdIGxp
bnV4OyBHTlUgQysrIHZlcnNpb24gNy41LjA7IEJvb3N0XzEwNjUwMTsgVUhEXzQuMy4wLkhFQUQt
MC1nMWY4ZmQzNDUNCltJTkZPXSBbQjIwMF0gRGV0ZWN0ZWQgRGV2aWNlOiBCMjEwDQpbSU5GT10g
W0IyMDBdIE9wZXJhdGluZyBvdmVyIFVTQiAzLg0KW0lORk9dIFtCMjAwXSBJbml0aWFsaXplIENP
REVDIGNvbnRyb2wuLi4NCltJTkZPXSBbQjIwMF0gSW5pdGlhbGl6ZSBSYWRpbyBjb250cm9sLi4u
DQpbSU5GT10gW0IyMDBdIFBlcmZvcm1pbmcgcmVnaXN0ZXIgbG9vcGJhY2sgdGVzdC4uLg0KW0lO
Rk9dIFtCMjAwXSBSZWdpc3RlciBsb29wYmFjayB0ZXN0IHBhc3NlZA0KW0lORk9dIFtCMjAwXSBQ
ZXJmb3JtaW5nIHJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QuLi4NCltJTkZPXSBbQjIwMF0gUmVnaXN0
ZXIgbG9vcGJhY2sgdGVzdCBwYXNzZWQNCltJTkZPXSBbQjIwMF0gU2V0dGluZyBtYXN0ZXIgY2xv
Y2sgcmF0ZSBzZWxlY3Rpb24gdG8gJ2F1dG9tYXRpYycuDQpbSU5GT10gW0IyMDBdIEFza2luZyBm
b3IgY2xvY2sgcmF0ZSAxNi4wMDAwMDAgTUh6Li4uDQpbSU5GT10gW0IyMDBdIEFjdHVhbGx5IGdv
dCBjbG9jayByYXRlIDE2LjAwMDAwMCBNSHouDQpVc2luZyBEZXZpY2U6IFNpbmdsZSBVU1JQOg0K
ICBEZXZpY2U6IEItU2VyaWVzIERldmljZQ0KICBNYm9hcmQgMDogQjIxMA0KICBSWCBDaGFubmVs
OiAwDQogICAgUlggRFNQOiAwDQogICAgUlggRGJvYXJkOiBBDQogICAgUlggU3ViZGV2OiBGRS1S
WDINCiAgUlggQ2hhbm5lbDogMQ0KICAgIFJYIERTUDogMQ0KICAgIFJYIERib2FyZDogQQ0KICAg
IFJYIFN1YmRldjogRkUtUlgxDQogIFRYIENoYW5uZWw6IDANCiAgICBUWCBEU1A6IDANCiAgICBU
WCBEYm9hcmQ6IEENCiAgICBUWCBTdWJkZXY6IEZFLVRYMg0KICBUWCBDaGFubmVsOiAxDQogICAg
VFggRFNQOiAxDQogICAgVFggRGJvYXJkOiBBDQogICAgVFggU3ViZGV2OiBGRS1UWDENCg0KU2V0
dGluZyBSWCBSYXRlOiA1LjAwMDAwMCBNc3BzLi4uDQpbSU5GT10gW0IyMDBdIEFza2luZyBmb3Ig
Y2xvY2sgcmF0ZSA0MC4wMDAwMDAgTUh6Li4uDQpbSU5GT10gW0IyMDBdIEFjdHVhbGx5IGdvdCBj
bG9jayByYXRlIDQwLjAwMDAwMCBNSHouDQpBY3R1YWwgUlggUmF0ZTogNS4wMDAwMDAgTXNwcy4u
Lg0KDQpTZXR0aW5nIFJYIEZyZXE6IDk4LjAwMDAwMCBNSHouLi4NClNldHRpbmcgUlggTE8gT2Zm
c2V0OiAwLjAwMDAwMCBNSHouLi4NCkFjdHVhbCBSWCBGcmVxOiA5OC4wMDAwMDAgTUh6Li4uDQoN
ClNldHRpbmcgUlggR2FpbjogMjAuMDAwMDAwIGRCLi4uDQpBY3R1YWwgUlggR2FpbjogMjAuMDAw
MDAwIGRCLi4uDQoNCldhaXRpbmcgZm9yICJsb19sb2NrZWQiOiArKysrKysrKysrIGxvY2tlZC4N
Cg0KUHJlc3MgQ3RybCArIEMgdG8gc3RvcCBzdHJlYW1pbmcuLi4NCg0KRG9uZSENCg0KYWRtaW5z
QE1ZVFNQMDAxOTI6L3Vzci9sb2NhbC9saWIvdWhkL2V4YW1wbGVzJCBscyAtYWwgdXNycF9zYW1w
bGVzLmRhdA0KLXJ3LXItLXItLSAxIHJvb3Qgcm9vdCAyMDAwMDAwMDAgT2N0IDMwIDEwOjA2IHVz
cnBfc2FtcGxlcy5kYXQNCmFkbWluc0BNWVRTUDAwMTkyOi91c3IvbG9jYWwvbGliL3VoZC9leGFt
cGxlcyQgc3VkbyAuL3R4X3NhbXBsZXNfZnJvbV9maWxlIC0tZnJlcSA5MTVlNiAtLXJhdGUgNWU2
IC0tZ2FpbiAxMCB1c3JwX3NhbXBsZXMuZGF0DQoNCkNyZWF0aW5nIHRoZSB1c3JwIGRldmljZSB3
aXRoOiAuLi4NCltJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDcuNS4wOyBCb29z
dF8xMDY1MDE7IFVIRF80LjMuMC5IRUFELTAtZzFmOGZkMzQ1DQpbSU5GT10gW0IyMDBdIERldGVj
dGVkIERldmljZTogQjIxMA0KW0lORk9dIFtCMjAwXSBPcGVyYXRpbmcgb3ZlciBVU0IgMy4NCltJ
TkZPXSBbQjIwMF0gSW5pdGlhbGl6ZSBDT0RFQyBjb250cm9sLi4uDQpbSU5GT10gW0IyMDBdIElu
aXRpYWxpemUgUmFkaW8gY29udHJvbC4uLg0KW0lORk9dIFtCMjAwXSBQZXJmb3JtaW5nIHJlZ2lz
dGVyIGxvb3BiYWNrIHRlc3QuLi4NCltJTkZPXSBbQjIwMF0gUmVnaXN0ZXIgbG9vcGJhY2sgdGVz
dCBwYXNzZWQNCltJTkZPXSBbQjIwMF0gUGVyZm9ybWluZyByZWdpc3RlciBsb29wYmFjayB0ZXN0
Li4uDQpbSU5GT10gW0IyMDBdIFJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QgcGFzc2VkDQpbSU5GT10g
W0IyMDBdIFNldHRpbmcgbWFzdGVyIGNsb2NrIHJhdGUgc2VsZWN0aW9uIHRvICdhdXRvbWF0aWMn
Lg0KW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgMTYuMDAwMDAwIE1Iei4uLg0K
W0lORk9dIFtCMjAwXSBBY3R1YWxseSBnb3QgY2xvY2sgcmF0ZSAxNi4wMDAwMDAgTUh6Lg0KVXNp
bmcgRGV2aWNlOiBTaW5nbGUgVVNSUDoNCiAgRGV2aWNlOiBCLVNlcmllcyBEZXZpY2UNCiAgTWJv
YXJkIDA6IEIyMTANCiAgUlggQ2hhbm5lbDogMA0KICAgIFJYIERTUDogMA0KICAgIFJYIERib2Fy
ZDogQQ0KICAgIFJYIFN1YmRldjogRkUtUlgyDQogIFJYIENoYW5uZWw6IDENCiAgICBSWCBEU1A6
IDENCiAgICBSWCBEYm9hcmQ6IEENCiAgICBSWCBTdWJkZXY6IEZFLVJYMQ0KICBUWCBDaGFubmVs
OiAwDQogICAgVFggRFNQOiAwDQogICAgVFggRGJvYXJkOiBBDQogICAgVFggU3ViZGV2OiBGRS1U
WDINCiAgVFggQ2hhbm5lbDogMQ0KICAgIFRYIERTUDogMQ0KICAgIFRYIERib2FyZDogQQ0KICAg
IFRYIFN1YmRldjogRkUtVFgxDQoNClNldHRpbmcgVFggUmF0ZTogNS4wMDAwMDAgTXNwcy4uLg0K
W0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgNDAuMDAwMDAwIE1Iei4uLg0KW0lO
Rk9dIFtCMjAwXSBBY3R1YWxseSBnb3QgY2xvY2sgcmF0ZSA0MC4wMDAwMDAgTUh6Lg0KQWN0dWFs
IFRYIFJhdGU6IDUuMDAwMDAwIE1zcHMuLi4NCg0KU2V0dGluZyBUWCBGcmVxOiA5MTUuMDAwMDAw
IE1Iei4uLg0KU2V0dGluZyBUWCBMTyBPZmZzZXQ6IDAuMDAwMDAwIE1Iei4uLg0KQWN0dWFsIFRY
IEZyZXE6IDkxNS4wMDAwMDAgTUh6Li4uDQoNClNldHRpbmcgVFggR2FpbjogMTAuMDAwMDAwIGRC
Li4uDQpBY3R1YWwgVFggR2FpbjogMTAuMDAwMDAwIGRCLi4uDQoNCkNoZWNraW5nIFRYOiBMTzog
bG9ja2VkIC4uLg0KDQpEb25lIQ0KDQpVYWRtaW5zQE1ZVFNQMDAxOTI6L3Vzci9sb2NhbC9saWIv
dWhkL2V4YW1wbGVzJCBzdWRvIC4vcnhfYXNjaWlfYXJ0X2RmdCAtLWZyZXEgOThlNiAtLXJhdGUg
NWU2IC0tZ2FpbiAyMCAtLWJ3IDVlNiAtLXJlZi1sdmwgLTMwDQoNCkNyZWF0aW5nIHRoZSB1c3Jw
IGRldmljZSB3aXRoOiAuLi4NCltJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDcu
NS4wOyBCb29zdF8xMDY1MDE7IFVIRF80LjMuMC5IRUFELTAtZzFmOGZkMzQ1DQpbSU5GT10gW0Iy
MDBdIERldGVjdGVkIERldmljZTogQjIxMA0KW0lORk9dIFtCMjAwXSBPcGVyYXRpbmcgb3ZlciBV
U0IgMy4NCltJTkZPXSBbQjIwMF0gSW5pdGlhbGl6ZSBDT0RFQyBjb250cm9sLi4uDQpbSU5GT10g
W0IyMDBdIEluaXRpYWxpemUgUmFkaW8gY29udHJvbC4uLg0KW0lORk9dIFtCMjAwXSBQZXJmb3Jt
aW5nIHJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QuLi4NCltJTkZPXSBbQjIwMF0gUmVnaXN0ZXIgbG9v
cGJhY2sgdGVzdCBwYXNzZWQNCltJTkZPXSBbQjIwMF0gUGVyZm9ybWluZyByZWdpc3RlciBsb29w
YmFjayB0ZXN0Li4uDQpbSU5GT10gW0IyMDBdIFJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QgcGFzc2Vk
DQpbSU5GT10gW0IyMDBdIFNldHRpbmcgbWFzdGVyIGNsb2NrIHJhdGUgc2VsZWN0aW9uIHRvICdh
dXRvbWF0aWMnLg0KW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgMTYuMDAwMDAw
IE1Iei4uLg0KW0lORk9dIFtCMjAwXSBBY3R1YWxseSBnb3QgY2xvY2sgcmF0ZSAxNi4wMDAwMDAg
TUh6Lg0KVXNpbmcgRGV2aWNlOiBTaW5nbGUgVVNSUDoNCiAgRGV2aWNlOiBCLVNlcmllcyBEZXZp
Y2UNCiAgTWJvYXJkIDA6IEIyMTANCiAgUlggQ2hhbm5lbDogMA0KICAgIFJYIERTUDogMA0KICAg
IFJYIERib2FyZDogQQ0KICAgIFJYIFN1YmRldjogRkUtUlgyDQogIFJYIENoYW5uZWw6IDENCiAg
ICBSWCBEU1A6IDENCiAgICBSWCBEYm9hcmQ6IEENCiAgICBSWCBTdWJkZXY6IEZFLVJYMQ0KICBU
WCBDaGFubmVsOiAwDQogICAgVFggRFNQOiAwDQogICAgVFggRGJvYXJkOiBBDQogICAgVFggU3Vi
ZGV2OiBGRS1UWDINCiAgVFggQ2hhbm5lbDogMQ0KICAgIFRYIERTUDogMQ0KICAgIFRYIERib2Fy
ZDogQQ0KICAgIFRYIFN1YmRldjogRkUtVFgxDQoNClNldHRpbmcgUlggUmF0ZTogNS4wMDAwMDAg
TXNwcy4uLg0KW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgNDAuMDAwMDAwIE1I
ei4uLg0KW0lORk9dIFtCMjAwXSBBY3R1YWxseSBnb3QgY2xvY2sgcmF0ZSA0MC4wMDAwMDAgTUh6
Lg0KQWN0dWFsIFJYIFJhdGU6IDUuMDAwMDAwIE1zcHMuLi4NCg0KU2V0dGluZyBSWCBGcmVxOiA5
OC4wMDAwMDAgTUh6Li4uDQpBY3R1YWwgUlggRnJlcTogOTguMDAwMDAwIE1Iei4uLg0KDQpTZXR0
aW5nIFJYIEdhaW46IDIwLjAwMDAwMCBkQi4uLg0KQWN0dWFsIFJYIEdhaW46IDIwLjAwMDAwMCBk
Qi4uLg0KDQpTZXR0aW5nIFJYIEJhbmR3aWR0aDogNS4wMDAwMDAgTUh6Li4uDQpBY3R1YWwgUlgg
QmFuZHdpZHRoOiA1LjAwMDAwMCBNSHouLi4NCg0KQ2hlY2tpbmcgUlg6IExPOiBsb2NrZWQgLi4u
DQo=

--_005_BM1PR01MB4627FE9AB5A3EF362F6D73198DA1ABM1PR01MB4627INDP_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_005_BM1PR01MB4627FE9AB5A3EF362F6D73198DA1ABM1PR01MB4627INDP_--
