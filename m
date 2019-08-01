Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B16337DA93
	for <lists+usrp-users@lfdr.de>; Thu,  1 Aug 2019 13:50:40 +0200 (CEST)
Received: from [::1] (port=52328 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ht9bQ-0001SD-Pz; Thu, 01 Aug 2019 07:50:36 -0400
Received: from mail-oln040092255037.outbound.protection.outlook.com
 ([40.92.255.37]:38464 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <retina999@hotmail.com>)
 id 1ht9bM-0001LX-Ie
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 07:50:33 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=karwPIWJ5sbaJ9mLHHFoc0Ykd0kGQaSP5zUpiSjBDw2Zyeqs5RmvphdHkzgkykYSUevZywDFnEFuTlVyIhIL/2m0iHEvfFn6CRJkTv9aN9drESMnhIPYWW2shMnNAB7OTQMXJqbQFIjQnolII0Pj7LWsB7UdMUBbWteR6T/eg053C+2aciMDJk99rH0MfnPBuTZIG7ImpPsejx+lt5vGjCSw//WK/H/RsqLCrLnH87b1bYTAcL2bYmp7+j9nrwwPfrZ9SFdiq/8XsWMrtH5yIebbiGDKbLnDlfxagsRWny5Bse4XgeKHM/j2VyhWicJSftUGuvOLJCEgXJ/jKcFelg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kHo7Qyhu3jmGRXrhaYOBSRHFCzLWhcK0xXRrMzBmpVw=;
 b=GktMd7zztXZ5zTH25NjCU2zHOOeU2s0izszm7H7eqvGS9/+xsuEp9cWWCPsUSDULzJapE8YuYiFbZJUxUVb8DMIlVDupZ2z1laDQzAMbF1kQFnW9NFvb5EMKTO6Y6Ywi+A/rW8a/j9X+vSbncqO93+4HqyTfPxwIr0IGDuPTByl8g8iNPSMDiXafC67vg/vzndWlVtvb6RD78/2Mf+2170rnq/MjmsI3qk/xpjY80+N6jtqIeZ1fhUVgADtq8adbEZzOT2hlPKQAtMASRo4IPOD1B9eBRZZ7CU4FWZXXajU75xvuEyopy/L4ef8Kdziaud2VMgXuBrVui8kDP//kZw==
ARC-Authentication-Results: i=1; mx.microsoft.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kHo7Qyhu3jmGRXrhaYOBSRHFCzLWhcK0xXRrMzBmpVw=;
 b=uQSB2yuYB1L1BBxWgIa+8cTfOEYoRkkcMX4YZfMmqOkPl4P8/zHwJ0SK+eQUon1mTiki9/7+U3hf5HKrIk9jl7USwjMkqQaWiv9nEPnW/f/P9OZPYSRPNtCeWtNLceYbOZyuy8ljUq3xCwA/7p0ppqwNkPjtLgMjQbw/ukGriRY7rcq9ZTcRNgwlDIRVclcRdmn6UsanmzvA8wudeujvkED0BxoKwaLVURhujb487VGp0N9+D/+uqmV1bWNfapeGn7OMAADxx1WWXcGcRprrALDwNhDMlxn6tTVIaRYCBZ6iaMHVIVHMEnU79so629mDf9w+gX9OVLOynQy6BYA3bg==
Received: from SG2APC01FT054.eop-APC01.prod.protection.outlook.com
 (10.152.250.59) by SG2APC01HT014.eop-APC01.prod.protection.outlook.com
 (10.152.250.208) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.14; Thu, 1 Aug
 2019 11:49:49 +0000
Received: from HK0PR01MB2835.apcprd01.prod.exchangelabs.com (10.152.250.54) by
 SG2APC01FT054.mail.protection.outlook.com (10.152.250.246) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14 via Frontend Transport; Thu, 1 Aug 2019 11:49:49 +0000
Received: from HK0PR01MB2835.apcprd01.prod.exchangelabs.com
 ([fe80::e41a:f703:68f5:d689]) by HK0PR01MB2835.apcprd01.prod.exchangelabs.com
 ([fe80::e41a:f703:68f5:d689%4]) with mapi id 15.20.2115.005; Thu, 1 Aug 2019
 11:49:49 +0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] N310 RFNOC tutorial block "gain" not found in
 synthesis
