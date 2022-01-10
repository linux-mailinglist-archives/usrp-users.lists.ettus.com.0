Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E61A748A41D
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jan 2022 01:00:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 387D838530B
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 19:00:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DbSj50wD";
	dkim-atps=neutral
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 07884385301
	for <USRP-users@lists.ettus.com>; Mon, 10 Jan 2022 18:59:58 -0500 (EST)
Received: by mail-qv1-f42.google.com with SMTP id a8so11293060qvx.2
        for <USRP-users@lists.ettus.com>; Mon, 10 Jan 2022 15:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=TY3EWpqEOW5o/Z8sPrI35ICk0u4Vgr/8smRGv7OoyaQ=;
        b=DbSj50wDoImunH7GqFiWQusAtgUJnBC8d6cJzyuUNBYD4fc/oGt/DYK8RWwv+M93E0
         ltb5WPgxGJFRc+DuGXG4Q7w9+0vnljIc9KSjGowhkwVOJZvd80GP9Q8+1fnGWy25SpvA
         BAa8F4MKVoW3ua0+SCkQz0KU+Q79ZOCewzLl5mlITNdesN58gC3IFRfarBiUq8nINZYL
         AOmrf/EYgmMQIvMGNGhZg7dync9NRxJuhWNE4BGQ4JszDhS+g6ZcW8edYUT5eoCbRsFp
         LnmDie8KTqe+iRVY5iLNoB41ZVa6kUuPKSpyRRv8fvlwoRHWVQuOG7gxLDE6zgmSZshn
         UXNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=TY3EWpqEOW5o/Z8sPrI35ICk0u4Vgr/8smRGv7OoyaQ=;
        b=d/XR6zb4fMabaGPHfIJeCkloEKDXLbYuafaDLoiBTTfU24yF2BDuhh5c+0apahvUUY
         mKuaP/5ZD/uLHIpIUmmvRK1/JY8ql1e4xPCqBXQ8Wlw61f7rWm2c/DGpSIGITAyx/X0G
         bPnIDk3wQHtcFdPARsYjhXwf+Z+40LopMsFspZLipSKWfC/FyInyHgHLrFgZYAIBP4XH
         JO8JZnU9pwLh81JUqRE/QFnyLxKaYhj3SXq3z8omCDhSwTbb35wUBJr3p/HFgSCRpntE
         sStiJZ3/sY4EdT4eARfGa+8qi80AEf6YxLfVAmD3nNVjwmU22PyrJ6kR8p62bvZWFtdW
         68TA==
X-Gm-Message-State: AOAM531djapdoJUDwkbtOhHNQ95R5KJHC7rhxLhBxLagY2NHu3f0mrQF
	PgQ57q2UvfcRvDCEy9BXxMGwvu7Tq/h6zA==
X-Google-Smtp-Source: ABdhPJzmjuDMz01K6b25fMwQTDFBVMESaXLpBVrlzISKnBgd/0tJEdZ8Vbe6XdUKaDPRaOFii16XNA==
X-Received: by 2002:a05:6214:1d0d:: with SMTP id e13mr1805084qvd.69.1641859198524;
        Mon, 10 Jan 2022 15:59:58 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id s4sm5570158qko.47.2022.01.10.15.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jan 2022 15:59:58 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 10 Jan 2022 18:59:57 -0500
Message-Id: <19EAB138-38E0-450D-8175-A6C112377A2E@gmail.com>
References: <MN2PR16MB3502AEDC036FC6333D881B8FB9509@MN2PR16MB3502.namprd16.prod.outlook.com>
In-Reply-To: <MN2PR16MB3502AEDC036FC6333D881B8FB9509@MN2PR16MB3502.namprd16.prod.outlook.com>
To: Jonathan Pratt <jpratt@srcaus.com>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: VVFS7C4LXFJKQOWSEIZ6B3I36GPWR3LN
X-Message-ID-Hash: VVFS7C4LXFJKQOWSEIZ6B3I36GPWR3LN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: using GPS with the X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VVFS7C4LXFJKQOWSEIZ6B3I36GPWR3LN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R2l2ZW4gdGhvc2UgY29uc3RyYWludHMsIG5vLiANCg0KQnV0IHlvdSBjb3VsZCByZWFkIHRoZSB0
aW1lIG9uIHRoZSBob3N0IHRoZW4gdXNlIHNldF90aW1lX25leHRfcHBzKCkuIE1vc3QgR1BTIHdp
dGggYW4gbmFtZXMgb3V0cHV0IGFyZSBjb21wYXRpYmxlIHdpdGggVVNCIHNlcmlhbA0KUG9ydHMu
IA0KDQpTZW50IGZyb20gbXkgaVBob25lDQoNCj4gT24gSmFuIDEwLCAyMDIyLCBhdCA2OjUzIFBN
LCBKb25hdGhhbiBQcmF0dCA8anByYXR0QHNyY2F1cy5jb20+IHdyb3RlOg0KPiANCj4g77u/SGV5
IHJhZGlvIGJ1ZmZzLg0KPiANCj4gV2UgaGF2ZSBhbiBhcHBsaWNhdGlvbiByZXF1aXJpbmcgdGhl
IHVzZSBvZiBhbiBleHRlcm5hbCBHUFMgd2l0aCBhbiBYMzEwLiBJIGhhdmUgYmVlbiBsb29raW5n
IHRocm91Z2ggdGhlIHVoZCBhcGkgbWV0aG9kcyBhbmQgY2FuJ3QgZmluZCBhIHNvbHV0aW9uIHRo
YXQgc3VpdHMgb3VyIGFycmFuZ2VtZW50Lg0KPiANCj4gSXMgaXQgcG9zc2libGUgdG8gc29tZWhv
dyBzZXQgdGhlIHN5c3RlbSB0aW1lIG9uIHRoZSBYMzEwIHNvIHRoYXQgdGltZSBpcyByZXBvcnRl
ZCBhY2N1cmF0ZWx5IGJ5IHRoZSBYMzEwIHdpdGggcmVzcGVjdCB0byBhbiBleHRlcm5hbCBQUFMg
c2lnbmFsPw0KPiBJcyBpdCBwb3NzaWJsZSB0byBmZWVkIHRoZSBOTUVBIGRhdGEgc3RyaW5nIGlu
dG8gdGhlIFgzMTAgKGVnIHZpYSBHUElPIGNvbmZpZ3VyZWQgZm9yIHNlcmlhbCB0cmFmZmljKSBz
byB0aGF0IHRpbWUgaXMgcmVwb3J0ZWQgYWNjdXJhdGVseSBieSB0aGUgWDMxMCB3aXRoIHJlc3Bl
Y3QgdG8gYW4gZXh0ZXJuYWwgUFBTIHNpZ25hbD8NCj4gDQo+IEJ5ICJwb3NzaWJsZSIgSSBtZWFu
IHNpbXBseSBhbmQgd2l0aG91dCByZXdyaXRpbmcgSERMIG9yIHRoZSBaUFUgcHJvZ3JhbW1pbmc7
IG9yIHdyaW5nIHRoZSBHUFMgc2lnbmFscyBpbnRvIHRoZSBHUFNETyBjb25uZWN0b3IuDQo+IA0K
PiBLaW5kIHJlZ2FyZHMNCj4gSm9uYXRoYW4gUHJhdHQNCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
