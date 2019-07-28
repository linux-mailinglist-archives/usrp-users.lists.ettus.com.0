Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E14C77C75
	for <lists+usrp-users@lfdr.de>; Sun, 28 Jul 2019 02:03:13 +0200 (CEST)
Received: from [::1] (port=58516 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hrWea-0006Uh-LZ; Sat, 27 Jul 2019 20:03:08 -0400
Received: from mail-oln040092253106.outbound.protection.outlook.com
 ([40.92.253.106]:48832 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <retina999@hotmail.com>)
 id 1hrWeV-0006ON-Ve
 for usrp-users@lists.ettus.com; Sat, 27 Jul 2019 20:03:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BEF7O7mWUADavfywoe3G3E8k3bYmEadXcE5ibTSveFmVbNtjcICb22LGTwVPSD+Ayb1LFs4FSZeWhfA8M72Ihqp+VbNUFiI3lQuPnKzojnuayLnP/W+Prta7bW+0Qga9xeFQvkTGTjlhHXw0yju612AyxxRvJta9R17hWCdMlCP2rIml5JIFANU3e9bQZDXqEd0ub+s683wtJAt506IG09RQ+hzUcIJr/XCUnRwm87YKcPht6MpJt/yCgEOsON0ZdGzdBnELJJ8WvjVsWbxNjAWpyeETuzQRyqV5kqZgixxHFXwyXVB6bu1u7NMLEfXLnhl652ZI/gUg5Hgb3VBqMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+x+otRPplMcspy8yluI5206/8Xc38pyFDj0/V70V618=;
 b=AJp2QE6Mfxhow4QTrtZxAWZ7hLKsfp2mM/tlEfMnPaKFI7nfmeeY3YcgpeD0fiNioDMa2wf4hXbbU2IS2q5xNgAiM/WZLCQQMv82Q6HO2Z7VBdQnBT5IbllPw6vy+2sfqCJkcX7wepzm6eMbUMsgNXqcEpC/pmaKEx59f7B/iVbMishGCl6YuoeXlOrwbBsjjJ7rI4vbcoIzexAPladh2pPGkJ5kaIBNw+cTX9SzdtHsvwOFSbOGeizac/BHiIW4L0WxJPHL72GsAU+SSz4yzsvXZ8OAQy6qFmVqG4dJqyACb97hqeYapILaeq8EWDgwPSIetBlKjAD1e4Wlv7G/3g==
ARC-Authentication-Results: i=1; mx.microsoft.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+x+otRPplMcspy8yluI5206/8Xc38pyFDj0/V70V618=;
 b=beRbEPvMYuEVIYBpk9ajrtniSEoW14H8dGh/o46CyjwGFtMCSmRnss++NU4reARQ9H9twP1lu8ufBM4QurGiAnlkRhq52VL+WUKubOD45Q/kiGapdxwgc1bd9m1Glf2MItuQ2A4VpSbZJfIAPwAZOECKJ2s9nYays1httJNngFlbB+ZbqndNcg4Tt+RkBl0pcWVjm/N6Nz+RfwbqHmcSSBk72GYCOdyvwkAsx3DG3rdJBGBa+1VKNqUzdRHmkUGIgeMKnVkHX/jINkB3jeh2rtb3b9IGoBli7/UqxS//rlI6O4jpYvJ3pXvFLrPs0g4ejXitpIAYs6a/dU4mYJvbHQ==
Received: from SG2APC01FT056.eop-APC01.prod.protection.outlook.com
 (10.152.250.51) by SG2APC01HT140.eop-APC01.prod.protection.outlook.com
 (10.152.251.223) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.10; Sun, 28 Jul
 2019 00:02:19 +0000
Received: from HK0PR01MB2835.apcprd01.prod.exchangelabs.com (10.152.250.60) by
 SG2APC01FT056.mail.protection.outlook.com (10.152.251.13) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10 via Frontend Transport; Sun, 28 Jul 2019 00:02:19 +0000
Received: from HK0PR01MB2835.apcprd01.prod.exchangelabs.com
 ([fe80::e41a:f703:68f5:d689]) by HK0PR01MB2835.apcprd01.prod.exchangelabs.com
 ([fe80::e41a:f703:68f5:d689%4]) with mapi id 15.20.2094.017; Sun, 28 Jul 2019
 00:02:19 +0000
To: Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: =?gb2312?B?tPC4tDogW1VTUlAtdXNlcnNdILTwuLQ6IE4zMTAgIkJhZCBDSERSIG9yIHBh?=
 =?gb2312?Q?cket_fragment"_Problem?=
Thread-Index: AQHVQyMblaTiwqzOek6B+++NQTabj6bbwhAAgAAUSACAADiygIABFrkAgACLawCAASQ7AIAAUq8u
Date: Sun, 28 Jul 2019 00:02:19 +0000
Message-ID: <HK0PR01MB283554F9A218C1B013C40C47F3C30@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
References: <HK0PR01MB2835921DB0A5915C119C4BE5F3CB0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <CANf970Zt=7PJEOS5a6GsCichToKx=jFOp3o2kGcZQv3zYt8Csg@mail.gmail.com>
 <HK0PR01MB28356667C6C50BC7C37C7153F3C70@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <06CA772E-8BE6-4BFF-880B-30B7F97492B9@gmail.com>
 <HK0PR01MB28358F40DF973B33B3EC4A1FF3C60@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <B93D0C94-7692-4C77-994D-27ADFD22DBB5@gmail.com>
 <CANf970bQb8vKkrJr8Kruc6YNf_y9VAfUZ6AUwjacZ0z6okH-3w@mail.gmail.com>
 <5D3A0B4E.6030907@gmail.com>
 <CANf970ZTcEFYX1Y5BaDZ8-mwy_rpWe7C_SZ68ja+Gjz6-ihrPg@mail.gmail.com>
 <HK0PR01MB2835D5C46B11D91D91B0F229F3C00@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <CANf970ZY3ExaXG5Zdyp6ZtWx7MAEz+aF5OZWfO0Df6=1=Hu3Hg@mail.gmail.com>
 <HK0PR01MB2835C2119CD9404D6F795A51F3C30@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>,
 <0B791A6B-9D5F-456A-8A91-4266C68DD382@gmail.com>
In-Reply-To: <0B791A6B-9D5F-456A-8A91-4266C68DD382@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:19B228A05B25A2FBEA53FBE76E0EC881C194473437A59F277066234189A697EF;
 UpperCasedChecksum:CCCCA1CF559352525334A726977FFD7FD5A9BFFE48654B2BF2FC537EA169F7B2;
 SizeAsReceived:7847; Count:43
x-tmn: [Xx1M96dLa2Z3Ta9WdeWnVG2nPcJsU8+4]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:SG2APC01HT140; 
x-ms-traffictypediagnostic: SG2APC01HT140:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: MerOV0Lp+xhTgNgexlwbG7qnOhVw9ItokkPcqqAoc5n68TReYtTmTUPBUOZ9smmW44qkKgH2i/d8zLlFkMVt7bpnJ/5lUjfSxmV3pcqOgPKMxWs1iFlUiUC1wIyjo1SZnYDVuHsGLay2/HLvgX0VANIEFIxiNhDC6CZ4G2S7pMa2oZ16cV4FMrhB7696NK9a
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f00f3f02-a71c-4763-ebcf-08d712eedb93
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2019 00:02:19.0596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT140
Subject: [USRP-users] =?gb2312?b?tPC4tDogtPC4tDogILTwuLQ6IE4zMTAgIkJhZCBD?=
 =?gb2312?b?SERSIG9yIHBhY2tldCBmcmFnbWVudCIgUHJvYmxlbQ==?=
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
Content-Type: multipart/mixed; boundary="===============7059675470729958333=="
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

--===============7059675470729958333==
Content-Language: zh-CN
Content-Type: multipart/related;
	boundary="_004_HK0PR01MB283554F9A218C1B013C40C47F3C30HK0PR01MB2835apcp_";
	type="multipart/alternative"

--_004_HK0PR01MB283554F9A218C1B013C40C47F3C30HK0PR01MB2835apcp_
Content-Type: multipart/alternative;
	boundary="_000_HK0PR01MB283554F9A218C1B013C40C47F3C30HK0PR01MB2835apcp_"

--_000_HK0PR01MB283554F9A218C1B013C40C47F3C30HK0PR01MB2835apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

QWN0dWFsbHkgSSBoYXZlIHRyaWVkIDE1MDAsIHNhbWUgZXJyb3JzLiBJcyB0aGVyZSBhIHdheSB0
byB1c2UgUHlCT01CUyB0byBjcmVhdGUgdGhlIFJGTk9DIGVudmlyb25tZW50IHdpdGggYSBzcGVj
aWZpZWQgVUhEIHZlcnNpb24oMy4xNC4wLjApIGluc3RlYWQgb2YgdGhlIGRlZmF1bHQgbGF0ZXN0
IHZlcnNpb24gKDMuMTUpPw0KDQq3orz+yMs6IE1hcmN1cyBEIExlZWNoPG1haWx0bzpwYXRjaHZv
bmJyYXVuQGdtYWlsLmNvbT4NCreiy83KsbzkOiAyMDE5xOo31MIyOMjVIDM6MDINCsrVvP7Iyzog
zMAgt8k8bWFpbHRvOnJldGluYTk5OUBob3RtYWlsLmNvbT4NCrOty806IFNhbSBSZWl0ZXI8bWFp
bHRvOnNhbS5yZWl0ZXJAZXR0dXMuY29tPjsgdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208bWFp
bHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0K1vfM4jogUmU6ILTwuLQ6IFtVU1JQLXVz
ZXJzXSC08Li0OiBOMzEwICJCYWQgQ0hEUiBvciBwYWNrZXQgZnJhZ21lbnQiIFByb2JsZW0NCg0K
VHJ5IGFkanVzdGluZyB0aGUgTVRVIGFzIHdlbGwgdG8gMTUwMC4NCg0KU2VudCBmcm9tIG15IGlQ
aG9uZQ0KDQpPbiBKdWwgMjYsIDIwMTksIGF0IDk6MzYgUE0sIMzAILfJIDxyZXRpbmE5OTlAaG90
bWFpbC5jb208bWFpbHRvOnJldGluYTk5OUBob3RtYWlsLmNvbT4+IHdyb3RlOg0KDQpGWUkNCg0K
DQoNCmlmY29uZmlnDQoNCmVucDJzMDogZmxhZ3M9NDE2MzxVUCxCUk9BRENBU1QsUlVOTklORyxN
VUxUSUNBU1Q+ICBtdHUgODAwMA0KDQogICAgICAgIGluZXQgMTkyLjE2OC4xMC4xICBuZXRtYXNr
IDI1NS4yNTUuMjU1LjAgIGJyb2FkY2FzdCAxOTIuMTY4LjEwLjI1NQ0KDQogICAgICAgIGluZXQ2
IGZlODA6Ojk2YzY6OTFmZjpmZWJkOmU4YmIgIHByZWZpeGxlbiA2NCAgc2NvcGVpZCAweDIwPGxp
bms+DQoNCiAgICAgICAgZXRoZXIgOTQ6YzY6OTE6YmQ6ZTg6YmIgIHR4cXVldWVsZW4gMTAwMCAg
KEV0aGVybmV0KQ0KDQogICAgICAgIFJYIHBhY2tldHMgMzM1MiAgYnl0ZXMgMjI3NDY1MCAoMi4y
IE1CKQ0KDQogICAgICAgIFJYIGVycm9ycyAwICBkcm9wcGVkIDAgIG92ZXJydW5zIDAgIGZyYW1l
IDANCg0KICAgICAgICBUWCBwYWNrZXRzIDI5MjYgIGJ5dGVzIDI0NjUyNyAoMjQ2LjUgS0IpDQoN
CiAgICAgICAgVFggZXJyb3JzIDAgIGRyb3BwZWQgMCBvdmVycnVucyAwICBjYXJyaWVyIDAgIGNv
bGxpc2lvbnMgMA0KDQoNCg0KbG86IGZsYWdzPTczPFVQLExPT1BCQUNLLFJVTk5JTkc+ICBtdHUg
NjU1MzYNCg0KICAgICAgICBpbmV0IDEyNy4wLjAuMSAgbmV0bWFzayAyNTUuMC4wLjANCg0KICAg
ICAgICBpbmV0NiA6OjEgIHByZWZpeGxlbiAxMjggIHNjb3BlaWQgMHgxMDxob3N0Pg0KDQogICAg
ICAgIGxvb3AgIHR4cXVldWVsZW4gMTAwMCAgKExvY2FsIExvb3BiYWNrKQ0KDQogICAgICAgIFJY
IHBhY2tldHMgMzY5ICBieXRlcyAyOTQ4OSAoMjkuNCBLQikNCg0KICAgICAgICBSWCBlcnJvcnMg
MCAgZHJvcHBlZCAwICBvdmVycnVucyAwICBmcmFtZSAwDQoNCiAgICAgICAgVFggcGFja2V0cyAz
NjkgIGJ5dGVzIDI5NDg5ICgyOS40IEtCKQ0KDQogICAgICAgIFRYIGVycm9ycyAwICBkcm9wcGVk
IDAgb3ZlcnJ1bnMgMCAgY2FycmllciAwICBjb2xsaXNpb25zIDANCg0KDQoNCndseDNjNDZkOGQ3
Yzg2YzogZmxhZ3M9NDE2MzxVUCxCUk9BRENBU1QsUlVOTklORyxNVUxUSUNBU1Q+ICBtdHUgMTUw
MA0KDQogICAgICAgIGluZXQgMTkyLjE2OC4wLjIwOCAgbmV0bWFzayAyNTUuMjU1LjI1NC4wICBi
cm9hZGNhc3QgMTkyLjE2OC4xLjI1NQ0KDQogICAgICAgIGluZXQ2IGZlODA6OmI4YjM6YmRhNjpk
ZDJhOjIwNmYgIHByZWZpeGxlbiA2NCAgc2NvcGVpZCAweDIwPGxpbms+DQoNCiAgICAgICAgZXRo
ZXIgM2M6NDY6ZDg6ZDc6Yzg6NmMgIHR4cXVldWVsZW4gMTAwMCAgKEV0aGVybmV0KQ0KDQogICAg
ICAgIFJYIHBhY2tldHMgMTA0MyAgYnl0ZXMgODIyMTMyICg4MjIuMSBLQikNCg0KICAgICAgICBS
WCBlcnJvcnMgMCAgZHJvcHBlZCAwICBvdmVycnVucyAwICBmcmFtZSAwDQoNCiAgICAgICAgVFgg
cGFja2V0cyA4NzMgIGJ5dGVzIDExOTkyNSAoMTE5LjkgS0IpDQoNCiAgICAgICAgVFggZXJyb3Jz
IDAgIGRyb3BwZWQgMCBvdmVycnVucyAwICBjYXJyaWVyIDAgIGNvbGxpc2lvbnMgMA0KT24gMjAx
OS83LzI3IMnPzucxOjE3LCBTYW0gUmVpdGVyIHdyb3RlOg0KQ2FuIHlvdSBwb3N0IHRoZSBvdXRw
dXQgb2YgaWZjb25maWcgb24geW91ciBzeXN0ZW0/DQoNClNhbSBSZWl0ZXINClNEUiBTdXBwb3J0
IEVuZ2luZWVyDQpFdHR1cyBSZXNlYXJjaA0KDQoNCk9uIFRodSwgSnVsIDI1LCAyMDE5IGF0IDc6
NDAgUE0gzMAgt8kgPHJldGluYTk5OUBob3RtYWlsLmNvbTxtYWlsdG86cmV0aW5hOTk5QGhvdG1h
aWwuY29tPj4gd3JvdGU6DQoNClRoYW5rcyENCg0KSSBhbSBsZWFybmluZyB0byB1c2UgUkZOT0Mg
dG8gaW50ZWdyYXRlIGEgYmFzZWJhbmQuIFNvIEkgdXNlZCBQeUJPTUJTIHRvIGNyZWF0ZSB0aGUg
ZW52aXJvbm1lbnQuICBUaGUgYXV0b21hdGljYWxseSBpbnN0YWxsZWQgVUhEIHZlcnNpb24gaXMg
YXMgZm9sbG93cw0KDQp1aGRfZmluZF9kZXZpY2VzDQpbSU5GT10gW1VIRF0gbGludXg7IEdOVSBD
KysgdmVyc2lvbiA3LjQuMDsgQm9vc3RfMTA2NTAxOyBVSERfMy4xNS4wLmdpdC0xOS1nN2UxYjU2
N2QNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQot
LSBVSEQgRGV2aWNlIDANCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQpEZXZpY2UgQWRkcmVzczoNCiAgICBzZXJpYWw6IDMxODJCMDkNCiAgICBhZGRy
OiAxOTIuMTY4LjEwLjINCiAgICBjbGFpbWVkOiBGYWxzZQ0KICAgIG1nbXRfYWRkcjogMTkyLjE2
OC4xLjE1MQ0KICAgIG1nbXRfYWRkcjogMTkyLjE2OC4xMC4yDQogICAgcHJvZHVjdDogbjMxMA0K
ICAgIHR5cGU6IG4zeHgNCg0KQnV0IGhvdyB0byBhZGQgIHRvIHRoZSBkZXZpY2UgYXJndW1lbnRz
PyAgSSB0cmllZCBsaWtlIHRoaXMgYnV0IG5vdCB3b3JraW5nDQoNCi91c3IvbG9jYWwvbGliL3Vo
ZC9leGFtcGxlcy9yeF9hc2NpaV9hcnRfZGZ0IC0tYXJncyAibWFzdGVyX2Nsb2NrX3JhdGU9MTI1
ZTYsbWdtdF9hZGRyPTE5Mi4xNjguMS4xNTEscmVjdl9mcmFtZV9zaXplPTE0NzYsYWRkcj0xOTIu
MTY4LjEwLjIiIC0tZnJlcSA5OC41ZTYgLS1yYXRlIDIuNWU2IC0tZ2FpbiA1MCAtLXJlZi1sdmw9
Ii01MCIgLS1keW4tcm5nIDkwIC0tYW50ICJSWDIiIC0tc3ViZGV2ICJBOjAiDQoNCg0KT24gMjAx
OS83LzI2IMnPzuc1OjE3LCBTYW0gUmVpdGVyIHdyb3RlOg0KRm91bmQgdGhlIG9mZmVuZGluZyBj
b21taXQgYW5kIHJlcG9ydGVkIHRoZSBpc3N1ZS4gSXQgYWxzbyBsb29rcyBsaWtlIGFkZGluZyBy
ZWN2X2ZyYW1lX3NpemU9MTQ3NiBleHBsaWNpdGx5IHRvIHRoZSBkZXZpY2UgYXJndW1lbnRzIGNs
ZWFyZWQgdGhpbmdzIHVwIG9uIG15IE4zMTAgcnVubmluZyAzLjE0LjEuMC4gTGV0IG1lIGtub3cg
aWYgdGhpcyBkb2VzIC8gZG9lc24ndCB3b3JrIGZvciBhbnlvbmUuDQoNClNhbSBSZWl0ZXINClNE
UiBTdXBwb3J0IEVuZ2luZWVyDQpFdHR1cyBSZXNlYXJjaA0KDQoNCk9uIFRodSwgSnVsIDI1LCAy
MDE5IGF0IDM6MDQgUE0gTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbTxt
YWlsdG86cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+PiB3cm90ZToNCk9uIDA3LzI1LzIwMTkgMDM6
NTYgUE0sIFNhbSBSZWl0ZXIgd3JvdGU6DQpGb2xsb3cgdXAgb24gdGhpcyB0aHJlYWQuIEkgcmFu
IG15IE4zMTAgd2l0aCBhIDFHYkUgbGluayBhbmQgd2FzIGFibGUgdG8gcmVwcm9kdWNlIHRoZSAi
QmFkIENIRFIgb3IgcGFja2V0IGZyYWdtZW50IGlzc3VlIi4gSXQgc2VlbXMgc3BlY2lmaWMgdG8g
TjN4eCBSWCBvdmVyIGEgMUdiRSBsaW5rIG9uIDMuMTQuMS4wLiBJIGRpZG4ndCBzcGVuZCBhIHRv
biBvZiB0aW1lIHRyeWluZyB0byBmaW5kIGEgd29ya2Fyb3VuZCBvbiAzLjE0LjEuMCwgYnV0IHJv
bGxpbmcgYmFjayB0byAzLjE0LjAuMCBjbGVhcmVkIHRoZSBpc3N1ZSBmb3IgbWUuDQoNCkknbGwg
c3BlbmQgc29tZSB0aW1lIGZpbmRpbmcgdGhlIG9mZmVuZGluZyBjb21taXQgYW5kIHNlZSB3aGF0
IEkgY2FuJ3QgZG8gdG8gZ2V0IGEgZml4IC8gd29ya2Fyb3VuZCBmaWd1cmVkIG91dCBmb3IgMy4x
NC4xLjAuDQoNClNhbSBSZWl0ZXINClNEUiBTdXBwb3J0IEVuZ2luZWVyDQpFdHR1cyBSZXNlYXJj
aA0KDQpUaGFua3MsIFNhbS4gIFdoZW4gSSBnbyBpbnRvIHRoZSBsYWIgbGF0ZXIsIEkgY2FuIHBy
b2JhYmx5IGNvbmZpcm0gdGhpcyBhcyB3ZWxsLCBJIGhhdmVuJ3Qgc2VlbiBpdCBiZWZvcmUsIGJ1
dCBJIHRoaW5rIEknbSBydW5pbmcgMy4xNC4wLjANCg0KDQoNCk9uIFR1ZSwgSnVsIDIzLCAyMDE5
IGF0IDEwOjEzIFBNIE1hcmN1cyBEIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbTxtYWls
dG86cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+PiB3cm90ZToNCk5vcm1hbGx5IEludGVsIGNvbnRy
b2xsZXJzIGhhdmUgYmV0dGVyIHBlcmZvcm1hbmNlIGJ1dCBldmVuIGEgUmVhbFRlayBjaGlwIHNo
b3VsZCBoYXZlIG5vIHByb2JsZW0gYXQgdGhvc2UgZGF0YSByYXRlcy4NCg0KDQpTZW50IGZyb20g
bXkgaVBob25lDQoNCk9uIEp1bCAyMywgMjAxOSwgYXQgMTA6MDEgUE0sIMzAILfJIDxyZXRpbmE5
OTlAaG90bWFpbC5jb208bWFpbHRvOnJldGluYTk5OUBob3RtYWlsLmNvbT4+IHdyb3RlOg0KQWN0
dWFsbHkgbXkgcGOhr3MgRXRoZXJuZXQgY2FyZCBjaGlwIGlzIGZyb20gUmVhbHRlay4NCkmhr3Zl
IHRyaWVkIGFsbCBwb3NzaWJsZSBNVFUgc2l6ZXMgb2YgYXV0bywgMTAwMCwgMTUwMCwgMjAwMCwg
YW5kIHVwIHRvIDkwMDAuIEFsd2F5cyB0aGUgc2FtZSBlcnJvcnMuDQpJcyBpdCB0aGUgaW5oZXJl
bnQgcHJvYmxlbSB3aXRoIHRoZSBSZWFsdGVrIGNoaXA/DQpJZiB0aGF0LCBpcyB0aGVyZSBhbnkg
d29ya2Fyb3VuZD8gZWcuIENoYW5naW5nIHRoZSBkZWZhdWx0IExpbnV4IGRyaXZlciwNCm9yIHRo
ZSBsYXN0IHNvbHV0aW9uLCBpZS4gSSBoYXZlIHRvIHRyeSBpbnN0YWxsIGEgUENJRSBuZXR3b3Jr
IGNhcmQuIFdoaWNoIGJyYW5kIGV0aGVybmV0IGNhcmQgaXMgY29tcGF0aWJsZSwgb25lIGZyb20g
SW50ZWw/DQoNCg0Kt6K8/sjLOiBNYXJjdXMgRCBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5j
b208bWFpbHRvOnBhdGNodm9uYnJhdW5AZ21haWwuY29tPj4NCreiy83KsbzkOiBXZWRuZXNkYXks
IEp1bHkgMjQsIDIwMTkgNzozNDoxMyBBTQ0KytW8/sjLOiDMwCC3ySA8cmV0aW5hOTk5QGhvdG1h
aWwuY29tPG1haWx0bzpyZXRpbmE5OTlAaG90bWFpbC5jb20+Pg0Ks63LzTogU2FtIFJlaXRlciA8
c2FtLnJlaXRlckBldHR1cy5jb208bWFpbHRvOnNhbS5yZWl0ZXJAZXR0dXMuY29tPj47IHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4g
PHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4+DQrW98ziOiBSZTogW1VTUlAtdXNlcnNdILTwuLQ6IE4zMTAgIkJhZCBDSERSIG9yIHBh
Y2tldCBmcmFnbWVudCIgUHJvYmxlbQ0KDQpTb21lIEV0aGVybmV0IDFnIGNvbnRyb2xsZXJzIHdv
bqGvdCBhY3R1YWxseSBkbyBNVFVzIGdyZWF0ZXIgdGhhbiAxNTAwIGRlc3BpdGUgZXRobm9sb2d5
IHRlbGxpbmcgdGhlbSB0by4gU29tZSBSZWFsdGVrIGZvciBleGFtcGxlLg0KDQpJZiBpdKGvcyBq
dXN0IDFHIHRyeSBkZWZhdWx0IE1UVSBvZiAxNTAwIGFuZCB3b3JrIHlvdXIgd2F5IHVwIHRvIHNl
ZSB3aGVyZSBpdCBmYWlscy4NClNlbnQgZnJvbSBteSBpUGhvbmUNCg0KT24gSnVsIDIzLCAyMDE5
LCBhdCA3OjE1IFBNLCDMwCC3ySB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb208bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPj4gd3JvdGU6DQpJdKGvcyBh
ICAxZyBTRlAwIGxpbmsuIEkgc2V0IE1UVSAgdG8gODAwMCBhY2NvcmRpbmcgdG8gdGhlIEFwcGxp
Y2F0aW9uIE5vdGUuDQoNCg0Kt6IgvP7IyzogU2FtIFJlaXRlciA8c2FtLnJlaXRlckBldHR1cy5j
b208bWFpbHRvOnNhbS5yZWl0ZXJAZXR0dXMuY29tPj4NCreiy83KsbzkOiBXZWRuZXNkYXksIEp1
bHkgMjQsIDIwMTkgNDo1NjoyMSBBTQ0KytW8/sjLOiDMwCC3ySA8cmV0aW5hOTk5QGhvdG1haWwu
Y29tPG1haWx0bzpyZXRpbmE5OTlAaG90bWFpbC5jb20+Pg0Ks63LzTogdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb208bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiA8dXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb208bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPj4NCtb3
zOI6IFJlOiBbVVNSUC11c2Vyc10gTjMxMCAiQmFkIENIRFIgb3IgcGFja2V0IGZyYWdtZW50IiBQ
cm9ibGVtDQoNCklmIHlvdSdyZSBjb25uZWN0ZWQgb3ZlciBhIDEwR2JFIGxpbmssIG1ha2Ugc3Vy
ZSB0byBzZXQgeW91ciBob3N0J3MgTVRVIGFwcHJvcHJpYXRlbHkuIEkgc2V0IG1pbmUgdG8gOTAw
MC4NCg0KU2FtIFJlaXRlcg0KU0RSIFN1cHBvcnQgRW5naW5lZXINCkV0dHVzIFJlc2VhcmNoDQoN
Cg0KT24gRnJpLCBKdWwgMTksIDIwMTkgYXQgMjoyMSBBTSDMwCC3ySB2aWEgVVNSUC11c2VycyA8
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPj4gd3JvdGU6DQoNCkhpLCBhbGwsDQoNCg0KDQpXaGVuIGJlbmNobWFya2luZyBteSBOMzEw
LCBJIGtlZXAgZ2V0dGluZyBzdWNoIFtSWCBGTE9XIENUUkxdIGVycm9ycy4NCg0KV2hhdCBjYXVz
ZXMgdGhpcyBhbmQgaG93IHRvIHNvbHZlIGl0Pw0KDQoNCg0KVGhhbmtzIGluIGFkdmFuY2UhDQoN
Cg0KDQpGVA0KDQoNCg0KDQoNCi91c3IvbG9jYWwvbGliL3VoZC9leGFtcGxlcy9iZW5jaG1hcmtf
cmF0ZSAgXA0KDQo+ICAgIC0tYXJncyAidHlwZT1uM3h4LG1nbXRfYWRkcj0xOTIuMTY4LjEwLjIs
YWRkcj0xOTIuMTY4LjEwLjIsbWFzdGVyX2Nsb2NrX3JhdGU9MTIyLjg4ZTYiIFwNCg0KPiAgICAt
LWR1cmF0aW9uIDYwIFwNCg0KPiAgICAtLWNoYW5uZWxzICIwIiBcDQoNCj4gICAgLS1yeF9yYXRl
IDMuODRlNiBcDQoNCj4gICAgLS1yeF9zdWJkZXYgIkE6MCIgXA0KDQo+ICAgIC0tdHhfcmF0ZSAz
Ljg0ZTYgXA0KDQo+ICAgIC0tdHhfc3ViZGV2ICJBOjAiDQoNCg0KDQpbSU5GT10gW1VIRF0gbGlu
dXg7IEdOVSBDKysgdmVyc2lvbiA3LjQuMDsgQm9vc3RfMTA2NTAxOyBVSERfMy4xNC4xLkhFQUQt
MC1nYmZiOWMxYzcNCg0KWzAwOjAwOjAwLjAwMDAxNF0gQ3JlYXRpbmcgdGhlIHVzcnAgZGV2aWNl
IHdpdGg6IHR5cGU9bjN4eCxtZ210X2FkZHI9MTkyLjE2OC4xMC4yLGFkZHI9MTkyLjE2OC4xMC4y
LG1hc3Rlcl9jbG9ja19yYXRlPTEyMi44OGU2Li4uDQoNCltJTkZPXSBbTVBNRF0gSW5pdGlhbGl6
aW5nIDEgZGV2aWNlKHMpIGluIHBhcmFsbGVsIHdpdGggYXJnczogbWdtdF9hZGRyPTE5Mi4xNjgu
MTAuMix0eXBlPW4zeHgscHJvZHVjdD1uMzEwLHNlcmlhbD0zMTgyQjA5LGNsYWltZWQ9RmFsc2Us
YWRkcj0xOTIuMTY4LjEwLjIsbWFzdGVyX2Nsb2NrX3JhdGU9MTIyLjg4ZTYNCg0KW0lORk9dIFtN
UE0uUGVyaXBoTWFuYWdlcl0gaW5pdCgpIGNhbGxlZCB3aXRoIGRldmljZSBhcmdzIGBtYXN0ZXJf
Y2xvY2tfcmF0ZT0xMjIuODhlNix0aW1lX3NvdXJjZT1pbnRlcm5hbCxjbG9ja19zb3VyY2U9aW50
ZXJuYWwsbWdtdF9hZGRyPTE5Mi4xNjguMTAuMixwcm9kdWN0PW4zMTAnLg0KDQpbSU5GT10gWzAv
UmVwbGF5XzBdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4NEU5MUEwMDAw
MDAwMDAwNCkNCg0KW0lORk9dIFswL1JhZGlvXzBdIEluaXRpYWxpemluZyBibG9jayBjb250cm9s
IChOT0MgSUQ6IDB4MTJBRDEwMDAwMDAxMTMxMikNCg0KW0lORk9dIFswL1JhZGlvXzFdIEluaXRp
YWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4MTJBRDEwMDAwMDAxMTMxMikNCg0KW0lO
Rk9dIFswL0REQ18wXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweEREQzAw
MDAwMDAwMDAwMDApDQoNCltJTkZPXSBbMC9ERENfMV0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRy
b2wgKE5PQyBJRDogMHhEREMwMDAwMDAwMDAwMDAwKQ0KDQpbSU5GT10gWzAvRFVDXzBdIEluaXRp
YWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4RDBDMDAwMDAwMDAwMDAwMikNCg0KW0lO
Rk9dIFswL0RVQ18xXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweEQwQzAw
MDAwMDAwMDAwMDIpDQoNCltJTkZPXSBbMC9GSUZPXzBdIEluaXRpYWxpemluZyBibG9jayBjb250
cm9sIChOT0MgSUQ6IDB4RjFGMDAwMDAwMDAwMDAwMCkNCg0KW0lORk9dIFswL0ZJRk9fMV0gSW5p
dGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhGMUYwMDAwMDAwMDAwMDAwKQ0KDQpb
SU5GT10gWzAvRklGT18yXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweEYx
RjAwMDAwMDAwMDAwMDApDQoNCltJTkZPXSBbMC9GSUZPXzNdIEluaXRpYWxpemluZyBibG9jayBj
b250cm9sIChOT0MgSUQ6IDB4RjFGMDAwMDAwMDAwMDAwMCkNCg0KVXNpbmcgRGV2aWNlOiBTaW5n
bGUgVVNSUDoNCg0KICBEZXZpY2U6IE4zMDAtU2VyaWVzIERldmljZQ0KDQogIE1ib2FyZCAwOiBu
aS1uM3h4LTMxODJCMDkNCg0KICBSWCBDaGFubmVsOiAwDQoNCiAgICBSWCBEU1A6IDANCg0KICAg
IFJYIERib2FyZDogQQ0KDQogICAgUlggU3ViZGV2OiBNYWduZXNpdW0NCg0KICBUWCBDaGFubmVs
OiAwDQoNCiAgICBUWCBEU1A6IDANCg0KICAgIFRYIERib2FyZDogQQ0KDQogICAgVFggU3ViZGV2
OiBNYWduZXNpdW0NCg0KDQoNClswMDowMDoxNy4zNTMxODRdIFNldHRpbmcgZGV2aWNlIHRpbWVz
dGFtcCB0byAwLi4uDQoNClswMDowMDoxNy40MTIxODddIFRlc3RpbmcgcmVjZWl2ZSByYXRlIDMu
ODQwMDAwIE1zcHMgb24gMSBjaGFubmVscw0KDQpbMDA6MDA6MTcuNDE0MTY0XSBSZWNlaXZlciBl
cnJvcjogRVJST1JfQ09ERV9CQURfUEFDS0VUDQoNCltbRVJST1JdIFtSWCBGTE9XIENUUkxdIEVy
cm9yIHVucGFja2luZyBwYWNrZXQ6IFZhbHVlRXJyb3I6IEJhZCBDSERSIG9yIHBhY2tldCBmcmFn
bWVudA0KDQoNCg0KW0VSUk9SXSBbU1RSRUFNRVJdIFRoZSByZWNlaXZlIHBhY2tldCBoYW5kbGVy
IGNhdWdodCBhIHZhbHVlIGV4Y2VwdGlvbi4NCg0KVmFsdWVFcnJvcjogQmFkIENIRFIgb3IgcGFj
a2V0IGZyYWdtZW50DQoNCjAwOjAwOjE3LjQxNDE4MF0gVW5leHBlY3RlZCBlcnJvciBvbiByZWN2
LCBjb250aW51aW5nLi4uDQoNClswMDowMDoxNy41MTQyNThdIFJlY2VpdmVyIGVycm9yOiBFUlJP
Ul9DT0RFX1RJTUVPVVQsIGNvbnRpbnVpbmcuLi4NCg0KWzAwOjAwOjE3LjUxNDMxMl0gUmVjZWl2
ZXIgZXJyb3I6IEVSUk9SX0NPREVfQkFEX1BBQ0tFVA0KDQpbMDA6MDA6MTcuNTE0MzE3XSBVbmV4
cGVjdGVkIGVycm9yIG9uIHJlY3YsIGNvbnRpbnVpbmcuLi4NCg0KW0VSUk9SXSBbUlggRkxPVyBD
VFJMXSBFcnJvciB1bnBhY2tpbmcgcGFja2V0OiBWYWx1ZUVycm9yOiBCYWQgQ0hEUiBvciBwYWNr
ZXQgZnJhZ21lbnQNCg0KDQoNCltFUlJPUl0gW1NUUkVBTUVSXSBUaGUgcmVjZWl2ZSBwYWNrZXQg
aGFuZGxlciBjYXVnaHQgYSB2YWx1ZSBleGNlcHRpb24uDQoNClZhbHVlRXJyb3I6IEJhZCBDSERS
IG9yIHBhY2tldCBmcmFnbWVudA0KDQpbMDA6MDA6MTcuNTMyOTkxXSBUZXN0aW5nIHRyYW5zbWl0
IHJhdGUgMy44NDAwMDAgTXNwcyBvbiAxIGNoYW5uZWxzDQoNClswMDowMDoxNy42MTQzMjldIFJl
Y2VpdmVyIGVycm9yOiBFUlJPUl9DT0RFX1RJTUVPVVQsIGNvbnRpbnVpbmcuLi4NCg0KWzAwOjAw
OjE3LjYxNDM3Ml0gUmVjZWl2ZXIgZXJyb3I6IEVSUk9SX0NPREVfQkFEX1BBQ0tFVA0KDQpbMDA6
MDA6MTcuNjE0Mzc3XSBVbmV4cGVjdGVkIGVycm9yIG9uIHJlY3YsIGNvbnRpbnVpbmcuLi4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdA0KVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208bWFpbHRvOlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPg0KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QNClVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCmh0
dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0
dHVzLmNvbQ0KDQoNCg==

--_000_HK0PR01MB283554F9A218C1B013C40C47F3C30HK0PR01MB2835apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Actually I have tried 1500, sam=
e errors. Is there a way to use PyBOMBS to create the RFNOC environment wit=
h a specified UHD version(3.14.0.0) instead of the default latest version (=
3.15)?</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:SimSun"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-top:solid #E1E=
1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><b>=B7=A2=BC=FE=C8=
=CB<span lang=3D"EN-US">: </span>
</b><span lang=3D"EN-US"><a href=3D"mailto:patchvonbraun@gmail.com">Marcus =
D Leech</a><br>
</span><b>=B7=A2=CB=CD=CA=B1=BC=E4<span lang=3D"EN-US">: </span></b><span l=
ang=3D"EN-US">2019</span>=C4=EA<span lang=3D"EN-US">7</span>=D4=C2<span lan=
g=3D"EN-US">28</span>=C8=D5<span lang=3D"EN-US"> 3:02<br>
</span><b>=CA=D5=BC=FE=C8=CB<span lang=3D"EN-US">: </span></b><span lang=3D=
"EN-US"><a href=3D"mailto:retina999@hotmail.com"><span lang=3D"EN-US"><span=
 lang=3D"EN-US">=CC=C0</span></span><span lang=3D"EN-US"><span lang=3D"EN-U=
S">
</span></span><span lang=3D"EN-US"><span lang=3D"EN-US">=B7=C9</span></span=
></a><br>
</span><b>=B3=AD=CB=CD<span lang=3D"EN-US">: </span></b><span lang=3D"EN-US=
"><a href=3D"mailto:sam.reiter@ettus.com">Sam Reiter</a>;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
><br>
</span><b>=D6=F7=CC=E2<span lang=3D"EN-US">: </span></b><span lang=3D"EN-US=
">Re: </span>=B4=F0=B8=B4<span lang=3D"EN-US">: [USRP-users]
</span>=B4=F0=B8=B4<span lang=3D"EN-US">: N310 &quot;Bad CHDR or packet fra=
gment&quot; Problem</span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:SimSun"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US">Try adjusting the MTU as well to 1500.
</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></=
p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
<o:p>&nbsp;</o:p></span></p>
<div id=3D"AppleMailSignature">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sent from my iPhone</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
<br>
On Jul 26, 2019, at 9:36 PM, </span>=CC=C0 =B7=C9<span lang=3D"EN-US"> &lt;=
<a href=3D"mailto:retina999@hotmail.com">retina999@hotmail.com</a>&gt; wrot=
e:<o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<pre><span lang=3D"EN-US">FYI</span></pre>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US">ifconfig</span></pre>
<pre><span lang=3D"EN-US">enp2s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULT=
ICAST&gt;&nbsp; mtu 8000</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet 1=
92.168.10.1&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.10.255</spa=
n></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet6 =
fe80::96c6:91ff:febd:e8bb&nbsp; prefixlen 64&nbsp; scopeid 0x20&lt;link&gt;=
</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ether =
94:c6:91:bd:e8:bb&nbsp; txqueuelen 1000&nbsp; (Ethernet)</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;RX pac=
kets 3352&nbsp; bytes 2274650 (2.2 MB)</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX err=
ors 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; frame 0</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX pac=
kets 2926&nbsp; bytes 246527 (246.5 KB)</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX err=
ors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</span><=
/pre>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US">lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;&nbsp; m=
tu 65536</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet 1=
27.0.0.1&nbsp; netmask 255.0.0.0</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet6 =
::1&nbsp; prefixlen 128&nbsp; scopeid 0x10&lt;host&gt;</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; loop&n=
bsp; txqueuelen 1000&nbsp; (Local Loopback)</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX pac=
kets 369&nbsp; bytes 29489 (29.4 KB)</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX err=
ors 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; frame 0</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX pac=
kets 369&nbsp; bytes 29489 (29.4 KB)</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX err=
ors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</span><=
/pre>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US">wlx3c46d8d7c86c: flags=3D4163&lt;UP,BROADCAST,RUN=
NING,MULTICAST&gt;&nbsp; mtu 1500</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet 1=
92.168.0.208&nbsp; netmask 255.255.254.0&nbsp; broadcast 192.168.1.255</spa=
n></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet6 =
fe80::b8b3:bda6:dd2a:206f&nbsp; prefixlen 64&nbsp; scopeid 0x20&lt;link&gt;=
</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ether =
3c:46:d8:d7:c8:6c&nbsp; txqueuelen 1000&nbsp; (Ethernet)</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX pac=
kets 1043&nbsp; bytes 822132 (822.1 KB)</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX err=
ors 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; frame 0</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX pac=
kets 873&nbsp; bytes 119925 (119.9 KB)</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX err=
ors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</span><=
/pre>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On 2019/7/27 </span>=C9=CF=CE=
=E7<span lang=3D"EN-US">1:17, Sam Reiter wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Can you post the output of <b>i=
fconfig</b> on your system?</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sam Reiter&nbsp; </span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SDR Support Engineer</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ettus Research</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On Thu, Jul 25, 2019 at 7:40 PM=
 </span>=CC=C0 =B7=C9
<span lang=3D"EN-US">&lt;<a href=3D"mailto:retina999@hotmail.com">retina999=
@hotmail.com</a>&gt; wrote:</span></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<p><span lang=3D"EN-US">Thanks!</span></p>
<p><span lang=3D"EN-US">I am learning to use RFNOC to integrate a baseband.=
 So I used PyBOMBS to create the environment.&nbsp; The automatically insta=
lled UHD version is as follows</span></p>
<p><span lang=3D"EN-US">uhd_find_devices<br>
[INFO] [UHD] linux; GNU C&#43;&#43; version 7.4.0; Boost_106501; UHD_3.15.0=
.git-19-g7e1b567d<br>
--------------------------------------------------<br>
-- UHD Device 0<br>
--------------------------------------------------<br>
Device Address:<br>
&nbsp;&nbsp;&nbsp; serial: 3182B09<br>
&nbsp;&nbsp;&nbsp; addr: 192.168.10.2<br>
&nbsp;&nbsp;&nbsp; claimed: False<br>
&nbsp;&nbsp;&nbsp; mgmt_addr: 192.168.1.151<br>
&nbsp;&nbsp;&nbsp; mgmt_addr: 192.168.10.2<br>
&nbsp;&nbsp;&nbsp; product: n310<br>
&nbsp;&nbsp;&nbsp; type: n3xx</span></p>
<p><span lang=3D"EN-US">But how to add&nbsp; to the device arguments?&nbsp;=
 I tried like this but not working</span></p>
<p style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">/usr/local/lib/uhd/e=
xamples/rx_ascii_art_dft --args &quot;master_clock_rate=3D125e6,mgmt_addr=
=3D192.168.1.151<span style=3D"color:red">,recv_frame_size=3D1476,</span>ad=
dr=3D192.168.10.2&quot; --freq 98.5e6 --rate 2.5e6 --gain
 50 --ref-lvl=3D&quot;-50&quot; --dyn-rng 90 --ant &quot;RX2&quot; --subdev=
 &quot;A:0&quot;</span></p>
<p><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On 2019/7/26 </span>=C9=CF=CE=
=E7<span lang=3D"EN-US">5:17, Sam Reiter wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Found the offending commit and =
reported the issue. It also looks like adding
<b>recv_frame_size=3D1476</b> explicitly to the device arguments cleared th=
ings up on my N310 running 3.14.1.0. Let me know if this does / doesn't wor=
k for anyone.</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sam Reiter&nbsp; </span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SDR Support Engineer</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ettus Research</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On Thu, Jul 25, 2019 at 3:04 PM=
 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_=
blank">patchvonbraun@gmail.com</a>&gt; wrote:</span></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On 07/25/2019 03:56 PM, Sam Rei=
ter wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Follow up on this thread. I ran=
 my N310 with a 1GbE link and was able to reproduce the &quot;Bad CHDR or p=
acket fragment issue&quot;. It seems specific to N3xx RX over a 1GbE link o=
n 3.14.1.0. I didn't spend a ton of time trying
 to find a workaround on 3.14.1.0, but rolling back to 3.14.0.0 cleared the=
 issue for me.
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I'll spend some time finding th=
e offending commit and see what I can't do to get a fix / workaround figure=
d out for 3.14.1.0.</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sam Reiter&nbsp; </span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SDR Support Engineer</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ettus Research</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</blockquote>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks, Sam.&nbsp; When I go in=
to the lab later, I can probably confirm this as well, I haven't seen it be=
fore, but I think I'm runing 3.14.0.0<br>
<br>
<br>
<br>
</span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On Tue, Jul 23, 2019 at 10:13 P=
M Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_=
blank">patchvonbraun@gmail.com</a>&gt; wrote:</span></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Normally Intel controllers have=
 better performance but even a RealTek chip should have no problem at those=
 data rates.&nbsp;
</span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
<o:p>&nbsp;</o:p></span></p>
<div id=3D"gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-1=
782705882285278276AppleMailSignature">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sent from my iPhone</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
<br>
On Jul 23, 2019, at 10:01 PM, </span>=CC=C0 =B7=C9 <span lang=3D"EN-US">&lt=
;<a href=3D"mailto:retina999@hotmail.com" target=3D"_blank">retina999@hotma=
il.com</a>&gt; wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Actually my pc=A1=AFs Ethernet card chip is f=
rom Realtek.
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">I=A1=AFve tried all possible MTU sizes of aut=
o, 1000, 1500, 2000, and up to 9000. Always the same errors.
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Is it the inherent problem with the Realtek c=
hip?
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">If that, is there any workaround? eg. Changin=
g the default Linux driver,
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">or the last solution, ie. I have to try insta=
ll a PCIE network card. Which brand ethernet card is compatible, one from I=
ntel?</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><img border=3D"0" width=3D"1" h=
eight=3D"2" style=3D"width:.0059in;height:.0178in" id=3D"Horizontal_x0020_L=
ine_x0020_1" src=3D"cid:image001.png@01D5451A.C67DD820"></span></p>
<div id=3D"gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-1=
782705882285278276divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;color:black">=B7=
=A2=BC=FE=C8=CB</span></b><b><span lang=3D"EN-US" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:black">:</span></b><span =
lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:black">
 Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_b=
lank">patchvonbraun@gmail.com</a>&gt;<br>
</span><b><span style=3D"font-size:11.0pt;color:black">=B7=A2=CB=CD=CA=B1=
=BC=E4</span></b><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,sans-serif;color:black">:</span></b><span lang=3D"E=
N-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black">
 Wednesday, July 24, 2019 7:34:13 AM<br>
</span><b><span style=3D"font-size:11.0pt;color:black">=CA=D5=BC=FE=C8=CB</=
span></b><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:black">:</span></b><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:bl=
ack">
</span><span style=3D"font-size:11.0pt;color:black">=CC=C0</span><span styl=
e=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k">
</span><span style=3D"font-size:11.0pt;color:black">=B7=C9</span><span styl=
e=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k">
<span lang=3D"EN-US">&lt;<a href=3D"mailto:retina999@hotmail.com" target=3D=
"_blank">retina999@hotmail.com</a>&gt;<br>
</span></span><b><span style=3D"font-size:11.0pt;color:black">=B3=AD=CB=CD<=
/span></b><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black">:</span></b><span lang=3D"EN-US" s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:b=
lack">
 Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">s=
am.reiter@ettus.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
</span><b><span style=3D"font-size:11.0pt;color:black">=D6=F7=CC=E2</span><=
/b><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:black">:</span></b><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">
 Re: [USRP-users] </span><span style=3D"font-size:11.0pt;color:black">=B4=
=F0=B8=B4</span><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:black">: N310 &quot;Bad CHDR or packet=
 fragment&quot; Problem</span><span lang=3D"EN-US">
</span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Some Ethernet 1g controllers wo=
n=A1=AFt actually do MTUs greater than 1500 despite ethnology telling them =
to. Some Realtek for example.&nbsp;
</span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
If it=A1=AFs just 1G try default MTU of 1500 and work your way up to see wh=
ere it fails.&nbsp;</span></p>
<div id=3D"gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-1=
782705882285278276AppleMailSignature">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sent from my iPhone</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
<br>
On Jul 23, 2019, at 7:15 PM, </span>=CC=C0 =B7=C9<span lang=3D"EN-US"> via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>&gt; wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">It=A1=AFs a&nbsp; 1g SFP0 link. I set MTU&nbs=
p; to 8000 according to the Application Note.
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><img border=3D"0" width=3D"1" h=
eight=3D"2" style=3D"width:.0059in;height:.0178in" id=3D"Horizontal_x0020_L=
ine_x0020_2" src=3D"cid:image001.png@01D5451A.C67DD820"></span></p>
<div id=3D"gmail-m_4960003340379191278gmail-m_4583629004326719419gmail-m_-1=
782705882285278276divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;color:black">=B7=
=A2</span></b><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&=
quot;,sans-serif;color:black">
</span></b><b><span style=3D"font-size:11.0pt;color:black">=BC=FE=C8=CB</sp=
an></b><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:black">:</span></b><span lang=3D"EN-US" styl=
e=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k">
 Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">s=
am.reiter@ettus.com</a>&gt;<br>
</span><b><span style=3D"font-size:11.0pt;color:black">=B7=A2=CB=CD=CA=B1=
=BC=E4</span></b><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,sans-serif;color:black">:</span></b><span lang=3D"E=
N-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black">
 Wednesday, July 24, 2019 4:56:21 AM<br>
</span><b><span style=3D"font-size:11.0pt;color:black">=CA=D5=BC=FE=C8=CB</=
span></b><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:black">:</span></b><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:bl=
ack">
</span><span style=3D"font-size:11.0pt;color:black">=CC=C0</span><span styl=
e=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k">
</span><span style=3D"font-size:11.0pt;color:black">=B7=C9</span><span styl=
e=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k">
<span lang=3D"EN-US">&lt;<a href=3D"mailto:retina999@hotmail.com" target=3D=
"_blank">retina999@hotmail.com</a>&gt;<br>
</span></span><b><span style=3D"font-size:11.0pt;color:black">=B3=AD=CB=CD<=
/span></b><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:black">:</span></b><span lang=3D"EN-US" s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:b=
lack">
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
</span><b><span style=3D"font-size:11.0pt;color:black">=D6=F7=CC=E2</span><=
/b><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:black">:</span></b><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">
 Re: [USRP-users] N310 &quot;Bad CHDR or packet fragment&quot; Problem</spa=
n><span lang=3D"EN-US">
</span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If you're connected over a 10Gb=
E link, make sure to set your host's MTU appropriately. I set mine to 9000.
</span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br clear=3D"all">
</span></p>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sam Reiter&nbsp; </span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SDR Support Engineer</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ettus Research</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On Fri, Jul 19, 2019 at 2:21 AM=
 </span>=CC=C0 =B7=C9<span lang=3D"EN-US"> via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt; wrote:</span></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<pre><span lang=3D"EN-US">Hi, all,</span></pre>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US">When benchmarking my N310, I keep getting such <s=
pan style=3D"color:#CC0000">[RX FLOW CTRL]</span> errors. </span></pre>
<pre><span lang=3D"EN-US">What causes this and how to solve it?</span></pre=
>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US">Thanks in advance!</span></pre>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US">FT</span></pre>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US">/usr/local/lib/uhd/examples/benchmark_rate&nbsp; =
\</span></pre>
<pre><span lang=3D"EN-US">&gt;&nbsp;&nbsp;&nbsp; --args &quot;type=3Dn3xx,m=
gmt_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6&qu=
ot; \</span></pre>
<pre><span lang=3D"EN-US">&gt;&nbsp;&nbsp;&nbsp; --duration 60 \</span></pr=
e>
<pre><span lang=3D"EN-US">&gt;&nbsp;&nbsp;&nbsp; --channels &quot;0&quot; \=
</span></pre>
<pre><span lang=3D"EN-US">&gt;&nbsp;&nbsp;&nbsp; --rx_rate 3.84e6 \</span><=
/pre>
<pre><span lang=3D"EN-US">&gt;&nbsp;&nbsp;&nbsp; --rx_subdev &quot;A:0&quot=
; \</span></pre>
<pre><span lang=3D"EN-US">&gt;&nbsp;&nbsp;&nbsp; --tx_rate 3.84e6 \</span><=
/pre>
<pre><span lang=3D"EN-US">&gt;&nbsp;&nbsp;&nbsp; --tx_subdev &quot;A:0&quot=
;</span></pre>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [UHD] </span><span=
 lang=3D"EN-US">linux; GNU C&#43;&#43; version 7.4.0; Boost_106501; UHD_3.1=
4.1.HEAD-0-gbfb9c1c7</span></pre>
<pre><span lang=3D"EN-US">[00:00:00.000014] Creating the usrp device with: =
type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_rate=
=3D122.88e6...</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [MPMD] </span><spa=
n lang=3D"EN-US">Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3182B09,claimed=3DFalse=
,addr=3D192.168.10.2,master_clock_rate=3D122.88e6</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [MPM.PeriphManager=
] </span><span lang=3D"EN-US">init() called with device args `master_clock_=
rate=3D122.88e6,time_source=3Dinternal,clock_source=3Dinternal,mgmt_addr=3D=
192.168.10.2,product=3Dn310'.</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [0/Replay_0] </spa=
n><span lang=3D"EN-US">Initializing block control (NOC ID: 0x4E91A000000000=
04)</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [0/Radio_0] </span=
><span lang=3D"EN-US">Initializing block control (NOC ID: 0x12AD10000001131=
2)</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [0/Radio_1] </span=
><span lang=3D"EN-US">Initializing block control (NOC ID: 0x12AD10000001131=
2)</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [0/DDC_0] </span><=
span lang=3D"EN-US">Initializing block control (NOC ID: 0xDDC0000000000000)=
</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [0/DDC_1] </span><=
span lang=3D"EN-US">Initializing block control (NOC ID: 0xDDC0000000000000)=
</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [0/DUC_0] </span><=
span lang=3D"EN-US">Initializing block control (NOC ID: 0xD0C0000000000002)=
</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [0/DUC_1] </span><=
span lang=3D"EN-US">Initializing block control (NOC ID: 0xD0C0000000000002)=
</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [0/FIFO_0] </span>=
<span lang=3D"EN-US">Initializing block control (NOC ID: 0xF1F0000000000000=
)</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [0/FIFO_1] </span>=
<span lang=3D"EN-US">Initializing block control (NOC ID: 0xF1F0000000000000=
)</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [0/FIFO_2] </span>=
<span lang=3D"EN-US">Initializing block control (NOC ID: 0xF1F0000000000000=
)</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#4E9A06">[INFO] [0/FIFO_3] </span>=
<span lang=3D"EN-US">Initializing block control (NOC ID: 0xF1F0000000000000=
)</span></pre>
<pre><span lang=3D"EN-US">Using Device: Single USRP:</span></pre>
<pre><span lang=3D"EN-US">&nbsp; Device: N300-Series Device</span></pre>
<pre><span lang=3D"EN-US">&nbsp; Mboard 0: ni-n3xx-3182B09</span></pre>
<pre><span lang=3D"EN-US">&nbsp; RX Channel: 0</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; RX DSP: 0</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; RX Dboard: A</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; RX Subdev: Magnesium</span></p=
re>
<pre><span lang=3D"EN-US">&nbsp; TX Channel: 0</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; TX DSP: 0</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; TX Dboard: A</span></pre>
<pre><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; TX Subdev: Magnesium</span></p=
re>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US">[00:00:17.353184] Setting device timestamp to 0..=
.</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.412187] Testing receive rate 3.840000 M=
sps on 1 channels</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.414164] Receiver error: ERROR_CODE_BAD_=
PACKET</span></pre>
<pre><span lang=3D"EN-US">[<span style=3D"color:#CC0000">[ERROR] [RX FLOW C=
TRL] </span>Error unpacking packet: ValueError: Bad CHDR or packet fragment=
</span></pre>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#CC0000">[ERROR] [STREAMER] </span=
><span lang=3D"EN-US">The receive packet handler caught a value exception.<=
/span></pre>
<pre><span lang=3D"EN-US">ValueError: Bad CHDR or packet fragment</span></p=
re>
<pre><span lang=3D"EN-US">00:00:17.414180] Unexpected error on recv, contin=
uing...</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.514258] Receiver error: ERROR_CODE_TIME=
OUT, continuing...</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.514312] Receiver error: ERROR_CODE_BAD_=
PACKET</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.514317] Unexpected error on recv, conti=
nuing...</span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#CC0000">[ERROR] [RX FLOW CTRL] </=
span><span lang=3D"EN-US">Error unpacking packet: ValueError: Bad CHDR or p=
acket fragment</span></pre>
<pre><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"color:#CC0000">[ERROR] [STREAMER] </span=
><span lang=3D"EN-US">The receive packet handler caught a value exception.<=
/span></pre>
<pre><span lang=3D"EN-US">ValueError: Bad CHDR or packet fragment</span></p=
re>
<pre><span lang=3D"EN-US">[00:00:17.532991] Testing transmit rate 3.840000 =
Msps on 1 channels</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.614329] Receiver error: ERROR_CODE_TIME=
OUT, continuing...</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.614372] Receiver error: ERROR_CODE_BAD_=
PACKET</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.614377] Unexpected error on recv, conti=
nuing...</span></pre>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">_______________________________=
________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><o:p></o:p></span></p>
</blockquote>
</div>
</div>
</div>
</blockquote>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">_______________________________=
________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a></span></p>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:0cm;margin-right:108.0pt=
;margin-bottom:5.0pt;margin-left:117.6pt">
<span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:SimSun"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_HK0PR01MB283554F9A218C1B013C40C47F3C30HK0PR01MB2835apcp_--

--_004_HK0PR01MB283554F9A218C1B013C40C47F3C30HK0PR01MB2835apcp_
Content-Type: image/png; name="D26A7EC27A3D4AFEAEC9858300614E49.png"
Content-Description: D26A7EC27A3D4AFEAEC9858300614E49.png
Content-Disposition: inline;
	filename="D26A7EC27A3D4AFEAEC9858300614E49.png"; size=124;
	creation-date="Sun, 28 Jul 2019 00:02:18 GMT";
	modification-date="Sun, 28 Jul 2019 00:02:18 GMT"
Content-ID: <image001.png@01D5451A.C67DD820>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAAEAAAADCAYAAABS3WWCAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAARSURBVBhXY9h/9vZ/GHH7PwBLUQozodQElgAA
AABJRU5ErkJggg==

--_004_HK0PR01MB283554F9A218C1B013C40C47F3C30HK0PR01MB2835apcp_--


--===============7059675470729958333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7059675470729958333==--

