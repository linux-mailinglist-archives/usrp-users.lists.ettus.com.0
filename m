Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CB869FF8F
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 00:33:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CD25383EF0
	for <lists+usrp-users@lfdr.de>; Wed, 22 Feb 2023 18:33:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677108792; bh=Oh5H4zeCWqtVTtPRTarH5Wa4DIxgM/E2BRcY7hKTx2U=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=InqtZVDbzeiL6dsYn/eE3zn+ZI7TIIsK4BLuQQdI/u9nnCsX5H9/HG0h+uVx4xoDa
	 Acrftmhmf8nHCyajLem/02plYDQXkbk+KIthO2n6zYX5rlY34YCVSHnrpB5UdiqRQb
	 UOxk+moUMaJw8twZiWIjTXtjIZ6vQeTnOAKO7auWnygDNr6DnMM1bw08MzQ6QFxD2S
	 SCfzCel2EUVxb8pjWy8y4o29ASnziRMsGAgwY9sInNanSJdi+Gd/HWRd+nrc0XMMAO
	 JwCtxwB/LWt/BqtqH03is0SJy/YPs+aKyZKrF8FeiyPYGkOL4XauI2j8rn4T7s3bRa
	 EhJDnnTzaBe3Q==
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2074.outbound.protection.outlook.com [40.107.237.74])
	by mm2.emwd.com (Postfix) with ESMTPS id AE49D38419E
	for <usrp-users@lists.ettus.com>; Wed, 22 Feb 2023 18:30:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=msu.edu header.i=@msu.edu header.b="ORfV9/q+";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YkXceEMMKbXC/iTEkaToNaXkyluNKbFwmwCnwraPcfdhGhMn50tSmYmLPClqeGG/jGFmML5dDgGxrejp0u7wyS0BG5fJkS3k2XnEczyBGywxWr5yCQS+hIEu3GCKxAqYvZolCoU9zwnJsojxhwyW6aLrD5dMc3z9wxw8KU7SaKeurZtP8JahdKF1Z4COJSpU4FTONVa1zVeMM0v27WCbc6/4Oy29LNtDo0oKIi/jXhFT9ea/eUYUfyl9LOw253TcTazAf28YEAy1FA0/ePKdziScxThLd62dacywoy1LnMghxoo1xl5eHqs8aJ5BP/zDfq9rZ9X/UxlnbyyvRqSifA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lSkkYIDJalWzfPdMTqA+mVdi8NBWhcgq1h2e+tCDBFQ=;
 b=dpj6GzXer2lvAa0NRgYOGJIhdTr7UpOFaxHsvqtSgbyJtlJccMKbIv+9tiWIikfEWYYFf1iXgg+0wwbnsCNknWRePia9+Xk2m0l3/HljDJBYAWUeK2xRc94mGm589SLMnRs756ttayglBuKVDzo9s1Y+xCpi0J831cj0u0xvWfnUXJkyNbHGyXK6kTfZXnmd3aAt4/8OFgenDzTbq1+GLo/7sjJ081fZIbRpudJ2naBAbdqdjtA9dTrt+q5YxV3cLZcC0sZWy/44HjcZsMdwrc92k/EGEKB0ZdNCr6rA1acyMiXe17lJfinfMisbYsNpPG8MprhCG0ngZ7QYzrr6QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=msu.edu; dmarc=pass action=none header.from=msu.edu; dkim=pass
 header.d=msu.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msu.edu; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lSkkYIDJalWzfPdMTqA+mVdi8NBWhcgq1h2e+tCDBFQ=;
 b=ORfV9/q+RN+TS+y8oxOFSsUrg1EfHcBPalu+od8NI7PLvxmqizK8/hxFIXN/h2F/A6OWlHftV38fIywJoxCL5sFoODTbPPruK55qWjTB7OkmBu+BADCcI9mpWfr79U8gA6WdtNajgbkdYdnvfxu02qpH54m2HV9oDiSH8Qucduw=
