Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C695B727E93
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 13:17:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8469A384952
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 07:17:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686223052; bh=LL5O3Emphg+vMIoUnkIYyS7WXOVT2liABM2A/0nEx9g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gkqv5E2XVHGqMIJqM+42KP0Hvoc8Ub6zRT/beQqAQWzwVYXtqXgTcMqi7oUu1JhfT
	 D2ikVV1lttPlGf8pkWwu4peS7CCruQ4W2le7jLyN6/IEHPWuxv64uc4cSABe7F3boL
	 zMUwu/RspBl9acaWht94WfZ7mSYO6k6U35gQduTlGsj1clCq++ft3EPf943QMO0ncb
	 oQhLsxBkP21OJsHb394gY/xkyo9WWUc3pP8KPhMTP5KFvnu4B3fycdT+l8A++tAiMl
	 2tICj6KknytkLCoVSetpzYvM2cSAxnwAZWdNZL1tj5oks8AxlSkY+EsU95TGKGBuw/
	 P0NW1cgAT5Tuw==
Received: from pta-smg4.csir.co.za (pta-smg4.csir.co.za [146.64.81.183])
	by mm2.emwd.com (Postfix) with ESMTPS id B377C383693
	for <usrp-users@lists.ettus.com>; Thu,  8 Jun 2023 07:16:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.b="38YQmsmO";
	dkim-atps=neutral
Received: from pta-smg4.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 6CA741B35AEA;
	Thu,  8 Jun 2023 11:16:28 +0000 (GMT)
Received: from ZAF01-CT2-obe.outbound.protection.outlook.com (mail-ct2zaf01lp2175.outbound.protection.outlook.com [104.47.19.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by pta-smg4.csir.co.za (Sophos Email Appliance) with ESMTPS id 57DB51B3ABBC;
	Thu,  8 Jun 2023 11:16:27 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EDEbDKPoSQUhQd+GZCNodXVeOxCefuiStWMdwOj6llFMQDx6u0IZlVcMXlRrt9Xy+HHy9QHGnzO5Y8x+O/1zZTRdw59OrA8JY+XuBSGmvGJsZUHIZ0WqRWJsumyOs7zI7sBTUXEQMdv0PskWJ8h2oFrIZhJiR4Od9NnWMw3S/ofr5Yr1uHoNpLuRH7aIjTtV6Ztcn1Xo4Ib8iBwmO2DA3alpvpEYbDms/kspzCoY+1CWcRyfAY6PRzmzCT+uq3P9RYsQXFQbXFmX66xiEJngWKO5d5aa+9vj7dsEmqLWWrT9nXVGZVbA5yhEKMqvDk6e/H4UWA9qXLnFi+25oTA75g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GE3ESEVEb2zDk/UOScCFxn5Kqyw5GcXutTdjo7f1SUI=;
 b=SJPJp65Oh4PGH3oIXitHNuVZZ5RY10c7IwStR/p0SXGwCIAp8e83iU6guUpy4AGa4xgH8CSjdO8qOZwqxy/Ta6HFL1xg2K1vt7MY/6utj5nIUWLV5hTgxt4R6WmHxRqCIRxPWV7oWng2gxIFW+tB/lcXEWgviu3DVn+2xxERd0IjXwpQDQELFx6LgeOzYr5z+s9vVZqi8TxeyQnMeqrUUupHIKdhkWFSY43fhitnoM+NqNTRJ0KdoFI4M/cAps67g2JhpucDeU0GXK+tDGj7SGiYU+cesbtyE2xFQMKcyuLgy8404eC89qqLxh2naQotB9b0V5+67VUQLuBHVyVldw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GE3ESEVEb2zDk/UOScCFxn5Kqyw5GcXutTdjo7f1SUI=;
 b=38YQmsmOLeUnx+gPgngfrSfw6FqQ7KeaDetFfWr6jpBfqcQe+MUnEH9idBqOPJ5U1WCH2T8y+Ib7QDqi0R6Gk4IJnJB/UUNwZPX5jeHYKtgTX8WXSEY9nxe8M/jUxlGKlTZ7Uz0aLS77OENL1/eAsNWRf8zq/L2FhQIz5E71Mwc=
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:24::13) by
 CT2P275MB0580.ZAFP275.PROD.OUTLOOK.COM (2603:1086:100:14::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Thu, 8 Jun 2023 11:16:25 +0000
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::71f6:6d8c:bca8:1484]) by JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::71f6:6d8c:bca8:1484%4]) with mapi id 15.20.6477.016; Thu, 8 Jun 2023
 11:16:25 +0000
