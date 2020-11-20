Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 553A32BB18D
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 18:38:54 +0100 (CET)
Received: from [::1] (port=49370 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgAN2-0004J8-Hq; Fri, 20 Nov 2020 12:38:52 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:44972)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dw2zq@virginia.edu>) id 1kgAMx-00048C-QY
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 12:38:47 -0500
Received: by mail-qk1-f177.google.com with SMTP id d28so9614306qka.11
 for <usrp-users@lists.ettus.com>; Fri, 20 Nov 2020 09:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=virginia-edu.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=7YQerzi1j7rOMZWPHHbbxh7D3vJ+INQBEgAeFlf/k84=;
 b=ehQaKIlRyQdJ2vumhzj/+0oitHN/aX0i+7rj8mKC+c0icWo4oSmlGaIOIW81cM4jlu
 N2Z4NDeSGLlc55ArdzrCOxR8M+sIPkAjPQ8+0wkcRhz7i2IwSHgal/9hmyTDOd6S8i6z
 0Csmgk/C6WAQ7TGYRZMjOwknZjN2P556aOLBgKNiKCHkCJdztBbFnETOgc97dNvkhA+Y
 LCi6C8p91/1FF/QPDSOvQ0JDipl8mnHSoNSLm8soQapkePeJzqB5983EOF/P9yY4n3rI
 g0JgyD3vSVQCI50lJZRDc/Ki2sKlARuVC70L4pB8/DEggJvuiB4Xs5GvD5NXHM0g1WSF
 IGBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=7YQerzi1j7rOMZWPHHbbxh7D3vJ+INQBEgAeFlf/k84=;
 b=l6hoOBI/dsvMkKGtuS+s/UQaBfd5N8c3BTPgWG709dh/QRxxemFiiyWtI3d8iadZ2O
 eYFoKPF8JdZWFtmHTJNnmrTALPsoOvPrk7Ezj+SrB18wGmSxfOiefnnAWJeBNMcOoR/8
 bVoW9KWIhx5av1vcKZSDpLmUjDRK7M+lPDzxqj5Ama2rv1FuskhNdqhAvFPoDZhG6XIV
 8evvuXNGlSK3AuMoFaxFOaT3lXssz7lBotfxkn/zbab1pActEVgvtLd+37Ts01Mtwc2x
 naK+H6nbZGbNCg+kcdburdX6W3wS7YSujSGOlu4G89xTv2mFEpfp8NsG+EfXiliZa+KY
 +WiQ==
X-Gm-Message-State: AOAM533vvXsPi86QolBRKxlBzMnZRR7tPTXLrz8SNo31pzF3Q50pPif6
 tBHLMFXWdS0bGYXjajRQ8ZC+RpDj0znauQ==
X-Google-Smtp-Source: ABdhPJwrvJfESECh1JL00QDTNg2jYtRFo7sEbCwQRonJomI2URUStoSoRIUMELY2Hkx3KYbB5h+kCg==
X-Received: by 2002:a37:9b0b:: with SMTP id d11mr7509337qke.129.1605893887092; 
 Fri, 20 Nov 2020 09:38:07 -0800 (PST)
Received: from [10.8.198.130] (c-73-40-68-102.hsd1.va.comcast.net.
 [73.40.68.102])
 by smtp.gmail.com with ESMTPSA id f189sm2354104qkb.84.2020.11.20.09.38.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Nov 2020 09:38:06 -0800 (PST)
Message-ID: <6d4202c60c2fab68d67e9159675bf79beddbf11d.camel@virginia.edu>
To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Date: Fri, 20 Nov 2020 12:38:08 -0500
In-Reply-To: <CAFche=jx=4hbt0Dao8h_k1OMCxHu2XOeFSX=bYvQANONp_p81Q@mail.gmail.com>
References: <8b07db0bd61586f4d91a9b7b65e5f21b74c332df.camel@virginia.edu>
 <CAFche=jx=4hbt0Dao8h_k1OMCxHu2XOeFSX=bYvQANONp_p81Q@mail.gmail.com>
User-Agent: Evolution 3.38.1 
MIME-Version: 1.0
Subject: Re: [USRP-users] RfnocError: OpTimeout
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

