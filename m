Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E03A1905C1
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2020 07:29:53 +0100 (CET)
Received: from [::1] (port=36934 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGd4Q-0007qV-Un; Tue, 24 Mar 2020 02:29:50 -0400
Received: from mail-pj1-f45.google.com ([209.85.216.45]:34250)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ianb@ionconcepts.com>)
 id 1jGd4M-0007kL-I4
 for usrp-users@lists.ettus.com; Tue, 24 Mar 2020 02:29:46 -0400
Received: by mail-pj1-f45.google.com with SMTP id q16so879528pje.1
 for <usrp-users@lists.ettus.com>; Mon, 23 Mar 2020 23:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionconcepts-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=oLAoQdR3jfPq/Uj3nfzHANq9GRdocA6N3whA/spjJYI=;
 b=kXqOxBARRw5H0NTRrkYxOTmMjs+sHdMD6CwjsObIUgkYZ6LB3iDJlRaDPydyIkJ6Ts
 rHJClbVNNRGGoWPowPJf071Jlc23D2vIlycpQStEOsxAOJ51nZKLapZX5l9UKQFmD22Q
 i2WVeZUHV4lMOxUr202mLyYOO9NIxBmlQ0pPmG2c/d7NaM9I0ZOq36m705fpIcqLnQ66
 X65Gt53O+1HFxWqg+i4e66ijiimsoSnMaJmi4B0QwwI8styB8MLT+Sok9h+HRaXIKPKB
 /m6T8zU32aWv1CIj8Xow9+4m4jZ9Je/A2LUEZWp0dxl1zjjrE71GO6WJtmcThpDdwqI/
 iIRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=oLAoQdR3jfPq/Uj3nfzHANq9GRdocA6N3whA/spjJYI=;
 b=CewoRc3rMv6gLB2HO0wnbakynQPMe8y5+deg0Gba+BLs9V1aB6cUFsYluqgGr1WKKR
 8dFUTjjT/V2atDbKo4ewyzRPiJ+eszTdv9561YuZyCSzmDP01Zm2YCRKoeYGa9S60W73
 Au/wDFmhl0UqlwNbQ6INz1qfsReEyGurNqMdx9+V95MBgEELRchaoB0EzSSonoYMM610
 xf4hKnJMqojdCi4eB4tR0/lEngjWHORicvYtCnW706ifUteHMhZl8JIcUu3uCyp4hj04
 88ju0xoHrkyqRduRXnk00VDKy7FYZNEJyncndJnl4oPW56hm1K1I5Un1ihpg+2zZcDYi
 Y6Cw==
X-Gm-Message-State: ANhLgQ3CtqMqMQ7Y0Tu35iudiN+/wBTT25ox2RbMX/ERtN8zgiLKWb9h
 xMWmDCqxuJ63mRGcdnWzbk/U1C4D4CM=
X-Google-Smtp-Source: ADFU+vte8H50quQ1JnH7O3Wc7TKC6SJ5dT7+Yz9wXrmjOV64TC6K5ACp0x1ugfOJwjad7CcV0GaoTw==
X-Received: by 2002:a17:902:bc4a:: with SMTP id
 t10mr2829219plz.199.1585031345538; 
 Mon, 23 Mar 2020 23:29:05 -0700 (PDT)
Received: from pox-laden-system.localdomain
 (c-73-222-38-19.hsd1.ca.comcast.net. [73.222.38.19])
 by smtp.gmail.com with ESMTPSA id y142sm15742039pfc.53.2020.03.23.23.29.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2020 23:29:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
In-Reply-To: <a997d14f-080d-a30c-6400-2cd1766842cb@ettus.com>
Date: Mon, 23 Mar 2020 23:29:02 -0700
Message-Id: <834000BB-7082-4963-BC19-BF23E223F248@ionconcepts.com>
References: <104f4e36-8a58-3f3b-0b9b-5d33f21b1c55@gmail.com>
 <a997d14f-080d-a30c-6400-2cd1766842cb@ettus.com>
To: =?utf-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
X-Mailer: Apple Mail (2.3273)
Subject: Re: [USRP-users] X310 broadcasting ICMP - information request
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ian Buckley via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ian Buckley <ianb@ionconcepts.com>
Cc: usrp-users@lists.ettus.com
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

