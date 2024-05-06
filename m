Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F18AC8BCEC9
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 15:18:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 785B5383CF0
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 09:18:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715001496; bh=hUBOvuRtalBMbxLbuzvgDmMidwW40ErwGEcV+UWAD8M=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=o6aPHWzovwdkLFj278+nFUvPn8iN9aD567WsbHmThm2qkwFxYR3GPP3Ykjt3awT6v
	 Mh5nZ4w0hvICE1A0pGGee1tshFHjHMqd265dglnurijBJwBr530bHsn9cj2MhODFe9
	 /lW0UvNVysrwCYS84EfElXoVJr6vhcZ/b/PtfBDQl+LQLrjAK/HVJa3DWJINsVqyZ1
	 JaJ4r6iDk17YfD6zyOMsfI5prAACGIHuRM0tc/lWTjjVNjMwQU+ywk4nWiSStAxl8B
	 EzcepBciVpE+SPRVEwUiQ0pq/+l/keasb4maWtwa6CeFpFCS366fDwsxs1IpAZbzvS
	 6/5zFGQ7QoYEg==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E3E4383A70
	for <usrp-users@lists.ettus.com>; Mon,  6 May 2024 09:17:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="B2Yo/V+0";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-572adaa172cso3245884a12.1
        for <usrp-users@lists.ettus.com>; Mon, 06 May 2024 06:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1715001460; x=1715606260; darn=lists.ettus.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e7yzOCpw/WokkKxpuYWp9iUUSkYRtkIMKkBbw3U7gBs=;
        b=B2Yo/V+0PNcdMVjNfmLZaUwQlpaGCMveTHM7rabXh3hKQctJOCxJrwMx2hhxeGkL0K
         L0K9iNTvNZ/3U6N2oEaAUFak35hTjuJJlyYSV/jyiuc4N+IvvX/lPEAfckqv7zekNxjS
         HgNcZ/+VT+jv2OW4n6a/BPN4T6TQX0bBU/BCXYmdOvNd24Vk63DBBlxnq9j2YyYaGBKm
         4SpLmygBI9WBbpDzh0slEsB7tnXR83f2N2asEykzZgeOJPA1QMu5VXGM3iX5EsmCYpgT
         AxtD+OnlGx9m1LiwPX1ntzPRVZm1MFmyHti4SHtC3jUJvtDydX3OSCbutVCoPumxkVsU
         xZpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715001460; x=1715606260;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e7yzOCpw/WokkKxpuYWp9iUUSkYRtkIMKkBbw3U7gBs=;
        b=RaYzACvyorrCc017FRl74XKG0Jv3coZMADLXChRZ+grVwGy65MrMepFC4eSrewW34G
         swPojOWDwhzehxjbLqwNW7DTn9gOee5SkdjLUC9F5cFovdrZAXSF9aP/SeUst6uCKJlc
         XpleeKJknBbIVjJ9pGGmWLvXxlSbUX9JRtMXZRlfgi4ghcvE3iZR+Tz9xZ8yWBv/h0va
         T4VgdFUpB8Bj2dlfgA/ZrKjiJ3dqSmVX7yEwCk81LC439UX5bxnU87R5g/TjgeuhT9B3
         uMpL0GBR0wV54AzwpS7t41sBQCC3e1qkSsdie1fJwdtl8b3SgUOKWiIcfwuU/KFXvFHg
         HToA==
X-Gm-Message-State: AOJu0YyYlrNGQbRnJaQbU0lEduPUpMJBf4IrpI49SLqyxz5vJWbeOLQN
	SKV6I5pLZqLw3LOvvPNePj0VPB7znOlyoZzNl1DLDBCNusubJI5ZbRPk04xX6RQ5XYhyzyIAWef
	ezD2PT/UWECYLX1PJVDNR2sFmMUOnCPzxDsro
X-Google-Smtp-Source: AGHT+IHTtfptW0zcJqHFvuLw0iZbQyqiEG1tJ8ZOJuc6urWBMn2fsRuaWgEA3eHznDZr6/Nh4O54urCZML2qrGMjBRw=
X-Received: by 2002:a05:6402:14c6:b0:56b:d013:a67e with SMTP id
 f6-20020a05640214c600b0056bd013a67emr8708607edx.18.1715001460028; Mon, 06 May
 2024 06:17:40 -0700 (PDT)
MIME-Version: 1.0
References: <VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8@lists.ettus.com>
 <14e82baa-39e1-4364-8914-a079b1e45d25@gmail.com> <5de6679c-80f4-4f42-9ee8-b224ade27fdb@ettus.com>
 <4df3d6df-b7d3-43b6-a4d6-68b1bbdc3486@gmail.com>
In-Reply-To: <4df3d6df-b7d3-43b6-a4d6-68b1bbdc3486@gmail.com>
Date: Mon, 6 May 2024 09:17:31 -0400
Message-ID: <CAB__hTQnfzp9-Ni_KqY3EmEcO8iKdWuHHxEcwGTnTJx=KAbCbQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 3MD473P2CHSBBEWJSP4W427GW536PKHC
X-Message-ID-Hash: 3MD473P2CHSBBEWJSP4W427GW536PKHC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sharing one UHD device across multiple hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3MD473P2CHSBBEWJSP4W427GW536PKHC/>
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

T24gU3VuLCBNYXkgNSwgMjAyNCBhdCA0OjQ34oCvUE0gTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZv
bmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDA1LzA1LzIwMjQgMTY6MDAsIE1hcmN1
cyBNw7xsbGVyIHdyb3RlOg0KPiA+IFRoYXQgYWx0ZXJuYXRlIHN0cmVhbWluZyB0YXJnZXQgZnVu
Y3Rpb25hbGl0eSByZS1lbWVyZ2VkIGluIGxhdGVyIFVIRA0KPiA+IHZlcnNpb25zIGZvciBSRk5v
Qy1zdXBwb3J0ZWQgZGV2aWNlcy4NCj4gSXMgdGhlcmUgYW4gZXhhbXBsZSBvZiB0aGlzIHNvbWV3
aGVyZT8gIEkgb25seSB2YWd1ZWx5IHJlbWVtYmVyIHNlZWluZw0KPiB0aGlzLi4uDQoNCmh0dHBz
Oi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3N0cmVhbS5odG1sI3N0cmVhbV9yZW1vdGUK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
