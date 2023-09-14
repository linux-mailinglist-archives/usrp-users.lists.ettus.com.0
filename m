Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C33CE7A0357
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 14:06:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABB2A3855A7
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 08:06:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694693160; bh=4thvxUFB7GWedyNvN8nUm0a1Lt/1h3Xb8iZu0rUb/Ho=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=m9JVxoricpzu9ewrh24+SYm8gxCdnH79bDGV8/fGcN4sCWHvqkdp2GHE4JdAi8wDB
	 z9nKIYsjoO2dGhOtNalR2WJD4W+We7e0JHZimCwBSO9gCS+2/Zmna662GbbWI2CHEO
	 42RZurWkLbS9KN9azsEXlxGxsmXYxiAOqLEIma8K8t2m681B1goXhPkmqCQHJYDBfw
	 SOgLZ84o3wZoAH0EklEuSL0cM4Hrz2ByUyF6Fzdv//VXXuSpon3G8audo+g2mdIvna
	 AkC5ltm60QoX8Ymj/cYIwbf68mbW4BkBScgF42mC3tz2KXEhcslTbenqOv1t7aWUXL
	 kpxqqGeKOXxLg==
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01on2080.outbound.protection.outlook.com [40.107.222.80])
	by mm2.emwd.com (Postfix) with ESMTPS id 8002C385312
	for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 08:04:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=mobiveil.co.in header.i=@mobiveil.co.in header.b="Va7Ju9Se";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bnghvDilQYiDsYipGfNW2IckhDAeq6Qcm01/FASkjvkIyuzbaXHO5xuSz2c3x0wh/8Pixc5QPdqRZ0WytiV7w9TtieF2ObcF1PwB8K/8LilHx/t/NVEaPDLpeMg0psKllH4N6MmDQf8sArLJOay94DRrs21ittFlguEuV1VpMe01enN47qnmFQbMaR6P7sWVZPRyop61LrAHVd9ePoXhHl80Ph0xpFn0nmaMK0X7ULnwW8NShLWzn0lS2DJY8h0UC2TBEat8jZoyMgQiNtxZB2RIL5QPKez8xHrIz4G30XZunuOe9uP1cvreuZhXK3V/ivEGyBp6G85/k9tQD3tJvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5QGlMZr7+OfnXfM5v8F9R579Pl+pLZtvtaDiX5YwCxw=;
 b=E76SbFP8+AfDJ4DaxbTN1GKjlZZsew8psH66F94GhrGMF24i9oC0lXz74/bvGFHyAbqWHdDRF4sGdB8sRhX9kgbWcWkEnRbqUN0T+SbQecqNPhW7QdxDEVGbVJtqbavztSYtaICaZxfD/2ecYi5hAHgRhQTbeb1lSLNIPhqwOz65VHUg/2UiSqhT0HkGJFqIWO6assAmhBRlRWeCxQT/Cru6mynicM2jiRTg2X2dJGyfmhnWGA9l2rllL7PvtbgBYEAfn3TJsm/RnnsRlChbloSm4S6ixUeMSXjm/Y06SibfYSxyczyQ/8eqZmYeGZy5o2l4vJpD/KcYQYs0CrXfKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mobiveil.co.in; dmarc=pass action=none
 header.from=mobiveil.co.in; dkim=pass header.d=mobiveil.co.in; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mobiveil.co.in;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5QGlMZr7+OfnXfM5v8F9R579Pl+pLZtvtaDiX5YwCxw=;
 b=Va7Ju9Se7Kfo+bsY2FDaiAjc2DcYNICwrWFegpmqZhqFg1AYqVKDu7X3B/k2SMGcjv1lzXJMgYUNTCcS9x4YXHgJz3aVfgDIEFVco8zSefcafKQ7LRJ9D9KWqgPxAX+aAe0wjvYMm/xJFDVF3q0kyJ8i3iqXMxFNo+JbWOlhOv0G4bOygh3Etvb4L829Dezx57o+HbQ4ZlKfABdl2dfkLjxl1/b8X3Ro/w6k9LOdNIdYEj/GkQ2Wp9fYYjsZ9Cba27hy3lpHs4+GuRcOenC0zGdlEI4DdCJhxbSAlF/pnxDEi/AK8AYumxrO7iAHiPx2mamitD3WDgggEzDApWX2aA==
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:5f::20)
 by PN3PR01MB7366.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:8c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Thu, 14 Sep
 2023 12:04:54 +0000
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d934:2e34:a027:99ab]) by BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d934:2e34:a027:99ab%2]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 12:04:53 +0000
From: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
To: =?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL]  [USRP-users] Re: How to connect usrpb210 to google
 cloud
