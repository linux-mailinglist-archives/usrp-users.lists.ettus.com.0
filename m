Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DAA4DC853
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 15:05:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F89E384E53
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 10:05:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LiQ1cxBB";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 6DBC8384D05
	for <usrp-users@lists.ettus.com>; Thu, 17 Mar 2022 10:04:04 -0400 (EDT)
Received: by mail-qt1-f174.google.com with SMTP id a11so479432qtb.12
        for <usrp-users@lists.ettus.com>; Thu, 17 Mar 2022 07:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=3EQG1QlINe32aMaKDeWR/0LRibVmjB2CaL6SQVDGohs=;
        b=LiQ1cxBBEr4/PhTKEQ2RjVZ9Z5lWqwc4Bwt4Oqz5q/NHOe6VeKy98JIcHY5wQ08633
         jmkOBs0oTDDHBqEeTR2yIpAG/U+z0nCcdnk+kDd/09e9Rnqj107QYUC5ksjcHlIxwLWq
         6RiclWOTHj4EvngXiuXJwt3WfsxhucctCCeX12yJQXbjUOc2JpV2JLxZBN1sHoLOXnS3
         jHBRNXSYCvKvVeD6mv3DdAHkPtOJoUqnfEVp76DZuVx7FwPl/iduv2iLCieX0ez+WO8z
         oxlYY2hNvlNrI1jtfvshi1lzbOuOcUO+fSY3kKYnqn3EqC0dDPK6RzJeqaBFcoAqNBvb
         5BAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3EQG1QlINe32aMaKDeWR/0LRibVmjB2CaL6SQVDGohs=;
        b=G7Qdm/EZRPDnL+jjcFa93Vw8GAvsS+mulOWrc6t4N+F/xeg/xpM28J4krnhLbcQegw
         RHj9xyHZ9q/42VZS5mO9F9NBkrXwam9vAINUfqxHPRMZiWdDflnPIsdBTvjeV2rebjy9
         lG953aWmGcVekN2QyQgxKqiKbDfM0evY12AtFRrSn9XVhFncxgMTTHXUqQMViW5O6jsQ
         1e7zaLLbTdrg6xGZOQ+Wt1PTBh6XiDXnFLAcHuW69r+BYwtJnb2EVjaYGwr+jX15KkUL
         esB04qK4jozkhPZS0Yw5Iw4f1tW5BHRMxd8nVV2qyIX4y4g9kV9YTvknmxkmBeJ+hAg0
         6+KQ==
X-Gm-Message-State: AOAM531KVNLu4E4u+I+MD2+FoC95R9z6eLk9K6eX3mhOElSkLbNzL0wr
	i07VrQIA2W3AWDwsEisOKKB8XGHU2a8=
X-Google-Smtp-Source: ABdhPJzvRqeBtBM5xWPROOwxaTDUiWAA+oShHmpY0BorG/DFm1st62VjfFkkvtWHuA2BXdQiiLrkzQ==
X-Received: by 2002:a05:622a:c1:b0:2e1:e281:2ac0 with SMTP id p1-20020a05622a00c100b002e1e2812ac0mr3822628qtw.608.1647525843310;
        Thu, 17 Mar 2022 07:04:03 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id p64-20020a37a643000000b0067d9afad07asm2507484qke.76.2022.03.17.07.04.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 07:04:01 -0700 (PDT)
