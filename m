Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 974436269FC
	for <lists+usrp-users@lfdr.de>; Sat, 12 Nov 2022 15:36:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90F59383A32
	for <lists+usrp-users@lfdr.de>; Sat, 12 Nov 2022 09:36:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668263801; bh=EU7ixQuOzEKWsWmVJ5+F2gGDMNFDGg/A21nNMYH9/Cg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vvKKcWhls05EE11LVbNwchAWOsii8AlP8cE/7oCVxdK+yuC0Z7cUnBn3yt504IPF5
	 lpagWAEc0j5N6rKNjA4Q145GctqhMlVyTQR2wdk5TWgs6Wdxvox4ephmXdijpaY/zu
	 QIG83Bzlk872DUlT1Wlm2YlEKtcW5PmskIrkNvXmuzzq27cnuPvZ4AV3FpoIcM8tjv
	 O1Xnb5jPS+8D1JaN28GEUpGO4M80Vl/PXRorlVOtB5fixj94qi3Ou3FiS+mS/I9lxQ
	 +I5nTHqIx6wrJw8jv5ejaUQskUi5oCGKpzYgdCpmg2T1jR8gNNqj+L2ugSEpHzL0Nv
	 GLvD8xNHSavoQ==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A895380BB8
	for <usrp-users@lists.ettus.com>; Sat, 12 Nov 2022 09:35:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Um3a5N5u";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id e15so4510654qts.1
        for <usrp-users@lists.ettus.com>; Sat, 12 Nov 2022 06:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bw4sOy2/yDeNvNIAn90OFnwEKHoQCau4Uwx+iaO/fks=;
        b=Um3a5N5u3CaZ94g/NPufdrJQ0KjHf6zmI7cPERhfqYWjni9yHiabHvKmmykNfj79KN
         iVmtfxYTUNQby6qrZR91R1M7LPXk1SV2wUVhjKVfEfxWKp3TYMBiXN7QSTY2oZhpUzwA
         lenr/HYRaIfKzeljeevF9sRMKblckyqNOb96E4uJGCRR+gdC3cmGARMdRagXNRMQNoct
         5xGczRUrrUIwdbM7+zObI1gpbleM98uxscN6lT3ZlgSp+leRYXjukQELY5IE4eLqmS29
         WCTNyWTO3RdrI0iQG7K0Fz3pav+tEFj8jxT9pMo51Zo5WitlpoycY0DrTyGA7qAF/Pat
         2vDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bw4sOy2/yDeNvNIAn90OFnwEKHoQCau4Uwx+iaO/fks=;
        b=aixJJno2DyhIuzEKFZ3C0DDqrE0zmrGzCJzYnl6CzAbabsLaWvGPvsHF9iuxXcUMt+
         ISVd6jQkAhJc36K2t0tR21BugDcEwRsiA/C4bCcM9AEGqvGfS+goyCwa+SEcIfgE7bxJ
         qTa6mel29f1aRqVy+BH4CU29hpMNL3/LVIAqZLWYrfm7B/OiFj2Wf3abhTU3byCiApXN
         FJ8N++aJvbBvLOxYT2Yjt07fycr3tm3FRMnLlmvoX/lVALj0qmbP4bjl8qsAh6guNmTW
         jMEBm30KGQ4W83e/CLCf0bNZ4K2EsLf+OFweMMKUPOqc37X/lMHFasgO/LyXWd7m7Q4e
         Odkw==
X-Gm-Message-State: ANoB5pmZsjWDvdi3y1ckbsyQaJsobOABfRGGh12r/psADSD3/148WN/0
	7GUAW0frq+mbODbCdybEeKH/YrFbGQ8=
X-Google-Smtp-Source: AA0mqf6yKhAhMe75Xf6zPI6LyZkPMGi+rP1uGSTv4kdmmfDwZWxkHki0DexaQ6UTgikIujzaWCGgpg==
X-Received: by 2002:ac8:4f53:0:b0:3a5:5e38:c294 with SMTP id i19-20020ac84f53000000b003a55e38c294mr5507284qtw.122.1668263728692;
        Sat, 12 Nov 2022 06:35:28 -0800 (PST)
