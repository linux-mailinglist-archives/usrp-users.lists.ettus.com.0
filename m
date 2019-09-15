Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2ECB30B7
	for <lists+usrp-users@lfdr.de>; Sun, 15 Sep 2019 17:39:23 +0200 (CEST)
Received: from [::1] (port=52088 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9WcT-0006R7-Fc; Sun, 15 Sep 2019 11:39:21 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:43658)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i9WcP-0006Lp-Cz
 for USRP-users@lists.ettus.com; Sun, 15 Sep 2019 11:39:17 -0400
Received: by mail-qk1-f177.google.com with SMTP id h126so25972979qke.10
 for <USRP-users@lists.ettus.com>; Sun, 15 Sep 2019 08:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=paJTVwK+UhoGe1JUl1XxMhqxaXACsp6AKNMj75Jpotc=;
 b=KqT2pF5MzwuDEjJBwf1aNgYC3so0II8zgxn24QSc8CeL9uJTMarzEd+yhj+FHW9PYb
 YRczQI5PwgYr+okkQJP3G1pHkvntreb8pUykW7ustx+byl4GcDBz34m+bZLtnli2lzA0
 bFf6SRfn7x96HdXYwIUpvaVmbS3YjIpy1JH/SdgKi+CwVG9T8ay7bOhhMfQ0EfjgRg78
 2U5zdcCJj9vjJt7d8yd/huz1T9T4kjGLi71y4unBxj94OtqThbxJbPmS9LrcnhMhFpu9
 4AXezF4P3XodX+zyru1BwLg8x3dYiTIKiHuodYAv9xsbd3CRkm1liB0hAfO+RqVznH3N
 QYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=paJTVwK+UhoGe1JUl1XxMhqxaXACsp6AKNMj75Jpotc=;
 b=PvkVGLFTjEfCFx9aslYg3cANwwpzRNd6cZUCVhsqhhngT+3sTcuWgfGwQ98nM6oEH3
 TvGlSnJPEyGshICcBFpEDCpN/srrc6CUvhIZM2L9kfpyK2lvhkBOI+dFU42mz11K/zfU
 mFK+bkDvksMDuHTIbD+VANeQZbHmULv3fH5eu7LSiC4R74VdD7f9X4s6h12c4hZyjHKe
 Qj9jNaLnMYZ+GJhPJv417kETLlkIwWYtLNcoZX1UtRfFFgf3RBEwn18sU3vzBROZ68xT
 7rJPru0mU7hIU6bx/QNS1zGaLXtHWMbHVk5RQereu9D7C3vEwoaAwp1Pujz7qsqylQ4p
 8hBQ==
X-Gm-Message-State: APjAAAUGzyklG1Hz+jKS+DKLaDPDoW+Nqz+xIM6rOZIVkYArh5HA9xRB
 r2eqlI9sf5jOyBVrLskoMSA=
X-Google-Smtp-Source: APXvYqzlj+/i9a3vacU1nrMTrmWQZJM6eKfeePykW1K2VjOWu7f85Is2F40eak6bZIbNKt5JXTsmiQ==
X-Received: by 2002:a37:4f84:: with SMTP id
 d126mr58567969qkb.430.1568561916816; 
 Sun, 15 Sep 2019 08:38:36 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.gmail.com with ESMTPSA id l22sm13508766qtp.8.2019.09.15.08.38.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Sep 2019 08:38:36 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <059c1852-c2bc-c352-0b63-8f2f7e6de861@balister.org>
Date: Sun, 15 Sep 2019 11:38:35 -0400
Message-Id: <A31D6066-827F-4837-AE6F-8C77E6615147@gmail.com>
References: <CAOCyOuMCrkq4QrLEHpPFK-K8nRhX-FSTibcHyP5j2iJ4o=9S2g@mail.gmail.com>
 <059c1852-c2bc-c352-0b63-8f2f7e6de861@balister.org>
To: Philip Balister <philip@balister.org>
Subject: Re: [USRP-users] cannot load fpga to b205mini from wandboard
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

