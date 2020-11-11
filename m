Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AB32AF649
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 17:27:05 +0100 (CET)
Received: from [::1] (port=49302 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcsxW-0007rY-Qk; Wed, 11 Nov 2020 11:26:58 -0500
Received: from mail-qk1-f182.google.com ([209.85.222.182]:43994)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dw2zq@virginia.edu>) id 1kcsxR-0007kM-QD
 for usrp-users@lists.ettus.com; Wed, 11 Nov 2020 11:26:53 -0500
Received: by mail-qk1-f182.google.com with SMTP id u4so2172210qkk.10
 for <usrp-users@lists.ettus.com>; Wed, 11 Nov 2020 08:26:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=virginia-edu.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=NZP93u12sNqZJ05MC4nzd4nm2tFAQ1iYjJoZ5Odz0bE=;
 b=i1zK5jbAjPq80tsV2MErz73SHzLV6ECi/Vvi80qCm38bClzr3EnXKDhk6ZqODM+ooq
 r5cMz78mK5MHykSjiO8cLaANeSsvrvapaja8WEURz0yslZBzLuxmg/gRphEpdsywnD/e
 Qfc3NT3kw5eDoTfdNdkKKUcemG30rJmL6FS/0RSWGtEPf6pHSP6gkw9nSr31yhWqhsge
 1cTYwKrS7Sz13FliUc0vyYoE+1mQObgj106Cy08YW1XAdxhgNAVubVI/7sP/7KKbKAjU
 BM4KfhIqbpPMpmErCrcVcAHLhF6YFL+JgV6dxxrWox2OA50T1wl064J8zRnvpSwFSZBd
 K5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=NZP93u12sNqZJ05MC4nzd4nm2tFAQ1iYjJoZ5Odz0bE=;
 b=ZtjeBrfEUzwfMEmRkmCDGOpiiusy69sV5MArFpXu4RvPXks8zQ0uQ5LoNeIemHTpAk
 u2hFKeO/rwR0rjNcgC6/TI5TfU6pf/6kH2jWMEJjS1wMIxdMc6EPkr54A9qCNxLvNx9B
 1v8dFffDbRWqa1ICayyk3leOiWQYU9ZjQHPPX7Gz713qQGSHikv1iS1n/DkSbvAtWXRs
 JoA6QCA22skIMWzTZoVMP2FAOJjuNC/7iFYDycoVh8YG3A5KleOoZ4jKVDM8h00ZdqaE
 dmJ5+I6bcFFbe8re5UlDN4vjcQ2uzrAslz9zwTI5Ree9qVT9XzhF/r+NpMeXV75bVx5n
 EEsw==
X-Gm-Message-State: AOAM531x7+aDMOPxmkjeMurz3GnL4WwZi1/YZPaSmnY9a6Fq0IEtWZi1
 PKk99egLkAWRUODDMiZsWnCfF8xcSvkaaQ==
X-Google-Smtp-Source: ABdhPJzLACwnVpx0Ir2XUJjMI/0bIvGCYmhKixEuLdMwB0xaji8R2OgDJ1Nz9VHjryMgogXYUCkcQg==
X-Received: by 2002:a37:9c46:: with SMTP id f67mr25984115qke.252.1605111972722; 
 Wed, 11 Nov 2020 08:26:12 -0800 (PST)
Received: from [10.45.150.181] (c-73-40-68-102.hsd1.va.comcast.net.
 [73.40.68.102])
 by smtp.gmail.com with ESMTPSA id q70sm2597925qka.87.2020.11.11.08.26.11
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Nov 2020 08:26:11 -0800 (PST)
Message-ID: <35ae5da8ab09a4c3bbb77d059d775a91b98d4c9b.camel@virginia.edu>
To: usrp-users@lists.ettus.com
Date: Wed, 11 Nov 2020 11:26:05 -0500
User-Agent: Evolution 3.38.1 
MIME-Version: 1.0
Subject: [USRP-users] twinrx consistent phase offset
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
From: Dustin Widmann via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dustin Widmann <dw2zq@virginia.edu>
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