Thread-Index: AQHVRy6Ypp9z/GCdcU2sWfopXWwGCabmKS8AgAAATN0=
Date: Thu, 1 Aug 2019 11:49:48 +0000
Message-ID: <HK0PR01MB283555AB342AB9EC6211DD0AF3DE0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
References: <HK0PR01MB2835299393DCA6F18EB1B726F3DC0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>,
 <CAL7q81tqdPZkBqB9OidjaUZz34nUm7kAukeoZPo6ERCRpL-mNw@mail.gmail.com>
In-Reply-To: <CAL7q81tqdPZkBqB9OidjaUZz34nUm7kAukeoZPo6ERCRpL-mNw@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:E4ACC215DA7A2FD4EF86A77A62F86D6EAB3B598EACBE355AB6E13382B421F6BB;
 UpperCasedChecksum:1A3ABDA7E819F669959DA9F9E2DFA0364C3DB56A95EDBC03D9EE641D0A4B04FA;
 SizeAsReceived:6997; Count:43
x-tmn: [ilBST7tMNIKdkoj2sCM9AF3woGWCCq0y]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:SG2APC01HT014; 
x-ms-traffictypediagnostic: SG2APC01HT014:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: 7/tql/+/AVJOCmoegVdz/5MJQ7no1vYMW2q6ARnVxYrbRcdCzbfNkIVUZ+u5yVC7jdjSsmehJYOPwc0tD3gB3t0wi5sojPKn+nPN66w8awsueoQ5rDacLpGW6T91biSLuDzgMPT/1BdYY4sVHJ+6xXMrLjNg/xL/s4DKjtbIsTFPWzBBwMTMb1CzaHJog8A8
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c8f3ee78-84c7-44ff-e61d-08d716765b51
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 11:49:48.9810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT014
Subject: [USRP-users] =?gb2312?b?tPC4tDogIE4zMTAgUkZOT0MgdHV0b3JpYWwgYmxv?=
 =?gb2312?b?Y2sgImdhaW4iIG5vdCBmb3VuZCBpbiBzeW50aGVzaXM=?=
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
Content-Type: multipart/mixed; boundary="===============0436038433110384092=="
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

--===============0436038433110384092==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR01MB283555AB342AB9EC6211DD0AF3DE0HK0PR01MB2835apcp_"

