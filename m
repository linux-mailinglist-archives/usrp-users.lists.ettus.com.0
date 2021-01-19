Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FA52FBE62
	for <lists+usrp-users@lfdr.de>; Tue, 19 Jan 2021 19:00:32 +0100 (CET)
Received: from [::1] (port=58058 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l1vIs-0006ko-0G; Tue, 19 Jan 2021 13:00:30 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:35598)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l1vIo-0006cT-0k
 for USRP-users@lists.ettus.com; Tue, 19 Jan 2021 13:00:26 -0500
Received: by mail-qk1-f177.google.com with SMTP id n142so22763661qkn.2
 for <USRP-users@lists.ettus.com>; Tue, 19 Jan 2021 10:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=EGP9IbKdutM7NIPx6/WD9c4snVKxwW7oiYZMTR3K/CA=;
 b=ENZD3nuhE355dGqJdv8ptiJhErb9NTCQDeCUbVk9a4PFy/de60h9E+rwZjedUINtpb
 5g+3xip3dKA9pZG32LQhrxlXBttAKU1BFYsFJ6DYUSKeZT/KXAOK+EgHsAPMLzb1aRvd
 JJxghIsvfzHkTiPd0leET65GqyD/HzNaHBxqJeSsUuNyUUTUPh9A/3lWW9uVUQFhpYHw
 9SzKeroCEBApLZl+rMiqkBK7QxaeK8GUy28f6LRIIybSCLKa2IgN5LaKRkMsdxrhfhV3
 2MhkPKslhvHRzDp7FsS2ebA8IHlXS2lUpO5Sy72r+rXzjIrLAThKGfqaDf/NzvQo5KjN
 q93g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=EGP9IbKdutM7NIPx6/WD9c4snVKxwW7oiYZMTR3K/CA=;
 b=BUh+ErfQfDr/3dk1TYpLVhpIaD7IDazcnFkzeqeZ49WCWGBCE8OAZMGoqHS++GjrhL
 9MQHIu4FsC+OSEXi64gwWYhCT1ObnezRIdVs5dJk1fFVsASJyqbXdQSUAyAVIc2krSFB
 40LVUQz+dB3D3mocl7jfeeD+709ZFwQ6L2NmIm3+Ntz4FUVqGN6TV5r0QFfPcEDa7h0s
 wtS6q5F+xNKAjYVEy3+0u1PuaqlPhkvC47BpQ1yNxXj/n5wE22q2fWcXaF2HMebQHd+x
 DgeoIRqmSZ2SHHXBXLegpdP+XlV2PC3E2jDLJtGDdX7MSgeFYa2QKALgqdY+cIb3RoM3
 5UXg==
X-Gm-Message-State: AOAM5303wjvh2YLzhUehlxPs/q8hlbO7a1tw5lJd4tcEZ1MxmFfsnmsq
 mPSvRtp7G2bnqyD+XE+HvdE=
X-Google-Smtp-Source: ABdhPJy9RT2cYB2u7wuE1I/zq3uLMGXuJ0UNcNWEZFd63KKzGVgmW9lRl/SPvuYmJtwi0BAIzb9ZAw==
X-Received: by 2002:a05:620a:713:: with SMTP id
 19mr5638102qkc.424.1611079185440; 
 Tue, 19 Jan 2021 09:59:45 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id l24sm13715791qkl.46.2021.01.19.09.59.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Jan 2021 09:59:45 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 19 Jan 2021 12:59:44 -0500
Message-Id: <77FAB1A8-D231-4857-A72A-9CC97A4A002F@gmail.com>
References: <5b8dba4e-6084-e870-4cfc-e8d8d5044bb9@gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <5b8dba4e-6084-e870-4cfc-e8d8d5044bb9@gmail.com>
To: David Evans <dasypuss@gmail.com>
X-Mailer: iPhone Mail (18C66)
Subject: Re: [USRP-users] tune speed ussue
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
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

