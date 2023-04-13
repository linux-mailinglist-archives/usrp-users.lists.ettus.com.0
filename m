Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3FE6E1887
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 01:59:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2EF833844C6
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 19:59:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681430361; bh=0V/fZ+Vr3gDQ8VBW3G+COI9/QVl95fvCzWFgeJ4uHsw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vPWcs5yi/XXknJHl2ZOP1ZU+awcqpL8RU5I7SqV8W/r8QKTWkeCqL/vnRkwusSzYu
	 XaoeZmJ5HLdZp6tfZU/j8sY86HFgrdUzuB8oeFr4MJrW/yMqmqBU9u6j055YkvmsAK
	 0Pg9tB+em1ZevsuAB1Qe6CUJlSZmnz8RFan5jcOWhJ37T2AUKb+ctjJnN98zcOa3dL
	 DKEX1aefSXPWxFGL6WOUGnbdUN8Bhr6sqnj4n5tFnS1iTVkqJRSSATkHhIQO5jsTnP
	 mHnPGZwx3ngPK20oDgjOkYg57G2rUyPPnrVnqDwH3yRVCoD+9wCn/fNf/+E8o2cQIi
	 AiI+ItxfxFWiw==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id B18BF38408E
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 19:58:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WJAdlcc1";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id gb12so14931767qtb.6
        for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 16:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681430328; x=1684022328;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SJpe7w4DnGU5+78zgeDqJ2uj66M2/bjdzKiSCUAOHzc=;
        b=WJAdlcc1Vrg2v4IAGblxlv5pzuxHX8kV/gFwofXhstwZ/+2iOrqBKJxEZbReROLRrm
         9B+bkUGCcR/mE37pK8A/G1M1PGlrTbwLhJcZ5SXQdglbSHmPVXmIPCfo6pbjyejva3RE
         snR6nmaxwicC9MDaZpR7CZKbSW3c8dTaROqUBv7fNcFzNo+tn91i4elbxt6vCpu7p7j5
         bkCzMLHXNyhiS7tnDC+RKAp5DJREJDygdBr21/Bfz4GYYRSKoXPnJcLQ0wluIwdkpBio
         4e5LRdRtWW6f4r14sZSp8IYC8fXXw2q/mOfcQZ8pjrKbKmz7T8SjpXFdgyOvMuV/a1iH
         5cOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681430328; x=1684022328;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SJpe7w4DnGU5+78zgeDqJ2uj66M2/bjdzKiSCUAOHzc=;
        b=EiW2Ufs03JivSagrlf7MTyiRx1xlTHOc/Oh3RSLGBqjG2x6GFzCabMNAfirqltxw61
         LJULBT5jHy6f0ZPsWPzg+1uOwWZAIPqoiiBrZyYWrad3Pp9Kpkp2S7srtBIdRCPbRyOh
         NCYqdJ2Du/i2Pp0C5m/RG+nl850IU7NhiBasTp0KuE5J0a1jtBOkspen0LVNsGfgBQ5s
         zvEeWylFUa0kxsUqgA47Z/V6HNWK7+Sru3YLj2t8807vj+UyTvndxlEnFDmmsWBmcT4W
         BF4jFRWZ9+VIXbTVJFHJKQ93L3zo3IBeG/mHA+s8xpKp/jyiiiHj2KvyQLcnigsA7SoR
         njZg==
X-Gm-Message-State: AAQBX9cSHIeMHdU5aGHRpzvM6Ei4ArmMGmQhU4wPwneeT4U6BvvSxkyQ
	hvuXILuXtOCqB1BI52ZkwwFiNp3suq4=
X-Google-Smtp-Source: AKy350b+rBLUoaq6NHAdf3uOG/7edMNk8Fkw9el175nhXASFjCU/jjmP5r/f8+UgNIL6Ys9p7i4edQ==
X-Received: by 2002:a05:622a:1755:b0:3d5:cf4e:bd0 with SMTP id l21-20020a05622a175500b003d5cf4e0bd0mr6383158qtk.63.1681430328090;
        Thu, 13 Apr 2023 16:58:48 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id o19-20020a05620a229300b007467f8b76f0sm828339qkh.41.2023.04.13.16.58.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 16:58:47 -0700 (PDT)
