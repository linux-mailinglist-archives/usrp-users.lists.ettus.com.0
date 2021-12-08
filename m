Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 411BA46DDB7
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 22:39:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 849A9384AA7
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 16:39:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ji5SPbpV";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C6EB3846CD
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 16:38:20 -0500 (EST)
Received: by mail-qt1-f176.google.com with SMTP id l8so3537927qtk.6
        for <usrp-users@lists.ettus.com>; Wed, 08 Dec 2021 13:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=r1UVAmlbrEMdf5Ed6BixHKzEvbJypXHiw05+MQHXkNo=;
        b=Ji5SPbpVsN5X9G+SnDM7qnBFV290I1FN4HA1Z9yIFjoLRIvHGUJUITvCWK4hRLQxDx
         m5L5iKC3DM/90UNnHiDbt7JVfEUHwCRYUgFGi5xomHcVLsaG8C168aXc8YVkayaazPk2
         EQbqBuzrIWMrULBCb69K05FLA1k6qcUu/fSkPxU72QogHXmkEOXOFrG/V5iUmmTEipP8
         jx3FNM6pCSSnoHvxdLsw7koVwyHcQzSv6oFSh/3rnhXLbBO6pse1hO18HFYkxdaA6V4T
         /U15swUTfaE9mzgB9EN1Ugw0p+P2qbL6NJ9e2xHxRmn6i0VS3Xo5Umc3WPRSeSgEf4eU
         0Uzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=r1UVAmlbrEMdf5Ed6BixHKzEvbJypXHiw05+MQHXkNo=;
        b=Lbdf5mOHILE/PHo2Njv+hTROvEn34rtDKzEjHeC2fCEqllC6dYVz7JG1LDj9yoGj8r
         JVtrWg3K5UAIUBhDOb1S/5ztjt2SOlq2h1GqGGABjSusRRKLeCEQsRhMSviuHxDDdq41
         LrySK5jNObeaGcA9Mo0zSe+bH37n7gGWkEIvLe3B92zGHBrZnPIj6gGIt67kJL9ZHlPl
         K8G6rXjAaQetZ8Mh/pNI4p0FPYRgm0lQRI05j13xqC2sVlcNCsL5pXImmCPK8llgxKTr
         j46+P/PccyKxBFlLI/SUE4fN6chtPQOYujpBaNazv5yYxpVNurTbjw5Df1S5tzmpprWy
         JE7w==
X-Gm-Message-State: AOAM532rWL0I9IfOtc8u4AR9juR8xjIOESXEhE+lX5zEGK9CmEbgZXJK
	qyQkbV3E40BE2AdmC1QAgRCiTTkkua4=
X-Google-Smtp-Source: ABdhPJyAQQ3bpuDWvUEZaoXfP95ZbkimJzMwjyfbYjANEAyLywhPu+alFqX3G4AlnI67u02zDZdtGw==
X-Received: by 2002:a05:622a:4c9:: with SMTP id q9mr10535821qtx.628.1638999499427;
        Wed, 08 Dec 2021 13:38:19 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id w8sm2425161qtc.36.2021.12.08.13.38.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Dec 2021 13:38:18 -0800 (PST)
Message-ID: <c61d276d-37b2-f87b-e764-d7ec41d8a551@gmail.com>
Date: Wed, 8 Dec 2021 16:38:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <B67BC271-3FD1-4728-ACFC-B1F0B655662C@egr.msu.edu>
 <CAB__hTQ1bfM1Nzu+Fmd8J7AMSDK-bFAkDOg+QwtSn9r3jHTFZg@mail.gmail.com>
 <57189909-1FD3-49D8-9AB7-4A8D9E64A737@egr.msu.edu>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <57189909-1FD3-49D8-9AB7-4A8D9E64A737@egr.msu.edu>