SGkgV2FkZSwKCkluY3JlYXNpbmcgdGhlIHNpemUgb2YgdGhlIHJlbGV2YW50IGJ1ZmZlcnMgZG9l
cyBzb3VuZCBpbnRlcmVzdGluZy4KVW5mb3J0dW5hdGVseSBJJ20gbm90IHJlYWxseSBmYW1pbGlh
ciB3aXRoIHRoZSB3b3JrZmxvdyBmb3IgYnVpbGRpbmcKdGhlIEZQR0EgYml0c3RyZWFtLiBJJ2Qg
YmUgaW50ZXJlc3RlZCBpbiB0cnlpbmcgaXQgaWYgeW91IGNvdWxkIHBvaW50Cm1lIHRvd2FyZHMg
dXAtdG8tZGF0ZSBkb2N1bWVudGF0aW9uIG9uIGRvaW5nIGl0LCBzbyBsb25nIGFzIHRoZXJlCndv
dWxkbid0IGJlIGEgbWFqb3Igc29mdHdhcmUgcHVyY2hhc2UgaW52b2x2ZWQuIAoKRHVzdGluCgpP
biBXZWQsIDIwMjAtMTEtMTggYXQgMTk6MTIgLTA2MDAsIFdhZGUgRmlmZSB3cm90ZToKPiBEdXN0
aW4sCj4gCj4gSXQgc291bmRzIGxpa2UgdGhlIHNvZnR3YXJlIHRoaW5rcyB0aGUgY29udHJvbCBw
b3J0IEZJRk8gaXMgZmlsbGluZwo+IHVwLiBBcmUgeW91IGlzc3VpbmcgYSBsb3Qgb2YgdGltZWQg
Y29tbWFuZHMsIG1heWJlIGZhciBpbnRvIHRoZQo+IGZ1dHVyZT8gSSB3b25kZXIgaWYgaXNzdWlu
ZyBjb21tYW5kcyBmYXN0ZXIgdGhhbiB0aGV5IGFyZSBiZWluZwo+IGV4ZWN1dGVkIGNvdWxkIGNh
dXNlIHRoZSBGSUZPIG9uIHRoZSBGUEdBIHRvIGZpbGwgdXAgd2l0aCBjb21tYW5kcy4KPiAKPiBZ
b3UgY291bGQgdHJ5IGluY3JlYXNpbmcgdGhlIHRpbWVvdXQuIE9yLCBpZiB5b3UncmUgY29tZm9y
dGFibGUgd2l0aAo+IGJ1aWxkaW5nIHRoZSBGUEdBIGJpdHN0cmVhbSwgeW91IGNhbiB0cnkgaW5j
cmVhc2luZyB0aGUgRklGTyBzaXplcyBvbgo+IHRoZSBGUEdBLiBCdXQgZWl0aGVyIG9mIHRoZXNl
IG1pZ2h0IGp1c3QgZGVsYXkgdGhlIGluZXZpdGFibGUuIEknbQo+IG5vdCBzdXJlIHdoaWNoIGJs
b2NrIGlzIGNhdXNpbmcgdGhlIHRpbWVvdXQsIGJ1dCB0aGVzZSBhcmUgdGhlIGxpa2VseQo+IGN1
bHByaXRzIGlmIHlvdSB3YW50IHRvIHRyeSBpbmNyZWFzaW5nIHRoZSBGSUZPIHNpemVzOgo+IAo+
IGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL21hc3Rlci9mcGdhL3Vz
cnAzL2xpYi9yZm5vYy9ibG9ja3MvcmZub2NfYmxvY2tfcmFkaW8vbm9jX3NoZWxsX3JhZGlvLnYj
TDE0Nwo+IGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL21hc3Rlci9m
cGdhL3VzcnAzL2xpYi9yZm5vYy9ibG9ja3MvcmZub2NfYmxvY2tfcmFkaW8vbm9jX3NoZWxsX3Jh
ZGlvLnYjTDE5NAo+IAo+IGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9i
L21hc3Rlci9mcGdhL3VzcnAzL2xpYi9yZm5vYy9ibG9ja3MvcmZub2NfYmxvY2tfZHVjL25vY19z
aGVsbF9kdWMudiNMMTMxCj4gaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2Js
b2IvbWFzdGVyL2ZwZ2EvdXNycDMvbGliL3Jmbm9jL2Jsb2Nrcy9yZm5vY19ibG9ja19kdWMvbm9j
X3NoZWxsX2R1Yy52I0wxNzgKPiAKPiBodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC91
aGQvYmxvYi9tYXN0ZXIvZnBnYS91c3JwMy9saWIvcmZub2MvYmxvY2tzL3Jmbm9jX2Jsb2NrX2Rk
Yy9ub2Nfc2hlbGxfZGRjLnYjTDEzMQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNo
L3VoZC9ibG9iL21hc3Rlci9mcGdhL3VzcnAzL2xpYi9yZm5vYy9ibG9ja3MvcmZub2NfYmxvY2tf
ZGRjL25vY19zaGVsbF9kZGMudiNMMTc4Cj4gCj4gWW91IG1pZ2h0IHRyeSBkb3VibGluZyB0aGUg
bnVtYmVyIGluIGVhY2ggY2FzZSB0aGVuIHJlYnVpbGQgeW91ciBGUEdBCj4gaW1hZ2UuIAo+IAo+
IFRoYW5rcywKPiAKPiBXYWRlCj4gCj4gCj4gT24gV2VkLCBOb3YgMTgsIDIwMjAgYXQgOToyNSBB
TSBEdXN0aW4gV2lkbWFubiB2aWEgVVNSUC11c2Vycwo+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4gd3JvdGU6Cj4gPiBIaSB1c3JwLXVzZXJzLAo+ID4gCj4gPiB0ZXJtaW5hdGUgY2FsbGVk
IGFmdGVyIHRocm93aW5nIGFuIGluc3RhbmNlIG9mICd1aGQ6Om9wX3RpbWVvdXQnCj4gPiDCoCB3
aGF0KCk6wqAgUmZub2NFcnJvcjogT3BUaW1lb3V0OiBDb250cm9sIG9wZXJhdGlvbiB0aW1lZCBv
dXQKPiA+IHdhaXRpbmcKPiA+IGZvciBzcGFjZSBpbiBjb21tYW5kIGJ1ZmZlcgo+ID4gCj4gPiBJ
J3ZlIGJlZW4gZ2V0dGluZyB0aGUgZXJyb3IgYWJvdmUgb2NjYXNpb25hbGx5LCB1c3VhbGx5IGFm
dGVyIGhvdXJzCj4gPiBvZgo+ID4gb3BlcmF0aW9uLiBJJ3ZlIGdvdCBhIGZldyBxdWVzdGlvbnMg
YWJvdXQgaXQ6Cj4gPiAqIFRoZSBlcnJvciBzZWVtcyBzZWxmIGV4cGxhbmF0b3J5LCBidXQgd2h5
IG1pZ2h0IGl0IGhhcHBlbgo+ID4gc29tZXRpbWVzCj4gPiBhbmQgbm90IG90aGVycz8KPiA+ICog
QXJlIHRoZXJlIGFueSBzdGVwcyBJIGNhbiB0YWtlIHRvIHByZXZlbnQgdGhlIGVycm9yIGZyb20K
PiA+IG9jY3VycmluZz8KPiA+ICogQWx0ZXJuYXRlbHksIHdoYXQgd291bGQgYmUgdGhlIGJlc3Qg
d2F5IHRvIGNhdGNoIGFuZCByZWNvdmVyIGZyb20KPiA+IGl0Pwo+ID4gCj4gPiBSZWxldmFudCBj
b250ZXh0Ogo+ID4gKiBVU1JQIFgzMTAKPiA+ICogKiB1YnggKHVzaW5nIGZvciAxeCB0cmFuc21p
dCkKPiA+ICogKiB0d2lucnggKHVzaW5nIGZvciAyeCBwaGFzZSBzeW5jaHJvbm91cyByeCwgd2l0
aCBsbyBzaGFyaW5nKQo+ID4gKiBVSEQgNC4wIEMrKyBBUEksIG11bHRpdXNycAo+ID4gCj4gPiBE
dXN0aW4KPiA+IAo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiA+IFVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tCj4gPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3Vz
cnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
