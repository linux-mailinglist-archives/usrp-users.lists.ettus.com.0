Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D91AD42A9EB
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 18:48:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13D4A384749
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 12:48:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="10EfcbKn";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="RXWurCTv";
	dkim-atps=neutral
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 696F938469E
	for <usrp-users@lists.ettus.com>; Tue, 12 Oct 2021 12:47:19 -0400 (EDT)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19C70TBx030639;
	Tue, 12 Oct 2021 11:47:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=PPS11062020;
 bh=Z9mAfEe3KQHKOLW7QoeCWc0bAGaObptuvAusgXWtsbI=;
 b=10EfcbKniPO11fcKY/Cpa3MHjcedQu2yJfhEb+/WDL0oETmC3sj2HZLYu2y/gozg6+BL
 qBs8P1PcHjy/xsOa/RsFmNmafVEBPJoljcLHfyPAzQOgMYsxgYV+XKitLNoBD5cpyIS4
 mHJLd/YfnyLyiggi3xzWiEmUMWBU/B4Kw6bemNi4LDatV0uw+U4Jq7wLH/P11mxRrZ2g
 r8xiSxJgmgPBB8gk8fydhCKJzCRpEmo6hK/JoyZQm2jEGmnLTA8x68dc60aOy6ol5YJv
 mOCUDY9iPlOdtn+/GPGbNEzyrqw1vWVfCHp5S5j3iPzzzTIbnC3KZ6dq4AIfFKBWHwa1 SA==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2170.outbound.protection.outlook.com [104.47.57.170])
	by mx0b-00010702.pphosted.com with ESMTP id 3bn5kh982q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Oct 2021 11:47:18 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IPQSAEadi6Ka61ELiCbDK+clW88BQON9QhccksoVi1R+O/5PzWP+5f/xS1XBnH1cZQgs5bIFAPviriuapJ7sueVYj9rFdUgDgYKwT9VUZZnlcxXGORaHR1I8Rq9oiY7W2eDAuCCQvbvnclOgpkHs6BqYCUp+9+ZMRer0DNCSopSrUTJyKxHEQKaANZ+D2ff56iHgMZN1wzQc9I7NL1VYLFhtne7fT9Tlj9CPmUiI1c5qRp1zlxhruJiX66nCCc0muRZhz3BV8AXrGxg7auLb0J1su1jdyeF7GpppGWZ6z1VOanN9afKxQQB3ajpkyXRfEOWjE+yq4NPhCc6GD9HjCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z9mAfEe3KQHKOLW7QoeCWc0bAGaObptuvAusgXWtsbI=;
 b=chWamq8v7+YNNbpQqu7ac3vvEmWNL2tlNdvermztwXfDshJT5uKTlWvAimG8sgHwMePsclwm/unCb8VtXJm4wKLvF8BaaFBS6PTfwQedY73N0DXD6maKb7YdBCjEdv7+zdMnR3sdj521xtW5pYeLudb5zOdr7tYvsQFjXIe5mwTCvXQE5NAIailAaf5W903LE524NJkRI+vta+m/d6TKNHrjKpv4fdEmfWXslVJJ2/s3R8bBjf8QSsUQvQR0F0aE8Y127Bn+DxzCQsYIStFCJv9adQ0fbfBQAMdg1rGanHGQ2/hHNi1nCjzUPrqWPwtZLOoqTO2kcyacA1OdZ31LZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z9mAfEe3KQHKOLW7QoeCWc0bAGaObptuvAusgXWtsbI=;
 b=RXWurCTvJPnNqXgXdG/kvBoewzQfg8wOt82B6sEK/G46KD0DfmRYhNvkl/7XsrSZLoOLxM5OPhwcRABVykBg6HuDauFh1170yk56qmVAxxTBsMQ8wLyeD3nw7yxBnmeYW54adOl1cLBOnfVB/UHb47XXiTW/cpsbu+F2jyBdjLs=
