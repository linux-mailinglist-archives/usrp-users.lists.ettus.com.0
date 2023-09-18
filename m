Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 037817A46B3
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 12:11:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1ED3383FCC
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 06:11:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695031904; bh=4X6m/jcEYDNMMQ0jAALJi3jOvJkgsSlXdl1YXJi8csk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xsQrYrNNFF7Ocd0Yyv5YF5axbDh/V4KpmuO+VxV5hDE5g/hfhEi4yjutLdip78p9L
	 dwNJz+Bz0j0qzuF5I71AbXSbWKpu/zdVSkUj0TgwQPLwbXKIefzcdYGL82Jc+ljzGg
	 V3z07Ljf7zZ/Yj/s0WrwNCCFrlcicKuWf0CSGapsIDtE2m5n10d5p+BVttNT9gf48N
	 vrV2ULKTyTXPmitA+1LkHFnC0pikdYZr0LZFV8v20lwIKDBkfl69w10qnDN8ljMA9+
	 0lTfp6bM5i5hZCBnCWRp7UzY1t+CvtXlxzpgNyDfMMgbiQ2QyAEEEGUhM0J+ll0y37
	 XffmOEwayDrig==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id EFB27383ED2
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 06:11:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="glYxa5gT";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-9aa0495f9cfso1178672266b.1
        for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 03:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1695031887; x=1695636687; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RSFkEDX9+qoAd5fvigQjnlQjzU/Ra3Far/GKmo6NR9s=;
        b=glYxa5gTplgpz8ni3A2GOR+cAR5UIJc18fdwGskGDYT498EivTJxRxNy9bJIWfUKr0
         kdVmfJMET1IWKGJk8igz8INq1W0WIvuOHezjH73PnRuDGMiHXYuaQx8r6qBN2xM65DwK
         vGF2eSMj/D8yUYCkBNnhOKml5mtJpaupxxzvaGbO7fag+VGRg7EpXqjmn9Im7YzLewec
         4vH4ZH8o8Cw9MMFz7NL7zwjZYU185ZwkfEtKJqA+8xFkZk/GS18YT4JCPieTHakqq//X
         UNEdWF/yKlpeGAKX+wEuannNnJ1wWb9l6zcsfXKG9LdXmsMKQbKNxcfX4T8krM+YfU5U
         HDTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695031887; x=1695636687;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RSFkEDX9+qoAd5fvigQjnlQjzU/Ra3Far/GKmo6NR9s=;
        b=svAerELx/QU21gl9c8qVkGvsFMjI2ieqhJ/FzdS9y0+4RaaimuJ5HwODf8tlOcaVKX
         5pGXQlLadJIsJ1f3OuQSX9x0V9u8arH86Edj0xOtyNH0/ml6yHnBBq71E4WJifhI511k
         E93p+gMCAEzLiKRTgOQvZIB+7sR5gdnR+EC8RJ1x5u+9FurSmS+0LeQlIOOQ2ooLNvSD
         WZ2ltdeBLyTDAGzNs4C8O4LOp0B12iNFu2Be8uLTiELQ76V8OO/9PHyz+/91FajfocCi
         pTWo2wxoEHY1+fEjUHFrfQYKsNeODnoryaNHj/gUv1vyFZkveb1RgxKzfdwtX2GKUfTP
         RRGA==
X-Gm-Message-State: AOJu0YwAyyRdVfpKGpYVZBd8VCU0FdI3nW8lh3k6/nPPy6Lx3EVD5WbN
	nKLBI0FLiCAAShAmFWK4/cPY5VwrktXCZzx7nrUyFA==
X-Google-Smtp-Source: AGHT+IGX5+GYZLZPkMRIh/2wKGDAMZJKb3gS2kI/UwxJfIchoJuOtJNZNU9wYOC1FG1TiVXnI4lMuA==
X-Received: by 2002:a17:906:844d:b0:9a5:cc2b:50e5 with SMTP id e13-20020a170906844d00b009a5cc2b50e5mr11841118ejy.32.1695031887398;
        Mon, 18 Sep 2023 03:11:27 -0700 (PDT)
