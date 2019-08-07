Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ABE84F29
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2019 16:51:54 +0200 (CEST)
Received: from [::1] (port=52162 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvNI8-0002OU-MX; Wed, 07 Aug 2019 10:51:52 -0400
Received: from mail-wm1-f53.google.com ([209.85.128.53]:51123)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1hvNI4-0002Ip-99
 for usrp-users@lists.ettus.com; Wed, 07 Aug 2019 10:51:48 -0400
Received: by mail-wm1-f53.google.com with SMTP id v15so361135wml.0
 for <usrp-users@lists.ettus.com>; Wed, 07 Aug 2019 07:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=OGNx7P0j504TPF541g5A6NnQ3BwF1V7MIJHvBcvH2cQ=;
 b=iKeoovrXBHXl+abnz6HU+YpWxdeKdfRSzq9gDYgh5ong1X/ifqK/5mHnBW/lRqi7P8
 EVsMM2aMqsP10zu58anyrmxiB0ADzjpIIzQ+oAfGw9D9u9RjcJ/XBbl7ua6v4Z4AM+Fy
 qJxxqZvF1CSW08at5i8XygIORwQBNoMQia/Mv+4dRLYp+rL1waUGQm69nCNJ3E3qFo3J
 /oI4G+/LGClXuo5+DjsJ7Sy2dT8Q4GB1B1jnVJNDyQSosU9VlVQu6poDiN60QrmYczf1
 tdIzD/VKalAcdZt2kPm3/RULmwad8yPC06DPEPVuA4UQnE8G2nA3RRYC935FUqCSLbL8
 27/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=OGNx7P0j504TPF541g5A6NnQ3BwF1V7MIJHvBcvH2cQ=;
 b=i7n2ZPLEUsB4W7MVSjDdyS9zBZmF73juTbBj5nLziYd1kRUQLPO1PMDVx/kIjlNc1T
 OI0J2fJEfKC4KoyJanf84Gnh7NKXPDjp4S1gj7f4ipkaVut1k0sT3qATerO5xPZAvAwr
 vzzmlamYa//Dds0N6UOEr3pMkKg1s2++mvahQF822OjAAWYTrBL76yHgoiUexDqKA3nQ
 FGrlIKaW2iL7KZHLVkALTww7LL3qA6ztE2G/NG6duq+0hVuknlcDzrzS7gwmqpJUm2Dg
 L+3FTfdu3FOmYTKhMjaFnxiG2x2BVzuKyPp3RC1jEMn1AAgD5cvXSM6Ik/19ZZGAXaO0
 mzXw==
X-Gm-Message-State: APjAAAXPcLkPq3xt2TFUFo9DtyhQLC27sTeqlWKOJ6BsBXmmOWJfQsoK
 E5Vo8RokPglG4eaOTFdUd+3pSYaK
X-Google-Smtp-Source: APXvYqzxBn1/KL5Ca5xDbaoBbH0KEEjAs05dyok5tL82sMaf8emjUixBw1WjCeFS/mCQa8Ed2yfp5Q==
X-Received: by 2002:a05:600c:2385:: with SMTP id m5mr357815wma.4.1565189467246; 
 Wed, 07 Aug 2019 07:51:07 -0700 (PDT)
Received: from racer.hostalia.de ([2a00:1398:9:fb03:ff83:1873:1461:432e])
 by smtp.gmail.com with ESMTPSA id c6sm331026wma.25.2019.08.07.07.51.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 07 Aug 2019 07:51:06 -0700 (PDT)
Message-ID: <8c0f5c5e820839fafc7ad211dbe1ff85d7877d0c.camel@ettus.com>
To: "Mitchell, Paul" <paul.mitchell@testllc.com>, Derek Kozel
 <derek@bitstovolts.com>, "discuss-gnuradio@gnu.org"
 <discuss-gnuradio@gnu.org>
Date: Wed, 07 Aug 2019 16:51:04 +0200
In-Reply-To: <fadb10f788ff4778b4af27f4b5a22a62@MBX081-W6-CO-1.exch081.serverpod.net>
References: <C4AC9734-5EE2-49F4-8D9D-92435C86573B@testllc.com>
 , <0f8d85b1-76e9-e249-ab28-108208ef6a06@bitstovolts.com>
 <0b667f2a35a842afb6dcbb877664f16e@MBX081-W6-CO-1.exch081.serverpod.net>
 ,<9d44d8643eeef4b75d671245d7b395a890568996.camel@ettus.com>
 <fadb10f788ff4778b4af27f4b5a22a62@MBX081-W6-CO-1.exch081.serverpod.net>
Organization: Ettus Research
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
Subject: Re: [USRP-users] [Discuss-gnuradio] Clock rate change on x300
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

WW91IGNhbiEKCklmIHlvdSdyZSB1c2luZyBHUkMgdG8gZGVzaWduIHlvdXIgR05VIFJhZGlvIHN5
c3RlbSwgaXQncyB0aGUgIkNsb2NrClJhdGUiIHByb3BlcnR5IG9mIHRoZSBVSEQgVVNSUCBTb3Vy
Y2UgLyBTaW5rIGJsb2NrczsgaWYgeW91J3JlIGRpcmVjdGx5CmNvZGluZywgeW91IHdhbnQgdG8g
Y2FsbCBzZXRfY2xvY2tfcmF0ZSgpIGJlZm9yZSBkb2luZyBhbnl0aGluZyBlbHNlLApvciBzdXBw
bHlpbmcgIm1hc3Rlcl9jbG9ja19yYXRlPTE4NC4zMmU2IiB3aXRoIHlvdXIgZGV2aWNlIGFkZHJl
c3MuCgpCZXN0IHJlZ2FyZHMsCk1hcmN1cwoKT24gV2VkLCAyMDE5LTA4LTA3IGF0IDE0OjMwICsw
MDAwLCBNaXRjaGVsbCwgUGF1bCB3cm90ZToKPiBPaCBJIHNlZS4gIERvZXMgdGhhdCBtZWFuIHRo
YXQgSSBjYW4gdXNlIEdOVSBSYWRpbyB0byBjaGFuZ2UgaXQ/ICBJZgo+IG5vdCwgSeKAmWxsIGFz
ayB0aGUgVVNSUCBndXlzIGFzIHlvdSBzdWdnZXN0ZWQuCj4gIAo+ICAKPiBQYXVsIE1pdGNoZWxs
Cj4gRW5naW5lZXJpbmcgVGVjaG5pY2lhbiBJVgo+IHBhdWwubWl0Y2hlbGxAdGVzdGxsYy5jb20K
PiAyNTYuNzE2LjkwNTYgKFdvcmspCj4gMjU2LjI4OS4zNTgxIChDZWxsKQo+ICAKPiBGcm9tOiBN
YXJjdXMgTcO8bGxlcgo+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDcsIDIwMTkgOToyNyBBTQo+
IFRvOiBNaXRjaGVsbCwgUGF1bDsgRGVyZWsgS296ZWw7IGRpc2N1c3MtZ251cmFkaW9AZ251Lm9y
Zwo+IENjOiB1c3JwLXVzZXJzCj4gU3ViamVjdDogUmU6IFtEaXNjdXNzLWdudXJhZGlvXSBDbG9j
ayByYXRlIGNoYW5nZSBvbiB4MzAwCj4gIAo+IERlYXIgUGF1bCwKPiAKPiBJJ2QgcmVjb21tZW5k
IHRha2luZyB0aGlzIHRvIHRoZSBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAoaW4gQ0MpLAo+IHNp
bmNlCj4gaXQncyBub3QgcmVhbGx5IEdOVSBSYWRpby1yZWxhdGVkLgo+IAo+IFNpbmNlIHRoYXQg
Y2xvY2sgcmF0ZSBzZXR0aW5nIGRvZXNuJ3QgcmVhbGx5ICJleGlzdCIgdW50aWwgdGhlIGRldmlj
ZQo+IGlzIG9wZXJhdGluZywgeW91IGNhbid0IHF1ZXJ5IHRoYXQgZnJvbSBhbnkgcHJvZ3JhbSB0
aGFuIHRoZSBwcm9ncmFtCj4gY3VycmVudGx5IHVzaW5nIHRoZSBVU1JQIChidXQgdGhhdCBwcm9n
cmFtIHdvdWxkIGtub3csIGFueXdheSwKPiBiZWNhdXNlCj4gaXQgZWl0aGVyIHNldCB0aGUgbWFz
dGVyIGNsb2NrIHJhdGUgdG8gMTg0LjMyIE1IeiBvciBpdCBsZWZ0IGl0IGF0Cj4gMjAwCj4gTUh6
KS4KPiAKPiBCZXN0IHJlZ2FyZHMsCj4gTWFyY3VzCj4gCj4gT24gV2VkLCAyMDE5LTA4LTA3IGF0
IDE0OjE4ICswMDAwLCBNaXRjaGVsbCwgUGF1bCB3cm90ZToKPiA+IEnigJltIGZpbmUgdXNpbmcg
b25lIG9mIHRoZSBzdXBwb3J0ZWQgcmF0ZXMuICBUaGF04oCZcyB0b3RhbGx5IGZpbmUuICBJCj4g
PiB3b3VsZCBqdXN0IGxpa2UgdG8ga25vdyBob3cgdG8gY2hlY2sgdGhlIGNsb2NrIHJhdGUgYW5k
IHN3YXAKPiBiZXR3ZWVuCj4gPiB0aGUgdHdvIGZvciBleHBlcmltZW50YXRpb24gcHVycG9zZXMu
ICBJcyB0aGVyZSBhIHRlcm1pbmFsIHN0cmluZyBJCj4gPiBjYW4gcnVuIGluIExpbnV4IHRvIGRv
IHRoaXM/Cj4gPiAgCj4gPiAgCj4gPiBQYXVsIE1pdGNoZWxsCj4gPiBFbmdpbmVlcmluZyBUZWNo
bmljaWFuIElWCj4gPiBwYXVsLm1pdGNoZWxsQHRlc3RsbGMuY29tCj4gPiAyNTYuNzE2LjkwNTYg
KFdvcmspCj4gPiAyNTYuMjg5LjM1ODEgKENlbGwpCj4gPiAgCj4gPiBGcm9tOiBEZXJlayBLb3pl
bAo+ID4gU2VudDogVHVlc2RheSwgQXVndXN0IDYsIDIwMTkgMTo1NiBQTQo+ID4gVG86IGRpc2N1
c3MtZ251cmFkaW9AZ251Lm9yZwo+ID4gU3ViamVjdDogUmU6IFtEaXNjdXNzLWdudXJhZGlvXSBD
bG9jayByYXRlIGNoYW5nZSBvbiB4MzAwCj4gPiAgCj4gPiBIaSBQYXVsLAo+ID4gCj4gPiBXaGF0
IHJhdGUgZG8geW91IHdhbnQgdG8gYWRqdXN0IGl0IHRvIGFuZCBmb3Igd2hhdCBwdXJwb3NlPyBU
aGUKPiBYMzAwCj4gPiBzdXBwb3J0cyBhIG1hc3RlciBjbG9jayByYXRlIG9mIDIwMCBNUy9zIGFu
ZCAxODQuMzIgTVMvcy4gVGhlIGJ1aWx0Cj4gPiBpbgo+ID4gRFNQIGNhbiBjb252ZXJ0IHRvIGFu
IGludGVnZXIgZGl2aXNvciBzYW1wbGUgcmF0ZSBvZiBvbmUgb2YgdGhvc2UKPiA+IHR3by4KPiA+
IEFkZGluZyBzdXBwb3J0IGZvciBhbm90aGVyIHJhdGUgd291bGQgcmVxdWlyZSBlaXRoZXIgYSBs
b3Qgb2YKPiA+IHNvZnR3YXJlCj4gPiB3b3JrIG9yIGltcGxlbWVudGluZyBhIHJhdGlvbmFsIHJl
c2FtcGxlciBpbiB0aGUgRlBHQSBpbiB3aGljaCBjYXNlCj4gPiB5b3UKPiA+IHdvdWxkIG5lZWQg
YSBWaXZhZG8gbGljZW5zZS4KPiA+IAo+ID4gaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFs
L3BhZ2VfdXNycF94M3gwLmh0bWwKPiA+IAo+ID4gUmVnYXJkcywKPiA+IERlcmVrCj4gPiAKPiA+
IE9uIDA2LzA4LzIwMTkgMTk6MDksIE1pdGNoZWxsLCBQYXVsIHdyb3RlOgo+ID4gPiBJIG5lZWQg
dG8gYWRqdXN0IHRoZSBjbG9jayByYXRlIG9uIGEgVVNSUCB4MzAwLiBJcyB0aGVyZSBhIHNpbXBs
ZQo+ID4gd2F5IHRvIGRvIHRoaXMgb3IgZG8gSSBuZWVkIHRvIHVzZSBWaXZhZG8gdG8gYWNjZXNz
IHRoZSBGUEdBIGltYWdlCj4gPiBzb21laG93PyBJIGFtIHVzaW5nIExpbnV4IGZvciBldmVyeXRo
aW5nLiAKPiA+ID4KPiA+ID4gUGF1bCBNaXRjaGVsbAo+ID4gPiBFbmdpbmVlcmluZyBUZWNobmlj
aWFuIElWCj4gPiA+IHBhdWwubWl0Y2hlbGxAdGVzdGxsYy5jb20KPiA+ID4gMjU2LjcxNi45MDU2
IChXb3JrKQo+ID4gPiAyNTYuMjg5LjM1ODEgKENlbGwpCj4gPiA+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+IERpc2N1c3MtZ251cmFkaW8gbWFp
bGluZyBsaXN0Cj4gPiA+IERpc2N1c3MtZ251cmFkaW9AZ251Lm9yZwo+ID4gPiBodHRwczovL2xp
c3RzLmdudS5vcmcvbWFpbG1hbi9saXN0aW5mby9kaXNjdXNzLWdudXJhZGlvCj4gPiAKPiA+IAo+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IERp
c2N1c3MtZ251cmFkaW8gbWFpbGluZyBsaXN0Cj4gPiBEaXNjdXNzLWdudXJhZGlvQGdudS5vcmcK
PiA+IGh0dHBzOi8vbGlzdHMuZ251Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Rpc2N1c3MtZ251cmFk
aW8KPiA+ICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
ID4gRGlzY3Vzcy1nbnVyYWRpbyBtYWlsaW5nIGxpc3QKPiA+IERpc2N1c3MtZ251cmFkaW9AZ251
Lm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5nbnUub3JnL21haWxtYW4vbGlzdGluZm8vZGlzY3Vzcy1n
bnVyYWRpbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6
Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVz
LmNvbQo=
