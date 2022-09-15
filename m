Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B655B9C4A
	for <lists+usrp-users@lfdr.de>; Thu, 15 Sep 2022 15:49:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6C8B38448F
	for <lists+usrp-users@lfdr.de>; Thu, 15 Sep 2022 09:49:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663249753; bh=Qa7Fo/ogORh/eTC0TXl6gQGnf1fbqk5Ecejk9D8/R2s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=01cHXTQjFzQGoLqqqerCHRQhEGx6OvBniUnUv1BRVjVl5cGnO67jxQ6T0Z2Y20G4G
	 n0PyyG7usi29G9cNCA2vz1cj1vCJ0p52+uGUZrnHQd8evluCtO6pYL/hzuSy0UuzwT
	 lRWDW/R4cJC4E9kVxsO8AMjLKVbfmqImxuUQvn1NsdKaNd8IF+8TgOW40DEqRZ8fGu
	 0X2MnxHd3EVVnGW2JJiMsidzAbuzmupLYg6ieuLo6IhOUEptDuq0vaVDqXu/hQDdLs
	 oVT75vCkrFV/iSkK9jXcU46CaNVtqMeS0Su4jb1l+uG5nNPFP9Ok1dUNf3f3yycnuQ
	 1ag49gXoRij1Q==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id D8D8D3842AD
	for <usrp-users@lists.ettus.com>; Thu, 15 Sep 2022 09:48:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FxMeAz6p";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id j10so10713103qtv.4
        for <usrp-users@lists.ettus.com>; Thu, 15 Sep 2022 06:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=AbFY4Qx5NiC3IMahg/9YN1eZlGnjUv6w6egb0H6HeXk=;
        b=FxMeAz6p9AhQw+5K+sBR2tf5LSTRlG38Bm4kSRgUI8hy2ct3X6OYVbRLAUlXjRjGAh
         Ianyf1aIsMD6cnra5fI4EluHoThyjkk5mJx8ifY8Yrb0oBe4JAPckoqS65ZibpJuo4r7
         cbuaaPUZlGWWuwaSkGAzV7tQVX6azaaG8HV8K8JQpGFgy4olQKiJGrAkGYIKqCLwdpZJ
         mPRa/X/TGB10CDIKcozpWGsYz+UYGwjrMXxJg37fvPZMOLEmGqIDDms5WF9SZ7+p/Jt6
         P/OoR+kuzfK+ObtHxXVmtgzS5OGluWCPS1985l1kjZeiab6RJt7xqNCzvwI7lsvcjd3V
         mRDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=AbFY4Qx5NiC3IMahg/9YN1eZlGnjUv6w6egb0H6HeXk=;
        b=gCcLrGt2ooL/cKwPRWCXq9vWTohhuMP8zPU/HvVxKwy+kmv5U3WQuOVQEo3lC0Bwyb
         iXEzjdvPdmed/Mk5AHRbhVP+39AAVI1uYO5f/6N9VxNJV+XjaxZBzFgf7wtcYnphp5Dk
         9yq0vNiZqQPGHrPUD3N3oHB/1onMUzMecAgRcVctB59RwkZcg0mwY2foE5EtpXrcGp79
         k+QQegN280UPA/3Z3VtY89Emje+o3hu4whCkgayhZ/Y3n5PiBuLesvtJo/vRC19ZEDjj
         +wGMPX/yAUaH8hbg7SL1Bvrv6kKPZ88cbrg/cpbKBOEh/YLTJFWsfa/4WtTvFse7PnvX
         wdNw==
X-Gm-Message-State: ACgBeo2uorZVzoEJwHOh7OacyOOLYxg+NEjsifuSyIw/cyInGGoG/zw7
	mBm4rLF+gvOq/WPYzAol70sZ8QNKxNg=
