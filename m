Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 596542B8015
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 16:06:11 +0100 (CET)
Received: from [::1] (port=56012 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfP24-0003ts-Ko; Wed, 18 Nov 2020 10:06:04 -0500
Received: from mail-qk1-f181.google.com ([209.85.222.181]:40050)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dw2zq@virginia.edu>) id 1kfP20-0003nU-Ug
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 10:06:00 -0500
Received: by mail-qk1-f181.google.com with SMTP id y197so2026385qkb.7
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 07:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=virginia-edu.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=9OerE7+TAuIAJz4wSx8cm1nVgRqdXWlHbyOzRS6JLMA=;
 b=W/cOmLUXQObexaS/Qcwzkh+T4ZaUVIfFYTp6ZfccUsa0FjakeWnDHpzbhqAOiuRPRd
 fC6W+639g+4ojqzOA0uJKHagBgdctuPZ9ZfJ/hQjbwBgR8jmFzdEdzNAG0JeAZqTCY0T
 OOh/HC3j6IJi6y7vlsNG+JLqd87kL+valX0GCpjPrhdcBlweIruIoMBPseika7Y7zX4e
 clhx7+wIHRF73NIqHG9nqNfeEA23S4tPUBylo3n73jrIrWyLwnasVPwvpUWEoPN1I+vT
 gNLyXj0X0ztvSg1hr7XGX6uU5XQA1tO3rpaiSnmO5nih7mNat5EtMoPGWOhYzeRoaZZt
 46GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=9OerE7+TAuIAJz4wSx8cm1nVgRqdXWlHbyOzRS6JLMA=;
 b=f350D3Zi68agvLlWWysalL3qrdkjfg6wipmd4yUqJnwWR8Us/C8lWIm1RAKZoc3es/
 STYY16QBLHwilVA+/ouyT7HU09M+ui0ge38GLJBSe0HthiOsu5ek7IFg09bS5nFvhynv
 v7AnK81xdDq07I2cVHWSNN9E2yiz54BnEuZBR0lCeA0OuhjUEhIPNFUKYFnUmS0Q2uij
 jhvQf2T7RELRCEU9K4fp7DIcp76y4bD8j48uVWmxhv2SW6ddPzJTSWTkXLbdvFS5C5Mc
 ZII0fZtvpH6PG6LK93seXD/fO31f/QNGdq6FNmnfTCEc8wnsaUu6mqk+0dxrrOL2/55J
 fC4A==
X-Gm-Message-State: AOAM533MmeBGh3Sjqv12gxaAFvUCbMqpAd0lxTNKR5jE+L6XLhu9ol9X
 EJueXHb2DvmWMKd9UHtuzdVxqw==
X-Google-Smtp-Source: ABdhPJygnb/S/FtLqTQIzE6Llh0UvQzutgN8vwLbrj4xCJPELjKMHUfQOS+K9tbWmW0YOyE4/QTS+w==
X-Received: by 2002:a37:78c:: with SMTP id 134mr5302758qkh.359.1605711920158; 
 Wed, 18 Nov 2020 07:05:20 -0800 (PST)
Received: from [10.32.128.226] (c-73-40-68-102.hsd1.va.comcast.net.
 [73.40.68.102])
 by smtp.gmail.com with ESMTPSA id z88sm14753770qtd.46.2020.11.18.07.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Nov 2020 07:05:19 -0800 (PST)
Message-ID: <3febd23ede0a7d4db42c46a01d5e2d97c478197e.camel@virginia.edu>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
Date: Wed, 18 Nov 2020 10:05:19 -0500
In-Reply-To: <5FAD7E0A.6000100@gmail.com>
References: <35ae5da8ab09a4c3bbb77d059d775a91b98d4c9b.camel@virginia.edu>
 <5FAC37FA.1060605@gmail.com>
 <4150ed6df83730bba2cbc5ef916af8064c284edf.camel@virginia.edu>
 <5FAC8763.1090904@gmail.com>
 <d66ce8deb5691b545bcdeb65fabf69b55306c692.camel@virginia.edu>
 <5FAC94F5.6060909@gmail.com>
 <774356b186ed10a2ee114b00cbb480473e30f77d.camel@virginia.edu>
 <5FAD7E0A.6000100@gmail.com>
