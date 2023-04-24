Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D01786ED912
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 01:57:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6298384896
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 19:57:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682380649; bh=6nIEq2ePgEPT9Ob9SvslQ+sj+iBcNuTgQBADwaJM5Ic=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nWrQ15J95DUc/Mp0lrlOCA++l7u6RMYIz6ylGIWb0Chs1QMXGclGJtslbLWEkGXWd
	 NivD2cak+wIYl5/JfGAtm5FuTfrlTDuOpnwCTjvvzCU2P1SO0n+sfRCygmCxvLj8Df
	 4huO+qHQDavYwpJ5aqo1g2TW7sKP6IVgNqGu4WIm5h3tAC4r/JUXWjFeb9WT0Q82Sf
	 j2ye9XLUX2O7UHqSmXSKfOfDLH2nn8maaTWnR2q1JHu09xhKwL2bSYwRjPIigOuQDH
	 qT816cSZLHQXrCTIgk+H8xVIn2VneZVr4a9/egwDseWGtxlIacBC+TTc7wNQZ5K7uc
	 Fr0A6Cz4aMk4A==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id F0A6D38485E
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 19:56:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ssy5ULjB";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-3ef32014101so52651131cf.3
        for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 16:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682380611; x=1684972611;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4yRganB2Qdl75u9WCBeQgrxCsQnfBxS4SNlIZwfni9Q=;
        b=ssy5ULjBcEdU8qr44G1qu4TLea8CYh8B7zLRJS+ngALU2KOFmtdmO0xpv50lk2s1GN
         9UK8KjNnEqfaNmJGzGNxHzBTHaZoSsmDvAt2h8AVrhJznGobANP486V/XoYqCOr1rKL1
         M0mrvghh3MhD56sGYnC93FRJXb4gaflaAc4DYTHXd5SumXynQ/l5ZjkX1xHdo69/NLLW
         mwLjR0Ignz2zbsBu4WR11WWjhqQugXjSuPLQaf+ryi2aGAnJLE52GxxsqRC80SEy7ka1
         oag3w5G7zPuueU9oWFXHViAdNF2H6mZ6YwAFxyo70LGuT35oV9j3JjUwgIQ5GyhoHQG2
         6o+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682380611; x=1684972611;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4yRganB2Qdl75u9WCBeQgrxCsQnfBxS4SNlIZwfni9Q=;
        b=Zlk93edDZrgYtYjvfbRLRV5+npMuB0BixydHV1uE0jpEQ0GhPCGgJX0PSy/Rx6SSV1
         AnQgqdH5C7eAPljoNSfj8B+3mroHn6IneUr+TrOlmFzMuGj+YQPDVXiJ+YJVFMHaz579
         a6JvwhSxOezOG3yUXHVWNXmHEb4TfwLPaaepLTtLAO3JdWXd8zQCOkwb1BrellBlOdUf
         KGub5AygCwyw+e9ExheoX1aCofLrqpX9j+OGkOxhLM1Eq05pQtQFgblobQAgtYxrWhC/
         gqkagEcgMzp1DRHne28+MnWVrUM/hiavr1uiqheVYYB0xnkJEVBNKkSYWXhQWnOyTB6L
         IbDQ==
X-Gm-Message-State: AAQBX9ezW4K0WRsFuoLHcrtumYmbTIoc+m0HlNJW1Suv/KPbuYGzNTBh
	wbutJs3LOPcEqTednV/Hp+z1wEnAuUk=
X-Google-Smtp-Source: AKy350Ysw5U5vpefIpGWt5IA97zBWaZlQV+R7lYajDM05czrOFNjyuXmzFdTCewOFuFLq9hxKL/Afw==
X-Received: by 2002:ac8:7e81:0:b0:3ef:231c:cee8 with SMTP id w1-20020ac87e81000000b003ef231ccee8mr29249947qtj.61.1682380611040;
        Mon, 24 Apr 2023 16:56:51 -0700 (PDT)