--_000_HK0PR01MB283555AB342AB9EC6211DD0AF3DE0HK0PR01MB2835apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SSBjb3VsZCBnZW5lcmF0ZSB0aGUgaW1hZ2Ugd2l0aCBldHR1cyBzdXBwbGllZCBwcmUtYnVpbHQg
UkZOb0MgYmxvY2tzIGFuZCBsb2FkIGl0IHRvIE4zMTAgRlBHQS4NClRoZSBBUCB3YXMgd3JpdHRl
biBpbiAyMDE3IGZvciBYM1hYIGFuZCBFM3h4LCBidXQgbm90IGZvciBOMzEwLiBJcyB0aGlzIHR1
dG9yaWFsIGV2ZXIgdGVzdGVkIG9uIE4zMTA/DQpJIGFjdHVhbGx5IG1vZGlmaWVkIHRoZSBtYWtl
bGlzdCBmaWxlIHRvIGNoYW5nZSBmcm9tIHRoZSBlMzAwIHRvIE4zeHggKGUzMDAgZG9lcyBleGlz
dCBpbiB0aGUgIHRvcCBkaXJlY3RvcnkpIHRvIHBhc3MgdGhlIHNpbXVsYXRpb24uDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQq3orz+yMs6IEpvbmF0aG9uIFBlbmRsdW0gPGpv
bmF0aG9uLnBlbmRsdW1AZXR0dXMuY29tPg0Kt6LLzcqxvOQ6IFRodXJzZGF5LCBBdWd1c3QgMSwg
MjAxOSA3OjI1OjA4IFBNDQrK1bz+yMs6IMzAILfJIDxyZXRpbmE5OTlAaG90bWFpbC5jb20+DQqz
rcvNOiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20+DQrW98ziOiBSZTogW1VTUlAtdXNlcnNdIE4zMTAgUkZOT0MgdHV0b3JpYWwgYmxvY2sgImdh
aW4iIG5vdCBmb3VuZCBpbiBzeW50aGVzaXMNCg0KSGksDQoNCkNvdWxkIHlvdSB0cnkgZ2VuZXJh
dGluZyB0aGUgaW1hZ2Ugd2l0aCB1aGRfaW1hZ2VfYnVpbGRlcl9ndWkucHkgYW5kIHNlZSBpZiB5
b3UgZ2V0IHRoZSBzYW1lIGVycm9yPw0KDQpKb25hdGhvbg0KDQpPbiBXZWQsIEp1bCAzMSwgMjAx
OSBhdCA4OjI5IEFNIMzAILfJIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbTxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+PiB3cm90ZToNCg0KSGkgYWxs
LA0KDQpJIGFtIHN0dWR5aW5nIHRoZSBhcHBsaWNhdGlvbiBub3RlICJHZXR0aW5nIFN0YXJ0ZWQg
d2l0aCBSRk5vQyBEZXZlbG9wbWVudCIuDQpJIHdhcyBhYmxlIHRvIGNvbXBsZXRlIHRoZSBzaW11
bGF0aW9uIG9mIGN1c3RvbSBub2NfYmxvY2tfZ2FpbiwgYnV0IGZhaWxlZCBpbiB0aGUgZmluYWwg
c3RhZ2Ugb2YgdGhlIHN5bnRoZXNpcy4NClRoZSBjdXN0b20gYmxvY2sgImdhaW4iIGNhbm5vdCBi
ZSBmb3VuZC4NCkkgdXNlIHRoZSBmb2xsb3dpbmcgY29tbWFuZCwgICIuL3VoZF9pbWFnZV9idWls
ZGVyLnB5IGdhaW4gZGRjIGZmdCAtSSB+L3Jmbm9jL3NyYy9yZm5vYy1tZXNoLyAtZCBuMzEwIC10
IE4zMTBfUkZOT0NfSEcgLW0gNiAtLWZpbGwtd2l0aC1maWZvcyAtYyIuDQpJIGRpZCBzcGVjaWZ5
IHRoZSBPT1QgZGlyZWN0b3J5IGR1cmluZyBpbWFnZSBidWlsZGluZy4gSSBhbSBjZXJ0YWluIEkg
aGF2ZSBtYWRlIGFsbCBzZXR0aW5ncyBjb3JyZWN0Lg0KU28gZmFyIEkgaGF2ZSBubyBjbHVlIHdo
YXQgY2F1c2VzIHRoaXMuIEhvdyB0byBzb2x2ZSB0aGlzIHByb2JsZW0/DQoNCg0KUFMsIEkgdXNl
IHVoZCAzLjE0LjAuMCwgYW5kIHBvc3Qgb2YgaW1hZ2luZyBidWlkaW5nLA0KDQoqKioqKiogVml2
YWRvIHYyMDE4LjNfQVI3MTg5OCAoNjQtYml0KQ0KICAqKioqIFNXIEJ1aWxkIDI0MDU5OTEgb24g
VGh1IERlYyAgNiAyMzozNjo0MSBNU1QgMjAxOA0KICAqKioqIElQIEJ1aWxkIDI0MDQ0MDQgb24g
RnJpIERlYyAgNyAwMTo0Mzo1NiBNU1QgMjAxOA0KICAgICoqIENvcHlyaWdodCAxOTg2LTIwMTgg
WGlsaW54LCBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuDQoNCnNvdXJjZSBydW5faXBwYWNrLnRj
bCAtbm90cmFjZQ0KSU5GTzogW0lQX0Zsb3cgMTktMjM0XSBSZWZyZXNoaW5nIElQIHJlcG9zaXRv
cmllcw0KSU5GTzogW0lQX0Zsb3cgMTktMTcwNF0gTm8gdXNlciBJUCByZXBvc2l0b3JpZXMgc3Bl
Y2lmaWVkDQpJTkZPOiBbSVBfRmxvdyAxOS0yMzEzXSBMb2FkZWQgVml2YWRvIElQIHJlcG9zaXRv
cnkgJy9vcHQvWGlsaW54L1ZpdmFkby8yMDE4LjMvZGF0YS9pcCcuDQpJTkZPOiBbQ29tbW9uIDE3
LTIwNl0gRXhpdGluZyBWaXZhZG8gYXQgVHVlIEp1bCAzMCAyMDo0MToxMyAyMDE5Li4uDQpJTkZP
OiBbSExTIDIwMC0xMTJdIFRvdGFsIGVsYXBzZWQgdGltZTogMTcuMzggc2Vjb25kczsgcGVhayBh
bGxvY2F0ZWQgbWVtb3J5OiA2Ni45MzQgTUIuDQpJTkZPOiBbQ29tbW9uIDE3LTIwNl0gRXhpdGlu
ZyB2aXZhZG9faGxzIGF0IFR1ZSBKdWwgMzAgMjA6NDE6MTMgMjAxOS4uLg0KQlVJTERFUjogUmVs
ZWFzaW5nIElQIGxvY2F0aW9uOiAvaG9tZS93dHQvcmZub2Mvc3JjL3VoZC1mcGdhL3VzcnAzL3Rv
cC9uM3h4L2J1aWxkLWlwL3hjN3oxMDBmZmc5MDAtMi9hZGRzdWJfaGxzDQpVc2luZyBwYXJzZXIg
Y29uZmlndXJhdGlvbiBmcm9tOiAvaG9tZS93dHQvcmZub2Mvc3JjL3VoZC1mcGdhL3VzcnAzL3Rv
cC9uM3h4L2Rldl9jb25maWcuanNvbg0KWzAwOjAwOjAwXSBFeGVjdXRpbmcgY29tbWFuZDogdml2
YWRvIC1tb2RlIGJhdGNoIC1zb3VyY2UgL2hvbWUvd3R0L3Jmbm9jL3NyYy91aGQtZnBnYS91c3Jw
My90b3AvbjN4eC9idWlsZF9uM3h4LnRjbCAtbG9nIGJ1aWxkLmxvZyAtam91cm5hbCBuM3h4Lmpv
dQ0KQ1JJVElDQUwgV0FSTklORzogW2ZpbGVtZ210IDIwLTE0NDBdIEZpbGUgJy9ob21lL3d0dC9y
Zm5vYy9zcmMvdWhkLWZwZ2EvdXNycDMvdG9wL24zeHgvYnVpbGQtaXAveGM3ejEwMGZmZzkwMC0y
L2RkcjNfMzJiaXQvZGRyM18zMmJpdC91c2VyX2Rlc2lnbi9ydGwvY2xvY2tpbmcvbWlnXzdzZXJp
ZXNfdjRfMl90ZW1wbW9uLnYnIGFscmVhZHkgZXhpc3RzIGluIHRoZSBwcm9qZWN0IGFzIGEgcGFy
dCBvZiBzdWItZGVzaWduIGZpbGUgJy9ob21lL3d0dC9yZm5vYy9zcmMvdWhkLWZwZ2EvdXNycDMv
dG9wL24zeHgvYnVpbGQtaXAveGM3ejEwMGZmZzkwMC0yL2RkcjNfMzJiaXQvZGRyM18zMmJpdC54
Y2knLiBFeHBsaWNpdGx5IGFkZGluZyB0aGUgZmlsZSBvdXRzaWRlIHRoZSBzY29wZSBvZiB0aGUg
c3ViLWRlc2lnbiBjYW4gbGVhZCB0byB1bmludGVuZGVkIGJlaGF2aW9ycyBhbmQgaXMgbm90IHJl
Y29tbWVuZGVkLg0KWzAwOjAwOjE0XSBDdXJyZW50IHRhc2s6IEluaXRpYWxpemF0aW9uICsrKyBD
dXJyZW50IFBoYXNlOiBTdGFydGluZw0KWzAwOjAwOjE0XSBDdXJyZW50IHRhc2s6IEluaXRpYWxp
emF0aW9uICsrKyBDdXJyZW50IFBoYXNlOiBGaW5pc2hlZA0KWzAwOjAwOjE0XSBFeGVjdXRpbmcg
VGNsOiBzeW50aF9kZXNpZ24gLXRvcCBuM3h4IC1wYXJ0IHhjN3oxMDBmZmc5MDAtMiAtdmVyaWxv
Z19kZWZpbmUgU0ZQMF8xR0JFPTEgLXZlcmlsb2dfZGVmaW5lIFNGUDFfMTBHQkU9MSAtdmVyaWxv
Z19kZWZpbmUgVVNFX1JFUExBWT0xIC12ZXJpbG9nX2RlZmluZSBCVUlMRF8xRz0xIC12ZXJpbG9n
X2RlZmluZSBCVUlMRF8xMEc9MSAtdmVyaWxvZ19kZWZpbmUgUkZOT0M9MSAtdmVyaWxvZ19kZWZp
bmUgTjMxMD0xIC12ZXJpbG9nX2RlZmluZSBHSVRfSEFTSD0zMidoZmI2MTVhNWENClswMDowMDox
NF0gU3RhcnRpbmcgU3ludGhlc2lzIENvbW1hbmQNCkVSUk9SOiBbU3ludGggOC00MzldIG1vZHVs
ZSAnbm9jX2Jsb2NrX2dhaW4nIG5vdCBmb3VuZCBbL2hvbWUvd3R0L3Jmbm9jL3NyYy91aGQtZnBn
YS91c3JwMy90b3AvbjN4eC9yZm5vY19jZV9hdXRvX2luc3RfbjMxMC52OjIyXQ0KRVJST1I6IFtT
eW50aCA4LTYxNTZdIGZhaWxlZCBzeW50aGVzaXppbmcgbW9kdWxlICduM3h4X2NvcmUnIFsvaG9t
ZS93dHQvcmZub2Mvc3JjL3VoZC1mcGdhL3VzcnAzL3RvcC9uM3h4L24zeHhfY29yZS52OjE3XQ0K
RVJST1I6IFtTeW50aCA4LTYxNTZdIGZhaWxlZCBzeW50aGVzaXppbmcgbW9kdWxlICduM3h4JyBb
L2hvbWUvd3R0L3Jmbm9jL3NyYy91aGQtZnBnYS91c3JwMy90b3AvbjN4eC9kYm9hcmRzL21nL24z
eHgudjoxM10NCkVSUk9SOiBbQ29tbW9uIDE3LTY5XSBDb21tYW5kIGZhaWxlZDogU3ludGhlc2lz
IGZhaWxlZCAtIHBsZWFzZSBzZWUgdGhlIGNvbnNvbGUgb3IgcnVuIGxvZyBmaWxlIGZvciBkZXRh
aWxzDQpbMDA6MDM6NDhdIEN1cnJlbnQgdGFzazogU3ludGhlc2lzICsrKyBDdXJyZW50IFBoYXNl
OiBTdGFydGluZw0KWzAwOjAzOjQ5XSBDdXJyZW50IHRhc2s6IFN5bnRoZXNpcyArKysgQ3VycmVu
dCBQaGFzZTogRmluaXNoZWQNClswMDowMzo0OV0gUHJvY2VzcyB0ZXJtaW5hdGVkLiBTdGF0dXM6
IEZhaWx1cmUNCg0KPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0NCldhcm5pbmdzOiAgICAgICAgICAgNDA3DQpDcml0aWNhbCBXYXJuaW5nczog
IDENCkVycm9yczogICAgICAgICAgICAgNA0KDQpNYWtlZmlsZS5uM3h4LmluYzoxNDk6IHJlY2lw
ZSBmb3IgdGFyZ2V0ICdiaW4nIGZhaWxlZA0KbWFrZVsxXTogKioqIFtiaW5dIEVycm9yIDENCm1h
a2VbMV06IExlYXZpbmcgZGlyZWN0b3J5ICcvaG9tZS93dHQvcmZub2Mvc3JjL3VoZC1mcGdhL3Vz
cnAzL3RvcC9uM3h4Jw0KTWFrZWZpbGU6MTMzOiByZWNpcGUgZm9yIHRhcmdldCAnTjMxMF9SRk5P
Q19IRycgZmFpbGVkDQptYWtlOiAqKiogW04zMTBfUkZOT0NfSEddIEVycm9yIDINCg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QNClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPG1haWx0bzpVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbT4NCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQ0K

