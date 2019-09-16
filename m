Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAC0B437E
	for <lists+usrp-users@lfdr.de>; Mon, 16 Sep 2019 23:48:27 +0200 (CEST)
Received: from [::1] (port=51628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9yrB-0000ir-Fn; Mon, 16 Sep 2019 17:48:25 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:35008)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i9rTQ-0006CU-6S
 for usrp-users@lists.ettus.com; Mon, 16 Sep 2019 09:55:24 -0400
Received: by mail-qk1-f176.google.com with SMTP id w2so29381qkf.2
 for <usrp-users@lists.ettus.com>; Mon, 16 Sep 2019 06:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date
 :content-transfer-encoding:message-id:references:to;
 bh=hAW1PQWEMSYvThKFxpugX9kdqVbqOB6ZtSfkhvWgZKw=;
 b=pMgIBZdwv6LatMj8g1Jbxj4p4c2HeUFSBY2ToefrqTvfKPX5pItukfcRKQPnOxgHzL
 AEpcL0jVKXw0L+BMRrBAGSi4It+9SwBBtL+ypaI3vRZekDKs/fhI6EinOqScL+l7PTlp
 S5QJ429l3+BwaiP1F8q6WAcSm6KPD8ERWostPQoSBnmIBFdR3j+eXR4Vvr3fSyXqXJwX
 GY6kzHy7JbYuJ/G66ynFkBP9YnJ6tWXNvNmCIDRXp6F1qFqpR5Z8GoxsJBJpAvSLHZMp
 r0Wv7IipjWq3FhS8rHYKlx+EOrdEC2BVugTiuWZQYS27M8H3/IaobBKU+7eCW4so30rB
 LlIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
 :content-transfer-encoding:message-id:references:to;
 bh=hAW1PQWEMSYvThKFxpugX9kdqVbqOB6ZtSfkhvWgZKw=;
 b=TOkCFKJ4hrfOClvIOn2Gld0U8XiKOTPwJ13VNKeC41cxN9QQ76eM+LW9H6tX9vgpwy
 pa/IRomG8YPx9z5k18pwwew1lmxxeAZFXyYkghAsXCtVk39F6QhcQzgvoHkZIuljVqzG
 Gar3SZuX1cJqV8J2FGbV1bGaUKS3Ro/tPENxzXt9uBuUX8tOwtcIZAhl1RmP53Q0svqH
 JAdFnjosz/TLsqyBiogMxfAUkcsFHe+YBisIoHWZXFbCSW/O2hPETskQikxBqScOQslo
 AbKV6iYE9sME1CaxM58UD9P53wIOEIpZpyUsWMYru8n9Fxnlt5sdVLPc81nebwb5+OsX
 aHbQ==
X-Gm-Message-State: APjAAAVLltVACI2KdM1bDrMp4tXoICJrtwFE5dnZc54G+W8APgNpM4hW
 4KKW5U2CFzqtowQnY619zxgk5UDD
X-Google-Smtp-Source: APXvYqzPD39tHLG2NTR+ACOSWSHkgDzO5OZ9rc2MvvKu2LVoafoAYNHzuMMbX2ya6ZUivdXnX6M/sg==
X-Received: by 2002:a05:620a:140b:: with SMTP id
 d11mr63085qkj.22.1568642083459; 
 Mon, 16 Sep 2019 06:54:43 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.gmail.com with ESMTPSA id q64sm8248384qkb.32.2019.09.16.06.54.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Sep 2019 06:54:42 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <D71B2B9BB39CE44CACCAB6646DF20CFD48D79E3D@exmbx01>
Date: Mon, 16 Sep 2019 09:54:42 -0400
Message-Id: <E121640A-5D9A-48FC-A7BF-74A74AD0AD9E@gmail.com>
References: <ecbac5bf-b40a-4c93-980b-cc6f7c852f1a@email.android.com>
 <BC4D9856-CF67-47A5-BBFF-74B38B0F72EA@gmail.com>
 <4e120fcf-28e9-d02b-8523-3a7273b2f7aa@elitecoding.org>
 <D71B2B9BB39CE44CACCAB6646DF20CFD48D79E3D@exmbx01>
To: =?utf-8?Q?"Skorstad,J=C3=B8rn"?= <Joern.Skorstad@nkom.no>
X-Mailman-Approved-At: Mon, 16 Sep 2019 17:48:22 -0400
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

