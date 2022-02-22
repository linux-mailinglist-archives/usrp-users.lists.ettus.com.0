Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB554BFE47
	for <lists+usrp-users@lfdr.de>; Tue, 22 Feb 2022 17:15:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F015384FC0
	for <lists+usrp-users@lfdr.de>; Tue, 22 Feb 2022 11:15:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="U3HRA2fa";
	dkim-atps=neutral
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 02930384E03
	for <usrp-users@lists.ettus.com>; Tue, 22 Feb 2022 11:15:02 -0500 (EST)
Received: by mail-qv1-f54.google.com with SMTP id h13so67337qvk.12
        for <usrp-users@lists.ettus.com>; Tue, 22 Feb 2022 08:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=mgHTmkJz0a9DZEJQQNAZRNc+vGrmKMuEhyFzkBBI0DM=;
        b=U3HRA2fac8Jez+B0YNqMI+NiRYbRZFwwmxGV2pW5qa55bxVmLLykop3Fe1tCDpy7QP
         QoiYGf6KuLVl6Fx+58rgLkSxjmym584d2fR+DHQwaX374SnJK0G3iKjMlPWt7PtsYgCa
         jpGzp7Ddod2d2ZElw7HBvNN82c8JIEM8G44/ns+5D9DU8GDEw6zStSAgAGSKaIyj16Ug
         Os0M0ApplSH+lLKXphAx+QFFud5r/+15WNGugdXnzbYTF1GXAl8Y0Y5Yx6Vaw0KJb4H/
         2hEoP5uYxfR8jvV7/AJa+B9iTABPF0ictQGfpiNwKx+Vl+VH/dPKFHTxXz45ABOi+hL5
         ltMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mgHTmkJz0a9DZEJQQNAZRNc+vGrmKMuEhyFzkBBI0DM=;
        b=cKtPz/wIho5T0ZLl/VqRcGijH44vpIoAQ7jKN7fjyxp2QhA+2h1L7cjHpMt0/hXMm4
         Js973v/9AvlMgpfSjjH6DhDHegfe24WZzbv5RuM27pLqcAcQ8s6h0pNe9EMKQHu0kMHS
         w13AGQG8Vwe6sbaVOOeix1r9kDP3kB8iNNDqXa70bzO9QSj+4QOJV5vYpUYkortx/qie
         XmkL+xaKdEbJA7+lRM/I8FTLBNnqENsiHAZsmMBd6I/e7kCnMRtty9Rrd7F6OjAiK2Tw
         eo/tWMA3OPgxZWsdTxSrQCyljj6wjnAiph5p3i+1u5x5mobzze0Q5lFmmIxwhQrEEPzB
         YeQQ==
X-Gm-Message-State: AOAM530bWFlkJO/uRaJ90Fu6kOtkPxT+D/pfRwrSJzCU/JEr2H92ceIF
	Xv2arF/ivV5BfHZwRjMreS3GLcLU4jRuxg==
X-Google-Smtp-Source: ABdhPJwI2/CGVEAQbI+gLhSBtOQxhItbheIil0GLrXGTQkbCMsKChFnzTQMsdSUeXvWyPSfrs2k78Q==
X-Received: by 2002:a05:6214:240f:b0:42c:4711:5ec4 with SMTP id fv15-20020a056214240f00b0042c47115ec4mr19865915qvb.6.1645546502428;
        Tue, 22 Feb 2022 08:15:02 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id t23sm11705qtp.67.2022.02.22.08.15.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 08:15:02 -0800 (PST)
Message-ID: <69d0baa5-45f7-44ff-88e3-d0c0a46d381c@gmail.com>
Date: Tue, 22 Feb 2022 11:15:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Alvaro Pendas Recondo <apruhd@gmail.com>
References: <CAAC=UJPdKrPns+vxyowygXQTK7khtLMu8koQqpsvHGQJAOjnHw@mail.gmail.com>
 <4876156c-b6b9-9fb7-7e9f-d0c56961d4f0@gmail.com>
 <CAAC=UJOtVbZ+L_LmRQRtxs1oUWWHODoosoHpx_6s=F-bqmOo1Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAC=UJOtVbZ+L_LmRQRtxs1oUWWHODoosoHpx_6s=F-bqmOo1Q@mail.gmail.com>
