Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9762148ED42
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 16:41:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8503385695
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 10:41:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="brvtDUJr";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id DA1C53849C5
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 10:40:13 -0500 (EST)
Received: by mail-qk1-f176.google.com with SMTP id u3so1151148qku.1
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 07:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=4V5pipKrhEkzuKeiw3qJNfyvrC4A9aYic0VdRYshTDE=;
        b=brvtDUJr5tq7woP1Yo5tNZ+CogE5QmOEw0Wynd3jFRsksbE1GgFa36tBW7qbcSpDyl
         9vGz+lbslgFqmaW3IMz+oEcDJAY8s/x5zZHZ0BPI7CqN3mmG6Il4hx2JwswHsGjli+/r
         QTPHBPBoP79trEG2/alAsUyigionJ4vo/2exdHv0JoevARia4dXjWErjq/TOmhwB0Bn3
         tvhd6CP7AjQDR4j8tkd+byMJ6HDWrFBTti/thWvMhbY6pcCSiZvvgbm5Tg+w9bGaA5/u
         2IIBLNU1omJmVKbWNKx+pVNHqCsp069rZX+l8s9f/sE93ISR2Ib9bZJN8DNXIGrtNMt6
         7b0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=4V5pipKrhEkzuKeiw3qJNfyvrC4A9aYic0VdRYshTDE=;
        b=xZgs4o26nYEaAdIWuPqRBDRBq0KMs+3Wb6bTsO4zyaP89B+3LeGW3fxR5VJHyTNUln
         +biI2auzAWucCJ2eNBgTXAj1CAIVxWZb8SFLD0EW53K9t8Uu6jUVlvweNnO+MeSq2lCn
         OYJ2SaErBpUXsTdB/Wo7qnjFkQXbbdXvp49uQhLECgewVjMXiMgW4ZbMOaUqOvA0Bwyh
         h3s3k/TQvTgLFXoIT7jTYMWOWP8mVduaLoMNVxQt2dAp/EEXYlT05gidBro8ESB+rDZD
         +RrvBXKkS5qyAHm7i63UsJfairKPiZLySSmo3pD3F4W4ctkLmTMfCfgX9JnB+7E/GMvK
         AfUA==
X-Gm-Message-State: AOAM533eJvAlwjDby8SNwdniYpvMXWk6VKKu7XMjoWdnVfr2JIILXTXj
	gW5Yb6d81Eo1kl6Cf9YbYV7qODMiPns=
X-Google-Smtp-Source: ABdhPJy3rQHCgW6p1BhK/4klMD0O3nsB6UmJupMPUXDwSFt5pPyAV4v+rhjVp/iov7cilbzhIiJI4Q==
X-Received: by 2002:a37:2f85:: with SMTP id v127mr5716107qkh.354.1642174812974;
        Fri, 14 Jan 2022 07:40:12 -0800 (PST)
Received: from smtpclient.apple ([2600:380:407d:5347:5c46:c86d:a4da:e916])
        by smtp.gmail.com with ESMTPSA id h7sm962105qth.64.2022.01.14.07.40.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 07:40:12 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 14 Jan 2022 10:40:11 -0500
