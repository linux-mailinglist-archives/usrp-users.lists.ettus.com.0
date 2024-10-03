Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C08598FA08
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 00:45:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7ABF938596B
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 18:45:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727995539; bh=pRqSYol5+GfXsdSBrh+RWSb3kZH0qxGgQHnoHOrmh94=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YjZh2rrYKQLEy1u1/oFeRo85YQjbiyh2WYaTe6NlDVKAcFEMJppcs+9/yegAz0DuO
	 vEFIiCr4YOPI2hIg9yBLVDMtD4cHtQeARpF2N5Q0+q2N3skwMiwjg5zpckoeq98ciG
	 FYa2h164Wl8q4up78tW9NsS3BkambitELDVnz6vNCpm8D6OVttseBq84IdySgQR4ic
	 Z1bZ5tNCrfubN/WyED/HfosrIdcmVW14acFEoTHPE5vtDLXqI8gdHWztI0iRp23/+s
	 ZoXTjDTymvpsflkMWXgAsGBsCjakZstFn6CyzwMleCgZMR8thkdWdcnd8JfI9R8+/4
	 5YOVovHaftoyA==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 931A7385839
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 18:44:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="U7GBg1Zj";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-4581ec0e00eso10386541cf.3
        for <usrp-users@lists.ettus.com>; Thu, 03 Oct 2024 15:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727995482; x=1728600282; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q5NGzXmO8dE+vJtFXlclO/YgJkJt+7kYNXoZdf/wZTw=;
        b=U7GBg1ZjiJHuP2OfJNBVkUxV/t5KptbIRbOF4ICXuPsOBrf5TYiK2yPsJ9JcNY5Hy8
         ZjgfjbnDOHza50iS6KWrT9J8GyYoPWqI37bnIINmLrDe2VjTopR89rPcgn9oZ5di5iwq
         ZRF98Z8ahuADI3D2bR67JqbD46Yx7wKL5pIOhR6QPZxIZ4LvFWj6M9s0eHG6E7kWZqgk
         mx0BdBCm/PpU4IXnpV8XsbK6BeMiB/ah3iYCJt19wJXBmgpzIr7iy+Vbprm6dmft8a0y
         cUAjH7pN2pn+gcmgv6NawVJhJ7gO2TT39mjKy8FbzqWOiB7SrpZN17mLrfy6/JRwXZ+Q
         /uqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727995482; x=1728600282;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q5NGzXmO8dE+vJtFXlclO/YgJkJt+7kYNXoZdf/wZTw=;
        b=A9rVIo9ytP8YfWtyf2QV1Nbyhnqyy1MP77nruuLxbQriu+1LHN8fyLV1n4kN5MYY+E
         Qo83ZobX7y0j8ZsVEDeSoc3ZqRcma5V9++lKiDtoJeLwH5Ns4X3rkcHIDdgBG4lK5UMz
         gnBCeJ7fFXHzsoXFaz+POrAou2ys+qfmyUi44HgDmSJ2HmwdFkquWLSGQ/mFSxHTWVED
         RzgJXTfjKUqvnyoaR/IgbZh6Uu/udsKPuMNRqyqNBY7hdR/HYM7oaANSdhJ4KQ3p56nE
         PfkxqqTNkRe2nqMwgJArUS1RslNJiRVXVtOOQE+UYysabb5+Av1Or3gbgbMPaNcDJF2W
         E8YQ==
X-Gm-Message-State: AOJu0Yxz8fra1/G1dszTwHbs/GAQyBiU0P6PSMZL35ekn+xXGDHX3ujT
	9IYUnC9IH77WRCfeS0WTDdfffHCoNQTCZQpwtSiBzAMDsxYD/t8yzTXEwg==
X-Google-Smtp-Source: AGHT+IHuoKbInFgNDwpVD9Dbhfw3y97U6YjVYKKmMn+435/bkXSL6Xwbr2OkQa7zWYCle2EvYgBoQw==
X-Received: by 2002:a05:622a:a18:b0:456:6203:e582 with SMTP id d75a77b69052e-45d9ba3c079mr13482021cf.14.1727995481745;
        Thu, 03 Oct 2024 15:44:41 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6cb937d4cb0sm10302146d6.92.2024.10.03.15.44.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2024 15:44:41 -0700 (PDT)
