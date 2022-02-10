Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD264B0278
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 02:56:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E954385156
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 20:56:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gPRijr52";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id A712C384815
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 20:55:49 -0500 (EST)
Received: by mail-qt1-f177.google.com with SMTP id k25so3742053qtp.4
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 17:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yTSE+SMF2IhnYY0aW7U+VIKvP2Be/bxSXiUIe+WAu8M=;
        b=gPRijr52VqPgdruhUfOVlQLBjT5Ov0q7c45s499O29+TmI2gahRE9d+hmopPs3EibE
         m6G0Rm/fnF/nm2RKWV9yMH1P1DkBJ66vDVw2IT0py2gYlXjTbhqITdG0Hnb8LynSY4Nk
         8z7bxHo6HNblx36e4grHwRbEdz03MJ0OLZHmogG0l1ROyzZFyyqpoAw/ExISvL+DL3F6
         0eCXaUIhxgv6FvAdeFjtC6+5C75XtgJs62lL3DbcAfvWS3u5xQclW7QlLQYoPXDpzjRc
         ShBQCpSYNSGYnN6xDTZ5IDlItgiL1JP7eZJGpxUwdi5RgGLO4H0tQyA3aInJSnz74FzJ
         XKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yTSE+SMF2IhnYY0aW7U+VIKvP2Be/bxSXiUIe+WAu8M=;
        b=qs2UPI3b8PxDq1UE+8o8i9CBi+EVTCTm1ozn4lJykQN6IyAC45dluchId25W4J/VxY
         CBVbo0v9ltaNQ9st1y+1RAGHMkVIDUr7/Iq0LAePHm6Wh9wpjRfLU+knCqwUHzAQ6o6d
         78sGz3sJg0IoU/4WhfaAFLiAgPqLM82/gP35ZtmcC39q0zRk83CD8D7uygDNe2244ozz
         yBQ9w9XkSbLSmFFHKE7PeschFPmVujQ1rHv0XZ5z9LDaezy7aL634asfZwidiLq9GSJf
         J3HoWWyWIc3Mi7s2pE48lpCueyQXDF/17VJAT1Q+dLrE5/duwPe/CRaswqhRSdBxEWBX
         M6Kw==
X-Gm-Message-State: AOAM531j75y1Ygh88/QPqSFBrH4l/MjF1fWMolbD+xkRPjGRbHN93A6d
	lZte2e+lRx5a2smyLxu8g9Y=
X-Google-Smtp-Source: ABdhPJyI/pxyZwEA5M6FumOV5rjMMtBQTHikVhRL59Oh1Wucf9omso55NuSmZ35CZGeiMxUByXuvfQ==
X-Received: by 2002:ac8:5711:: with SMTP id 17mr3445502qtw.239.1644458149010;
        Wed, 09 Feb 2022 17:55:49 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id u63sm9184146qkh.43.2022.02.09.17.55.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 17:55:48 -0800 (PST)
Message-ID: <db5b6d55-c37c-8e51-8737-d00234a4f131@gmail.com>
Date: Wed, 9 Feb 2022 20:55:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Ian Buckley <ian.buckley@gmail.com>, Emanuel.Staudinger@dlr.de
References: <f4069dea5a274141ae4b9952254b177a@dlr.de>
 <84c7f9ba-91c4-58f2-f4e0-94828ac2a5bc@gmail.com>
 <de238b3f8bf447be9393e5b22d13b97f@dlr.de>
 <8277c5d5-d6de-393c-832b-43d53ff9aa29@gmail.com>
 <68b7fce0-e2f5-67e0-23e6-56865eb1b71d@elitecoding.org>
 <A877AEBE-E64C-4AB4-9D73-F8FD271C07E5@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <A877AEBE-E64C-4AB4-9D73-F8FD271C07E5@gmail.com>
