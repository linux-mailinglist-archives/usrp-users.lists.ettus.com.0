Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5294E407396
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 00:50:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D1AA38486C
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 18:50:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Q3w/D744";
	dkim-atps=neutral
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B150B38478D
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 18:49:49 -0400 (EDT)
Received: by mail-wr1-f46.google.com with SMTP id d6so4702428wrc.11
        for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 15:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=XAU+C8bzy7sq79WQPrLfj1vOmVORQmvrV3wRYIDH56o=;
        b=Q3w/D744zaKl+3gLMdSScehdDNwDg2PB/nCAuU7MJG2GVc40aCjkWUecOPrHK9odCy
         EUv1NaT0XoCGk5Na2AHWXh59BwAs1wlvlP0P7TJBhhdbDb4G4jyW7qIUaqWY9AMsLibb
         Gs9e72yH5EK6Dfq0QEcRVkp4ogsXX2Ou33roXLCODCeVMAaY9pMmR6E6PJceK3jninu0
         ivSwSxW5K2f0lbyPPU9zx8Dmc9J9sIhc32XATy73ejHSqCpnaYLV4NPYamDyqdYs+wgs
         vrbaWghWgknplXhQPdYsu0Wqv6pTX4AH1Wc/avf/XvCVeaygE7He9pblDSATHHl8NGNA
         zMzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=XAU+C8bzy7sq79WQPrLfj1vOmVORQmvrV3wRYIDH56o=;
        b=Cb1xFoL3YSblBVFyGRhwgt1Pagr8IwcX8IA6bTlE8u158WEs/PBZu94eDnA427eUmm
         hvix+uRn36OjQhKCzOGwylyeqY4a2jt6AfdPw8q20MyVD4y59oB7VE2cQA6xI19lU4UQ
         g3sb+WUy6WawRoLM40PlnzoWcYCU5dtlF9aQTWylD3ccQq38wGI7fwVLAqsUN4T2hdTZ
         tTBCZX51yn7HiR3YcptaXW2HBrEVY33d0CWtZa4Kw1L1mTedAF8Qbxue6ncM0Y/JoJ9L
         a/+PrFGqgilGihIrjOWlUxVRzdfVMmjTZTds080clgzkV/YCnbRVsRDfKu2tVHQKpgku
         O8MQ==
X-Gm-Message-State: AOAM533QkoNnuUnbZkq7Q17pEtDaPOXvmwPiKrJyzhFvbyQArawvXPg8
	SzATAjYtAoFBScQOlhE9t1Jwx35kaRiaWg==
X-Google-Smtp-Source: ABdhPJxTrXhg5W6StQTuBBwmxN+dfzUncWdqaq6cJ0tNi/gGV8K8WnBM0PRCCxa9buboe1nxkM7+DQ==
X-Received: by 2002:adf:f208:: with SMTP id p8mr75989wro.379.1631314188291;
        Fri, 10 Sep 2021 15:49:48 -0700 (PDT)
Received: from ?IPv6:2a02:908:1c11:83a0:711b:5400:643c:491? ([2a02:908:1c11:83a0:711b:5400:643c:491])
        by smtp.gmail.com with ESMTPSA id u23sm20129wmc.24.2021.09.10.15.49.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 15:49:48 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <401c2280-1625-fcce-1ae5-a90e95da07e6@gmail.com>
 <75760422-a05d-95d1-10c1-f571ae8dccb2@gmail.com>
