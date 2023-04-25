Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EAC6EE423
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 16:44:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC02E3848EE
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 10:44:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682433858; bh=PMHH5Vw+sC7tDs8sNS2XqTe7M+F7O4paNbEtuq+vCsI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cuW87H0OiXqEsy+sleisRz/udfLT2WrsfE7KmWtyyIXqtq+uGk3sdF/Q3xpAQHiDZ
	 8grKoHteglyJyGussKgIXu/qTwrCvvXadDZLPyXjpXcx/3BtImLh1fwR5NG+Wc/9yu
	 Oro9wih6EIgtHlt7Q3m9HvIepym3gcJR7UiaBNtT9jyQ2lwWDDZVEXdQ9T+oJNCV8/
	 GUEdp8TbiFG5SPhUjOG/LS0viYIdvGBh48RGiNpuqXWREN7lBaAT017TVoCYVUe0rO
	 XpKDgMgMytmEi23VUELsor8LhxPVa8zUb8xz4PLcRtoM38uXREonlmGlLBS2pq+wtX
	 N6c2kVTSmT1YQ==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 66DCB383BE5
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 10:43:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VF04mxMJ";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-5f16a6fe2b1so25882646d6.1
        for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 07:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682433816; x=1685025816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=43Ae+4BPJFLLm2iL9grNYHORX/Zz44NBZketKFqp5N8=;
        b=VF04mxMJIrYnLOk/FFlc6Yauhl41s28Q6mLbeC4iBGwuVIUhoI7nc3B4eIEsv+KKkD
         Wu5ciFOFTIGFizxGg50NrP6hesUQIKxqBBtKGZ8TaLmGuAEw4RnDDN3RnFQ3btg1pHr1
         6BtDjIV/k+9zUvA0CwhLI/0ZvjRJDopp1vf2N/25eoqFEi2d3uwSX4Ua/KN45ANbaTnU
         jsyNFWuBgS90HxXuyl360sU5HyL/bZmFL5Mi/TSeqhXTyn1tFR9iWrdMVKdbCf5YpPjF
         udlU0c47vF3ZevTuNJRcPQOvtue43x8A/2X6o/pyKmE/86sG6Cn5Ftoz5kRXTeTY0PKh
         rxdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682433816; x=1685025816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=43Ae+4BPJFLLm2iL9grNYHORX/Zz44NBZketKFqp5N8=;
        b=B4j9i+InoWDN3jeCaGgQ3CWS6r390iBShwc/h57riNGlwZdljrNgy7KsY2d20mdYIB
         842uGzHyPy1A4OBdYVtnfb9TCR1nDtTR69X2QXgm3jsyQ+EFPAthYExe5s42Fu8Bktl+
         UkY2PeBtUDjLPchdte+yUu0xmkfqc4vnea1ojKZvZ78pdb0shyV/CuVztNOnv4yV8Mmc
         47MoMjShA+Sa6aprM1Z4Xt2wBLhPKx1I7kOV/ry9unAmoMiU9kiQqzaL5i5pB5WrY+cg
         4X0S10Y8FGRL84xoFJuYMgYDYBNVIWI52GR5z+ZMX9RdbtwXAmb6Fge/t8+HJZBxpVPB
         MJtw==
X-Gm-Message-State: AAQBX9dThe5c+dwEcVmlZLhRRnBzXNDYwCeM7FheTt56zyVXojB37tC4
	w272pMu9/927/kfUuhJ36XsEgV8gZoU=
X-Google-Smtp-Source: AKy350a9SikNziUKK889a2PpxesnR6XX6lS1/0iC313qCKDylbBbkutEx3+GBV1gBjrELTAYmOPITg==
X-Received: by 2002:a05:6214:29cc:b0:5ca:6c32:f35 with SMTP id gh12-20020a05621429cc00b005ca6c320f35mr18942865qvb.39.1682433816545;
        Tue, 25 Apr 2023 07:43:36 -0700 (PDT)
Received: from [192.168.2.158] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id p13-20020a0cf54d000000b005ea34e69373sm4144020qvm.37.2023.04.25.07.43.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 07:43:36 -0700 (PDT)
Message-ID: <c0879132-f51b-9dcc-22a0-90d0d56ca44f@gmail.com>
Date: Tue, 25 Apr 2023 10:43:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
 <20230425143440.1139F4D935@mail.futurelabusa.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20230425143440.1139F4D935@mail.futurelabusa.com>