Message-ID-Hash: 3HVQMPVXLMKLR3ZO3DEQHQFH5DZSQ2HY
X-Message-ID-Hash: 3HVQMPVXLMKLR3ZO3DEQHQFH5DZSQ2HY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200 group delay variations
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3HVQMPVXLMKLR3ZO3DEQHQFH5DZSQ2HY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMi0wOSAxODozNiwgSWFuIEJ1Y2tsZXkgd3JvdGU6DQo+IFF1aWNrIHRob3VnaHRz
LiBTaW5jZSB5b3UgYXJlIFJUVCBoZXJlLCB0aGUgVHggYW5kIFJ4IFJGIHNlY3Rpb25zIG9mIEFE
OTM2MSBhcmUgZHJpdmVuIGJ5IGRpZmZlcmVudCBSRiBmcmFjdGlvbmFsLW4gc3ludGhlc2l6ZXJz
LCB0aGV5IG1pZ2h0IGxvY2sgcnVuLXRvLXJ1biB3aXRoIGRpZmZlcmVudCBwaGFzZSByZWxhdGlv
bnNoaXBzIHRvIHRoZWlyIHNoYXJlZCBjb21tb24gcmVmZXJlbmNlLiBJZiB5b3Ugc2VlIGNsdXN0
ZXJpbmcgYXQgY2VydGFpbiAoc2ltaWxhcmx5IHNwYWNlZCkgdGltZSBiaW5zIGluIHlvdXIgcmVz
dWx0IHRoYXQgbWlnaHQgYmUgYSBoaW50IHRvd2FyZHMgdGhpcyBiZWluZyBpbnZvbHZlZC4NCkkg
aGFkbid0IHRob3VnaHQgYWJvdXQgdGhhdCwgYnV0LCB5ZXMsIHRoYXQgKmNvdWxkKiBiZSBhIHNv
dXJjZSBvZiB0aGUgDQp2YXJpYWJpbGl0eS7CoMKgIEknbSBub3Qgc3VyZSB3aGV0aGVyIHRoZSBB
RDkzNjEgc3VwcG9ydHMgaW50ZWdlci1ODQogwqAgdHVuaW5nIG1vZGUsIGJ1dCBmb3Igc3VyZSBV
SEQgZG9lc24ndCBleHBvc2UgaXQgaW4gdGhlIGRyaXZlci4uLg0KDQpJdCBvY2N1cnJlZCB0byBt
ZSB0aGF0IGFzIFJGIHN5bnRoZXNpemVycyBlbmQgdXAgYmVpbmcgdXNlZCBhbG1vc3QgDQpleGNs
dXNpdmVseSBpbiBEU1AtYmFzZWQgc3lzdGVtcywgdGhlcmUncyBsaXR0bGUgcmVhc29uIGZvcg0K
IMKgIGZyYWN0aW9uYWwtTiB0dW5pbmcsIGFzIGZhciBhcyBJIGNhbiB0ZWxsLS1pdCB3YXMgaW52
ZW50ZWQgdG8gZ2l2ZSANCnZlcnktc21hbGwgc3RlcCBzaXplcyB3aGVuIHlvdSdyZSB1c2luZyBh
IGxhcmdlciByZWZlcmVuY2UgY2xvY2sNCiDCoCBpbnRvIHRoZSBQTEwuwqAgQnV0IHdpdGggdGhl
c2UgUkYgY2hhaW5zIGJlaW5nIGJhY2tlZCBhIGxvdCBtb3JlIGJ5IA0KZmxleGlibGUgRFNQIGFy
Y2hpdGVjdHVyZXMsIHdoZXJlIHlvdSBjYW4gZWZmZWN0aXZlbHkgYWNoaWV2ZQ0KIMKgIHN1Yi0x
SHogdHVuaW5nIHN0ZXAgc2l6ZSwgdGhlIHN5bnRoZXNpemVycyBkb24ndCByZWFsbHkgbmVlZCB0
aGUgdmVyeSANCmZpbmUgc3RlcCBzaXplLsKgwqAgQnV0IHRoYXQncyBqdXN0IG1lIHdheGluZyBw
aGlsb3NvcGhpY2FsLi4uDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
