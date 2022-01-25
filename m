Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAED49B3DD
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 13:23:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D60D538461F
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 07:23:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="YGteEjIl";
	dkim-atps=neutral
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 8135B384563
	for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 07:22:24 -0500 (EST)
Received: by mail-wm1-f51.google.com with SMTP id r7so130326wmq.5
        for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 04:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=6lobPtHFp3ogTTG8MtPTD/45d8NUV0Ve5lY+GwMEsGM=;
        b=YGteEjIlOH3DRERTP4pAo2+WhUlq/d0ANPqGo9yqhiAKDY0wc7BuE/FedDNOV2n2Ll
         hIZ+CZkoS+1BpZJzbD/sHAdXvx1c7lPft2qjxl34hcquT3lN6gHF4Yds1ADO2szOIZhw
         qiCfQP+k9tW7ABkpOhNbXKFa6S9lbtsxgd2EQuzZLHbvddIpODYTB6+saCy0YU8vYJ3u
         FtBSalFEsPxaXLob3Lm6OgATY1P3JnOgHETkQgvnfboS67H38gUsrnIWuc9Jvl2scsMr
         XDTwiNwDVVTI2v4Gz6x6+v4rRwxFOjzxfc9arXwjYIC2Oz9hFO9BD6zU5/g04jem08g0
         Xjgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6lobPtHFp3ogTTG8MtPTD/45d8NUV0Ve5lY+GwMEsGM=;
        b=RVatjU7tP6FlZrSbbpc012oXfhTEEWBHRms4ttjGuTLL41ooHmldCCbZa7Mi4bEWjs
         C624dAxHX71Unrm2ENkBhtgc/DtzVdKzYkLqMsxwaXxd02useu9Yjmrm+5vaYtdweSgh
         mtOSp+pVi/GerKPnFYWBM8VqsGEtdmhy/9aX70kToYv0lKFq7b5A7fOKRnbZUapMNiOe
         2o10CcKCJFM1immm/dzp1gA71bqA3QQCjP6dVk54nmwzFsaSdcPZBJL+d8gJK+f2jGt/
         vM+G16Zm8htwbEHe9dVmoCIg8ipJ1DLgBNmimzvmNM+JLpN1iCd6EjSK3NGvkt170Dqv
         eMXA==
X-Gm-Message-State: AOAM533j0EgrjbThNx/fnVUx4KWgQp1IhlvgOEi3wf+s/06y9a5a2O/c
	REuudb07tKe1qWEKnRVrh3mPWKeKHJBauvId
X-Google-Smtp-Source: ABdhPJyZPdy/mxdcDgyrdgcyqXITIOYV5PMHTKiPaINMrbVkAeAc11YhmVk9CnH9bF5zHVw5A3A9nw==
X-Received: by 2002:a05:600c:1f06:: with SMTP id bd6mr2720753wmb.117.1643113343134;
        Tue, 25 Jan 2022 04:22:23 -0800 (PST)
Received: from [192.168.178.39] ([87.123.247.137])
        by smtp.gmail.com with ESMTPSA id y15sm20622583wry.36.2022.01.25.04.22.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jan 2022 04:22:22 -0800 (PST)
