Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5183E710D85
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 15:46:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C28C38484A
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 09:46:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685022391; bh=ZJ0MsDznLv48qOkqkBtNevZF+EXLhYRNYTQbrWyzNc8=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=D+CO1aa9+z39Ht7fQJ2sEIS2vd7Dcuh13DtXVFkH0WHNuGtd2ffrpwdT3Wk3S6gfQ
	 q7vXswNX3k8f4yknk5KEALp8GXzuMNvtBVPyWseURp6q59rnbInMIxQyVFbuR31lSA
	 mm51UO+VYJj21QyuBf/LwVeRncvcCE3Qnwdk1kOtpI6XBQVcdlV/f+kyUx+j2I+y09
	 TqnLD4F15hF4GE7on3cbtBxXwvddbVawWQ00Hd1AfiTOz5i9S2clgglcU7yssM3J/E
	 onG5P32mi85lLxHb70Gsss79nq0KhykXNyn7k0QfJMH1FOPDwEUMl5L3QvZbDE4A2u
	 Tb8bN2Tmba8VA==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id EAC143811CC
	for <usrp-users@lists.ettus.com>; Thu, 25 May 2023 09:45:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="WvMOKAoO";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-510dabb3989so4566491a12.0
        for <usrp-users@lists.ettus.com>; Thu, 25 May 2023 06:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1685022330; x=1687614330;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f0UQfBVmGD6g7Ea7/gs318K9AgcWR1a6UARfP/65CY8=;
        b=WvMOKAoOwp+6N6zrxJ9zmfjYAuaVjRKq3QrwJ+auxjnqe2Zi3rzvE6GdN1b5RUKVPP
         ZOd+mPJNimXLbaUmiO4y1Po/IO1QYOf+Fv+djqleM6K8un3E0iydNeU668MtKDafddEv
         QiQT+zbHsv01ell15OJrasEjH2AAQeSSYHOgS/urEz/xzF4PdF7Z9w2JMtihX4EtP/3l
         8yYeFs0tA90/vyxBvXzrU6O+dtzTYQH9lVOFkOTUEDOiZATsCOXU4CpOPENkokV80WYw
         YEO+ElSwWdxNaOYBV6u6NAtbjWz/QPDd66Vvpy0Q3wTy0W82qsJe9pSkq5krhw+bSf0a
         Xqmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685022331; x=1687614331;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f0UQfBVmGD6g7Ea7/gs318K9AgcWR1a6UARfP/65CY8=;
        b=Ebl7zmCnVRZNVy7SfZvKd86TBDCPPWje232g3F8IBcnK7CwzdYd/z6lVnMhe51wj38
         GPyDJu9G/3IKfPHfbXqH+/DYr7Ix7av26LhRkJ7yVtTMBls6htLgAwztAxw4DBRuB0CN
         nROOi3FogLhn2ckADg5t3eUz1rbWH/jpzglkBovxL8WJMWQzzI99+YeabByArHF1BaZ2
         k77UoIKUPQ3CZF7D7DNxCE6ahfbe90IBAS1f7h7T9EMNwJJAgVDRLtmRCfsE2C1RvCOY
         ytiCEROnN0OfM35nIAx2LxwTCX65+eumL0qEvf10D2Hn9NaAdO8ozcPVOPddjFCTUCaz
         UOXw==
X-Gm-Message-State: AC+VfDwYp4ouNqdw6k3psmW9KJOcAUUQC2yopxr6JtEoth4NcbRTjjrx
	8/WD+wnIUpuQ9Ej7+9zEBkR2HlC1YM7NvqR6ue9L0g==
X-Google-Smtp-Source: ACHHUZ6hW7t8kz9z0ueLjJKIUmyNCawIOxOHZEgBOWmjIrGGvBz8P5l+GJUDZERIsYymQoUL5BO3myTOF8k1zB6KXS4=
X-Received: by 2002:a17:907:3185:b0:970:925:6563 with SMTP id
 xe5-20020a170907318500b0097009256563mr1516387ejb.8.1685022330436; Thu, 25 May
 2023 06:45:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
 <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com> <CAB__hTQgDtPFOMXqK7-gyAhnc_1Q7=Or9rw2bgBaqwe+_xTSbw@mail.gmail.com>
 <CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmail.com>
In-Reply-To: <CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmail.com>
Date: Thu, 25 May 2023 09:45:19 -0400
Message-ID: <CAB__hTSa6Gx54yshpFFGEdzmLoO48YTsAR8M0fTdkjqRkM2D3Q@mail.gmail.com>
To: Michael Toussaint <mtoussaint@chaosinc.com>
Message-ID-Hash: XCDLB3YRXGQ34HJ2PTOPLLERD53HJMXX
X-Message-ID-Hash: XCDLB3YRXGQ34HJ2PTOPLLERD53HJMXX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XCDLB3YRXGQ34HJ2PTOPLLERD53HJMXX/>
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

T24gVGh1LCBNYXkgMjUsIDIwMjMgYXQgMzo1NOKAr0FNIE1pY2hhZWwgVG91c3NhaW50DQo8bXRv
dXNzYWludEBjaGFvc2luYy5jb20+IHdyb3RlOg0KPg0KPiBVc2VkIGEgc2luZ2xlIHN0cmVhbWVy
IGFuZCBzYXcgdGhlIGRlbGF5IHNsaWdodGx5IGltcHJvdmUgdG8gYmV0d2VlbiAyLjUgLSAzIG5z
Lg0KPg0KPiBBbnkgb3RoZXIgc3VnZ2VzdGlvbnMgdG8gaW1wcm92ZSB0aGUgZGVsYXkgdG8gbWF0
Y2ggdGhlIHJlc3VsdHMgZnJvbSB0aGUga25vd2xlZGdlIGJhc2UsIGh0dHBzOi8va2IuZXR0dXMu
Y29tL1VTUlBfTjMyMC9OMzIxX0xPX0Rpc3RyaWJ1dGlvbj8NCg0KSG93IGRvIHlvdSBtZWFzdXJl
IHRoZSByZWxhdGl2ZSBkZWxheT8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
