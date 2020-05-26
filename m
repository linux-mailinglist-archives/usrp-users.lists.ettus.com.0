Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 496B01E2F75
	for <lists+usrp-users@lfdr.de>; Tue, 26 May 2020 21:53:18 +0200 (CEST)
Received: from [::1] (port=38986 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jdfdS-00075d-KM; Tue, 26 May 2020 15:53:14 -0400
Received: from mail-wm1-f50.google.com ([209.85.128.50]:35982)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93)
 (envelope-from <andre.puschmann@softwareradiosystems.com>)
 id 1jdfdO-00071P-C0
 for USRP-users@lists.ettus.com; Tue, 26 May 2020 15:53:10 -0400
Received: by mail-wm1-f50.google.com with SMTP id u188so816601wmu.1
 for <USRP-users@lists.ettus.com>; Tue, 26 May 2020 12:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=softwareradiosystems-com.20150623.gappssmtp.com; s=20150623;
 h=to:cc:references:from:autocrypt:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=l8NOR0xuVVYVRiyC2/myFpwlMiIOvMpOVI5sZ9XRH1Q=;
 b=OT0i5e3DM/WTuKxKO8Q3IwTWuSzOhNUh1DhEjyWFxhRKzypfUFjIUr3TLCpvYtQI1m
 21JJGsuJ2vWOUlNVJtpPX0+jwgT60QGN2vFKZg5Vr/VEFHKe843TemQRnzoQA4C00msA
 K5zf94jNw+dPAUvp3+39tQYMH9npNL3fK5R9ZymhDnCsQ9yKvJXLO/iYivyxXiqi4cUS
 k0BUk4xKLg/s5w/2+KIxmA6JI6XFqno2rcobsK5ESAq2bQAhxn5h4p2kePmpB98AULUn
 3P1FLhLfA9NwEPVWkgYwxrnVgeKyEusULRZFyj8fa6Pgn/bPX00kL6SaQp41x6qUPs0+
 HzzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:autocrypt:subject
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=l8NOR0xuVVYVRiyC2/myFpwlMiIOvMpOVI5sZ9XRH1Q=;
 b=kNebACGS/iBfvjwCORqcOGMZmsP/ChJ4rRijiArmh5YXRtXptFUHjnVHKTkQQRctBt
 OKSR8MnlYKLk49CIRLzFE12rGiIdAU9bQAyAJMEhiKzbMHEO2792q/wsp1HBzyDgPIUi
 SnfIT9U/IWfnG4siHH+jALade1/uTHU/DYkH+lVFAXviQYn0QZhUT1IvCOKEqEdscJ95
 WKRjL5Xiqd9ury4EtoGKxQsgNCAOOlW+/GzwfhD77QZRGrA04XPAB+2ylZ6s/onv0DG3
 IDpAZTkwEhWHv3gSI6BS3qXrm62hE7AraKiU0Gt1jSZ3qQhfB3S46FqB6CL+/cxptuyE
 2FYQ==
X-Gm-Message-State: AOAM5331xhOMMQ+RbHli3wBEmXr+ds9/MEpH5jkKXB8yZtmiAefrd3mk
 ti+5waL4mMqt6FIJoCv7PXGGMcGM6iI=
X-Google-Smtp-Source: ABdhPJwe0UmeFfcQfa/YqnI+avc9anHPfsvXJ8tQSwLeRVpDZkRzYRp5TxB8Tfco8M3FWPsN+7MPPg==
X-Received: by 2002:a1c:4302:: with SMTP id q2mr785863wma.54.1590522748935;
 Tue, 26 May 2020 12:52:28 -0700 (PDT)
Received: from [10.11.14.131] (static-177-184-84-188.ipcom.comunitel.net.
 [188.84.184.177])
 by smtp.gmail.com with ESMTPSA id b18sm716843wrn.88.2020.05.26.12.52.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 12:52:27 -0700 (PDT)
To: Marcus D Leech <patchvonbraun@gmail.com>
References: <e52a564e-7e00-832f-b70a-ced7f3427a49@softwareradiosystems.com>
 <AECCDB64-FB01-4A7A-BAEC-46FF6F635269@gmail.com>
Autocrypt: addr=andre.puschmann@softwareradiosystems.com;
 prefer-encrypt=mutual; keydata=
 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
Message-ID: <c6bbe610-24e3-af07-d54e-ca3158ae0e6c@softwareradiosystems.com>
Date: Tue, 26 May 2020 21:52:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <AECCDB64-FB01-4A7A-BAEC-46FF6F635269@gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] B210 initialization error - device left unusable
 after some time
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
From: Andre Puschmann via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andre Puschmann <andre.puschmann@softwareradiosystems.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
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

