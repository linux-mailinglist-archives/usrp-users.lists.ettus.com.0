Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CAD6053A6
	for <lists+usrp-users@lfdr.de>; Thu, 20 Oct 2022 01:03:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A764383A60
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 19:03:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666220613; bh=si9wXuWz7iUQY80oR3M4RF3Ld91zhXllW7B3wwtPOgU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=t4L7DYxGqs21LtXSJSBylvqsgutugggQlGSRpE17Qw4bwqRbW39Lfp8w5/P5OGEGL
	 Ey/rzILyx+IyIkP7o4BwM8XiMjy8OUBe/ODP2Q+cg6x/h/L3R0wflLNkxS2c6dXz7N
	 NqwyNu3lbSh7a6fEp5lE1ciqRJyk3n7igXRRg4HSle4giuWr8O32OlSP5rLTJH2QKv
	 ojsAr4f+9MpJg4C2M2TPq2Xb4AnOb1PFdpS6p3Wq2ic4aXO+JlIqtLi7hvlgpJSqPI
	 Z6bUoyaBx0sTqRmqmt+6V3h40ked0Nh792g08C1TVNtBbrBmv7MXlKTzS4wR5/d8VO
	 eWMnbOxBxW3vg==
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2068.outbound.protection.outlook.com [40.107.243.68])
	by mm2.emwd.com (Postfix) with ESMTPS id E3823383A60
	for <usrp-users@lists.ettus.com>; Wed, 19 Oct 2022 19:01:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="zBFYlfLU";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fuBJ3ConN5Yjv1p3Lc5GYz1RzO8eumSUbhydtSMJDRs/hx8R2im9CmtXsNjEkKqAp5xA0FYlzwmoaCZZ7vq28dccNj/3n9Hrcaiy3oB1NELsm1fP85kzpmVn14KA6ab9B0zATWII2/E5v5P8lVU7KOgSfsI98DNEh3Wmt7x5sHmaBHiUPfkasoABkCv7i5XLf5BmmmPz5owI6bWtyx/qRE+N6EwRXPYaqOt2h6gH1s2sTfXy5jn8uXw2PTlDrvu1PCNqCgDpT440+VxjUS/XBllyiLOC8wn9qcrVWPijSODZJ7HAgAlFP29TdlwRDu0WHzG6TI7kz9R8xt/IMRNZJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n8d7B2zQ5po86xet5X/1BMjZzuTokU80BkhtgCY1M88=;
 b=MRy0BLy5joVYZ9TaQRAtUWavKquhOHEzK9GM0V1y+m+bpNEwvKEtcTkbsCyuLUCH3+uao+7UNtk+8K5B9+p1KpS/D/Uyv2TffbIyU/SPO/u7jcWhwcE+OifKjUEqXzOy4mYSkBndZmxZdmTzIChaZxPf/YTLWaoJfnJ3RALwqSibQzjQ5aFghM6vsg7qIT3iLZY294EB11dWN51j5KluJO7kGYt2HdNcSHYqcfjM5oB7DlfMA8tDyNVSfRcPfq3c78r/69o7So+bP+KAzKGN38E7xt9auni4oHsoiljtJmUtcWLO5E1vSnK4uVzg5UygXWop5qDhs7C75JhZMJq89w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n8d7B2zQ5po86xet5X/1BMjZzuTokU80BkhtgCY1M88=;
 b=zBFYlfLUB1q44lvVDjmuin9we5wTfuh75E8YNiFPBDvSmIT45ftooU7XVqNsIgFUNheqz5D5J4wBNcLUP55hfmQfohEFPVw3XzW5VlNa+w+CE/BFQ30F22trdulyb2ehr14/Q7cdSxg7FDYAe/BOabWq1OxMkhw6k9oZHwVQAkXjDY0OgbkpZUlW2HW6IS/i5ij7PBRYqXrl9Ygp0kD6la0KItFeLwShCvLPZn+hidqZJ5kXGvHf5pT0ftP0cQCHiD1mj4L46pWErGwWx/jOW/YrNFH7m1iGTtq7ErIfjXf/i7xAFlkb0cQ9BHKTWbBy2gSokusxztnejblAZZgfUQ==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by DM4PR03MB6144.namprd03.prod.outlook.com (2603:10b6:5:397::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Wed, 19 Oct
 2022 23:01:47 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::601c:ecdf:65ba:2e70]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::601c:ecdf:65ba:2e70%4]) with mapi id 15.20.5723.033; Wed, 19 Oct 2022
 23:01:47 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Rate change in RFNOC4
