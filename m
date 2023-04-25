Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14ACC6EE5DA
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 18:34:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 101EE3848DC
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 12:34:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682440470; bh=G6LMKvU32Udu3NAqg4IaGi0iRWNwjJd7g5tO+rzupAI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jzhYt4NfZGPYqJ/XKETjWnOIIGgPqB/MFpM/rRHcP7BdAMm9c5gfFquYgTuupweO3
	 VOp8515RfF7kltSUsoVeMf2EEIjw6syNYm/2OSkP0mFK7GOlqmFta9653imQGQ2V1z
	 3ZC6fVf0grLQtdf21s7Gv+jHI1Pamk6N1FHg2/57kpmNX2FMQcB1MLGw7OS8v7iTI0
	 gu5/BI8VrBGMQWpG76Img+EBrg1UxzVF7PMFiAmgMWoQNwmJrg1c6ztpUtmluEuhCZ
	 RxnOjCa1R65YFMd3tUjTcUzvJ7nQVtSaBDce1o6pTdS/rv/KRSLCODdNNfquYbon4U
	 DLHi8v+4uHIOQ==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D7EA383FAC
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 12:34:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oePrUK20";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-74dd7f52f18so1694918685a.0
        for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 09:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682440447; x=1685032447;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mAENBmlnMqxCLuZOHgBwy99u+TzTN6hSQZChtLkki+A=;
        b=oePrUK20opmAu5HTgIhTd+xa2rt2meqwLJy5KI6IP4ZeZVniHUKKxZM4V/nhEPwH3A
         g3PZ3MtAPW5jJP40ZsgEe9k46TmCoDxaA1r6BYbVG/9uEtsY6CrQg+eIWUW2TsIXMOvW
         +ZQUbc5EONNCpIfdntmaTTyQ8HOW7hock5EgfaLgd0ZXt0BOeDDoVElugfdzBe+yWZZf
         rZeo372DKmPxsMryt6rCkBhErUT6sUqNDtio0n/AHi5PQEjdxd8o+ojTIOi4VUZN/fRe
         JmtoNDlQUbo3gBJsuRqanzDR+aOuXCHnr/IvftPD5WC87DMjHD35xOqsR/8a+pMuSb1x
         6T4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682440447; x=1685032447;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mAENBmlnMqxCLuZOHgBwy99u+TzTN6hSQZChtLkki+A=;
        b=HjUGpt6EjGcVEnNcPKUoRtUHA0QdUrbJvLDp8wy4ID0UcojMZQQTPkewHc8HfD3G3i
         qzjcfSL/vL9VbxdFj1Vin/K6HVAg+pCwNT2O+En4oDOspfLuiosewkab2Jx5Ex6/Esdm
         XWB87+aTsx/JxUdVTzhM0UllUUxIGq1SQKHkNlw87ODHcgcXFbHMRYLUw3e3xA/tL8+x
         8lADCbLHDu/B62CeZVZ99tTdCHKS0Pq7p3qbPcX3gLEjHFiBqAM7GqV5sCKGO3D3Fx5J
         v0yfO2/wLJrWi3FF8xFSVpu1zdOJzo0VLukwYvhQ7c4w2aXWqd31RUugQnTPmFgp0oG4
         Dgbg==
X-Gm-Message-State: AAQBX9e7cqRsi3PUeKCdb1fOf/99YlPV6kFvIxvxxQsZfAvWAuMHhNK4
	kBS1XhOn35o52Gahoo/krsN8ck1BsGQ=
X-Google-Smtp-Source: AKy350a3ZJ8EzafX0GVvYhv4pcRtVGWqw/d3dCUaDhikzC4y31Na4JlxYFaL87kKgD2FVlOyZ9RgjQ==
X-Received: by 2002:ad4:5948:0:b0:5f1:6a6a:f556 with SMTP id eo8-20020ad45948000000b005f16a6af556mr28872303qvb.16.1682440446817;
        Tue, 25 Apr 2023 09:34:06 -0700 (PDT)
Received: from [192.168.2.158] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id p9-20020a0ce189000000b005ef54657ea0sm4190075qvl.126.2023.04.25.09.34.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 09:34:06 -0700 (PDT)
Message-ID: <b060d427-5b6c-240f-d8dd-359e9c96fb45@gmail.com>
Date: Tue, 25 Apr 2023 12:34:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: James Schatzman <jcs@l1.fu-lab.com>
References: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
 <20230425143440.1139F4D935@mail.futurelabusa.com>
 <6676e9c4-ce09-4f04-d60f-2cc5ad449eb4@gmail.com>
 <ZEgALNgcA3A7TRfW@l1.fu-lab.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ZEgALNgcA3A7TRfW@l1.fu-lab.com>