SGV5IE1hcmN1cywKCnRoYW5rcyBmb3IgdGhlIHJlc3BvbnNlLgoKT24gMjUvNS8yMCAyMzo0NCwg
TWFyY3VzIEQgTGVlY2ggd3JvdGU6Cj4gTWlnaHQgc2VlbSBzaWxseQo+IEJ1dCBoYXZlIHlvdSB0
cmllZCBhIGRpZmZlcmVudCBVU0IgY2FibGUhCj4gCj4gRG9lcyBpdCBleGhpYml0IHRoaXMgYmVo
YXZpb3IgaW4gYSBkaWZmZXJlbnQgaG9zdD8KPiAKPiBJcyBpdCBqdXN0IHRoaXMgb25lIGRldmlj
ZT8KCkFjdHVhbGx5IHdlIGhhdmUgYW5vdGhlciBzZXR1cCB3aXRoIGEgZGlmZmVyZW50IGhvc3Qg
YW5kIGRpZmZlcmVudCBCMjEwCnRoYXQgc2hvd3MgYSBzaW1pbGFyIGJlaGF2aW9yLgoKSSBoYWQg
dGhlIGZlZWxpbmcgdGhhdCB3aGVuIHVzaW5nICJvdHctZm9ybWF0PXNjMTIiIGZvciBzb21lIG9m
IHRoZQpjb25maWdzIHdlIGFyZSBydW5uaW5nLCB0aGUgcHJvYmxlbSBoYXBwZW5zIHF1aWNrZXIu
IEJ1dCBpdCdzIGp1c3QgYQpmZWVsaW5nLiBJcyB0aGVyZSBhbnkga25vd24gdW5zdWl0YWJpbGl0
eSBvciBjYXZlYXQgd2hlbiB1c2luZyBzYzEyPwoKSW4gYW55IGNhc2UsIEknbGwgdHJ5IHRvIGFw
cHJvYWNoIHRoZSBpc3N1ZSBhIGJpdCBtb3JlIHN5c3RlbWF0aWMgb3Zlcgp0aGUgY29taW5nIGRh
eXMvd2Vla3MgYW5kIGNhcmVmdWxseSBzd2FwIGNhYmxlL1VTUlBzL2hvc3RzIHRvIHNlZSBpZiB3
ZQpjYW4gaWRlbnRpZnkgYSBwYXR0ZXJuLiBUaGlzIG1heSB0YWtlIGEgd2hpbGUgdGhvdWdoIGR1
ZSB0byB0aGUgY3VycmVudApzaXR1YXRpb24gd2l0aCBsYWIgYWNjZXNzLCBldGMuCgpBbnl3YXks
IGlmIHRoZXJlIGlzIGFueXRoaW5nIGVsc2UgdGhhdCBJIGNvdWxkIHRyeSwgbGV0IG1lIGtub3cu
CgpUaGFua3MKQW5kcmUKCgoKPiAKPiAKPiAKPiBTZW50IGZyb20gbXkgaVBob25lCj4gCj4+IE9u
IE1heSAyNSwgMjAyMCwgYXQgNDo1NSBQTSwgQW5kcmUgUHVzY2htYW5uIHZpYSBVU1JQLXVzZXJz
IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4+Cj4+IO+7v0hleSBndXlzLAo+
Pgo+PiBJIGFtIGZhY2luZyBhIHdlaXJkIGlzc3VlIHdpdGggb25lIG9mIHRoZSBCMjEwIHdlIHVz
ZSBpbiBvdXIgQ0kgc2V0dXAuCj4+IEl0IHVzZWQgYWxsIGRheSBsb25nIHdpdGggc2hvcnRlciBh
bmQgbG9uZ2VyIHJ1bnMsIHdpdGggZGlmZmVyZW50Cj4+IGJhbmR3aWR0aCBjb25maWd1cmF0aW9u
cywgbnVtYmVyIG9mIGNoYW5uZWxzLCBzdHJlYW0gcGFyYW1ldGVycywgZXRjLgo+Pgo+PiBUaGF0
IHdvcmtzIGZpbmUgaW4gcHJpbmNpcGxlIGJ1dCBhZnRlciBhIHdoaWxlIHRoZSBkZXZpY2Ugc2lt
cGx5Cj4+IHdvdWxkbid0IHdvcmsgYW55IGxvbmdlci4gVGhlIGFwcCBpcyB1bmFibGUgdG8gaW5p
dCB0aGUgZGV2aWNlLgo+Pgo+PiAkIHVoZF91c3JwX3Byb2JlCj4+IFtJTkZPXSBbVUhEXSBsaW51
eDsgR05VIEMrKyB2ZXJzaW9uIDcuNS4wOyBCb29zdF8xMDY1MDE7Cj4+IFVIRF8zLjE1LjAuSEVB
RC0wLWdhZWEwZTJkZQo+PiBbSU5GT10gW0IyMDBdIExvYWRpbmcgZmlybXdhcmUgaW1hZ2U6Cj4+
IC91c3Ivc2hhcmUvdWhkL2ltYWdlcy91c3JwX2IyMDBfZncuaGV4Li4uCj4+IFtFUlJPUl0gW1VI
RF0gRGV2aWNlIGRpc2NvdmVyeSBlcnJvcjogRW52aXJvbm1lbnRFcnJvcjogSU9FcnJvcjogQ291
bGQKPj4gbm90IGxvYWQgZmlybXdhcmU6Cj4+IEVudmlyb25tZW50RXJyb3I6IElPRXJyb3I6IGlo
ZXhfcmVhZGVyOjpyZWFkKCk6IHJlY29yZCBoYW5kZXIgcmV0dXJuZWQKPj4gZmFpbHVyZSBjb2Rl
Cj4+IEVycm9yOiBMb29rdXBFcnJvcjogS2V5RXJyb3I6IE5vIGRldmljZXMgZm91bmQgZm9yIC0t
LS0tPgo+PiBFbXB0eSBEZXZpY2UgQWRkcmVzcwo+Pgo+PiBUcnlpbmcgdG8gcmVzZXQgZ2l2ZXMg
dGhlIHNhbWUgZXJyb3I6Cj4+Cj4+ICQgL3Vzci9saWIvdWhkL3V0aWxzL2IyeHhfZngzX3V0aWxz
IC1ECj4+IERldmljZSBvcGVuZWQgKFZJRD0weDI1MDAsUElEPTB4MDAyMCkKPj4gQjJ4eCBkZXRl
Y3RlZC4uLiBDb250cm9sIG9mIEIyeHggZ3JhbnRlZC4uLgo+Pgo+PiBMb2FkaW5nIGZpcm13YXJl
Cj4+IFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDcuNS4wOyBCb29zdF8xMDY1
MDE7Cj4+IFVIRF8zLjE1LjAuSEVBRC0wLWdhZWEwZTJkZQo+PiBbSU5GT10gW0IyMDBdIExvYWRp
bmcgZmlybXdhcmUgaW1hZ2U6Cj4+IC91c3Ivc2hhcmUvdWhkL2ltYWdlcy91c3JwX2IyMDBfZncu
aGV4Li4uCj4+IEV4Y2VwdGlvbiB3aGlsZSBsb2FkaW5nIGZpcm13YXJlOiBFbnZpcm9ubWVudEVy
cm9yOiBJT0Vycm9yOiBDb3VsZCBub3QKPj4gbG9hZCBmaXJtd2FyZToKPj4gRW52aXJvbm1lbnRF
cnJvcjogSU9FcnJvcjogaWhleF9yZWFkZXI6OnJlYWQoKTogcmVjb3JkIGhhbmRlciByZXR1cm5l
ZAo+PiBmYWlsdXJlIGNvZGUKPj4KPj4KPj4gQWZ0ZXIgdGhhdCBoYXBwZW5lZCB0aGUgb25seSB3
YXkgdG8gcmVjb3ZlciB0aGUgZGV2aWNlIGlzIHVucGx1ZyB0aGUKPj4gVVNSUC4gQSBzaW1wbGUg
cmVib290IGRvZXNuJ3QgaGVscC4gRG1lc2cgZG9lc24ndCBzaG93IGFueSBpc3N1ZXMuCj4+Cj4+
IFVIRCBpcyAzLjE1IGNvbXBpbGVkIGZyb20gc291cmNlIG9uIGEgdmFuaWxsYSBVYnVudHUgMTgu
MDQgTFRFIChzaWRlCj4+IG5vdGU6IHRoZXJlIGFyZSBubyBwcmUtYnVpbHQgcGFja2FnZXMgZm9y
IDMuMTUgaW4gdGhlIDE4LjA0IFBQQSkuIFN5c3RlbQo+PiBpcyBhIEludGVsIE5VQyBTa3VsbCBD
YW55b24uIENhYmxlcyBhcmUgc3RvY2sgb25lcy4gTGV0IG1lIGtub3cgaWYgeW91Cj4+IG5lZWQg
YW55IGZ1cnRoZXIgaW5mb3JtYXRpb24gb24gdGhlIHNldHVwLgo+Pgo+PiBBbnkgcG9pbnRlcnMg
b24gd2hhdCBtaWdodCBiZSB3cm9uZyBoZXJlIGFyZSBoaWdobHkgYXBwcmVjaWF0ZWQuCj4+Cj4+
IENoZWVycwo+PiBBbmRyZQo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+PiBVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQo+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCgotLSAKQW5kcmUgUHVzY2htYW5uCgpTb2Z0d2Fy
ZSBSYWRpbyBTeXN0ZW1zIChTUlMpCmh0dHA6Ly93d3cuc29mdHdhcmVyYWRpb3N5c3RlbXMuY29t
CgpQR1AvR251UEcga2V5OiA2QzQyQUIzMQpmaW5nZXJwcmludDogMTM3QSBBRTQ5IDc4NUIgQTQ0
NSAyNTdDIDhBRDcgRDg3NyBBNDk4IDZDNDIgQUIzMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZv
L3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