Thread-Index: AQHZ5up0FKjbBAdaD0uTxsCKOVi897AaHH+AgAAaWF0=
Date: Thu, 14 Sep 2023 12:04:53 +0000
Message-ID: 
 <BMXPR01MB3558895614CC5B0EFBD54F48D6F7A@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <BMXPR01MB3558BDD10C2CA34EE1843FAED6F7A@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
 <d2078af4-c806-ade1-ab94-4951616ff704@ettus.com>
In-Reply-To: <d2078af4-c806-ade1-ab94-4951616ff704@ettus.com>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mobiveil.co.in;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BMXPR01MB3558:EE_|PN3PR01MB7366:EE_
x-ms-office365-filtering-correlation-id: 4a7f64aa-5291-4bd4-52c2-08dbb51ace5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 gVfPbn+qLNa7wbArTtBzY/qUhEH2kpRrFXWhIQ11AQVxOhUiCxISOjfLqoZPknXSkgwOv6MRCuLs7eVctkW+aqK2V0MY3a/lN4t0UBmgQ7dEsaMTfyj6iY4h5NMGNHgKa04LiVYpE+6HkOjUTVYhcUycUdLJsP5fn+HmO1BcaCoEXKg++uKShJ9D2gijSH2pvF8Y9OPYoWDiykBBD3OkXmt8hpCJIqSJTzFaWgEfypMVZkryoViyi4oI3DFnCA54yid0WsVnnM1D/VMkQLZQ8bnYiGJWwapSpK+UYzZHvkEww8IKSMByADex38eZTkz/PrIdaeYmMRBmxkjBAFqIA8nlTzz+tjMqdoYwODNchqnwhCkRwBENGF5/v/8ZwXBvY/k8SJxjzDsDi2S0ZFVTXS3nUVIgABMq0QQGoztKlqiX9H3Ei6fFTTkQgeEQURLm2oE4fdkcQGnYwlqU0O3C4QbxWRXx+mMF6Mlea8MhqhEbM6C3v9Y1jpyyykUdamgHvhrUEmg06DeqRCTye8l4P6mHPhwCDiRYWgKHyl2FPyOTTag+0oEX35mYzJru3EpImoocl7LLkPO07dbwiaWc1Q7enHZpMKk24nE22B73vjXFjz94iZO6GeFFP24DNxN7
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(136003)(396003)(39850400004)(346002)(1800799009)(186009)(451199024)(19627405001)(2906002)(33656002)(38070700005)(86362001)(38100700002)(122000001)(8936002)(55016003)(53546011)(66574015)(52536014)(8676002)(41300700001)(26005)(55236004)(6506007)(71200400001)(7696005)(9686003)(66946007)(66476007)(478600001)(66446008)(110136005)(64756008)(66556008)(5660300002)(83380400001)(76116006)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?7eKLawvgRvktfO2U75fFb9e/7CEdlHqr36i3ZbYRi+O7/h7IiFy1NKLSVe?=
 =?iso-8859-1?Q?gRIaLrMgD+8G/oPp9NMPIW1/FIY9PKSOg4dDKEB5sbDYRVFD+6MkZq1JIJ?=
 =?iso-8859-1?Q?9u0FMz+Zgaz3x+ksUGFfFoB0k406h/ASdPpDvvHuPvitw6azRH6k4u5E93?=
 =?iso-8859-1?Q?e2oGIuIR0EHXzFCsJTLOZj6jRpy2HVtvAD/uIEhFmg8iKDQmP78BTLVA3y?=
 =?iso-8859-1?Q?R7WgP0Id1CpdEqhEm2JlwUOmOyn6xJS3d+SOYKd8pmBRCNVJY1eTGexZtX?=
 =?iso-8859-1?Q?AJbIfNC+uP5eVIt/VINJQi4KWuS8Orh3gpNVj0YMnQZVQninZ0vOvQevxI?=
 =?iso-8859-1?Q?i/jUxuY+OhjFwcxaKN4gTy9/wmhC0n3/Ql6ch6YQpA/P5XJXyVB6dz22T9?=
 =?iso-8859-1?Q?9FqJJFzbPZLyZBF2QbffO/GBF0CIl//umMPf1y7I9E7yBUGqIgOhjhYuZg?=
 =?iso-8859-1?Q?y9ClYyErrsIYUFKNoyL0basgUBkrii2ID5vjdnJDknGz3cELs+9jElmftn?=
 =?iso-8859-1?Q?E58p1ZjWqKYjfRMu+EizR22z+b8E1EBrOXiKmjVhJiWe9bwtZ38SFoj4yd?=
 =?iso-8859-1?Q?yqnHZwU1Z/klIitgkhx8A9hKw3/ZhPWTBflITUaqSDDwbkdoYIW20Wtj2r?=
 =?iso-8859-1?Q?qN4T0yDxa8MIwmGr74URDvKtE2GhAXjOLU/pMBBkyZwJK9yMGekDt88py/?=
 =?iso-8859-1?Q?Y8LJkUc7KvtlA1zjrKnMizLnQ2uu3RuGxG8cTAjLoaIqS08p0LurG6i9BZ?=
 =?iso-8859-1?Q?YMAGTO+4C3yPZWNlly+zfUSbv6O7leun/hwmMv6Cy8h76uq4DretcNSnIO?=
 =?iso-8859-1?Q?ii2FU33DTm7OftIsKJ4UT/yr/5xKPeftSPua/VASBmckngZlS5YhlzCwBc?=
 =?iso-8859-1?Q?YvVYmwUHkEn5jIz1QpxIdBXwOIwWIEzXWWUvpff/vTeZ2VnAkXY5VjkjS/?=
 =?iso-8859-1?Q?iXYVE6qdYUjiOpYKRhEUFJV3ClxU8M9J3yRy/h05UMMZzhIFgUoIFtXlup?=
 =?iso-8859-1?Q?YOuN60x7DOWLUMDePxafLcdiubHTC8KyLMLltNKq9Z59Cu0SkD1Ml00DcD?=
 =?iso-8859-1?Q?XCUE42sXqXYRNcSeyh9MAZCVzkHcyO8FdQg/eh7Ar44PUrD7/WkNRP26A9?=
 =?iso-8859-1?Q?pBarPTICMvAsiNHJFY+gyXY3Zq1oiZzpWLNvAgB3pZmtbwnaU5W8QW42P+?=
 =?iso-8859-1?Q?BijVlQWAPqPjNTt9jNgBiEJrnPJKeOcQ89DZ8GO9Bv5R49//XoBif2jrC/?=
 =?iso-8859-1?Q?leN2Ge3ijNGABOsuHHtUw8F+QlwqPlB8mmfW027gYElSFG3K2ZsvOraxpX?=
 =?iso-8859-1?Q?ao+6Yi/F5R9evPqzg6zHSB8XVFCRn8ZyyNVk1uEl5ZLr+blD47uS0hDkSG?=
 =?iso-8859-1?Q?8CEXUiGrgXbd94F523XIrcJSkyobVG6BJLwKQUCCVANeT8gvQB8IV5RsiL?=
 =?iso-8859-1?Q?lNHkkpLwrGy84gD94UtppSuyYXz1F8/L7PrY8/9s8msdMsJkRgmP9sDu/H?=
 =?iso-8859-1?Q?WZQDF+rZPfJLqWxVlRi7357qqY5Xi7Q7Kh4hnJUCMiDlkA5Az1Ym5eVUSM?=
 =?iso-8859-1?Q?WVuFC+azX50PBr27r7lDo6CR3mjuqohsk4inwSgQ7r5Rwy+JiMgypOD+Lu?=
 =?iso-8859-1?Q?re8LmVUweWUCp83pirSnuqFxs6pZhMUuerokw5yzQzXIMKR6qw8/P2uA?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: mobiveil.co.in
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a7f64aa-5291-4bd4-52c2-08dbb51ace5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 12:04:53.8823
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fc646429-760a-4f9d-81fc-c568b17eb1c2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JL3+tpdZxZfiLPwGaTHxqhn0OLv/VvD12ryyQ8TzI00wrH49u0JR9c3f0J5kKxk2S4/oLD3cn3ymdFNhP+zA2gujaUcRPiA1LCILBc+mpNQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3PR01MB7366
Message-ID-Hash: 4CWPJ7CR7KYLQPICKD3JLJJNDEUG3SLB
X-Message-ID-Hash: 4CWPJ7CR7KYLQPICKD3JLJJNDEUG3SLB
X-MailFrom: k.sivaneshkumar@mobiveil.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]  Re: How to connect usrpb210 to google cloud
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TSZVW42O37ZB573CDO7E7FYDILBSOACX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2371746406600673624=="

