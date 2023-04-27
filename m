Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB65A6F0797
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 16:37:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A91CA384285
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 10:37:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682606239; bh=HdLVX7v30raBPitcPye4E7koT0He6CHy1h5kDUnefRc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=P/ZMF9RUy7L1kZJjWv/tpn68MUxADvYq4Ta7Xf+FTN0sGwwegWXs685Q3hRqYmAHN
	 zVYQv6RuHVNqbay9T4G1QE5laL0tQCRBWV7Iy3jH4rAH5A9+ee05EyIOg0FHHs7kep
	 KFTUsVbRcwcOTNxIUep3NoG5bZsZXVqojUcBrT+00SnMAIFSii2X5HMkmoQ94uhJmd
	 qoknhcs5EXhWSjpqhtGWI08gljbrVk1v0OXIfJ/BZAWjKjbpZDVYSDoOdeYohQfaiM
	 rNB5eyU4MNJfMDymPSfudoiBM/izfAq/9plspabz1WEu0DBjjuPWiJy8x4b6H9gHsX
	 se6QXSTOPaV2Q==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id A37A8380F16
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 10:36:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="j2PQZ6Mn";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-3eab1f2ba18so42168131cf.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 07:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682606196; x=1685198196;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LgQhHLgxbjupOWkAEZyzr2600fTFOktdhkQyT3mhkz8=;
        b=j2PQZ6Mn9Ulgt87HT5RLqnYF6TKqHVbvpaRF+T+JUu3GCGLf3GsoWyVToONMXoN5Sc
         BFrs8oSchqPsYqvQz0uzIvDHGzNkPwE1juX0rl1bPtwivtFsUfLr9u/jvcN+rp/S+8MB
         RMYELeHFaDPn7kbKoTtTs6/yPbG7qkT3q6TybSwLKD77P0UTAOZR9JL42vZPLQw40MTA
         Ka+AUL8QCE/m5M9eK85c5IjtYHO4MO8PdXtwsdv8N4eW7KqqRGnRlzu5plrhDD9lLIR8
         YSzsJuDMNOkCGyAF7+RnNihwycq0bav7kPDvjAEscHz+7eGxJwvjIZE3o89U06mDO42J
         4Q6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682606196; x=1685198196;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LgQhHLgxbjupOWkAEZyzr2600fTFOktdhkQyT3mhkz8=;
        b=SB5abCiiAGwPQnlb0vl7kKrNCq9GTaCn+D+LqxU0ehgNB87HtSDNM+tGAibiFUtlqs
         fo9KlvUPbpHajgLEh5u7W3uMivBKTZjYX8ibbJQPGwQPia2AGiRQKF4uz7oqM2kaLH1w
         IR22RacSvOHfgO3Cs4ZJJmRQE1hTKvy1FQdRLQ6EdOKUtpQfOqGMBn4erL+0Ygq31IYR
         wAER3J4lYEjPGB22QuI4JJeYjIkKzfl4pBfNk3ixZE7x3kQdAkUgjjtJFKYxMdLcAXe/
         lyYDzTalZ17TewJJdObqN78PCtxRVhG4U5QMWbpDm8vwQkXsJa/2TqVULBUBT8lpU0Gb
         3Q/w==
X-Gm-Message-State: AC+VfDx+JQytp0s/lgswSGeBDyFhZQRWPzlNlVtmlDKSfA1dyN72FBWJ
	amccjofpwhEfQu+9wSAp9APqQVZST74=
X-Google-Smtp-Source: ACHHUZ7uC3x8rDgEJ6bmCoIXV8EFrohlWw27C28PjfTFOJs5akbDN/dyzsros8dv9IDEl0ctVGAzfQ==
X-Received: by 2002:a05:622a:1a8c:b0:3a8:a84:7ffa with SMTP id s12-20020a05622a1a8c00b003a80a847ffamr2862213qtc.57.1682606195873;
        Thu, 27 Apr 2023 07:36:35 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id e21-20020ac84e55000000b003bd0f0b26b0sm6256038qtw.77.2023.04.27.07.36.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 07:36:35 -0700 (PDT)
Message-ID: <24bc45bf-f075-01cf-56af-68123f11e1fb@gmail.com>
Date: Thu, 27 Apr 2023 10:36:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <evVOSnJMxcaz0XBcxvO2imtx1pl0VsV6zemJFjMV1Ds@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <evVOSnJMxcaz0XBcxvO2imtx1pl0VsV6zemJFjMV1Ds@lists.ettus.com>
Message-ID-Hash: YPILRRN6CRXTZFY272WKM3DHEF3ZDBQ6
X-Message-ID-Hash: YPILRRN6CRXTZFY272WKM3DHEF3ZDBQ6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YPILRRN6CRXTZFY272WKM3DHEF3ZDBQ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDQvMjAyMyAwNjozMSwgZGF2aWQuZmVybmFuZGVzQHZpdmVyaXMuZnIgd3JvdGU6DQo+
DQo+IEhpIE1hcmN1cywNCj4NCj4gVGhhbmsgeW91IGZvciB5b3VyIHF1aWNrIHJlc3BvbnNlLiBJ
IG1vZGlmaWVkIHRoZSBmbG93Z3JhcGggYWNjb3JkaW5nIA0KPiB0byB5b3VyIHN1Z2dlc3Rpb25z
IGFuZCBub3cgaXQgc2VlbXMgdG8gd29yayBzb21ldGltZXMuIEkgZG9u4oCZdCBrbm93IA0KPiB3
aHksIGJ1dCBpdCBjYW4gd29yayBub3cgaWYgSSBydW4gdGhlIHRlc3QsIGJ1dCBpdCBwcm9iYWJs
eSB3b27igJl0IHdvcmsgDQo+IGluIHRoZSBmb2xsb3dpbmcgMTAgdGVzdHMg4oCmIERvIGhhdmUg
YW55IGlkZQ0KPg0KPg0KaSdsbCBub3RlIHRoYXQgeW91IGhhdmUgeW91ciBHQUlOIHZhbHVlcyBz
ZXQgdG8gMCBvbiBib3RoIHRoZSBUWCBhbmQgUlggDQpzaWRlcy7CoMKgwqAgQWxzbywgeW91IGRv
bid0IGV4cGxpY2l0bHkgc3BlY2lmeSB0aGUgc3ViZGV2DQogwqAgdmFsdWVzLsKgIEkgYXNzdW1l
IHRoYXQgeW91IGhhdmUgdHdvIFdCWCBjYXJkcyBpbiB0aGUgWDMxMD8NCg0KWW91IHNob3VsZCB1
c2UgYSBzdWJkZXYgdmFsdWUgb2YgIkE6MCBCOjAiwqAgb24gYm90aCBzb3VyY2UgYW5kIHNpbmsu
DQoNCkhvdyBhcmUgdGhlIFRYIGFuZCBSWCBjb25uZWN0ZWQ/wqAgSWYgdmlhIGEgY2FibGUsIHlv
dSBBQlNPTFVURUxZIE1VU1QgDQp1c2UgYSBtaW5pbXVtIG9mIDMwZEIgb2YgYXR0ZW51YXRpb24u
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
