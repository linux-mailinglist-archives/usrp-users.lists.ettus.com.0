Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F743A41DC
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 14:18:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D53D38414C
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 08:18:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="s1X6fls/";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.164])
	by mm2.emwd.com (Postfix) with ESMTPS id 07FFF3840D2
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 08:17:39 -0400 (EDT)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.178])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id B5C5C40066
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 12:17:38 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2102.outbound.protection.outlook.com [104.47.55.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 69DFCB00073
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 12:17:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oUgdUkm0M+oGJbonpA4sEHtYNimcwOP0Y9W/RbOIHkXL94zIRYca1fNMVFpyaLjtgpDhbbTgpRM6MyY0CywVyPla0BVYhL5dU0UN20z/3Ei2D9EgiL8Q3KIixvrAcNwKTHATisyvZXtWHq5vE44Sn5gBH7EonUGReu6XAqYmAbG0fI+Mp+y+9HM4Rb6pwZgp5iFbzyBiVz0wKGbnpUL+xhMY31AAbR3D80rIZ4gghQsw0xfM+HwdLIywbJXfVdF27FcF0WK8GqWrpgkSaxmzyceMM+UoiucCV+0MZbTgqvSrjPpxAI/FnS1D+/Fdb/H6Ei6oHhEeEV+/h26fqV1kdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FTIeb27QBaA7XrWQAOoUo9Giy4MMFJ+FYAwtiZduj4E=;
 b=nTPQ4mLohpFyMkX/NTjN1QOznXfnbxD3fVsrFBfQqX6/3GrgSuyBt5Qr8xvmh47oZabiFMtF2udF5QpT0c4dWbE+JEwPwc8Q2BDGlvhWZXxXA8A4nVHC3WwaPrN96nyt5LSx8VWEj009EZcRqT9gsK7EPuQ+Nnwn7EMcvJz1taCm/Eo/GBpOvsyPW8mXjC7dalR2vazHySqsjaUcde00D26KJct8DDSC6rlm8LhPsGwlIM3cN5UX86mkDXoy846bFeg7G3XtdRaL1vgEYUwhvi/1eMrO5p2rJHlILDKzRzcQIae/k/9cmpj8FSDQ/WeUuNW+eWNT7hoY32WSDdbFAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FTIeb27QBaA7XrWQAOoUo9Giy4MMFJ+FYAwtiZduj4E=;
 b=s1X6fls/lPXZkgWK+x+y5vEg/eD9EV6XGhJ6pLczP/Pxfhng9Dr9psRm8If+lQxXBzymwdw9jOy7IajYuUPS+ee6f7aZ/vTM0o6UQd5b4VGlRObqC6gWCZucNDe9d0vgR0lzQfg0i0zHZ2VAAh0bqTmlrHDK388WqxvdGKX4vkc=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3648.namprd12.prod.outlook.com (2603:10b6:208:c1::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.20; Fri, 11 Jun
 2021 12:17:35 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::cb6:31ec:520c:c197]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::cb6:31ec:520c:c197%7]) with mapi id 15.20.4219.024; Fri, 11 Jun 2021
 12:17:34 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N320 1PPS input voltage 
Thread-Index: AQHXXrsEFk6GKS0mUEmOl1kUojleFg==
Date: Fri, 11 Jun 2021 12:17:34 +0000
Message-ID: 
 <MN2PR12MB3312739D7A0996F851BC7093B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8e7acec1-dd30-47cb-73e5-08d92cd2e522