From: Leon Wabeke <LWabeke@csir.co.za>
To: "eesa.nikahd@gmail.com" <eesa.nikahd@gmail.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Creating TX usrp and RX usrp objects using Two
 different threads using X310
Thread-Index: AQHZmc4GSywD0zdip0qVnXcyvGjiKq+An25b
Date: Thu, 8 Jun 2023 11:16:24 +0000
Message-ID: 
 <JN1P275MB05351C0F0D0457FA8286E3D19550A@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
References: <Gqp8cHlLxk8pfjh6GD1oXyH5KkhHxtvhfZ03xSjKiNI@lists.ettus.com>
In-Reply-To: <Gqp8cHlLxk8pfjh6GD1oXyH5KkhHxtvhfZ03xSjKiNI@lists.ettus.com>
Accept-Language: en-ZA, en-US
Content-Language: en-US
X-Hashtags: #NewslettersPlus
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: JN1P275MB0535:EE_|CT2P275MB0580:EE_
x-ms-office365-filtering-correlation-id: c6299fde-4b70-4f8e-7197-08db6811cc0e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 AlonwiKpNb57YxfUKvPBiSNVQCwJk+CyAsq6ORuEsWroj1W2nFF/WJfiI33nB7nZc3VfxtcHe+UiZOKFV/IDQNFZlbb207UPTiSiP0zjxCo0XN4/nvFNFdAK018FPQk1W/QAnSHr1vUfeOebdwVeD5QZyw9Kg1ET8SZEsVVml6cPsPE0+9XGJJjYfl1LCCE+GYjH5cU8ja8JyYcKI6aNrknOgIQ/2C0n0Y4sBLvGeTRo+mlByt3OBEot6j63EhruWfRUVrXgUVDac516LA1IUTXngiSb5hg5F8Bu+ByRVn53PVj+lrq5XPOml7Xsj6BYx/RVM/hyJLb49fP1PvhKu59QylCwqEZDHedJ8ilKmdONdmF9uOHZwWirY7f2/UchrmZbW9iZyU7/CzuvPa6x+nKxIWcPScbavSXwwSeEy4L8FGHAs1/DFISHChb9iG5rBvPpVXXBr33U9ONBZ871/NuvrbWxBm+5fnQkL9yTA8ZnndtA5C9hqM2lyjCY9pf6layQaDTTosNftwrueADWWJBYDwBJa1DPns3CyG7+ehT4QRYmGY7E9uuLdO3XL2k66vNzmUHRotoIA/1nlUrcFuhu5uxwOsw8fRsDgmIw9Ok=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(376002)(39860400002)(396003)(136003)(366004)(346002)(451199021)(66556008)(66476007)(66446008)(66946007)(316002)(64756008)(76116006)(71200400001)(110136005)(478600001)(38070700005)(86362001)(33656002)(166002)(83380400001)(55236004)(53546011)(6506007)(26005)(9686003)(186003)(41300700001)(8936002)(8676002)(52536014)(5660300002)(2906002)(7696005)(55016003)(38100700002)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?iRLIJNSyMfUmxG9rNJOKZi+o28HWP6D3P/PUy++k3yykUM22H0r4kVCticQL?=
 =?us-ascii?Q?Nc9B/PkWbIcDQEnWUbS942EfbS+5y8Mx2uWaCD1pb82/2CHuBw/2b2BMnw5Z?=
 =?us-ascii?Q?bbaZ7R0Q9Q+Pfa+MxEH2yky1u4BJ+ruLJ6mwCNwWMQrNoCg4fWYcQ0AI5oTm?=
 =?us-ascii?Q?cotCtnWrDAbpymzotlWx2U4hLUSixcvdDZDcjEsR8KQyEpjGQGLhma1JxQjZ?=
 =?us-ascii?Q?l/DzQaorbqfJTJcqHGEZglwXSc7tmedyXy+M5UMn+6lgvTRYYQ6fxzYDGg1J?=
 =?us-ascii?Q?H44MR5WBz7R9dsNrxI4XpGwb0uFznp/dPKxh9b4zaRWbAGGd8IunMBohRCGj?=
 =?us-ascii?Q?osP7c0MhTlWC29CrKhlrzaDupnO0zMTCaT7Ms3VK84caUDEOgWQMZnYLusX5?=
 =?us-ascii?Q?JaXCdAGrWjdF5CvyLT9oFQXaspRiqkHM1hbNaFefZanIfeKWC5puoKdT3f6c?=
 =?us-ascii?Q?0oHKjmBPkkFW7a3WBxI8by6xPgXzJDGFD1AoNnGcM1f/7MgQSU7gOCXAu+XQ?=
 =?us-ascii?Q?cue5F/j6JVEhK6dEn8SB/mWJ2roR9fkBcJ7ImOxwbTqvj5lHnc6cgBQbQ+qg?=
 =?us-ascii?Q?Wo0FhejrnJtZI4CycoGPtSiRs3ymbmImQ7BOmW266DcAR+0IlaYJqY7NCadQ?=
 =?us-ascii?Q?NJ39VhksO9Arxo01zE2xG4E0dlHsyQuDLHKDJl+KZ/fsar0YUQMHFJg6qZzJ?=
 =?us-ascii?Q?pepMjcFQCJok7d3oU8hr/zp6Z+KwNu3JjEKF/jwRu3YzDIefffRTYxWRH4jB?=
 =?us-ascii?Q?7tOFn1wjn8nTSOkaSN0b/o5J13+DP/hDjW9RIc30rn/6a2uzUGNZ4lK4HGLR?=
 =?us-ascii?Q?GY0YEdXmZU6S/Lz/KeTTlEeP/H+D5+QNdbd4qinjiJ0g9yHdO8I79MuxwYob?=
 =?us-ascii?Q?bC1ESFzSSZXh3DWkOIJQKvgcvcZrnqviBYXRgyO0ID7qahtxniBQmeKr15dE?=
 =?us-ascii?Q?xgcI0ympu1kSUtZ+My99TPAwqEXpC1rkNHmRilU7gWWWA+VBrS3dmaPwNTja?=
 =?us-ascii?Q?bMM8H3oHnJUbC987oNSOghaoQHxhUv8yBM2CiIhsKs4PCg1DVRlnDHhNOZLc?=
 =?us-ascii?Q?0YJSZiFBwhNGNjg08IpHawVFE0RB3In/oDDrMII0D/mTb1iVTdUu6s7I4AtG?=
 =?us-ascii?Q?aQHUIoHBVuVsLqw7f7L5HNuUB/lwZQaSeIIt90MGHDqm4Ah/3Ofa3zXelq7u?=
 =?us-ascii?Q?QBXjN91pnZStrijAwjVDxXd0PiiME9VSuhgUaGJIuJcdTnpCLM0FBwsWnJYX?=
 =?us-ascii?Q?/ELOhgz3PbPsEv0xsmfpPcEMMsmKLzf7sUGCIr/ssoadRR3zRfU6hG+ApVQx?=
 =?us-ascii?Q?RAVhEJmUZ/CukqitPHlRCRZO/7BCjIDZjTWsjJdR1Ntg25gzeNxiuzePS0oA?=
 =?us-ascii?Q?rSGTEse2nfzS0hq5uOBhUQgORWJWW27QRkqKSxS8w/ciTeTQ2j9wp/Ldb+hc?=
 =?us-ascii?Q?SG1taoVuuZaHLooXfeiMz2Qn/XOfa+ajF5gnjZkn33YLa4T4j8LdJDNurVIK?=
 =?us-ascii?Q?4Tsgih4Z5tJwmkmzlUVIhrEx3B+261NkF9JYCL6cwy6lfhyHpOa5Q8YMhd+i?=
 =?us-ascii?Q?kN7mqc8+LyH2gSuKC12+NJ/bFpcC451PQ1duhvsLzYuwasW2JGdi95d1dkMK?=
 =?us-ascii?Q?QA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c6299fde-4b70-4f8e-7197-08db6811cc0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 11:16:25.0001
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dv7lI2+hbRLHV/AlB8fCEIxEnWPzdVSB0iogUzWdNVKMGcSSBJKe4ZWdiBfNMQ1Qj6NPtto+sFdkqi6OuESxvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CT2P275MB0580
X-SASI-RCODE: 200
Message-ID-Hash: VRYYKKMTIJMZM42Y2OSXIZRKKHIJFRAE
X-Message-ID-Hash: VRYYKKMTIJMZM42Y2OSXIZRKKHIJFRAE
X-MailFrom: LWabeke@csir.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Creating TX usrp and RX usrp objects using Two different threads using X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LRK6JDH6BH3NDD6EYATNKRLQOUSHWTUA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0723118773017570598=="

