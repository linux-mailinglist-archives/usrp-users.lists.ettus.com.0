Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C072872426
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2019 04:02:18 +0200 (CEST)
Received: from [::1] (port=55272 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hq6bf-0000aa-OG; Tue, 23 Jul 2019 22:02:15 -0400
Received: from mail-oln040092253064.outbound.protection.outlook.com
 ([40.92.253.64]:62016 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <retina999@hotmail.com>)
 id 1hq6bb-0000VP-9l
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 22:02:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xkYQbdqfAn7pWjzueYy99KZhY2oJchVX5dTSvRAbwno=;
 b=mOpOc+UkJuib8m8kuHNy4qjulBegj0d38B/A0LvwixKxt4XWjOnH45EyjnkDRqRUtUgDNVkkBGOKURSjoHOPWc5t2az6JxSvRz0y5tcXJ21NdDTKiMvcc/OLpnLR8e49jcd1tPpCu3XeM03ITjj13VMdWhyFUvORswcUsHzjnvg6BSla37b21MjtUsF6r0nModyHS3u6PxUKeXWnzYuqytZYoauseepv4c5IwPjWbpWbM/Eyq/iqaH6aG55j7ZsexFuN5jCxjmgAvqCl1IGnfCDpvjdZuiiuXtHFGs4cX1NzP2rmQwURzlfVxZxJQoCU0wjlHe0fdmHTS1A4iFx1xQ==
Received: from PU1APC01FT009.eop-APC01.prod.protection.outlook.com
 (10.152.252.51) by PU1APC01HT061.eop-APC01.prod.protection.outlook.com
 (10.152.253.101) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2052.18; Wed, 24 Jul
 2019 02:01:27 +0000
Received: from HK0PR01MB2835.apcprd01.prod.exchangelabs.com (10.152.252.55) by
 PU1APC01FT009.mail.protection.outlook.com (10.152.252.103) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Wed, 24 Jul 2019 02:01:27 +0000
Received: from HK0PR01MB2835.apcprd01.prod.exchangelabs.com
 ([fe80::e41a:f703:68f5:d689]) by HK0PR01MB2835.apcprd01.prod.exchangelabs.com
 ([fe80::e41a:f703:68f5:d689%4]) with mapi id 15.20.2094.017; Wed, 24 Jul 2019
 02:01:26 +0000
To: Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: =?gb2312?B?W1VTUlAtdXNlcnNdILTwuLQ6ICBOMzEwICJCYWQgQ0hEUiBvciBwYWNrZXQg?=
 =?gb2312?Q?fragment"_Problem?=
Thread-Index: AQHVQa8liN9aHfcSfkW+OCbdT5JnrqbZAQeG
Date: Wed, 24 Jul 2019 02:01:26 +0000
Message-ID: <HK0PR01MB28358F40DF973B33B3EC4A1FF3C60@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
References: <HK0PR01MB2835921DB0A5915C119C4BE5F3CB0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <CANf970Zt=7PJEOS5a6GsCichToKx=jFOp3o2kGcZQv3zYt8Csg@mail.gmail.com>
 <HK0PR01MB28356667C6C50BC7C37C7153F3C70@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>,
 <06CA772E-8BE6-4BFF-880B-30B7F97492B9@gmail.com>
In-Reply-To: <06CA772E-8BE6-4BFF-880B-30B7F97492B9@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:0FAA1C6CBC3A2E9C9651984F6303CA42CEA64E7F6D41D4C2AA105B02529675FE;
 UpperCasedChecksum:FD280727A9748B00BAA98150CD4A938533BA0C96D9B9B97C8853E134D5FA1A6A;
 SizeAsReceived:7181; Count:43
x-tmn: [2wbW+VjhuZl9G7D/v9he2kWA7zBL4OwG]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:PU1APC01HT061; 
x-ms-traffictypediagnostic: PU1APC01HT061:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: 9hCc7bJWKbBlZkI3XUNHF4PpqpqGu7B+vJToUOY9ZIdLX/lXip5C2Rp/B4Bvvm0CggT1IToec8iUK28P3TSLFeLhILyHLM5GTaiENWmqDFxccZ5YUgGk91RrERJ9xYTR3VILhAwrXp2FAexgGt+lzFRU4ROgfTVHXn0At6iid+45xPvGWUBFVlfzVdOcHfLC
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ba89e00f-851c-4e95-7897-08d70fdad636
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 02:01:26.6186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT061
Subject: [USRP-users] =?gb2312?b?tPC4tDogILTwuLQ6ICBOMzEwICJCYWQgQ0hEUiBv?=
 =?gb2312?b?ciBwYWNrZXQgZnJhZ21lbnQiIFByb2JsZW0=?=
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?b?5rGkIOmjniB2aWEgVVNSUC11c2Vycw==?= <usrp-users@lists.ettus.com>
Reply-To: =?gb2312?B?zMAgt8k=?= <retina999@hotmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5530508134880123346=="
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

--===============5530508134880123346==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR01MB28358F40DF973B33B3EC4A1FF3C60HK0PR01MB2835apcp_"

--_000_HK0PR01MB28358F40DF973B33B3EC4A1FF3C60HK0PR01MB2835apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

QWN0dWFsbHkgbXkgcGOhr3MgRXRoZXJuZXQgY2FyZCBjaGlwIGlzIGZyb20gUmVhbHRlay4NCkmh
r3ZlIHRyaWVkIGFsbCBwb3NzaWJsZSBNVFUgc2l6ZXMgb2YgYXV0bywgMTAwMCwgMTUwMCwgMjAw
MCwgYW5kIHVwIHRvIDkwMDAuIEFsd2F5cyB0aGUgc2FtZSBlcnJvcnMuDQpJcyBpdCB0aGUgaW5o
ZXJlbnQgcHJvYmxlbSB3aXRoIHRoZSBSZWFsdGVrIGNoaXA/DQpJZiB0aGF0LCBpcyB0aGVyZSBh
bnkgd29ya2Fyb3VuZD8gZWcuIENoYW5naW5nIHRoZSBkZWZhdWx0IExpbnV4IGRyaXZlciwNCm9y
IHRoZSBsYXN0IHNvbHV0aW9uLCBpZS4gSSBoYXZlIHRvIHRyeSBpbnN0YWxsIGEgUENJRSBuZXR3
b3JrIGNhcmQuIFdoaWNoIGJyYW5kIGV0aGVybmV0IGNhcmQgaXMgY29tcGF0aWJsZSwgb25lIGZy
b20gSW50ZWw/DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQq3orz+yMs6IE1h
cmN1cyBEIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4NCreiy83KsbzkOiBXZWRuZXNk
YXksIEp1bHkgMjQsIDIwMTkgNzozNDoxMyBBTQ0KytW8/sjLOiDMwCC3ySA8cmV0aW5hOTk5QGhv
dG1haWwuY29tPg0Ks63LzTogU2FtIFJlaXRlciA8c2FtLnJlaXRlckBldHR1cy5jb20+OyB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQrW98zi
OiBSZTogW1VTUlAtdXNlcnNdILTwuLQ6IE4zMTAgIkJhZCBDSERSIG9yIHBhY2tldCBmcmFnbWVu
dCIgUHJvYmxlbQ0KDQpTb21lIEV0aGVybmV0IDFnIGNvbnRyb2xsZXJzIHdvbqGvdCBhY3R1YWxs
eSBkbyBNVFVzIGdyZWF0ZXIgdGhhbiAxNTAwIGRlc3BpdGUgZXRobm9sb2d5IHRlbGxpbmcgdGhl
bSB0by4gU29tZSBSZWFsdGVrIGZvciBleGFtcGxlLg0KDQpJZiBpdKGvcyBqdXN0IDFHIHRyeSBk
ZWZhdWx0IE1UVSBvZiAxNTAwIGFuZCB3b3JrIHlvdXIgd2F5IHVwIHRvIHNlZSB3aGVyZSBpdCBm
YWlscy4NCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQpPbiBKdWwgMjMsIDIwMTksIGF0IDc6MTUg
UE0sIMzAILfJIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWls
dG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+PiB3cm90ZToNCg0KSXShr3MgYSAgMWcgU0ZQ
MCBsaW5rLiBJIHNldCBNVFUgIHRvIDgwMDAgYWNjb3JkaW5nIHRvIHRoZSBBcHBsaWNhdGlvbiBO
b3RlLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0Kt6K8/sjLOiBTYW0gUmVp
dGVyIDxzYW0ucmVpdGVyQGV0dHVzLmNvbTxtYWlsdG86c2FtLnJlaXRlckBldHR1cy5jb20+Pg0K
t6LLzcqxvOQ6IFdlZG5lc2RheSwgSnVseSAyNCwgMjAxOSA0OjU2OjIxIEFNDQrK1bz+yMs6IMzA
ILfJIDxyZXRpbmE5OTlAaG90bWFpbC5jb208bWFpbHRvOnJldGluYTk5OUBob3RtYWlsLmNvbT4+
DQqzrcvNOiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20+Pg0K1vfM4jogUmU6IFtVU1JQLXVzZXJzXSBOMzEwICJCYWQgQ0hE
UiBvciBwYWNrZXQgZnJhZ21lbnQiIFByb2JsZW0NCg0KSWYgeW91J3JlIGNvbm5lY3RlZCBvdmVy
IGEgMTBHYkUgbGluaywgbWFrZSBzdXJlIHRvIHNldCB5b3VyIGhvc3QncyBNVFUgYXBwcm9wcmlh
dGVseS4gSSBzZXQgbWluZSB0byA5MDAwLg0KDQpTYW0gUmVpdGVyDQpTRFIgU3VwcG9ydCBFbmdp
bmVlcg0KRXR0dXMgUmVzZWFyY2gNCg0KDQpPbiBGcmksIEp1bCAxOSwgMjAxOSBhdCAyOjIxIEFN
IMzAILfJIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+PiB3cm90ZToNCg0KSGksIGFsbCwNCg0KV2hlbiBi
ZW5jaG1hcmtpbmcgbXkgTjMxMCwgSSBrZWVwIGdldHRpbmcgc3VjaCBbUlggRkxPVyBDVFJMXSBl
cnJvcnMuDQpXaGF0IGNhdXNlcyB0aGlzIGFuZCBob3cgdG8gc29sdmUgaXQ/DQoNClRoYW5rcyBp
biBhZHZhbmNlIQ0KDQpGVA0KDQoNCi91c3IvbG9jYWwvbGliL3VoZC9leGFtcGxlcy9iZW5jaG1h
cmtfcmF0ZSAgXA0KPiAgICAtLWFyZ3MgInR5cGU9bjN4eCxtZ210X2FkZHI9MTkyLjE2OC4xMC4y
LGFkZHI9MTkyLjE2OC4xMC4yLG1hc3Rlcl9jbG9ja19yYXRlPTEyMi44OGU2IiBcDQo+ICAgIC0t
ZHVyYXRpb24gNjAgXA0KPiAgICAtLWNoYW5uZWxzICIwIiBcDQo+ICAgIC0tcnhfcmF0ZSAzLjg0
ZTYgXA0KPiAgICAtLXJ4X3N1YmRldiAiQTowIiBcDQo+ICAgIC0tdHhfcmF0ZSAzLjg0ZTYgXA0K
PiAgICAtLXR4X3N1YmRldiAiQTowIg0KDQpbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVy
c2lvbiA3LjQuMDsgQm9vc3RfMTA2NTAxOyBVSERfMy4xNC4xLkhFQUQtMC1nYmZiOWMxYzcNClsw
MDowMDowMC4wMDAwMTRdIENyZWF0aW5nIHRoZSB1c3JwIGRldmljZSB3aXRoOiB0eXBlPW4zeHgs
bWdtdF9hZGRyPTE5Mi4xNjguMTAuMixhZGRyPTE5Mi4xNjguMTAuMixtYXN0ZXJfY2xvY2tfcmF0
ZT0xMjIuODhlNi4uLg0KW0lORk9dIFtNUE1EXSBJbml0aWFsaXppbmcgMSBkZXZpY2UocykgaW4g
cGFyYWxsZWwgd2l0aCBhcmdzOiBtZ210X2FkZHI9MTkyLjE2OC4xMC4yLHR5cGU9bjN4eCxwcm9k
dWN0PW4zMTAsc2VyaWFsPTMxODJCMDksY2xhaW1lZD1GYWxzZSxhZGRyPTE5Mi4xNjguMTAuMixt
YXN0ZXJfY2xvY2tfcmF0ZT0xMjIuODhlNg0KW0lORk9dIFtNUE0uUGVyaXBoTWFuYWdlcl0gaW5p
dCgpIGNhbGxlZCB3aXRoIGRldmljZSBhcmdzIGBtYXN0ZXJfY2xvY2tfcmF0ZT0xMjIuODhlNix0
aW1lX3NvdXJjZT1pbnRlcm5hbCxjbG9ja19zb3VyY2U9aW50ZXJuYWwsbWdtdF9hZGRyPTE5Mi4x
NjguMTAuMixwcm9kdWN0PW4zMTAnLg0KW0lORk9dIFswL1JlcGxheV8wXSBJbml0aWFsaXppbmcg
YmxvY2sgY29udHJvbCAoTk9DIElEOiAweDRFOTFBMDAwMDAwMDAwMDQpDQpbSU5GT10gWzAvUmFk
aW9fMF0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHgxMkFEMTAwMDAwMDEx
MzEyKQ0KW0lORk9dIFswL1JhZGlvXzFdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0Mg
SUQ6IDB4MTJBRDEwMDAwMDAxMTMxMikNCltJTkZPXSBbMC9ERENfMF0gSW5pdGlhbGl6aW5nIGJs
b2NrIGNvbnRyb2wgKE5PQyBJRDogMHhEREMwMDAwMDAwMDAwMDAwKQ0KW0lORk9dIFswL0REQ18x
XSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweEREQzAwMDAwMDAwMDAwMDAp
DQpbSU5GT10gWzAvRFVDXzBdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4
RDBDMDAwMDAwMDAwMDAwMikNCltJTkZPXSBbMC9EVUNfMV0gSW5pdGlhbGl6aW5nIGJsb2NrIGNv
bnRyb2wgKE5PQyBJRDogMHhEMEMwMDAwMDAwMDAwMDAyKQ0KW0lORk9dIFswL0ZJRk9fMF0gSW5p
dGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhGMUYwMDAwMDAwMDAwMDAwKQ0KW0lO
Rk9dIFswL0ZJRk9fMV0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhGMUYw
MDAwMDAwMDAwMDAwKQ0KW0lORk9dIFswL0ZJRk9fMl0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRy
b2wgKE5PQyBJRDogMHhGMUYwMDAwMDAwMDAwMDAwKQ0KW0lORk9dIFswL0ZJRk9fM10gSW5pdGlh
bGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhGMUYwMDAwMDAwMDAwMDAwKQ0KVXNpbmcg
RGV2aWNlOiBTaW5nbGUgVVNSUDoNCiAgRGV2aWNlOiBOMzAwLVNlcmllcyBEZXZpY2UNCiAgTWJv
YXJkIDA6IG5pLW4zeHgtMzE4MkIwOQ0KICBSWCBDaGFubmVsOiAwDQogICAgUlggRFNQOiAwDQog
ICAgUlggRGJvYXJkOiBBDQogICAgUlggU3ViZGV2OiBNYWduZXNpdW0NCiAgVFggQ2hhbm5lbDog
MA0KICAgIFRYIERTUDogMA0KICAgIFRYIERib2FyZDogQQ0KICAgIFRYIFN1YmRldjogTWFnbmVz
aXVtDQoNClswMDowMDoxNy4zNTMxODRdIFNldHRpbmcgZGV2aWNlIHRpbWVzdGFtcCB0byAwLi4u
DQpbMDA6MDA6MTcuNDEyMTg3XSBUZXN0aW5nIHJlY2VpdmUgcmF0ZSAzLjg0MDAwMCBNc3BzIG9u
IDEgY2hhbm5lbHMNClswMDowMDoxNy40MTQxNjRdIFJlY2VpdmVyIGVycm9yOiBFUlJPUl9DT0RF
X0JBRF9QQUNLRVQNCltbRVJST1JdIFtSWCBGTE9XIENUUkxdIEVycm9yIHVucGFja2luZyBwYWNr
ZXQ6IFZhbHVlRXJyb3I6IEJhZCBDSERSIG9yIHBhY2tldCBmcmFnbWVudA0KDQpbRVJST1JdIFtT
VFJFQU1FUl0gVGhlIHJlY2VpdmUgcGFja2V0IGhhbmRsZXIgY2F1Z2h0IGEgdmFsdWUgZXhjZXB0
aW9uLg0KVmFsdWVFcnJvcjogQmFkIENIRFIgb3IgcGFja2V0IGZyYWdtZW50DQowMDowMDoxNy40
MTQxODBdIFVuZXhwZWN0ZWQgZXJyb3Igb24gcmVjdiwgY29udGludWluZy4uLg0KWzAwOjAwOjE3
LjUxNDI1OF0gUmVjZWl2ZXIgZXJyb3I6IEVSUk9SX0NPREVfVElNRU9VVCwgY29udGludWluZy4u
Lg0KWzAwOjAwOjE3LjUxNDMxMl0gUmVjZWl2ZXIgZXJyb3I6IEVSUk9SX0NPREVfQkFEX1BBQ0tF
VA0KWzAwOjAwOjE3LjUxNDMxN10gVW5leHBlY3RlZCBlcnJvciBvbiByZWN2LCBjb250aW51aW5n
Li4uDQpbRVJST1JdIFtSWCBGTE9XIENUUkxdIEVycm9yIHVucGFja2luZyBwYWNrZXQ6IFZhbHVl
RXJyb3I6IEJhZCBDSERSIG9yIHBhY2tldCBmcmFnbWVudA0KDQpbRVJST1JdIFtTVFJFQU1FUl0g
VGhlIHJlY2VpdmUgcGFja2V0IGhhbmRsZXIgY2F1Z2h0IGEgdmFsdWUgZXhjZXB0aW9uLg0KVmFs
dWVFcnJvcjogQmFkIENIRFIgb3IgcGFja2V0IGZyYWdtZW50DQpbMDA6MDA6MTcuNTMyOTkxXSBU
ZXN0aW5nIHRyYW5zbWl0IHJhdGUgMy44NDAwMDAgTXNwcyBvbiAxIGNoYW5uZWxzDQpbMDA6MDA6
MTcuNjE0MzI5XSBSZWNlaXZlciBlcnJvcjogRVJST1JfQ09ERV9USU1FT1VULCBjb250aW51aW5n
Li4uDQpbMDA6MDA6MTcuNjE0MzcyXSBSZWNlaXZlciBlcnJvcjogRVJST1JfQ09ERV9CQURfUEFD
S0VUDQpbMDA6MDA6MTcuNjE0Mzc3XSBVbmV4cGVjdGVkIGVycm9yIG9uIHJlY3YsIGNvbnRpbnVp
bmcuLi4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QNClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPG1h
aWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20v
bWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0DQpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20+DQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11
c2Vyc19saXN0cy5ldHR1cy5jb20NCg==

--_000_HK0PR01MB28358F40DF973B33B3EC4A1FF3C60HK0PR01MB2835apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
</head>
<body dir=3D"auto">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML \9884\8BBE\683C\5F0F \5B57\7B26";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;}
span.HTML
	{mso-style-name:"HTML \9884\8BBE\683C\5F0F \5B57\7B26";
	mso-style-priority:99;
	mso-style-link:"HTML \9884\8BBE\683C\5F0F";
	font-family:SimSun;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Actually my pc=A1=AFs Ethernet =
card chip is from Realtek.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=A1=AFve tried all possible MT=
U sizes of auto, 1000, 1500, 2000, and up to 9000. Always the same errors.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is it the inherent problem with=
 the Realtek chip?
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If that, is there any workaroun=
d? eg. Changing the default Linux driver,
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">or the last solution, ie. I hav=
e to try install a PCIE network card. Which brand ethernet card is compatib=
le, one from Intel?</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> Marcus =
D Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> Wednesday, July 24, 2019 7:34:13 AM<br>
<b>=CA=D5=BC=FE=C8=CB:</b> =CC=C0 =B7=C9 &lt;retina999@hotmail.com&gt;<br>
<b>=B3=AD=CB=CD:</b> Sam Reiter &lt;sam.reiter@ettus.com&gt;; usrp-users@li=
sts.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] =B4=F0=B8=B4: N310 &quot;Bad CHDR or =
packet fragment&quot; Problem</font>
<div>&nbsp;</div>
</div>
<div>Some Ethernet 1g controllers won=A1=AFt actually do MTUs greater than =
1500 despite ethnology telling them to. Some Realtek for example.&nbsp;
<div><br>
</div>
<div>If it=A1=AFs just 1G try default MTU of 1500 and work your way up to s=
ee where it fails.&nbsp;<br>
<br>
<div id=3D"AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
On Jul 23, 2019, at 7:15 PM, =CC=C0 =B7=C9 via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML \9884\8BBE\683C\5F0F \5B57\7B26";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;}
span.HTML
	{mso-style-name:"HTML \9884\8BBE\683C\5F0F \5B57\7B26";
	mso-style-priority:99;
	mso-style-link:"HTML \9884\8BBE\683C\5F0F";
	font-family:SimSun;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">It</span>=A1=AF<span lang=3D"EN=
-US">s a&nbsp; 1g SFP0 link. I set MTU&nbsp; to 8000 according to the Appli=
cation Note.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> Sam Rei=
ter &lt;<a href=3D"mailto:sam.reiter@ettus.com">sam.reiter@ettus.com</a>&gt=
;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> Wednesday, July 24, 2019 4:56:21 AM<br>
<b>=CA=D5=BC=FE=C8=CB:</b> =CC=C0 =B7=C9 &lt;<a href=3D"mailto:retina999@ho=
tmail.com">retina999@hotmail.com</a>&gt;<br>
<b>=B3=AD=CB=CD:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a>&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] N310 &quot;Bad CHDR or packet fragmen=
t&quot; Problem</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">If you're connected over a 10GbE link, make sure to set yo=
ur host's MTU appropriately. I set mine to 9000.
<div><br clear=3D"all">
<div>
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter&nbsp;
<div>SDR Support Engineer</div>
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 19, 2019 at 2:21 AM =CC=
=C0 =B7=C9 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"#FFFFFF">
<pre>Hi, all,

When benchmarking my N310, I keep getting such <font color=3D"#CC0000">[RX =
FLOW CTRL]</font> errors.=20
What causes this and how to solve it?

Thanks in advance!

FT


/usr/local/lib/uhd/examples/benchmark_rate  \
&gt;    --args &quot;type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10=
.2,master_clock_rate=3D122.88e6&quot; \
&gt;    --duration 60 \
&gt;    --channels &quot;0&quot; \
&gt;    --rx_rate 3.84e6 \
&gt;    --rx_subdev &quot;A:0&quot; \
&gt;    --tx_rate 3.84e6 \
&gt;    --tx_subdev &quot;A:0&quot;

<font color=3D"#4E9A06">[INFO] [UHD] </font>linux; GNU C&#43;&#43; version =
7.4.0; Boost_106501; UHD_3.14.1.HEAD-0-gbfb9c1c7
[00:00:00.000014] Creating the usrp device with: type=3Dn3xx,mgmt_addr=3D19=
2.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6...
<font color=3D"#4E9A06">[INFO] [MPMD] </font>Initializing 1 device(s) in pa=
rallel with args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,seria=
l=3D3182B09,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D122.88e=
6
<font color=3D"#4E9A06">[INFO] [MPM.PeriphManager] </font>init() called wit=
h device args `master_clock_rate=3D122.88e6,time_source=3Dinternal,clock_so=
urce=3Dinternal,mgmt_addr=3D192.168.10.2,product=3Dn310'.
<font color=3D"#4E9A06">[INFO] [0/Replay_0] </font>Initializing block contr=
ol (NOC ID: 0x4E91A00000000004)
<font color=3D"#4E9A06">[INFO] [0/Radio_0] </font>Initializing block contro=
l (NOC ID: 0x12AD100000011312)
<font color=3D"#4E9A06">[INFO] [0/Radio_1] </font>Initializing block contro=
l (NOC ID: 0x12AD100000011312)
<font color=3D"#4E9A06">[INFO] [0/DDC_0] </font>Initializing block control =
(NOC ID: 0xDDC0000000000000)
<font color=3D"#4E9A06">[INFO] [0/DDC_1] </font>Initializing block control =
(NOC ID: 0xDDC0000000000000)
<font color=3D"#4E9A06">[INFO] [0/DUC_0] </font>Initializing block control =
(NOC ID: 0xD0C0000000000002)
<font color=3D"#4E9A06">[INFO] [0/DUC_1] </font>Initializing block control =
(NOC ID: 0xD0C0000000000002)
<font color=3D"#4E9A06">[INFO] [0/FIFO_0] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_1] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_2] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_3] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: ni-n3xx-3182B09
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium

[00:00:17.353184] Setting device timestamp to 0...
[00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
[00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
[<font color=3D"#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking pack=
et: ValueError: Bad CHDR or packet fragment

<font color=3D"#CC0000">[ERROR] [STREAMER] </font>The receive packet handle=
r caught a value exception.
ValueError: Bad CHDR or packet fragment
00:00:17.414180] Unexpected error on recv, continuing...
[00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.514317] Unexpected error on recv, continuing...
<font color=3D"#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking packe=
t: ValueError: Bad CHDR or packet fragment

<font color=3D"#CC0000">[ERROR] [STREAMER] </font>The receive packet handle=
r caught a value exception.
ValueError: Bad CHDR or packet fragment
[00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
[00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.614377] Unexpected error on recv, continuing...
</pre>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</blockquote>
<blockquote type=3D"cite">
<div dir=3D"ltr"><span>_______________________________________________</spa=
n><br>
<span>USRP-users mailing list</span><br>
<span><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.=
com</a></span><br>
<span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m</a></span><br>
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_HK0PR01MB28358F40DF973B33B3EC4A1FF3C60HK0PR01MB2835apcp_--


--===============5530508134880123346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5530508134880123346==--