--_000_HK0PR01MB283555AB342AB9EC6211DD0AF3DE0HK0PR01MB2835apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
</head>
<body>
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">I could generate the image with=
 ettus supplied pre-built RFNoC blocks and load it to N310 FPGA.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The AP was written in 2017 for =
X3XX and E3xx, but not for N310. Is this tutorial ever tested on N310?</spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I actually modified the makelis=
t file to change from the e300 to N3xx (e300 does exist in the &nbsp;top di=
rectory) to pass the simulation.</span><span lang=3D"EN-US" style=3D"font-s=
ize:12.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> Jonatho=
n Pendlum &lt;jonathon.pendlum@ettus.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> Thursday, August 1, 2019 7:25:08 PM<br>
<b>=CA=D5=BC=FE=C8=CB:</b> =CC=C0 =B7=C9 &lt;retina999@hotmail.com&gt;<br>
<b>=B3=AD=CB=CD:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.=
com&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] N310 RFNOC tutorial block &quot;gain&=
quot; not found in synthesis</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi,
<div><br>
</div>
<div>Could you try generating the image with <span style=3D"white-space:pre=
-wrap">uhd_image_builder_gui.py and see if you get the same error?</span></=
div>
<div><span style=3D"white-space:pre-wrap"><br>
</span></div>
<div><span style=3D"white-space:pre-wrap">Jonathon</span></div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 31, 2019 at 8:29 AM =CC=
=C0 =B7=C9 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"#FFFFFF">
<pre>Hi all,