--===============2371746406600673624==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB3558895614CC5B0EFBD54F48D6F7ABMXPR01MB3558INDP_"

--_000_BMXPR01MB3558895614CC5B0EFBD54F48D6F7ABMXPR01MB3558INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi marcus,

I am trying to test 5g by using usrpb210 in gtp platform. so, i deployed co=
re and gnb in cloud .

for example i am opening cloud in local host via vpn and connecting usrp b2=
10 in local host.



how usrp will connect to cloud platform . i think its possible to communica=
te each other via ip address


how will get usrpb210 ip address . if possible, give the command .

________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: 14 September 2023 15:51
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [EXTERNAL] [USRP-users] Re: How to connect usrpb210 to google clou=
d

CAUTION EXTERNAL MAIL WARNING: This message has originated from an external=
 source. Use proper judgment and caution when opening attachments, clicking=
 links, or responding to this email and report this mail (using the applica=
ble "Report Mail" buttons) if you believe it includes malicious content or =
is a phishing attempt.



Hi Sivanesh,


this is a bit confusing: Google Cloud runs on Google's datacenters. Your US=
RP is connected to your PC, not to google's datacenter. So, long story shor=
t: you need to do initial signal processing on your PC, then can transfer s=
ignal, or data, very likely at a starkly reduced data rate, to the cloud, f=
or further processing, if that's what you want. I'm really not sure what yo=
u want, though:


