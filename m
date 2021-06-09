Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 292B63A1DE5
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 21:59:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CF4D384977
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 15:59:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T8XSNh5v";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 1F647384252
	for <usrp-users@lists.ettus.com>; Wed,  9 Jun 2021 15:59:06 -0400 (EDT)
Received: by mail-qk1-f180.google.com with SMTP id u30so24950553qke.7
        for <usrp-users@lists.ettus.com>; Wed, 09 Jun 2021 12:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=R0xCg+3TiWDVcRnQE9wvX4Q14uV1rPH9nvOWGyiQE7Q=;
        b=T8XSNh5vdI/dIeuJP4f9MzV9lya0ujiQ2a3Y/hXYwZlf8+3hTV2JbIdccMyP7P02f9
         yhNWmGGDcP8clZmtSqBemcJeqEiqFMgBV078GQKwNs9TZgoVqpMYWRFET3xU7C2H6V7/
         B7jnl1T8tlhGyyaVEsFCURpxOv5wbAJSzWT8cQTSj6y+HyC9Jm1hC5asOH8WzN7crhR0
         fOI7GJrqMcMqLSoyg4hNsGxb3uwzP9qZ3r5nCcR/zdl0WinLjP9S3RbLJwrcIdN7alNj
         iPBkylFJR/1G2MSzV1mlO8THdEGer3n08tB59Gc9uH5A1jWKuZOAc93nxMguCa2Grw+m
         03fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=R0xCg+3TiWDVcRnQE9wvX4Q14uV1rPH9nvOWGyiQE7Q=;
        b=dAeBdx8Qdp3M7aoWE+PIuCrFZG/nRxdaT9OAxnz2CwnDbZJWnaT8C6oL7LSt8drc31
         5WBTkzeYHhBwe/8ITVc3sAx8JyPFNIRAo4m/KiCqCzmAYCAICEiao0L3XjiPXUDykqq3
         uhDM3zPRIsSg2cz+GQPXH/qiZcv/0sIz+IJQa5HmD25qsDbIbTEtnYuEyjZrUtEixH3U
         8fq92OofD4V6MErWBy6Kpk2G2lrBhM1bcsBG2MB7mdNVBWMhaiv95FYmWmWfRGWNTAkO
         ZDU+dKTOVoZ6/zuRTVgFnUkZZoLbWicjZ2G5aFdE+3jGgUhtDKYeh2yvcekDbzpMhY4U
         xcGw==
X-Gm-Message-State: AOAM530beYfa1QG7VRQt0WJsq7OthO7Lm3hpCVFz7jU+9OvC79J+5ll3
	OMNl/ohmjFsMKncfWCmhIDwmHx/OS9bZUA==
X-Google-Smtp-Source: ABdhPJw6QbHdF6SPWbtLJLR8luR3T4Yp3CObQ+u6N/x19xIL4HIBDiE4b4KReUmnZZqqAxtifsVWHA==
X-Received: by 2002:a37:83c5:: with SMTP id f188mr1281866qkd.271.1623268746451;
        Wed, 09 Jun 2021 12:59:06 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id i11sm739908qtq.58.2021.06.09.12.59.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 12:59:06 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 9 Jun 2021 15:59:05 -0400
Message-Id: <EDF9A135-3A44-4829-8DE4-82B7E6E168AE@gmail.com>
References: <CAL0m=NbvdhggK7CiVjVono=YYH=OkT4v0TipKR1xKxp-9nYYSw@mail.gmail.com>
In-Reply-To: <CAL0m=NbvdhggK7CiVjVono=YYH=OkT4v0TipKR1xKxp-9nYYSw@mail.gmail.com>
To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: KH7S637UYZQYCBVAWPUWQ3FS3EGVAWOH
X-Message-ID-Hash: KH7S637UYZQYCBVAWPUWQ3FS3EGVAWOH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Disable N310's auto dc offset
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KH7S637UYZQYCBVAWPUWQ3FS3EGVAWOH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIEFkOTM3MSBmcm9udC1lbmQgY2hpcCBoYXMgZGMgb2Zmc2V0IHJlbW92YWwgYWx3YXlzIG9u
LiANCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+IE9uIEp1biA5LCAyMDIxLCBhdCAzOjU2IFBN
LCBaZW5nLCBIdWFjaGVuZyA8aHVhY2hlbmcuemVuZ0BnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4g
77u/DQo+IEhlbGxvLA0KPiANCj4gSXMgdGhlcmUgYSB3YXkgZm9yIE4zMTAgdG8gZGlzYWJsZSBS
eCBhdXRvIGRjIG9mZnNldD8gSSB0cmllZCBzZXRfYXV0b19kY19vZmZzZXQoRmFsc2UpIGluIFB5
dGhvbiwgYnV0IGl0IGRvZXMgbm90IHdvcmsgZm9yIE4zMTAuIChJdCB3b3JrcyBmb3IgTjIxMCB3
aXRoIFNCWCBib2FyZHMsIHRob3VnaC4pIA0KPiANCj4gVGhhbmtzLA0KPiBIdWENCj4gDQo+IA0K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
