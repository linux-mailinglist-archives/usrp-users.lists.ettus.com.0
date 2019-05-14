Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B20E21E453
	for <lists+usrp-users@lfdr.de>; Wed, 15 May 2019 00:14:59 +0200 (CEST)
Received: from [::1] (port=57340 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hQfhH-0007Wj-7o; Tue, 14 May 2019 18:14:55 -0400
Received: from mail-wm1-f54.google.com ([209.85.128.54]:56288)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <marcus.mueller@ettus.com>)
 id 1hQfgj-0007RP-6V
 for usrp-users@lists.ettus.com; Tue, 14 May 2019 18:14:51 -0400
Received: by mail-wm1-f54.google.com with SMTP id x64so588982wmb.5
 for <usrp-users@lists.ettus.com>; Tue, 14 May 2019 15:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=YM3CxKl6h0Ld5HAZJ87n8H76btvON1wRRjqi9amYSEU=;
 b=o5thhF+X2UqEqIjN7lg1THDbeH5R7v1Pze2auSkL1Vm8JZrbW6BxE/sqEgxh85oYdK
 Up2BqAFHaMMGwn97g3ZRcOaQKOCwCQWdmiIch5t+pJPYYAgc0y9qGxK2HcwYZ+WLCkL0
 1/vLU5fNegQv0IXOB7yNyUB1OjRiuwyy7k4B0NCiOji6ccpX9re7FYp/qrAkmP+Jquzv
 QAAPuarCxQxOg8wWvd4myeJWn2tF+BlCvOHNLNxyaoSCszGCEQB4PGBsKC/S7GDAYWt2
 rA7cAwNEFTBeKwARu+LCgBdIjiez5FR7Lx49UV8buvkemdB5+uf+6OGEFhYApcR0flrd
 pHfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=YM3CxKl6h0Ld5HAZJ87n8H76btvON1wRRjqi9amYSEU=;
 b=RMd+sCBabYuM1ewXR5fyCFP44NPtYmjmQ9vb3EIXpeoh5fgGRbOpO+CQrGbSjXEWNh
 +d7rFI0VTTChOqVoA5OxfatpKOZRtoEi63fGOGecr4VDlmnwtFSV/BrioBnQ1Rpb3Z5Y
 pAQA3jK7R4F3MVtk30K5g6KIbtMNlO3pF3+2cyew49OybBvWPatuaHkuSxBgPv6DgtHE
 0c+u4sLSvaK5tSjUyIhIRlEuvgcv+gbU7kaPh1w6HRVgA04jnD9P5kKp+BWALendY17x
 OmE6DATtM0eWbgu1OReef4tjGkx+oQJE0w0u9FZ6CRoH4LBTvM5YAcidVqmb1+tfFIIt
 tQHw==
X-Gm-Message-State: APjAAAW8ufJ3pBVFQhNcQljoaLYsgZ63Lm84mitc2fTV8GYhvk94ZcB/
 dZKHznoaNOFuR2Wm4l2PVhsS8DNz
X-Google-Smtp-Source: APXvYqwYHvweWgd2zL0KtSpUg6fVH4Np6Pmn/yNSxnRVFKj7eDr+Vc57oOpZj+0unAN5L02Mk3Z15A==
X-Received: by 2002:a7b:c5ce:: with SMTP id n14mr22212676wmk.18.1557872020182; 
 Tue, 14 May 2019 15:13:40 -0700 (PDT)
Received: from workhorse.lan (ip-37-201-4-220.hsi13.unitymediagroup.de.
 [37.201.4.220])
 by smtp.googlemail.com with ESMTPSA id k184sm692361wmk.0.2019.05.14.15.13.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 15:13:39 -0700 (PDT)
Message-ID: <3762a2ddf33ffe4430215fd0da6fe2692cf5914b.camel@ettus.com>
To: Andre.Rosete@colorado.edu, usrp-users@lists.ettus.com
Date: Wed, 15 May 2019 00:13:38 +0200
In-Reply-To: <CAMt1L-_=8FpQ1YAP8hTjq8bkY9t2z1V7UAp75UAahS81XFnA0Q@mail.gmail.com>
References: <CAMt1L-_=8FpQ1YAP8hTjq8bkY9t2z1V7UAp75UAahS81XFnA0Q@mail.gmail.com>
User-Agent: Evolution 3.30.4 (3.30.4-1.fc29) 
Mime-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Noise Capture with B200mini
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