T2xkIHRocmVhZCBidXQgZm9yIHRoZSBzYWtlIG9mIGEga25vd2xlZGdlIGFyY2hpdmU6IFRoZSBJ
Q01QIElSIHRyYWZmaWMgaXMgdGhlIFgzMTAgTGluayBzdGF0ZSByb3V0aW5nIHRhYmxlIHVwZGF0
ZXPigKZpdOKAmXMgdW5pcXVlIHRvIHRoZSBYMzEwLCBub3QgcHJlc2VudCBpbiB0aGUgTjIxMApB
bmQgSSBhbHNvLCBvbmx5IHRvbmlnaHQsIG9ic2VydmVkIG90aGVyIFgzMTAgZmlybXdhcmUgZHJp
dmVuIG5ldHdvcmsgc2VydmljZXMgcnVubmluZyBhdCB+M3ggdGhlIGludGVydmFsIEkgZXhwZWN0
ZWQgTWFyY3Vz4oCmc28gc29tZXRoaW5nIGlzIG9mZiBnbG9iYWxseSBpbiB0aGUgZmlybXdhcmUg
b3IgdGhlIHRpbWVyIHJlZ2lzdGVyIHRoYXQgZHJpdmVzIGl0LgotSWFuCgo+IE9uIEphbiA2LCAy
MDE3LCBhdCA2OjU1IEFNLCBNYXJjdXMgTcO8bGxlciB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+IAo+IEhpIFZsYWRpY2EsCj4gCj4gZXJyLCB0aGF0
J3MgYSBzdHJhbmdlIHByb2JsZW07IGFyZSB5b3Ugc3VyZSB5b3Ugd2FudCB0byBjaGFuZ2UgdGhl
Cj4gYmVoYXZpb3VyIG9mIHlvdXIgU0RSIGRldmljZXMgdG8gc3VpdCB0aGUgc2VjdXJpdHkgcHJv
ZHVjdCB0aGF0IHlvdSBwYXkKPiBmb3IsIGluIG9yZGVyIHRvIG1ha2UgeW91ciBuZXR3b3JrIGVh
c2llciB0byBzZWN1cmU/IEZyYW5rbHksIGlmIHRoYXQKPiBwcm9kdWN0IG1ha2VzIGFueSBwcm9i
bGVtczogSXQgbG9va3MgbGlrZSBzb21lIHNvZnR3YXJlIHRoYXQgcnVucyBvbiBhCj4gcGxhaW4g
TGludXggc3lzdGVtLCBwcm9iYWJseS4gVXNlIGVidGFibGVzIHRvIHNpbXBseSBtYWtlIHRoYXQg
c3lzdGVtCj4gZGVhZiB0byBwYWNrZXRzIGNvbWluZyBmcm9tIHlvdXIgVVNSUCdzIE1BQyBhZGRy
ZXNzLiBPciwgaWYgeW91ciBsb2NhbAo+IHN3aXRjaCBhbGxvd3MgdGhhdCwgc2ltcGx5IHB1dCB0
aGUgVVNSUCBpbiBhIHNlcGFyYXRlIFZMQU4uCj4gCj4gQnkgdGhlIHdheSwgdGhlIE4yMTAgYWxz
byBhbnN3ZXJzIHdpdGggYnJvYWRjYXN0IHBhY2tldHMgdG8gZGlzY292ZXJ5Cj4gcmVxdWVzdHMs
IGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5LiBTbyBpZiB0aGF0IHByb2JsZW0gcmVhbGx5IGlzCj4g
WDMxMC1zcGVjaWZpYywgdGhlbiBpdCdzIHByb2JhYmx5IGR1ZSB0byB0aGUgcGVyaW9kaWMgZ3Jh
dGl0aW91cyBBUlAKPiBwYWNrZXRzIChnYXJwLFsxXSkuIFRoYXQgaXMsIHRoZSBYMzAwIGluZm9y
bXMgdGhlIGRldmljZXMgb24gdGhlIG5ldHdvcmsKPiBhYm91dCB0aGUgZmFjdCB0aGF0IHRoZSBJ
UCBhZGRyZXNzIGl0IGhhcyBpcyBhbnN3ZXJlZCBieSBpdHMgTUFDCj4gYWRkcmVzczsgdGhhdCB3
YXksIHRoZXJlJ3MgYW4gQVJQIHRhYmxlIGVudHJ5IGZvciB0aGUgWDMxMC4gWW91IGNhbgo+IGFj
dHVhbGx5IGp1c3QgYnVpbGQgdGhlIGZpcm13YXJlIHlvdXJzZWxmIGFuZCBjb21tZW50IG91dCB0
aGUgZ2FycCgpCj4gY2FsbCwgaWYgeW91J3JlIGluY2xpbmVkIHRvIGRvIHNvLCB0aGVuCj4gCj4g
VG8gYmUgaG9uZXN0LCBJIHNlZSBhIHN0cmFuZ2UgYmVoYXZpb3VyIHJlbGF0ZWQgdG8gdGhhdDsg
bmFtZWx5LCB0aGUKPiBmaXJtd2FyZSBpbiB4MzAwX21haW4uYyBbMl0gY2xhaW1zIHRoYXQgdGhl
IGdhcnAoKSBmdW5jdGlvbiBnZXRzIGNhbGxlZAo+IGV2ZXJ5IChyb3VnaGx5LCBpbnRlZ2VyIGRp
dmlzaW9uLi4uKSAxIG1pbGxpc2Vjb25kLCBhbmQgdGhlIGdhcnAoKQo+IGZ1bmN0aW9uIHRoZW4g
b25seSBkb2VzIHNvbWV0aGluZyBldmVyeSA2MCwwMDAgY2FsbHMg4oCTIGkuZS4gb25lIHBhY2tl
dAo+IGV2ZXJ5IG1pbnV0ZS4gSSBqdXN0IGxpc3RlbmVkIGZvciB0aG9zZSwgYW5kIHRoZXkgZG9u
J3QgaGFwcGVuIGF0IDYwcwo+IHBlcmlvZHMsIGJ1dCBhdCAxOTIuNjVzIHBlcmlvZHMuIFdoaWNo
IGlzIGtpbmQgb2Ygc3RyYW5nZS4gSSdsbCByYWlzZQo+IHRoaXMgd2l0aCB0aGUgb3RoZXJzLgo+
IAo+IEJlc3QgcmVnYXJkcywKPiAKPiBNYXJjdXMKPiAKPiBbMV0gaHR0cHM6Ly93aWtpLndpcmVz
aGFyay5vcmcvR3JhdHVpdG91c19BUlAKPiBbMl0KPiBodHRwczovL2dpdGh1Yi5jb20vRXR0dXNS
ZXNlYXJjaC91aGQvYmxvYi9tYXN0ZXIvZmlybXdhcmUvdXNycDMveDMwMC94MzAwX21haW4uYyNM
NDUyCj4gCj4gT24gMDYuMDEuMjAxNyAxNTowMywgVmxhZGljYSBTYXJrIHZpYSBVU1JQLXVzZXJz
IHdyb3RlOgo+PiBIaSB0aGVyZSwKPj4gCj4+IEkgaGF2ZSBhIGZldyBYMzEwcy4gU29tZSBvZiB0
aGVtIGFyZSBjb25uZWN0ZWQgdG8gYSBkZXNrdG9wIFBDIGJ1dCBJCj4+IHdhbnQgdG8gYWNjZXNz
IHNvbWUgb2YgdGhlbSB2aWEgbXkgbGFwdG9wLiB0aGUgbGFwdG9wIGlzIGNvbm5lY3RlZCB0bwo+
PiBhIGxvY2FsIHN3aXRjaCBhbmQgdGhlIFgzMTAgaXMgYWxzbyBjb25uZWN0ZWQgdG8gaXQuIElu
IG9yZGVyIHRvIGhhdmUKPj4gaW50ZXJuZXQgYWNjZXNzIHRoZSBzd2l0Y2ggaXMgY29ubmVjdGVk
IHRvIHRoZSB3YWxsIGV0aGVybmV0IHBsdWcuCj4+IFRoaXMgcGx1ZyBpcyBtb25pdG9yZWQgYnkg
bWFjbW9uIGFuZCBkaXNjb25uZWN0cyB0aGUgcGx1ZyBmcm9tIExBTiwgaWYKPj4gc3RyYW5nZSBt
YWMgYXBwZWFycy4KPj4gCj4+IFRoZSBwcm9ibGVtIGFwcGVhcnMgZHVlIHRvIHRoZSBJQ01QIGlu
Zm9ybWF0aW9uIHJlcXVlc3QgZnJhbWVzCj4+IGJyb2FkY2FzdGVkIGJ5IHRoZSBYMzEwLiBTaW5j
ZSB0aGlzIGlzIGEgYnJvYWRjYXN0LCBpdCBpcyBhbHNvCj4+IGZvcndhcmRlZCB0byB0aGUgd2Fs
bCBwbHVnIGFuZCB0aGUgbWFjbW9uIGRpc2Nvbm5lY3RzIGl0IGZyb20gdGhlIExBTi4KPj4gCj4+
IAo+PiBXaXRoIHRoZSBOMjEwIEkgZGlkbid0IGhhZCB0aG9zZSBwcm9ibGVtcywgcHJvYmFibHkg
YmVjYXVzZSB0aGV5IGRvCj4+IG5vdCB0cmFuc21pdCBicm9hZGNhc3RzLgo+PiAKPj4gVGhlIHBy
b2JsZW0gaXMgdGhhdCBpIGhhdmUgYWxyZWFkeSBhIGZldyBtYWMgYWRkcmVzc2VzIGluIHRoZSBt
YWNtb24KPj4gYW5kIGVudGVyaW5nIG1vcmUgd291bGQgcmVxdWlyZSBhZGRpdGlvbmFsIGxpY2Vu
c2VzLgo+PiAKPj4gSXMgdGhlcmUgY2hhbmNlIHRvIGRpc2FibGUgdGhlc2UgYnJvYWRjYXN0cz8K
Pj4gCj4+IEJSLAo+PiBWbGFkaQo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4gVVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KPj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4gCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+
IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWls
bWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QK
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFu
L2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
