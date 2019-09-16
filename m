Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9B2B3B84
	for <lists+usrp-users@lfdr.de>; Mon, 16 Sep 2019 15:39:16 +0200 (CEST)
Received: from [::1] (port=60802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9rDm-0005ej-Dd; Mon, 16 Sep 2019 09:39:14 -0400
Received: from mail1.bemta25.messagelabs.com ([195.245.230.6]:55252)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Joern.Skorstad@Nkom.no>)
 id 1i9rDi-0005a4-Aa
 for usrp-users@lists.ettus.com; Mon, 16 Sep 2019 09:39:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=s1;
 t=1568641109; i=@nkom.no;
 bh=Pbn/WYMiyKunlRDcCBBoa1L9xQrGnJT1dkE10GnYIZk=;
 h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
 Content-Type:Content-Transfer-Encoding:MIME-Version;
 b=ESmvRDzPO99CMqusbonwShkCIgh43Ss9OU96eTgZz9mVzrlQH3NJ3EmLG7QYC9vOO
 udL0YNonvGUc9P6mb+2QA+YtzH2I59DeQQMW44qNRotuNZQbb5N8uXBpEOi2/gbcPd
 bpxj0RbLXhHupEszrclNcYdJGnSX/n12XV4ll0HBeIvTyuJM4S+26Eb/QknMyILrXO
 vCU2mvYGNQouutFbp6BqT/WFw1Mo4mPeqaCULoq/+qDTVykroMUC4fjncbcX3f3bhl
 N9eVhpwXULmwykMlvipgK9TMvzV1NnDKVwtC7o31eSid78F2wpZIxYxXD+btwFkww7
 wq8iYGp5bYp9w==
Received: from [46.226.52.100] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-6.bemta.az-a.eu-west-1.aws.symcld.net id A5/02-10596-5509F7D5;
 Mon, 16 Sep 2019 13:38:29 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLKsWRWlGSWpSXmKPExsViF5OXqxsyoT7
 WYFejjsWFzjnsDoweE1ceYg5gjGLNzEvKr0hgzZjbsZm5YK5YReuWLSwNjD9Euxg5OYQEWhgl
 VrXxgNhsAvYSR2e2sYDYIgK2En9mLWQGsYUFnCWObFkKFXeRWLTiIlsXIweQ7SRxY7EYSJhFQ
 FWi4VEXK4jNK2AncfnLCyCbC2j8OkaJOcvbmEDqOYHmTPphBGIyCshKzG3iBSlnFhCXmHH0Dt
 h0CQEBiSV7zjND2KISLx//Y4WwlSTebtwOZVtJzN33F2yihICmxLNJUhBhBYlzW8+wQdjyEvt
 fTmEGKWEGKlm/Sx9ik6LElO6H7BBHCkqcnPmEZQKj2CwkR8xC6JiFpGMWko4FjCyrGC2SijLT
 M0pyEzNzdA0NDHQNDY10DS1NgbSBXmKVbqJeaqlueWpxia6hXmJ5sV5xZW5yTopeXmrJJkZgb
 KUUHM7bwdh95LXeIUZJDiYlUV5ZpfpYIb6k/JTKjMTijPii0pzU4kOMMhwcShK8Fb1AOcGi1P
 TUirTMHGCcw6QlOHiURHin9gCleYsLEnOLM9MhUqcYLTkmvJy7iJnjwtklQPLI3KWLmIVY8vL
 zUqXEeU1B5gmANGSU5sGNg6WiS4yyUsK8jAwMDEI8BalFuZklqPKvGMU5GJWEef+ArOXJzCuB
 2/oK6CAmoIM0k2tBDipJREhJNTDtvrN4Tll7q57qUqeD3+d+DvnkfWevy1G7qd0/n81q2zhzw
 7n3E0KnSKobtWvpr/cq+mHbJrJeaFfCf5fuZyYvfgsZT8/LMnAx7LDap9b2gie2a5//gge7jB
 kjzizRsbhtNn351/3hn//cCFjUe2e9ne+rBw8TWV1O+Hy5l79wtuIJe8Zlf9gKd3ntUrWM+WI
 +qezCsyvq8arN/lufPP6ht2vN3mz+Fs8rFa9Ozip5y36MfXLT+V175SrPKhinBZoxTsqOZDp/
 ZL1H0KpzNnp8T97bvzCvvXPfPf57RWJKh/W0eztjFq7/cn/dQ7VVegFrdML+HJjEefb1bC/9m
 qs30lecEzk4/e8HWfGeu9xOD5RYijMSDbWYi4oTAdhVqSzAAwAA
