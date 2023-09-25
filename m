Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D29C37ACF86
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 07:38:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C663D3851DA
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 01:38:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695620282; bh=1o/LCsRbfrG2Or56HojOh42TdH1MvI34KqyalV/yY+s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LjXpcuHTHWLnNIVhkNEU4ENZL24bDQqF3P1Vk8LFhIOTAv2DDxBwNe9wI0bGUR+2f
	 lQTVGap0cNq+1wT04e8XrZdCUuNgtfrrMdWhfpE6favH1XfxEqbewDPExMM7dl5X9R
	 IwHBJ8emhXz5iQrirWwQbdDJ4PA21F0il14Ih3zrP/j7kF52vdVvjTpAK02dYFPozb
	 VsgdgAHuwcwAMLh46an1FZnYuwUj3P+BPHaN6pnt/56hcY9Y4n1+B3+2iUv6DxAPqn
	 4YhkAEJrl/DibPGLN+JEehOYIrEoDlRsyoOSpa6IL6c0uKPDFUQUtNbdgkHFRi5zvV
	 E4WazqUjE0lEA==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 1920A3851D9
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 01:37:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Eu6E4L0X";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-4181e341841so1591381cf.1
        for <usrp-users@lists.ettus.com>; Sun, 24 Sep 2023 22:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695620279; x=1696225079; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=62vtwNLn6la7LDeguFYYUMbHVcQdIc4j2jSE3qzyNRA=;
        b=Eu6E4L0XVvAr2iIzasEIaFUifh8JTA3voqbv4VMhh16JTiJTlW/KQnol8Reyc+wHay
         92tsiTPZGGCvH80zBBZVrnIspViu8Z1dJwZHfS1J3DlMz+qdFCYI2Epyt9KbO/bHBP34
         nDkIL6HVmdUUwVyNtPKOwUo7/wOF251hJczTMhF7bTC2fWnW0CUnlQSxBSA57g5M1cCF
         KFFzrhkb2v2CRb4SG/A/BxBKzejWJXjPWy/VGHz9/OO6KsEFPyt7xrkxs+SkomPckI8Q
         GNmn1UQxGzsvH2il01K8oDHfOuaajLMAvXQdOK9pVkP7W6DroIetyjvU+MPnsEkHw0nZ
         QaHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695620279; x=1696225079;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=62vtwNLn6la7LDeguFYYUMbHVcQdIc4j2jSE3qzyNRA=;
        b=Iyh5Ud3a5RryHujLdjdWPlIwwzTaExUVV5y+OmlAjv2Nt21SwC89nzKKeqGqIRpgcI
         VYBUEs23dZksR+eKrPbskBaIsVcl6NpjX2fqXyAN/NUv0wCyasGyA8A8q5ug4Fh6sQCm
         Fz1HPH7UvQSRfTLoqc/svb2JRNSCD8Y+zZldQU5qlri6t8UDmMCpDV/bSFVXKcu+Na7F
         nQAN2Q5WShDwrFI81BVWbenXeH9FZXUltibHsbKGn49nvtRQPoMaMQZi8uHS52vQbgFH
         p/ZmesCDUslj0FOjGZLXpcDPJLg9ah0/+IGWI44ZNVn6r05bxps4RPgBgZPvFxTs8t0Y
         mCMw==
X-Gm-Message-State: AOJu0YyHV5uSlOmfA4usX7+7MFM7WXEOX9S/zthG6tGWNF9j/rHtLk+0
	XrTzmKza3hj/d2vGntuX5rSp5xCutBDN3A==
X-Google-Smtp-Source: AGHT+IGOS7SsDmAxmUIqWnm20o0xXJffPOJwg9trCaG296oqmxIiXq0ERIwOWnvshO9mChdhixyJYA==
X-Received: by 2002:ac8:5a95:0:b0:417:98a1:3403 with SMTP id c21-20020ac85a95000000b0041798a13403mr7164793qtc.25.1695620279383;
        Sun, 24 Sep 2023 22:37:59 -0700 (PDT)
Received: from [192.168.2.190] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id ff25-20020a05622a4d9900b0041519614354sm3569270qtb.7.2023.09.24.22.37.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Sep 2023 22:37:59 -0700 (PDT)
Message-ID: <fce55c5f-843c-9703-a2fa-5e339ad3224c@gmail.com>
Date: Mon, 25 Sep 2023 01:37:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAPRRyxvFFoPU8cCDFigOb+obsZGtE_nNz6q8WppVyU7q3oR0Ug@mail.gmail.com>
 <e4e27517-f1b3-79d9-d0d2-4fb6cafda00f@ettus.com>
 <wTof148s-b9-o9Kr4ztrZ40XkpxeAdB1LgVYwo4yKEv0xzMDb2quQHpttubb-Ohk3nmTIXWsdRYVkgXC0DMB-Sjsl3FP3Nj28-e20PXrCo0=@protonmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <wTof148s-b9-o9Kr4ztrZ40XkpxeAdB1LgVYwo4yKEv0xzMDb2quQHpttubb-Ohk3nmTIXWsdRYVkgXC0DMB-Sjsl3FP3Nj28-e20PXrCo0=@protonmail.com>
