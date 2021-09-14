Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E5D40AEDD
	for <lists+usrp-users@lfdr.de>; Tue, 14 Sep 2021 15:26:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ED74C384C3D
	for <lists+usrp-users@lfdr.de>; Tue, 14 Sep 2021 09:26:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D3MB05Zv";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 26E6C3841A1
	for <USRP-users@lists.ettus.com>; Tue, 14 Sep 2021 09:23:02 -0400 (EDT)
Received: by mail-qt1-f171.google.com with SMTP id s32so11331393qtc.12
        for <USRP-users@lists.ettus.com>; Tue, 14 Sep 2021 06:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=a/VMKVHvYh0MhdHBIVuV6Y+/NX3IusdpZBHtnYDg1Sw=;
        b=D3MB05ZvJZXYB9et7e//ObSJACjX36GPKcWnAsw16WYubbs++Vq8SEnW45VjYmnNNc
         Zh0MMzzywYIBdga1v7GGnXybHg5To/VOTiD5BdI7CHhOae9JsXoC7Iymz3muddMgdGli
         k2hgwsfqxhvGLGNJSBnebNSXnnf+DJFNuraVNAgThKR4aKV0E5lgvRAtRRzOPIWOIszz
         WO9FpsN0K/w024UXpfLnOgOJbUq7CgJBfs1ZZKpvu74d8O/3ugAPJbBwBtyrdU9gVh+b
         aWqpZv0vN++Z+KWMlvALG6q3GJmO0IeAxIwqY5F+PilPZ9o+cqcqrvelfF+AUtjnjtbd
         vUbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=a/VMKVHvYh0MhdHBIVuV6Y+/NX3IusdpZBHtnYDg1Sw=;
        b=ou1VHYBtMuRDq3pQDY9YgosK8pXqUvLcVt/py2uEXEGNFkxX2AN4MLv/zKv9jZfRhJ
         9f1JQI23CnPCwtuu4vxnqycjMOR2B4ceOvQZPsiV/wOecw5daVe5qiTuM3fYbSCmf7CU
         SvHcRLu/CVEkoOi4DYx2IZXx/aLENlBaayAs7dw3W5c97uwjbOZD0FniKwR2WZUYlekR
         fiLmPvmKoTgkHgi7nr2j2R9bXCQF3qmlDfMZSUoyoeoT73sagt+isxXjPbkix3I1ohcD
         tpGsI1eR3bMqJ1GY1f3Cy3OH/aBViH8rZKoi1GN7bwhOxBB5xd2nWnbXMTKYlv6bWI7b
         hB+Q==
X-Gm-Message-State: AOAM532vJsQZ7QVqWVnHkrW+QIgCLPuw19VQwHXZSvztKawXY+XzJjcZ
	QVrUq1HFBxLsH4UcUZCFkTkInbRw4Kq2Ug==
X-Google-Smtp-Source: ABdhPJwxB2ho2uS+lYSflpFnYSGpfZdDkEnxM1HelHdCvlaOyKm6BD3wOqMhMEgRLPT2FSHyIaGwhA==
X-Received: by 2002:ac8:4e2b:: with SMTP id d11mr4620333qtw.384.1631625781322;
        Tue, 14 Sep 2021 06:23:01 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id z20sm5873634qto.71.2021.09.14.06.23.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 06:23:00 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 14 Sep 2021 09:22:59 -0400
Message-Id: <BB27B328-263D-4816-9349-22445296A86A@gmail.com>
References: <fe386f07-0f78-749f-1d8d-ea32389d184a@gmail.com>
In-Reply-To: <fe386f07-0f78-749f-1d8d-ea32389d184a@gmail.com>
To: msfu <msfu666@gmail.com>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: JRVVMR2FA44BFXWLSNPVW55IABEDL5ZN
X-Message-ID-Hash: JRVVMR2FA44BFXWLSNPVW55IABEDL5ZN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configure usrp to communicate with external pll-gpsdo
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JRVVMR2FA44BFXWLSNPVW55IABEDL5ZN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hhdCBleGFjdCBjb21tYW5kcyB3aGF0IGV4YWN0IHJlc3VsdHM/DQoNCg0KDQpTZW50IGZyb20g
bXkgaVBob25lDQoNCj4gT24gU2VwIDE0LCAyMDIxLCBhdCA3OjE0IEFNLCBtc2Z1IDxtc2Z1NjY2
QGdtYWlsLmNvbT4gd3JvdGU6DQo+IA0KPiDvu79oZWxsbywNCj4gDQo+IA0KPiBpIGhhdmUgZ290
IGEgdXNycCBiMjEwIGFuZCBhbSB0cnlpbmcgdG8gc3luYyBpdCB3aXRoIG15IGV4dGVybmFsDQo+
IHBsbC1ncHNkbyAxME1IeiAxIHBwcy4NCj4gDQo+IGkgdHJpZWQgdGhlIGNvbW1hbmRzIGluIHRo
ZSBldHR1cyBtYW51YWwgZm9yIERldmljZSBTeW5jaHJvbml6YXRpb24sIGJ1dA0KPiBubyBsdWNr
Lg0KPiANCj4gQ2FuIHNvbWVib2R5IGhlbHAgbWUgb3V0Pw0KPiANCj4gdGhhbmtzIGluIGFkdmFu
Y2UNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4g
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tCg==