X-Env-Sender: Joern.Skorstad@Nkom.no
X-Msg-Ref: server-28.tower-264.messagelabs.com!1568641108!489375!1
X-Originating-IP: [62.92.110.109]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 25772 invoked from network); 16 Sep 2019 13:38:28 -0000
Received: from 109.110.92.62.static.cust.telenor.com (HELO smtp.nkom.no)
 (62.92.110.109)
 by server-28.tower-264.messagelabs.com with ECDHE-RSA-AES256-SHA encrypted
 SMTP; 16 Sep 2019 13:38:28 -0000
Received: from EXMBX01.npta.no ([10.10.2.97]) by EXCAS.npta.no ([::1]) with
 mapi id 14.03.0468.000; Mon, 16 Sep 2019 15:38:27 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E310 filter settings and LO lock question
Thread-Index: AdVrx/r1EotD1tO5T8upaAUrEvc6ewAHlLiAAALHFoAAKJYr4A==
Date: Mon, 16 Sep 2019 13:38:26 +0000
Message-ID: <D71B2B9BB39CE44CACCAB6646DF20CFD48D79E3D@exmbx01>
References: <ecbac5bf-b40a-4c93-980b-cc6f7c852f1a@email.android.com>
 <BC4D9856-CF67-47A5-BBFF-74B38B0F72EA@gmail.com>
 <4e120fcf-28e9-d02b-8523-3a7273b2f7aa@elitecoding.org>
In-Reply-To: <4e120fcf-28e9-d02b-8523-3a7273b2f7aa@elitecoding.org>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.231.27]
x-tm-as-product-ver: SMEX-11.0.0.1251-8.100.1062-24914.003
x-tm-as-result: No--17.968500-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: [USRP-users] E310 filter settings and LO lock question
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

