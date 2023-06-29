Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 020CE7429CD
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 17:39:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C7C5384190
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 11:39:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688053178; bh=6mPo55tlhtTtE1T3P/9uQ//l9Rewia/Y9ty1cBijgUU=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=I4uDubTybFInyH9LMnFlNXHgFHwkJeDRfhBuglToJL50LBKBPVTWfiepJBzcKuQub
	 vH2eA2IA6aJBKGOAIUL/KMg+Vu3MMiSu2obSLWuBvA/QWffKV7akHMC/utnMYdSWPk
	 CmwLnMy/MS19t3h7VRBNXWpIzyG18ILJZiZVjYZRT7L1JMTSVUuAh+gpVMXoYrrg6J
	 g5b5Bt0pnUfv2GpcidYz5yhByl/NdcGl94BfUjHrVmkmcjKeHCOKhEr85V+93ik3Nr
	 OpVDKmfg+Rbxw1yYVStvmLeWMjM8aIu3uhPGP91FXPbLBl1lo5kBaRyJnt6DkqCyji
	 AGC9KEryESsNw==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 9186138367B
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 11:38:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="JBaJk4NM";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-51d9a925e9aso991537a12.0
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 08:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1688053121; x=1690645121;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U7zSd0lD2xgzNf2GWoNjYJuOoTJ15tSPJRysr+9c760=;
        b=JBaJk4NMGOU3fx9DOpQ8LTroXyZyA9gGaYup9YYusaiDAMnmg2tInEzj1uYTRqsUMB
         DjdPi5FbV2wWnvRbAZKAT65KigsMtZjqr/OyJAyLxtFBJS0CND8Su/hOb3nGX54zHDsx
         W6T1Wpsdx0XNmojms/nwQosRqoEX6gt1ErbCoerzcDJY1jV7I6K80dq1mm3p4eSNJs6g
         VEjPLVJWHUmshTb5/rk7qUUwDNl5p75wK5w7x304OYFBHl/OlS4brcUqPP7QVtnUKuvt
         on5QJsS42tDEyaIh5SL1WJYmzb9TXe6pWgyponb9V9JMLT8kZXLSyCYbVCO0Mi62+ZJG
         a4nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688053121; x=1690645121;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U7zSd0lD2xgzNf2GWoNjYJuOoTJ15tSPJRysr+9c760=;
        b=L4Tih0xvg6aOiiIqucN77h/8e4myAmPEfBDNNR6lVcCAfJl8PKIalcFbHmCDedrQMX
         aFb4chqWm0bQ3GeyHzUEo02HHydGj7jkVmyxJNvWSpJeYlGSCZu9UR3tlhA9+4UtGQIQ
         UH6EalRhCnXe8Ov5aR+e5lK1Sj/D0QCqKim8pdiBYqv++nCg9NMRuPfhAclUh7SR6Plx
         NX6u5HTiRQh3Pn6ccvri7HNVoiRcZiSE8oaNCuGT/ZebC5N32Y/SON7uH8pWbTh4aEkA
         70JQvwrDd0ztIx6vOPakV02ihOlYblnIvf8WzRAIL7js1pIPszqiRII68VX7omUItYZJ
         ZELw==
X-Gm-Message-State: AC+VfDwoAPecMvVobbfFOBgM0lz7PWlCUNwpavOhrusLu0wP0srmPuVJ
	F0IbxUqOKK3j3d4gZsDIW+KI2KgNsnvlEt9wSfx+U5BdhracmJLi
X-Google-Smtp-Source: ACHHUZ6Sz8RRdEF9dEp7Ib/+Bz3uX3Jup3HOgLi7EeBCKICdYaXI1+OCBwhq6iiGU1PLCZ9/yR58qw5E1XgHwKu8hXs=
X-Received: by 2002:aa7:d3d6:0:b0:51c:57be:a396 with SMTP id
 o22-20020aa7d3d6000000b0051c57bea396mr11174755edr.41.1688053121204; Thu, 29
 Jun 2023 08:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
 <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com> <1346881245.172465.1688045768643@mail.yahoo.com>
 <e3300a45-cc33-2c9c-1c80-ebb3dfe9a2c3@gmail.com>
In-Reply-To: <e3300a45-cc33-2c9c-1c80-ebb3dfe9a2c3@gmail.com>
Date: Thu, 29 Jun 2023 11:38:29 -0400
Message-ID: <CAB__hTR1QV=7qdSNsZLSD6hq_3Uk_buTae6tNYeo1iXBNCvFHQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: NEEA7XKYGARW7QQ2E2JQ3LYSF25XML7X
X-Message-ID-Hash: NEEA7XKYGARW7QQ2E2JQ3LYSF25XML7X
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO carrier phase difference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NEEA7XKYGARW7QQ2E2JQ3LYSF25XML7X/>
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

