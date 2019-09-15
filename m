Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAEAB301A
	for <lists+usrp-users@lfdr.de>; Sun, 15 Sep 2019 15:18:43 +0200 (CEST)
Received: from [::1] (port=37804 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9UQK-0005Gq-SF; Sun, 15 Sep 2019 09:18:40 -0400
Received: from mail1.bemta25.messagelabs.com ([195.245.230.6]:37640)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Joern.Skorstad@Nkom.no>)
 id 1i9UQG-0005Ce-Qn
 for usrp-users@lists.ettus.com; Sun, 15 Sep 2019 09:18:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=s1;
 t=1568553475; i=@nkom.no;
 bh=y6QFZDjVcKt4+G1Ql8ibUVWrOno2noJfiUUFVSfeieQ=;
 h=From:To:Subject:Date:Message-ID:Content-Type:Content-ID:
 Content-Transfer-Encoding:MIME-Version;
 b=bKDltwDaDOqkB4bNo3TShNCDi0T8uzxxDs45kpSJb8eUdih52aDzF261x/Hk8weVb
 PvbrTvSDi41fPIpoHCh8ptRKMaxPc3sTNm1GT9AqXhJkXLpu3cSjPeHCezAh+Cn0UL
 8KAT8lXugk5P5ZaSx4tW2mjsVmGSkfUmdziTabsNvyfKa1JWz+ZTVad0oJFZA5bSEh
 XSj37O6z4+otIU220BfD0oXKt/VyTgAOQMCP+Lou1e7Zb3k9/5j2wrT9OkKziiOtyN
 8MI4llcZwByszymhNUGNht2/+BunPuLHomhzGV9X9dQ6LjDsJBTO4DyBNs+doMgdUN
 0sT9cVCklecWA==
Received: from [46.226.52.100] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-6.bemta.az-a.eu-west-1.aws.symcld.net id 54/E1-10596-20A3E7D5;
 Sun, 15 Sep 2019 13:17:54 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDKsWRWlGSWpSXmKPExsViF5OXq8tkVRd
 rsLtfyeJC5xx2B0aPiSsPMQcwRrFm5iXlVySwZvw7VF+wnLtixuWJ7A2MU7i7GLk4hARaGCXe
 nFvM3MXIycEmYC9xdGYbC4gtImAr8WfWQqA4B4ewgJHEmWNJEGFziQuPm5ghbD2JRbsuM4HYL
 AKqEj+/v2YFsXkFXCTOztrDBtLKKCArMbeJFyTMLCAuMePoHbDpEgICEkv2nGeGsEUlXj7+xw
 phW0ksntjGDmFrSNx++JcJwlaQOLf1DBuELS+x/+UUsMuYBTQl1u/ShxhvJnFv4U02CFtRYkr
 3Q3aIawQlTs58wjKBUWQWkitmIXTPQtI9C0n3LCTdCxhZVzFaJBVlpmeU5CZm5ugaGhjoGhoa
 6RpamgJpA73EKt1EvdRS3fLU4hJdQ73E8mK94src5JwUvbzUkk2MwChKKTict4Ox+8hrvUOMk
 hxMSqK83XW1sUJ8SfkplRmJxRnxRaU5qcWHGGU4OJQkeDPM6mKFBItS01Mr0jJzgBENk5bg4F
 ES4b1sDpTmLS5IzC3OTIdInWI05pjwcu4iZo4jc5cuYhZiycvPS5US590OUioAUppRmgc3CJZ
 oLjHKSgnzMjIwMAjxFKQW5WaWoMq/YhTnYFQS5tWxAJrCk5lXArfvFdApTECnaCbXgpxSkoiQ
 kmpgyo54nvTn6+0jXmX5J8JZJbfbaBv/iI/IXTjPkHXWit3v3ttvltyV7fXAJnOK2upYtarul
 wGSx/9ItR2/cM2jK4ol/SLr7x3bD8mwXs6sj/t54oPt272Scqcj5m0+0/vFK19RSmn/6px4gd
 0bP4nft7E+9W5fanZqepjU7kn3Nqhm/vO2XDi3LsT5muBhUfdGi03TzrvtYD1l3MXEuePytJr
 6yf2c6zhNpv+UfVk5oV6mqIrzCutCTdXG3dU+Kpv1u2/nW04pl1+aKvRbNCM/S/2CQVGN0jL1
 Q10GbBX61m1e+0+vP1QkmMD1qbV8akT726trSqMFEmYav6l75v7xzpt3Z468rhVVujzdt8FHi
 aU4I9FQi7moOBEA97lRUK8DAAA=