Received: from DM8PR04MB8007.namprd04.prod.outlook.com (2603:10b6:5:314::20)
 by DM8PR04MB7943.namprd04.prod.outlook.com (2603:10b6:8:d::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4587.18; Tue, 12 Oct 2021 16:47:16 +0000
Received: from DM8PR04MB8007.namprd04.prod.outlook.com
 ([fe80::dd2e:fff2:970b:9a7e]) by DM8PR04MB8007.namprd04.prod.outlook.com
 ([fe80::dd2e:fff2:970b:9a7e%6]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 16:47:16 +0000
From: Jan Schirok <jan.schirok@ni.com>
To: jason pro <jason_proj@outlook.com>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: pin definitions of the two HDMI interfaces of x410
Thread-Index: AQHXvfwEUydS4WTsKkCnRv7+suuBJavPCnlA
Date: Tue, 12 Oct 2021 16:47:15 +0000
Message-ID: 
 <DM8PR04MB8007ABD4D8F4206AF55091779EB69@DM8PR04MB8007.namprd04.prod.outlook.com>
References: 
 <PSAPR01MB395913EB4374CB88EFF03C1DFDB49@PSAPR01MB3959.apcprd01.prod.exchangelabs.com>
In-Reply-To: 
 <PSAPR01MB395913EB4374CB88EFF03C1DFDB49@PSAPR01MB3959.apcprd01.prod.exchangelabs.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: outlook.com; dkim=none (message not signed)
 header.d=none;outlook.com; dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36992b3e-3f15-4105-2aed-08d98d9ff2b5
x-ms-traffictypediagnostic: DM8PR04MB7943:
x-microsoft-antispam-prvs: 
 <DM8PR04MB7943841B10D2B6B3CE0963929EB69@DM8PR04MB7943.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KYKdA8aDUH6wZzrJRL2SHYobAT8qU/pG8M+kzaoGEcHgFACszE8XhDswifJxN9BBro4dNvg5jQ76yClY5SUWocElSnQiO8IFb4Lm3ZpPKCFWEUWnvsu0MqbLPs4G++9Zf3zlVlx5XKmjsBdFd3aZdjGTyUxR0RiOuAmMxppSnngbwdEiWKr0ABc2dl/s+ieg7UDLNGPmhk+vSbSJ3/CTDBWG2rKjjRDiAPEJp1dfgNsuDsxJyT66dLApz+6XREvLVdt06diyJ5+h9X24Aca/MSe8cz1zqgnjnBN3pCC8WAffQMdsiLZPqiB7r7fz5GXu+mAUJ7EF3OajmTROwnbtRetmLGXSrhqg3ee1F7wVaU3qC0o160TBxLTtfPrHOaqT7SjDHHK8Z8NBN60rhJ1tpDkP5+ofUXpKBHZene1JDHognUr2Mtk7u4TZRU0Nt94pC9nIoXMbT5SN4nac8UyelDgMiiJNR2UsN4kBS4eIZlpb62OLQS0w7viW8wzY6DaBcxa9sgnU/7O3hcakJHLVZlzI1zm9tWP7Y6ZhT4lXqrgDSSVKWNOVGR94eAzy/QN9Lv/NJE9Fge0IJJ9l5CMZYabXrCVEFWbXtVTaxyN26TmJI1t/bpvM3hwLFXyjKf4yxn6+poG4CcKhKXxs4dWnpg16rd5J9DrnNgTetY3cpSpsyTgpUx7mjAWFUAcAWY5OUYlIgWFpY8x9calgyxVys4gyEayaM8cYkbmfSXlCKYBvgK6gHRfDSWhKAjgY06UfY7aCuEQrLvO40r6kZpkHrUfXmFB56lEm8+UFXD+V3L8=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8007.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(53546011)(508600001)(38100700002)(6506007)(2906002)(122000001)(38070700005)(9326002)(71200400001)(966005)(186003)(83380400001)(8936002)(9686003)(55016002)(26005)(8676002)(52536014)(5660300002)(66574015)(66446008)(76116006)(45080400002)(86362001)(166002)(316002)(44832011)(66946007)(64756008)(66476007)(33656002)(66556008)(110136005)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?UVc74YyRN9duvgoBd0A4Zb+hXpQiDsMK5EapuXyUs63ko//TSDxuS9FhBz/X?=
 =?us-ascii?Q?e6lHQQTJGWxMWDjEYJ03J1hP0rYTAjhVuDpv5tMFHWs5s+rW+0+OQTHEa3qq?=
 =?us-ascii?Q?XiMmo98xZD5SQfl/cQJuCHJ1a52AXyX7ThC43gHz66J14KThgxCPRmcwUlxq?=
 =?us-ascii?Q?yS8P5nigPb0fOyNjb3JlkLlrndBhvAPAoBpZPkvfLU1O5nijuwoDN1jNzGe7?=
 =?us-ascii?Q?8bby0EoMvlHO6ChvIKxZOjHu75ngGXzHxPsOn6XrRo/XAYZ1CG6XNa/fSkOn?=
 =?us-ascii?Q?rc6dlOAJfhgILQ/BjG3siARgAms+mB0CIeEwufapfw2wCuIO54iwn4g5nngl?=
 =?us-ascii?Q?vlVkv7JhG05RYlg+Rh5wC6R9C7ZuJpcEhRUBEdGcI8c3PyKrwPgrK+n7q0nb?=
 =?us-ascii?Q?QBJi9uYTqsCUhLyntKcIGYnmr/XAFRwouMe20Kjg/0fwnXyMNZeU0w4eUxHQ?=
 =?us-ascii?Q?SxltajeMGVSRhYHDsPV7s+bjOT5ecIy2FebfY45cgkcSnxsMcufNoZirNzUS?=
 =?us-ascii?Q?j1+NHp3vc2TOdQ7BxELwdiNZVPxpMsJsdA5nVFaydUGqLm15fHrfVvMYzhTg?=
 =?us-ascii?Q?r0Gg6q3eZ/3gNPAdSw9mcI7JddzI2sgx2ugexUi1gHOqu9dcZSV1T7mAXpza?=
 =?us-ascii?Q?wbnONUY2IMI77A5xRqrcyG2G8aGIPVW/v/bjus/8FDDwSaCE415eMhyv03yb?=
 =?us-ascii?Q?+tc4rO69iZfOIgvie+fblLVWKRRVSnPkFs0Ma/D85A7T4wFJaqyJAHaf2Sbs?=
 =?us-ascii?Q?cOku/w6KDyQth91RZ4far1vJrHTpspQu6/dNQKwmnon3GrxHw7cxaXj6CtB1?=
 =?us-ascii?Q?rpPa4BjnjI+8J+QjbDK+ETGIlJiNS4zLA94OpI6flm0Z3vA/K6vbYRzKc+dA?=
 =?us-ascii?Q?YX78g2taQ9fj8ZBEEhR74IYywRFoKZw6IdnKbzWPURbrBXqWqz7SRQ17ceNF?=
 =?us-ascii?Q?6v6G6xDXz1GavNJfJHHFAKqVDgNutbEe310eueI7emIbdBEJ9UTG8gTdRzWC?=
 =?us-ascii?Q?kXRKl0eJS6LyE8L2/6HP0TfejZAXMSlUz2UwYUt3hhxp76z1rK0qBLdZbGG1?=
 =?us-ascii?Q?p69eerWtZUuH5Lm0DGp/tFHQ4XFnJOCxW06dQVnJ8Qm+OYIPz8V/MekEOInA?=
 =?us-ascii?Q?sCqoF6Yu+xOhlbUBV6jAaA4J031OnueLCZHmdF4poxZRKENaRzSSDWGEOJgf?=
 =?us-ascii?Q?vyE9B1s0xTmSTBfjCEz+cpA3xOOPSW27Nw9p8Y4IyUHyq+bM8sXZvBHSE3hd?=
 =?us-ascii?Q?uI7WILKCccPNx6Jqr3B2R/DIlFZvJBEnjNhaMvCE0g9Owg3saBCvMAUBMMSJ?=
 =?us-ascii?Q?vYBF55X/7FbbvBZctrXnqGSg?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8007.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36992b3e-3f15-4105-2aed-08d98d9ff2b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2021 16:47:15.9716
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9U0PkzgLnQ7/iVkb497zrFHqnkBWIdbrs1TFYGTsn3qCGuLsNNxAPlMcmFOOM/YEy4u8A2xtarBiv6aeDvUtRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR04MB7943
X-Proofpoint-ORIG-GUID: DDIakeorSV9ohynaq2yUvCiBGiNdbXwg
X-Proofpoint-GUID: DDIakeorSV9ohynaq2yUvCiBGiNdbXwg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-12_04,2021-10-12_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30 mlxscore=0
 malwarescore=0 spamscore=0 suspectscore=0 mlxlogscore=999 phishscore=0
 clxscore=1011 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 adultscore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2109230001 definitions=main-2110120093
Message-ID-Hash: RSG5TZ5774AUKXSDCKK3UX3GDMJY5YGW
X-Message-ID-Hash: RSG5TZ5774AUKXSDCKK3UX3GDMJY5YGW
X-MailFrom: prvs=59197a27d9=jan.schirok@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: pin definitions of the two HDMI interfaces of x410
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SBL663WYLI2DSQHMA7QT6GI5R6NRVUQS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0523714468370543033=="

--===============0523714468370543033==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM8PR04MB8007ABD4D8F4206AF55091779EB69DM8PR04MB8007namp_"

--_000_DM8PR04MB8007ABD4D8F4206AF55091779EB69DM8PR04MB8007namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jason,

for the GPIO pinout, the best starting point right now would be the descrip=
tion in the MPM code:
https://github.com/EttusResearch/uhd/blob/master/mpm/python/usrp_mpm/periph=
_manager/x4xx_periphs.py
Essentially, we've connected the 12 I/O lines that the regular HDMI pinout =
also defines as signals.
I/O voltages can be set per connector as well (1.8V/2.5V/3.3V).
One thing to keep in mind for the pinout: I/O direction setting is slow, so=
 a fast protocol needs to have fixed I/O directions per pin.
If you're interested in using the HDMI voltage supply output, we've hooked =
up 3.3V, ~500mA to the power pin of HDMI.

In terms of SW support for UHD to use the GPIOs, we're working on getting t=
he support in - no firm timelines yet unfortunately.

Another option for peripheral circuit boards may be to use the USB-C connec=
tion in the back - depends on your application requirements of course.

Hope this helps
Jan


From: jason pro <jason_proj@outlook.com>
Sent: Sonntag, 10. Oktober 2021 19:27
To: usrp-users@lists.ettus.com
Subject: [EXTERNAL] [USRP-users] pin definitions of the two HDMI interfaces=
 of x410

Hi dear Engineers of Ettus Research,

We plan to design a peripheral circuit board controlled by GPIO of x410. No=
w I would like to know the pin definitions of the two HDMI interfaces of x4=
10. could you share relevant information?

Best regards,
Jason
National Instruments Dresden GmbH; Gesch?ftsf?hrer (Managing Director): Kev=
in Schultz; Sitz (Registered Office): Dresden; HRB (Commercial Register No.=
): 22081; Registergericht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_DM8PR04MB8007ABD4D8F4206AF55091779EB69DM8PR04MB8007namp_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:PMingLiU;
	panose-1:2 1 6 1 0 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@PMingLiU";
	panose-1:2 1 6 1 0 1 1 1 1 1;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:SimSun;
	mso-fareast-language:ZH-CN;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW">Hi Jason,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW">for the GPIO pinout, the=
 best starting point right now would be the description in the MPM code:<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW"><a href=3D"https://githu=
b.com/EttusResearch/uhd/blob/master/mpm/python/usrp_mpm/periph_manager/x4xx=
_periphs.py">https://github.com/EttusResearch/uhd/blob/master/mpm/python/us=
rp_mpm/periph_manager/x4xx_periphs.py</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW">Essentially, we&#8217;ve=
 connected the 12 I/O lines that the regular HDMI pinout also defines as si=
gnals.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW">I/O voltages can be set =
per connector as well (1.8V/2.5V/3.3V).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW">One thing to keep in min=
d for the pinout: I/O direction setting is slow, so a fast protocol needs t=
o have fixed I/O directions per pin.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW">If you&#8217;re interest=
ed in using the HDMI voltage supply output, we&#8217;ve hooked up 3.3V, ~50=
0mA to the power pin of HDMI.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW">In terms of SW support f=
or UHD to use the GPIOs, we&#8217;re working on getting the support in &#82=
11; no firm timelines yet unfortunately.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW">Another option for perip=
heral circuit boards may be to use the USB-C connection in the back &#8211;=
 depends on your application requirements of course.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW">Hope this helps<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW">Jan<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;mso-fareast-language:ZH-TW"><o:p>&nbsp;</o:p></span>=
</p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> jason pro &lt;jason_proj@outlo=
ok.com&gt;
<br>
<b>Sent:</b> Sonntag, 10. Oktober 2021 19:27<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] pin definitions of the two HDMI int=
erfaces of x410<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Hi dear Engineers of Ettus Research,
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">We plan to design a peripheral circuit board controlled =
by GPIO of x410. Now I would like to know the pin definitions of the two HD=
MI interfaces of x410. could you share relevant
 information?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Best regards,<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Jason<o:p></o:p></span></p>
</div>
</div>
National Instruments Dresden GmbH; Gesch&auml;ftsf&uuml;hrer (Managing Dire=
ctor): Kevin Schultz; Sitz (Registered Office): Dresden; HRB (Commercial Re=
gister No.): 22081; Registergericht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.
</body>
</html>

--_000_DM8PR04MB8007ABD4D8F4206AF55091779EB69DM8PR04MB8007namp_--

--===============0523714468370543033==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0523714468370543033==--