SGkgdXNycC11c2VycyEKCkknbSBzdGlsbCByZWxhdGl2ZWx5IGluZXhwZXJpZW5jZWQgd2l0aCB3
b3JraW5nIHdpdGggVUhEIGFuZCBVU1JQCnJhZGlvcyBpbiBnZW5lcmFsLCBidXQgSSBmZWVsIGxp
a2UgSSdtIGdldHRpbmcgYmV0dGVyLiBBbnlob3csIEkgaGF2ZQoqc2V2ZXJhbCogcXVlc3Rpb25z
LCBidXQgSSdsbCBzdGFydCB3aXRoIG9uZS4gCgpTZXR1cDoKVVNSUCBYMzEwIFJhZGlvOiBBOlVC
WCwgQjpUd2luUlgKSWYgeW91J3JlIGZhbWlsaWFyIHdpdGggYSAicmVmbGVjdG9tZXRlciIsIGl0
J3Mgc2V0dXAgbGlrZSB0aGF0LiBJZgpub3QsIHRoZSBzaW1wbGVzdCBzdWZmaWNpZW50IHRlc3Qg
c2V0dXAgZm9yIHRoaXMgcHJvYmxlbSB3b3VsZCBiZSB0bwp3aXJlIHRoZSBVQlggVFggdG8gYSBy
ZXNpc3RpdmUgc3BsaXR0ZXIsIHRvIGJvdGggcG9ydHMgb2YgdGhlIFR3aW5SWC4KSG93IHRoZSBz
b2Z0d2FyZSB3b3JrcyBpcyB2ZXJ5IHNpbXBsZTogdGhlIHRyYW5zbWl0dGVyIGlzIHR1bmVkIHRv
IGEKZnJlcXVlbmN5LCB0cmFuc21pdCB2YWx1ZSBpcyBhIHRvbmUgYXQgMEh6ICh0cmFuc21pdCBh
biBhcnJheSBvZiAnMSdzKSwKcmVjZWl2ZXIgaXMgdHVuZWQgdG8gYSBuZWFyYnkgZnJlcXVlbmN5
IGFuZCB0aGUgdG9uZSBpcyBvYnNlcnZlZCBvbgpib3RoIGNoYW5uZWxzLiBUaGUgdmFsdWUgb2Yg
aW50ZXJlc3QgaXMgdGhlIHJhdGlvIG9mIHRoZSB2YWx1ZSBvZiB0aGUKdG9uZSBvZiB0aGUgdHdv
IGNoYW5uZWxzLsKgVGhlIG9iamVjdGl2ZSBpcyB0byBxdWlja2x5IGFuZCBhY2N1cmF0ZWx5IGRv
CnRoaXMgaW4gYSBzd2VlcCBhY3Jvc3MgfjUwTUh6LTZHSHouIAoKVUhEIHZlcnNpb246IFVIRF80
LjAuMC4wLTEtZ2NmNTcwNzA3CldoYXQgSSBleHBlY3Q6IHRoZSBwaGFzZSBkaWZmZXJlbmNlIGJl
dHdlZW4gdGhlIHR3byBjaGFubmVscyBhdCBhbnkKZ2l2ZW4gZnJlcXVlbmN5IHRvIGJlIGNvbnNp
c3RlbnQgZnJvbSBydW4tdG8tcnVuLiAKV2hhdCBJIHNlZTogSSBjYW4gdXN1YWxseSBnZXQgY29u
c2lzdGVudCByZXN1bHRzLCBidXQgc29tZXRpbWVzIEkgc2VlCjkwLDE4MCwyNzAgZGVncmVlIG9m
ZnNldHMgaW5zdGVhZC4gCgpJIGV4cGVjdCB0aGUgcmVsZXZhbnQgc2VjdGlvbiB0byB0aGlzIHBy
b2JsZW0gdG8gYmUgd2hlbiBhbmQgaG93IEkKaGFuZGxlIHR1bmluZywgc28gSSd2ZSBpbmNsdWRl
ZCB0aGF0IGJlbG93OgoKVGhlIHR1bmUgZnVuY3Rpb246IChzaW1wbGlmaWVkIGZvciBicmV2aXR5
L2NsYXJpdHkpCl9zZXRGcmVxdWVuY3koZG91YmxlIGZyZXEpIHsKICAgIGRvdWJsZSByeF9mcmVx
ID0gMDsgaW50IGNsb3Nlc3RfaWR4ID0gMDsgZG91YmxlIHR4X2ZyZXEgPSBmcmVxOwogICAgYm9v
bCB0eF90dW5lZCA9IGZhbHNlOyBib29sIHJ4X3R1bmVkID0gZmFsc2U7CiAgICAvLyBsb29wIHRv
IGdldCBjbG9zZXN0IGZyZXEgaW4gYSBwcmVkZWZpbmVkIGxpc3QgO8KgCiAgICAvLyB0aGUgaWRl
YSBpcyB0byB0dW5lIHRoZSByZWNlaXZlciBtdWNoIGxlc3Mgb2Z0ZW4gYmVjYXVzZQogICAgLy8g
aXQgc2VlbXMgdG8gdGFrZSBhIGxvdCBsb25nZXIgZHVlIHRvIHRoZSBuZWVkIHRvIHVzZSB0aW1l
ZAogICAgLy8gY29tbWFuZHMKICAgIGZvciAoaW50IGlkeCA9IDA7IGlkeCA8IF9mcmVxX2xpc3Qu
c2l6ZSgpOyBpZHgrKykgewogICAgICAgIGlmIChzdGQ6OmFicyhmcmVxIC0gX2ZyZXFfbGlzdFtp
ZHhdKSA8IHN0ZDo6YWJzKGZyZXEtcnhfZnJlcSkpewogICAgICAgICAgICBjbG9zZXN0X2lkeCA9
IGlkeDsKICAgICAgICAgICAgcnhfZnJlcSA9IF9mcmVxX2xpc3RbaWR4XTsKICAgICAgICB9CiAg
ICB9CiAgICBpZiAodHhfZnJlcSA9PSByeF9mcmVxKSB7CiAgICAgICAgLy8gKGNydWRlbHkpIGF2
b2lkIHR1bmluZyByeCB0byBleGFjdGx5IHRoZSBzYW1lIGZyZXEgYXMgdHgKICAgICAgICB0eF9m
cmVxICs9IDUwZTM7CiAgICB9CiAgICBpZiAoX2N1cnJlbnRfdHhfZnJlcSAhPSB0eF9mcmVxKSB7
CiAgICAgICAgX3VzcnAtPmNsZWFyX2NvbW1hbmRfdGltZSgpOyAvLyB0dW5lIHR4IGltbWVkaWF0
ZWx5CiAgICAgICAgYXV0byB0eF9yZXEgPSB1aGQ6OnR1bmVfcmVxdWVzdF90KHR4X2ZyZXEpOwog
ICAgICAgIF91c3JwLT5zZXRfdHhfZnJlcSh0eF9mcmVxLDApOwogICAgICAgIF9jdXJyZW50X3R4
X2ZyZXEgPSB0eF9mcmVxOwogICAgICAgIHR4X3R1bmVkID0gdHJ1ZTsKICAgIH0KICAgIGlmIChf
Y3VycmVudF9yeF9mcmVxICE9IHJ4X2ZyZXEpCiAgICB7CiAgICAgICAgX3VzcnAtPmNsZWFyX2Nv
bW1hbmRfdGltZSgpOwogICAgICAgIF91c3JwLT5zZXRfY29tbWFuZF90aW1lKF91c3JwLQo+Z2V0
X3RpbWVfbm93KCkrdWhkOjp0aW1lX3NwZWNfdCgwLjEwMCkpOwogICAgICAgIF91c3JwLT5zZXRf
cnhfZnJlcShyeF9mcmVxLDApOwogICAgICAgIF91c3JwLT5zZXRfcnhfZnJlcShyeF9mcmVxLDEp
OwogICAgICAgIF9kZWxheV9tcygyNTApOyAvLyBkZWxheSwgYnV0IGtlZXAgZXZlbnQgbG9vcCBh
bGl2ZQogICAgICAgIC8vIHR1bmUgYWdhaW4sIGJlY2F1c2UgaXQgc2VlbXMgdG8gaGVscAogICAg
ICAgIF91c3JwLT5jbGVhcl9jb21tYW5kX3RpbWUoKTsKICAgICAgICBfdXNycC0+c2V0X2NvbW1h
bmRfdGltZShfdXNycC0KPmdldF90aW1lX25vdygpK3VoZDo6dGltZV9zcGVjX3QoMC4xMDApKTsK
ICAgICAgICBfZGVsYXlfbXMoMjUwKTsKICAgICAgICBfdXNycC0+Y2xlYXJfY29tbWFuZF90aW1l
KCk7CiAgICAgICAgcnhfdHVuZWQgPSB0cnVlOwogICAgICAgIF9jdXJyZW50X3J4X2ZyZXEgPSBy
eF9mcmVxOwogICAgfQogICAgaWYgKHR4X3R1bmVkIGFuZCBub3QgcnhfdHVuZWQpIHsKICAgICAg
ICBfZGVsYXlfbXMoNTApOwogICAgfQp9Cgp0byBnZXQgYSB2YWx1ZTogKHNpbXBsaWZpZWQgZm9y
IGJyZXZpdHkvY2xhcml0eSkKcmVjZWl2ZSBzb21lIHNhbXBsZXMgb2YgY2hhbm5lbCBhIGFuZCBj
aGFubmVsIGIKQSA9IGZmdChhKQpCID0gZmZ0KGIpCmFpbmRleCA9IGZpbmQgdGhlIGluZGV4IG9m
IHRoZSB0b25lIGluIEEgKGJ5IGxvb3BpbmcgdGhyb3VnaCB0aGUgdmFsdWVzCm9mIHRoZSBtYWdu
aXR1ZGUgb2YgQSkKYmluZGV4ID0gZmluZCB0aGUgaW5kZXggb2YgdGhlIHRvbmUgaW4gQiAoYnkg
bG9vcGluZyB0aHJvdWdoIHRoZSB2YWx1ZXMKb2YgdGhlIG1hZ25pdHVkZSBvZiBCKQplbnN1cmUg
dGhhdCB0aGUgdG9uZSBpcyBhdCB0aGUgZXhwZWN0ZWQgZnJlcXVlbmN5IGZvciBib3RoIGNoYW5u
ZWxzClIgPSBCW2JpbmRleF0gLyBBW2FpbmRleF07ClJkYiA9IDIwICogbG9nMTAoc3RkOjphYnMo
UikpOwpScGhhc2UgPSBzdGQ6OmFyZyhSKSoxODAvTV9QSTsKClJlc3BlY3RmdWxseSwKRHVzdGlu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3Rz
LmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