Received: from ?IPV6:2001:9e8:384a:af00:10fc:1619:bea3:90d1? ([2001:9e8:384a:af00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id x8-20020a1709065ac800b0099bccb03eadsm6160281ejs.205.2023.09.18.03.11.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 03:11:26 -0700 (PDT)
Message-ID: <f90f3d5c-8735-5871-8ad4-3f67ff82bbb6@ettus.com>
Date: Mon, 18 Sep 2023 12:11:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0MTgCvKTtAE5aKjw693syOEp3UF20nZx5XqjlriCZQ@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <0MTgCvKTtAE5aKjw693syOEp3UF20nZx5XqjlriCZQ@lists.ettus.com>
Message-ID-Hash: KYCLMT4WRLGWEYB4GLGKHIUR5CJVWGV7
X-Message-ID-Hash: KYCLMT4WRLGWEYB4GLGKHIUR5CJVWGV7
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Bypassing_U807_and_U805_=28SKY13335=E2=88=92381LF=29?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KYCLMT4WRLGWEYB4GLGKHIUR5CJVWGV7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgT8SfdXpoYW4sDQoNCndlIG9mIGNvdXJzZSBoYXZlbid0IHJ1biBhbnkgbWF0Y2hpbmcgdGVz
dHMgb24gd2hhdCBoYXBwZW5zIGluIHRoYXQgYnlwYXNzIG1vZGU7IGl0IHdvdWxkIA0Kc3RpbGwg
c2VlbSB0byBtZSB0aGF0IGlmIHlvdSBieXBhc3MgVTgwNSwgeW91J2Qgd2FudCB0byByZW1vdmUg
dGhlIGluLSBhbmQgb3V0cHV0IA0KY2FwYWNpdG9ycywgaW5kZWVkLiBJJ2Qgc3Ryb25nbHkgYWR2
aXNlIGFnYWluc3QgZG9pbmcgdGhpcyBtb2RpZmljYXRpb24sIGZvciB0aGUgZm9sbG93aW5nIA0K
dGVjaG5pY2FsIHJlYXNvbjoNCg0KMjQgdG8gMjcgZEIgaXNvbGF0aW9uIGlzIGluZGVlZCB3aGF0
IHRoZSBkYXRhc2hlZXQgb2YgdGhlIFNLWTEzMzM1LTM4MUxGIHNheXMsIGJ1dCBkb24ndCANCmZv
cmdldCB0aGF0IHlvdSBoYXZlIGFub3RoZXIgMjQgdG8gMjcgZEIgb2YgaXNvbGF0aW9uIGJldHdl
ZW4gVFggYW5kIFJYIGluIFU4MDcsIGFkZGluZyB1cCANCnRvIDQ4IHRvIDU0IGRCIG9mIGlzb2xh
dGlvbi4gVGhhdCdzIGluIHRoZSBzYW1lIGJhbGxwYXJrIGFzIGNyb3NzdGFsayB0aHJvdWdoIHRo
ZSBib2FyZCwgDQpwb3dlciBzdXBwbHksIGFkamFjZW50IHRyYWNlcyBldGMuIFRoZSBCMnh4IHdh
cyBkZXNpZ25lZCBieSBSRiBlbmdpbmVlcnMgd2hvIGtpbmQgb2Yga25ldyANCndoYXQgdGhleSB3
ZXJlIGRvaW5nIDpEDQoNClNvLCBkb24ndCBleHBlY3QgdG8gd2luIG11Y2ggYnkgcmVtb3Zpbmcg
VTgwNS4gRXNwZWNpYWxseSBwYWlyZWQgd2l0aCB0aGUgZmFjdCB0aGF0IHdlIA0KaGF2ZSBubyBj
aGFyYWN0ZXJpemF0aW9uIG9mIG1hdGNoaW5nIGluIHRoZSBieXBhc3NlZCBtb2RlLCBJJ2QgYXNz
dW1lIHlvdSByZWFsbHkgd29uJ3QgZW5kIA0Kd2l0aCBhIGNsZWFuZXIgUlgsIGJ1dCBqdXN0IG1v
cmUgcHJvYmxlbXMNCg0KQmVzdCwNCk1hcmN1cw0KDQpPbiAxOC4wOS4yMyAwODoxMSwgb3V6YW5f
dHNAaG90bWFpbC5jb20gd3JvdGU6DQo+DQo+IEhlbGxvLCBpbiBteSBjYXNlLCB0aGUgZnVuY3Rp
b24gcGVyZm9ybWVkIGJ5IHRoZSAiU0tZMTMzMzXiiJIzODFMRiIgSUMgc3dpdGNoIGlzIG5vdCAN
Cj4gd29ya2luZyBmb3IgbWUuIEFuZCBhcyBmYXIgYXMgSSBjYW4gc2VlLCB0aGUgaXNvbGF0aW9u
IG9mIHRoaXMgY29tcG9uZW50IGlzIGxvdyANCj4gKDI0ZEItMjdkQikuIFRoZSBjYXJkIEkgaGF2
ZSBpcyBCMjAwLiBTY2hlbWF0aWMgQjIxMCBnaXZlbiBpbiB0aGUgbGluayANCj4gImh0dHBzOi8v
ZmlsZXMuZXR0dXMuY29tL3NjaGVtYXRpY3MvYjIwMC9iMjEwLnBkZiIuIEkgd2FudCB0byBieXBh
c3MgdGhpcyBjb21wb25lbnQuIEFzIA0KPiBmYXIgYXMgSSBjYW4gc2VlLCB0aGVyZSBhcmUgcGFk
cyBmb3IgdGhpcyBvbiB0aGUgY2FyZC4gSSB0aGluayBpdCBpcyBieXBhc3NlZCBieSANCj4gYWN0
aXZhdGluZyBDODQ3IGFuZCBDODQ5IGluIHRoZSByZWxldmFudCBwYXJ0IG9mIHRoZSBCMjEwIHNj
aGVtYXRpYyB0aGF0IEkgc2VudCB5b3UgaW4gDQo+IGF0dGFjaG1lbnQuDQo+DQo+DQo+DQo+IFRo
ZSBtYWluIHF1ZXN0aW9uIEkgd2FudCB0byBhc2sgaXMsIHNob3VsZCBJIGNvbm5lY3QgdGhlIDIy
MHBGIGNhcGFjaXR5IHNlZW4gaW4gQzgxMCB0byANCj4gQzg0NywgYW5kIHRoZSA0NzBwRiBjYXBh
Y2l0eSBzZWVuIGluIEM4MTQgdG8gQzg0OT8gT3Igc2hvdWxkIEkgc2hvcnQgY2lyY3VpdCBkaXJl
Y3RseT8NCj4NCj4NCj4NCj4gSSBhbSBhd2FyZSBvZiBhbGwgdGhlIHJpc2tzLiBJJ2xsIGJlIGhh
cHB5IGlmIHlvdSBjYW4gaGVscCBtZS4gSGF2ZSBhIG5pY2UgZGF5Lg0KPg0KPg0KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
