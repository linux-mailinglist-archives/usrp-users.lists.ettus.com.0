Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE4A614CBD
	for <lists+usrp-users@lfdr.de>; Tue,  1 Nov 2022 15:37:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35B253840DD
	for <lists+usrp-users@lfdr.de>; Tue,  1 Nov 2022 10:37:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667313438; bh=cbOPmNITDsJ30Kzl7oghcD+TfR3Nn6pyJn8INp0mnuU=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Lou7gxqXxAHnAd+aOxj+h1E9tQMFu/enFfK3nFysyaVDEaz+yZ8mpcDBVuxt6Xr4C
	 Pg6cE7bA/ZT9lEaxEtQdjsck/mYfeyd7O3R4i4CqLLZCNwlWkyxOQKhT0MN2FiFapU
	 qGMM6ANpNZ51wocJDXNzR3KIFNguvFA8PKdoqHL558FofgYc8aK2akuSaylcXuSy9+
	 ozrEZp0C9qhz3ZV3d3DYR3ACD3To11H2OD4LQoXgUq3LKxoErzIt281MBMsdS42Vny
	 J1bE9EQTgECvh8UKGitQjkGtQrkeg9GBiF8rMpeZatx7moWHy7qiGTpuYCri80YODR
	 GrookGFpRgIXQ==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id E0C3C38410B
	for <USRP-users@lists.ettus.com>; Tue,  1 Nov 2022 10:32:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IdIQQYSd";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id k4so6751063qkj.8
        for <USRP-users@lists.ettus.com>; Tue, 01 Nov 2022 07:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OzoRkcB+Po958yTfM7shYnBeHBizyq9Xu8fQK5hTCjs=;
        b=IdIQQYSd+H5qlhO5EJqjnJ6sAPk9KXgR2AbNGO2PpeSws2Lj4F13JQfhlTLC6WHfQo
         gaSPQ7mGPDyraSVlfU4g6jJmLAU4gdgpskayHpuwSOSD55WNbbMJIEcezJsR+sS4gEl+
         HO6yhlkIJuRLiWQQ+dwOkWRzfTh5Z9ucx70B7SG23Okp3UYceAZAhXCp2qCqD2ufXneB
         b7SJxbkeXJMtSRgBH7pv5A7Z9MhsyxW1UhdnrNj6SsiqLylgu8sSu8we63kMlMBiIOwj
         rvVNt9YnU7rsssHNlV3ewktphQGSFGPlIDEiGFMJSjH+tw4JIBJDvDdbK0SwU97U7hUP
         z1DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OzoRkcB+Po958yTfM7shYnBeHBizyq9Xu8fQK5hTCjs=;
        b=F2A0rZ3XxLJ31tmAHtVt1EpVTwqGnPDhc55hGflgC1/6v7MjTo1RryUXfADR4d0QLu
         6bGUW5qCTqbWcoHXZjZ5Ceh2oCddnmsg9n10uij5j2WtrIR6fy8njf7sAUeopZTsXLHD
         Dvy6mwY4EdeoPcnabUJahzu/GTt/tu2kdnplFmIqw74Sf0+lpj7Ctlgcy6AssWYNPCAw
         cv1x4OHlnTM2GCkxKmJtaXEzzFgp1dBFuLPkO2Hw51DXbYxo3m0HOTLSGyCAISt/q9Ou
         ud9pkAOkNuIEhuTWxQYo6sxSxQFUBhmEZ6/95mJlAfyanU01D4X9bLht64qeYGQE8mrk
         MGZw==
X-Gm-Message-State: ACrzQf1uQ7bKgJZQV+gpvuME22obanQmKOLAtacMqjDpSOI9qa/o7MxV
	Pw7Hjmi8DbMnaiOg/O1xmD8EPUbs2IU=
X-Google-Smtp-Source: AMsMyM4eodZMp6ba1/g/k74AcvPk28zshv7qRcm/eRjWGSVJo5/AYi+//Cmbofzee6UW2eW5nPBLhg==
X-Received: by 2002:a37:de04:0:b0:6f9:386a:f58d with SMTP id h4-20020a37de04000000b006f9386af58dmr13211537qkj.166.1667313160334;
        Tue, 01 Nov 2022 07:32:40 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.gmail.com with ESMTPSA id q3-20020a05620a2a4300b006b640efe6dasm6604769qkp.132.2022.11.01.07.32.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Nov 2022 07:32:39 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 1 Nov 2022 10:32:38 -0400
Message-Id: <F4A7E335-B790-4A36-B7CE-114C081CE104@gmail.com>
References: <CAJhOL6eM-TH4HEQRXmGkKbDh2qWN8N3VGuJUUnnmijxo1ptX0w@mail.gmail.com>
In-Reply-To: <CAJhOL6eM-TH4HEQRXmGkKbDh2qWN8N3VGuJUUnnmijxo1ptX0w@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
X-Mailer: iPhone Mail (19G82)
Message-ID-Hash: OFYN4LHUJLCBGDBVNJ6RFHF6V6AAJGOO
X-Message-ID-Hash: OFYN4LHUJLCBGDBVNJ6RFHF6V6AAJGOO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: snmp
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OFYN4LHUJLCBGDBVNJ6RFHF6V6AAJGOO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TXkgZ3Vlc3MgaXMgdGhhdOKAmXMgYmV0dGVyIGhhbmRsZWQgaW4gb3RoZXIgcGFydHMgb2YgdGhl
IEZQR0EgZGVzaWduLiANCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+IE9uIE5vdiAxLCAyMDIy
LCBhdCA2OjU0IEFNLCBLZXZpbiBXaWxsaWFtcyA8enMxa3dhQGdtYWlsLmNvbT4gd3JvdGU6DQo+
IA0KPiDvu78NCj4gSGkgRXZlcnlvbmUsDQo+IA0KPiBJcyB0aGUgZ2VuZXJhdGlvbiBvZiBTTk1Q
IG1lc3NhZ2VzIGZlYXNpYmxlIGluIHRoZSByZm5vYyBmcmFtZXdvcms/DQo+IA0KPiBUaGFua3Ms
IEtldmluDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
DQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
DQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQo=
