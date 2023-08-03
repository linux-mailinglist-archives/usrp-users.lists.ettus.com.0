Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8A976F0EC
	for <lists+usrp-users@lfdr.de>; Thu,  3 Aug 2023 19:54:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 902F9384AE5
	for <lists+usrp-users@lfdr.de>; Thu,  3 Aug 2023 13:54:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691085245; bh=gCX+QF2GH2skcniVt7JC5hQuP2CWLamB3B6mbRQl1DY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BXhZpDVWd6Eh1O8+ER3Dl46wwfXR1ECP2g2n+coF8dynSfBGv8HtibVixECd+d+LK
	 uHmjWMFxFE7li5PWLc5tG0mkGJCwuoUCdTUeLdSgn51OZQZFX/08FTP8UzHmBgcP/n
	 sh6/qmm46xEUvPoKSf7J8Gx39YVLZxrKQekSpsoBJhfC7HR6WuhFuhY7W7CBZ9hmba
	 eXCbzQl8ufupNY4TlrKhzSaMGY7AJhryvfBTq8/M7Rz3ljoLgDzQqRpmHqrouyp4l6
	 yaEwvbdMHvW7qEtPshVhasvbFm0Yexwl8gCeHZshszGLInATwF6RB6bHjDZ+1YIIno
	 3VjTRs2SKtTIw==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id B9E30384AE5
	for <usrp-users@lists.ettus.com>; Thu,  3 Aug 2023 13:53:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KrxXug+l";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-40849e69eb5so9127231cf.1
        for <usrp-users@lists.ettus.com>; Thu, 03 Aug 2023 10:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691085204; x=1691690004;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+AlWS5GvElUrC0iqFCorVlVI1EeCJPA/wjJ6T1+tW2g=;
        b=KrxXug+l5nmeAfOKpCwxmmX+IrZQzkXNo2sP9Viotz/uXq3cT/DDc3klYLnMy+pfz8
         sHEXmfzx+8QReRkXkYcEk79B2W5UwIsrX9XjuOwAdKuVcvt5TbdeE+ShXgJXy4fAL9ON
         EV3iBaeD3Dvj1IMmAWHdEQl1gaJbXqiwQAJr295AnM7NSastU3d2XaIeBz67EOa8KB6n
         lsafktCGH48hS/TDKRRE9urfphqfFotL9R8kkEUjCn6mW3e27qzaKMn5WXvKxo5m/8O0
         P8LvO0TIbMB1Z3FaKAKjHvB3ChvT2HZXV6Hdfc8wGyDFNPZ8Hgmj9vkLc6AUH/J8egJx
         KQvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691085204; x=1691690004;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+AlWS5GvElUrC0iqFCorVlVI1EeCJPA/wjJ6T1+tW2g=;
        b=ahvDuejF2aWBvwljE/mobNXrFd7OvfrRmPpk+8ph9eE8FJd69BFavm6NgJptla2GOU
         FJ2JTdw9DdA9Nb8kAzjYYvO91BoXcm4siNeq+mYlryAW7rPMZyUylbfIwUsdpPgDAf3W
         1VEGr9BeH1YDzvikK7y2leqh54XQRFaWXNRvxez6vHwZ0aa7lC1Sdg5SKWRmE2wujkE8
         Z8/WS/EZazF1+N6knSoA0EJBLFdEcbjlOwz3at9XT1MwYC5/H6PqwiJJ7Sa7ugqXZtF2
         oJR5E0YtlFrGBE6UE64HnxDOCP0Xqqt/47Xw+zZnvoYqjGmMHeRdJPzP0eUQy2QsaRc3
         ew/g==
X-Gm-Message-State: ABy/qLaoAaqFRf/VR6Yo7SQ+ZmjbSngsXbuNYhWyrulVMc06GaJTvn22
	o9vN3z2S5OyHIV00F2s0simkewoJDEs=