Message-ID-Hash: 2LMDDYZP4ZRZ6HAXD6YKBWWB6O55SXOV
X-Message-ID-Hash: 2LMDDYZP4ZRZ6HAXD6YKBWWB6O55SXOV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B200 Data Reception Issue on Windows 10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2LMDDYZP4ZRZ6HAXD6YKBWWB6O55SXOV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDkvMjAyMyAwMToyOCwgT2xvIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPiBJIGhhdmUg
c2FtZSBwcm9ibGVtLiBQbGVhc2UgaGF2ZSBhbnlvbmUgY2x1ZSB3aGF0IHNob3VsZCBJIGRvID8g
TXkgb3V0cHV0IGZyb20gYmVuY2htYXJrX3JhdGUgLS1yeF9yYXRlIDIwTUh6Og0KPg0KPiBCZW5j
aG1hcmsgcmF0ZSBzdW1tYXJ5Og0KPiAgICBOdW0gcmVjZWl2ZWQgc2FtcGxlczogICAgIDk5OTAw
NzQ0DQo+ICAgIE51bSBkcm9wcGVkIHNhbXBsZXM6ICAgICAgMTAwMzE1NDM3DQo+ICAgIE51bSBv
dmVycnVucyBkZXRlY3RlZDogICAgNDcyDQo+DQo+IEltIHVzaW5nIFdpbmRvd3MgMTAgL3cgVUhE
IDQuNCBvbiBCMjEwLg0KPg0KPg0KWW91IGNvdWxkIHVzZSB0aGUgIm51bV9yZWN2X2ZyYW1lcyIg
ZGV2aWNlIGFyZ3VtZW50Og0KDQpudW1fcmVjdl9mcmFtZXM9MjU2DQoNClNlZSBpZiB0aGF0IG1h
a2VzIGEgZGlmZmVyZW5jZS4NCg0KDQo+DQo+DQo+DQo+DQo+IFNlbnQgd2l0aCBQcm90b24gTWFp
bCBzZWN1cmUgZW1haWwuDQo+DQo+IC0tLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLS0tDQo+
IE9uIFNhdHVyZGF5LCBTZXB0ZW1iZXIgMjNyZCwgMjAyMyBhdCAyMzo0MCwgTWFyY3VzIE3DvGxs
ZXIgPG1hcmN1cy5tdWVsbGVyQGV0dHVzLmNvbT4gd3JvdGU6DQo+DQo+DQo+PiBTb3VuZHMgbGlr
ZSB0aGUgVVNCIGhvc3QgY29udHJvbGxlcidzIFdpbmRvd3MgZHJpdmVyIGFuZC9vciBjb250cm9s
bGVyIGZpcm13YXJlIGNvbWluZw0KPj4gd2l0aCB0aGF0IGRyaXZlciBsZWF2ZSB0aGluZ3MgdG8g
YmUgZGVzaXJlZC4gSSBob25lc3RseSBkb24ndCBoYXZlIGEgZ29vZCByZWNvbW1lbmRhdGlvbg0K
Pj4gdGhlcmUsIG90aGVyIHRoYW4gdG8gbWFrZSBzdXJlIHlvdXIgV2luZG93cyBkcml2ZXJzIGFy
ZSB1cCB0byBkYXRlIOKAkyBXaW5kb3dzIGlzIG5vdCBwZXIgc2UNCj4+IHdvcnNlIHRoYW4gTGlu
dXggYXQgVVNCLg0KPj4NCj4+IEJlc3QsDQo+Pg0KPj4gTWFyY3VzDQo+Pg0KPj4gT24gMjMuMDku
MjMgMjM6MjgsIEl2YW4gWmFoYXJ0Y2h1ayB3cm90ZToNCj4+DQo+Pj4gSGVsbG8uIEkgaGF2ZSBh
biBpc3N1ZSB3aXRoIHJlYWRpbmcgZGF0YSBmcm9tIHRoZSBVU1JQIEIyMDAgb24gV2luZG93cyAx
MC4gV2hlbiBJIHJ1bg0KPj4+IHRoZSBiZW5jaG1hcmtfcmF0ZSB3aXRoIGEgMjAgTUh6IHJlY2Vw
dGlvbiBiYW5kd2lkdGgsIEkgc2VlIGxvc3NlcyBvZiBtb3JlIHRoYW4gNTANCj4+PiBwZXJjZW50
LiBIb3dldmVyLCB0aGVyZSBhcmUgbm8gbG9zc2VzIGR1cmluZyB0cmFuc21pc3Npb24uIEkgaGF2
ZSBmb2xsb3dlZCBhbGwgdGhlDQo+Pj4gaW5zdHJ1Y3Rpb25zLCBpbmNsdWRpbmcgbW9kaWZ5aW5n
IHRoZSByZWdpc3RyeSBhbmQgZGlzYWJsaW5nIHBvd2VyIG1hbmFnZW1lbnQgZm9yIFVTQi4NCj4+
PiBUaGUgc2FtZSBpc3N1ZSBvY2N1cnMgZXZlbiB3aGVuIHVzaW5nIGFuIGV4dGVybmFsIHBvd2Vy
IHN1cHBseS4gQ2FuIHlvdSBwbGVhc2UgYWR2aXNlIG9uDQo+Pj4gd2hhdCB0aGUgcG9zc2libGUg
cHJvYmxlbXMgbWlnaHQgYmU/IE9uIHRoZSBzYW1lIFBDLCB3aGVuIHVzaW5nIFVidW50dSwgSSBj
YW4gcmVjZWl2ZSA1MA0KPj4+IE1IeiB3aXRoIGFsbW9zdCBubyBsb3NzZXMuDQo+Pj4NCj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+Pj4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQ0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
DQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