VGhlIHByb2JsZW0gaXMgdGhlcmUgYXJlIG9ubHkgYSBzbWFsbCBudW1iZXIgb2YgY2FsaWJyYXRp
b24tY2FjaGUgcmVnaXN0ZXJzLCBzbyBtYW5hZ2luZyB0aGF0IGNhY2hlIGFuZCBoYXZpbmcgdGhl
IGNhY2hlIG1hbmFnZW1lbnQgbm90IEFMU08gY29udHJpYnV0ZSB0byBsYXRlbmN5IGlzc3VlcyBp
cyBwcm9ibGVtYXRpYy4gCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEphbiAxOSwgMjAyMSwg
YXQgMTI6NTYgUE0sIERhdmlkIEV2YW5zIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbT4gd3JvdGU6Cj4gCj4g77u/SGkgYWxsLAo+IEkgYW0gbm90IGFuIGV4cGVydCBv
biB0aGlzLCBidXQgcmVjZW50bHkgc3BlYWtpbmcgdG8gc29tZW9uZSBhIGxpdHRsZSBtb3JlIGlu
IHRoZSBrbm93IHRoYW4gSS4uLgo+IE1hcmN1cyBpcyByaWdodCwgYWxzbyBpdCBpcyBhcHBhcmVu
dGx5IHBvc3NpYmxlIHRvIHByZS1jYWxpYnJhdGUgaW4gYWR2YW5jZSBhbmQgc2F2ZSB0aGUgY2Fs
aWJyYXRpb24gc2V0dGluZ3MgdG8gcmVnaXN0ZXJzIG9uIHRoZSBBRDkzNjEsIHRodXMgbWFraW5n
IHRoZSB0dW5lIHRpbWUgY29uc3RhbnQuCj4gSnVzdCBhIHRob3VnaHQsCj4gQ2hlZXJzLAo+IERh
dmUKPiAKPiAKPj4gT24gMTEvMDEvMjAyMSAxMzozMiwgTWFyY3VzIEQgTGVlY2ggdmlhIFVTUlAt
dXNlcnMgd3JvdGU6Cj4+IFRoaXMgaXMgcHJvYmFibHkganVzdCBhIHF1aXJrIG9mIHRoZSB3YXkg
dGhlIGNhbGlicmF0aW9ucyBjYWNoZSB3b3JrcyBpbiB0aGUgQUQ5MzYxIGNoaXAuCj4+IAo+PiBU
aGUgY2hpcCBpc27igJl0IHJlYWxseSBkZXNpZ25lZCBmb3IgZmFzdCBmcmVxdWVuY3kgaG9wcGlu
ZywgYW5kIHdoZW4geW91IHJldHVuZSwgaW50ZXJuYWwgcmVjYWxpYnJhdGlvbnMgbmVlZCB0byBo
YXBwZW4gb24gdGhlIGNoaXAsIGV4Y2VwdCBmb3Igc21hbGwgZnJlcXVlbmN5IGNoYW5nZXMuCj4+
IAo+PiAKPj4gU2VudCBmcm9tIG15IGlQaG9uZQo+PiAKPj4+PiBPbiBKYW4gMTEsIDIwMjEsIGF0
IDY6MjIgQU0sINCQ0L3QtNGA0LXQuSDQkCB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20+IHdyb3RlOgo+Pj4gCj4+PiDvu78KPj4+IEhlbGxvCj4+PiAKPj4+IEkgdGVz
dGluZyBiMjAwbWluaSBpbiByZWNlaXZlciBtb2RlIGFuZCBmb3VuZCBzdHJhbmdlIHJlc3VsdCB3
aXRoIHR1bmUgdGltZSAuCj4+PiBXaGVuIEkgc3RhcnQgZnJvbSAxMDBNSHogYW5kIHR1bmUgd2l0
aCBzdGVwIDIwTUh6IGF0IGZyZXEgMjAwIC0+IDIyMCBhbmQgMTIwIC0+IDEwMCBnZXQgYWxtb3N0
IDEwMCB0aW1lcyBzbG93bHkgdGltZSB0aGVuIG90aGVycy4KPj4+IFdoZW4gSSBzdGFydCBmb3Jt
IDEwMU1IeiB0aW1lIGluY3JlYXNlIG9ubHkgZmlyc3QgcGFzcyBhbmQgdGhlbiBhbGwgT0suCj4+
PiAKPj4+IFNvdXJjZSBjb2RlIGFuZCB0ZXJtaW5hbCBzY3JlZW5zaG90cyBpbiBhdHRhY2htZW50
cy4KPj4+IAo+Pj4gVGhhbmsgeW91Cj4+PiAKPj4+IDxtYWluLmM+Cj4+PiA8U2NyZWVuc2hvdCBm
cm9tIDIwMjEtMDEtMTEgMTMtMDMtMDkucG5nPgo+Pj4gPFNjcmVlbnNob3QgZnJvbSAyMDIxLTAx
LTExIDEzLTAzLTUwLnBuZz4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+Pj4gVVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KPj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+PiBVU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4v
bGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29t
L21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFp
bG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