Message-ID: <2cd67d6b-9ff9-5ad1-1894-567685bcb2f2@gmail.com>
Date: Thu, 17 Mar 2022 10:04:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <pMJt13hKIG0H5eDyn6OUWFHlog07KhItvBFzBIuRQTk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <pMJt13hKIG0H5eDyn6OUWFHlog07KhItvBFzBIuRQTk@lists.ettus.com>
Message-ID-Hash: KFEBLGLQ7X4GOZX5S6N754M4Y7T4VKWA
X-Message-ID-Hash: KFEBLGLQ7X4GOZX5S6N754M4Y7T4VKWA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [USRP E312] Disable bb dc offset tracking
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KFEBLGLQ7X4GOZX5S6N754M4Y7T4VKWA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0xNyAwNDo0OSwgYXJtYW5kLmZvbnRlc0BzeXJsaW5rcy5jb20gd3JvdGU6DQo+
DQo+IEhlbGxvLA0KPg0KPiBJJ20gdXNpbmcgdXNycCBlMzEyIGZvciBhY3F1aXNpdGlvbnMgb24g
bW9kdWxhdGVkIHNpZ25hbHMgYW5kIGkgaGF2ZSANCj4gdW5kZXNpcmVkIHBvd2VyIHZhcmlhdGlv
bnMgaW4gdGltZSBkb21haW4gKDIgdG8gMTAlKS4gVGhhbmtzIHRvIGFuYWxvZyANCj4gZGV2aWNl
cyB0b29scywgaSBkaXNjb3ZlcmVkIHRoYXQgZGlzYWJsaW5nIGJiX2RjX29mZnNldCB0cmFja2lu
ZyBvbiANCj4gQUQ5MzYxIHNldHRsZWQgdGhlIHByb2JsZW0uIEFzIGZhciBhcyBJIGtub3csIHVo
ZCBvbmx5IHByb3ZpZGVzIA0KPiAicmZfZGNfb2Zmc2V0IiBhbmQgImlxX2ltYmFsYW5jZSIgY29u
dHJvbCBhbmQgdGhpcyBkb2Vzbid0IHNldHRsZSB0aGUgDQo+IHByb2JsZW0uIE15IHF1ZXN0aW9u
IGlzIGhvdywgb24gYW4gdXNwciBlMzEyLCBjYW4gSSBkaXNhYmxlIA0KPiBiYl9kY19vZmZzZXQg
dHJhY2tpbmcgPyAoT3IgYXQgbGVhc3QgbW9kaWZ5IGJiX2RjX29mZnNldCBsb29wIHBhcmFtZXRl
cnMpLg0KPg0KPiBUaGFua3MgZm9yIGFueSBoZWxwLA0KPg0KPiBBcm1hbmQNCj4NCj4NCkhhdmUg
eW91IHRyaWVkIHVzaW5nIG9mZnNldCB0dW5pbmc/wqAgVGhpcyBtYXkgb3IgbWF5IG5vdCBtYWtl
IGEgDQpkaWZmZXJlbmNlIGluIHlvdXIgY2FzZS7CoCBCdXQgaXQncyB3b3J0aCBhIHRyeS4NCg0K
aHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfZ2VuZXJhbC5odG1sI2dlbmVyYWxf
dHVuaW5nX3Byb2Nlc3MNCg0KSWYgeW91IHVzZSBhIHR1bmVfcmVxdWVzdCBzdHJ1Y3R1cmUsIHlv
dSBjYW4gc3BlY2lmeSBib3RoIHRoZSBkZXNpcmVkIA0KImFpciIgZnJlcXVlbmN5IGFuZCB0aGUg
b2Zmc2V0LCBhbmQgVUhEIHdpbGwgYXV0b21hdGljYWxseSB0YWtlIGNhcmUgb2YgDQpvZmZzZXR0
aW5nIGV2ZXJ5dGhpbmcsDQogwqAgYnV0IHN0aWxsIGRlbGl2ZXJpbmcgdGhlIGRlc2lyZWQgZnJl
cXVlbmN5IHdpdGhpbiB5b3VyIGJhc2ViYW5kLiBZb3UgDQp3aWxsIG5lZWQgdG8gc2V0IHRoZSBh
bmFsb2cgYmFuZHdpZHRoIHdpZGUgZW5vdWdoIHRvIGFjY291bnQgZm9yIHRoZSBvZmZzZXQuDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
