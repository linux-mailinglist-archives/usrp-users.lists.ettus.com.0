Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FDC9D2AE7
	for <lists+usrp-users@lfdr.de>; Tue, 19 Nov 2024 17:28:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCECA385A40
	for <lists+usrp-users@lfdr.de>; Tue, 19 Nov 2024 11:28:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732033700; bh=sTecsCik0D2P16AbJKQgo3R0QiWVXgVR7iR+BimIqRA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tC/nz1qLl7uZG6Kawh4IV+88jF13fuwBL0MeGmL0sU1pYZxoQ7mUxX4bGC2StSXJ5
	 nDTwB87mMo8+PQF1GBCecUrz++jZw15QrMb1OqfQUaKbaeu8IDf5oCyD7BHys3UdY8
	 8NxAZdyTtvdLZV6IiQhoDfc49nOIF5u+ZvtjfeuSabwmXL/8+1eEKNYTVlKgfycSCT
	 QLK+nDpJ1AKNKjztwnFdbjbuEJtHFy63phgMTb6bx+Q9GlSK/XSmGhaSrqAo6MRjs+
	 svjHjDVjdTBJfFt8hmfl6g6AM/4HkgCbktOW6nTCCzR5hAIFYigfmVvHJk2ac49z3c
	 HUUWWnFyue+1A==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 922CF3859E4
	for <usrp-users@lists.ettus.com>; Tue, 19 Nov 2024 11:28:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LrxJRWvN";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6d41eeca2d6so18818136d6.1
        for <usrp-users@lists.ettus.com>; Tue, 19 Nov 2024 08:28:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732033685; x=1732638485; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rl3bdWszVh3N75pf3UWOd4eUO587wrBWzmA93n88r7w=;
        b=LrxJRWvN4GB5hQ5UPy0qO8pQl1GdH7skvvKsl4BdSHTWPPO560QmjBlWoEmumUHqHM
         USOP92hOHjYSZjYjst1rdrPAURF4y/lYfVnKQ8JnnqTdPPg7eC+4w5QCfc5CMGG/LF7W
         fhy4KnGUi0st5r+fdqNrbLQnWfJJrwGtJC4WmlGuZWEsJitCyus1xUWRZAEMfqzAXmCd
         aJI+6EIR0M+bi4X/V1d/T71SlzQ+sjbPHuKcodnthP+4IoL9iC8d50dnuUIQYqS+8mi1
         GN8wPIKSvYkaj9EsyyZbi0kCZ30ApXXVDPEsK9K/t0krfffNdPC+G2SbwK6BMefJ7vBk
         bPog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732033685; x=1732638485;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rl3bdWszVh3N75pf3UWOd4eUO587wrBWzmA93n88r7w=;
        b=JP7wgX/rcukdJ3lm2gPFzlfd02NTWHe9wWtGmSkv4y6SDl6zs7TkJMksFlVCyl/1Yj
         /ikAw1u4IFAUsaHnsMwxazZeqnJsGWm6xxYG95Cdu/rMmRfnNmIXj21LkQvcwbPS7exR
         5XpMPMFW3tYg8aymE7U70zX/jWW/JOn7LdPoXEig+6WRgEQJ2bfodbm8XKrA0y40tCbK
         EJfv0Q3qXdXRRApDDUPuS8/UbJRPtOJG9FMuZWaiBX6y3lxEWAzj2/s1qhXkWEMK48dH
         tT9WkfoFXCFNq4ndtz1aC5hpMG+L5PHj4fMtgXE5dUWtMloNzoSAf1QsGjikHnYdfp2x
         5gOw==
X-Gm-Message-State: AOJu0YwNh2ao9l88PF2AAwgY0gjNAOWfg1ffx267F+dg5KMRJ+XzYWLr
	Pog6PJjC+QcEjVNjXIZy2OqTHBTCR2DB/sPjvspGZdM7k3jOiG6kZ8+Ehw==