Message-ID: <0c080348-fe8d-4ea8-8a6f-66f9dbd2ee38@gmail.com>
Date: Thu, 3 Oct 2024 18:44:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <4uipCyETSBEN8uOTi8PicBTBzyP5jkyBhPOimT1raWk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <4uipCyETSBEN8uOTi8PicBTBzyP5jkyBhPOimT1raWk@lists.ettus.com>
Message-ID-Hash: Y3H6MOTWPYNT62IBW5SFJS66Y4YPENEI
X-Message-ID-Hash: Y3H6MOTWPYNT62IBW5SFJS66Y4YPENEI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Octoclock CDA-2990 produces no signals
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y3H6MOTWPYNT62IBW5SFJS66Y4YPENEI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMTAvMjAyNCAxODoyNywgc2hhcGtpcXVhcnJ5QGdtYWlsLmNvbSB3cm90ZToNCj4NCj4g
RGVhciBNYXJjdXMsDQo+DQo+IFRoYW5rcyBmb3IgdGhlIHJlcGx5LiBJIGhhdmUgdHdvIG9mIHRo
ZXNlIE9jdG9jbG9ja3MgYW5kIHRoZSBzZWNvbmQgDQo+IG9uZSBpcyBkb2luZyBleGFjdGx5IHdo
YXQgSSBzYWlkLiBJdCBpcyBibGlua2luZyB0aGUgUFBTIGFuZCBzZW5kaW5nIGEgDQo+IDEwTUh6
IHNxdWFyZSB3YXZlIHRvIGFuIFNPQ+KAmXMgUkVGX0NMSy4gVGhpcyBpcyBoYXBwZW5pbmcgcmln
aHQgbm93LCBhIA0KPiBmZXcgZmVldCB0byBteSByaWdodC4gVGhlc2UgYXJlIGlkZW50aWNhbCBt
b2RlbHMuIEkgY2FuIHRha2UgYSBwaG90byANCj4gaWYgeW91IGxpa2UuDQo+DQo+IE9uIHRoZSBm
cm96ZW4vYnJva2VuIHVuaXQsIHRoZXJlIGlzIGEgR1BTRE8gZGVjYWwgc3RpY2tlciBvbiB0aGUg
YmFjayANCj4gc2lkZS4gV2UgaGF2ZSBiZWVuIHVzaW5nIGl0IGZvciBpdHMgUFBTIGFuZCAxME1I
eiBvdXRwdXQgc2lnbmFscyBmb3IgDQo+IG1hbnkgd2Vla3Mgbm93LiBCb3RoIHNpZ25hbHMgYXBw
ZWFyIGNsZWFybHkgb24gYW4gb3NjaWxsb3Njb3BlLiBPbmx5IA0KPiB0b2RheSBpdCBoYXMgZmFp
bGVkLg0KPg0KPiBXaGF0IHNob3VsZCBJIHRyeSBub3c/IFNob3VsZCBJIGxvZyBpbnRvIGl0IHZp
YSBuZXR3b3JrPw0KPg0KPg0KQWgsIGluZGVlZC7CoCBUaGF0J3Mgd2h5IEkgcXVhbGlmaWVkIG15
IHByZXZpb3VzIGFuc3dlciB3aXRoICJpZiB0aGVyZSANCmhhc24ndCBiZWVuIGEgR1BTRE8gdW5p
dCBmaXR0ZWQiLg0KDQpZb3UgY291bGQgY2hlY2sgdGhlIEdQUyBhbnRlbm5hIHRvIG1ha2Ugc3Vy
ZSBpdCdzIGdldHRpbmcgR1BTIHNpZ25hbCwgDQpidXQgdGhlIEdQU0RPcyB0aGF0IGFyZSB1c2Vk
IGluIHRob3NlIHVuaXRzIG5vcm1hbGx5DQogwqAgcHJvdmlkZSAxUFBTIGFuZCAxME1IeiByZWdh
cmRsZXNzIG9mIHRoZSBzdGF0ZSBvZiBHUFMgbG9jay4NCg0KWW91IHNob3VsZCB1c2UgdGhlIG9m
ZmljaWFsIGN1c3RvbWVyIHN1cHBvcnQgY2hhbm5lbHMgdG8gc2VlIGlmIHlvdSBjYW4gDQpnZXQg
YW4gUk1BIGlzc3VlZCBmb3IgdGhpcyB1bml0Og0KDQpodHRwczovL3d3dy5uaS5jb20vbXktc3Vw
cG9ydC9zL3NlcnZpY2UtcmVxdWVzdHMNCg0KDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