Thread-Index: AQHY5A135NXZuNwW8kOtmpfN9O07Nw==
Date: Wed, 19 Oct 2022 23:01:47 +0000
Message-ID: 
 <BYAPR03MB4678A2D56009EE2570239479D32B9@BYAPR03MB4678.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|DM4PR03MB6144:EE_
x-ms-office365-filtering-correlation-id: 6bd97f31-2b84-4097-db7c-08dab225e61a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 gImyVpIms7L8/agAXbHFpk221uMzrwpgv+wS6zZcDasmKvLwW151YpDoBqzezzJAzZtztPoHUlGUxBnR1H6gdcIuh/21ZDcOV3Z4vAC2fEwkRLDIyris7ITbgC8WK/v9c6TMWauu8XCFfVoNfqArTM905gFSXDQQYKALjT/Tz0DB9PT3mGLH5b9YReyrnANv78Lyx9nPqApzCJWwEjPYszJFSO6GhhjJ0efOpK+umtM23iKDJjGGOkIN0tt837r7gqI7omPlSfrIsK8cvnQ5dRA1U2yh8CvKkLJ4HYd8p+t/B+VHm9PGIstnVSPiouICVl0PlENsYINhks2MRtpJzztE5+ncSaJZpx8UEH4gD8N/RFDHFCZzqLzY3sUa/wAxraw2DxP+4+tXTfxCeoA3V0kP6+RK0sc7T5lkPJjoNjhFuj4kKxkfjWtZSZ4lP+EEJimKt4tsnyxa2IyjO/Gb0j/SoCevtadxyNgylQZI+AevPnd9miG5czTtEwvUP4WFunY2LPIFSt5yuJYFDQ2i6T68pQJlKlDKI4U+qrHWYfFu/BuvSsUwbJH12BYR5ZugIvLFpquujt6Z53aLqamoLGCUGkalfpeKNHIgZaTHIvuML+dhZO0eICOPoWav0FxwXXfxp6n2jUGRrP2HXMaubk2Z+nuA7TUA7vLbmwqS3lv2m8IKvnCIKIJKH/yU8PoVcpObRHoHDTwXk5kdnva+NfB6g9CBWQee/2TXYK9iIpgOKvrBifFCTZ8PB6GKaZ8Xlta8BkU4jEzqUzlaL7U1Ucl4ZKQwpgdwpsorjwZ0qKcMungZX4t18voJziuBiMoi
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(366004)(136003)(39860400002)(396003)(451199015)(7696005)(6506007)(186003)(9686003)(26005)(75432002)(2906002)(83380400001)(5660300002)(55016003)(41320700001)(6916009)(76116006)(478600001)(41300700001)(66556008)(786003)(52536014)(8936002)(91956017)(8676002)(66446008)(64756008)(66476007)(66946007)(316002)(71200400001)(33656002)(86362001)(66899015)(38100700002)(38070700005)(122000001)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?iuZbBeRvZHuovkG3XJadrIQG1g9+S3OjQjxTbPDWmcr073rh6KSefpz2Wm?=
 =?iso-8859-1?Q?pnnZ/cmUudC+XNeOi/3/Nb9R+YUzDQrwom5Wr2A++Et/0T3wlLpU+hDJG9?=
 =?iso-8859-1?Q?0Su1kNQb8BYnnJo+qQKih7qfzJz1xgPlf7uo/lSNtZAIfkwwGtyxDhizsG?=
 =?iso-8859-1?Q?6kzt7N9NeOMMW2l2HaswVQq0+7m4sievha5hZkHpacO3516fwx/RPyySmI?=
 =?iso-8859-1?Q?t765RP8ZmzeqImBypj95tkpylL7OGzov8I/sm6/0MFkQBEc2bDk2ZQ3FJ5?=
 =?iso-8859-1?Q?AnJqrSkp/Z0Q1H7sFui5DigpWvr3ohVBX/CsiVK9Bwt9rehjy+w5DyZylN?=
 =?iso-8859-1?Q?2d1zZEAsCida7rJhFtJXapHlaG5SH8prd9mbJ8FtBT2qg9J93lj6KN790Y?=
 =?iso-8859-1?Q?tCqXeizngrgtyNnyRcsjz64+l02VDkIrX5NWZIebR7V41WHDI7Tm6WbSOc?=
 =?iso-8859-1?Q?PwfI+juaCYFjG+/+c7SLFwDFb+zpD7n/tN3ukSNPVZn+qiDvM/XmmYyRZy?=
 =?iso-8859-1?Q?9qRxRAAQpcLpWuOng0klQ9Ak77IwsUI5R7My4J20aFUaCrp746WfO/91bO?=
 =?iso-8859-1?Q?jJMtkTcD42sM9QHv2/oowEbCRioJcH4vI9P411n0tPQP9zMhAgEzjf0DKO?=
 =?iso-8859-1?Q?lqgcHZeNZZ/p4wjzaJ6aqAUuaI8TBoXvcG9Ih+TUaVLF0VBRVv4uVx/rTj?=
 =?iso-8859-1?Q?MghJHnw/PPt9M9ubPDdQYr+8bE7ezg/MlJZaEcQ9gcgn8nS9LpdRDfLRgn?=
 =?iso-8859-1?Q?Hfz7XnZhX43f2ekgvHOikG3DlWIIna52VvqCLNw+UMtXAv1Xzy9GGPm6a5?=
 =?iso-8859-1?Q?w6BozJUFwPHde243rwCAvkHyvyO24UkjFTFyv+XIkT4IUy8NqKTjhU7BRy?=
 =?iso-8859-1?Q?slz/K3v/xRMlKitu/99ZPRUsV5PypoFB9GtPvfuwvsoMV3DkZykilKhVEw?=
 =?iso-8859-1?Q?9AbApHACwydn8FAB4ILdo2NpIWBYo5P4em817U2PKKcDbCKFcXQOV2yyeS?=
 =?iso-8859-1?Q?DXjirN/Mlb6XYfbtRbaSXJ1gXncFJElF4yhrqFP2qMfJ750xhSm9SrmeBa?=
 =?iso-8859-1?Q?cuZPmi9EpO2rpOtqz5KMA0GJ4blzDIVUzNGtLBAiExxezmaUf/4QhscfHk?=
 =?iso-8859-1?Q?cgatrEqIed7kMn+A8rCUviTMMg9vEVb+5s6F42oaSmM4FVj3CLRLjzmjqi?=
 =?iso-8859-1?Q?y38AFMzswbYODGjwn19QRgvTjdbzVrS0m1YxAnY9iGyx0du9SK5D+RO86l?=
 =?iso-8859-1?Q?uM5csFwUgCQeWLOvgZdfFs5K+hyCxQ9g7UbUjvWCrpMaD1uUxTNVoz8UhY?=
 =?iso-8859-1?Q?ekCNpfTa3M+VkRxJAgcD1O6NdO7bXDvqHjvip/sid09PpjNQnIefaa+BYZ?=
 =?iso-8859-1?Q?Ij5RPmq6i8zpKx2nxM5dJ67eo0wC3pQEcgtZsTenuGTg0a64NclsFJXW5T?=
 =?iso-8859-1?Q?2jadJZxAwjvycygf0Fviyy7o83K8AnFJzzbJyH0g5z0nDQJM/cb/OMtRaD?=
 =?iso-8859-1?Q?N3CK7dZSiok/GONm7iqHAgG5a7SKwMwHrH6vlSPvrhLSxhkz+4sp2AwLhq?=
 =?iso-8859-1?Q?WtPYQy/UvWJw0+20P0xBxpvZ43Lw09IXCLYHv011eP16GnlIbETsXz4ZY3?=
 =?iso-8859-1?Q?SzpGEhnBu1Lvp775KUKFmdrDtj0VPDdnXV?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bd97f31-2b84-4097-db7c-08dab225e61a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2022 23:01:47.0087
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1I8MYXqt6HF9LHH2pV+P3g6A3gVIHBqNEgvlzMN6HcA3L05UQtpPjbukvqYyTdTzuGi6a6tB7E8mAMkUwPJyDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR03MB6144
Message-ID-Hash: BAS3XBDYN7EA5FIQGIWTA4IBBA2ZZWI7
X-Message-ID-Hash: BAS3XBDYN7EA5FIQGIWTA4IBBA2ZZWI7
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Rate change in RFNOC4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B3A7URNXW7EWLB4YKDGHHT2EVIH5LNB4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2231105321890718442=="