Message-ID-Hash: AAAWFN3XTTSPW7QFSVNQEE4HNPQHYW6Y
X-Message-ID-Hash: AAAWFN3XTTSPW7QFSVNQEE4HNPQHYW6Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: In-place Local Clock Update
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AAAWFN3XTTSPW7QFSVNQEE4HNPQHYW6Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMi0wOCAxNjoyOSwgSmFzb24gTWVybG8gd3JvdGU6DQo+IEhpIFJvYiwNCj4NCj4g
VGhhbmtzIGZvciB0aGUgcXVpY2sgcmVzcG9uc2UuDQo+DQo+PiAtIHdoeSBkbyB5b3Ugd2FudCB0
byBhdm9pZCB1c2luZyBQUFM/DQo+IEnigJltIHdvcmtpbmcgb24gdGVjaG5pcXVlcyBmb3IgYWxp
Z25pbmcgdGhlIGNsb2NrcyBvbiB0aGUgWDMxMCdzIGluIA0KPiBlbnZpcm9ubWVudHMgd2hlcmUg
YSBzaGFyZWQgZnJlcXVlbmN5IHJlZmVyZW5jZSBhbmQgUFBTIGRpc3RyaWJ1dGlvbiANCj4gYnkg
Y29udmVudGlvbmFsIG1lYW5zIChjYWJsZWQsIG9yIHZpYSBHTlNTKSBpcyBub3QgZmVhc2libGUu
DQo+DQo+PiAtIGFyZSB5b3UgdXNpbmcgYSBjb21tb24gMTAgTUh6IHJlZj8NCj4gRm9yIHRlc3Rp
bmcgcHVycG9zZXMgSSBoYXZlIGEgc2hhcmVkIDEwIE1IeiByZWZlcmVuY2UgdG8ga2VlcCB0aGUg
DQo+IGNsb2NrcyBmcm9tIGRyaWZ0aW5nLCBzbyBJIG9ubHkgbmVlZCB0byByZW1vdmUgdGhlIGlu
aXRpYWwgdGltaW5nIGJpYXMuDQo+DQo+PiAtIHdoYXQgaXMgdGhlIGxldmVsIG9mICJzeW5jaHJv
bm91cyIgeW91IGFyZSBsb29raW5nIGZvcj/CoCBBcmUgeW91IA0KPj4gaG9waW5nIHRvIGhhdmUg
c2ltdWx0YW5lb3VzIHNhbXBsaW5nIGFjcm9zcyBhbGwgY2hhbm5lbHM/DQo+IFRoZSBnb2FsIGlz
IGZvciB0aGUgc2FtcGxpbmcgdG8gb2NjdXIgd2l0aGluICsvLTAuNSBjbG9jayBjeWNsZXMgDQo+
IGJldHdlZW4gdHdvIFgzMTBzIHdoaWxlIHRoZSBzaGFyZWQgZnJlcXVlbmN5IHJlZmVyZW5jZSBp
cyBwcmVzZW50OyB0aGUgDQo+IHRpbWUgYmlhcyBlc3RpbWF0b3IgaGFzIGJlZW4gdmVyaWZpZWQg
dG8gaGF2ZSBzdWZmaWNpZW50IGFjY3VyYWN5IHRvIA0KPiBzdXBwb3J0IHRoaXMsIHRodXMgSeKA
mW0gbGltaXRlZCBieSB0aGUgYWNjdXJhY3kgd2l0aCB3aGljaCBJIGNhbiBzZXQgDQo+IHRoZSBj
bG9jay4gVG8gYWNoaWV2ZSB0aGUgZ29hbCwgdGhlIHRoZSBjbG9jayBzZXQgb3BlcmF0aW9uIHdv
dWxkIG5lZWQgDQo+IHRvIGJlIGFjY3VyYXRlIHRvIHdpdGhpbiBvbmUgY2xvY2sgY3ljbGUgd2hp
Y2ggSSBiZWxpZXZlIHJlcXVpcmVzIGEgDQo+IG1ldGhvZCBvZiBzZXR0aW5nIHRoZSBsb2NhbCB0
aW1lIG9mZnNldCAoZmV0Y2gsIGFkZCwgd3JpdGUtYmFjaykgdGhhdCANCj4gb2NjdXJzIHdpdGgg
YSBkZXRlcm1pbmlzdGljIGxhdGVuY3kgdGhhdCBjYW4gYmUgY2FsaWJyYXRlZCBmb3IuDQo+DQo+
IEluIHRoZW9yeSwgdGhpcyBzaG91bGQgYmUgcG9zc2libGUgb24gdGhlIEZQR0EsIGJ1dCBJ4oCZ
bSB3b25kZXJpbmcgaWYgDQo+IHRoaXMgaXMgcG9zc2libGUgdmlhIGV4aXN0aW5nIG1lYW5zIGlu
IHRoZSBVSEQgQVBJLCBvciBpZiBpdCBtYXkgYmUgDQo+IGltcGxlbWVudGVkIHVzaW5nIGN1c3Rv
bSBSRk5vQyBibG9ja3Mgc29tZWhvdy4NCj4NCj4gVGhhbmtzIGFnYWluLA0KPiBKYXNvbg0KPg0K
VGhlcmUncyBubyB3YXkgeW91IGNhbiBleHBlY3QgYSBnZW5lcmFsLXB1cnBvc2UgT1MgbGlrZSBM
aW51eCB0byBoYXZlIA0KcHJlZGljdGFibGUgbGF0ZW5jeSBhdCBzY2FsZXMgb2YgMTAwbnNlYyBv
ciBiZXR0ZXIsIGFuZCB0aGF0J3MgDQpwcmV0dHktbXVjaCB3aGF0IHlvdSdyZQ0KIMKgICJmaWdo
dGluZyIgd2hlbiB5b3UgdXNlIHNldF90aW1lX25vdygpL2dldF90aW1lX25vdygpLCBldmVuIG92
ZXIgYSANCnZlcnktZmFzdCBpbnRlcmZhY2UgbGlrZSAxMEdpR2UuwqAgSXQgaXMgcHJlY2lzZWx5
IGZvciB0aGlzIHJlYXNvbiB0aGF0IA0KdGhpbmdzIGxpa2UgMVBQUw0KIMKgIHRyaWdnZXJpbmcg
b24gdGhlIGNsb2NrIHJlc2V0IHdhcyBkZXZlbG9wZWQgYXMgYSB0ZWNobmlxdWUgZm9yIA0Kc3lu
Y2hyb25pemluZyB0aGUgdGltZSBjbG9ja3Mgb24gVVNSUHMgb2YgdmFyaW91cyBmbGF2b3JzLsKg
IEluIHRoZSANCmFsbW9zdCB0d28gZGVjYWRlcyBJJ3ZlDQogwqAgbXVja2VkLWFib3V0IHdpdGgg
U0RSIGluIGdlbmVyYWwsIGFuZCBVU1JQcyBpbiBwYXJ0aWN1bGFyLCBJIGhhdmVuJ3QgDQpzZWVu
IGFueXRoaW5nIGJldHRlciB0aGF0IGEgcGh5c2ljYWwsIHNoYXJlZCwgdHJpZ2dlciBzaWduYWwg
bGlrZSAxUFBTLCANCmNvbWJpbmVkIHdpdGgNCiDCoCBhIHNoYXJlZCAxME1IeiByZWZlcmVuY2Uu
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
