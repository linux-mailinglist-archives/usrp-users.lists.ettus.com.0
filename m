Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B184E553453
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jun 2022 16:17:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E22D3832B3
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jun 2022 10:17:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655821069; bh=Q4aN120sYlp9eW72dEcTySVTfwXbBHz5R+weehcsqYY=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DwLoPI3VnmgEO9kRyBFv9jWnxTyrrAvELsR2cQD9G3fHzlbLCI9s2FxJdy2s7YQ3H
	 yJOjkD5Y3/+snp/GXOhxUV8GFXd9PAf/X5a1Bzow0HmxDqSANyvg9re+UVBx9n76ba
	 b+cHY6t0If5FziWSWLyiLkbDgjy2lEiXh8UtQbzAp5LLRIY4uVJoyAOZxhFETiXo+C
	 aYJ1EUnpmia0rNr5GL7KtJUVXpjQKYpVStdNLT9wJE7ZpgRLqjWCQHOTAGNPNJXqfd
	 gxiFnlDHniIlPMsMRTVCbfTNjSXGeSyq0nevAqtMgiCCrcgb0FgUSArVvWHRhzZ992
	 qPgkkVe6BQFNA==
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-oln040092074099.outbound.protection.outlook.com [40.92.74.99])
	by mm2.emwd.com (Postfix) with ESMTPS id E9582381237
	for <usrp-users@lists.ettus.com>; Tue, 21 Jun 2022 10:16:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="fHSY7gyH";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MXIh+Mqfu6ItIu6CXQ0DduHgN1hWCcReowSbLwdmA5MJztTxf5EeMmYbFSSchl9al825grxr5NOkDRkovpnWM7nuSaKfUK1tDmeYhEWDn3zSuFq67KM+Hi3xLjGoh5ZYCJOGtdz2EO2K0rWMHXvTlYmB7wYcq+dYIUvpxx6zl4LBASFd2NjanU0o4ffoiRRk2N1A+XO/j5YKX2WG35oIjqYD1dPT048bK1CkCMWPeI7UnjkyG45agHjj6XgIcSIAmHOnE5rmmA1tF6YAmknMxYvy2BAwuKanAxG0JaK202HRhgXjAPXWVNrepIxZdsOP6puspbo1FeszI9H+9Fx1fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xwZBT/D94RQ1C9kd+q9zY8tWJHaWpaLVdVRyEAVkBW4=;
 b=D9SURZC1p1Fh9rpr23EHuqbl9kgjY0j693AarSpm6pz2UEKBOyM43yb/JiO9+8iEG+T2aQT28IiFAg4tGRrJ+lBl18tOMGHvfMljyAgce+aGbYrhkQ4t7b+d+9NIK1oHn1LRNv71owX8O+j3qcAzmUAbbxnuzAmrKiBqWS/uBlFXP/fQnK6b1HaOrToqzWYW8YYlCiJAaexgS+9FVzK3srxIKRdKQNLfTAO2KHu7iWzqqxzkC+o+tGwqMqs58j13qQ8NhpPyE8dGacRdjApUfliKE9t143Z0Jgobc7Gw4SFnYcEBa631WMw0VEj63ybYgTV+wpGMmARGgGPCCC0tWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xwZBT/D94RQ1C9kd+q9zY8tWJHaWpaLVdVRyEAVkBW4=;
 b=fHSY7gyHQByzz4IlqFzGJUaaMZvByZJgdBPjWbWlfiJ+Luf00D1LNPKx96awkFShXPejNz6fawc4WirmIQ7HmdgqGavzWVuTtCywj/R5ZmwBaN1ufzpHvUUez5KTcvmtCBtcUt8E4g/cWmzhohLmKvk3zWGcX7RxF0m9QTEzLqIEVzqQnLSX3b61cUNIXlL5SkMuCI2ccq4EqiOL34zZGSO7UQdAnVW/OmO9si8J9mcPaDx7o/U/Lu2lpF8PVUBhv0D/LbG4JkhmsXTzE/UGsndLrI84LCZdRh492hbNIuKj6Qp8EPK7gbK1drM2Fqnzgbg4Nns6707/+ddBWaSlOg==