Received: from [192.168.2.158] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id l19-20020ac84a93000000b003e89e2b3c23sm4006197qtq.58.2023.04.24.16.56.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 16:56:50 -0700 (PDT)
Message-ID: <185e6448-cbb7-de5a-23c7-3c9902828a9c@gmail.com>
Date: Mon, 24 Apr 2023 19:56:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <OFgc6FFKgD1zOd8CDHCF8sg2D0fhtv18cMTDf46Q@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <OFgc6FFKgD1zOd8CDHCF8sg2D0fhtv18cMTDf46Q@lists.ettus.com>
Message-ID-Hash: PUV7II2IAD73OAAEYIUYQLEKF2NFP22Y
X-Message-ID-Hash: PUV7II2IAD73OAAEYIUYQLEKF2NFP22Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Multicast support on x300/x310 with UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PUV7II2IAD73OAAEYIUYQLEKF2NFP22Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjQvMDQvMjAyMyAxOToxOSwgbnJpZWRlbEBzZXJyYW5vc3lzdGVtcy5jb20gd3JvdGU6DQo+
DQo+IEhpLA0KPg0KPiBXZSB3b3VsZCBsaWtlIHRvIGhhdmUgc2V2ZXJhbCB3b3Jrc3RhdGlvbnMg
cHJvY2Vzc2luZyBkYXRhIGZyb20gYSANCj4gc2luZ2xlIFgzMDAgb3IgWDMxMCBVU1JQLg0KPg0K
PiBEb2VzIFVIRCBzdXBwb3J0IHN0cmVhbWluZyB0byBhIG11bHRpY2FzdCBkZXN0aW5hdGlvbiB3
aXRoIHRoZSANCj4gWDMwMC9YMzEwIGRldmljZXM/DQo+DQo+IFdoYXQgbmVlZHMgdG8gYmUgZG9u
ZSBvbiB0aGUg4oCccmVtb3Rl4oCdIGRldmljZXMgdG8gcmVjZWl2ZSB0aGUgbXVsdGljYXN0IA0K
PiBkYXRhPyBUaGVyZSBpcyBhIGRlc2NyaXB0aW9uIG9mIHNldHRpbmcgdXAgcmVtb3RlIHN0cmVh
bWluZyAod2l0aCANCj4gdW5pY2FzdCBkYXRhKSBoZXJlOiANCj4gaHR0cHM6Ly9maWxlcy5ldHR1
cy5jb20vbWFudWFsL3BhZ2Vfc3RyZWFtLmh0bWwjc3RyZWFtX3JlbW90ZQ0KPg0KPiBIb3dldmVy
LCBpdCBpcyBub3QgY2xlYXIgZnJvbSB0aGUgZGVzY3JpcHRpb24gd2hhdCBzaG91bGQgYmUgcnVu
IG9uIA0KPiB0aGUgcmVtb3RlIGRldmljZXMgdG8gYWN0dWFsbHkgcmVjZWl2ZSB0aGUgZGF0YS4N
Cj4NCj4gVGhhbmsgeW91IQ0KPg0KPiBOZWFsIFJpZWRlbA0KPg0KPg0KWW91J2QgbGlrZWx5IG5l
ZWQgdG8gd3JpdGUgeW91ciBvd24gY29kZSB0byBwaWNrIGFwYXJ0IHRoZSBDSERSIHBhY2tldHMu
DQoNClRoZXknZCBiZSBzZW50IHZpYSBVRFAgdG8gdGhlIGRlc2lyZWQgbXVsdGktY2FzdCBhZGRy
ZXNzLg0KDQpIb3cgdG8gYWN0dWFsbHkgInN1YnNjcmliZSIgdG8gYSBtdWx0aS1jYXN0IGdyb3Vw
IGlzIE9TIGRlcGVuZGVudCwgYW5kIA0KdXR0ZXJseSBvdXRzaWRlIG9mIHdoYXQgVUhEIGtub3dz
IGhvdyB0byBkbyBhcw0KIMKgIGZhciBhcyBJIGtub3cuDQoNCg0KDQo+DQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
