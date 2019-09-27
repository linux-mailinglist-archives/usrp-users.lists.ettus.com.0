Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3D5BFC7D
	for <lists+usrp-users@lfdr.de>; Fri, 27 Sep 2019 02:49:28 +0200 (CEST)
Received: from [::1] (port=56940 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDeRn-0003CC-Jm; Thu, 26 Sep 2019 20:49:23 -0400
Received: from mail-oln040092005041.outbound.protection.outlook.com
 ([40.92.5.41]:41148 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1iDeRj-000368-S5
 for usrp-users@lists.ettus.com; Thu, 26 Sep 2019 20:49:19 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nu6SJZGBke82U72maW/8ZgsuivbCRsE+FtYSqJIGI5E2hD19VfXLJxIFU4j7Z9aZ00qcGu4F7BlpaTRD5r8SBy1rAHdOdh4nPWJ28SLW/q8iy1M+B97rUMpE0jbn0YcFIRjDxL6FbMBLLipk9eyQYBZzZTQdYGq7YOJpX9wCuCN2Hfv8IOw83D299ZAXnNmWWPqvEnvD1jv0bkY6sRUBL+6ArjjBsA1bPYkSMikVbekAAo42ZKF8QF8fIInCAJIdrpqdL8xf2uJlo9XjoGL0oiqhlV1HnwYiQmdyMIGV+yLvHln+syzWLQr1XwYcReSOn99ohQssK5FqLOMe7bK2OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r/ph+UMwHRVaMSyoH35bB11EDtW8+SKpOu2Pmw1t2/w=;
 b=cGPxcXYFczNl2KJIfd4iXfzBZlnsiuFpTk/a5HuOUxV2+VgTd51b0FYvvK9hfycoNZhjUNHuWGshxtAGtsj6KEJE8brfNyo/8pRwRlEYLBnl4s0pdVinAcYwmpwbAdRyzgH7vkmzfQ3Y8Z8wThcT+1pPlEGRLiUIuh0TGMN0NYcZUbVOvIF/RYQkOF74TDI6SBxdNDoRYePuW0CcHMdZL3tlNNUX855B02KuhBz7hh7QbvNIAWD/9mwcBbANfr7ztpAEPtn7d+tYckc3938z0NMoiPtqbNZZdrRmgtFxAjaI1eXI0mAAdI752sa+AXOZqSTuWsMEFWmy+3LYJSDoYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r/ph+UMwHRVaMSyoH35bB11EDtW8+SKpOu2Pmw1t2/w=;
 b=imO1EhUh8jAkhPMe90cSbXXwTomlc6uYuUc09BdMrmcrrmKa+gcEq8PZ3x8bEiLpddPYrAK4WdwgoZIWcPrnAGy3AuQ9KNAcXWTNRctvvIeF54H30hWLDmCvLqrYScbCVb8pvZvvHvtfASfFhuzStQ/cY3dm1Iow0Ak/iNcdWiW5tl4DKPWrg+R0qO2u4GkHKK61HG4kqeeqYxUkY7g9n92E3em3yyP2mdbj+JfHHbEDKy+Q0rEr+VWE9/5ssjaeQ6ExwJLt9vkBFMb/L3NwJ2uv5SDv6q/geXJ1xk7S6MSq6hbdfi0l3jqmNSgeFN/ro1z0DPhCpmsyMMQ7aumj/A==
Received: from BL2NAM02FT026.eop-nam02.prod.protection.outlook.com
 (10.152.76.52) by BL2NAM02HT201.eop-nam02.prod.protection.outlook.com
 (10.152.76.251) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2284.20; Fri, 27 Sep
 2019 00:48:38 +0000
Received: from BN6PR19MB0980.namprd19.prod.outlook.com (10.152.76.53) by
 BL2NAM02FT026.mail.protection.outlook.com (10.152.77.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.25 via Frontend Transport; Fri, 27 Sep 2019 00:48:38 +0000
Received: from BN6PR19MB0980.namprd19.prod.outlook.com
 ([fe80::f134:70b1:d8f6:4c08]) by BN6PR19MB0980.namprd19.prod.outlook.com
 ([fe80::f134:70b1:d8f6:4c08%11]) with mapi id 15.20.2305.017; Fri, 27 Sep
 2019 00:48:38 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC / Vivado Build Failure
Thread-Index: AQHVdM1MO/rdslJFKUqkdDiBZJjtqg==
Date: Fri, 27 Sep 2019 00:48:38 +0000
Message-ID: <BN6PR19MB09807166E8446A4DAF62E122A4810@BN6PR19MB0980.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:23CBBF04124159534DD9828B958DA95C1B3415DBF59DE9952E1A17D3F660FB5B;
 UpperCasedChecksum:E6002C7956FDF93E125D7F846A98FE6C3E048B062732BF6F550F0D2965414BAB;
 SizeAsReceived:6771; Count:42
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [XQNSmz0LhIyFoVpLYq9kCevgHDC+ciD6NRaMdYYOvlghr5P5bIwDpjW3Y/Q7oPAY]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119205)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(2017031321001)(1601125500)(1603101475)(1701031045);
 SRVR:BL2NAM02HT201; 
x-ms-traffictypediagnostic: BL2NAM02HT201:
x-microsoft-antispam-message-info: aSYb3H70n+8O8IA9rPI5BqXzv+C3LIEzupwMYLIGjFrba0pxb0ZpUqunzEZhYghcoJK6Bbsr/HliLVN213DMSWhG+k6Y+d8tPnfS3MytJpghHEdQDYHN3u68VqsgkPUbs56C473L/h8G/d/W02QtvroehFbaUF8goV0KKQql5JHMsmSfAyCe0KXlH9ZCRZjJ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 005dcbf7-4344-4651-42cb-08d742e46f66
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 00:48:38.2665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT201
Subject: [USRP-users] RFNoC / Vivado Build Failure
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
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============2701977052478027167=="
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

--===============2701977052478027167==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB09807166E8446A4DAF62E122A4810BN6PR19MB0980namp_"

--_000_BN6PR19MB09807166E8446A4DAF62E122A4810BN6PR19MB0980namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSdtIHRyeWluZyB0byB0YWtlIHdoYXQgSSBsZWFybmVkIGZyb20gR1JDb24yMDE5IGZyb20gTmVl
bCBhbmQgY29tcGFueSdzIHdvcmtzaG9wLCBhbmQgSSdtIHRyeWluZyB0byBwZXJmb3JtIHRoZSB1
aGRfaW1hZ2VfYnVpbGRlcl9ndWkucHkgc2NyaXB0LiBJdCBmYWlscyB3aXRoIGEgbWVzc2FnZSBz
aW1pbGFyIHRvOg0KDQoNClswMDoxMjoyMl0gU3RhcnRpbmcgRFJDIFRhc2sNCkVSUk9SOiBbRFJD
IE1EUlYtMV0gTXVsdGlwbGUgRHJpdmVyIE5ldHM6IE5ldCBidXNfY2xrX2dlbi9pbnN0L0NMS19P
VVQ0IGhhcyBtdWx0aXBsZSBkcml2ZXJzOiByYWRpb19jbGtfZ2VuL2luc3QvY2xrb3V0MV9idWYv
TywgYW5kIGJ1c19jbGtfZ2VuLyAgICAgICAgICAgICAgICAgICAgICAgICBpbnN0L2Nsa291dDRf
YnVmL08uDQpFUlJPUjogW0RSQyBNRFJWLTFdIE11bHRpcGxlIERyaXZlciBOZXRzOiBOZXQgcmFk
aW9fcmVzZXRfc3luYy9yZXNldF9kb3VibGVfc3luYy9zeW5jaHJvbml6ZXJfZmFsc2VfcGF0aC92
YWx1ZVs5XV85IGhhcyBtdWx0aXBsZSBkcml2ZXJzOiBjZV9yZXMgICAgICAgICAgICAgICAgICAg
ICAgICAgZXRfc3luYy9yZXNldF9kb3VibGVfc3luYy9zeW5jaHJvbml6ZXJfZmFsc2VfcGF0aC9z
dGFnZXNbOV0udmFsdWVfcmVnWzldWzBdL1EsIGFuZCByYWRpb19yZXNldF9zeW5jL3Jlc2V0X2Rv
dWJsZV9zeW5jL3N5bmNocm9uaXplcl9mYWxzZV9wYXRoL3N0ICAgICAgICAgICAgICAgICAgICAg
ICAgIGFnZXNbOV0udmFsdWVfcmVnWzldWzBdL1EuDQpFUlJPUjogW1ZpdmFkb19UY2wgNC03OF0g
RXJyb3IocykgZm91bmQgZHVyaW5nIERSQy4gT3B0X2Rlc2lnbiBub3QgcnVuLg0KDQpJIGhhdmUg
dG8gZmluaXNoIHRoZSBwYXBlcndvcmsgdG8gZ2V0IHRoZSByZWFsIGxvZyBvdXQgb2YgbXkgbGFi
IHNvIEkgY2FuIHBvc3QgaXQsIGJ1dCBpdCBsb29rZWQgcHJldHR5IG11Y2ggdGhlIHNhbWUgYXMg
dGhlIGxvZyBpbiB0aGUgdW5hbnN3ZXJlZCBhcmNoaXZlZCBtZXNzYWdlIGF0Og0KDQpodHRwOi8v
bGlzdHMuZXR0dXMuY29tL3BpcGVybWFpbC91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbS8yMDE5
LUF1Z3VzdC8wNjA0NDMuaHRtbA0KDQphbmQgSSB3YW50ZWQgdG8gdHJ5IGFuZCBnZXQgYSBqdW1w
c3RhcnQgb24gdGhlIGlzc3VlLg0KDQpJIGhhdmUgYW4gWDMxMA0KVml2YWRvIDIwMTguMw0KDQpK
ZWZmDQoNCg==

--_000_BN6PR19MB09807166E8446A4DAF62E122A4810BN6PR19MB0980namp_
Content-Type: text/html; charset="utf-8"
Content-ID:  <9F06F92C583A624AB3D615DEF87C1986@sct-15-20-2032-17-msonline-outlook-0d214.templateTenant>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdj5JJ20gdHJ5
aW5nIHRvIHRha2Ugd2hhdCBJIGxlYXJuZWQgZnJvbSBHUkNvbjIwMTkgZnJvbSBOZWVsIGFuZCBj
b21wYW55J3Mgd29ya3Nob3AsIGFuZCBJJ20gdHJ5aW5nIHRvIHBlcmZvcm0gdGhlIHVoZF9pbWFn
ZV9idWlsZGVyX2d1aS5weSBzY3JpcHQuIEl0IGZhaWxzIHdpdGggYSBtZXNzYWdlIHNpbWlsYXIg
dG86PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj4NCjxwcmUgc3R5bGU9IndoaXRlLXNw
YWNlOiBwcmUtd3JhcDsiPlswMDoxMjoyMl0gU3RhcnRpbmcgRFJDIFRhc2sKRVJST1I6IFtEUkMg
TURSVi0xXSBNdWx0aXBsZSBEcml2ZXIgTmV0czogTmV0IGJ1c19jbGtfZ2VuL2luc3QvQ0xLX09V
VDQgaGFzIG11bHRpcGxlIGRyaXZlcnM6IHJhZGlvX2Nsa19nZW4vaW5zdC9jbGtvdXQxX2J1Zi9P
LCBhbmQgYnVzX2Nsa19nZW4vICAgICAgICAgICAgICAgICAgICAgICAgIGluc3QvY2xrb3V0NF9i
dWYvTy4KRVJST1I6IFtEUkMgTURSVi0xXSBNdWx0aXBsZSBEcml2ZXIgTmV0czogTmV0IHJhZGlv
X3Jlc2V0X3N5bmMvcmVzZXRfZG91YmxlX3N5bmMvc3luY2hyb25pemVyX2ZhbHNlX3BhdGgvdmFs
dWVbOV1fOSBoYXMgbXVsdGlwbGUgZHJpdmVyczogY2VfcmVzICAgICAgICAgICAgICAgICAgICAg
ICAgIGV0X3N5bmMvcmVzZXRfZG91YmxlX3N5bmMvc3luY2hyb25pemVyX2ZhbHNlX3BhdGgvc3Rh
Z2VzWzldLnZhbHVlX3JlZ1s5XVswXS9RLCBhbmQgcmFkaW9fcmVzZXRfc3luYy9yZXNldF9kb3Vi
bGVfc3luYy9zeW5jaHJvbml6ZXJfZmFsc2VfcGF0aC9zdCAgICAgICAgICAgICAgICAgICAgICAg
ICBhZ2VzWzldLnZhbHVlX3JlZ1s5XVswXS9RLgpFUlJPUjogW1ZpdmFkb19UY2wgNC03OF0gRXJy
b3IocykgZm91bmQgZHVyaW5nIERSQy4gT3B0X2Rlc2lnbiBub3QgcnVuLjwvcHJlPg0KPC9kaXY+
DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5JIGhhdmUgdG8gZmluaXNoIHRoZSBwYXBlcndvcmsg
dG8gZ2V0IHRoZSByZWFsIGxvZyBvdXQgb2YgbXkgbGFiIHNvIEkgY2FuIHBvc3QgaXQsIGJ1dCBp
dCBsb29rZWQgcHJldHR5IG11Y2ggdGhlIHNhbWUgYXMgdGhlIGxvZyBpbiB0aGUgdW5hbnN3ZXJl
ZCBhcmNoaXZlZCBtZXNzYWdlIGF0OjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxibG9ja3F1
b3RlIHN0eWxlPSJtYXJnaW46IDAgMCAwIDQwcHg7IGJvcmRlcjogbm9uZTsgcGFkZGluZzogMHB4
OyI+DQo8ZGl2IGRpcj0iYXV0byI+aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9waXBlcm1haWwvdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20vMjAxOS1BdWd1c3QvMDYwNDQzLmh0bWw8L2Rpdj4NCjwv
YmxvY2txdW90ZT4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PmFuZCBJIHdhbnRlZCB0byB0cnkg
YW5kIGdldCBhIGp1bXBzdGFydCBvbiB0aGUgaXNzdWUuPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2
Pg0KPGRpdj5JIGhhdmUgYW4gWDMxMDwvZGl2Pg0KPGRpdj5WaXZhZG8gMjAxOC4zPC9kaXY+DQo8
ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5KZWZmPC9kaXY+DQo8ZGl2IGlkPSJjb21wb3Nlcl9zaWdu
YXR1cmUiPg0KPGRpdiBzdHlsZT0iZm9udC1zaXplOjg1JTtjb2xvcjojNTc1NzU3IiBkaXI9ImF1
dG8iPjxicj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_BN6PR19MB09807166E8446A4DAF62E122A4810BN6PR19MB0980namp_--


--===============2701977052478027167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2701977052478027167==--