Received: from [192.168.2.183] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id w4-20020ac857c4000000b0039cc22a2c49sm2978639qta.47.2022.11.12.06.35.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 06:35:28 -0800 (PST)
Message-ID: <745d3292-7ea6-484e-c2a4-f07c6c5cd936@gmail.com>
Date: Sat, 12 Nov 2022 09:35:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: usrp-users@lists.ettus.com
References: <Mrm09ezt7AqG25YBPTpixYEAoZ2j9UG2H6B7SsG9p0@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Mrm09ezt7AqG25YBPTpixYEAoZ2j9UG2H6B7SsG9p0@lists.ettus.com>
Message-ID-Hash: 75245KCVQI342O3YDZ65OKFXFWQ4OP4X
X-Message-ID-Hash: 75245KCVQI342O3YDZ65OKFXFWQ4OP4X
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SSSSS Message
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/75245KCVQI342O3YDZ65OKFXFWQ4OP4X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMTEvMjAyMiAwODo1NCwgaGVucnkucG93ZWxsLnh4QGdtYWlsLmNvbSB3cm90ZToNCj4N
Cj4gSSBjb2RlZCB0aGUgU0RSIHdpdGggUHl0aG9uLiBJIHVzZWQgR05VIFJhZGlvLiBNeSBjYXJk
IGlzIEIyMDAuIEF0IA0KPiBmaXJzdCB0aGUgYW50ZW5uYSBpcyBsb2NhdGVkIGluIHBvc2l0aW9u
LiBUaGUgc2lnbmFsIHdoaWNoIGlzIGZyb20gDQo+IGxvY2F0aW9uIGNvbnRyb2xsZXIgY29tZXMg
dG8gbWUgYW5kIHNheSBzaWduYWwgaXMgb2tleS4gU0RSIHJ1bnMgYW5kIA0KPiBnaXZlcyBtZSB0
aGUgcmVzdWx0cy4gVGhpcyBwcm9jZXNzIGFmdGVyIGFuZCBhZnRlciBhZ2Fpbi4NCj4NCj4gV2hl
biB0aGlzIGhhcHBlbiwgU0RSIHN0b3BzLiBJIGxvb2tlZCBhdCB0aGUgcmVjZWljZXJzIGFuZCAN
Cj4gdHJhbnNtaXR0ZXJzIGxlZCwgdGhleSBhcmUgb24uIFdoZW4gSSBzdG9wIG1lYXN1cmVtZW50
IGFuZCBydW4gYWdhaW4sIA0KPiBDb25zb2xlIHByaW50IFNTU1NTU1MgbWF5YmUgMTAwMCBhIHNl
Y29uZC4NCj4NCj4gSSBzZWFyY2hlZCBpbiBVU1JQIG1haWxsaXN0LCB0aGV5IGhhZCBzYWlkIHNl
cXVlbmNlIGVycm9yLiBNYXliZSBpdCBpcyANCj4gYWJvdXQgdHJhbnNtaXR0ZXIuIEkgYW0gY29k
aW5nIGluIFdpbmRvd3MuDQo+DQo+IEhvdyB0byBJIGZpZ3VyZSBpdCBvdXQgdGhpcz8NCj4NCj4N
CidTJyBtZWFucyB0aGF0IGRhdGEgZnJhbWVzIGFyZSAiZ29pbmcgbWlzc2luZyIgYXQgYSB2ZXJ5
IGxvdyBsZXZlbCBpbiANCnRoZSBzeXN0ZW0uDQoNClRoaXMgdXN1YWxseSBtZWFucyBhIGhhcmR3
YXJlIGlzc3VlIGluIHRoZSBVU0IgaW50ZXJmYWNlLS1hcmUgeW91IHVzaW5nIA0KdGhlIGFzLXN1
cHBsaWVkIGNhYmxlIG9yIGEgZGlmZmVyZW50IG9uZT8NCiDCoCBZb3VyIFVTQjMgY29udHJvbGxl
ciBtYXkgYWxzbyBzaW1wbHkgbm90IGJlIHVwIHRvIHRoZSB0YXNrIG9mIA0KbWFuYWdpbmcgdGhp
cyB0cmFmZmljLsKgwqAgV2hhdCBzYW1wbGUgcmF0ZSBhcmUgeW91IHVzaW5nPw0KDQpBcmUgeW91
IHJ1bm5pbmcgIm5hdGl2ZSIgb3Igd2l0aGluIGEgVk0/DQoNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