--===============0723118773017570598==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_JN1P275MB05351C0F0D0457FA8286E3D19550AJN1P275MB0535ZAFP_"

--_000_JN1P275MB05351C0F0D0457FA8286E3D19550AJN1P275MB0535ZAFP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Eesa

I am not sure if this will help, but in some of our code where we reuse the=
 USRP in another thread, I only create the handle once and pass that to bot=
h threads (instead of calling multi_usrp::make in each thread), something l=
ike:
uhd::usrp::multi_usrp::sptr pUSRP =3D uhd::usrp::multi_usrp::make(strUSRPAr=
gs);
cTXClass  tx(pUSRP);
cRXClass  rx(pUSRP);


Regards
Leon
From: eesa.nikahd@gmail.com <eesa.nikahd@gmail.com>
Date: Thursday, 08 June 2023 at 07:56
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Creating TX usrp and RX usrp objects using Two differ=
ent threads using X310
You don't often get email from eesa.nikahd@gmail.com. Learn why this is imp=
ortant<https://aka.ms/LearnAboutSenderIdentification>

[The e-mail server of the sender could not be verified (SPF Record)]

Hi dears,

I created a TX usrp an RX usrp object (using uhd::usrp::multiusrp::make()) =
using two different threads.

When I try to set subdevice for them the first thread can set subdevice suc=
cessfully but hte later fails to set it and throw an excption with this err=
or message: "Error: map::at".