Message-ID-Hash: W3R4X5M7WWV2HUDOPOKECT6DJT3TOZNR
X-Message-ID-Hash: W3R4X5M7WWV2HUDOPOKECT6DJT3TOZNR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W3R4X5M7WWV2HUDOPOKECT6DJT3TOZNR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDQvMjAyMyAxMjozMCwgSmFtZXMgU2NoYXR6bWFuIHdyb3RlOg0KPiBJIGRvbid0IGtu
b3cgaWYgdGhpcyBpcyBuZXcgaW5mb3JtYXRpb24gYnV0IHdlIGhhdmUgb2JzZXJ2ZWQgc29tZQ0K
PiBhZGRpdGlvbmFsIGJlaGF2aW9yczoNCj4NCj4gMSkgVGhlIHJhZGlvIHJlcG9ydHMgZHJvcHBl
ZCBVRFAgcGFja2V0cy4gV2h5IGlzIGl0IGRyb3BwaW5nIHRoZW0/DQpIb3cgYXJlIHlvdSBkZXRl
cm1pbmluZyB0aGlzP8KgIEZvciBzdHJlYW1pbmcsIHRoZSBMaW51eCBpbiB0aGUgWnlucSBpcyAN
CmVudGlyZWx5IG91dCBvZiB0aGUgcGljdHVyZS4NCg0KPg0KPiAyKSBBdCBsZWFzdCBwYXJ0IG9m
IHRoZSB0aW1lLCB0aGUgcmFkaW8ncyBmYW4ga2lja3MgaW50byBoaWdoIHNwZWVkDQo+IHNlZW1p
bmdpbmdseSBhdCB0aGUgc2FtZSBtb21lbnQgdGhhdCB0aGUgdW5kZXItcnVuIG9jY3Vycy4gSSBo
YXZlIG5vDQo+IGluZm9ybWF0aW9uIGFib3V0IGhvdyBpdCBjb250cm9scyB0aGUgZmFuIHNvIHRo
aXMgaXMgbXlzdGVyaW91cy4NClRoYXQgaXMgYW4gaW50ZXJlc3RpbmcgdGlkYml0LCBidXQgSSBo
b25lc3RseSBkb24ndCBrbm93IHdoYXQgaXQgbWVhbnMuDQoNCg0KPg0KPiBKaW0NCj4NCj4NCj4g
T24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgMTI6MjA6NDVQTSAtMDQwMCwgTWFyY3VzIEQuIExlZWNo
IHdyb3RlOg0KPj4gT24gMjUvMDQvMjAyMyAxMDozNCwgSmltIFNjaGF0em1hbiB3cm90ZToNCj4+
PiBXZSBoYXZlIGJlZW4gd29ya2luZyB3aXRoIE4zMTAgYW5kIE4zMjEgcmFkaW9zLiBJdCBzZWVt
cyB2ZXJ5IGRpZmZpY3VsdCB0byBnZXQgbG9uZyB0ZXJtIGNvbnRpbnVvdXMgb3BlcmF0aW9uIHdp
dGhvdXQgdW5kZXItcnVucyBldmVuIGF0IHRoZSBzZWVtaW5nbHkgdmVyeSBsb3cgZGF0YSByYXRl
IG9mIDEyLjUgTXNwcy4NCj4+Pg0KPj4+IEN1cnJlbnRseSB3ZSBhcmUgdHJ5aW5nIHZhcmlvdXMg
ZmlybXdhcmUgdmVyc2lvbnMsIGNoYW5naW5nIGJ1ZmZlciBzaXplcywgZXRjLiwgYnV0IHNvIGZh
ciBub3RoaW5nIGhhcyBnb3R0ZW4gdGhlIHJhZGlvcyB0byB3b3JrIGNvbnNpc3RlbnRseSBmb3Ig
c2V2ZXJhbCBob3VycyB3aXRob3V0IHVuZGVyLXJ1bnMuIE9uZSBydW4gbWlnaHQgZ28gZm9yIDMg
aG91cnMgd2l0aG91dCBmYWlsdXJlLiBUaGUgbmV4dCBhdHRlbXB0IHVuZGVyLXJ1bnMgYWZ0ZXIg
MTAgbWludXRlcy4gSXQgaXMgdmVyeSBlcnJhdGljLiBPdXIgbmV4dCBhdHRlbXB0IHdpbGwgYmUg
dG8gaW1wbGVtZW50IGFuIGlucHV0IEZJRk8uDQo+Pj4NCj4+PiBUaGUgY29uZmlndXJhdGlvbnMg
aGF2ZSBkaXJlY3QgY29ubmVjdGlvbnMgYmV0d2VlbiBhIGZhc3QgaG9zdCAoVWJ1bnR1IHdpdGgg
dW5uZWNlc3Nhcnkgc2VydmljZXMgaW5jbHVkaW5nIE5ldHdvcmsgTWFuYWdlciBkaXNhYmxlZCBv
ciByZW1vdmVkKSwgYW5kIHRoZSByYWRpbyB3aXRoIDEwIEdiaXQgYW5kIGZyYW1lIHNpemUgb2Yg
OTAwMC4gV2l0aG91dCB1c2luZyBqdW1ibyBmcmFtZXMgdGhlIGJlaGF2aW9yIHdhcyBmYXIgd29y
c2UuDQo+Pj4NCj4+PiBBbnkgb3RoZXIgaWRlYXM/Pw0KPj4+DQo+Pj4gVGhhbmtzLQ0KPj4+IEpp
bQ0KPj4+DQo+Pj4NCj4+IFNvbWV0aGluZyB5b3UgY291bGQgdHJ5IGluIHRlcm1zIG9mIGlzb2xh
dGluZyByb290IGNhdXNlIGlzIHRvIHVzZSB0aGUNCj4+ICJiZW5jaG1hcmtfcmF0ZSIgZXhhbXBs
ZSBhcHBsaWNhdGlvbiwgYW5kDQo+PiAgwqAgY29uZmlndXJlIGl0IHVzaW5nIHRoZSAtLWR1cmF0
aW9uIG9wdGlvbiBmb3IgYSB2ZXJ5IGxvbmcgcnVuIGFuZCB1c2UNCj4+IC0tdHhfcmF0ZSB0byBj
YXVzZSBpdCB0byBvbmx5IGRvIGEgVFggdGVzdC4NCj4+DQo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
