Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A08CC75AF1A
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jul 2023 15:05:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E2C6384D66
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jul 2023 09:05:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689858304; bh=qyUTFzcMNcSRMHN8jhxC0Co2vNkrsJxVuQS7GmPVkck=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Uwhyg63+NlMyBXMujFFfppWoJzU/wrwASVaoo2JE9gsCXmrvItx4Ghb5ErW/M/E6r
	 v9CMev3TCGqoQIJ/OR+GItd1brKGqTMT8EAoHJce0DKFfAOuw3H4XWL8HMqUv10vVK
	 71ezRkVGcRidTCvMiGeDX9qy2HdLBtUSjCg9XXrBqZkmS/qE/7cj5SBc9gTxBYrSAz
	 q9KFSm/Y8/F76WKsJ+xpBPuTolsDbA5JGgSPFs4/7axMw3nkc07cAo738mlklXwCeW
	 JED9L+NkSargSQd9HHpjioY9qQa1dEZK3sAWLVBb3Hh++b54zkkK6S7cZkFm7NN0P+
	 DwlZZy+GnhuWg==
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 77B97384BFA
	for <usrp-users@lists.ettus.com>; Thu, 20 Jul 2023 09:04:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G8cpoO7s";
	dkim-atps=neutral
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-55b8f1c930eso559940eaf.3
        for <usrp-users@lists.ettus.com>; Thu, 20 Jul 2023 06:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689858266; x=1690463066;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QesROG6xBtjIYwUjBaWu2V0Bq1P2A7EKoGPzYBeGLY8=;
        b=G8cpoO7s0VWHPbqNLOjYfWwutfZPiNIHAxEtFBmE287CfyrGOSvw1+s6oe9KWQTMJP
         cmgYJw3DgoG8+YlpOUw1Y+sfhY9oug9EvxkY9juL5egRIEafR0z/dYHIjZ5Z/tTj89MD
         rk9YAuB6/CDzbIwbf0ePukPDK4WEV5xwZyVN1Psf3qQ4XeBHpWEk0txZcy+yan3bZ0xj
         zx2srszuBCDADXlpMEgYWYLMzYup+FxR9TuyXVG6f19HkGaKR9hgmogiXVNsAfF6OwJW
         LAYpvg9ThD6LsbjLd1GbCBlKlFJ9Xx2hpL5GFEuHoRSo3tnqW5FUO1+pKA2DdlIZZniP
         jpXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689858266; x=1690463066;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QesROG6xBtjIYwUjBaWu2V0Bq1P2A7EKoGPzYBeGLY8=;
        b=BqVDRywPF0c/8twFPXb/aDaG4mjlEOPEDLNTIih/q/gRnOiLlAr9ErHYx9bx4SBmxm
         tLQsghRmr5OTxUty1uOykoNeVdQzgS+iFMQHwXrKGU+j+3KZ7qxYkcUKt7Du6qYfdXcV
         B96tsEC7cjiP92ur5KgHBCEhP4ZXK8SvlvsMsAIDz9FNyJqXW+bxVjGRA7NTre4VASFR
         xTPh/xp29wOjOacz/3Rl7q3j0ma6+RsFsMR5YDfKrXpuophVT7pcZa12cLOc5hdkNeTB
         agOytAx708sxcf5K4MYCJFBKd1n28qsk2CZjZSPzzRn3fykeDiTmSISjZCYlmu/oB/ID
         Hrkw==
X-Gm-Message-State: ABy/qLbjpv1D+Kw0Fzzhgm4h6tYqYlTXY1IlEoutn4Pfr54l5bnAGPWl
	FDykdu48uK4WQ1oXskjDQDD/KwMV3eU=
X-Google-Smtp-Source: APBJJlHsvUGPCn2fjDmt0mkx3I9o62JamQj+bKLGOXY24K+NUc3vzAKGjLOQmLVlfrNgZ0jbixqd4A==
X-Received: by 2002:a05:6808:24d:b0:3a1:c75d:b6ab with SMTP id m13-20020a056808024d00b003a1c75db6abmr1613314oie.40.1689858266157;
        Thu, 20 Jul 2023 06:04:26 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id y17-20020a0c9a91000000b0062feb88e56fsm308892qvd.140.2023.07.20.06.04.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jul 2023 06:04:25 -0700 (PDT)
Message-ID: <d8b3e016-3255-7757-92ff-8a0edbdcc3f2@gmail.com>
Date: Thu, 20 Jul 2023 09:04:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <253020606.65756797.1689346704238.JavaMail.zimbra@free.fr>
 <7b567967-a9f7-6223-3120-a13a4ce6d9cf@gmail.com>
 <1665021956.105780246.1689833084445.JavaMail.zimbra@free.fr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1665021956.105780246.1689833084445.JavaMail.zimbra@free.fr>
