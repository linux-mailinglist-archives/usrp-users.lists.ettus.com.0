Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C38AC3431A5
	for <lists+usrp-users@lfdr.de>; Sun, 21 Mar 2021 09:17:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C0B03838C5
	for <lists+usrp-users@lfdr.de>; Sun, 21 Mar 2021 04:17:14 -0400 (EDT)
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-oln040092254064.outbound.protection.outlook.com [40.92.254.64])
	by mm2.emwd.com (Postfix) with ESMTPS id E37903838B8
	for <usrp-users@lists.ettus.com>; Sun, 21 Mar 2021 04:16:12 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YghVCwZDWEgBU3QTc8xUe0jhT+ve2H8S9vgftUaXndPlGacj6T/Sb+XPdYv9PK5spEvnwAn/QhEAmDnFlpjPAvX8sfhdzuzxMK16a4a5GVWdrGsmGBKFYTPHhSoRcdoSMcRxJrQzgzb4QXyKIvKYx3+jDU1eDT9SGFVqUjFMeg7sEb7eF1POIiroOohbEIp43VUAxNkhBEK4lgjVvuHwmaXOlDB4g1QdzXOTDZ28n8XGP6wsk88oEzwa8MziDiM/06UPQWxV/MzNpeQJ678nIrkmp1KmLWljCU+3nH59VLwoTbvrnBZqMvtVFDsRfdaqlcv71DqnUl5IVlFhJ0+LbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTHcoQRJX9a8GzA+fdZIW4Nvel4TWCFELJscCLuao+g=;
 b=GbzB9+lrxgXckAArhyL03e2gQInOKUBe/XmdtMHUH47PbebEjLl0LHQC7vmncAXjA/97iWqKoYF1kM8O5cWGrQw7gREH3T5RGmZHHFEhVLrS+xDpQ2rIItDhA2Ah8cJkBf2aXy5y+9unj/Hdh4cdfpv05QIciZTMT9L+BYArtvCwS8TWcgsSYuEXCki8G3nDCVx/sI3gHs+wkE1JYqRnqrBUaM6iT17Y9LLUca62Tp4VdWAIUw78tnbBZhfcwYUV4q0CmNRbLwLB2UQHpctZCS5r0QGws7Tgw+hGyrjFwjMFGXf9rVfS3TPJRkuriBxkpXFpuo5V5cVdxAajDZHrnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTHcoQRJX9a8GzA+fdZIW4Nvel4TWCFELJscCLuao+g=;
 b=OVpgvW+IY9Uaf5NF56gICDGMLcbgR/qLHolJjm7RfH7D2V5d+cZ5EqAgvlJC+i6jatNXQuwRQqAl8qMp+UvB1lXbq83e1ZAmLhbn/gO6kbB6gkQcksyBlymTBNJah1/VrgCNabHA7tmE9xMcDAk7M/aJdni5UODrWj+kapvhO5g2PtdIb6yQs9WFsMe1vPlBvO8IilJ+Ld+2OAYaKOKzXFVYCX7NeD9OX0N+Wb3A2O9vNmINKxHLKLyOGTyN/StzOIzIzGeV7rAvgBaomSY1xf6hZGRX9fs/F1CHf74t1bgkhgmJtU4/WY+Lnyc+ptU0KU++j4dMEmU2J3RGq4LDqw==
Received: from TY2PR04MB3517.apcprd04.prod.outlook.com (2603:1096:404:f7::14)
 by TYZPR04MB4320.apcprd04.prod.outlook.com (2603:1096:400:2e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Sun, 21 Mar
 2021 08:16:09 +0000
Received: from TY2PR04MB3517.apcprd04.prod.outlook.com
 ([fe80::dc7a:192a:ee1a:619f]) by TY2PR04MB3517.apcprd04.prod.outlook.com
 ([fe80::dc7a:192a:ee1a:619f%6]) with mapi id 15.20.3955.025; Sun, 21 Mar 2021
 08:16:09 +0000
From: Oscar Pablo <oscar_pabloo@outlook.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: question of X300 revision
Thread-Index: AQHXHih2oy65dgYjbU2Lx35PeLsmsA==
Date: Sun, 21 Mar 2021 08:16:09 +0000
Message-ID: 
 <TY2PR04MB3517EF7CB55B3601EB8C20BEF0669@TY2PR04MB3517.apcprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [b+lv6mSqpuQDiqIvFXke3jCWkbjd7StD]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3e50282-5252-4346-c943-08d8ec41956f
x-ms-traffictypediagnostic: TYZPR04MB4320:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 OlwklAJRkCgmpaJq/E9oQEpe/ObCUbcPziBV0YNOGrweUx6fB0FSbjBWJXj9YxdVI4GSgi1YTS/k/InfjWgBTIwUhVX/On+8nE1dAwtaPXKjZlHZTAzs1/ToNJ3rkPBdpmwfg9Yx5nlJJ+Awrm9Q/appqxW9a6DbZ1UyxUQRNIHgfdH2FmUmptsBvkornN6sh8icrgLtr5qVGsB0QRFwqrNsUFGuMzmmamQv+RPPLElk9hieT+g41DOh0MWxGzUHdH1Vbw7oi8Bi38YcEr1nZcjooj37dFdSGvy5+9HdIFke7zyJczmbrFVjDqqMkNsc9UznLiJFRnL3rd6LN67JinjByw8Eu1/Wr+TNC+IqJ09sAsOVUXDTxDtsUkDVR+Xn
x-ms-exchange-antispam-messagedata: 
 mHqkMXR1qrWvGJJP8vi7g84mDiD/2qHPYObjL1kxOa6QH3ZWBzhBP297LqN2om8kzoNkBekLlDkOOcAqK3UUVU1wwndDxEEsDNE1Crlyb7XYEo3FlIp5qAfnvOQrsd0zTLY0zwrSyQGbjY7fmlBqJA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR04MB3517.apcprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e3e50282-5252-4346-c943-08d8ec41956f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2021 08:16:09.5946
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR04MB4320
Message-ID-Hash: UMXQDFELZP5JBTRXOPX3C4JB7BY2KO56
X-Message-ID-Hash: UMXQDFELZP5JBTRXOPX3C4JB7BY2KO56
X-MailFrom: oscar_pabloo@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] question of X300 revision
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MMENWXNOME4DFOCVVQQOKIG5K37QHX2A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2485157297870011530=="

--===============2485157297870011530==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TY2PR04MB3517EF7CB55B3601EB8C20BEF0669TY2PR04MB3517apcp_"

--_000_TY2PR04MB3517EF7CB55B3601EB8C20BEF0669TY2PR04MB3517apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
the public released X300 schematic is revision 1. i want to know if this re=
vision is the revision in uhd source code. in uhd source code there is stra=
nge words "x300_clock_ctrl is not compatible with revs <=3D 4 and may    le=
ad to locking issues" so what is the correct source code for revision less =
than 4?

--_000_TY2PR04MB3517EF7CB55B3601EB8C20BEF0669TY2PR04MB3517apcp_
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
: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
the public released X300 schematic is revision 1. i want to know if this re=
vision is the revision in uhd source code. in uhd source code there is stra=
nge words &quot;x300_clock_ctrl is not compatible with revs &lt;=3D 4 and m=
ay&nbsp; &nbsp; lead to locking issues&quot; so what is the
 correct source code for revision less than 4?<br>
</div>
</body>
</html>

--_000_TY2PR04MB3517EF7CB55B3601EB8C20BEF0669TY2PR04MB3517apcp_--

--===============2485157297870011530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2485157297870011530==--