--===============2231105321890718442==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB4678A2D56009EE2570239479D32B9BYAPR03MB4678namp_"

--_000_BYAPR03MB4678A2D56009EE2570239479D32B9BYAPR03MB4678namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,
I'm trying to develop a rfnoc4 block that changes the data rate and the pac=
ket size.
Specifically, my block is very similar to the keep-1-in-N block operated in=
 packet mode with the exception that the first arbitrary M packets are disc=
arded, the output packet-in-N is an average of the packets that arrived in =
the meantime and the output packed is cropped respect to the input packet l=
ength.

I'm trying to understand how to develop this block.

The first approach that comes to my mind is to copy the keep-1-in-N and mod=
ify it. First question:

  1.  How do I port the existing keep-1-in-N block to a new OOT block?

The second question is relative to how to deal with rate change and packet =
size change in a OOt block. Except for looking into files, I cannot find a =
comprehensive guide.

  1.  Is there a hands-on guide on how to develop these blocks other than t=
he gain example?

I'm a physicist with some FPGA knowledge, not a FPGA developer:

  1.  are there companies/contractors that can design these blocks?

Thanks,
Lorenzo

--_000_BYAPR03MB4678A2D56009EE2570239479D32B9BYAPR03MB4678namp_
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
Hi All,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I'm trying to develop a rfnoc4 block that changes the data rate and the pac=
ket size.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Specifically, my block is very similar to the keep-1-in-N block operated in=
 packet mode with the exception that the first arbitrary M packets are disc=
arded, the output packet-in-N is an average of the packets that arrived in =
the meantime and the output packed
 is cropped respect to the input packet length.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I'm trying to understand how to develop this block.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
The first approach that comes to my mind is to copy the keep-1-in-N and mod=
ify it. First question:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<ol>
<li><span>How do I port the existing keep-1-in-N block to a new OOT block?<=
/span></li></ol>
<div><span>The second question is relative to how to deal with rate change =
and packet size change in a OOt block. Except for looking into files, I can=
not find a comprehensive guide.</span></div>
<ol start=3D"2">
<li>Is there a hands-on guide on how to develop these blocks other than the=
 gain example?</li></ol>
<div>I'm a physicist with some FPGA knowledge, not a FPGA developer:</div>
<ol start=3D"3">
<li>are there companies/contractors that can design these blocks?</li></ol>
<div><br>
</div>
<div>Thanks,
<div>Lorenzo</div>
</div>
</div>
</body>
</html>

--_000_BYAPR03MB4678A2D56009EE2570239479D32B9BYAPR03MB4678namp_--

--===============2231105321890718442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2231105321890718442==--
