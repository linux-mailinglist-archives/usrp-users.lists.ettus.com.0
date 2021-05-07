Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DFA375EEF
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 04:58:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83025384C20
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 22:58:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="vd7FFJHE";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 55DA838420E
	for <usrp-users@lists.ettus.com>; Thu,  6 May 2021 22:58:03 -0400 (EDT)
Received: by mail-qt1-f180.google.com with SMTP id o1so5716492qta.1
        for <usrp-users@lists.ettus.com>; Thu, 06 May 2021 19:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=rP2HrTdBelVHFohemuDOWAdXBlwoUKEI66WOexYRToo=;
        b=vd7FFJHEu0Ll+6DzPTWiC2KMwisfMfQ7+nTwmpR5uO0lcHyyxx4N+ArDG49um07Uvk
         JZDFT5WF2IZSHvGnLlen7ZCgYYLkiS45z8zzQDzMVMQP32h1EM6t8kQPVxpEl9NnTUU0
         U6TRQtkCgJQpfsHcgVw4KhxjD2JpNmgnFLqJaJBu2+K9FCewAhnvJO/dhTmBgSkY3YJV
         wBx/KYZsHfxUFBAlsgBAwAeeSVe/6gRdiaH1r+GsCUY1YOrku3dsmgSPGVH7TcugTnQJ
         i//X7G9CLTbVRZzI3V+LxAoCT64HV74TvxJBC4BY8a9kOjUvEr6zUDznM0oRS0LXH8Gp
         g4mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=rP2HrTdBelVHFohemuDOWAdXBlwoUKEI66WOexYRToo=;
        b=dFXUD8xPWkH4HUTMGJVh2Bv92Spm6OEWHkWILrgP2wGRHnQ7DoZdahWF2B0QY3D7MO
         VYqfnz4IcR1R16bBS0tQDyfbC7a7UVwhueG+gvPT54P+cY079TaqJZSyqIh1O+0ifvKX
         Jwdcc+N6mc/0rdbWOyeci+7KL3lV0txqtTm360FL7Y7EGWn8kib+am3TA64Qc0Qs+VkC
         myFKFnnv50s9kkt009BKP+XaOqCZ+a3Ma/c1o65acEbyLuR5jZfvpA4nq40SbBGhIw23
         isG9/P1yCoRAJr+Bv3uGOVl+lOsrbd8rShxYu1aTV4YiIKtXGBT1CcuM4z6U+P+ay5I6
         jXVQ==
X-Gm-Message-State: AOAM530j0B3Vs2n5xUdOBKYocJGVYqBcJXaEF7tonSG/3q6i3UBmj9k/
	ZvqKSJCi+sSoqAtsn2McByvwJBPxfo3Ieg==
X-Google-Smtp-Source: ABdhPJxT42r2R8fGP6YOQ+FKn91IuGXURiGk/7fFJp2VoPF1Jlh8x1N9BuNYR0JGUEMRhy7kcoBu7w==
X-Received: by 2002:ac8:6e87:: with SMTP id c7mr7203309qtv.358.1620356282641;
        Thu, 06 May 2021 19:58:02 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id s24sm3683942qtx.94.2021.05.06.19.58.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 19:58:02 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 6 May 2021 22:58:01 -0400
Message-Id: <AF007A8C-FBE5-4085-BEA9-B75861E9A6D0@gmail.com>
References: <CAL0m=NZBNAaqr2co+eqbwmy_nkYLr7ghdhG+ZBL+LiaO1FSC0Q@mail.gmail.com>
In-Reply-To: <CAL0m=NZBNAaqr2co+eqbwmy_nkYLr7ghdhG+ZBL+LiaO1FSC0Q@mail.gmail.com>
To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 6VH74UR4IOGLX47THFWU6Z4F2QAI27NX
X-Message-ID-Hash: 6VH74UR4IOGLX47THFWU6Z4F2QAI27NX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 External LO source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6VH74UR4IOGLX47THFWU6Z4F2QAI27NX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBzaG91bGQgd29yay4gS2VlcCBpbiBtaW5kIHRoYXQgdGhlIG1peGVycyBpbiB0aGUgTjMx
MCBhcmUgMlhMTyBzbyB0aGUgZXh0ZXJuYWwgTE8gaGFzIHRvIGJlIGF0IHR3aWNlIHRoZSBkZXNp
cmVkIHR1bmVkIGZyZXF1ZW5jeS4gDQoNClNlbnQgZnJvbSBteSBpUGhvbmUNCg0KPiBPbiBNYXkg
NiwgMjAyMSwgYXQgMTA6MzEgUE0sIFplbmcsIEh1YWNoZW5nIDxodWFjaGVuZy56ZW5nQGdtYWls
LmNvbT4gd3JvdGU6DQo+IA0KPiDvu78NCj4gSGVsbG8sDQo+IA0KPiBJIHdhbnQgdG8gdXNlIGFu
IGV4dGVybmFsIExPIGZvciBOMzEwLiBJIGxlYXJuZWQgdGhhdCBhIGNvbW1vbiBjYXNlIGlzIHRv
IHVzZSBhIHNpZ25hbCBnZW5lcmF0b3IgdG8gcHJvZHVjZSB0aGUgZXh0ZXJuYWwgTE8gYW5kIGZl
ZWQgaXQgdG8gTjMxMC4gU2luY2UgSSBkbyBub3QgaGF2ZSBhIHNpZ25hbCBnZW5lcmF0b3IgYXQg
dGhlIG1vbWVudCwgSSB3YXMgd29uZGVyaW5nIGlmIGl0IGlzIG9rYXkgdG8gdXNlIGFuIE4yMTAg
dG8gZ2VuZXJhdGUgdGhlIGV4dGVybmFsIExPIGZvciBOMzEwLiBJIHdpbGwgYWRqdXN0IHRoZSBU
eCBnYWluIG9mIE4yMTAgc28gdGhhdCB0aGUgb3V0cHV0IHBvd2VyIGlzIGluIHRoZSByYW5nZSBv
ZiAwIHRvIDYgZEJtLiANCj4gDQo+IFJlZ2FyZHMsDQo+IEh1YQ0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