Message-Id: <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com>
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
In-Reply-To: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: MDMJCLHOUFBM7I2KVVTFWJI3QJFXGPHM
X-Message-ID-Hash: MDMJCLHOUFBM7I2KVVTFWJI3QJFXGPHM
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MDMJCLHOUFBM7I2KVVTFWJI3QJFXGPHM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T2ggT0ssIEkgY2FuIHNlZSB0aGF0IHBvc3NpYmx5IHdvcmtpbmcgZm9yIG15IGFwcGxpY2F0aW9u
LiANCg0KIERvIHlvdSBoYXBwZW4gdG8gSGF2ZSBhbnkgaW5zaWdodCBvbiB3aGF0IFJvYiB3YXMg
dGFsa2luZyBhYm91dCwgIGlmIGdyLXVoZCBXaWxsIGF1dG9tYXRpY2FsbHkgdHVybiBvbiB0aGUg
VFgwIG91dHB1dCB3aGVuIHRoZSBleHBvcnQgaXMg4oCYVHJ1ZeKAmSBPciBkbyB5b3Uga25vdyBp
ZiB0aGF0IHNob3VsZCBpbnN0ZWFkIGJlIHBhc3NlZCBpbiBhIERldmljZSBhcmd1bWVudD8NCg0K
SSBjYW4gYWxzbyBqdXN0IHRlc3QgdGhpcyBhIGxpdHRsZSBsYXRlciBhbmQgc2VlIGlmIHRoZSBv
dXRwdXQgbGlnaHQgY29tZXMgb24uIA0KDQo8ZW5kIHRyYW5zbWlzc2lvbj4NCg0KPiBPbiBKYW4g
MTQsIDIwMjIsIGF0IDEwOjI4LCBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwu
Y29tPiB3cm90ZToNCj4gDQo+IO+7v09uIDIwMjItMDEtMTQgMTA6MDcsIFBhdWwgQXRyZWlkZXMg
d3JvdGU6DQo+PiBUaGFua3MgTWFyY3VzLCBJ4oCZdmUgYmVlbiBzY291cmluZyB0aGUgUnViaWtz
IGN1YmUgdGhhdCBpcyB0aGUga25vd2xlZGdlIGJhc2UgZm9yIGFib3V0IGEgd2VlayBub3cuIEni
gJl2ZSBhbHNvIHdhdGNoZWQgdGhlIERhbiBCYWtlciBHUkNPTjIwMTkgdGFsayBhbmQgZm9sbG93
ZWQgdGhlIHJlZmVyZW5jZXMgdGhlcmUgYXMgd2VsbC4NCj4+IA0KPj4gVGhlIHJlZmVyZW5jZSB5
b3UgbGlua2VkIGlzIHZlcnkgaGVscGZ1bCBpbiBhIGxvdCBvZiBjYXNlcywgYnV0IGluIHRoaXMg
b25lIGl0IGRvZXNudCBhZGRyZXNzIChhbnl3aGVyZSBJ4oCZdmUgc2VlbikgdGhhdCBpbiBvcmRl
ciB0byBoYXZlIHRoZSBkZXZpY2Ugb3BlcmF0ZSB3aXRoIGxvY2FsIG9zY2lsbGF0b3Igc2hhcmlu
ZyBiZXR3ZWVuIFJGIDAgYW5kIFJGIDEsIHBoeXNpY2FsbHkgY29ubmVjdGluZyB0aGUgcmFkaW8g
YmFjayB0byBpdHNlbGYgbmVlZHMgdG8gYmUgZG9uZS4gSeKAmXZlIHNlZW4gcGxlbnR5IG9mIHRo
aW5ncyBhYm91dCDigJxleHRlcm5hbCBMT+KAnSBidXQgdG8gbWUgdGhhdCB0ZXJtIGlzIGEgbGl0
dGxlIGNvbmZ1c2luZyBiZWNhdXNlIGl0IHNvdW5kcyBsaWtlIGl04oCZcyBleHRlcm5hbCBMTyB0
byB0aGUgZGV2aWNlLg0KPj4gDQo+PiBJIGd1ZXNzIEkgd2FzIGp1c3QgdGhpbmtpbmcgaXQgbWln
aHQgYmUgYSBnb29kIGlkZWEgdG8gbGV0IE4zMjEgdXNlcnMga25vdyB0aGF0IGluIG9yZGVyIHRv
IGFjaGlldmUgcGhhc2UgY29oZXJlbmNlIGJldHdlZW4gSU5URVJOQUwgY2hhbm5lbHMsIGl04oCZ
cyBnb2luZyB0byBiZSBtb3JlIHdvcmsgdGhhbiBhIEIyMTAuDQo+PiANCj4+IEp1c3QgbXkgMiBj
ZW50cy4NCj4+IA0KPj4gDQo+IFlvdSBzaG91bGQgYmUgYWJsZSB0byBnZXQgYWRlcXVhdGUgcGhh
c2UtY29oZXJlbmNlIGluIGEgc2luZ2xlIE4zMjEgd2l0aG91dCB1c2luZyBMTy1zaGFyaW5nIGF0
IGFsbC0tSSBUSElOSyB0aGF0IHRoZSBzeW50aGVzaXplcnMgc3VwcG9ydA0KPiAgIHBoYXNlLXJl
c3luY2ggb24gdHVuaW5nLCBzbyBpZiB0aGUgdHVuZSBjb21tYW5kcyBhcmUgd3JhcHBlZCB1cCBp
biB0aW1lZCBjb21tYW5kcywgeW91IHNob3VsZCBnZXQgaW50ZXJuYWwgcGhhc2UgY29oZXJlbmNl
IHdpdGhvdXQNCj4gICByZXNvcnRpbmcgdG8gTE8gc2hhcmluZy4NCj4gDQo+IEJ1dCBJIGRvbid0
IGhhdmUgb25lIG9mIHRoZXNlIGluIG15IGNvbGxlY3Rpb24sIHNvIEkgY2FuJ3QgdGVzdCB0aGF0
IGh5cG90aGVzaXMuLi4NCj4gDQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCg==
