Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 016324D69FB
	for <lists+usrp-users@lfdr.de>; Fri, 11 Mar 2022 23:32:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E44CA384D77
	for <lists+usrp-users@lfdr.de>; Fri, 11 Mar 2022 17:32:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="C5zNWKLU";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 02BC83848E9
	for <usrp-users@lists.ettus.com>; Fri, 11 Mar 2022 17:31:46 -0500 (EST)
Received: by mail-qv1-f44.google.com with SMTP id j5so8059622qvs.13
        for <usrp-users@lists.ettus.com>; Fri, 11 Mar 2022 14:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=WZRwd9xP0PIO+zvpx8+BdqZplFhjFXhNfPxweKzMkx4=;
        b=C5zNWKLU3N9PzRV3qW5lqnVdFfriLStQXgFrcYrbV98vXpc9GmgQRzpVHRQKupneLF
         Dc3sx9oyMHhoq91zuyV/c5wF75M/qU/vuHRmKcVUlFN//dtCh4jDy4175V6c84Lct6fq
         cEBfhBnMhRyofrNL5AeNYw4CzzYH1y76Gaw/xK6VeiZ3JKeUdfjIypFTDIg+Osg+8kZC
         RSpvkMJIMPHoLyBLbwskvrqf+A4kKbyCUS9TolQ5obZYvGpELZOksuFszt/qNXoT1sr/
         yw+QhbW8IWrYqRdCypsB2xZvD6YRs5XYZddFJTozStoBiNJvWsZYmguW//U05jJtaBeG
         C8ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WZRwd9xP0PIO+zvpx8+BdqZplFhjFXhNfPxweKzMkx4=;
        b=YniU3E4vMLJpn1iwF2BBwTFE1s0Zb+wtFIFf0wj5MXeNXhtxgfDKGYXo5uTPtX9rUF
         o21tTBpUSiRVtkrMP5u2a0dVNuZ/8MiTBlGPVY4tceJ8Jz6IGrlZNGmJZTFfe/O7IV8x
         JZ5d14xYrk419ss36m8OJIrKin2DCuHgmgrNRAv6AOptCnDgWu8C7lPursWmrRa1g0yc
         SAmUZy4Ar0k4BUsYQD25OqNSMZwHZjcV8+USW1E19IzhyRmmomZ7Zs/7LX4UCSGfTkZs
         QnXA0yCq/EQI7J7tQ5iG7ibBnXliWNqR3AaA8v6V3NZjf5vEX6rU7HfwDK1wzSToec8k
         7/KQ==
X-Gm-Message-State: AOAM5314yn2JLP2axdw1pN+2Hvx+uvyM9hnDQbAdRuxYNuJh7pWUBfeV
	WwrAQp+b858yDvGW54bHkUdkRyDzzu8=
X-Google-Smtp-Source: ABdhPJyAyTuTNT1JvcH6ksu2+9rFnUWacEWQModWlGEQNzxLNjNev9WzgU63vEjuCjtCa/rdziTU0A==
X-Received: by 2002:ad4:5b86:0:b0:43a:5c52:30bf with SMTP id 6-20020ad45b86000000b0043a5c5230bfmr5035911qvp.22.1647037906102;
        Fri, 11 Mar 2022 14:31:46 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id q8-20020a05622a04c800b002e06d7c1eabsm6440750qtx.16.2022.03.11.14.31.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Mar 2022 14:31:45 -0800 (PST)
