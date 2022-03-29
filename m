Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 812744EB1AA
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 18:17:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7ED6C3841AE
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 12:17:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648570624; bh=MJ8iVRVZJ23de0I481Gqcy2Pi+BjENWy8upY2RsSwt0=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=h7MsDsReZknj37n9+TP6udWnrBnXZo4RlFrro52z4q4hvR6FOcX3dVQ4HhWTWzUwl
	 qbjx02HlWOT56RxHGkS5WS19VufVL4N26RhRd31gk2/16lqURvy0MawbfBfvxZ+guD
	 0O4W11OF7mUYSSnz0BqvswsPrGoCRo/3s7413xVFI2lRbJ6VBx6EGNu7WdNI6ZkTdG
	 YvXiKAsi9gW/CK/zzrCFRXeNIN/S/c/g9YbmFfRVDjGy4z9qVOTcDA+RpyWgWhV5lL
	 W/m4Wo3+O2xBqvuR/rBAcNTvek0DABTq6N0Wof7FB7JU5mPKrJnFSGs9jFZmg8vKya
	 8+i4XGWip0s7Q==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D50F384108
	for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 12:16:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="R2/B98ZS";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id q200so1186004qke.7
        for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 09:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=k7mRQhJD+DVKky4JG3IEjRBmoJavSZKCFiT8d0Hxikc=;
        b=R2/B98ZSX80TFHM8lIn2aZNGDa3GtlbJPY4+3upB2UX2MFxIqBHol/1SQVhqc+KCN6
         LNqhKRHQjhkajezC0MO5hzo5NMPOoz8Y6qwiKPsfPDQdx/4PzsTzXt2UZSGmyxEBjINx
         zDeAG84WpyWqlDS875JtD6xt7G9E2ESZugkODd7Z63GauXx6zyCv8G24z6q+OjxjKCwK
         DD9zpTMf/DWbpLu8cxKn7cJegCjA8nq1YjhTQ0kbF0q3ayVkVPze4qpUejeeTpxA4F9q
         JuIcw5NtbLogZN5FOhNMhDes/2ydrt/va8t9FVT8XQqi75MggsRCV/cVbbUZQAV8ti9V
         wMIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=k7mRQhJD+DVKky4JG3IEjRBmoJavSZKCFiT8d0Hxikc=;
        b=sPJRUILvoIZm6NdknAnY78iOUFiCmyYEs5aJSGo+faj+AS7Z4rODx1+PiJETYpwE3Z
         zuBK/grAMPEu5TRG1gahce77yFhA/l29lWqmBRY7zgcYzbSAoww8TGQbbYm6rheabxET
         KfIKYfJrAslUNBhuB+XM0Bx6viW/yC54KGd+F6aOFrT6cfhWDYwr3clHMkaXZ6ehSNFv
         dZqGPJSsVb5Jvu++XYMcqox1Dxt/YXQfRKXuCmPCikLFNfBezpWnrrDZcC5OD2hcbrS1
         +BCh/3nLeMuFKeZEwxWp2bOsNo2z38aoejlGA0+sgffKss8k1e2LdNVnMRkXA2wxngyq
         XZmw==
X-Gm-Message-State: AOAM533hnuWtatxoq81tI2nSGss05wHNiU/OrqdeFXC0GjVnp9nLh1QX
	OKxWqwDu62p1fYADu8k4vH72sYnxCcs=
X-Google-Smtp-Source: ABdhPJxXFuw1A0u5ta8QEpXAcXq9t/tWj3jyJkvGwoStscdE2sIq3fZmDNOvVHoEnH+VyQp756X2wA==
X-Received: by 2002:a05:620a:4586:b0:67e:d240:ed1d with SMTP id bp6-20020a05620a458600b0067ed240ed1dmr20462297qkb.630.1648570570362;
        Tue, 29 Mar 2022 09:16:10 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id r7-20020ac85c87000000b002e234014a1fsm15399277qta.81.2022.03.29.09.16.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 09:16:09 -0700 (PDT)
Message-ID: <fa4f9975-ceb8-3f39-800e-625ba9657c7d@gmail.com>
Date: Tue, 29 Mar 2022 12:16:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <MIm2CZbks9o74skxjfnGWlu4Fvhm1mk3pXicSNlKNfk@lists.ettus.com>
 <3c23070a-897f-1f03-0c8b-d63ec6695d9b@gmail.com>
 <CAB__hTRqw=Gxv=Op46m1v05Hc1FjoQ1OcRm9oF5RDvK_zG9f2Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTRqw=Gxv=Op46m1v05Hc1FjoQ1OcRm9oF5RDvK_zG9f2Q@mail.gmail.com>