Received: from CH0PR12MB5370.namprd12.prod.outlook.com (2603:10b6:610:d5::15)
 by PH7PR12MB8106.namprd12.prod.outlook.com (2603:10b6:510:2ba::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.19; Wed, 22 Feb
 2023 23:30:37 +0000
Received: from CH0PR12MB5370.namprd12.prod.outlook.com
 ([fe80::74ba:bfd2:6eeb:e743]) by CH0PR12MB5370.namprd12.prod.outlook.com
 ([fe80::74ba:bfd2:6eeb:e743%4]) with mapi id 15.20.6134.019; Wed, 22 Feb 2023
 23:30:37 +0000
From: "Wolff, Marcus" <wolffma1@msu.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: GNU Radio Version Update for Ettus E312
Thread-Index: AQHZRxV0TBilVA0+okiyugZIrEKCxw==
Date: Wed, 22 Feb 2023 23:30:36 +0000
Message-ID: 
 <CH0PR12MB53704B56F54B946D87A0865282AA9@CH0PR12MB5370.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=msu.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR12MB5370:EE_|PH7PR12MB8106:EE_
x-ms-office365-filtering-correlation-id: 25ee92af-aafa-411d-1443-08db152ccd1c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TD9+p3G8UQALHJxO7ZI4vLy2+dj0NwJunMcmQ7bDMzIqf7iT1gKD6gu7aF9QfMblZw6COVMRjCcEOeE18c5qr+snmm7tixuczJwyS3O5DhMoZQ3UnWKqbRm6k2UzSz0tiD7gKk6LvjZkZOXcrGUprreadc7tRiYs+4vIsQOSPgb4F1/WP+A9xC9OmXti+155E4jfewvPJwduhT4AdWbagIdQMlBEUsNauX9WnFox/VK1ok+qiLIhNqkZugmqTB2CRvfSoSwI+ZPbtW48XszG+O9oko9rfMW6bTNYsvnkX0B7BQi62Xmu3mPRhIugf8l/1Uc003tXDWlw5qSh79m2W8uipuOlfYQ1VKQyLaxpxvnwYWqqgOJKv9Rq/k81yATYzHf3pA1euLMo9NaaBaCXFoMV/Wn5NKKBytFvWv/MTZ5Rqy+B/dtzwZYcqqppXp0hZTfAnl8OOkc0cPv5DSPiELwvDJ04XCdvIiAVFQClfesRPfcX/AvuNwbYnOE3j1XU/6lWulex/TOWrn6Z6+mvk8804XM2zXhAQDtyAau+TlGgQ2/KmHYGAlg6Qps3IkH9L/teXypb/bzqtcJQ9BPBv99kROqBKtoK4KDsSy5t0gCuwYcpPl6i5VZ7SSNXlDTttHHxsZNRBaxMzP7mg8Wv5MTmtr3K4uZqZGzNjaJvieWKW5E2WOLOJS6/uZp22vRR
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR12MB5370.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(451199018)(45080400002)(786003)(83380400001)(316002)(122000001)(38100700002)(478600001)(15650500001)(2906002)(4744005)(86362001)(33656002)(8676002)(38070700005)(40140700001)(166002)(6916009)(66476007)(76116006)(66946007)(66556008)(66446008)(64756008)(41300700001)(52536014)(8936002)(55016003)(5660300002)(19627405001)(75432002)(7696005)(71200400001)(186003)(26005)(6506007)(9686003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?iI4LmQPDuIoNTi5kbMA+e+jqO8RCO1OC7IOiYyQyGaApuBoNukT26fmUFY?=
 =?iso-8859-1?Q?5NwVPYv0xzt9CaD5QZ81/oEx0Hr3SzrouEp/DR1pB/XzG+DVlzL0y7kTz6?=
 =?iso-8859-1?Q?4Z4R77YMh+PQyxbetyhnkW/pw9WhoWF1/miehfuGj5LprasWTNjUN8IJk4?=
 =?iso-8859-1?Q?lO6/PM0VNx9rHWM2dgFWQkXSf22m9Pt/qVgRhM02gxAk2DttzUE3Xtknf3?=
 =?iso-8859-1?Q?x2LsDrame5gA3mkfk8Mi7UInbyotmkaaqUPi5qut4KiSEKyXHg9204yxGQ?=
 =?iso-8859-1?Q?zNp/gu3qmAvX0pCiS2N6Xvep89PCwTjyOYmEbvdiOCHLeeBgLvrRqVf+gs?=
 =?iso-8859-1?Q?DBv0fIfzxcg/rFcIfEn5Aegn7QgnKsSYfK82EGWeOQ2+l4JUVy3ImmlqO0?=
 =?iso-8859-1?Q?ockvjfLqH6snNIvjtpxMNaLdH7u53Xg8IycCWRdofFiqwyTl53gpsOdayh?=
 =?iso-8859-1?Q?z9OaTq9B5rADkpjsWo+9Ymh3Cb/2Wc/z6WQbhv/ZWnq6gr1HaP0Y2tsUfV?=
 =?iso-8859-1?Q?x83rkbJgyHrrRJOGVYkUcUf8grJ1lrIlvXg6aIhP2lERFMXsYGU2QJxuxL?=
 =?iso-8859-1?Q?bNBnusiRoRpAab1miTiMqNUQS0GVXWL8qkhhGFdRujAyj8J3pHILjqTonz?=
 =?iso-8859-1?Q?nWk4CPpMD+pUG8cAmUWxkto6ejHZU98oqmG39tl8KmtXB5ILpbtiBh1SWW?=
 =?iso-8859-1?Q?zrc1Ch8co84331roI/AWL+A9gNPdBa9dtwOeBt6junr0YZcSudsVzQEhAv?=
 =?iso-8859-1?Q?JhEwf9Xqf4YIzn5DtQKes4WwreCwwPdHHZEKfW7cxkF94lI6HKM59MQHGT?=
 =?iso-8859-1?Q?YRqeNISv8mc9DJIMJvWJtlfcMkLlkF/9MSAAGK8abkgVbcMi9tv8DiDU8S?=
 =?iso-8859-1?Q?rSorcrLaxmhXPY/XtCBb+9BPFBIkhB55VlaT+fN2/stGb4B1JMPBnYTJLC?=
 =?iso-8859-1?Q?w1NkosHY3igSRiMCF0oFul33L27cpEeNbUQ2HVgJ3zXeO9t8LARLubgRNc?=
 =?iso-8859-1?Q?+sAzhFYfcHdjm0e4DtURV8Yklc0gycZdrlkTSn4U/SsdFVLKjZ3gfJP3+H?=
 =?iso-8859-1?Q?uL4+T0oXu+HHpfwHnCUjRw+gmrmRwgLw8aZHFsI32T+866RhgAOMmGbGyq?=
 =?iso-8859-1?Q?o+DzLWgPIM+H4ag+Sl3Fg8XdTdiDwl2glvbyq5rlIM9Ff6V16IFqiLoNtP?=
 =?iso-8859-1?Q?saGUhJvLThqsj3m+jF1VSSkkVE0HzF/3TtWo0Ae953EXngzfzFCLJSVPdl?=
 =?iso-8859-1?Q?b4WlNKt7wYRc4j4jNk9iPvM1KE5i12B1lo8s+s74D4dbdrMOZCa7iUh+bJ?=
 =?iso-8859-1?Q?dysNV3VMOOT8hBGWNXuLUWZrWD4/mYxaWCk0GIo2DlDdUnG5H7YqIpFOYl?=
 =?iso-8859-1?Q?qRGJdJMGxUqVmeL3ZHv1k8DMBkI7SZqu+yD7dSt5X7bWAjnqyA/HbdSNEj?=
 =?iso-8859-1?Q?JifqlVBjuJJJGvYeKLYPnq/1HUR0L2N2aD3l6Udn2+g5+XIyBYv6BEETMK?=
 =?iso-8859-1?Q?H6vTGrGkjxu0aOIRtR5PjKTJvOLC8FwYTZv2Sm5pyks1lD6aHfFZFIwrZk?=
 =?iso-8859-1?Q?1Iac7WFUEPxqjyl+exO3itg0WH6wICPfjebvNjht/nkTy7Q55s4YURVJoa?=
 =?iso-8859-1?Q?dInLPFHh97EdE=3D?=
MIME-Version: 1.0
X-OriginatorOrg: msu.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR12MB5370.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25ee92af-aafa-411d-1443-08db152ccd1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2023 23:30:36.6814
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22177130-642f-41d9-9211-74237ad5687d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2juX62CVZo82DLCaKP2D8xlcs8yoBc14jSt0uqTM1KoQq1m5GG+cMmiX4dLDPCp3//RpkS7XiLe5AH6fv6ASNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB8106
Message-ID-Hash: 3GEVKAZKL5MIM7PZ7Q5YZEGDAAFYQUVP
X-Message-ID-Hash: 3GEVKAZKL5MIM7PZ7Q5YZEGDAAFYQUVP
X-MailFrom: wolffma1@msu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GNU Radio Version Update for Ettus E312
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EAY6GTQMTTLG76FZEBEO7DW2WHNVRJ7K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0298840491405516444=="

--===============0298840491405516444==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR12MB53704B56F54B946D87A0865282AA9CH0PR12MB5370namp_"

--_000_CH0PR12MB53704B56F54B946D87A0865282AA9CH0PR12MB5370namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are trying to upgrade to the newest version of GNU Radio on the Ettus E3=
12. The manual says to use the oe-sdk shell script (https://files.ettus.com=
/manual/page_usrp_e3xx.html#e3xx_software_dev_sdk), but the most recent scr=
ipt points to use of CMake v2.8. GNU Radio v3.10 requires CMake v3.8 or gre=
ater. Is there a newer version of the oe-sdk shell script available? Trying=
 to manually update CMake is yielding problems. Thanks for any and all help=
.

Marcus Wolff
Michigan State University, Class of 2024
B.S. Electrical Engineering | Honors College
(262) 237-3262 | wolffma1@msu.edu
LinkedIn<https://www.linkedin.com/in/marcus-wolff-136178219?lipi=3Durn%3Ali=
%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BdDsXNe%2BbRmelR82=
z5p019Q%3D%3D>


--_000_CH0PR12MB53704B56F54B946D87A0865282AA9CH0PR12MB5370namp_
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
<span style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helveti=
ca,sans-serif;background-color:white">Hello,</span>
<div style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetic=
a,sans-serif;background-color:white">
<br>
</div>
<div class=3D"elementToProof"><span style=3D"color:black;font-size:12pt;fon=
t-family:Calibri,Arial,Helvetica,sans-serif;background-color:white">We are =
trying to upgrade to the newest version of GNU Radio on the Ettus E312. The=
 manual says to use the oe-sdk shell
 script (<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx=
_software_dev_sdk" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=
=3D"NotApplicable" data-safelink=3D"true" data-linkindex=3D"0" class=3D"">h=
ttps://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev_sdk</a>=
),
 but the most recent script points to use of CMake v2.8. GNU Radio v3.10 re=
quires CMake v3.8 or greater. Is there a newer version of the oe-sdk shell =
script available? Trying to manually update CMake is yielding problems. Tha=
nks for any and all help.</span></div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div></div>
<div class=3D"WordSection1" style=3D"page: WordSection1;">
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
&quot;Calibri&quot;, sans-serif;">
<span style=3D"mso-fareast-font-family:&quot;Times New Roman&quot;;=0A=
color:black">Marcus Wolff<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
&quot;Calibri&quot;, sans-serif;">
<span style=3D"mso-fareast-font-family:&quot;Times New Roman&quot;;=0A=
color:black">Michigan State University, Class of 2024<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
&quot;Calibri&quot;, sans-serif;">
<span style=3D"mso-fareast-font-family:&quot;Times New Roman&quot;;=0A=
color:black">B.S. Electrical Engineering | Honors College<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
&quot;Calibri&quot;, sans-serif;">
<span style=3D"mso-fareast-font-family:&quot;Times New Roman&quot;;=0A=
color:black">(262) 237-3262 | wolffma1@msu.edu<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
&quot;Calibri&quot;, sans-serif;">
<span style=3D"mso-fareast-font-family:&quot;Times New Roman&quot;;=0A=
color:black"><a href=3D"https://www.linkedin.com/in/marcus-wolff-136178219?=
lipi=3Durn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BdD=
sXNe%2BbRmelR82z5p019Q%3D%3D" title=3D"https://www.linkedin.com/in/marcus-w=
olff-136178219?lipi=3Durn%3Ali%3Apage%3Ad_flagship3_profile_view_base_conta=
ct_details%3BdDsXNe%2BbRmelR82z5p019Q%3D%3D" data-loopstyle=3D"link">Linked=
In</a></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
&quot;Calibri&quot;, sans-serif;">
<o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CH0PR12MB53704B56F54B946D87A0865282AA9CH0PR12MB5370namp_--

--===============0298840491405516444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0298840491405516444==--