On 14.09.23 11:48, Sivanesh Kumar K wrote:
After connecting usrp in local mechicne which as google cloud , usrp is not=
 detecting

I'm sorry, English isn't my first language (I guess it isn't yours, either!=
), and I really don't understand what you're telling us here. Could you ple=
ase elaborate what **exactly** you're trying to do, and on which machine?



Best regards,
Marcus

Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review, use, disclosure or distribution is pro=
hibited. If you are not the intended recipient, please notify the sender an=
d destroy all copies and the original message.

--_000_BMXPR01MB3558895614CC5B0EFBD54F48D6F7ABMXPR01MB3558INDP_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I am trying to test 5g by using usrpb210 in gtp platform. so, i deployed co=
re and gnb in cloud .</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
for example i am opening cloud in local host via vpn and connecting usrp b2=
10 in local host.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
how usrp will connect to cloud platform . i think its possible to communica=
te each other via ip address<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
how will get usrpb210 ip address . if possible, give the command .<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt;m=
arcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> 14 September 2023 15:51<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [EXTERNAL] [USRP-users] Re: How to connect usrpb210 to goog=
le cloud</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"background-color:#FFEB9C; margin:1"><font face=3D"Calibri" si=
ze=3D"4"><font size=3D"3" color=3D"#000000"><i>CAUTION EXTERNAL MAIL WARNIN=
G:</i></font><font size=3D"3" color=3D"#FF0000"><i> This message has origin=
ated from an external source. Use proper judgment
 and caution when opening attachments, clicking links, or responding to thi=
s email and report this mail (using the applicable &quot;Report Mail&quot; =
buttons) if you believe it includes malicious content or is a phishing atte=
mpt.</i></font></font></div>
<i><br>
<br>
</i>
<div>
<p>Hi Sivanesh,</p>
<p><br>
</p>
<p>this is a bit confusing: Google Cloud runs on Google's datacenters. Your=
 USRP is connected to your PC, not to google's datacenter. So, long story s=
hort: you need to do initial signal processing on your PC, then can transfe=
r signal, or data, very likely at
 a starkly reduced data rate, to the cloud, for further processing, if that=
's what you want. I'm really not sure what you want, though:</p>
<p><br>
</p>
<div class=3D"x_moz-cite-prefix">On 14.09.23 11:48, Sivanesh Kumar K wrote:=
<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
</div>
</blockquote>
<blockquote type=3D"cite">
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
After connecting usrp in local mechicne which as google cloud , usrp is not=
 detecting
<br>
</div>
</blockquote>
<p>I'm sorry, English isn't my first language (I guess it isn't yours, eith=
er!), and I really don't understand what you're telling us here. Could you =
please elaborate what **exactly** you're trying to do, and on which machine=
?</p>
<p><br>
</p>
<p><br>
</p>
<p>Best regards,<br>
Marcus<br>
</p>
</div>
</div>
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review,
 use, disclosure or distribution is prohibited. If you are not the intended=
 recipient, please notify the sender and destroy all copies and the origina=
l message.
</body>
</html>

--_000_BMXPR01MB3558895614CC5B0EFBD54F48D6F7ABMXPR01MB3558INDP_--

--===============2371746406600673624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2371746406600673624==--
