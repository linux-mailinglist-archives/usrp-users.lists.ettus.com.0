Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D75A87A4B19
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 16:37:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 302323857F3
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 10:37:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695047836; bh=kZgB6LymUfK0wT0VYnKT6bYCeYwXJN0kBpLbBLn2Qjc=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=aYnYi954fxo5zGIfJLpBtrixlniaLYl/xRKhMIvy/d6CgiNkMxae6+5Bziz17Ldqo
	 rhyqfFX3b1hzH6Luj1rTFPR0kUsRAlr15mpFB/fgBEllx6Jf+OWjIG5FtJbPX5aDxi
	 e7rXdZiYeZ7+2VFW1MYu7OHoUX0kxSNJpE5rqwHWAVH0zXyIgfZnwp/NlowjrnVgE4
	 FdDRFkzIqK6FmukeOWJFOpuPRIFRau5gnDwxhrW/6c2ewqsqV/ZXjxGDfve3zIY3je
	 4kUWdmxzaNMZt6o+sSsCtmD8ljs60YGtFApyCkmUbBJPiVHYg8WZ4yc0mUCuIulDok
	 Kv9yA//To/Ffg==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 5DD313854E1
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 10:36:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IvDAr3sN";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-770ef334b4fso201317485a.1
        for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 07:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695047785; x=1695652585; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5g3CCeF30Of0VvFxiv2qZC18g3COXu775K/SuZCSjy4=;
        b=IvDAr3sN17FIU1EItWqTAniv6NDeSvypQhqnakqP6RAO3QHPS5sJRinaJqAFMZFkZU
         JKuVKX5zSsA3Q+NMiz2YVntNjP+tnGxU86fuDNW4JIjQUtAJ+EfGx2sSr3iznDHD7cwF
         RWQQIhFPnDceK0rROtDjHWF0BICw0MrIqg2vy6s1Ai47Iq6L7Gdl4eK/BPiC7OnCAcg4
         Pq0y5uWmoEnBnvahgYqm81kKNWAQ3s/0n/cNbZU8v14ESWgoAP1WEMPl2VqrBYAotfMR
         HKAylL1+GTtoHYvSrcxmhgl7YjmQ4csynmM3HxAxWYqRXijwf/gCraq+u449PskedQwC
         GV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695047785; x=1695652585;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5g3CCeF30Of0VvFxiv2qZC18g3COXu775K/SuZCSjy4=;
        b=lDdCZb/SdIyPcgTWP8Xk/TU8emEaVJKXA9IMSxZe81Lwn4GA8/C/BXF5wmAzOzlIet
         T3O7wdkJCFkA9Rvx3VhUY3J8O82EGbtLzEIB1edLAVbylpWzhY7OwZeLA0DqgaLuTGgS
         qnOffmvOQ1xbcY8yFV/xKcyFGnaKqyQn73faFcdj0ROSEnaSDfEvSj3wGX1HdAbanfCo
         2Zkxjo3FiQKdF+ilUUZ1183ryl4oLkZVvEEYqIKheUm0SyBuvLyuap5kAtu2hc8Pbv6v
         TJXWPGiNWB7Ll8Tq6l+0fLaf+XbO4+KJSv13E0S2FV7O6qC6Bp15VLvIIdUN1z5hWUnH
         4MQw==
X-Gm-Message-State: AOJu0YyaIlVSeaw0kSb9u5WBGaIUA9yNArb98Nm/7FgVjgTXXqldH5VX
	PcCAc8G1S8dzyN1yaDnngL83PtrIVhw=
X-Google-Smtp-Source: AGHT+IE6G5XjE89MMNvULOXuPz1JSTBFEkiSfZEsSlpJKXPHPGYGIcmwoydSWGT33WKpUhzIGtO4yg==
X-Received: by 2002:a05:620a:404a:b0:76c:a911:f74f with SMTP id i10-20020a05620a404a00b0076ca911f74fmr11793037qko.27.1695047785413;
        Mon, 18 Sep 2023 07:36:25 -0700 (PDT)
Received: from smtpclient.apple (pool-72-86-38-103.clppva.fios.verizon.net. [72.86.38.103])
        by smtp.gmail.com with ESMTPSA id k8-20020a05620a142800b0076f206cf16fsm3172679qkj.89.2023.09.18.07.36.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 07:36:24 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 18 Sep 2023 10:36:13 -0400
Message-Id: <60991007-2485-4D5F-8FAD-B74D3C463A53@gmail.com>
References: <23ef8b19-89ad-2edb-f155-504e20fb9e5c@gmail.com>
In-Reply-To: <23ef8b19-89ad-2edb-f155-504e20fb9e5c@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (20G81)
Message-ID-Hash: L4I6OXZ3BAVCDFQTQWPVV25SDN2ZIKAL
X-Message-ID-Hash: L4I6OXZ3BAVCDFQTQWPVV25SDN2ZIKAL
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Replay sample example in GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L4I6OXZ3BAVCDFQTQWPVV25SDN2ZIKAL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBBZ3JlZSB3aXRoIG1hcmN1cywgdGhpcyBpcyBhIEdOVVJhZGlvIHRvcGljLiANCklmIHlvdSBp
bnN0YWxsIHRoZSBsYXRlc3QgR05VUmFkaW8gcmVsZWFzZSAoMy4xMC43LlgpIHRoZXJl4oCZcyBh
IGZvb2wgcHJvb2YgZXhhbXBsZSBvZiBob3cgdG8gZG8gd2hhdCB5b3XigJlyZSBhc2tpbmcgZm9y
LiANCg0KPGVuZCB0cmFuc21pc3Npb24+DQoNCj4gT24gU2VwIDE4LCAyMDIzLCBhdCAwOToxNywg
TWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+IA0KPiDv
u79PbiAxOC8wOS8yMDIzIDAwOjEyLCBoNTdqYWZhcmlAZ21haWwuY29tIHdyb3RlOg0KPj4gDQo+
PiBIaSwNCj4+IA0KPj4gQ2FuIGFueW9uZSBzaGFyZSBhIHNhbXBsZSBSRk5vQyBSZXBsYXkgZXhh
bXBsZSBpbiBHTlUgUmFkaW8gdG8gcmVwbGF5L3RyYW5zbWl0IElRIHNhbXBsZXMgZnJvbSBmaWxl
LiBUaGFuayB5b3UuDQo+PiANCj4+IA0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+IFlvdSBtaWdodCB3YW50IHRvIGFsc28g
Y29weSB0aGUgZGlzY3Vzcy1nbnVyYWRpbyBtYWlsbmcgbGlzdC4NCj4gDQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
