Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C40AB84EB4
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2019 16:27:58 +0200 (CEST)
Received: from [::1] (port=44906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvMux-0000Qh-Tv; Wed, 07 Aug 2019 10:27:55 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:34072)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1hvMuu-0000Ml-Es
 for usrp-users@lists.ettus.com; Wed, 07 Aug 2019 10:27:52 -0400
Received: by mail-wm1-f65.google.com with SMTP id e8so1492177wme.1
 for <usrp-users@lists.ettus.com>; Wed, 07 Aug 2019 07:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=vnGf15q8mdENDao5BTFaHbAauehCx2v4SPrjPYOb+z8=;
 b=ueagtdB+DWzoBjQ31WKaJ9NHj0IjEXg8nhT/Yccx7UGbdi0fdfjNx+Kd+aX5BXsLra
 /9PDgczXowCLcz9NKqPCi/YwTevTuOryGbWHkmK3aRt1LIvznqspOP7aaAfKGwjMyf8d
 BWq4BBUb0WvEEgSNHuZr4Drc42wDmwHDZ+97tZXJh2Mrc1zCCFMUE34JCDkAhetsEi0j
 7UD+4074cpZabmqU1shd15I3bokHk86zF5TOGl67s3hZDoFJS4qFrmvuxxnZggP423PY
 6ZD4od8Km0Uc9J2GZSIzrvLybQtVgAU6yvttGyk3v173IIAEK9Fd1pY0AWdzt+YdNSvB
 5rxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=vnGf15q8mdENDao5BTFaHbAauehCx2v4SPrjPYOb+z8=;
 b=GXiVYIKZFO6zT0e49UomtcmrtNSrwU1LC5k6gv3EoD19E7h7RqF1gBjXqYePOB/oxg
 csV+kSiFUyYkiO2GFja8xsQzdVi9OJ/GYaUfNH1C/f+3NrKCikcRf3OJOEkInzGPny4w
 /f8SX3gEuqN5YwZBNW6YYUNGZopkcXF7uFjg/nClYCXXgivTMrybWXHXg6WeYLuXauq7
 WzPYIMkvjPUg93Ecc/RAqOBSA3siObCqxeJ7BVv9YjHn6AcuEu8zW34DzyiiC3XUtlpm
 m3PoULIK06oivDMHoA+sv12mf3HiGsm70gFX3PUx/Ajc0YhyxqCy/YKGOq22rTWym2b7
 FElA==
X-Gm-Message-State: APjAAAXZq3aF2HiFYA7md5c4cHBlcwmodioojaf16jICEVtGjFug4JLF
 /Ukq4iV3HQf1DY5c/q0BJneoGAdL
X-Google-Smtp-Source: APXvYqx1OKFe0zCqYoJFtDpV7sovfB8P3uw7s8a0cpPZD4KzsNYCDVA40sFZ6ObxQ/D5Gi9uwAsLDQ==
X-Received: by 2002:a1c:be11:: with SMTP id o17mr220546wmf.115.1565188031286; 
 Wed, 07 Aug 2019 07:27:11 -0700 (PDT)
Received: from racer.hostalia.de ([2a00:1398:9:fb03:ff83:1873:1461:432e])
 by smtp.gmail.com with ESMTPSA id t63sm227488wmt.6.2019.08.07.07.27.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 07 Aug 2019 07:27:10 -0700 (PDT)
Message-ID: <9d44d8643eeef4b75d671245d7b395a890568996.camel@ettus.com>
To: "Mitchell, Paul" <paul.mitchell@testllc.com>, Derek Kozel
 <derek@bitstovolts.com>, "discuss-gnuradio@gnu.org"
 <discuss-gnuradio@gnu.org>
Date: Wed, 07 Aug 2019 16:27:07 +0200
In-Reply-To: <0b667f2a35a842afb6dcbb877664f16e@MBX081-W6-CO-1.exch081.serverpod.net>
References: <C4AC9734-5EE2-49F4-8D9D-92435C86573B@testllc.com>
 , <0f8d85b1-76e9-e249-ab28-108208ef6a06@bitstovolts.com>
 <0b667f2a35a842afb6dcbb877664f16e@MBX081-W6-CO-1.exch081.serverpod.net>
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