Message-ID: <80bca585-776c-3ccf-ac59-79925eee1573@gmail.com>
Date: Fri, 11 Mar 2022 17:31:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAE+UwfCNb8ZQnriJogKoQwbu-evrZ5ATPxABkW-RKNZ+eupYWQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAE+UwfCNb8ZQnriJogKoQwbu-evrZ5ATPxABkW-RKNZ+eupYWQ@mail.gmail.com>
Message-ID-Hash: SP7VYIXIFGVJBDDBLFCD2T7CRGO5G2YF
X-Message-ID-Hash: SP7VYIXIFGVJBDDBLFCD2T7CRGO5G2YF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Register access on E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SP7VYIXIFGVJBDDBLFCD2T7CRGO5G2YF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0xMSAxNzoxMSwgQ3JhaWdzIExpc3Qgd3JvdGU6DQo+IEhlbGxvLA0KPg0KPiBJ
IG5lZWQgdG8gZG8gYSBkaXJlY3QgcmVhZCBhbmQgd3JpdGUgb2YgdGhlIEFEOTM2MSByZWdpc3Rl
cnMgb24gdGhlIEUzMTAuDQo+IEknZCBsaWtlIHRvIGp1c3QgbW9kaWZ5IG9uZSBvZiB0aGUgQy9D
KysgZXhhbXBsZXMuIEkgaGF2ZSBhbiBleGlzdGluZw0KPiBhcHBsaWNhdGlvbiB0aGF0IHVzZXMg
dGhlIEFEOTM2MSBhbmQgbmVlZCB0byBkb2N1bWVudCB0aGUgRTMxMCBzdGF0ZS4NCj4NCj4gRnJh
bmtseSwgSSBhbSBoYXZpbmcgdHJvdWJsZSBnZXR0aW5nIGEgY2xlYW4gY29tcGlsZSwgdXNpbmcg
dWhkOjp1c3JwIG9yDQo+IG11bHRpX3Vyc3AuwqAgSSBjYW4gZ2V0IHRoaW5ncyB2aWEgdGhlIHRy
ZWUsIGJ1dCBJJ2QgbGlrZSB0byBiZSBhYmxlDQo+IHRvIHNpbXBseSBkbyBhIHBlZWs4IG9yIHBv
a2U4IGFuZCByZWFkIGEgcmVnaXN0ZXIuIEhvdyB0byBkbyBzbz8NCj4NCj4gQXMgYW4gZXhhbXBs
ZSwgSSBjYW4gc2VlIGlmIHRoZSBBR0MgbW9kZSBpcyBpbiBmYXN0IG9yIHNsb3cgbW9kZSB3aXRo
DQo+IHRoZSB0cmVlIChvciB0aGUgY29tbWFuZCBsaW5lICd1aGRfdXNycF9wcm9iZSAtLXRyZWUg
Li4uL2FnYy9tb2RlL3ZhbHVlJykNCj4gYnV0IEknZCBsaWtlIHRvIHJlYWQgdGhlIEFHQ0NvbmZp
Z1ggcmVnaXN0ZXJzICgweEZBLUZDKSBpbiB0aGVpciANCj4gZW50aXJldHkuDQo+IEknbSBzdXJl
IGl0J3MgcG9zc2libGUsIGJ1dCBJIGhhdmUgYmVlbiBzdHJ1Z2dsaW5nIHdpdGggaG93Lg0KPg0K
PiBUaGFuayB5b3UgZm9yIGFueSBhc3Npc3RhbmNlIHlvdSBjYW4gcHJvdmlkZS4NCj4NCj4gS2V2
aW4gVG9sbGl2ZXINCj4NCllvdSBoYXZlbid0IHN0YXRlZCB3aGljaCBzeXN0ZW0gaW1hZ2UgeW91
J3JlIHJ1bm5pbmcgb24gdGhlIEUzMTAsIGJ1dCANCmFzc3VtaW5nIHRoYXQgaXQgaXMgYSAzLjE1
IG9yIG5ld2VyIGltYWdlLCB0aGUgTVBNDQogwqAgZGFlbW9uICJvd25zIiB0aGUgaGFyZHdhcmUu
wqAgTXkgcmVjb2xsZWN0aW9uIChhbmQgaXQgaGFzIGJlZW4gYSANCndoaWxlKSBpcyB0aGF0IHRo
ZSBBRDkzNjEgaXMgY29udHJvbGxlZCBvdXQgb2YgTVBNLS1zbyB5b3UNCiDCoCBjYW4gbG9vayB0
aGVyZSBmb3IgaGludHMgYWJvdXQgaG93IHRvICJkaXZlIGJlbG93IHRoZSBjb3ZlcnMiLg0KDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