I am studying the application note &quot;Getting Started with RFNoC Develop=
ment&quot;.
I was able to complete the simulation of custom noc_block_gain, but failed =
in the final stage of the synthesis.
The custom block &quot;gain&quot; cannot be found.=20
I use the following command,  &quot;./uhd_image_builder.py gain ddc fft -I =
~/rfnoc/src/rfnoc-mesh/ -d n310 -t N310_RFNOC_HG -m 6 --fill-with-fifos -c&=
quot;.
I did specify the OOT directory during image building. I am certain I have =
made all settings correct.=20
So far I have no clue what causes this. How to solve this problem?


PS, I use uhd 3.14.0.0, and post of imaging buiding,

****** Vivado v2018.3_AR71898 (64-bit)
  **** SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
  **** IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
    ** Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

source run_ippack.tcl -notrace
INFO: [IP_Flow 19-234] Refreshing IP repositories
INFO: [IP_Flow 19-1704] No user IP repositories specified
INFO: [IP_Flow 19-2313] Loaded Vivado IP repository '/opt/Xilinx/Vivado/201=
8.3/data/ip'.
INFO: [Common 17-206] Exiting Vivado at Tue Jul 30 20:41:13 2019...
INFO: [HLS 200-112] Total elapsed time: 17.38 seconds; peak allocated memor=
y: 66.934 MB.
INFO: [Common 17-206] Exiting vivado_hls at Tue Jul 30 20:41:13 2019...
BUILDER: Releasing IP location: /home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx=
/build-ip/xc7z100ffg900-2/addsub_hls
Using parser configuration from: /home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3x=
x/dev_config.json
<font color=3D"#729FCF"><b>[00:00:00] Executing command: vivado -mode batch=
 -source /home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/build_n3xx.tcl -log bu=