Message-ID: <e1b58b68-2087-1793-5d6c-89ccdd949ded@gmail.com>
Date: Thu, 13 Apr 2023 19:58:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Jim Schatzman <james.schatzman@futurelabusa.com>,
 usrp-users@lists.ettus.com
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com>
 <20230411011218.5513E4D94B@mail.futurelabusa.com>
 <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com>
 <20230413210221.4BED44D905@mail.futurelabusa.com>
 <6633af1b-5726-e020-83f4-24454739e486@gmail.com>
 <20230413225129.0E1C84D94B@mail.futurelabusa.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20230413225129.0E1C84D94B@mail.futurelabusa.com>
Message-ID-Hash: OVWZTCJBXNHU47GLBJ2Y5ZZTK4BMVJNO
X-Message-ID-Hash: OVWZTCJBXNHU47GLBJ2Y5ZZTK4BMVJNO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OVWZTCJBXNHU47GLBJ2Y5ZZTK4BMVJNO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTMvMDQvMjAyMyAxODo1MSwgSmltIFNjaGF0em1hbiB3cm90ZToNCj4gTjMxMCBjb25maXJt
ZWQuDQo+DQo+IExpbnV4IG5hdGl2ZS4NCj4NCj4gdHhfc2FtcGxlc19mcm9tX2ZpbGUgcHJvZHVj
ZXMgdW5kZXJydW5zLiBTbyBkb2VzIGEgY3VzdG9taXplZCB2ZXJzaW9uIG9mIHR4X3NhbXBsZXNf
ZnJvbV9maWxlIHRoYXQgdXNlcyBtdWx0aXBsZSBidWZmZXJzIGFuZCB0aHJlYWRzIHRvIGd1YXJh
bnRlZSBjb25zdGFudCBzZW5kIHByZXNzdXJlLg0KPg0KPiBJIHVuZGVyc3RhbmQgdGhhdCB0aGUg
TjMxMCBzaG91bGQgbm90IGRvIHRoaXMuIEkgYWdyZWUgdGhhdCB0aGUgbW9zdCBsaWtlbHkgY3Vs
cHJpdCBpcyB0aGUgaG9zdCBjb21wdXRlciwgY291cGxlZCB3aXRoIGluYWRlcXVhdGUgYnVmZmVy
aW5nIGluIHRoZSBOMzEwLiBEb2VzIGFueW9uZSBrbm93IGhvdyBtdWNoIGJ1ZmZlcmluZyBpdCBw
cm92aWRlcyBhbmQgd2hhdCB0aGUgYXNzb2NpYXRlZCB0aW1pbmcgaXM/ICBUaGF0IGlzLCB3aGF0
IGlzIG1heGltdW0gbGFnIGJldHdlZW4gVURQIHBhY2tldHMgYmVmb3JlIHRoZSBOMzEwIHdpbGwg
ZXhwZXJpZW5jZSBhbiB1bmRlcnJ1biBjb25kaXRpb24/DQo+DQo+IEluIHRoZSBVYnVudHUgaG9z
dCBzeXN0ZW0gbG9nLCB0aGVyZSBhcmUgbWVzc2FnZXMgZHVyaW5nIHBlcmlvZCBpbiBxdWVzdGlv
biBmcm9tIE5ldHdvcmtNYW5hZ2VyLiBOb3RoaW5nIGluZGljYXRpbmcgYSBjb25uZWN0aW9uIHBy
b2JsZW0sIGJ1dCBjb25zaXN0ZW50IHdpdGggbXkgZ2VuZXJhbCBiZWxpZXZlIHRoYXQgTmV0d29y
a01hbmFnZXIgaXMgYW4gZXZpbCBhYm9taW5hdGlvbiB3aG9zZSBwcmltYXJ5IGpvYiBpcyB0byBj
cmVhdGUgdHJvdWJsZSBhbmQgZnJ1c3RyYXRpb24sIHdlIHdpbGwgcmVtb3ZlIGl0IGZyb20gdGhl
IHdvcmtzdGF0aW9uIGFuZCB0cnkgYWdhaW4uDQo+DQo+IFRoYW5rcyENCj4gSmltDQo+DQo+DQpU
aGlzIG1pZ2h0IHNlZW0gY291bnRlci1pbnR1aXRpdmUsIGJ1dCB3aGF0IGhhcHBlbnMgaWYgeW91
IHVzZSB0aGUgDQoic2tpcF9kcmFtPTEiIGRldmljZSBhcmd1bWVudD/CoCBEbyB0aGluZ3MgZ2V0
IGJldHRlcg0KIMKgIG9yIHdvcnNlPw0KDQpUaGUgTjMxMCBoYXMgMkdpQiBvZiBEUkFNDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