x-ms-traffictypediagnostic: MN2PR12MB3648:
x-microsoft-antispam-prvs: 
 <MN2PR12MB36486F084ECF47DB271D291BB8349@MN2PR12MB3648.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 NRkJLnyeL/op2wKSZawcgOow/kpbDqxCUVme3TtkOw8+FeoPHz9BHJEpdTYWf7OubLbBjaKLG9X18T87hVnuZ7ZMBnHx/oI3jm2MHMhcIy32R9cQCdGUWIXxeX7cbnkS2OWSXGmb6BY9sZtApdg17j26bOxkbh/My2jN2vVOfzT+GJP03rx9Fle+T08faAs2nICvYhEHTqHLUmm7n0psl2t2mp5+QJ1iJZkLY+AmIyIDxQPvaiADuXIazYYo4aSRgD5aWrd53TOMaxFHaPdLdqWjtJKhHPi56Yy5xR6uNXlIOyCn0Lt4zJFyxZULcFr84ur70uvLaPLZvQBMj0di+5vYJQGA7MyxbJnxyH9JUialAQiQDKPgj9CB+3mhGQ7pBgSEUKDyrTg9sv9iz08n1OqPhC6v8YTW4xtV8CxyjWkzv/nxqadPINVFwQnH25a+rslUoxm2He5OcQ6XqVaa5CeRSsNoV8xTEjD8TxrJbAxFYHuTdFmSPyJ9iSXR33SXUJaU6+nILz8REEwOXwgvw4fKtL0hZ5ib0xpJ8Uj+gn5EF/phsZPM3FRXQiSH3IlxF4dMrjSLShi4KyZbXUoqeFq44rhKiOu36HToSkdkigIXuy4yDqSexxDNYqN+e+Dt0v3e80RNcmiOldZnRP6eTUGK8Hv35krRzJ8h1Ndoovbu0eUqf6Vw2ZW3JlW0VqFtGCskDErmP0XpDdmC1l3X3A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(366004)(39830400003)(376002)(136003)(346002)(8936002)(83380400001)(4743002)(55016002)(86362001)(6916009)(8676002)(26005)(5660300002)(71200400001)(66446008)(478600001)(38100700002)(9686003)(316002)(76116006)(64756008)(66556008)(2906002)(52536014)(186003)(4744005)(66946007)(19627405001)(122000001)(7696005)(66476007)(6506007)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?GRQ6PJCmxRVkVA3pCnBf5u1XEIvxXqlH6fg7bOK+ldG4vxMn25AArpAjx3?=
 =?iso-8859-1?Q?xr8AMfY4qjLZ7cULQ8D3vhBbz75ZkIdDWEQ4fvxRj9dMlhpWe1vdvqmi4I?=
 =?iso-8859-1?Q?cA89T+pjdgxLJPW7U3ZPeWtPFkxUgrMjsbsTiSrerzYXXWcj7Kro9gULd4?=
 =?iso-8859-1?Q?7S+wBy4xMhKpSpAJlSmMEWa9xTpCG+sq4SF9/XaEQYMqm5GQJ56URJPxos?=
 =?iso-8859-1?Q?pcWxlCAJVcLcccKlKf9KjyoVpOLd99V/m8yvn/y3nDpEMwm1AG9mCBMVp+?=
 =?iso-8859-1?Q?mpzpDIhVlO1UBLjgj2pn7da4ZmMGBcXrylJXDp2hWeBIOMg2eaoii7skpb?=
 =?iso-8859-1?Q?8S2iz3iSwrRX0ySUoKckrGOs7+GMe1Jg23GSpeEN5tZFFPZx7U0MVm1OjY?=
 =?iso-8859-1?Q?1qZmbAcjxDXYgGwhflEv8Cl91p33+IA74JVjxWNEIZGdTBBy9Jy36oGu4c?=
 =?iso-8859-1?Q?Fr0KcJomxryo2gFTiQHlEvHBkj8WmnV8krXi+Njxihcvt6zQey9MX3T6GA?=
 =?iso-8859-1?Q?i4FJgujgKXqm9+tAJMAU7s7ZsHNzhNU1cK6i1Npm6aEtrLUkWUDHT2Dqmg?=
 =?iso-8859-1?Q?yRUDnDUjmtq6nrXyFZRHl4cmXrOTT+Zl5lmDcNgVeZjpCV+SJ997yGcvfc?=
 =?iso-8859-1?Q?hJbohaUdZxUQu2RwtHYwRBiY4z/VvQrPs7CZOjgMBFFZ3l3cKbWgNNIB3G?=
 =?iso-8859-1?Q?Hj4EHFB301GQZ1azNQ1NOae3ov6oI5jPGzBOnPDa+pvRDNrIwkk1Q3X81+?=
 =?iso-8859-1?Q?pdTB9ANSsqoUYFp77ka7py7qH0mMVpYTJR1Xo9WSuV2A31yc8XAohNKlpf?=
 =?iso-8859-1?Q?9LkwWNjDAuI5sUwVVbZNEd/wIkBFtBOMbgex9UKkm7FkJcA7v6sJRV67ne?=
 =?iso-8859-1?Q?D6Mv3OA+HgYfonmuof0Y4mTOKI8UyEYJe1JzX6UXPDJZra/aS/NNdAdgJd?=
 =?iso-8859-1?Q?qm8nflPAB39P26MjNDw1ZKsiiWd6qp7f27Qa88Nwny8yTTAmHEv4uC6yip?=
 =?iso-8859-1?Q?MJl6N/rcHQ3tLLPiFbNM329vOlJF+oocot7aaSnYaVGfPuIdgh0XyjyQt6?=
 =?iso-8859-1?Q?MWGq3JstVPXQu2PFKXEZuHs9j3PUuzR29MxQfnnmJ/dnXnaP7egXt8T+Xi?=
 =?iso-8859-1?Q?UqnxN8xDDvxnIIXJo96SAv5jzjFF0DKXsNz2RgjIcB9OTGGoa1JF+RFUuY?=
 =?iso-8859-1?Q?UDNZU59UqM95SD6LYwirOiFimKJS0eXLP73PjzgSsKA5XQ3qM6475zlKPa?=
 =?iso-8859-1?Q?bCERlBr7tzAXHCMpA44A5wY2Ll5P5aJro+sJ/ljisyT9dW0VpLf/eiZh/T?=
 =?iso-8859-1?Q?Y1Tpei1ckISj2tG3waqgWWHyRKhlT/YbPV8quaL+OZo+NLQ=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e7acec1-dd30-47cb-73e5-08d92cd2e522
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2021 12:17:34.6541
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KbgBlDj6rQxKyS2lJQ2CqDZor6d9J5dbrsTqcda0TYuvgbx6+tB0MaA0cAPiKbB4lwwfadq4UOlfxdP8b6d74/VIx2xu57Zg2uKcS4/+42k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3648
X-MDID: 1623413859-bIGniv33U_7w
Message-ID-Hash: TD4W74FM7OZQ4MVYYNBM3WVCZZVFOLUE
X-Message-ID-Hash: TD4W74FM7OZQ4MVYYNBM3WVCZZVFOLUE
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N320 1PPS input voltage 
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H2IXJKOM64W54XCBOZIN3WW3YMQQLYAW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7740861883030817219=="