SGVsbG8gQW5kcmUsCgpJIHN1c3BlY3QgdGhyZWUgdGhpbmdzIGJlaW5nIGF0IHdvcmsgaGVyZToK
CjEuIFNwdXJzIGZyb20gdGhlIG1peGVyIC8gc3ludGhlc2l6ZXI6IFBsb3QgdGhlIHxGRlR8wrIg
KGkuZS4gc2ltcGx5CnBsYXkgYmFjayB0aGUgZmlsZSB0aHJvdWdoIGEgUXQgR1VJIGZyZXF1ZW5j
eSBzaW5rKSB3aXRoIGEgaGlnaCBGRlQKbGVuZ3RoLiBEbyB5b3Ugc2VlIHBlYWtzIGluIHRoZXJl
PyBXaXRoIHRoZSBQU0QgKGFzc3VtaW5nIHRoZSBzaWduYWwgaXMKV1NTKSBiZWluZyBib3RoIHRo
ZSBNYWduaXR1ZGUgc3F1YXJlIG9mIHRoZSBGb3VyaWVyIHRyYW5zZm9ybSBvZiB0aGUKc2lnbmFs
IEFORCB0aGUgdmFsdWUgb2YgdGhlIEZvdXJpZXIgdHJhbnNmb3JtIG9mIHRoZSBhdXRvY29ycmVs
YXRpb24KZnVuY3Rpb24sIHBlYWtzIGhlcmUgaW5kaWNhdGUgYSBzaW51c29pZGFsIGNvcnJlbGF0
aW9uLCBhcyB5b3UgbWlnaHQgYmUKb2JzZXJ2aW5nLgoKMi4gVGhlIGFudGktYWxpYXNpbmcgZmls
dGVycyBvZiBjb3Vyc2UgY29udmVydCBhIHBlcmZlY3RseSB3aGl0ZSBzaWduYWwKdG8gYSBiYW5k
bGltaXRlZCBzaWduYWw6IHlvdSBzaG91bGQgc2VlICJyb3VuZGlzaCIgcm9sbG9mZiBhdCB0aGUg
ZWRnZXMKb2YgdGhlIG55cXVpc3Qgem9uZS4gVGhhdCBvZiBjb3Vyc2UgKHRocm91Z2ggdGhlIGlu
dmVyc2UgRlQpCmNvcnJlc3BvbmRzIHRvIGEgbm9uLWRpcmFjIGF1dG9jb3JyZWxhdGlvbiBmdW5j
dGlvbiwgaS5lLiBjb3JyZWxhdGlvbi4gCgozLiBCeSBvdmVyZHJpdmluZyB0aGUgYW5hbG9nIHJl
Y2VpdmUgY2hhaW4sIHlvdSBtaWdodCBiZSBicmluZ2luZyBpdCB0bwpiZWhhdmUgbm9ubGluZWFy
bHk7IGEgc2ltcGxlIHRob3VnaHQgZXhwZXJpbWVudCBzaG93cyB0aGF0IHRoaXMgbWlnaHQKYmUg
cnVpbmluZyB0aGUgd2hpdGVuZXNzIG9mIHlvdXIgbm9pc2UgKGkuZS4gdGhlIHVuY29ycmVsYXRl
ZG5lc3MpOgp1bmNvcnJlbGF0ZWQgbm9pc2UgbXVzdCBoYXZlIGEgemVybyBtZWFuLgpTcXVhcmlu
ZyB6ZXJvLW1lYW4gbm9pc2Ugb2YgYW55IHZhcmlhbmNlID4gMCBtdXN0IGxlYWQgdG8gbm9uLXpl
cm8gbWVhbgpub2lzZS4KWmVyby1tZWFuIG5vaXNlIG1lYW5zIGEgZGlyYWMgaW1wdWxzZSBpbiB0
aGUgUFNEIGF0IGY9MC4KVGhhdCBtZWFucyBjb3JyZWxhdGVkbmVzcy4KCkFsc28sIG5vbmxpbmVh
cml0eSB3aWxsIGxlYWQgdG8gaW5jcmVhc2VkIHNwdXJzIGFuZCBzcHVyCmludGVybW9kdWxhdGlv
biAoc2VlIDEuKS4KClNvLCBtYWtlIHN1cmUgeW91J3JlIG5vdCBvdmVyZHJpdmluZyB5b3VyIHJl
Y2VpdmUgY2hhaW4g4oCTIGl0J3MgYQpkZWxpY2F0ZSBmbG93ZXIhCgpCZXN0IHJlZ2FyZHMsCk1h
cmN1cwoKT24gVHVlLCAyMDE5LTA1LTE0IGF0IDEzOjM4IC0wNjAwLCBBbmRyZSBSb3NldGUgdmlh
IFVTUlAtdXNlcnMgd3JvdGU6Cj4gSGVsbG8KPiAKPiBJIGNhcHR1cmVkIG5vaXNlIHNhbXBsZXMg
KGZyb20gYW4gYXR0YWNoZWQgbm9pc2UgZGlvZGUpIHdpdGggdGhlCj4gQjIwMG1pbmkgdXNpbmcg
R05VIFJhZGlvIENvbXBhbmlvbi4gSSBzZXQgdGhlIGdhaW4gdG8gOTAgZEIgd2l0aCB0aGUKPiBp
bnRlbnRpb24gb2YgbWluaW1pemluZyB0aGUgbm9pc2UgZmlndXJlLiBIb3dldmVyLCB0aGlzIGNh
dXNlZCB0aGUKPiBub2lzZSBzYW1wbGVzIHRvIHNob3cgY29ycmVsYXRpb24gLSBhcyBpZiB0aGV5
IHdlcmUgc2FtcGxlcyBvZiBhCj4gc2lnbmFsLCByYXRoZXIgdGhhbiBBV0dOLCB3aGljaCBzaG91
bGQgYmUgdW5jb3JyZWxhdGVkLiBJIHVzZWQgNDAgTUh6Cj4gb2YgYmFuZHdpZHRoIGFuZCA0MCBN
ZWdhc2FtcGxlcyBwZXIgc2Vjb25kLCB3aXRoIGNlbnRlciBmcmVxdWVuY3kgYXQKPiA1ODAwIE1I
ei4KPiAKPiBJcyB0aGlzIGEga25vd24gaXNzdWUsIGFuZCBhcmUgdGhlcmUgb3B0aW1hbCBzZXR0
aW5ncyB0aGF0IEkgY2FuIHVzZQo+IHRvIG1pbmltaXplIG5vaXNlIHNhbXBsZSBjb3JyZWxhdGlv
bj8gRm9yIGV4YW1wbGUsIHdpdGggcmVzcGVjdCB0bwo+IGdhaW4/Cj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNv
bS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