Message-ID-Hash: OYWYA6FVSN6VI53E5CT62OJTESJIF4XD
X-Message-ID-Hash: OYWYA6FVSN6VI53E5CT62OJTESJIF4XD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 4 Rx sync with 2 B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OYWYA6FVSN6VI53E5CT62OJTESJIF4XD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMi0yMiAxMTowOCwgQWx2YXJvIFBlbmRhcyBSZWNvbmRvIHdyb3RlOg0KPiBJIGFt
IHRyeWluZyB0byByZXByb2R1Y2UgdGhlIHNpbXBsZSBleGFtcGxlIGRlc2NyaWJlZCBpbiANCj4g
aHR0cHM6Ly9rYi5ldHR1cy5jb20vU3luY2hyb25pemF0aW9uX2FuZF9NSU1PX0NhcGFiaWxpdHlf
d2l0aF9VU1JQX0RldmljZXMgDQo+IChJIGRpZCBmaXJzdCB3aXRoIDIgTjIxMCB3aXRoIGEgcGVy
ZmVjdMKgcmVzdWx0IGJvdGggd2l0aCBhIE1JTU8gY2FibGUgDQo+IGFuZCBhbiBvY3RvY2xvY2sp
LiBJIGFtIHVzaW5nwqBHTlUgUmFkaW8sIHNvIEkgYXR0YWNoIHRoZSB0d28gc2NoZW1lcy4gDQo+
IFRob3NlIGFyZSwgMiBCMjEwIDIgUnggdGhhdCB3b3JrcyBhcyB3ZWxsIGFzIHdpdGggMiBOMjEw
OyBhbmQgMiBCMjEwIDQgDQo+IFJ4LCB3aGVyZSB0aGUgcHJvYmxlbSBhcmlzZXMuIEkgYWxyZWFk
eSBrbmV3IHRoYXQgQjIxMCBpcyBub3QgDQo+IHJlY29tbWVuZGVkIGZvciBNSU1PIHdpdGggbXVs
dGlwbGUgZGV2aWNlcywgYnV0IEkgd2FzIGp1c3QgZ2l2aW5nIGl0IGEgDQo+IHRyeS4gQnkgdGhl
IHdheSwgSSBhbHNvIHdhcyBjYXBhYmxlIG9mIHJlcHJvZHVjaW5nIHRoZSB0ZXN0IHdpdGggb25l
IA0KPiBCMjEwIGFuZCBvbmUgTjIxMCBib3RoIHN5bmNocm9uaXplZMKgd2l0aCB0aGUgb2N0b2Ns
b2NrLiBJIGFsc28gYXR0YWNoIA0KPiBzY3JlZW5zaG90c8Kgc2hvd2luZyB0aGUgcHJvYmxlbSBi
ZXR3ZWVuIHNpZ25hbHMgb2YgdHdvIGRpZmZlcmVudCANCj4gZGV2aWNlc8KgKGFnYWluLCB0aGlz
IG9ubHkgaGFwcGVucyB3aGVuIHVzaW5nIDQgUngsIGJ1dCBub3Qgd2hlbiB1c2luZyANCj4gMiBS
eCB3aXRoIDIgZGlmZmVyZW50IEIyMTApLg0KPg0KVXNlIGEgc3luY2ggb2YgIlVua25vd24gUFBT
IiwgYW5kIGFsc28gc2V0IHRoZSAic3RhcnQgdGltZSIgdG8gMSBvciAyIGluIA0KeW91ciBzb3Vy
Y2UgYmxvY2tzLsKgIEFsc28gaW4gdGhlIDQtY2hhbm5lbCBmbG93LWdyYXBoIHlvdXIgbG93ZXN0
IA0KY2hhbm5lbCBoYXMgbm8gZGVsYXkgb3IgbXVsdGlwbHkNCiDCoCBibG9ja3MgaW4tbGluZSwg
d2hpY2ggbWVhbnMgaXQgd2lsbCBoYXZlIChJIHRoaW5rKSBhIGRpZmZlcmVudCANCmVmZmVjdGl2
ZSBncm91cCBkZWxheSBjb21wYXJlZCB0byB0aGUgb3RoZXIgc3RyZWFtcy4NCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