TXkgZ3Vlc3MgaXMgdGhlIFdhbmRib2FyZCBkb2VzbuKAmXQgc3VwcGx5IGVub3VnaCBwb3dlciwg
c28gaXTigJlzIGdldHRpbmcgdGFrZW4gb2ZmIHRoZSBidXMuIAoKTWlnaHQgbmVlZCBvbmUgb2Yg
dGhvc2UgWSBjYWJsZXMgdG8gc3VwcGx5IGV4dGVybmFsIHBvd2VyLiAKClNlbnQgZnJvbSBteSBp
UGhvbmUKCj4gT24gU2VwIDE1LCAyMDE5LCBhdCA4OjA5IEFNLCBQaGlsaXAgQmFsaXN0ZXIgdmlh
IFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPiAKPj4gT24g
OS8xNS8xOSA3OjU1IEFNLCBXYWVsIEFsaSB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4gRGVhciBh
bGwsCj4+IHBsZWFzZSBoZWxwIG1lIHdpdGggdGhpcyBpc3N1ZSwKPj4gCj4+IEkndmUgYnVpbHQg
YSBwb2t5IGRpc3Ryby4gd2l0aCB5b2N0byBwcm9qZWN0IGZvciB3YW5kYm9hcmQgYW5kIHVoZCBw
YWNrYWdlCj4+IGlzIHByZS1pbnN0YWxsZWQuCj4+IAo+PiB0aGUgcHJvYmxlbSBpcywgd2hlbiBJ
IHRyaWVkIHRvIHVzZSAidWhkX3VzcnBfcHJvYmUiICB3aXRoICh0aHJlZSBkaWZmZXJlbnQKPj4g
dXNycCAyMDVtaW5pKSBJIGZhY2VkIHRoZSBmb2xsb3dpbmcgZXJyb3IKPj4gCj4+IHJvb3RAd2Fu
ZGJvYXJkOn4jIHVoZF91c3JwX3Byb2JlCj4+IGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNy4zLjA7
IEJvb3N0XzEwNjYwMDsgVUhEXzAwMy4wMTAuMDAyLjAwMC1yZWxlYXNlCj4+IAo+PiAtLSBMb2Fk
aW5nIGZpcm13YXJlIGltYWdlOiAvdXNyL3NoYXJlL3VoZC9pbWFnZXMvdXNycF9iMjAwX2Z3Lmhl
eC4uLgo+PiAtLSBEZXRlY3RlZCBEZXZpY2U6IEIyMDVtaW5pCj4+IC0tIExvYWRpbmcgRlBHQSBp
bWFnZTogL3Vzci9zaGFyZS91aGQvaW1hZ2VzL3VzcnBfYjIwNW1pbmlfZnBnYS5iaW4uLi4KPj4g
MzklRXJyb3I6IEVudmlyb25tZW50RXJyb3I6IElPRXJyb3I6IGxvYWRfZnBnYTogY2Fubm90IHdy
aXRlIGJpdHN0cmVhbSB0bwo+PiBGWDMgKC00OiBMSUJVU0JfRVJST1JfQ09ERSAtNCkKPiAKPiBB
IHF1aWNrIGdvb2dsZSBzdWdnZXN0IGVycm9yIC00IGlzIE5vIGRldmljZSwgYXJlIHlvdSBzdXJl
IHRoZSBVU0IgaXMKPiB3b3JraW5nPyBEbyB5b3Ugc2VlbiBtZXNzYWdlcyB3aGVuIHlvdSBpbnNl
cnQvcmVtb3ZlIHRoZSBiMjA1PyBXaGF0IGRvZXMKPiBscyB1c2Igc2F5Pwo+IAo+IFBoaWxpcAo+
IAo+IAo+IAo+PiByb290QHdhbmRib2FyZDp+IyB1aGRfdXNycF9wcm9iZQo+PiBsaW51eDsgR05V
IEMrKyB2ZXJzaW9uIDcuMy4wOyBCb29zdF8xMDY2MDA7IFVIRF8wMDMuMDEwLjAwMi4wMDAtcmVs
ZWFzZQo+PiAKPj4gLS0gTG9hZGluZyBmaXJtd2FyZSBpbWFnZTogL3Vzci9zaGFyZS91aGQvaW1h
Z2VzL3VzcnBfYjIwMF9mdy5oZXguLi4KPj4gLS0gRGV0ZWN0ZWQgRGV2aWNlOiBCMjA1bWluaQo+
PiAtLSBMb2FkaW5nIEZQR0EgaW1hZ2U6IC91c3Ivc2hhcmUvdWhkL2ltYWdlcy91c3JwX2IyMDVt
aW5pX2ZwZ2EuYmluLi4uCj4+IDM4JUVycm9yOiBFbnZpcm9ubWVudEVycm9yOiBJT0Vycm9yOiBs
b2FkX2ZwZ2E6IGNhbm5vdCB3cml0ZSBiaXRzdHJlYW0gdG8KPj4gRlgzICgtNDogTElCVVNCX0VS
Uk9SX0NPREUgLTQpCj4+IHJvb3RAd2FuZGJvYXJkOn4jIHVoZF91c3JwX3Byb2JlCj4+IGxpbnV4
OyBHTlUgQysrIHZlcnNpb24gNy4zLjA7IEJvb3N0XzEwNjYwMDsgVUhEXzAwMy4wMTAuMDAyLjAw
MC1yZWxlYXNlCj4+IAo+PiAtLSBMb2FkaW5nIGZpcm13YXJlIGltYWdlOiAvdXNyL3NoYXJlL3Vo
ZC9pbWFnZXMvdXNycF9iMjAwX2Z3LmhleC4uLgo+PiAtLSBEZXRlY3RlZCBEZXZpY2U6IEIyMDVt
aW5pCj4+IC0tIExvYWRpbmcgRlBHQSBpbWFnZTogL3Vzci9zaGFyZS91aGQvaW1hZ2VzL3VzcnBf
YjIwNW1pbmlfZnBnYS5iaW4uLi4KPj4gMzglRXJyb3I6IEVudmlyb25tZW50RXJyb3I6IElPRXJy
b3I6IGxvYWRfZnBnYTogY2Fubm90IHdyaXRlIGJpdHN0cmVhbSB0bwo+PiBGWDMgKC00OiBMSUJV
U0JfRVJST1JfQ09ERSAtNCkKPj4gCj4+IEFzIHlvdSBjYW4gc2VlLCB1aGQ6IDMuMTAuMgo+PiBh
bHNvLCBJIGZhY2VkIHRoZSBzYW1lIHByb2JsZW0gYWZ0ZXIgcmUtZG93bmxvYWRpbmcgZnBnYSBp
bWFnZSBmcm9tIGV0dHVzCj4+IHdlYnNpdGUKPj4gCj4+IHRoYW5rcyBpbiBhZHZhbmNlCj4+IAo+
PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4g
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tCj4+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNf
bGlzdHMuZXR0dXMuY29tCg==
