Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C3D67F390
	for <lists+usrp-users@lfdr.de>; Sat, 28 Jan 2023 02:12:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0263738445C
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 20:12:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674868345; bh=IFv3X+NJ7ZUgI7b66GADFE9WjnCCr7r1dJyzdbJOwJM=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=oWa002WrlNL1H3ddiKViVQiYdhdpOgHwVk4tcsDBYTdOBuQb9O48vwl0oA551mCwK
	 WS4S4TXdYrax1LOqQbJoCb4FQjkNykPKs5i20P7WGWcQgZ5aXaPakbuNULGbjb7rRe
	 TnRkvvdnI5u37DTCg46cStD8VdL4i+b/XtWrOJmpJ2iPyhro41VREGCk0hI2kwhu6V
	 uKmncWZYzXosEkmGtSwU4BxprjQcTsdYqKtk1Kf/22HyT6+xWdJoc5jRnEsczayXhy
	 zLlQikDhQYQuRtHulTUIHW7PM+UyHfw+DWW+SSh+a9UFuNZF+8g0+QL2pgqQfLr9UT
	 K0WJyUhZ6NbgQ==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 50E17383F8A
	for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 20:12:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oaXF2muH";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id jr19so5594205qtb.7
        for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 17:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DB1eFD+p3xdrvUpmagAI3EsOYgg2rhN+nJZnC1bqVrg=;
        b=oaXF2muHeBvH/jU05j7IBjC+9dD3+v6ObyfwHebf4mkgsHoLRD0KcNxbJM128XvA+S
         4dTS+dFpytYrisceLbODTlaYp3Vg5tdegQvspZqy5irUce0PdaWM/wH04shrDwEhII7T
         6/e+UzmOsvjPL/zRRI5RN9J09wutOGbcnsaiwVBwoKles1mFH2LTd6BBZlyREGQunw5U
         VZQ+OrnEPQ1XWC11E+7Dz7GXB2RbEaT4683m3BdWsNqS0/beLZnkpq7+dEWfsYjqmSx4
         STvAzaYtQ5DHMhut7Rg/A3NaPer74pkdYuuiTCKQnBXwFNlXxR9lJVR6mpoys5J5uw6s
         KTrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DB1eFD+p3xdrvUpmagAI3EsOYgg2rhN+nJZnC1bqVrg=;
        b=g8V0zOaA/GdBL8X4AazfwUs9owaiPk5pdmLgqFWjkTeA1a7xsL3yhFyW/R9Ph3+to4
         cWcqhSyUDfTfvhEV4sJA3KWYFg2Cejxuexkg0swaWtFQBeuiQfc4m6zX57Q0llA+i9oI
         OiczfZCKqDF5+MWysBBJD0riUw0B6xRK0LIu4iinY1y+C1XP76WQJjfNKTgJSH/XicE1
         6QzfWG5Gy/8ucPZdtorJWzCyQ/FV/LX3zCFykFc4Rxxg5G27iiynooPWq8T+3CUk/0iJ
         CJCj7izAFhanRJvqzLoX2RmNEbI4u9KA+QdVU1MOaTYuj5O9z2oa+CSMSlz7joPmLJ3P
         FLxg==
X-Gm-Message-State: AO0yUKVFyMmirNvkUyZQ3e54jHljwLZ2fbomEwM9HCEgbeom1ouV5z8c
	0zHdX9ykumECw0IxEIZm8T8gwl+0tGw=
X-Google-Smtp-Source: AK7set8MkT2oqbZzkAQkB+Pk6Fvu8bxo4DKpzbYlEd1CLPo7fNEJSeuicjkSc/r7Tyz4VQcFdhZ5Lw==
X-Received: by 2002:ac8:59d5:0:b0:3b6:2c3b:8c00 with SMTP id f21-20020ac859d5000000b003b62c3b8c00mr1507984qtf.66.1674868336718;
        Fri, 27 Jan 2023 17:12:16 -0800 (PST)
Received: from [192.168.2.193] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id a17-20020ac86111000000b003b0766cd169sm3746527qtm.2.2023.01.27.17.12.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 17:12:16 -0800 (PST)
Message-ID: <02bc84a6-905d-1cc9-0879-191c80e0b00d@gmail.com>
Date: Fri, 27 Jan 2023 20:12:15 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Mark-Jan Bastian <markjan@xs4all.nl>
References: <Y9Lxt1qeGzi9rym+@vm01308.protagio.nl>
 <b276bfdb-c59e-bb9f-92b1-c7ab94ad67da@gmail.com>
 <Y9NmFYlarlrd8xE/@vm01308.protagio.nl>
 <d6538422-d08d-7f9d-ae19-d2ec18c7d199@gmail.com>
 <Y9RjJpngR0Jhhbex@vm01308.protagio.nl>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Y9RjJpngR0Jhhbex@vm01308.protagio.nl>