Message-ID: <58b68953-c6b3-54e2-4870-9f49667feec2@ettus.com>
Date: Tue, 25 Jan 2022 13:22:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFV41_DSO7S5M0diZ98cLC+F1OT4+RVRCDErpQfzjaEaSU1bpg@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAFV41_DSO7S5M0diZ98cLC+F1OT4+RVRCDErpQfzjaEaSU1bpg@mail.gmail.com>
Message-ID-Hash: 6CTGJ27JTZQDZ4AO2JGY7TTVSNOYHQJH
X-Message-ID-Hash: 6CTGJ27JTZQDZ4AO2JGY7TTVSNOYHQJH
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 two channel transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6CTGJ27JTZQDZ4AO2JGY7TTVSNOYHQJH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgU2Vja2luLA0KDQppdCdzIHVubGlrZWx5IHlvdXIgcHJvY2Vzc29yIGlzIHRoZSBwcm9ibGVt
IGhlcmUg4oCTIGlmIGFueXRoaW5nLCBpdCdzIHRoZSA0MMK3MTDigbbCtzY0Yi9zIH49IA0KMi40
IEdpZ2FiaXQgcGVyIHNlY29uZCB0aGF0IHlvdSdyZSByZWFkaW5nIGZyb20geW91ciBzdG9yYWdl
IGZyb20gdHdvIGRpZmZlcmVudCBmaWxlcy4gDQpTdG9yYWdlIGRldmljZXMgYW5kIGZpbGUgc3lz
dGVtcyBoYXZlIHByZXR0eSBub24tZGV0ZXJtaW5pc3RpYyBhbmQgbGFyZ2UtdmFyaWFuY2UgcmVh
ZCANCnNwZWVkcyBhbmQgYWNjZXNzIHRpbWVzLCBhbmQgdGhpcyBtaWdodCBiZSBhIHByb2JsZW0g
aGVyZS4NCg0KRG9lcyB0aGlzIGFsc28gZmFpbCBpZiB5b3UganVzdCBjb25uZWN0IHR3byAibnVs
bCBzb3VyY2VzIiBpbnN0ZWFkIG9mICJmaWxlIHNvdXJjZXMiPw0KDQpCZXN0IHJlZ2FyZHMsDQpN
YXJjdXMNCg0KRElTQ0xBSU1FUjogQW55IGF0dGFjaGVkIENvZGUgaXMgcHJvdmlkZWQgQXMgSXMu
IEl0IGhhcyBub3QgYmVlbiB0ZXN0ZWQgb3IgdmFsaWRhdGVkIGFzIGEgcHJvZHVjdCwgZm9yIHVz
ZSBpbiBhIGRlcGxveWVkIGFwcGxpY2F0aW9uIG9yIHN5c3RlbSwgb3IgZm9yIHVzZSBpbiBoYXph
cmRvdXMgZW52aXJvbm1lbnRzLiBZb3UgYXNzdW1lIGFsbCByaXNrcyBmb3IgdXNlIG9mIHRoZSBD
b2RlLiBVc2Ugb2YgdGhlIENvZGUgaXMgc3ViamVjdCB0byB0ZXJtcyBvZiB0aGUgbGljZW5zZXMg
dG8gdGhlIFVIRCBvciBSRk5vQyBjb2RlIHdpdGggd2hpY2ggdGhlIENvZGUgaXMgdXNlZC4gU3Rh
bmRhcmQgbGljZW5zZXMgdG8gVUhEIGFuZCBSRk5vQyBjYW4gYmUgZm91bmQgYXQgaHR0cHM6Ly93
d3cuZXR0dXMuY29tL3Nkci1zb2Z0d2FyZS9saWNlbnNlcy8uDQoNCk5JIHdpbGwgb25seSBwZXJm
b3JtIHNlcnZpY2VzIGJhc2VkIG9uIGl0cyB1bmRlcnN0YW5kaW5nIGFuZCBjb25kaXRpb24gdGhh
dCB0aGUgZ29vZHMgb3Igc2VydmljZXMgKGkpIGFyZSBub3QgZm9yIHRoZSB1c2UgaW4gdGhlIHBy
b2R1Y3Rpb24gb3IgZGV2ZWxvcG1lbnQgb2YgYW55IGl0ZW0gcHJvZHVjZWQsIHB1cmNoYXNlZCwg
b3Igb3JkZXJlZCBieSBhbnkgZW50aXR5IHdpdGggYSBmb290bm90ZSAxIGRlc2lnbmF0aW9uIGlu
IHRoZSBsaWNlbnNlIHJlcXVpcmVtZW50IGNvbHVtbiBvZiBTdXBwbGVtZW50IE5vLiA0IHRvIFBh
cnQgNzQ0LCBVLlMuIEV4cG9ydCBBZG1pbmlzdHJhdGlvbiBSZWd1bGF0aW9ucyBhbmQgKGlpKSBz
dWNoIGEgY29tcGFueSBpcyBub3QgYSBwYXJ0eSB0byB0aGUgdHJhbnNhY3Rpb24uICBJZiBvdXIg
dW5kZXJzdGFuZGluZyBpcyBpbmNvcnJlY3QsIHBsZWFzZSBub3RpZnkgdXMgaW1tZWRpYXRlbHkg
YmVjYXVzZSBhIHNwZWNpZmljIGF1dGhvcml6YXRpb24gbWF5IGJlIHJlcXVpcmVkIGZyb20gdGhl
IFUuUy4gQ29tbWVyY2UgRGVwYXJ0bWVudCBiZWZvcmUgdGhlIHRyYW5zYWN0aW9uIG1heSBwcm9j
ZWVkIGZ1cnRoZXIuDQoNCk9uIDI1LjAxLjIyIDA3OjIwLCBTZcOna2luIMOWbmPDvCB3cm90ZToN
Cj4gSGVsbG8sDQo+DQo+IEkgYW0gdHJ5aW5nIHRvIHVzZSBib3RoIGNoYW5uZWxzIG9mIE4zMjAg
dG8gdHJhbnNtaXQgdGhlIHJlY29yZGVkIGZpbGVzLiBCdXQgYWZ0ZXIgYSANCj4gY2VydGFpbiB0
aW1lcyBpdCBnaXZlcyDigJxV4oCdIGVycm9yIGFuZCBzdG9wIHRyYW5zbWl0cyBhdCB0aGF0IGNo
YW5uZWwuIChUaGUgbGVkIGxpZ2h0IG9mIA0KPiBjaDAgb3IgY2gxIHR1cm5zIG9mZikuIFRoZW4g
aXQgZ2l2ZXMgYWdhaW4g4oCcVeKAnSBlcnJvciBhbmQgdGhlIG90aGVyIGxlZCB0dXJucyBvZmYu
IFRoZW4gDQo+IOKAnEzigJ0gZXJyb3Igb2NjdXJzLiBUaGUgcHJvYmxlbSBoYXBwZW5zIG92ZXIg
MjAgTVNQUyBvZiBzYW1wbGUgcmF0ZS4gUmVsYXRlZCBmaWd1cmVzIGFyZSANCj4gYXR0YWNoZWQu
DQo+DQo+IFdoeSBOMzIwIHN0b3BzIHRyYW5zbWl0dGluZyB3aGVuIOKAnFXigJ0gZXJyb3Igb2Nj
dXJzPyBJc27igJl0IGl0IHN0cmFuZ2U/DQo+DQo+IFRoZXJlIGlzIG5vIHByb2JsZW0gd2hlbiB0
cmFuc21pdHRpbmcgb24gb25lIGNoYW5uZWwuDQo+DQo+IEkgaGF2ZSBpbnRlbCB4NTIwLWRhMiBO
SUMsIGk3IDg3MDAgcHJvY2Vzc29yLiBJIHRoaW5rIGl0IHNob3VsZG7igJl0IGJlIGEgcHJvYmxl
bSB0byANCj4gdHJhbnNtaXQgYXQgMjAgTXNwcyBzYW1wbGUgcmF0ZS4NCj4NCj4gVGhhbmtzDQo+
DQo+IFNlY2tpbg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
