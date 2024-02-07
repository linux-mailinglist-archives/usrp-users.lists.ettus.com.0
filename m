Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0550184CE02
	for <lists+usrp-users@lfdr.de>; Wed,  7 Feb 2024 16:28:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58E0238533C
	for <lists+usrp-users@lfdr.de>; Wed,  7 Feb 2024 10:28:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707319728; bh=C3FQ8xZDAI3dNo3ov1jsDmYcIOHvc3tISpXi1R8FmW8=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=l1OPJ4Uct6D1sBschmOg1YGxR3xPUttUJ1s26PBPp+Fx4wb9dDtQmxyXwpx5LSfRw
	 woq8S6qh2OulXBvffgLBTO9t5l0g1hvsmmi5H6xzyM8379adWXVBrQB91NlOqWv7+f
	 oRN+cBLTiVfRed32YIpzdiI78rEJ0g3gVmiFTGpAHB6aqK7TW+QZu/T423Dxg208G4
	 uYXqAY2JQ5zeLKYCldXNb5fylOP4wTjHeKrIvt+Cc2ASsbp5V9Qnt1szLOQCulg/DQ
	 CaI9kaBz8ZGQqbZF01ROwPIeilHDM6xc4TWEPtwVl6mOkd/k11BhhterGDOz4lUOi9
	 uGeny1+XCkElw==
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by mm2.emwd.com (Postfix) with ESMTPS id A2EFA3852E5
	for <usrp-users@lists.ettus.com>; Wed,  7 Feb 2024 10:27:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="QJf+TYrD";
	dkim-atps=neutral
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-511689ef2b3so538467e87.2
        for <usrp-users@lists.ettus.com>; Wed, 07 Feb 2024 07:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1707319672; x=1707924472; darn=lists.ettus.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QbK3k83h8pnO4hrHzY+ECFXiWIqGhrhqv4GiIR5ss9s=;
        b=QJf+TYrD44GfiAdGuRtqgtiXJBczFFV715dXB759F9/ONARgZactQxgn/g/BE4rc6S
         6aWR+SIgLUAkttB93QyWre5ark62Tz4XE4yi3JgIW0hadawBMp+wrNeKRObjn4l1O8AP
         uO2hVDG0o3O9Pvv6bhqtui9aSTMkinNcb+d60iwYEZiNaFAwKbCH681jvFMOI1If+Boe
         koQtJcRSPaddNAYGD0UtsvcGlCK5THgtpMpkAj919jE1Qt5XbduWvhk5pnfyXDTbSdeZ
         NflZN20frWXEUbcUasvtfWTCc7j4T1TiHKAHzUflCn3IMTUKlzIdCBJcLDTnlkuaZIxv
         CfTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707319672; x=1707924472;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QbK3k83h8pnO4hrHzY+ECFXiWIqGhrhqv4GiIR5ss9s=;
        b=YuRsjeXMhZiBPugucPSLlr3VKplAR6xooHugSmFSGcUUh3NpNmCaR1lDsODF9fsyWI
         iHo5Q9myDkcatQQpIzOgBOctX/kuWvMUsKmQJREkDIIHFHl8fjAorbuIlfL8KFkkCyr9
         /l5k/YUaEa2s/Sc6ba1pQpp7iWB3L/aqIbrDRBcT4Dxas3ijfyjHeN107NwzlicapRVP
         DNbWXCoDIJ697LERxzkavlrP8UN3zeAcNqOKTlOMjy+TjlG5vzjIPZ0bRuPWXa+q+ZS0
         9EmFLS4JgchA32+JUXPzUJ5EMg/1yJLfBHiQSGPRZNCs8PNdb2UW1KQTkNsYKerUN9dI
         iWTA==
