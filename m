Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB98D57BFEB
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jul 2022 00:09:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A8CD384063
	for <lists+usrp-users@lfdr.de>; Wed, 20 Jul 2022 18:09:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658354965; bh=PuVX9+Q66mV+amOmQaIFq0+wHHMhgdLjWMXk+e8gP8M=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qB0ysLFAcfC6+7zwL90EYdDbiP1lv3SGEcs4SAegXJkdfTKY+cxzd3yJwDKqAHvkh
	 ZnDAqMluGk0OSp9IbMcobNuip+SGvSuhHMbRbxMwV924KRTeESWQOX1m1eIY6YnNRF
	 ozxToH9VOA+R4/x4r1GBbMzLpigV8ivDf/W9WMpr7XY9xOcxCis2nou37ATfYri7jj
	 h4Utr7rNwtjy+LShKHdJ3DPuG5BnJIpjeq9+Kswy8FwT3RIt1eROERzdr4QmAgssrW
	 O8zxzQwsjNHDQSiS8UmQu4/aNeQWG48At9XH3sIZ36zY4guwNN0IhzFSr/ZryrsjP5
	 wGL489FGC3fFw==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id EDA24384469
	for <usrp-users@lists.ettus.com>; Wed, 20 Jul 2022 18:07:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QRcN+cu3";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id os14so35482136ejb.4
        for <usrp-users@lists.ettus.com>; Wed, 20 Jul 2022 15:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=lIKQsWXcVRl4mPdLBC9nMB5Yk+M5u97owR7D+82ncBQ=;
        b=QRcN+cu3KocCoFekEn+4yzx8eyjGb4hy7/3AUC8ZfXIgouHvwM4EbqzMTguhcHcUz5
         SJntN9u6MzhCvQY42YigaiDy2sPJqSRDmRPBJahygxzJwrjf0SonMXa2YAyBeRlOLX9Z
         VOciFbL5ZDYsW7QjvA2t6gpxXgB55I6oiVDMROmF12MZtqzJf5G3pTkrVVVqLYJxOHW1
         kyCWDymVtIOfVR4vto4cXYHneSn7cC7MiufVJROpK2PGHAzYrd70opSw+r9SASXNrZoa
         SFLSej7xzGQBHyGluqmnOGuIlwJ1IudhKZ86nMDdri9VPq+e8wSPkg6zF4rlbIK3xFN7
         5vIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=lIKQsWXcVRl4mPdLBC9nMB5Yk+M5u97owR7D+82ncBQ=;
        b=X3povyjLBhCD5uky1jmyRS3zZn0PoMoFUUF9sbb9OQg+CiVLOv8PCip5jdGTyAC25M
         hzxO3LEkLduylLz4wFJ8fszq1uKvO7CZHCGe6lzx95tQ5in1h6vti/8vPpV0UxQ0Wx/W
         iSpArg7E5LXHuW2PX1qvpYj9v7diFTtCGJ+FG0xuqb/vmNX6rKjyPmHs3xB5Qi5x/tei
         ockZwOvLdbWTaqCd/EIo594qLgvOkAU+0D3I+TQQNNU4evKTHMqfZmr7P5c2tB50zHgf
         MUYe/2WrvFwCrTsyVLcdY2chxpBY7xir6oxLgN+FDUs0MeqyI443J1f95ybGudTam3WX
         IZTg==
X-Gm-Message-State: AJIora/7UeBldTypBO6Vzw4r0LfDM/XL48LPra9TnQ77FEL7DZ/7yMC1
	5/ADfL6J6r+n1WNs2EEZLzHlr0r8Lh2QLC3GDaU=
X-Google-Smtp-Source: AGRyM1sfZRPGVt0xtLnlxbdG/HWZufGL7snNddw6r8kpnc773lFUVd1v15o7eMrK4i1DFkHGuXXfRlHebwCIhXqjiO0=
X-Received: by 2002:a17:907:7209:b0:72b:924b:60a8 with SMTP id
 dr9-20020a170907720900b0072b924b60a8mr38714735ejc.442.1658354852848; Wed, 20
 Jul 2022 15:07:32 -0700 (PDT)
MIME-Version: 1.0
References: <YFJ1UHp1FoA53vbMUt1LEdrotQvBHwi5klWAyxvakE@lists.ettus.com>
In-Reply-To: <YFJ1UHp1FoA53vbMUt1LEdrotQvBHwi5klWAyxvakE@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 21 Jul 2022 01:07:21 +0300
Message-ID: <CAAxXO2H1BxLhKMiJpWhBN0tkT=j-Ud6++-M9MDXV5XgnSm3PJw@mail.gmail.com>
To: kevin.macknight@baesystems.com
Message-ID-Hash: ODHVE4GAHYVNO3MYDYC3N7QCW2X5DLPE
X-Message-ID-Hash: ODHVE4GAHYVNO3MYDYC3N7QCW2X5DLPE
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: meta-ettus build errors out (undefined reference to 'stime')
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ODHVE4GAHYVNO3MYDYC3N7QCW2X5DLPE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VW5saWtlbHkuIFRoaXMgaXMgZ2xpYmMuIFlvdXIgVWJ1bnR1IHdvdWxkbjt0IHdvcmsgd2l0aG91
dCBpdDooDQpMb29rcyBsaWtlIHRoZSBoZWFkZXIgaXMgbWlzc2luZyA8dGltZS5oPiA6KQ0KDQpI
VEgNCk5pa29zDQoNCk9uIFdlZCwgSnVsIDIwLCAyMDIyIGF0IDExOjM2IFBNIGtldmluLm1hY2tu
aWdodC0tLSB2aWEgVVNSUC11c2Vycw0KPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90
ZToNCj4NCj4gUnVubmluZyBVYnVudHUgMjAuMDQgYW5kIGxvb2tpbmcgdG8gYnVpbGQgbWV0YS1l
dHR1cywgdGFyZ2V0aW5nIHRoZSB4NHh4Lg0KPg0KPiBJIGhhdmUgYnVpbHQgVUhELTQuMiwgR05V
IFJhZGlvIG1haW50LTMuOCwgYW5kIGdyLWV0dHVzIGZyb20gc291cmNlLiBOb3cgSeKAmW0gb250
byB0aGUgbWV0YS1ldHR1cyAoWW9jdG8pIGJ1aWxkLg0KPg0KPiBEb3dubG9hZGluZyB0aGUgbWV0
YS1ldHR1cyAtIHpldXMgYnJhbmNoIGFuZCBjYW1lIGFjcm9zcyBhIGJ1aWxkIGVycm9yIDoNCj4N
Cj4gc3lzY2FsbC5jOjc2NTc6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYHN0aW1lJw0KPg0KPiBE
b2VzIHRoaXMgbWVhbiBJIGRvbuKAmXQgaGF2ZSB0aGUgY29ycmVjdCBzZXQgb2YgZG93bmxvYWRl
ZCBwYWNrYWdlcz8NCj4NCj4gPj4+QlVJTEQgQ09NTUFORCQgLi9jb250cmliL2thcy1idWlsZF9p
bWdzX3BhY2thZ2VzLnNoIHg0eHggdjQuMg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