Message-ID-Hash: IALKRD55YCEG2BP5BJYWA7CAIAWIATI3
X-Message-ID-Hash: IALKRD55YCEG2BP5BJYWA7CAIAWIATI3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 1-PPS synchronization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IALKRD55YCEG2BP5BJYWA7CAIAWIATI3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAvMDcvMjAyMyAwMjowNCwgZnJpZWR0akBmcmVlLmZyIHdyb3RlOg0KPiBUaGFuayB5b3Ug
TWFyY3VzIGZvciB0aGUgZmVlZGJhY2suIEluZGVlZCBJIHJlYWxpemVkIGp1c3QgYWZ0ZXIgc2Vu
ZGluZyB0aGUNCj4gcG9zdCB0aGF0IEkgaGFkIG9taXR0ZWQgdG8gdXNlIHRoZSBleHRlcm5hbCAx
MCBNSHogcmVmZXJlbmNlIGZvciBjbG9ja2luZyB0aGUNCj4gRlBHQS4gQWx0aG91Z2ggSSBoYWQg
c3VzcGljaW9ucyBvbiB0aGUgcmVzdWx0LCBJIGhhdmUgd2FpdGVkIHRvIHJldHVybiB0byB0aGUN
Cj4gbGFiIGFuZCBydW4gdGhlIGV4cGVyaW1lbnQgYWdhaW4gd2l0aCB0aGUgY29ycmVjdCBzZXR0
aW5ncyBiZWZvcmUgcmVwbHlpbmcuDQo+DQo+PiBMb29raW5nIGF0IHRoZSBzY3JpcHQsIGl0IGxv
b2tzIGxpa2UgeW91J3ZlIHNldCB0aGUgKnRpbWUqIHNvdXJjZSB0bw0KPj4gImV4dGVybmFsIizC
oCBidXQgYXJlIHN0aWxsIHJlbHlpbmcgb24gdGhlIGludGVybmFsDQo+PiAgIMKgIGNsb2NrIGZv
ciB0aGUgYWN0dWFsIHJlZmVyZW5jZSBjbG9jayB0aGF0IGlzIHVzZWQgdG8gZHJpdmUgZXZlcnl0
aGluZw0KPj4gaW50ZXJuYWxseS0taW5jbHVkaW5nIHRoZSBBRENzLCBGUEdBDQo+PiAgIMKgIERT
UCBiaXRzLCBldGMuDQo+IENvcnJlY3RlZCBub3csIGFsdGhvdWdoIEkgYmVsaWV2ZSBmb3IgdGhl
IHNob3J0IG1lYXN1cmVtZW50IGR1cmF0aW9uICgzIHNlY29uZHMNCj4gZm9yIGVhY2ggcnVuKSB0
aGUgVENYTyBzaG91bGQgYmUgY2xvc2UgZW5vdWdoIHRvIHRoZSBXaGl0ZSBSYWJiaXQgZ3JhbmQg
bWFzdGVyDQo+IHJlZmVyZW5jZSB0byBkcmlmdCBieSBhIGZldyBzYW1wbGVzIGF0IG1vc3QgKGEg
MSBwcG0gZnJlcXVlbmN5IGZsdWN0dWF0aW9uIHdvdWxkDQo+IGxlYWQgdG8gMyB1cyBmbHVjdHVh
dGlvbiBhZnRlciAzIHMgYXQgbW9zdCwgb3IgMTUgc2FtcGxlcyBhdCB0aGUgZW5kIG9mIHRoZSBy
ZWNvcmQNCj4gb3IgNSBzYW1wbGVzIGFmdGVyIDEgcyB3aGVuIHRpbWVzdGFtcGluZyB0aGUgZmly
c3QgMS1QUFMgcmlzaW5nIGVkZ2UpLg0KPg0KPj4gVGhlICIxUFBTIiBvbiBVU1JQcyBpcyB1c2Vk
IE9OTFkgYXMgYSAxLXRpbWUgc3luY2hyb25pemF0aW9uIHBvaW50IGZvcg0KPj4gcmVzZXR0aW5n
IHRoZSB0aW1lc3RhbXAgY2xvY2tzIHRvIGEga25vd24gdmFsdWUNCj4+ICAgwqAgKmF0IGEga25v
d24gdGltZSogKHRoZSAxUFBTIHB1bHNlKS7CoMKgIFRoYXQgdGltZXN0YW1wIHJlZ2lzdGVyICJ0
aWNrcw0KPj4gb3ZlciIgYmFzZWQgb24gZWl0aGVyIHRoZSBpbnRlcm5hbCByZWZlcmVuY2UgY2xv
Y2ssDQo+PiAgIMKgIG9yIGFuIGV4dGVybmFsIG9uZSwgYnV0IHlvdSBoYXZlbid0IHJlcXVlc3Rl
ZCBleHRlcm5hbCByZWZlcmVuY2UgY2xvY2suDQo+IEFzIEkgdW5kZXJzdGFuZCB1c2luZyB0aGUg
aW50ZXJuYWwgcmVmZXJlbmNlIGluc3RlYWQgb2YgdGhlIGV4dGVybmFsIG1lYW5zIEkgbG9vc2UN
Cj4gdGhlIGFsaWduZW1lbnQgb2YgdGhlIDFQUFMgZWRnZSB3aXRoIHRoZSBjbG9jayBkcml2aW5n
IHRoZSBGUEdBIGFuZCBoZW5jZSBtaWdodA0KPiBiZSBvZmYgYnkgKy8tMSBzYW1wbGUgb3IgKy8t
MjAwIG5zIHdoZW4gc2FtcGxpbmcgYXQgNSBNUy9zLiBIZXJlIEkgb2JzZXJ2ZSBhZ2Fpbg0KPiA0
IG1zIGZsdWN0dWF0aW9ucyBvZiB0aGUgMVBQUyBlZGdlIGRldGVjdGlvbiAoYm90dG9tIGNoYXJ0
KSBvdmVybmlnaHQsIHRoZSBmdWxsDQo+IGV4cGVyaW1lbnQgZHVyYXRpb24gYmVpbmcgMTEgaG91
cnMgaGVyZS4NCj4gQW5vdGhlciB0aGluZyBJIGZhaWwgdG8gdW5kZXJzdGFuZCBpcyB0aGF0IHdo
ZW4gSSBsb29rIGF0IHRoZSB0aW1lc3RhbXAgKHN0YXQgLWMgJXkpIG9mDQo+IHRoZSBmaWxlIGxh
c3QgYWNjZXNzIHRpbWUgKHRvcCBjaGFydCkgSSBkbyBnZXQgdGhlIHNhd3Rvb3RoIHNoYXBlIG9m
IHRoZSB0aW1lciBjb250cm9sIGJ5DQo+IE5UUCBhbmQgSSBkbyBnZXQgdGhlIHNhd3Rvb3RoIGFt
cGxpdHVkZSBhcyBpbnZlcnNlIG9mIHRoZSBsaW51eCBrZXJuZWwgdGltZXIgcmF0ZSBzbyBJJ2QN
Cj4gc2F5IHRoYXQgdGhlIHJlY29yZCBzdGFydHMgYXQgdGhlIHJpZ2h0IHRpbWUgd2l0aCByZXNw
ZWN0IHRvIHRoZSAxLVBQUyByaXNpbmcgZWRnZSAob3RoZXJ3aXNlDQo+IHRoZSBmaWxlIHRpbWVz
dGFtcCB3b3VsZCBiZSByYW5kb21seSBkaXN0cmlidXRlZCwgd2hpY2ggaXMgbm90IHRoZSBjYXNl
LCBzZWUgaW5zZXQpDQo+IGJ1dCBJIGZhaWwgdG8gdW5kZXJzdGFuZCBob3cgdGhlIDFQUFMgZWRn
ZSBkZXRlY3Rpb24gaW4gdGhlIElRIHN0cmVhbSAoYm90dG9tIGNoYXJ0KSBjYW4NCj4gZmx1Y3R1
YXRlIHNvIG11Y2ggaWYgdGhlIElRIGZpbGUgbGFzdCBzdG9yYWdlIHRpbWUgaXMgY29uc2lzdGVu
dC4NCj4NCj4gVGhhbmtzLg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tZnJpZWQNCj4NCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KSSBkb24ndCBzZWUgYSBz
dHJlYW1pbmcgdGltZSBzcGVjaWZpZWQgaW4gdGhlIGdlbmVyYXRlZCBjb2RlIHRoYXQgeW91IA0K
c3VwcGxpZWQuDQoNClRyeSBzZXR0aW5nIGEgIlN0YXJ0IFRpbWUiIGluIHlvdXIgVUhEIHNvdXJj
ZSBibG9jayBvZiBwZXJoYXBzICIyLjAiIC0tIA0KdGhpcyB3aWxsIGFycmFuZ2UgZm9yIHN0cmVh
bWluZyB0byBjb21tZW5jZSAyIHNlY29uZHMNCiDCoCBhZnRlciBpdCByZXNldHMgdGhlIHRpbWVz
dGFtcCBjbG9jay7CoCBPdGhlcndpc2UsIHN0cmVhbWluZyBpcyBzdGFydGVkIA0KYXQgc29tZSBy
YW5kb20gdGltZS4NCg0KQWxzbywgcmF0aGVyIHRoYW4gbG9va2luZyBmb3IgdGhlIFBQUyBlZGdl
IGluIHRoZSBkYXRhLCB0aGUgIkZpbGUgTWV0YSANClNpbmsiIGluY2x1ZGVzIG1ldGEtZGF0YSwg
bGlrZSB0aW1lc3RhbXBzLWFzLXNlZW4tYnktdGhlLXJhZGlvLg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