User-Agent: Evolution 3.38.1 
MIME-Version: 1.0
Subject: Re: [USRP-users] twinrx consistent phase offset
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

T24gVGh1LCAyMDIwLTExLTEyIGF0IDEzOjI1IC0wNTAwLCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6
Cj4gT24gMTEvMTEvMjAyMCAxMToxMSBQTSwgRHVzdGluIFdpZG1hbm4gd3JvdGU6Cj4gPiBIaSBN
YXJjdXMKPiA+IAo+ID4gSSd2ZSBnaXZlbiB0aGlzIGEgdHJ5LCB1bmZvcnR1bmF0ZWx5IEknbSBy
dW5uaW5nIGludG8gYSBwcm9ibGVtCj4gPiB3aXRoCj4gPiB0aGF0LiBJJ3ZlIGFsd2F5cyBnb3R0
ZW4gc3RyYW5nZSBjcmFzaGVzIHdpdGggVUhEIDMuMTUgd2l0aCB0aGlzCj4gPiBjb2RlYmFzZSAo
cHJvYmFibHkgbXkgZmF1bHQsIGJ1dCBJJ20gbm90IHN1cmUgd2h5IHlldCkuCj4gPiBJIGNhbiBj
b2xsZWN0IGFyb3VuZCB+MjAwIGRhdGFwb2ludHMtaXNoIChhYm91dCAyMC1pc2ggcmV0dW5lcyBv
Zgo+ID4gdGhlCj4gPiByZWNlaXZlciksIGJlZm9yZSBpdCBjcmFzaGVzIHdpdGggb25lIG9mIHRo
ZXNlIGVycm9yczoKPiA+IAo+ID4gKioqKioKPiA+IHRlcm1pbmF0ZSBjYWxsZWQgYWZ0ZXIgdGhy
b3dpbmcgYW4gaW5zdGFuY2Ugb2YgJ3VoZDo6aW9fZXJyb3InCj4gPiDCoMKgIHdoYXQoKTrCoCBF
bnZpcm9ubWVudEVycm9yOiBJT0Vycm9yOiBbMC9ERENfMV0gc3Jfd3JpdGUoKSBmYWlsZWQ6Cj4g
PiBFbnZpcm9ubWVudEVycm9yOiBJT0Vycm9yOiBCbG9jayBjdHJsIChDRV8wNF9Qb3J0XzcwKSBu
byByZXNwb25zZQo+ID4gcGFja2V0IC0gQXNzZXJ0aW9uRXJyb3I6IGJvb2woYnVmZikKPiA+IMKg
wqAgaW4gdWludDY0X3QgY3RybF9pZmFjZV9pbXBsPF9lbmRpYW5uZXNzPjo6d2FpdF9mb3JfYWNr
KGJvb2wsCj4gPiBkb3VibGUpCj4gPiBbd2l0aCB1aGQ6OmVuZGlhbm5lc3NfdCBfZW5kaWFubmVz
cyA9IHVoZDo6RU5ESUFOTkVTU19CSUc7IHVpbnQ2NF90Cj4gPiA9Cj4gPiBsb25nIHVuc2lnbmVk
IGludF0KPiA+IMKgwqAgYXQgL2hvbWUvc2RyZGV2L3VoZC0zLjE1L2hvc3QvbGliL3Jmbm9jL2N0
cmxfaWZhY2UuY3BwOjE1MQo+ID4gCj4gPiBbMV3CoMKgwqAgMTkzNTA0IGFib3J0IChjb3JlIGR1
bXBlZCnCoCBMRF9MSUJSQVJZX1BBVEg9L29wdC9xdC0KPiA+IDUuMTUuMS9saWI6L29wdC91aGQt
My4xNS9saWI6L29wdC9ib29zdC0xLjc0LjAvbGliCj4gPiAqKioqKgo+ID4gCj4gPiAqKioqKgo+
ID4gUmVjZWl2ZXIgZXJyb3I6wqAgIkVSUk9SX0NPREVfVElNRU9VVCIgLCBjb250aW51aW5nLi4u
Cj4gPiAyMTo0NTowOC4xNjYgIyMgZGVmYXVsdC5mYXRhbCAjIyBzdGF0aWMgdm9pZAo+ID4gVWhk
U2RyVm5hOjp1aGRMb2dnZXIoKSwKPiA+IHVoZHNkcnZuYS5jcHA6ODY2Cj4gPiBbeDMwMF9md19j
dHJsLmNwcDo1M10gW1gzMDBdIDE5Mi4xNjguNDAuMjogeDMwMCBmdyBjb21tdW5pY2F0aW9uCj4g
PiBmYWlsdXJlICMxCj4gPiBFbnZpcm9ubWVudEVycm9yOiBJT0Vycm9yOiB4MzAwIGZ3IHBva2Uz
MiAtIHJlcGx5IHRpbWVkIG91dAo+ID4gWzFdwqDCoMKgIDE5MzYyMiBhYm9ydCAoY29yZSBkdW1w
ZWQpCj4gPiAqKioqKgo+ID4gCj4gPiBFYWNoIHRpbWUgaXQgZXJyb3JzIG91dCwgYSBoYXJkIHJl
c2V0IG9mIHRoZSBkZXZpY2UgaXMgcmVxdWlyZWQsCj4gPiBlbHNlCj4gPiBpdCB3aWxsIGVycm9y
IG91dCBpbW1lZGlhdGVseSBhZnRlciB0aGUgYXBwbGljYXRpb24gaXMgcmVzdGFydGVkCj4gPiB3
aXRoCj4gPiB0aGUgc2Vjb25kIGVycm9yIGFib3ZlLiBUaGlzIG1ha2VzIGF1dG9tYXRpb24gZGlm
ZmljdWx0Lgo+ID4gTmV2ZXJ0aGVsZXNzLAo+ID4gSSd2ZSBydW4gaXQgc2V2ZXJhbCB0aW1lcyBm
b2N1c2luZyBvbiBhcmVhcyB0aGF0IGxvb2tlZCBwcm9ibGVtYXRpYwo+ID4gaW4KPiA+IHRoZSBw
cmV2aW91cyBkYXRhc2V0LiBNYW55IChub3QgYWxsKSBvZiB0aG9zZSBwcm9ibGVtYXRpYyBhcmVh
cwo+ID4gc2VlbWVkCj4gPiB1bnByb2JsZW1hdGljIGhlcmUsIHRob3VnaCB0aGV5IHdlcmUgb25s
eSB0cmllZCBvbmNlIHNvIGl0cwo+ID4gZGlmZmljdWx0Cj4gPiB0byBzYXkgZm9yIHN1cmUuIE9u
IHRoZSBvdGhlciBoYW5kLCBmcmVxdWVuY2llcyB0aGF0IHdlcmUgZ2l2aW5nIG1lCj4gPiBpbnZh
bGlkIHJlc3VsdHMgYmVmb3JlIChubyB0b25lIGF0IHRoZSBleHBlY3RlZCBJRiBmcmVxdWVuY3kg
b24gb25lCj4gPiBvcgo+ID4gYm90aCBvZiB0aGUgY2hhbm5lbHMsIGNlbGwgYmFja2dyb3VuZCBj
b2xvciBoaWdobGlnaHRlZCByZWQgaW4gdGhlCj4gPiBhdHRhY2hlZCBmaWxlcykgYXJlIHN0aWxs
IHByb2JsZW1hdGljIGhlcmUgaG93ZXZlci4KPiA+IAo+ID4gaHR0cHM6Ly91LnBjbG91ZC5saW5r
L3B1Ymxpbmsvc2hvdz9jb2RlPVhaN0tuelhaZ3FZUUVsVWFnS1JSS1NmdWdRUEo0eXk2NVRvWAo+
ID4gCj4gPiBEdXN0aW4KPiA+IAo+ID4gCj4gU2lnaCwgT0ssIHNvIGxldCdzIHN0aWNrIHdpdGgg
VUhEIDQuMC4KPiAKPiBJJ2xsIG5vdGUgdGhhdCBnaXZlbiB0aGUgbnVtYmVycyB5b3UndmUgcHJv
dmlkZWQsIHlvdSdyZSBvbmx5Cj4gb2JzZXJ2aW5nIAo+IGZvciBhYm91dCAxMCBzYW1wbGVzL2Zy
ZXF1ZW5jeS7CoCBUaGF0J3Mgbm90IGVub3VnaCB0aW1lCj4gwqDCoCBmb3IgdGhlIGhhcmR3YXJl
IHRvICJzZXR0bGUiLS1hdCBsZWFzdCBnaXZlbiB0aGUgMTAwTXNwcyB5b3UncmUgCj4gdXNpbmcu
wqAgVGhlIGNvbW1hbmQtdGltZSBmb3IgdHVuaW5nIGlzIHRoZSB0aW1lIGF0IHdoaWNoCj4gwqDC
oCB0dW5pbmcgd2lsbCBiZSAqaW5pdGlhdGVkKi0tdGhlcmUnbGwgYmUgc29tZSBsYXRlbmN5IGR1
ZSB0byB0aGluZ3MKPiBsaWtlIFNQSS9JMkMgYnVzIGxhdGVuY3ksIGFuZCB0aGUgdmFnYXJpZXMg
b2YgYW5hbG9nIGhhcmR3YXJlCj4gwqDCoCBjaGFuZ2luZyBlcXVpbGlicml1bSwgUExMcyBsb2Nr
aW5nIGludG8gcGxhY2UsIGV0Yy4KPiAKPiAKCk1hcmN1cyBldCBhbC4sCgoxMCBzYW1wbGVzL2Zy
ZXF1ZW5jeT8gTm8sIEknbSBjb2xsZWN0aW5nIGFib3V0IDJeMTcgc2FtcGxlcyBmb3IgZWFjaApk
YXRhcG9pbnQgIChnaXZlcyBhIGZyZXF1ZW5jeSByZXNvbHV0aW9uIG9mIGFib3V0IDc2M0h6LCB3
aGljaCBpcwpwcm9iYWJseSBvdmVya2lsbCBmb3IgbXkgcHVycG9zZXMsIGJ1dCBJJ3ZlIG5vdGlj
ZWQgSSBnZXQgY29uc2lzdGVudApyZXN1bHRzIHRoaXMgd2F5IGFuZCBpdCBzZWVtcyB0byBiZSBm
YXN0ZXIgdGhhbiB1c2luZyBzbWFsbGVyIEZGVHMgYW5kCmRvaW5nIGF2ZXJhZ2luZykuClJvdWdo
bHkgd2hhdCBJJ3ZlIGJlZW4gZG9pbmcgaXMgdGhpczoKKiogc3RhcnQgYSB0eCBzdHJlYW1lciBp
biBhIHNlcGFyYXRlIHRocmVhZCB0aGF0IGlzIGFsd2F5cyBydW5uaW5nCioqIHN0YXJ0IGEgcngg
c3RyZWFtZXIgaW4gYSBzZXBhcmF0ZSB0aHJlYWQgdGhhdCBpcyBhbHdheXMgcnVubmluZwooZGlz
Y2FyZCBpZiBub3QgY3VycmVudGx5IGNvbGxlY3Rpbmcgc2FtcGxlcyBpLmUuIG1vc3Qgb2YgdGhl
IHRpbWUpCioqIGZvciBlYWNoIGZyZXF1ZW5jeSB3aGVyZSBJIHdhbnQgdG8gbWVhc3VyZQoqKioq
IFR1bmUgdGhlIFRYCioqKiogVHVuZSB0aGUgUlggKGlmIG5lZWRlZCkKKioqKioqIHRpbWVkIGNv
bW1hbmQgMTAwbXMgaW4gZnV0dXJlCioqKioqKiBpc3N1ZSB0dW5lIGNvbW1hbmQKKioqKioqIHRp
bWVkIGNvbW1hbmQgMzUwbXMgaW4gZnV0dXJlCioqKioqKiBpc3N1ZSB0dW5lIGNvbW1hbmQgYWdh
aW4KKioqKioqIHdhaXQgZm9yIDYwMG1zLiBmb3IgdGltZWQgY29tbWFuZHMgdG8gYmUgaXNzdWVk
IGFuZCBSWC9UWCB0bwpzZXR0bGUKKioqKiBpZiB0aGUgUlggd2Fzbid0IHR1bmVkLCB3YWl0IGZv
ciA1MG1zIGZvciBUWCB0byBzZXR0bGUgCioqKiogY29sbGVjdCBvbmUgRkZUIHdvcnRoIG9mIHNh
bXBsZXMgKDJeMTcgaW4gdGhpcyBjYXNlKQoqKioqIHByb2Nlc3MgdGhhdCBkYXRhCgoKRHVzdGlu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3Rz
LmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
