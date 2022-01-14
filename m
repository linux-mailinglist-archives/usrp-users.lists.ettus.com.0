Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB1848ED7D
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 16:57:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 470DA3855C5
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 10:57:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F1ZmvLvl";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 637E7385025
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 10:56:36 -0500 (EST)
Received: by mail-qk1-f180.google.com with SMTP id o135so340443qke.8
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 07:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6E6JzNjUGy4t7vG0LhG9lse4e1HxqLpm41mNj3U+Xjs=;
        b=F1ZmvLvlH4Ph6XM2QRikKSa3K2Wo9tJIlhhQPJTI5OVX6Evkd0udpETTZd1v7xWUbK
         wUXjJQb85GcMCMFLYhVDx+EnTx94VEsEuW4G4DD8HflpnQVXzwqPEoIDJCBN+eKosbVp
         YRuWh82H4zbI8r9KXnNGWRPbC9KhT+jqQA8RhS081cjvIpNkbgeB2QVAVCqGSKx03XlH
         vHPRVoGsbVzMQ1cu0Z6DM9iDVoIqLZD3lvvno4Zv+mIVHkNs8Ed+WCQn3Kb11CTpTdPK
         qsA75PooBPp6nAsYL5N4aRY9OO6KzpEvbTwZRHYgKxYa0R4bpDPC3FfWpGZ+Uj05i0fV
         DIzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6E6JzNjUGy4t7vG0LhG9lse4e1HxqLpm41mNj3U+Xjs=;
        b=ddwY5vsUci50Izz7Bur5zD2jgl2BVB+yM+1wofzGL4/CrP+PGnXAtfCNXV62fQcp/l
         9XE2yef+MlP4W0qR8wjhOb5nD1olDJAakcJ+wokx9GzN0QxwocBELwuwyQTfr5qRxn9K
         niVoUGNkgoQoPLwEXW5M7YWnl2xroXAo3wQobw+kGv4dhxiWL8rTRQb5XQckaxIshW72
         1xpnnl8mfRzF8YRcpZm1bgXd5X/drRNYKX/Y2z4wAh4CpbKlkz4mpLlME5loCoq99gIi
         OUwth13+C0kkWupoW05rNaYMvzGCDp7/3bzfRM3dtgfawfp2LzNYLtrbpFl7000dZBGe
         YLpA==
X-Gm-Message-State: AOAM530qKfVA0BfNphF1BVQ2nr7puL0+vggexWQTFcnc+JeiBC72HTOY
	1ZniUlojUdfASIZpepeYl+g=
X-Google-Smtp-Source: ABdhPJwYDGguV5p4eO7EunhDgcGuAR+8scu14CTrn0yzzjVGdbtnZoRPSexAjqUO2ROl660rdbfyKQ==
X-Received: by 2002:a05:620a:3727:: with SMTP id de39mr6849126qkb.236.1642175795884;
        Fri, 14 Jan 2022 07:56:35 -0800 (PST)
Received: from [192.168.2.192] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id l15sm4113322qtx.20.2022.01.14.07.56.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 07:56:35 -0800 (PST)
Message-ID: <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
Date: Fri, 14 Jan 2022 10:56:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Paul Atreides <maud.dib1984@gmail.com>
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com>
Message-ID-Hash: NTI23KTW7DCUZDORNQI3WND2AOITRBH5
X-Message-ID-Hash: NTI23KTW7DCUZDORNQI3WND2AOITRBH5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NTI23KTW7DCUZDORNQI3WND2AOITRBH5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAyMDIyLTAxLTE0IDEwOjQwLCBQYXVsIEF0cmVpZGVzIHdyb3RlOg0KPiBPaCBPSywgSSBj
YW4gc2VlIHRoYXQgcG9zc2libHkgd29ya2luZyBmb3IgbXkgYXBwbGljYXRpb24uDQo+DQo+ICAg
RG8geW91IGhhcHBlbiB0byBIYXZlIGFueSBpbnNpZ2h0IG9uIHdoYXQgUm9iIHdhcyB0YWxraW5n
IGFib3V0LCAgaWYgZ3ItdWhkIFdpbGwgYXV0b21hdGljYWxseSB0dXJuIG9uIHRoZSBUWDAgb3V0
cHV0IHdoZW4gdGhlIGV4cG9ydCBpcyDigJhUcnVl4oCZIE9yIGRvIHlvdSBrbm93IGlmIHRoYXQg
c2hvdWxkIGluc3RlYWQgYmUgcGFzc2VkIGluIGEgRGV2aWNlIGFyZ3VtZW50Pw0KPg0KPiBJIGNh
biBhbHNvIGp1c3QgdGVzdCB0aGlzIGEgbGl0dGxlIGxhdGVyIGFuZCBzZWUgaWYgdGhlIG91dHB1
dCBsaWdodCBjb21lcyBvbi4NCj4NCj4gPGUNCg0KU2V0dGluZyB0aGUgRXhwb3J0IGNvbnRyb2wg
aW4gdGhlIFVIRCBibG9jayBTSE9VTEQgYmUgZW5vdWdoIHRvIG1ha2UgDQp0aGF0IExFRCBjb21l
IG9uIDopDQoNCg0KQnV0IEkgZG9uJ3QgaGF2ZSBvbmUgaW4gbXkgY29sbGVjdGlvbi4NCg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