ild.log -journal n3xx.jou</b></font>
<font color=3D"#C4A000">CRITICAL WARNING: [filemgmt 20-1440] File '/home/wt=
t/rfnoc/src/uhd-fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/ddr3_32bit/ddr=
3_32bit/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v' already exists=
 in the project as a part of sub-design file '/home/wtt/rfnoc/src/uhd-fpga/=
usrp3/top/n3xx/build-ip/xc7z100ffg900-2/ddr3_32bit/ddr3_32bit.xci'. Explici=
tly adding the file outside the scope of the sub-design can lead to uninten=
ded behaviors and is not recommended.</font>
[00:00:14] Current task: Initialization &#43;&#43;&#43; Current Phase: Star=
ting
[00:00:14] Current task: Initialization &#43;&#43;&#43; Current Phase: Fini=
shed
<font color=3D"#729FCF"><b>[00:00:14] Executing Tcl: synth_design -top n3xx=
 -part xc7z100ffg900-2 -verilog_define SFP0_1GBE=3D1 -verilog_define SFP1_1=
0GBE=3D1 -verilog_define USE_REPLAY=3D1 -verilog_define BUILD_1G=3D1 -veril=
og_define BUILD_10G=3D1 -verilog_define RFNOC=3D1 -verilog_define N310=3D1 =
-verilog_define GIT_HASH=3D32'hfb615a5a</b></font>
<font color=3D"#4E9A06">[00:00:14] Starting Synthesis Command</font>
<font color=3D"#EF2929"><b>ERROR: [Synth 8-439] module 'noc_block_gain' not=
 found [/home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/rfnoc_ce_auto_inst_n310=
.v:22]</b></font>
<font color=3D"#EF2929"><b>ERROR: [Synth 8-6156] failed synthesizing module=
 'n3xx_core' [/home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/n3xx_core.v:17]</=
b></font>
<font color=3D"#EF2929"><b>ERROR: [Synth 8-6156] failed synthesizing module=
 'n3xx' [/home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/dboards/mg/n3xx.v:13]<=
/b></font>
<font color=3D"#EF2929"><b>ERROR: [Common 17-69] Command failed: Synthesis =
failed - please see the console or run log file for details</b></font>
[00:03:48] Current task: Synthesis &#43;&#43;&#43; Current Phase: Starting
[00:03:49] Current task: Synthesis &#43;&#43;&#43; Current Phase: Finished
<font color=3D"#EF2929"><b>[00:03:49] Process terminated. Status: Failure</=
b></font>

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Warnings:           407
Critical Warnings:  1
Errors:             4

Makefile.n3xx.inc:149: recipe for target 'bin' failed
make[1]: *** [bin] Error 1
make[1]: Leaving directory '/home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx'
Makefile:133: recipe for target 'N310_RFNOC_HG' failed
make: *** [N310_RFNOC_HG] Error 2
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
</body>
</html>

--_000_HK0PR01MB283555AB342AB9EC6211DD0AF3DE0HK0PR01MB2835apcp_--


--===============0436038433110384092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0436038433110384092==--