RGVhciBQYXVsLAoKSSdkIHJlY29tbWVuZCB0YWtpbmcgdGhpcyB0byB0aGUgVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgKGluIENDKSwgc2luY2UKaXQncyBub3QgcmVhbGx5IEdOVSBSYWRpby1yZWxh
dGVkLgoKU2luY2UgdGhhdCBjbG9jayByYXRlIHNldHRpbmcgZG9lc24ndCByZWFsbHkgImV4aXN0
IiB1bnRpbCB0aGUgZGV2aWNlCmlzIG9wZXJhdGluZywgeW91IGNhbid0IHF1ZXJ5IHRoYXQgZnJv
bSBhbnkgcHJvZ3JhbSB0aGFuIHRoZSBwcm9ncmFtCmN1cnJlbnRseSB1c2luZyB0aGUgVVNSUCAo
YnV0IHRoYXQgcHJvZ3JhbSB3b3VsZCBrbm93LCBhbnl3YXksIGJlY2F1c2UKaXQgZWl0aGVyIHNl
dCB0aGUgbWFzdGVyIGNsb2NrIHJhdGUgdG8gMTg0LjMyIE1IeiBvciBpdCBsZWZ0IGl0IGF0IDIw
MApNSHopLgoKQmVzdCByZWdhcmRzLApNYXJjdXMKCk9uIFdlZCwgMjAxOS0wOC0wNyBhdCAxNDox
OCArMDAwMCwgTWl0Y2hlbGwsIFBhdWwgd3JvdGU6Cj4gSeKAmW0gZmluZSB1c2luZyBvbmUgb2Yg
dGhlIHN1cHBvcnRlZCByYXRlcy4gIFRoYXTigJlzIHRvdGFsbHkgZmluZS4gIEkKPiB3b3VsZCBq
dXN0IGxpa2UgdG8ga25vdyBob3cgdG8gY2hlY2sgdGhlIGNsb2NrIHJhdGUgYW5kIHN3YXAgYmV0
d2Vlbgo+IHRoZSB0d28gZm9yIGV4cGVyaW1lbnRhdGlvbiBwdXJwb3Nlcy4gIElzIHRoZXJlIGEg
dGVybWluYWwgc3RyaW5nIEkKPiBjYW4gcnVuIGluIExpbnV4IHRvIGRvIHRoaXM/Cj4gIAo+ICAK
PiBQYXVsIE1pdGNoZWxsCj4gRW5naW5lZXJpbmcgVGVjaG5pY2lhbiBJVgo+IHBhdWwubWl0Y2hl
bGxAdGVzdGxsYy5jb20KPiAyNTYuNzE2LjkwNTYgKFdvcmspCj4gMjU2LjI4OS4zNTgxIChDZWxs
KQo+ICAKPiBGcm9tOiBEZXJlayBLb3plbAo+IFNlbnQ6IFR1ZXNkYXksIEF1Z3VzdCA2LCAyMDE5
IDE6NTYgUE0KPiBUbzogZGlzY3Vzcy1nbnVyYWRpb0BnbnUub3JnCj4gU3ViamVjdDogUmU6IFtE
aXNjdXNzLWdudXJhZGlvXSBDbG9jayByYXRlIGNoYW5nZSBvbiB4MzAwCj4gIAo+IEhpIFBhdWws
Cj4gCj4gV2hhdCByYXRlIGRvIHlvdSB3YW50IHRvIGFkanVzdCBpdCB0byBhbmQgZm9yIHdoYXQg
cHVycG9zZT8gVGhlIFgzMDAKPiBzdXBwb3J0cyBhIG1hc3RlciBjbG9jayByYXRlIG9mIDIwMCBN
Uy9zIGFuZCAxODQuMzIgTVMvcy4gVGhlIGJ1aWx0Cj4gaW4KPiBEU1AgY2FuIGNvbnZlcnQgdG8g
YW4gaW50ZWdlciBkaXZpc29yIHNhbXBsZSByYXRlIG9mIG9uZSBvZiB0aG9zZQo+IHR3by4KPiBB
ZGRpbmcgc3VwcG9ydCBmb3IgYW5vdGhlciByYXRlIHdvdWxkIHJlcXVpcmUgZWl0aGVyIGEgbG90
IG9mCj4gc29mdHdhcmUKPiB3b3JrIG9yIGltcGxlbWVudGluZyBhIHJhdGlvbmFsIHJlc2FtcGxl
ciBpbiB0aGUgRlBHQSBpbiB3aGljaCBjYXNlCj4geW91Cj4gd291bGQgbmVlZCBhIFZpdmFkbyBs
aWNlbnNlLgo+IAo+IGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3VzcnBfeDN4
MC5odG1sCj4gCj4gUmVnYXJkcywKPiBEZXJlawo+IAo+IE9uIDA2LzA4LzIwMTkgMTk6MDksIE1p
dGNoZWxsLCBQYXVsIHdyb3RlOgo+ID4gSSBuZWVkIHRvIGFkanVzdCB0aGUgY2xvY2sgcmF0ZSBv
biBhIFVTUlAgeDMwMC4gSXMgdGhlcmUgYSBzaW1wbGUKPiB3YXkgdG8gZG8gdGhpcyBvciBkbyBJ
IG5lZWQgdG8gdXNlIFZpdmFkbyB0byBhY2Nlc3MgdGhlIEZQR0EgaW1hZ2UKPiBzb21laG93PyBJ
IGFtIHVzaW5nIExpbnV4IGZvciBldmVyeXRoaW5nLiAKPiA+Cj4gPiBQYXVsIE1pdGNoZWxsCj4g
PiBFbmdpbmVlcmluZyBUZWNobmljaWFuIElWCj4gPiBwYXVsLm1pdGNoZWxsQHRlc3RsbGMuY29t
Cj4gPiAyNTYuNzE2LjkwNTYgKFdvcmspCj4gPiAyNTYuMjg5LjM1ODEgKENlbGwpCj4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gRGlzY3Vzcy1n
bnVyYWRpbyBtYWlsaW5nIGxpc3QKPiA+IERpc2N1c3MtZ251cmFkaW9AZ251Lm9yZwo+ID4gaHR0
cHM6Ly9saXN0cy5nbnUub3JnL21haWxtYW4vbGlzdGluZm8vZGlzY3Vzcy1nbnVyYWRpbwo+IAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gRGlz
Y3Vzcy1nbnVyYWRpbyBtYWlsaW5nIGxpc3QKPiBEaXNjdXNzLWdudXJhZGlvQGdudS5vcmcKPiBo
dHRwczovL2xpc3RzLmdudS5vcmcvbWFpbG1hbi9saXN0aW5mby9kaXNjdXNzLWdudXJhZGlvCj4g
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gRGlzY3Vz
cy1nbnVyYWRpbyBtYWlsaW5nIGxpc3QKPiBEaXNjdXNzLWdudXJhZGlvQGdudS5vcmcKPiBodHRw
czovL2xpc3RzLmdudS5vcmcvbWFpbG1hbi9saXN0aW5mby9kaXNjdXNzLWdudXJhZGlvCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVz
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