TWFueSB0aGFua3MgZm9yIHlvdXIgYW5zd2Vycy4gRG8geW91IGtub3cgaWYgdGhlIEUzMTAgd2ls
bCBoYWx0IHRoZSBkYXRhIHN0cmVhbSB3aGlsZSBjaGFuZ2luZyBmaWx0ZXIvZnJlcXVlbmN5LCBv
ciBkbyBJIG5lZWQgdG8gdGFrZSB0aGlzIGludG8gYWNjb3VudCBpbiB0aGUgc29mdHdhcmUgd2hp
bGUgY2hhbmdpbmcgZnJlcXVlbmNpZXM/DQoNCg0KSm9ybiwNCg0KcmVnYXJkaW5nIHlvdXIgb3Ro
ZXIgcXVlc3Rpb24sIGZpbHRlciBzZWxlY3Rpb24gb24gdGhlIEUzMTAgaXMgaGFuZGxlZCBieSBV
SEQsIGludGVybmFsbHkuDQoNCkNoZWVycywNCkp1bGlhbg0KDQpPbiAxNS4wOS4xOSAyMDo1NCwg
TWFyY3VzIEQgTGVlY2ggdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+IE15IHJlY29sbGVjdGlvbiBp
cyB0aGF0IHRoZSBBRDkzNjEgUkYgY2hpcCBkb2VzbuKAmXQgaGF2ZSBhbiBleHRlcm5hbCBsb2Nr
IGluZGljYXRvci4NCj4gDQo+IFNlbnQgZnJvbSBteSBpUGhvbmUNCj4gDQo+PiBPbiBTZXAgMTUs
IDIwMTksIGF0IDk6MTcgQU0sIFNrb3JzdGFkLErDuHJuIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6DQo+Pg0KPj4gSGkgYWxsLA0KPj4NCj4+DQo+Pg0K
Pj4gSSBhbSBjdXJyZW50bHkgd29ya2luZyBvbiBhIHByb2plY3QgdXNpbmcgYSBVU1JQIEUzMTAg
dG8gb3V0cHV0IGFuIEZGVCBwbG90IG92ZXIgYSBnaXZlbiBmcmVxdWVuY3kgcmFuZ2UgKHVzdWFs
bHkgYmlnZ2VyIHRoYW4gdGhlIHBvc3NpYmxlIHNhbXBsZSByYXRlKS4gVGhlIHByb2dyYW0gaXMg
d3JpdHRlbiBpbiBDKysgdXNpbmcgdGhlIFVIRCBsaWJyYXJ5LiBGcmVxdWVuY3kgcmFuZ2UgaXMg
YWNoaWV2ZWQgYnkgY2hhbmdpbmcgdGhlIExPIGZyZXF1ZW5jeSByZWd1bGFybHkuIFRoZSBwcm9n
cmFtIHNlZW1zIHRvIHdvcmssIGhvd2V2ZXIgSSBoYXZlIHR3byBxdWVzdGlvbnMgSSBjYW7igJl0
IGZpbmQgdGhlIGFuc3dlciB0byBpbiB0aGUgVUhEIG1hbnVhbDoNCj4+DQo+Pg0KPj4NCj4+IFRo
ZSBFMzEwIGhhcyBhbmFsb2cgZmlsdGVycyBvbiB0aGUgUlggYW5kIFRYIHBvcnRzLiBUaGUgZG9j
dW1lbnRhdGlvbiBpcyBhIGxpdHRsZSBzaG9ydCBvbiBob3cgdGhlc2UgZmlsdGVycyBhcmUgY29u
dHJvbGxlZC4gQXJlIHRoZXkgc2VsZWN0ZWQgYXV0b21hdGljYWxseSBiYXNlZCBvbiB0aGUgTE8g
ZnJlcXVlbmN5LCBvciBkbyB0aGV5IG5lZWQgdG8gYmUgbWFudWFsbHkgc2VsZWN0ZWQ/IElmIHNv
LCBob3c/IEFuZCB3aGF0IHdvdWxkIGJlIHRoZSAoZXN0aW1hdGVkKSBjaGFuZ2VvdmVyIHRpbWUg
YmV0d2VlbiBmaWx0ZXJzPw0KPj4NCj4+DQo+Pg0KPj4gTE8gbG9jayDigJMgSSB0cmllZCB0byBk
ZXRlY3QgaWYgTE8gaXMgbG9ja2VkIGFmdGVyIGEgdHVuZSByZXF1ZXN0IHVzaW5nIHRoZSBVSEQg
bWFudWFsIGFzIGEgcmVmZXJlbmNlLiBJZiBJIGluY2x1ZGUgdGhlIGZvbGxvd2luZyBkaXJlY3Rs
eSBhZnRlciBhIHR1bmUgcmVxdWVzdCBub3RoaW5nIGlzIHByaW50ZWQ6DQo+Pg0KPj4gICB3aGls
ZSAoIXVzcnAtPmdldF9yeF9zZW5zb3IoImxvX2xvY2tlZCIpLnRvX2Jvb2woKSkgc3RkOjpjb3V0
IDw8IA0KPj4gIlBMTCB1bmxvY2tlZCEiIDw8IHN0ZDo6ZW5kbDsNCj4+DQo+Pg0KPj4NCj4+IElz
IHRoZXJlIHNvbWUgb3RoZXIgd2F5IHRvIGRldGVjdCBMTyBsb2NrPw0KPj4NCj4+DQo+Pg0KPj4g
UmVnYXJkcywNCj4+DQo+PiBKb3JuDQo+Pg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0DQo+PiBVU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFu
L2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tDQo+IA0KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdA0KPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBodHRwOi8vbGlzdHMuZXR0dXMu
Y29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20NCj4gDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMu
Y29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
