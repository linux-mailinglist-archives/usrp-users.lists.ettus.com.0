Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FA4252161
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 21:58:39 +0200 (CEST)
Received: from [::1] (port=40874 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAf5Z-0001YW-5G; Tue, 25 Aug 2020 15:58:37 -0400
Received: from dd22108.kasserver.com ([85.13.141.232]:46058)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <julian@elitecoding.org>)
 id 1kAf5V-0001QM-Dp
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 15:58:33 -0400
Received: from [192.168.2.116] (p5dc23351.dip0.t-ipconnect.de [93.194.51.81])
 by dd22108.kasserver.com (Postfix) with ESMTPSA id B449D4420165;
 Tue, 25 Aug 2020 21:57:51 +0200 (CEST)
To: David Carsenat <carsenat@gmail.com>,
 usrp-users <usrp-users@lists.ettus.com>
References: <CA+w2ZysdtLyTCsbY4GaLKGqJ1vGUnV=r8_A5Kzv2LVa8pXfWWA@mail.gmail.com>
Message-ID: <79405f9e-125a-8947-5530-eca1e909e5b6@elitecoding.org>
Date: Tue, 25 Aug 2020 21:57:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CA+w2ZysdtLyTCsbY4GaLKGqJ1vGUnV=r8_A5Kzv2LVa8pXfWWA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] List of filters and where they are located
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Julian Arnold via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Julian Arnold <julian@elitecoding.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

RGF2aWQsCgp0YWtlIGEgbG9vayBhdCB0aGUgYWQ5MzYxIHVzZXIgZ3VpZGUgWzFdLiBJdCBoYXMg
YWxsIHRoZSBpbmZvcm1hdGlvbiB5b3UgCmFyZSBsb29raW5nIGZvci4KCklmIHlvdSB3YW50IHRv
IGtub3cgd2hpY2ggZmlsdGVycyB5b3UgY2FuIGNvbmZpZ3VyZSBhbmQgaG93LCB0YWtlIGEgbG9v
ayAKYXQgWzJdLiBJdCdzIGEgc2ltcGxlIGV4YW1wbGUgSSB3cm90ZSBxdWl0ZSBhIHdoaWxlIGJh
Y2sgYnV0IGl0IHNob3VsZCAKc3RpbGwgYmUgZ29vZCB0byBnZXQgeW91IHN0YXJ0ZWQuCgpIb3Bl
IHRoYXQgaGVscHMhCgpDaGVlcnMsCkp1bGlhbgoKWzFdIApodHRwczovL2Zvcm0uYW5hbG9nLmNv
bS9Gb3JtX1BhZ2VzL0NhdGFsaW5hL0NhdGFsaW5hRGVzaWduLmFzcHg/cHJvZGlkPUFEOTM2MQpb
Ml0gaHR0cHM6Ly9naXRodWIuY29tL2phcm4wbGQvdWhkLWZpbHRlci10b29sCgpPbiA4LzI1LzIw
IDk6MDkgUE0sIERhdmlkIENhcnNlbmF0IHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+IEhpLCBJIGFt
IHVzaW5nIGEgQjIwNSBhbmQgSSdkIGp1c3QgbGlrZSB0byBrbm93IHdoYXQgYXJlIHRoZSAKPiBk
aWZmZXJlbmNlwqBmaWx0ZXIgc3RhZ2VzIChhbmFsb2cgYW5kIGRpZ2l0YWwpIHNlZW4gYnkgdGhl
IHNpZ25hbCAoYm90aCAKPiBUeCBhbmQgUngpLCBpbiB0aGUgQUQ5MzZ4IGFuZCBpbiB0aGUgRlBH
QS4KPiBBbm90aGVyIHdheSB0byBoZWxwIG1lLCBzaG91bGQgYmUgdG8gaGF2ZSBhIGRlc2NyaXB0
aW9uIG9mIHRoZSBmaWx0ZXIgCj4gdGhhdCBJIGNhbiBhZGRyZXNzwqB3aXRoIHRoZSBmaWx0ZXIu
aHBwIGZ1bmN0aW9uc8KgOiBDYW4gSSBhZGRyZXNzwqBhbmQgCj4gY2hhbmdlIGZpbHRlcnMgYmVo
YXZpb3VycyB0aGF0IGFyZSBwYXJ0IG9ubHkgb24gRlBHQSBvciBhbHNvIHRoZSBBRDkzNjEgCj4g
ZmlsdGVycyA/Cj4gCj4gTWFueSB0aGFua3MKPiAKPiBEYXZpZAo+IAo+IAo+IAo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5l
dHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0
dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