X-Google-Smtp-Source: APBJJlEXJN3qLnT3V2A29X2bKZddfbMLIVK8WHEhe2+dtW/zboT4L9AtIAqesG1tuOWwBkXYUrLljA==
X-Received: by 2002:ac8:58c8:0:b0:403:2877:bc43 with SMTP id u8-20020ac858c8000000b004032877bc43mr25470005qta.18.1691085203802;
        Thu, 03 Aug 2023 10:53:23 -0700 (PDT)
Received: from [192.168.2.176] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id a9-20020ac86109000000b004054db6da1bsm94819qtm.53.2023.08.03.10.53.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Aug 2023 10:53:23 -0700 (PDT)
Message-ID: <3d1a03c5-bcc9-58b0-8888-49df4bb29215@gmail.com>
Date: Thu, 3 Aug 2023 13:53:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1254906326.128380.1691050968443.JavaMail.zimbra@imt-atlantique.fr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1254906326.128380.1691050968443.JavaMail.zimbra@imt-atlantique.fr>
Message-ID-Hash: 2K4NEKPFPVF4RHPH7IYSPH2DLPWDQWS3
X-Message-ID-Hash: 2K4NEKPFPVF4RHPH7IYSPH2DLPWDQWS3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to have 10MHz on REF OUT with a master clock of 184.32 MHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2K4NEKPFPVF4RHPH7IYSPH2DLPWDQWS3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMDgvMjAyMyAwNDoyMiwgRVZBTiBMQVVSQU5TIHdyb3RlOg0KPiBIaSBhbGwsDQo+DQo+
IEkgdXNlIHRoZSBVU1JQIFgzMTAgdG8gYW5hbHl6ZSBzaWduYWwgYW5kIGkgdXNlIHRoZSAxMCBN
SHogUkVGIE9VVCBmb3IgYW4gZXh0ZXJuYWwgZGV2aWNlLiBJIG5vdGljZWQgdGhhdOKAmXMgdGhl
IFJFRiBPVVQgaGFzbuKAmXQgYSBmcmVxdWVuY3kgb2YgMTAgTUh6IHdoZW4gaSBhbSB1c2luZyBh
IDE4NC4zMiBNSHogbWFzdGVyIGNsb2NrIHJhdGUgYnV0IGFib3V0IDkuOTYgTUh6LCB3aGVyZWFz
IHRoZSBSRUYgT1VUIGZyZXF1ZW5jeSBpcyAxMCBNSHogd2l0aCBhIG1hc3RlciBjbG9jayByYXRl
IG9mIDIwME1Iei4NCj4gSXMgdGhlcmUgYW55IHdheSB0byBoYXZlIGEgUkVGIE9VVCBhdCB0aGUg
ZnJlcXVlbmN5IG9mIDEwIE1IeiB3aXRoIGEgbWFzdGVyIGNsb2NrIHJhdGUgb2YgMTg0LjMyIE1I
eiA/DQo+DQo+IFJlZ2FyZHMsDQo+DQo+IEV2YW4NCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KVGhlIFJFRiBPVVQgc3VwcG9ydCBv
biBYMzEwIGhhcyBuZXZlciBiZWVuIGEgdG9wIHByaW9yaXR5IGZvciB0aGUgZGV2IA0KdGVhbSwg
YW5kIEkgc3VzcGVjdCB0aGF0IHRoaXMgaXMgYSBzaG9ydGNvbWluZyBpbiB0aGUNCiDCoCBGUEdB
LsKgIEkndmUgcHV0IGluIGEgcXVlcnkgaW50byBFdHR1cyBSJkQsIGJ1dCBpdCBtaWdodCBiZSBh
IGRheSBvciANCnR3byB1bnRpbCBJIGdldCBhbiBhbnN3ZXIuDQoNCkFyZSB5b3UgdXNpbmcgUkVG
IElOIGFzIHdlbGw/DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20K