Message-ID-Hash: TBYLXLSA6EIY2GF34LCTTUBJY6TQK67T
X-Message-ID-Hash: TBYLXLSA6EIY2GF34LCTTUBJY6TQK67T
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UBX-160 LO filtering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TBYLXLSA6EIY2GF34LCTTUBJY6TQK67T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDEvMjAyMyAxODo0OSwgTWFyay1KYW4gQmFzdGlhbiB3cm90ZToNCj4gT24gRnJpLCBK
YW4gMjcsIDIwMjMgYXQgMDI6Mzc6MDhQTSAtMDUwMCwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0K
Pj4gT24gMjcvMDEvMjAyMyAwMDo1MCwgTWFyay1KYW4gQmFzdGlhbiB3cm90ZToNCj4+PiBXaGVu
IGdlbmVyYXRpbmcgYSBjb21wbGV4ICs3NCBNSHogYW5kIC03MyBNSHogc2luZXdhdmUgc2lnbmFs
IGFuZCBhZGRpbmcgdGhlbSwNCj4+PiBJIHNlZSAxIE1IeiBzcHVyIGFib3V0IC0zMCBkQiBAIC03
NCBNSHosIGlycmVzcGVjdGl2ZSBvZiBMTyBmcmVxdWVuY3kuIFRodXMgdGhlDQo+Pj4gc3B1ciBt
aWdodCBjYXVzZWQgYnkgKHJlbWFpbmluZykgbm9ubGluZWFyaXR5IGluIHRoZSBtaXhlciBvciB0
aGUgc3Vic2VxdWVudCBzdGFnZXMuDQo+Pj4NCj4+PiBJIHdvdWxkIGxpa2UgdG8gY29udHJvbCB0
aGUgLTMwIGRCIHNwdXIgdG8gYSBsb3dlciB2YWx1ZSwgb3IgYXQgbGVhc3QgZmluZCBvdXQNCj4+
PiB3aGF0IHRoZSBzb3VyY2Ugb2YgdGhpcyBzcHVyIGlzLg0KPj4+IE5leHQgdGhpbmcgY291bGQg
YmUgdGhlIERBQywgd2hpY2ggc3VwcG9ydHMgcmF0ZXMgdXAgdG8gMTYwMCBNU1BTLCBidXQgaXMg
b25seSB1c2VkIGF0DQo+Pj4gMjAwIE1TUFMuIFBlcmhhcHMgdGhlcmUgaXMgYSB3YXkgdG8gbW9k
aWZ5IHRoZSB3YXZlZm9ybSBpbiB0aGlzIHN0ZXAsIHNpbWlsYXIgaW4NCj4+PiB0aGUgd2F5IGRp
Z2l0YWwgcHJlZGlzdG9ydGlvbiBjYW4gaGVscCBpbXByb3ZlIHNwZWN0cmFsIG91dHB1dCBwdXJp
dHk/DQo+Pj4NCj4+PiBNYXJrLUphbg0KPj4+DQo+Pj4NCj4+IEFsc28sIGhhdmUgeW91IHJ1biB0
aGVzZSB1dGlsaXRpZXM6DQo+Pg0KPj4gaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsX2Fy
Y2hpdmUvcmVsZWFzZV8wMDNfMDEwXzAwMV8wMDAvaHRtbC9wYWdlX2NhbGlicmF0aW9uLmh0bWwN
Cj4gSSdtIHF1aXRlIHN1cmUgdGhlIHByb2JsZW0gSSBzZWUgaXMgY2F1c2VkIGJ5IElRIGltYmFs
YW5jZS4gSSBjYW4gc2ltdWxhdGUgaXQgd2l0aCB0aGUgcmVzcGVjdGl2ZQ0KPiBnbnVyYWRpbyBi
bG9jaywgd2l0aCBuZWFyIGlkZW50aWNhbCByZXN1bHRzLSBhc3ltZXRyaWMgc3B1ciwgbm90IHN5
bWV0cmljIGFyb3VuZCBhDQo+IGdlbmVyYXRlZCBzaWduYWwsIGZvciBhIHdob3BwaW5nIDAuNSBm
YWN0b3IuDQo+IEkgZGlkIHJ1biB0aGUgY2FsaWJyYXRpb24gdG9vbHMgb24gbXkgbmV3IHN5c3Rl
bSwgZm9yIHJ4IGFuZCB0eCBjaGFpbnMsIGJ1dCB3aWxsIHJ1biB0aGVtDQo+IGFnYWluIChpdGVy
YXRlKS4gSWYgdGhhdCBkb2VzbnQgaGVscCBJIG1pZ2h0IG1vZGlmeSB0aGUgc291cmNlc2lnbmFs
LCBhbmQNCj4gZm9sbG93IHRoZSBzaWduYWwgcGF0aCBhZ2Fpbi4NCj4NCj4gTWFyay1KYW4NCj4N
CkZpZ3VyZSA1NiBpbiB0aGUgQUQ1Mzc1IGRhdGFzaGVldCB3b3VsZCBzZWVtIHRvIGluZGljYXRl
IHRoYXQgYmVsb3cgMWRlZyANCnBoYXNlLWVycm9yLCBhbXBsaXR1ZGUNCiDCoCBpbWJhbGFuY2Ug
ZG9taW5hdGVzIGluIHNpZGViYW5kIHN1cHByZXNzaW9uLg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