Message-ID-Hash: YQ5AGDPHZ2L22IGPQMPJ23RRL73UOE6C
X-Message-ID-Hash: YQ5AGDPHZ2L22IGPQMPJ23RRL73UOE6C
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Apply transmit scaling factor
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YQ5AGDPHZ2L22IGPQMPJ23RRL73UOE6C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0yOSAxMjoxMCwgUm9iIEtvc3NsZXIgd3JvdGU6DQo+IE9uIFR1ZSwgTWFyIDI5
LCAyMDIyIGF0IDEwOjU5IEFNIE1hcmN1cyBELiBMZWVjaA0KPiA8cGF0Y2h2b25icmF1bkBnbWFp
bC5jb20+IHdyb3RlOg0KPj4gT24gMjAyMi0wMy0yOSAwOTo1NSwgcmkyODg1NkBtaXQuZWR1IHdy
b3RlOg0KPj4+IEnigJltIHVzaW5nIGEgVUJYLTE2MCBkYXVnaHRlcmJvYXJkLiBNeSBhcHBsaWNh
dGlvbiB1c2VzIGxlc3MgdGhhbiA1MA0KPj4+IE1IeiBvZiBiYW5kd2lkdGggYXQgYmFzZWJhbmQu
DQo+Pj4NCj4+PiBJbiBwYXN0IGV4cGVyaW1lbnRhdGlvbiBJ4oCZdmUgZG9uZSwgY2hhbmdpbmcg
dGhlIFJGIGdhaW4gdGFrZXMgb24gdGhlDQo+Pj4gb3JkZXIgb2YgMSBtcywgYW5kIEkgbmVlZCB0
byBhZGp1c3QgZm9yIGRpZmZlcmVudCBiZWFtIGFuZ2xlcyBhbiBvcmRlcg0KPj4+IG9mIG1hZ25p
dHVkZSBmYXN0ZXIgdGhhbiB0aGF0Lg0KPj4+DQo+Pj4NCj4+Pg0KPj4gQWgsIGluIHdoaWNoIGNh
c2UsIHlvdXIgYmFzZWJhbmQtYmFzZWQgYXBwcm9hY2ggbWFrZXMgc2Vuc2UuDQo+Pg0KPj4gU28g
dW5sZXNzIHlvdXIgZXhpc3RpbmcgY29kZWJhc2UgaXMgIm9uIHRoZSBlZGdlIiBvZiBiZWluZyB1
bmFibGUgdG8NCj4+IGtlZXAtdXAgYXQgeW91ciBzYW1wbGUgcmF0ZXMsIHRoZW4gZG9pbmcgYSBj
b21wbGV4IG11bHRpcGx5IGluIHNvZnR3YXJlDQo+PiB3b3VsZCBiZSB0aGUgd2F5IHRvIGdvLg0K
Pj4NCj4+IEl0IGNvdWxkIGFsc28gYmUgZG9uZSBpbiBSRk5vQywgYnV0IHlvdSdkIGhhdmUgdG8g
cmFtcC11cCBvbiBSRk5vQywgYW5kDQo+PiB1bmxlc3MgdGhlcmUncyBhIHN0cm9uZyBwZXJmb3Jt
YW5jZSByZWFzb24gZm9yIGRvaW5nIGl0IGluIFJGTm9DLCBzdGljaw0KPj4gd2l0aCB0aGUNCj4+
ICAgICBzb2Z0d2FyZSBzaWRlLg0KPiBZZXMsIGl0IHNlZW1zIHRoYXQgU1cgaXMgcHJvYmFibHkg
dGhlIGJlc3Qgd2F5IHRvIGdvLiBIb3dldmVyLCBpZiB5b3UNCj4gZGlkIHdhbnQgdG8gZG8gaXQg
aW4gcmZub2MuIFRoZSBleGFtcGxlIHJmbm9jIGJsb2NrIGlzIGEgImNvbXBsZXgNCj4gbXVsdGlw
bGllciIgYmxvY2ssIHNvIGl0IHJlYWxseSBpcyBub3QgZGlmZmljdWx0IHRvIGRvIG9uIHRoZSBG
UEdBLg0KPiBUaGUgY2hhbGxlbmdlIGlzIHRoYXQgeW91IG5lZWQgdG8gYnVpbGQgaXQgd2hpY2gg
cmVxdWlyZXMgYW4gZXhwZW5zaXZlDQo+IFhpbGlueCBWaXZhZG8gbGljZW5zZS4NCj4gUm9iDQpJ
IGRvbid0IHRoaW5rIGl0J3MgdGhlIGNvbXBsZXgtbXVsdCwgcGVyIHNlLCB0aGF0J3MgdGhlIGlz
c3VlLCBidXQgDQpyYXRoZXIgdGhlIGFiaWxpdHkgdG8gcmFwaWRseSBjaGFuZ2UgdGhlIHNldCBv
ZiBjb21wbGV4LXdlaWdodHMgYWNyb3NzIA0KdGhlIGJlYW1mb3JtZXIuDQoNClNvLCB5b3UgaGF2
ZSBhICJzY2hlZHVsZSIgd2l0aCBlYWNoIGl0ZW0gaW4gdGhlIHNjaGVkdWxlIGJlaW5nIHRoZSAN
CmNvbXBsZXgtd2VpZ2h0cyBhY3Jvc3MgdGhlIGFycmF5IHRvIGVmZmVjdCB0aGUgZGVzaXJlZCBw
YXR0ZXJuLCBhbmQgeW91IA0KbmVlZCB0bw0KIMKgICJydW4iIHRoYXQgc2NoZWR1bGUgYXQgMTAw
dXNlYyB0aW1lc2NhbGVzLsKgwqDCoMKgIERvaW5nICpUSEFUKiBpbiBSRk5PQyANCm1heSByZXF1
aXJlIG1vcmUgb2YgYSBkZWVwLWRpdmUuLi4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