From: msfu <msfu666@gmail.com>
Message-ID: <e255b7bf-ac54-37a7-1c1d-f0c8315b1f83@gmail.com>
Date: Sat, 11 Sep 2021 00:55:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <75760422-a05d-95d1-10c1-f571ae8dccb2@gmail.com>
Content-Language: en-US
Message-ID-Hash: QMF4666TVEMQEZFXFU5NQDTRJ76VF7J5
X-Message-ID-Hash: QMF4666TVEMQEZFXFU5NQDTRJ76VF7J5
X-MailFrom: msfu666@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use a usrp b210 with external gpsdo and nmea0183 as clock source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QMF4666TVEMQEZFXFU5NQDTRJ76VF7J5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpPbiA5LzExLzIxIDEyOjExIEFNLCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6DQo+IE9uIDIwMjEt
MDktMTAgNjowMyBwLm0uLCBtc2Z1IHdyb3RlOg0KPj4gaGkgdGhlcmUsDQo+Pg0KPj4NCj4+IGkg
YW0gdHJ5aW5nIHRvIGdldCBteSBHUFMgdG8gd29yay4NCj4+DQo+PiBzZXR1cCBpcyBhIGIyMTAs
IGV4dGVybmFsIHBsbC1ncHNkbyBiZzd0YmwgY29ubmVjdGVkIHRvIGEgbm1lYTAxODMNCj4+IGFu
dGXFhG5hIGFuZCBhIHZrLTE3MiBVU0ItR1BTLW1vdXNlLg0KPj4NCj4+IGkgY2FuIGdldCBkYXRh
IGZyb20gdGhlIHVzYiByZWNlaXZlciBidXQgaW4gY2dwcyB0aGVyZSBpcyBubyBQUFMgYW5kIG5v
DQo+PiAzRCBGaXguDQo+IEdpdmVuIHRoYXQgdGhpcyBpcyBub3QgdGhlICJwbGVhc2UgaGVscCBt
ZSBkZWJ1ZyBteSBHUFMiIG1haWxpbmcgbGlzdA0KPiBJJ20gbm90IHN1cmUNCj4gwqAgdGhhdCB3
ZSdsbCBiZSBhYmxlIHRvIGhlbHAgeW91IHdpdGggQ0dQUyBoZXJlLg0KPg0KPj4NCj4+IE5vdyB0
aGUgcXVlc3Rpb246IGNhbiBpIGFjdGl2YXRlIG15IHVzcnAgdG8gY29tbXVuaWNhdGUgd2l0aCB0
aGUNCj4+IGV4dGVybmFsIENsb2NrPyBldmVyeXRpbWUgaW0gZG9pbmcgdWhkX3VzcnBfcHJvYmUg
dGhlcmUgaXMgYSBsb2NrIG9uIHRoZQ0KPj4gZ3BzLiB3aGF0IGNhbiBpIGRvPw0KPiBEb2VzIHlv
dXIgQjIxMCBoYXZlIGEgYnVpbHQtaW4gR1BTP8KgIElmIHVoZF91c3JwX3Byb2JlIGlzIGluZGlj
YXRpbmcNCj4gIkdQUyBMb2NrOiBZZXMiLCB0aGVuIHRoYXQNCj4gwqAgbWVhbnMgdGhhdCB0aGUg
KmludGVybmFsKiBHUFMgdW5pdCBpbiB0aGUgQjIxMCBjYW4gc2VlIGVub3VnaA0KPiBzYXRlbGxp
dGVzIHRvIGFjaGlldmUgUExMIGxvY2ssDQo+IMKgIGFuZCBpcyBwcm92aWRpbmcgaGlnaC1wcmVj
aXNpb24gMVBQUyBhbmQgMTBNSHogaW50ZXJuYWxseS4NCj4NCj4gSWYgeW91IHdhbnQgdG8gdXNl
IGFuIGV4dGVybmFsIEdQU0RPIHVuaXQsIHlvdSdsbCBoYXZlIHRvIGRpc2Nvbm5lY3QNCj4gdGhl
IGludGVybmFsIEdQU0RPIHVuaXQgd2l0aGluDQo+IMKgIHRoZSBCMjEwLCBiZWNhdXNlIHRoZSAx
ME1IeiByZWZlcmVuY2UgbGluZSBpbnRlcm5hbGx5IGNhbiBvbmx5IGJlDQo+IGRyaXZlbiBieSBh
IHNpbmdsZSBzb3VyY2UuDQo+DQo+IEluIHRlcm1zIG9mIHNldHVwLCB3aGVuIHlvdXIgYXBwbGlj
YXRpb24gc3RhcnRzLCBpdCBjYW4gdXNlIHRoZQ0KPiBzZXRfdGltZV9zb3VyY2UoKSBhbmQgc2V0
X2Nsb2NrX3NvdXJjZSgpDQo+IMKgIEFQSXMgdG8gc3BlY2lmeSAiZ3BzZG8iIChmb3IgYnVpbHQt
aW4gZ3BzZG8pIG9yICJleHRlcm5hbCIgKGlmIHlvdQ0KPiB3YW50IHRvIGNvbm5lY3QgdGhlIDEw
TUh6IGFuZCAxUFBTDQo+IMKgIGNhYmxlcyB0byB0aGUgQjIxMCkuDQo+DQo+DQp3aGF0IGRvZXMg
YSBjb21tYW5kIGxvb2sgbGlrZSB0byBzZXQgY2xvY2sgYW5kIHRpbWVfc291cmNlIHRvIGV4dGVy
bmFsPw0KDQppIGRvbip0IHJlYWxseSBrbm93IGhvdyB0byBoYW5kbGUgQVBJIENhbGxzLg0KDQpJ
IGFtIHRyeWluZyB0byBzZXQgdGhlIGV4dGVybmFsIGdwc2RvIHdpdGggMTBNSHogYW5kIDFQUFMg
YXMgdGltZSBhbmQNCmNsb2NrIHNvdXJjZSBmb3IgbXkgR1BTIGJlY2F1c2UgaXRzIGZhciBtb3Jl
IGV4YWN0bHkgc28gZmFyIGFzIGkga25vdy4uDQoNCmRvIGkgcmVhbGx5IGhhdmUgdG8gZGlzY29u
bmVjdCB0aGUgaW50ZXJuYWwgZ3BzZG8/IGNhbid0IGkgZXZlbiBjaGFuZ2UNCnRoZSBzb3VyY2Ug
b24gc29mdHdhcmUgYmFzZT8NCg0KdGhhbmsgeW91DQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQo+
Pg0KPj4NCj4+IHRoYW5rcyBpbiBhZHZhbmNlDQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
