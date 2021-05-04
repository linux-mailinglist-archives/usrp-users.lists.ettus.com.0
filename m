Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E8E3731B7
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 23:01:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0EEC3845C2
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 17:01:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="gpVukk5L";
	dkim-atps=neutral
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E5523840E7
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 17:01:11 -0400 (EDT)
Received: by mail-oi1-f179.google.com with SMTP id k25so170074oic.4
        for <usrp-users@lists.ettus.com>; Tue, 04 May 2021 14:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=KhYkT2xE61kD+rXeWXuVyeDoU5i/SwYY+xBbv/jo0Lk=;
        b=gpVukk5LpHiab5v+2sfTxG1z1J3YBGpf5WY8SCyqh06sCJEEJyEh/7qcf9FfDiDROP
         c0OVoDJWdA8RvEYV5BabXPJBzykClBEx2xd3wY3KxPebeqUrXbl3+di7+uoGgfdL3A6c
         T7EBv35Grfn6DkqF3seTpqew+TBL6XTRtNheA+8/yw8aJ0aOahMBAo6ueRCno4ru1jPo
         8BJBQEhOkCimIUwMs9bbnpV++eyVz0MKUPivRT3GauyXe3+Td506jpHN/DDxvsZkd0xM
         S9NYR0GXFPSaSIXO94Q1jqd0kzrCIXixfJASeDgYRWqASgxn6rlLPKOuMUI0RqDQJvXC
         TpuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=KhYkT2xE61kD+rXeWXuVyeDoU5i/SwYY+xBbv/jo0Lk=;
        b=Pkg/BG7kIDeA+SOgD7i+ot2fvniqCf16tqpdobCuWi/aPg3xMyU/tYEt3YtP6hPuOa
         DTzDHxU5LSlAEdV5Zpe2nK2Ipx48n80A1p4SOeChx7MJItCBLKPsbwnmdnxUJKmrQjOe
         ant5vMSJiYnFcDyutuw36BduU4cQLKPzM/Or2bTCZ6xxoqkFJVxT8irfqd/6fUWRPREX
         kKwYl7HNmN9MQb0qOiI4Hy/289mA9cWSwy28A06/h2TWYTXBh3kS+AL9agxw3gzCY4aC
         lwS+abIC8G0zyPrSncxfFV7zSkKPLBw15VpdeP2jouO8hDw1Z9fxQFBrn8YObvETW4X5
         dCtQ==
X-Gm-Message-State: AOAM5308tkAacx62q6zG1nnzZhH4rqvfu0gC5wO/n9qVLKfrqZre+P9P
	QSqeS6uALNv0gLMAXIP0O8u68BwKf6ovZ8JAk8J0Sg==
X-Google-Smtp-Source: ABdhPJyrFteQ0EKZe3QRgslP8+Wd3U9mwYdcaX5471fNBrd9sYnJNVbyiiix2pxO7iF3B73oKWRMMQtlfN+wLVWT0Rk=
X-Received: by 2002:aca:75c6:: with SMTP id q189mr4467040oic.124.1620162070384;
 Tue, 04 May 2021 14:01:10 -0700 (PDT)