Message-ID-Hash: OPF7Y6NEU2IYL3K5RDJTJ7AXPMPCM6BU
X-Message-ID-Hash: OPF7Y6NEU2IYL3K5RDJTJ7AXPMPCM6BU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OPF7Y6NEU2IYL3K5RDJTJ7AXPMPCM6BU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDQvMjAyMyAxMDozNCwgSmltIFNjaGF0em1hbiB3cm90ZToNCj4gV2UgaGF2ZSBiZWVu
IHdvcmtpbmcgd2l0aCBOMzEwIGFuZCBOMzIxIHJhZGlvcy4gSXQgc2VlbXMgdmVyeSBkaWZmaWN1
bHQgdG8gZ2V0IGxvbmcgdGVybSBjb250aW51b3VzIG9wZXJhdGlvbiB3aXRob3V0IHVuZGVyLXJ1
bnMgZXZlbiBhdCB0aGUgc2VlbWluZ2x5IHZlcnkgbG93IGRhdGEgcmF0ZSBvZiAxMi41IE1zcHMu
DQo+DQo+IEN1cnJlbnRseSB3ZSBhcmUgdHJ5aW5nIHZhcmlvdXMgZmlybXdhcmUgdmVyc2lvbnMs
IGNoYW5naW5nIGJ1ZmZlciBzaXplcywgZXRjLiwgYnV0IHNvIGZhciBub3RoaW5nIGhhcyBnb3R0
ZW4gdGhlIHJhZGlvcyB0byB3b3JrIGNvbnNpc3RlbnRseSBmb3Igc2V2ZXJhbCBob3VycyB3aXRo
b3V0IHVuZGVyLXJ1bnMuIE9uZSBydW4gbWlnaHQgZ28gZm9yIDMgaG91cnMgd2l0aG91dCBmYWls
dXJlLiBUaGUgbmV4dCBhdHRlbXB0IHVuZGVyLXJ1bnMgYWZ0ZXIgMTAgbWludXRlcy4gSXQgaXMg
dmVyeSBlcnJhdGljLiBPdXIgbmV4dCBhdHRlbXB0IHdpbGwgYmUgdG8gaW1wbGVtZW50IGFuIGlu
cHV0IEZJRk8uDQo+DQo+IFRoZSBjb25maWd1cmF0aW9ucyBoYXZlIGRpcmVjdCBjb25uZWN0aW9u
cyBiZXR3ZWVuIGEgZmFzdCBob3N0IChVYnVudHUgd2l0aCB1bm5lY2Vzc2FyeSBzZXJ2aWNlcyBp
bmNsdWRpbmcgTmV0d29yayBNYW5hZ2VyIGRpc2FibGVkIG9yIHJlbW92ZWQpLCBhbmQgdGhlIHJh
ZGlvIHdpdGggMTAgR2JpdCBhbmQgZnJhbWUgc2l6ZSBvZiA5MDAwLiBXaXRob3V0IHVzaW5nIGp1
bWJvIGZyYW1lcyB0aGUgYmVoYXZpb3Igd2FzIGZhciB3b3JzZS4NCj4NCj4gQW55IG90aGVyIGlk
ZWFzPz8NCj4NCj4gVGhhbmtzLQ0KPiBKaW0NCllvdSBoYXZlIHByZXN1bWFibHkgaW5jcmVhc2Vk
IHJpbmctYnVmZmVycyBhcyB3ZWxsP8KgIEFuZCBhZGp1c3RlZCB0aGUgDQpuZXR3b3JrIGJ1ZmZl
cnM/DQoNCmh0dHBzOi8va2IuZXR0dXMuY29tL1VTUlBfSG9zdF9QZXJmb3JtYW5jZV9UdW5pbmdf
VGlwc19hbmRfVHJpY2tzI0FkanVzdF9OZXR3b3JrX0J1ZmZlcnMNCg0KaHR0cHM6Ly9rYi5ldHR1
cy5jb20vVVNSUF9Ib3N0X1BlcmZvcm1hbmNlX1R1bmluZ19UaXBzX2FuZF9Ucmlja3MjSW5jcmVh
c2luZ19SaW5nX0J1ZmZlcnMNCg0KDQo+DQo+DQo+DQo+IEF0IDA4OjIyIEFNIDQvMjUvMjAyMywg
aDU3amFmYXJpQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4+IEhpLA0KPj4NCj4+IEkgYWxtb3N0IGZv
bGxvdyB0aGUgbGluayB0byB0dW5lIGFsbCB0aGUgcGFyYW1ldGVycyBzZXR0aW5nIGV4Y2VwdCBp
bnN0YWxsaW5nIERQREssIGJ1dCBmb3IgbW9yZSB0aGFuIDIwTSBzYW1wbGUgcmF0ZSBJIHNlZSDD
ouKCrMWTVcOi4oKswp0gdW5kZXJmbG93LiBJcyBpdCBub3JtYWw/IGNhbiBpdCBiZWVuIHNvbHZl
ZCB0byBhY2hpZXZlIG1vcmUgdGhhbiAyME0gc2FtcGxlIHJhdGUgd2l0aG91dCBpbnN0YWxsaW5n
IERQREs/IHRoYW5rIHlvdS4NCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQ0KPj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