X-Google-Smtp-Source: AGHT+IH2aFgoScTvlsMefSnLJqphJi1/rqJFHrGbbta0H2KX/V7Xz805n/wl4j7JUb83MrFwaVpYjA==
X-Received: by 2002:a05:6214:2a8f:b0:6d4:1ff3:a96 with SMTP id 6a1803df08f44-6d41ff313e5mr124674326d6.15.1732033684653;
        Tue, 19 Nov 2024 08:28:04 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d40dc48b89sm49684856d6.64.2024.11.19.08.28.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Nov 2024 08:28:03 -0800 (PST)
Message-ID: <dd37c751-cace-4053-a308-f7b1accc9859@gmail.com>
Date: Tue, 19 Nov 2024 11:27:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAAc7u9oPjRQ9oZXo=rxpfPKvLLDdRQPMJBboYnjAHws=Z+y0cw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAc7u9oPjRQ9oZXo=rxpfPKvLLDdRQPMJBboYnjAHws=Z+y0cw@mail.gmail.com>
Message-ID-Hash: SYIJ6QZ2ODEU54DI2V7WQVHQNMSUIS7Q
X-Message-ID-Hash: SYIJ6QZ2ODEU54DI2V7WQVHQNMSUIS7Q
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP sink with GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SYIJ6QZ2ODEU54DI2V7WQVHQNMSUIS7Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTkvMTEvMjAyNCAxMTowMiwgVGltIFZhbmNhdXdlbmJlcmdoIHdyb3RlOg0KPiBEZWFyLA0K
Pg0KPiBJIGFtIHJldmlzaXRpbmcgYW4gaXNzdWUgSSBlbmNvdW50ZXJlZCBlYXJsaWVyLiBJIGhh
dmUgYSBmbG93IHRoYXQgDQo+IGdlbmVyYXRlcyBwdWxzZXMgd2l0aCBzcGFjZXMgYmV0d2VlbiB0
aGVtIGNvbnRpbnVvdXNseS4gVG8gc3dpdGNoIA0KPiBiZXR3ZWVuIHRoZSBSWCBhbmQgVFggcGF0
aHMgb24gYSBzaW5nbGUgYW50ZW5uYSwgSSB0cmllZCB1dGlsaXppbmcgDQo+IEdQSU8gdG8gY29u
dHJvbCBhbiBSRiBzd2l0Y2guDQo+DQo+IFRlc3RzIHdlcmUgY29uZHVjdGVkIG9uIGEgQjIxMCBh
bmQgWDMxMC4gSW5pdGlhbGx5LCBJIHVzZWQgR1BJTyB0YWdzIA0KPiBvbiBhIFVTUlAgc2luaywg
YnV0IHRoaXMgY2F1c2VkIGNvbnRpbnVvdXMgdW5kZXJydW5zLiBBIHNhbXBsZSByYXRlIG9mIA0K
PiA0IE1IeiB3YXMgdXNlZC4gSSB0aGVuIHN3aXRjaGVkIHRvIHVzaW5nIGJ1cnN0cyBpbiBjb21i
aW5hdGlvbiB3aXRoIA0KPiBBVFIsIGJ1dCB0aGUgaXNzdWUgcGVyc2lzdHMuIFRoZSBVU1JQIGlz
IHVuYWJsZSB0byBrZWVwIHVwLCByZXN1bHRpbmcgDQo+IGluIHNpZ25pZmljYW50IHVuZGVycnVu
cy4NCj4NCj4gTXkgZ29hbCBpcyB0byBzZW5kIHB1bHNlcyBhdCBzcGVjaWZpYyB0aW1lcyBhbmQg
aGF2ZSB0aGUgR1BJTyBzdGF0ZSANCj4gZm9sbG93IGFjY29yZGluZ2x5LiBXaGVuIHNlbmRpbmcg
MHMgb3Igbm8gc2FtcGxlcywgdGhlIEdQSU8gc3RhdGUgDQo+IHNob3VsZCBiZSBsb3c7IG90aGVy
d2lzZSwgaXQgc2hvdWxkIGJlIGhpZ2guDQo+DQo+IENvdWxkIHlvdSBhZHZpc2Ugb24gaG93IHRv
IGFjaGlldmUgdGhpcz8gSSBoYXZlIGF0dGFjaGVkIG15IGVtYmVkZGVkIA0KPiBQeXRob24gYmxv
Y2sgY29kZSwgd2hpY2ggaXMgcG9zaXRpb25lZCBqdXN0IGJlZm9yZSB0aGUgVVNSUCBzaW5rIA0K
PiBibG9jay4gVGhpcyBibG9jayBhZGRzIHRoZSB0YWdzIGZvciB0aGUgc3RhcnQgYW5kIGVuZCBv
ZiBidXJzdHMgYW5kIA0KPiBoYW5kbGVzIHRoZSBpbml0aWFsIEdQSU8gc2V0dXAuIEZvciByZWZl
cmVuY2UsIEkgaGF2ZSBhbHNvIGluY2x1ZGVkIA0KPiB0aGUgbWFudWFsIEdQSU8gY29udHJvbCBi
bG9jay4NCj4NCj4gVGhhbmsgeW91IGZvciB5b3VyIGFzc2lzdGFuY2UuDQo+DQo+DQo+IEJlc3Qg
cmVnYXJkcywNCj4NCj4gVGltIFZhbmNhdXdlbmJlcmdoDQo+DQpHZW5lcmFsbHkgIlUiIHVuZGVy
cnVucyBhcmUgY2F1c2VkIGJ5IHlvdXIgKmhvc3QgY29tcHV0ZXIqIGJlaW5nIHVuYWJsZSANCnRv
ICJrZWVwIHVwIiB3aXRoIHRoZSBVU1JQLCBOT1QgdGhlIG90aGVyDQogwqAgd2F5IGFyb3VuZC7C
oCBUaGUgVVNSUCBpbnRlcm5hbCBwZXJmb3JtYW5jZSBpcyBlbnRpcmVseSBkZXRlcm1pbmlzdGlj
LiANCklmIHlvdSBwcm9ncmFtIGl0IHRvIHRha2UgaW4gNE1zcHMsIGl0IHdpbGwNCiDCoCBiZSBh
YmxlIHRvIGRvIHRoYXQgZm9yZXZlci4NCg0KSSdsbCBub3RlIHRoYXQgUHl0aG9uIGJsb2NrcyBE
TyBOT1QgUEVSRk9STSBhdCB0aGUgc2FtZSBwZXJmb3JtYW5jZSANCmxldmVsIGFzIEMrKyBibG9j
a3MuwqAgQnkgYSBzaWduaWZpY2FudCBtYXJnaW4uDQogwqAgSSBub3RlIHRoYXQgaW4gb25lIG9m
IHlvdXIgYmxvY2tzLCB5b3UncmUgaW5kaXZpZHVhbGx5IGl0ZXJhdGluZyANCnRocm91Z2ggc2Ft
cGxlcyBsb29raW5nIGZvciBzb21lIGtpbmQgb2YgdHJpZ2dlci4NCiDCoCBUaGlzIGlzIGd1YXJh
bnRlZWQgdG8gaGF2ZSB2ZXJ5IHBvb3IgcGVyZm9ybWFuY2UgY2hhcmFjdGVyaXN0aWNzLCBhbmQg
DQppcyB1bmxpa2VseSB0byBiZSBhYmxlIHRvICJrZWVwIHVwIiBhdCBhbnl0aGluZw0KIMKgIGJl
eW9uZCBwZXJoYXBzIDFNc3BzLCBidXQgdGhhdCB3aWxsIGRlcGVuZCB2ZXJ5IG11Y2ggb24geW91
ciBjb21wdXRlci4NCg0KQWxzbywgKGFuZCBJIGRvbid0IGtub3cgaWYgdGhpcyBpcyB5b3VyIGlz
c3VlKSwgeW91IGNhbid0IHNjaGVkdWxlIHRpbWVkIA0KYnVmZmVycyBodWdlbHkgaW4gYWR2YW5j
ZSBvZiB3aGVuIHRoZXkgd2lsbA0KIMKgIGFjdHVhbGx5IGdldCBzY2hlZHVsZWQgb24gdGhlIGhh
cmR3YXJlLS10aGUgaGFyZHdhcmUgaGFzIHZlcnkgbGl0dGxlIA0KYnVmZmVyaW5nLg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