--===============7740861883030817219==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312739D7A0996F851BC7093B8349MN2PR12MB3312namp_"

--_000_MN2PR12MB3312739D7A0996F851BC7093B8349MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are planning on using an octoclock with several devices, including an N3=
20. The octoclock outputs a 5V 1pps signal, but I'm confused about the N320=
 1pps input.

According to (https://kb.ettus.com/N320/N321):
"PPS - Pulse Per Second Using a PPS signal for timestamp synchronization re=
quires a square wave signal with the following a 5Vpp amplitude."

If I look at the schematics for the N320, on page 15, (https://kb.ettus.com=
/images/f/f4/USRP_N3XX_MB_Schematic.pdf) they show that the input 1pps sign=
al goes through an NC7SV157. Vcc for that is 3.3V in the schematics.

According to the datasheet, the absolute maximum rating on the input is 4.3=
V. "https://www.onsemi.com/pdf/datasheet/nc7sv157-d.pdf"

So, I'm not sure how the N320 can safely accept a 5V input (from the octocl=
ock or other device).

Thanks,
Jim


--_000_MN2PR12MB3312739D7A0996F851BC7093B8349MN2PR12MB3312namp_
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
Hello,
<div><br>
</div>
<div>We are planning on using an octoclock with several devices, including =
an N320. The octoclock outputs a 5V 1pps signal, but I'm confused about the=
 N320 1pps input.</div>
<div><br>
</div>
<div>According to (https://kb.ettus.com/N320/N321):</div>
<div>&quot;PPS - Pulse Per Second Using a PPS signal for timestamp synchron=
ization requires a square wave signal with the following a 5Vpp amplitude.&=
quot;<br>
</div>
<div><br>
</div>
<div>If I look at the schematics for the N320, on page 15, (https://kb.ettu=
s.com/images/f/f4/USRP_N3XX_MB_Schematic.pdf) they show that the input 1pps=
 signal goes through an NC7SV157. Vcc for that is 3.3V in the schematics.&n=
bsp;</div>
<div><br>
</div>
<div>According to the datasheet, the absolute maximum rating on the input i=
s 4.3V. &quot;https://www.onsemi.com/pdf/datasheet/nc7sv157-d.pdf&quot;</di=
v>
<div><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
So, I'm not sure how the N320 can safely accept a 5V input (from the octocl=
ock or other device).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_MN2PR12MB3312739D7A0996F851BC7093B8349MN2PR12MB3312namp_--

--===============7740861883030817219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7740861883030817219==--