X-Google-Smtp-Source: AA6agR5z/NUu1HTHLg7sqjZhjuljT7I3euaKqz9UhdwL83pU68FAt+/Yhw+65gQpLTMd+zo7c7tkCQ==
X-Received: by 2002:a05:622a:106:b0:344:8b6f:23d8 with SMTP id u6-20020a05622a010600b003448b6f23d8mr37644540qtw.668.1663249702120;
        Thu, 15 Sep 2022 06:48:22 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id q26-20020ac8451a000000b003445b83de67sm3528491qtn.3.2022.09.15.06.48.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Sep 2022 06:48:21 -0700 (PDT)
Message-ID: <594df3d0-60f4-4846-bcfe-c99a14dd0915@gmail.com>
Date: Thu, 15 Sep 2022 09:48:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <KrQPMifKSF0coFKMQej2bH2vaF7jbszkyw2xMsXA0ZA@lists.ettus.com>
 <CAMMoi3tLd7c7QkufZbRQdn1WjEn2KUO8QTTLxhHHWn4+x7Nubw@mail.gmail.com>
 <CACaXmv_fBnm0uMRPfTiDx34yEpLtsb437coQP+V4AihFcvf0ew@mail.gmail.com>
 <CACaXmv9bGeOK3YsUcHnDVB6bGSh0pneqTXNc4TxmRLxV+A5pww@mail.gmail.com>
 <CAB__hTTN_YjVeRvSaWVYpPcsLECc2Hz-1-qXDwZM_Rxn9VyTCQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTTN_YjVeRvSaWVYpPcsLECc2Hz-1-qXDwZM_Rxn9VyTCQ@mail.gmail.com>
Message-ID-Hash: S62MBDSEFUDAUTIMD5TBHVAU6JZUX2QK
X-Message-ID-Hash: S62MBDSEFUDAUTIMD5TBHVAU6JZUX2QK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Multi-channel Transmit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S62MBDSEFUDAUTIMD5TBHVAU6JZUX2QK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOS0xNSAwOTozMCwgUm9iIEtvc3NsZXIgd3JvdGU6DQo+IEFkZGluZyB0byBOZWVs
J3MgY29tbWVudCwgd2hpbGUgeW91IGhhdmUgb25seSBvbmUgUkYgTE8gdG8gc3VwcG9ydCANCj4g
ZWFjaCBwYWlyIG9mIGNoYW5uZWxzLCB5b3UgY2FuIG1vdmUgdGhlIGNlbnRlciBmcmVxdWVuY3kg
b2Ygb25lIA0KPiByZWxhdGl2ZSB0byB0aGUgb3RoZXIgdXNpbmcgZGlnaXRhbCB0dW5pbmcgd2l0
aGluIHRoZSAxMjUgTUh6IGRpZ2l0YWwgDQo+IGJhbmR3aWR0aC7CoCBTbywgaWYgeW91ciBzaWdu
YWwgYmFuZHdpZHRoIGlzIHNheSAxMCBNSHosIHlvdSBjb3VsZCANCj4gZGlnaXRhbGx5IHR1bmUg
b25lIG9mIHRoZW0gdG8gLTUwTUh6IGFuZCB0aGUgb3RoZXIgdG/CoCs1ME1IeiBzdWNoIHRoYXQg
DQo+IHRoZSBzaWduYWwgY2VudGVyIGZyZXF1ZW5jaWVzIHdlcmUgMTAwIE1IeiBhcGFydC4NCj4N
ClRoYW5rcyBmb3IgdGhlIGlucHV0LCBOZWVsIGFuZCBSb2IuwqAgQnV0IEkgKnRoaW5rKiBJIGFs
cmVhZHkgc2FpZCBhbGwgb2YgDQp0aGF0IHByZXZpb3VzbHkgaW4gdGhpcyB0aHJlYWQsIHVubGVz
cyB0aGlzIGlzIGEgc2xpZ2h0bHkNCiDCoCBkaWZmZXJlbnQgdGhyZWFkLi4uDQoNCjopIDopDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