X-Env-Sender: Joern.Skorstad@Nkom.no
X-Msg-Ref: server-26.tower-264.messagelabs.com!1568553473!415502!1
X-Originating-IP: [62.92.110.109]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 26846 invoked from network); 15 Sep 2019 13:17:54 -0000
Received: from 109.110.92.62.static.cust.telenor.com (HELO smtp.nkom.no)
 (62.92.110.109)
 by server-26.tower-264.messagelabs.com with ECDHE-RSA-AES256-SHA encrypted
 SMTP; 15 Sep 2019 13:17:54 -0000
Received: from EXMBX01.npta.no ([10.10.2.97]) by EXCAS.npta.no ([::1]) with
 mapi id 14.03.0468.000; Sun, 15 Sep 2019 15:17:53 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E310 filter settings and LO lock question
Thread-Index: AdVrx/r1EotD1tO5T8upaAUrEvc6ew==
Date: Sun, 15 Sep 2019 13:17:53 +0000
Message-ID: <ecbac5bf-b40a-4c93-980b-cc6f7c852f1a@email.android.com>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-as-product-ver: SMEX-11.0.0.1251-8.100.1062-24912.003
x-tm-as-result: No--3.601000-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
Content-ID: <76C8838F9ED8DC4FAA1EA63B022B6F1B@nkom.no>
MIME-Version: 1.0
Subject: [USRP-users] E310 filter settings and LO lock question
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
From: =?utf-8?q?Skorstad=2CJ=C3=B8rn_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?B?U2tvcnN0YWQsSsO4cm4=?= <Joern.Skorstad@Nkom.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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

SGkgYWxsLA0KDQoNCg0KSSBhbSBjdXJyZW50bHkgd29ya2luZyBvbiBhIHByb2plY3QgdXNpbmcg
YSBVU1JQIEUzMTAgdG8gb3V0cHV0IGFuIEZGVCBwbG90IG92ZXIgYSBnaXZlbiBmcmVxdWVuY3kg
cmFuZ2UgKHVzdWFsbHkgYmlnZ2VyIHRoYW4gdGhlIHBvc3NpYmxlIHNhbXBsZSByYXRlKS4gVGhl
IHByb2dyYW0gaXMgd3JpdHRlbiBpbiBDKysgdXNpbmcgdGhlIFVIRCBsaWJyYXJ5LiBGcmVxdWVu
Y3kgcmFuZ2UgaXMgYWNoaWV2ZWQgYnkgY2hhbmdpbmcgdGhlIExPIGZyZXF1ZW5jeSByZWd1bGFy
bHkuIFRoZSBwcm9ncmFtIHNlZW1zIHRvIHdvcmssIGhvd2V2ZXIgSSBoYXZlIHR3byBxdWVzdGlv
bnMgSSBjYW7igJl0IGZpbmQgdGhlIGFuc3dlciB0byBpbiB0aGUgVUhEIG1hbnVhbDoNCg0KDQoN
ClRoZSBFMzEwIGhhcyBhbmFsb2cgZmlsdGVycyBvbiB0aGUgUlggYW5kIFRYIHBvcnRzLiBUaGUg
ZG9jdW1lbnRhdGlvbiBpcyBhIGxpdHRsZSBzaG9ydCBvbiBob3cgdGhlc2UgZmlsdGVycyBhcmUg
Y29udHJvbGxlZC4gQXJlIHRoZXkgc2VsZWN0ZWQgYXV0b21hdGljYWxseSBiYXNlZCBvbiB0aGUg
TE8gZnJlcXVlbmN5LCBvciBkbyB0aGV5IG5lZWQgdG8gYmUgbWFudWFsbHkgc2VsZWN0ZWQ/IElm
IHNvLCBob3c/IEFuZCB3aGF0IHdvdWxkIGJlIHRoZSAoZXN0aW1hdGVkKSBjaGFuZ2VvdmVyIHRp
bWUgYmV0d2VlbiBmaWx0ZXJzPw0KDQoNCg0KTE8gbG9jayDigJMgSSB0cmllZCB0byBkZXRlY3Qg
aWYgTE8gaXMgbG9ja2VkIGFmdGVyIGEgdHVuZSByZXF1ZXN0IHVzaW5nIHRoZSBVSEQgbWFudWFs
IGFzIGEgcmVmZXJlbmNlLiBJZiBJIGluY2x1ZGUgdGhlIGZvbGxvd2luZyBkaXJlY3RseSBhZnRl
ciBhIHR1bmUgcmVxdWVzdCBub3RoaW5nIGlzIHByaW50ZWQ6DQoNCiAgd2hpbGUgKCF1c3JwLT5n
ZXRfcnhfc2Vuc29yKCJsb19sb2NrZWQiKS50b19ib29sKCkpIHN0ZDo6Y291dCA8PCAiUExMIHVu
bG9ja2VkISIgPDwgc3RkOjplbmRsOw0KDQoNCg0KSXMgdGhlcmUgc29tZSBvdGhlciB3YXkgdG8g
ZGV0ZWN0IExPIGxvY2s/DQoNCg0KDQpSZWdhcmRzLA0KDQpKb3JuDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