T24gVGh1LCBKdW4gMjksIDIwMjMgYXQgMTE6MDnigK9BTSBNYXJjdXMgRC4gTGVlY2gNCjxwYXRj
aHZvbmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDI5LzA2LzIwMjMgMDk6MzYsIHpo
b3UgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+IEkgYW0gdXNpbmcgWDMxMCBVU1JQcy4gSSBkaWQg
YSBsb29wYmFjayB0ZXN0IHdpdGggdGhpcyBVU1JQLCB0aGF0IGlzLCBUeCB3YXMgY29ubmVjdGVk
IHRvIFJ4ICh3aXRoIGEgMjBkQiBhdHRlbnVhdG9yIGJldHdlZW4gdGhlbSkuIFRoaXMgaXMgZm9y
IGNoZWNraW5nIHRoZSBjaGFubmVsIHN0YXR1cy4NCj4gSW4gbXkgdGVzdCwgVHggaXMgZnJlZSBy
dW5uaW5nIHdpdGhvdXQgc3RvcCwgYW5kIFJ4IGlzIG9jY2FzaW9uYWwuIEJvdGggdHJhbnNtaXNz
aW9uIGFuZCBjYXB0dXJlIGFyZSB0aW1lLWJhc2VkLCB0aGF0IGlzLCBzaWduYWxzIGFyZSB0cmFu
c21pdHRlZCBhdCBzcGVjaWZpZWQgdGltZSwgYW5kIGNhcHR1cmUgc3RhcnRzIGF0IHNwZWNpZmll
ZCB0aW1lLg0KPg0KPiBNYXN0ZXIgY2xvY2sgcmF0ZTogMTg0LjMyTUh6DQo+IFNhbXBsaW5nIHJh
dGU6IDE4NC4zMk1Ieg0KPg0KPiBVc2luZyB0aGUgY2FwdHVyZWQgc2lnbmFscywgSSBjYW4gY2Fs
Y3VsYXRlIHRoZSBjaGFubmVsIGNvZWZmaWNpZW50LiBBIGZldyBjYXB0dXJlcyB3ZXJlIG1hZGUu
DQo+DQo+IEkgZXhwZWN0ZWQgY29uc3RhbnQgY2hhbm5lbCBiZWNhdXNlIGl0IHdhcyBjYWJsZSBj
b25uZWN0aW9uIGFuZCBpdCB3YXMgaW4gdGhlIHNhbWUgVVNSUCwgYnV0IEkgZm91bmQgdGhhdCB0
aGUgY29uc3RlbGxhdGlvbnMgb2YgdGhlIHBpbG90IHNpZ25hbHMgcm90YXRlZCB3aGVuIGNvbXBh
cmluZyBkaWZmZXJlbnQgY2FwdHVyZXMuIEkgdGhpbmsgdGhpcyBjYW4gYmUgY2F1c2VkIGJ5IHRo
ZSBwaGFzZSBkaWZmZXJlbmNlIGJldHdlZW4gVHggTE8gYW5kIFJ4IExPLCBidXQgbm90IHN1cmUu
DQo+DQo+IFF1ZXN0aW9uczoNCj4gMS4gYXJlIHRoZXJlIGluZGVwZW5kZW50IExPcyBmb3IgVHgg
YW5kIFJ4IGluIGEgVVNSUD8NCj4NCj4gWWVzLiAgIEluIGZhY3QsIGluIGFueSByZWFsaXN0aWMg
b24tdGhlLWFpciBzY2VuYXJpbywgeW91ciBSWCBhbmQgVFggd2lsbCBuZXZlciBiZSBwaGFzZSBh
bGlnbmVkLCBvciBldmVuIHBoYXNlLWNvaGVyZW50Lg0KDQpBbHRob3VnaCB0aGVyZSBhcmUgc2Vw
YXJhdGUgTE9zLCB0aGV5IGFyZSBib3RoIGRpc2NpcGxpbmVkIHRvIHRoZSAxMA0KTUh6IHJlZmVy
ZW5jZS4gSWYgdGhleSBhcmUgc2V0IHVzaW5nIHRpbWVkIGNvbW1hbmRzLCB0aGV5IGNhbiBwcm92
aWRlDQpyZXBlYXRhYmxlIHBoYXNlIChhdCBsZWFzdCBmb3Igc29tZSBkYXVnaHRlcmJvYXJkcyBs
aWtlIFVCWCBhbmQgU0JYKS4NCkluIHJhZGFyIGFwcGxpY2F0aW9ucywgcGhhc2UgY29oZXJlbnQg
UngvVHggaXMgY29tbW9uLg0KDQo+DQo+IDIuIElzIHRoZSBSeCBMTyBvbiBhbmQgb2ZmIGluIHRl
c3QsIHRoYXQgaXMsIGl0IHN0YXJ0cyB3aGVuIGNhcHR1cmUgc3RhcnRzIGFuZCBzdG9wcyB3aGVu
IGNhcHR1cmUgaXMgY29tcGxldGVkPyBTbywgdGhlIExPIHBoYXNlIG9mZnNldCBiZXR3ZWVuIFR4
IGFuZCBSeCBpcyByYW5kb20/DQo+DQo+IEkgd291bGQgZXhwZWN0IHRoZSBSWCBMTyBwaGFzZSB0
byByYW5kb20gd2l0aCByZXNwZWN0IHRvIHRoZSBUWCBldmVyeSB0aW1lIHlvdSBzdGFydC9zdG9w
IHRoZSBSWC4NCg0KSW4gdGhlIGRlc2NyaXB0aW9uIGFib3ZlLCB5b3UgbWVudGlvbmVkIGZyZWUt
cnVubmluZyBUeCBidXQgeW91IGFsc28NCm1lbnRpb25lZCB0aW1lZCB0cmFuc21pc3Npb24gYW5k
IGNhcHR1cmUuIElmIHlvdSBhcmUgdXNpbmcgdGltZWQgVHgNCmFuZCBSeCBhbG9uZyB3aXRoIHRo
ZSB0aW1lZCB0dW5pbmcgY29tbWFuZHMsIEkgd291bGQgZXhwZWN0IGENCmNvbnNpc3RlbnQgcGhh
c2Ugb2Zmc2V0IChkZXBlbmRpbmcgYWdhaW4gb24gZGF1Z2h0ZXJib2FyZCkuICBJZiB5b3UNCmhh
dmUgZnJlZSBydW5uaW5nIFR4LCB0aGVuIEkgd291bGQgZXhwZWN0IGl0IHRvIGJlIHJhbmRvbS4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