X-Gm-Message-State: AOJu0YzMAyfW9KnJRYfgk5ZYwOx4q/AKMpAVj7PDY1Bk/DH4yUhidjMh
	TUY9PWm8M3ByoAyc6MUQLBcmzZ90lcsdi2imr3ASp8gALFCuGSHwgqcpbuFmreSR2YCHYfoE4vz
	RUfUBehLlPGio2SRmA+xYwJlr/68JuX0epKoN
X-Google-Smtp-Source: AGHT+IE0Kk9C50sXwV8mps+XmqC06wlIl71HGl1swtPAq6i4HKVmIIzgfzPelfFi39ysQjxAe96iU+9vdXLEfckka1A=
X-Received: by 2002:a19:c505:0:b0:511:4ff0:5328 with SMTP id
 w5-20020a19c505000000b005114ff05328mr4034973lfe.32.1707319672017; Wed, 07 Feb
 2024 07:27:52 -0800 (PST)
MIME-Version: 1.0
References: <nhhrO4yTCt4uU7nbXCpKfX4P1iSsXnboub5CsnrmIA@lists.ettus.com>
In-Reply-To: <nhhrO4yTCt4uU7nbXCpKfX4P1iSsXnboub5CsnrmIA@lists.ettus.com>
Date: Wed, 7 Feb 2024 10:27:40 -0500
Message-ID: <CAB__hTSP3LArPLTJqd7Vt=g6BxjDLkm+zy5FxxBMco865OO_1A@mail.gmail.com>
To: zackkomo@utexas.edu
Message-ID-Hash: KT77JWGP7MFZY5W25TTSR6BH3DUNJ65E
X-Message-ID-Hash: KT77JWGP7MFZY5W25TTSR6BH3DUNJ65E
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Align multi-channel captures with different rx_stremers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KT77JWGP7MFZY5W25TTSR6BH3DUNJ65E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBGZWIgNiwgMjAyNCBhdCA1OjUw4oCvUE0gPHphY2trb21vQHV0ZXhhcy5lZHU+IHdy
b3RlOg0KPg0KPiBJdOKAmXMgYW4gZXN0aW1hdGVkIGRpZmZlcmVuY2UgdXNpbmcgYSBHUFMgU0RS
IEkgaGF2ZSBhY2Nlc3MgdG8sIG5vdCB0aGUgdGltZXN0YW1wcyBpbiB0aGUgbWV0YWRhdGEuDQo+
DQo+IEkganVzdCB0aXJlZCBjaG9vc2luZyBkaWZmZXJlbnQgc2FtcGxpbmcgcmF0ZXMsIGl0IHNl
ZW1zIGxpa2Ugd2hlbiBJIHVzZSBwYWlycyBvZiBzYW1wbGluZyByYXRlcyBjb3JyZXNwb25kaW5n
IHRvIG9kZCBkaXZpc2lvbnMgb2YgdGhlIG1hc3RlciBjbG9jayByYXRlLCBpdCB3b3JrcyBmaW5l
LiBTaW1pbGFybHkgd2hlbiBJIGNob29zZSBldmVuIHBhaXJzLiBDaG9vc2luZyBhIHNhbXBsaW5n
IHJhdGVzIGNvcnJlc3BvbmRpbmcgdG8gb2RkIGFuZCBldmVuIHRob3VnaCBjYXVzZXMgYSBtaXNt
YXRjaC4NCg0KVHJ5IGNoZWNraW5nIHRoZSB0aW1lc3RhbXBzLiAgQXNzdW1pbmcgdGhhdCB0aGUg
bWV0YWRhdGEgdGltZXN0YW1wcw0KYXJlIGRpZmZlcmVudCBieSB0aGUgbWVhc3VyZWQgYW1vdW50
LCB3b3VsZCB0aGF0IGFsbG93IHlvdSB0byB0aHJvdw0KYXdheSBzYW1wbGVzIGZyb20gb25lIG9m
IHRoZSBzdHJlYW1lcnMgaW4gb3JkZXIgdG8gYWxpZ24gdGhlbT8KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