(Example setting=3D> TX subdev=3DA:0, antenna=3DTX/RX; RX subdev=3DA:0 (or =
B:0), antenna=3D RX2)

If I comment the methods to set subdevice for the later thread (e.g. for RX=
: rx_usrp->set_rx_subdev_spec("B:0")) my code works correctly.

I wonder why this problem is for! As UHD examples such as txrx_loopback_tof=
ile, set subdevice for both TX and RX separately and it works fine. The onl=
y difference between this example and mine is that I am using two different=
 threads.

It is worth noting that my code works correctly for N200 usrp.

My UHD version is "UHD 4.3.0.0.-0g1f8fd345"

Can anyone help me to resolve this issue?

Thank you.

Eesa

--_000_JN1P275MB05351C0F0D0457FA8286E3D19550AJN1P275MB0535ZAFP_
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
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas",serif;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.hljs-builtin
	{mso-style-name:hljs-built_in;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-ZA" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Hi Eesa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">I am not sure if this will help, but in some of our code where we r=
euse the USRP in another thread, I only create the handle once and pass tha=
t to both threads (instead of calling
 multi_usrp::make in each thread), something like:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"></span><code><span style=3D"color:black">uhd::usrp::multi_usrp::spt=
r pUSRP =3D uhd::usrp::multi_usrp::</span></code><span class=3D"hljs-builti=
n"><span style=3D"font-family:&quot;Courier New&quot;;color:black">make</sp=
an></span><code><span style=3D"color:black">(strUSRPArgs);<o:p></o:p></span=
></code></p>
<p class=3D"MsoNormal"><code><span style=3D"color:black">cTXClass &nbsp;tx(=
pUSRP);<o:p></o:p></span></code></p>
<p class=3D"MsoNormal"><code><span style=3D"color:black">cRXClass &nbsp;rx(=
pUSRP);</span></code><span style=3D"font-size:11.0pt;mso-fareast-language:E=
N-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Leon<o:p></o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">eesa.nikahd@gmail.c=
om &lt;eesa.nikahd@gmail.com&gt;<br>
<b>Date: </b>Thursday, 08 June 2023 at 07:56<br>
<b>To: </b>usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject: </b>[USRP-users] Creating TX usrp and RX usrp objects using Two=
 different threads using X310<o:p></o:p></span></p>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%;cellpadding:0;ce=
llspacing:0;display:table;border-collapse:seperate;float:none">
<tbody>
<tr>
<td style=3D"background:#A6A6A6;padding:5.25pt 1.5pt 5.25pt 1.5pt;valign:mi=
ddle"></td>
<td width=3D"100%" style=3D"width:100.0%;background:#EAEAEA;padding:5.25pt =
3.75pt 5.25pt 11.25pt">
<div>
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
2.25pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-el=
ement-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;=
color:#212121">You don't often get email from eesa.nikahd@gmail.com.
<a href=3D"https://aka.ms/LearnAboutSenderIdentification">Learn why this is=
 important</a><o:p></o:p></span></p>
</div>
</td>
<td width=3D"75" style=3D"width:56.25pt;background:#EAEAEA;padding:5.25pt 3=
.75pt 5.25pt 3.75pt;align:left">
</td>
</tr>
</tbody>
</table>
<div>
<pre>[The e-mail server of the sender could not be verified (SPF Record)] <=
o:p></o:p></pre>
<p>Hi dears,<o:p></o:p></p>
<p>I created a TX usrp an RX usrp object (using uhd::usrp::multiusrp::make(=
)) using two different threads.<o:p></o:p></p>
<p style=3D"margin-bottom:12.0pt">When I try to set subdevice for them the =
first thread can set subdevice successfully but hte later fails to set it a=
nd throw an excption with this error message: &quot;Error: map::at&quot;.
<o:p></o:p></p>
<p style=3D"margin-bottom:12.0pt">(Example setting=3D&gt; TX subdev=3DA:0, =
antenna=3DTX/RX; RX subdev=3DA:0 (or B:0), antenna=3D RX2)<o:p></o:p></p>
<p>If I comment the methods to set subdevice for the later thread (e.g. for=
 RX: rx_usrp-&gt;set_rx_subdev_spec(&quot;B:0&quot;)) my code works correct=
ly.<o:p></o:p></p>
<p>I wonder why this problem is for! As UHD examples such as txrx_loopback_=
tofile, set subdevice for both TX and RX separately and it works fine. The =
only difference between this example and mine is that I am using two differ=
ent threads.<o:p></o:p></p>
<p>It is worth noting that my code works correctly for N200 usrp.<o:p></o:p=
></p>
<p>My UHD version is &quot;UHD 4.3.0.0.-0g1f8fd345&quot;<o:p></o:p></p>
<p>Can anyone help me to resolve this issue?<o:p></o:p></p>
<p>Thank you.<o:p></o:p></p>
<p>Eesa<o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_JN1P275MB05351C0F0D0457FA8286E3D19550AJN1P275MB0535ZAFP_--

--===============0723118773017570598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0723118773017570598==--