MIME-Version: 1.0
References: <rEpI0oNgFN3mXYdbiiSi0kvisclmWY4OyuyDj1KM@lists.ettus.com>
In-Reply-To: <rEpI0oNgFN3mXYdbiiSi0kvisclmWY4OyuyDj1KM@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 4 May 2021 17:00:59 -0400
Message-ID: <CAB__hTSyzU+qV0JKwqygz4EGvCt_-pYgsYPX+OwoduoVh70jJA@mail.gmail.com>
To: jcasallas2019@gmail.com
Message-ID-Hash: 5NXZE7CD2CZSRH3WYTSSQ35C733352PM
X-Message-ID-Hash: 5NXZE7CD2CZSRH3WYTSSQ35C733352PM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC FFT size > 1024
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5NXZE7CD2CZSRH3WYTSSQ35C733352PM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXkgNCwgMjAyMSBhdCAxMjowMSBQTSA8amNhc2FsbGFzMjAxOUBnbWFpbC5jb20+
IHdyb3RlOg0KPiBJIHdhcyBsb29raW5nIGZvciBhIHBsYWNlIHRvIHNldCB0aG9zZSB2YWx1ZXMg
UkVTSVpFX09VVFBVVF9QQUNLRVQsIFNJTVBMRV9NT0RFIGFuZCBJIGFzc3VtZWQgdGhleSB3aWxs
IGJlIHNldCBpbiB0aGUgeWFtbCBkZXNjcmlwdG9yIGZpbGUgZmZ0XzF4NjQueW1sIHVuZGVyIHBh
cmFtZXRlcnMgc2VjdGlvbiwgcGxlYXNlIGNvcnJlY3QgbWUgaWYgSSBhbSB3cm9uZy4NCg0KVGhl
c2UgaXRlbXMgYXJlIGluIGF4aV93cmFwcGVyLnYgd2hpY2ggaXMgb25seSBhcHBsaWNhYmxlIGZv
ciBVSEQgPCAzLjE1Lg0KDQo+IE9uIHRoZSBvdGhlciBoYW5kLCBJIHdhcyB0cnlpbmcgdG8gZmlu
ZCB0aGUgc2lnbmFsIOKAnG1fYXhpc19wa3RfbGVuX3Qq4oCdIGJ1dCBJIGRpZCBub3QgZmluZCBp
dCwgSSB3YXMgbG9va2luZyBoZXJlOiBodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC9m
cGdhL2Jsb2IvbWFzdGVyL3VzcnAzL2xpYi9yZm5vYy9ibG9ja3MvcmZub2NfYmxvY2tfZmZ0L3Jm
bm9jX2Jsb2NrX2ZmdC52LCBjb3VsZCB5b3UgcG9pbnQgbWUgdG8gdGhlIHJpZ2h0IHBsYWNlPy4g
QWxzbywgSSB3YXMgbG9va2luZyBpbnRvIHRoZSBSRk5vQyBzcGVjaWZpY2F0aW9uIGJ1dCBubyBs
dWNrLg0KDQpGb3IgaW1wbGVtZW50YXRpb24gb2YgYSBjdXN0b20gRkZUIGJsb2NrIGluIFVIRCA0
LjAgd2l0aCBjYXBhYmlsaXR5DQpmb3IgRkZUIGxlbmd0aHMgPiAxMDI0LCBJIGRpZCB0aGUgZm9s
bG93aW5nOg0KLSB1c2VkIGF4aXNfZGF0YSAoc2lkZWJhbmQgaW50ZXJmYWNlKSBpbiB5YW1sDQot
IHVzZWQgY3RybHBvcnRfdG9fc2V0dGluZ3NfYnVzICh0byBjb252ZXJ0IHRvIHNldHRpbmdzIGJ1
cykNCi0gdXNlZCBjdml0YV9oZHJfZW5jb2RlciAmIGRlY29kZXIgKHRvIGNvbnZlcnQgdG8gdHVz
ZXIgMTI4LWJpdCBoZWFkZXIgaW5mbykNCi0gdXNlZCBheGlfcmF0ZV9jaGFuZ2UgKHdpdGggTSAm
IE4gYm90aCBzZXQgdG8gZGVzaXJlZCBGRlQgbGVuZ3RoKQ0Kc2ltaWxhciB0byB0aGUgd2F5IGl0
J3MgdXNlZCBpbiBEREMNCg0KQnkgdXNpbmcgYXhpX3JhdGVfY2hhbmdlIChldmVuIHRob3VnaCB0
aGVyZSBpcyBubyByYXRlIGNoYW5nZSkgaW4gdGhpcw0KbWFubmVyLCB0aGlzIGVuc3VyZXMgdGhh
dCB0aGUgRkZUIGJsb2NrIG9ubHkgcmVjZWl2ZXMgZGF0YSBvbmNlIGEgZnVsbA0KRkZUIGxlbmd0
aCBvZiBzYW1wbGVzIGhhcyBhcnJpdmVkLiBJZiB0aGUgdXBzdHJlYW0gc291cmNlIHNlbmRzIEVP
QiBpbg0KdGhlIG1pZGRsZSBvZiBhIGJsb2NrIG9mIHNhbXBsZXMsIHRoYXQgYmxvY2sgZ2V0cyBk
aXNjYXJkZWQuICBUaGUgdXNlDQpvZiBjdHJscG9ydF90b19zZXR0aW5nc19idXMgYW5kIGN2aXRh
X2hkcl9lbmNvZGVyIG1ha2VzIGl0IGVhc3kgdG8gdXNlDQpheGlfcmF0ZV9jaGFuZ2UgaW4gdGhl
IG1hbm5lciBpdCB3YXMgZGVzaWduZWQgdG8gYmUgdXNlZC4NClJvYgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
