Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55539FFDC4
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2019 06:12:34 +0100 (CET)
Received: from [::1] (port=44762 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iWZKv-0005Q9-7a; Mon, 18 Nov 2019 00:12:29 -0500
Received: from mail-oln040092255070.outbound.protection.outlook.com
 ([40.92.255.70]:56576 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <james_ttfun@hotmail.com>)
 id 1iWZKr-0005MD-Cb
 for usrp-users@lists.ettus.com; Mon, 18 Nov 2019 00:12:25 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uuw+MgiAVbnliZcOFkv0llj7HMJ/7QI1mYCcaY4vwjMbU4vbnzrzJvG/tawpap/Z+v9Khy0HWbenrE79DYkY0JLzPyfKZN7I5SqL0F7GrNSUjTc+tH048QNfI97RX1vGxl+CckvuMvM+igXX1lMxqUlMIh2Ws2w9hGI3rhnvqhecMmTEL983jrq2WY4L1DdfQ3g9feCAIEZbm7cFGycnhfW0zwWKBLykMX7bbS3UWZibWAYIqZN1YucOAHd4vFh5cugqZ7OEIkZvfQAe13gdU7mI9e5m4LDNVHfzIOLUZr3LgI+hOrEl/+XsvS2IiBDG60zAyNl8KZswNbmpoORYxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qawJaUdbBrZXxqTUX8WwbPBbwsifv8Y62XFLmVanz3U=;
 b=mumPzn115Sez+wI7ntO1obsw/tUVDbk4iVMRVsHzQepR1R4UKJfJa9r6/+ttcul8Qr5tpMNzlHL89bnnlqlsdWpsIqYwHt56aW/cNKBHWP1J9X2vOMTyo/1fhcAgOuh/mqY0ye6/fOMMB6ODGljm9dA0vNsjxvRUTkRDXb3QbN63PcrBlB/SMlS/24r56jIBRktBF0SsfchW2Cq0T2ybgaDaVIRJZmvKQvVdCke4C3muwABJQC2MXBKWx/sGfkpKEgaA+f1QzKSbI/bj3weFvCbtXcZoR5X9aaDZxjxAnyyTEAY9VdGkkGaSKoZmDxbeYw1kzI9c466Ro0H3IxajrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qawJaUdbBrZXxqTUX8WwbPBbwsifv8Y62XFLmVanz3U=;
 b=cA1SBVvaehkO4QeSUiaJiWp+5jFQtK4osY5litz2B0lQpVNPBwZsUheHcfSxzZRuH+XsVcMpwwJHYQZc5Z/Jsne23k8pteN27OrUA5MTOz58qZvmqIfVUtFQHB5rtsqLQHKCPzI03JySXqieUt9oJLNDy5s78OMGK3uIhDmAYslPSDRx6ZWzxkmVxbdPRpe7Lp7ABTCvZ96mVhFpeZYGo5fXIbbvE5Mr4hIxp+iqpm1mz6YBBfnCX+YCna5kAnhNNXxJJwRZu1aa3iyc2I7WEeu1p/RXbDFXVbX/evhlYqkyff3Jw0nJEuRmTRDmAJFdWpqQ8tc5DIfO2CGWwZRdzA==
Received: from PU1APC01FT003.eop-APC01.prod.protection.outlook.com
 (10.152.252.56) by PU1APC01HT037.eop-APC01.prod.protection.outlook.com
 (10.152.253.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2451.23; Mon, 18 Nov
 2019 05:11:42 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com (10.152.252.55) by
 PU1APC01FT003.mail.protection.outlook.com (10.152.252.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2451.23 via Frontend Transport; Mon, 18 Nov 2019 05:11:42 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::5dd8:c036:482e:61b9]) by HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::5dd8:c036:482e:61b9%3]) with mapi id 15.20.2474.012; Mon, 18 Nov 2019
 05:11:41 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N310 schematic don't show all part
Thread-Index: AQHVnc3GXW5eVntr3Uu9GeSyunr6xw==
Date: Mon, 18 Nov 2019 05:11:41 +0000
Message-ID: <HK0PR03MB5091427A23E5530B6A978CCF9D4D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:49BCB7BC8BD0F1ACF81CC0914E4AD8BD17FF72CD35BB12C81851E2F80363397A;
 UpperCasedChecksum:39E9C564783B44CD77A610C85ACAC3F80B6C22594137224BB56D0281FD353F3F;
 SizeAsReceived:6705; Count:42
x-tmn: [PZ0K8W9DYOHEm8lThIZXsAzKqMSiMIWY]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 3b07968c-1738-4b03-7f66-08d76be5cc56
x-ms-traffictypediagnostic: PU1APC01HT037:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mSj2daCi1LBq5SvVcfCZpqPX+qna540Da8qjG6D/egWeYb6dLa6vV0ycHixzDDQEefo3OM/12mFvO0rgAjnLO7sf0XIvISOFv84Z0+tloJS6bBhBAphR53jhzNl4gYwXq6xn0ctCSLMp883p9aqMTTEqkZdp8ZXQ4POo44eiWHeMbATnmX1TUe1aUl8PnpQ5
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b07968c-1738-4b03-7f66-08d76be5cc56
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2019 05:11:41.5618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT037
Subject: [USRP-users] N310 schematic don't show all part
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Thomas james via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Thomas james <james_ttfun@hotmail.com>
Content-Type: multipart/mixed; boundary="===============1644806628525579639=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1644806628525579639==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR03MB5091427A23E5530B6A978CCF9D4D0HK0PR03MB5091apcp_"

--_000_HK0PR03MB5091427A23E5530B6A978CCF9D4D0HK0PR03MB5091apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGksDQppIHJlYWQgTjMxMCBtb3RoZXIgYm9hcmQgc2NoZW1hdGljIGZpbmQgdGhhdCB0aGVyZSBz
aG91bGQgYmUgYSBzaGVldCAyMCBidXQgbm90IGluIHRoZSBwZGYgc2NoZW1hdGljLiB3aGF0IGlz
IHRoaXMgcGFydCBmb3I/DQo=

--_000_HK0PR03MB5091427A23E5530B6A978CCF9D4D0HK0PR03MB5091apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
i read N310 mother board schematic find that there should be a sheet 20 but=
 not in the pdf schematic. what is this part for?</div>
</body>
</html>

--_000_HK0PR03MB5091427A23E5530B6A978CCF9D4D0HK0PR03MB5091apcp_--


--===============1644806628525579639==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1644806628525579639==--

