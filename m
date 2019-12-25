Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2203112A897
	for <lists+usrp-users@lfdr.de>; Wed, 25 Dec 2019 17:57:16 +0100 (CET)
Received: from [::1] (port=56372 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ik9yA-0000ks-Sn; Wed, 25 Dec 2019 11:57:10 -0500
Received: from mail-qt1-f170.google.com ([209.85.160.170]:35321)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ik9y7-0000hK-Ei
 for USRP-users@lists.ettus.com; Wed, 25 Dec 2019 11:57:07 -0500
Received: by mail-qt1-f170.google.com with SMTP id e12so20618762qto.2
 for <USRP-users@lists.ettus.com>; Wed, 25 Dec 2019 08:56:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=P/i0MZfi4n3wdwn5cGNuGfsPaqJIId5PevFLL2v/hlk=;
 b=uFG4j3mtoM32oZEF1bVF90CeuY8gKj7ZToWLtUYynx/XJG6hG1AdkNjJeDaTxMy78N
 MuDxoAAy0w8vZANHmgCfQ2dFayE36TEsqpDe1yE5OAYNCfp6J20WmzPr9mJfR2+CqLHD
 /0JGKv+ZE8CxSdWaRtbVa5CCrHZUB7q1+pXH+8+VqxjztiMjaakNljKzONxlEme7ka6x
 G7heB6fDHrQSH0G3bcLZT/4EiVAPEMzQkCt9zxXtSzNhXKFOUhB/2zBug0reH8LbjyKe
 pvDMO/H+iNR6QUfG3aaDQHd031+t1BuhOXlxPjUrRmX1BGKmMjfGW8ZJZVuS9qIMxe1C
 phWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=P/i0MZfi4n3wdwn5cGNuGfsPaqJIId5PevFLL2v/hlk=;
 b=cDAcZXQG6TsJlrQ+zSzwLILm1sJm67PlDZUBZAGQg61l3vhqX1725V5vFobdHmYcjV
 jnQ9q1qOggtU8hPvoye2vlA2cI404XKIR6S2HBPj4j8Orla06Ds3KC4ZQw26OteHYwll
 FWhnI/XKOksJuiKJNF/PvwxRI4g9tFY4Bmhzh2SHIjUtxH3ScnfaMmarQv6daxalu4Sc
 QgEVmb2lZxxp07qXkNTawjODwSBK5RRbq9ddH4uAOzCdfQPjt4bV+No5gHU3ZbUUziLH
 Zq5A6kvJJAbe99y7at13j6twYPZnFF0okxRu879vI0SLklSIl4LcX4hQtX5LQxymMMVv
 HJRQ==
X-Gm-Message-State: APjAAAUd3mRJ3PDAtqtuVSHQlnJcE0Zh9Ec4fAW2x6eSbN+nREZpAeEx
 JVkqxcPZZ2uvAyyiXd1O3JE=
X-Google-Smtp-Source: APXvYqzfCZ4MT1cyh/ZuMlLc8rlHCw4XPq+J4QV7UyS/YfqPeQBlDa6oqgC0T5cxauvC03FHR7Q3KQ==
X-Received: by 2002:ac8:4513:: with SMTP id q19mr25723458qtn.253.1577292986910; 
 Wed, 25 Dec 2019 08:56:26 -0800 (PST)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.gmail.com with ESMTPSA id f5sm7886324qke.109.2019.12.25.08.56.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Dec 2019 08:56:26 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 25 Dec 2019 11:56:25 -0500
Message-Id: <E13C78DD-5B67-48C0-B605-6A55F3AE6E0C@gmail.com>
References: <d750d9ab21391528e690db20bc4e4530baaebcb1.camel@ettus.com>
In-Reply-To: <d750d9ab21391528e690db20bc4e4530baaebcb1.camel@ettus.com>
To: =?utf-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
X-Mailer: iPhone Mail (17C54)
Subject: Re: [USRP-users] Gain difference in 4 RX on N310
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
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

WW91IHdvbuKAmXQgYmUgYWJsZSB0byDigJxzZWXigJ0gdGhlIHRoZXJtYWwgbm9pc2Ugb2YgdGhl
IHRlcm1pbmF0b3IgdW5sZXNzIHRoZSBnYWluIGlzIHR1cm5lZCBhbGwgdGhlIHdheSB1cC4gT3Ro
ZXJ3aXNlIGl04oCZcyBiZWxvdyB0aGUgbm9pc2UgZmxvb3Igb2YgdGhlIHJlY2VpdmVyLiAKCgoK
U2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBEZWMgMjUsIDIwMTksIGF0IDk6MTkgQU0sIE1hcmN1
cyBNw7xsbGVyIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3Jv
dGU6Cj4gCj4g77u/SGkgQmFyb2NoLAo+IAo+IG9oLCB0aGF0J3MgaW50ZXJlc3RpbmcgYW5kIEkg
bXVzdCBhZG1pdCBJIGRvbid0IHJlYWxseSBrbm93IHdoZXJlIHRvCj4gc3RhcnQgbG9va2luZyBp
bnRvIHRoaXMsIGJ1dCBsZXQncyB0YWtlIHRoaXMgdG9wLWRvd246Cj4gSG93IGFyZSB5b3Ugc2V0
dGluZyB0aGUgZ2FpbiwgYW5kIGhvdyBhcmUgeW91IGRvaW5nIHRoZSBjYXB0dXJpbmc/Cj4gTXkg
Z3V0IGZlZWxpbmcgdGVsbHMgbWUgdGhlcmUncyBzb21ldGhpbmcgaW4gVUhEIG5vdCBoYW5kbGlu
ZyBtdWx0aS0KPiBjaGFubmVsIGdhaW4gc2V0dGluZyByaWdodCwgYnV0IGxhY2tpbmcgYW4gTjMx
MCBvbiBteSBkZXNrIHJpZ2h0IG5vdywgSQo+IGNhbid0IGp1c3QgdHJhY2UgdGhpcyB3aXRoIGEg
ZGVidWdnZXIuCj4gSG93IGRpZCB5b3UgYnVpbGQgYW5kIGluc3RhbGwgeW91ciBVSEQ/Cj4gQmVz
dCByZWdhcmRzLAo+IE1hcmN1cwo+IAo+PiBPbiBXZWQsIDIwMTktMTItMjUgYXQgMTU6MjkgKzAy
MDAsIEJhcm9jaCBPcmVuIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+PiBIZWxsby4KPj4gSSd2ZSBi
ZWVuIGNhcHR1cmluZyB3aXRoIE4zMTAgb24gNCBjaGFubmVscyBzaW11bHRhbmVvdXNseS4gQSBz
dHJhbmdlCj4+IGJlaGF2aW91cmUgb2NjdXJzOgo+PiBGaXJzdCBleHBlcmltZW50OiBjYXB0dXJp
bmcgb24gYSBzaW5nbGUgY2hhbm5lbCB3aGVuIGFsbCB0aGUgb3RoZXIgMwo+PiByeCBjaGFubmVs
cyBhcmUgdGVybWluYXRlZCwgSSBnZXQgYSBzaW1pbGFyIGNhcHR1cmVkIGdhaW4gb24gZXZlcnkK
Pj4gb25lIG9mIHRoZSBSWCBjaGFubmVscy4KPj4gU2Vjb25kIGV4cGVyaW1lbnQ6IGNhcHR1cmlu
ZyBzaW11bHRhbmVvdXNseSwgY2hhbm5lbCAzIChSRjIgUlgyKQo+PiBzaG93cyBhIGRlY3JlYXNl
ZCBjYXB0dXJlIGdhaW4gaW4gYWJvdXQgLTE0ZGIuIGFsbCBvdGhlciBjaGFubmVscwo+PiBzaG93
IGNhcHR1cmUgZ2FpbiBzaW1pbGFyIHRvIGZpcnN0IGV4cGVyaW1lbnQuCj4+IFRoaXJkIGV4cGVy
aW1lbnQ6IGNhcHR1cmluZyBzaW11bHRhbmVvdXNseSBvbiA0IGNoYW5uZWxzLCBhbGwgaW5wdXRz
Cj4+IHRlcm1pbmF0ZWQ6IHRoZXJtYWwgbm9pc2Ugb2Ygc2FtZSBnYWluIG9uIGFsbCA0IGNoYW5u
ZWxzLgo+PiAKPj4gQW55b25lIGhhcyBhbnkgY2x1ZSBmb3IgZGlyZWN0aW9uIHRvIGZ1cnRoZXIg
cmVzZWFyY2ggdGhpcz8KPj4gCj4+IE15IHNldHVwOiBVSERfMy4xNC4xLkhFQUQtMC1nMDM0N2E2
ZDggb24gVWJ1bnR1Cj4+IAo+PiBUaGFua3MsCj4+IEJhcm9jaCBPcmVuCj4+IAo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdAo+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiBodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRw
Oi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1
cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQo=