VGhlIHNhbXBsZSBzdHJlYW0gaXMgY29udGludW91cy4gCgpTZW50IGZyb20gbXkgaVBob25lCgo+
IE9uIFNlcCAxNiwgMjAxOSwgYXQgOTozOCBBTSwgU2tvcnN0YWQsSsO4cm4gdmlhIFVTUlAtdXNl
cnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPiAKPiBNYW55IHRoYW5rcyBm
b3IgeW91ciBhbnN3ZXJzLiBEbyB5b3Uga25vdyBpZiB0aGUgRTMxMCB3aWxsIGhhbHQgdGhlIGRh
dGEgc3RyZWFtIHdoaWxlIGNoYW5naW5nIGZpbHRlci9mcmVxdWVuY3ksIG9yIGRvIEkgbmVlZCB0
byB0YWtlIHRoaXMgaW50byBhY2NvdW50IGluIHRoZSBzb2Z0d2FyZSB3aGlsZSBjaGFuZ2luZyBm
cmVxdWVuY2llcz8KPiAKPiAKPiBKb3JuLAo+IAo+IHJlZ2FyZGluZyB5b3VyIG90aGVyIHF1ZXN0
aW9uLCBmaWx0ZXIgc2VsZWN0aW9uIG9uIHRoZSBFMzEwIGlzIGhhbmRsZWQgYnkgVUhELCBpbnRl
cm5hbGx5Lgo+IAo+IENoZWVycywKPiBKdWxpYW4KPiAKPj4gT24gMTUuMDkuMTkgMjA6NTQsIE1h
cmN1cyBEIExlZWNoIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+PiBNeSByZWNvbGxlY3Rpb24gaXMg
dGhhdCB0aGUgQUQ5MzYxIFJGIGNoaXAgZG9lc27igJl0IGhhdmUgYW4gZXh0ZXJuYWwgbG9jayBp
bmRpY2F0b3IuCj4+IAo+PiBTZW50IGZyb20gbXkgaVBob25lCj4+IAo+Pj4gT24gU2VwIDE1LCAy
MDE5LCBhdCA5OjE3IEFNLCBTa29yc3RhZCxKw7hybiB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+Pj4gCj4+PiBIaSBhbGwsCj4+PiAKPj4+IAo+Pj4g
Cj4+PiBJIGFtIGN1cnJlbnRseSB3b3JraW5nIG9uIGEgcHJvamVjdCB1c2luZyBhIFVTUlAgRTMx
MCB0byBvdXRwdXQgYW4gRkZUIHBsb3Qgb3ZlciBhIGdpdmVuIGZyZXF1ZW5jeSByYW5nZSAodXN1
YWxseSBiaWdnZXIgdGhhbiB0aGUgcG9zc2libGUgc2FtcGxlIHJhdGUpLiBUaGUgcHJvZ3JhbSBp
cyB3cml0dGVuIGluIEMrKyB1c2luZyB0aGUgVUhEIGxpYnJhcnkuIEZyZXF1ZW5jeSByYW5nZSBp
cyBhY2hpZXZlZCBieSBjaGFuZ2luZyB0aGUgTE8gZnJlcXVlbmN5IHJlZ3VsYXJseS4gVGhlIHBy
b2dyYW0gc2VlbXMgdG8gd29yaywgaG93ZXZlciBJIGhhdmUgdHdvIHF1ZXN0aW9ucyBJIGNhbuKA
mXQgZmluZCB0aGUgYW5zd2VyIHRvIGluIHRoZSBVSEQgbWFudWFsOgo+Pj4gCj4+PiAKPj4+IAo+
Pj4gVGhlIEUzMTAgaGFzIGFuYWxvZyBmaWx0ZXJzIG9uIHRoZSBSWCBhbmQgVFggcG9ydHMuIFRo
ZSBkb2N1bWVudGF0aW9uIGlzIGEgbGl0dGxlIHNob3J0IG9uIGhvdyB0aGVzZSBmaWx0ZXJzIGFy
ZSBjb250cm9sbGVkLiBBcmUgdGhleSBzZWxlY3RlZCBhdXRvbWF0aWNhbGx5IGJhc2VkIG9uIHRo
ZSBMTyBmcmVxdWVuY3ksIG9yIGRvIHRoZXkgbmVlZCB0byBiZSBtYW51YWxseSBzZWxlY3RlZD8g
SWYgc28sIGhvdz8gQW5kIHdoYXQgd291bGQgYmUgdGhlIChlc3RpbWF0ZWQpIGNoYW5nZW92ZXIg
dGltZSBiZXR3ZWVuIGZpbHRlcnM/Cj4+PiAKPj4+IAo+Pj4gCj4+PiBMTyBsb2NrIOKAkyBJIHRy
aWVkIHRvIGRldGVjdCBpZiBMTyBpcyBsb2NrZWQgYWZ0ZXIgYSB0dW5lIHJlcXVlc3QgdXNpbmcg
dGhlIFVIRCBtYW51YWwgYXMgYSByZWZlcmVuY2UuIElmIEkgaW5jbHVkZSB0aGUgZm9sbG93aW5n
IGRpcmVjdGx5IGFmdGVyIGEgdHVuZSByZXF1ZXN0IG5vdGhpbmcgaXMgcHJpbnRlZDoKPj4+IAo+
Pj4gIHdoaWxlICghdXNycC0+Z2V0X3J4X3NlbnNvcigibG9fbG9ja2VkIikudG9fYm9vbCgpKSBz
dGQ6OmNvdXQgPDwgCj4+PiAiUExMIHVubG9ja2VkISIgPDwgc3RkOjplbmRsOwo+Pj4gCj4+PiAK
Pj4+IAo+Pj4gSXMgdGhlcmUgc29tZSBvdGhlciB3YXkgdG8gZGV0ZWN0IExPIGxvY2s/Cj4+PiAK
Pj4+IAo+Pj4gCj4+PiBSZWdhcmRzLAo+Pj4gCj4+PiBKb3JuCj4+PiAKPj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdAo+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+IGh0dHA6Ly9saXN0cy5l
dHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+PiAK
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QKPj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4gaHR0
cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0
dXMuY29tCj4+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xp
c3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tCg==