Received: from AM8P191MB1155.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:1e0::24)
 by PAXP191MB1806.EURP191.PROD.OUTLOOK.COM (2603:10a6:102:1c2::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.15; Tue, 21 Jun
 2022 14:16:35 +0000
Received: from AM8P191MB1155.EURP191.PROD.OUTLOOK.COM
 ([fe80::c878:e137:4b0a:3455]) by AM8P191MB1155.EURP191.PROD.OUTLOOK.COM
 ([fe80::c878:e137:4b0a:3455%7]) with mapi id 15.20.5353.022; Tue, 21 Jun 2022
 14:16:35 +0000
From: =?iso-8859-9?Q?O=F0uzhan_Gedikli?= <ouzan_ts@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Frequency Switch with USRP B200
Thread-Index: AQHYhXl4O+fF6Qq13ESG7r7i0lhFQQ==
Date: Tue, 21 Jun 2022 14:16:35 +0000
Message-ID: 
 <AM8P191MB11555349EC12CF9DC676F3F4F8B39@AM8P191MB1155.EURP191.PROD.OUTLOOK.COM>
Accept-Language: tr-TR, en-US
Content-Language: tr-TR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [tkOsgzUsm6/G/TpfTTjjDs7TPZ9BJmc0]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c8b0a2e-aaa5-41ed-bd93-08da5390a61a
x-ms-traffictypediagnostic: PAXP191MB1806:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2NE4vwdNIRmZW+d7bqNQpgDDESHlk7CFrY64ry1bSqHvp/OJj7JTWYIqkllW1QUKROsipL13b5EtPNwd53KN9ILx+KLhs8gqioY0/nlo0y41C5AhXks0i6EZ+42YwAy39+q+9gCDTxNaBIUenBidqB9IFWprgjAxCPdz/e3HcRmyGUwz6/GUsbEPxKumMDE7qQmGgpT52s9JsPR3QKZfPt7TEkFCqNecMzbgd3p8YbOkpbDHzwnQeBLd1QjVB1+NJCyDKrq4t7IlixVlOcdzqAurpWq1yPCO4J6nuXxV6OhMrWAQDRanEpjUD82BT8dzaWLF/sGSoJJLrdZoWIUJWuDYgASpvi4+THfRRpV0zIRKWX34QMK3jDBnMxiT2r4WgS93saQWhAMRoLzYeki0LLvkTV1yqTlzoU5ZOC3UwEWjwVJxV0bSC0uZwSJ4dpbMCAna/+LzAqEwStJd6sSBL294AdT8PcxOQmMuDZz5a35d/CCQ3i/HUvNDHXJXsyK9LttomoXOiakptFRy2YRNXj7afAK3PXR0QDBRtDilV4C1Fgi9Hq+IvbCxMgZIEtNwPQcWSyxbASwpHBD0dCg69w==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-9?Q?kl78BS2MBw6l5cp1z3HoyuszeJl/dl1W9dvj1Bo6A6bCIV+XVNhMt3f1jv?=
 =?iso-8859-9?Q?lW5QKXm6tifSzOJqT65JJaf95hC52zMxyLVtShmnFskLtli2Zj99Pg9lb3?=
 =?iso-8859-9?Q?dOdfqSRAJC5mhpJYpnDZ4MzzrJn3EU3irA0m1vgz54qUL8VyjA5QY38jT6?=
 =?iso-8859-9?Q?l57hXMO0nkQqE+wN1s1e64I6/xIKpbvbrfMH78Y9bgPr34rNYeoUVLti3r?=
 =?iso-8859-9?Q?oEr3lkNnuv3UXP9FfFmgMKMTDjZX5z/fPPuBRTJK8VPLmVRrkiuZ1eQKfC?=
 =?iso-8859-9?Q?KQU2W5yqWb7sjPwwrcy/6aw563kQ2euIeXRpcEbuk1LW1rDkvZVhTUZCOV?=
 =?iso-8859-9?Q?lUmTw8G0bId6rkS7xCuwkmgzXLCfiH2roAKDqD3csZpCTaEvWwNzbZEcjr?=
 =?iso-8859-9?Q?wgOrz9H7HoL0clWe8c10El1b+6yqHpiGIcTwlpjNSWmT63DpkF5aiOCYwU?=
 =?iso-8859-9?Q?yoMTFmrEcWcOX6AHoLu+uu0zdwuGOjyDiKGbIVVuBUlJBCYj+Oqv08i81N?=
 =?iso-8859-9?Q?aUe/3IeVUhf5cTYb65vdjuDFxuTw3bZ9vvQfUjdS6/I9KWyo4XmuZ8R5Rb?=
 =?iso-8859-9?Q?1Hv70hMnIoUGOeGEOwjYlxKEXeCXAXi+yWT4wKJdcrnTDn5jktAdiYCB6t?=
 =?iso-8859-9?Q?enPAUYJx5wkKWwYAWrWv4bHJbaydaKFxgvrvs7o2A8K0tsU40UP3reAUJ0?=
 =?iso-8859-9?Q?vdix87dXpjKj+DwYNnqrPNrydzNdEcx2spkXeWY+rbi+89DLSQ44WPMnLz?=
 =?iso-8859-9?Q?HsxOtVhZTUqVHqGV37B/rEqRrFeaISTcn/y4LrMaRDi7NLsQ1eRRIJo4Ri?=
 =?iso-8859-9?Q?Op691y8NS9WPbAXp6x7Z+Bo8VYuc/p8zNV2Hm/rJ67+YyZlB/LiBfgpM+I?=
 =?iso-8859-9?Q?Ff4Pm5zqrlYTPU9RYWoAXVFAEj3DMENHjQF96/NGOzhSzd8kv51nM6DkDv?=
 =?iso-8859-9?Q?4+4IhttQF6okhi2TU0YZVtD4eqV/OzhmMlDnsupmexWDGgiQk4IplVaiHL?=
 =?iso-8859-9?Q?4XyXLsTAt3cHTX9s1L+VDeCgF5sjB7SIl9W98tRf8MpBwbJ0vyJmZxyPim?=
 =?iso-8859-9?Q?62WMIsgeGZ3jDyysY/UBKPxNCzRHmfluGyFvMeYsLd06RFnF8+EEyHkQp7?=
 =?iso-8859-9?Q?cbN1rIfyBqrfS7E74cx928zKPpXCI5QPQo/lbWoUn6Rpsi4c9TdekLEJ5b?=
 =?iso-8859-9?Q?a4gP/upLfOQ99gs1GZv4Qaefgp2kb9+GhcbOw6yZUnyKgin1RJ23EwPHyM?=
 =?iso-8859-9?Q?3Daltf4Yg28TlkyHyg8OFL6NJrFvoLPv/VM6HWWqDdSP+QCD6knkq5hF7u?=
 =?iso-8859-9?Q?fadNCsDl/Rm4QY7tRUb9F6WTqeNLl5hmgBpEhg9Kf7Kqmq1y9GNHk/GbCx?=
 =?iso-8859-9?Q?XGoln7QmIarUeobuoEHEtcb89DI7WgzTIENgn04wjoAs8j2igk2vSWHGnZ?=
 =?iso-8859-9?Q?udd0ghBd+pqG0Y0696cxViaEi/0bVc76rjPeRw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-50200.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8P191MB1155.EURP191.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c8b0a2e-aaa5-41ed-bd93-08da5390a61a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2022 14:16:35.3200
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXP191MB1806
Message-ID-Hash: ZXOMQ5NOC5UUZ32ACJQMMY5HQKVDLAX4
X-Message-ID-Hash: ZXOMQ5NOC5UUZ32ACJQMMY5HQKVDLAX4
X-MailFrom: ouzan_ts@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Frequency Switch with USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7N7F72YZBDPFPQ6UY4B62X2M4HWEEOMX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7289401758838350250=="

--===============7289401758838350250==
Content-Language: tr-TR
Content-Type: multipart/alternative;
	boundary="_000_AM8P191MB11555349EC12CF9DC676F3F4F8B39AM8P191MB1155EURP_"

--_000_AM8P191MB11555349EC12CF9DC676F3F4F8B39AM8P191MB1155EURP_
Content-Type: text/plain; charset="iso-8859-9"
Content-Transfer-Encoding: quoted-printable

Hello, I am trying to make frequency switch with USRP B200. I choose a freq=
uency like 1GHz and I read maximum value in that spectrum within the range =
200kHz bandwidth. Then, with the code i wrote, I change frequency dynamical=
ly like 2Ghz and so on. Switching from one frequency to another and reading=
 maximum values, whole process i wrote takes like 370ms. My reading time is=
 around 20ms.

I need to make this switch around 10ms. Is this possible with USRP B200? or=
 is my code wrong?
Is there any information to give me about frequency switch speed of USRP B2=
00?

--_000_AM8P191MB11555349EC12CF9DC676F3F4F8B39AM8P191MB1155EURP_
Content-Type: text/html; charset="iso-8859-9"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
9">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<span class=3D"x_elementToProof" style=3D"margin:0px;font-size:12pt;color:r=
gb(0, 0, 0) !important;background-color:rgb(255, 255, 255)">Hello, I am try=
ing to make frequency switch with USRP B200. I choose a frequency like 1GHz=
 and I read maximum value in that spectrum
 within the range 200kHz bandwidth. Then, with the code i wrote, I change f=
requency dynamically like 2Ghz and so on. Switching from one frequency to a=
nother and reading maximum values, whole process i wrote takes like 370ms. =
My reading time is around 20ms.</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<div class=3D"x_elementToProof" style=3D"margin:0px;font-size:12pt;color:rg=
b(0, 0, 0) !important;background-color:rgb(255, 255, 255)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"margin:0px;font-size:12pt;color:rg=
b(0, 0, 0) !important;background-color:rgb(255, 255, 255)">
I need to make this switch around 10ms. Is this possible with USRP B200? or=
 is my code wrong?</div>
<span class=3D"x_elementToProof" style=3D"margin:0px;font-size:12pt;color:r=
gb(0, 0, 0) !important;background-color:rgb(255, 255, 255)">Is there any in=
formation to give me about frequency switch speed of USRP B200?</span><br>
</div>
</body>
</html>

--_000_AM8P191MB11555349EC12CF9DC676F3F4F8B39AM8P191MB1155EURP_--

--===============7289401758838350250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7289401758838350250==--
