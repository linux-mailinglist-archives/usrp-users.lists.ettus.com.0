Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D6B3CEEF0
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jul 2021 00:04:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7C0D3849C8
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 18:04:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VrnIh2hR";
	dkim-atps=neutral
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 9732A38426B
	for <USRP-users@lists.ettus.com>; Mon, 19 Jul 2021 18:03:25 -0400 (EDT)
Received: by mail-qv1-f48.google.com with SMTP id p10so9174527qvk.7
        for <USRP-users@lists.ettus.com>; Mon, 19 Jul 2021 15:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=DQ1xwb5n6709LpTI6aPiZEKqFXWt75HkxhkoasHWpFk=;
        b=VrnIh2hRUpQvbV+8hxCNy6SiahglstaRz1LtCd9KALxj0EAI2bOY6MJ2xoOzR5ZxW1
         azTIsGzCRUt3H/FbexwpL6RZtkJm20IWxtL5KwPqGn4oGxi5LQgp0R8RvCas8U/B/arM
         X2zzzfeTQ9rzRJzWCgM1+Yn/XfHSOOj0s3g070Or6rjUi447twA+DcIQtr1wU+LYo16U
         RtQ/beSJpRHHs8jOc5ZLJ9issRjfcArxbdM8scf08jxqXYLO7u2gg45ZwwF8kn/W/5ew
         Fnct0TZbBTM9smtIeIde7HfgHqqB8E6/DsR7alvGHZ9bAWkjO9E1+B0B10q6V6Xh0J3n
         sZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=DQ1xwb5n6709LpTI6aPiZEKqFXWt75HkxhkoasHWpFk=;
        b=ezToCNHMQ42HebHMUN6ARvN4h7eC2R2ibs2/7vN9DTMpcBD4+cgdVPQS7OG605S+ce
         WED2W4RZqzYMeWW3i+9ldblMWglXHdWQpVJ3R32gHRPy1cVEwFU20m708cN6yATl5Qp8
         IoLN8qFksY5So2MEfzaIAQwahNYpOaIqdORDcjhhxKGvmZ/6rFFSGqX+rfT2uUtK/Qqm
         4irboQDelxYZtEB/fviGTQdsgfk4ydrR3CDwMCP2e3RINtQHLN8yGDSm7tEXldArzbzv
         urYPmV8zYAhZTn4SHgkxq+CzmwIUYwTAe0VBiGVll7+0d37QX89Pc9MH5a/iJxzJxTJ1
         I1mQ==
X-Gm-Message-State: AOAM5309eCITC6jKyPKC/6GWdZcczgJyiy7H7TNnEyj76vWD3dpJxW7B
	ijibOI6jneYfT2Z3EGTQDoo=
X-Google-Smtp-Source: ABdhPJzfw7wO/gxO31KEiWV4zbBh958rPgA2P//nOYF1GgVID1q/oGdg38YvO3sj3e4socjy6dpsUw==
X-Received: by 2002:ad4:4832:: with SMTP id h18mr26755910qvy.62.1626732205094;
        Mon, 19 Jul 2021 15:03:25 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id y20sm8650863qkm.5.2021.07.19.15.03.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 15:03:24 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Jul 2021 18:03:23 -0400
Message-Id: <1738D809-232F-4032-8E59-898C1845492C@gmail.com>
References: <a7981a6e44ae40baa330fd65bf4c26c3@boeing.com>
In-Reply-To: <a7981a6e44ae40baa330fd65bf4c26c3@boeing.com>
To: "Clark (US), Kenneth C" <kenneth.c.clark2@boeing.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: XBU3QIK5L6BQYABNBMA4DRWRZGVIQAUU
X-Message-ID-Hash: XBU3QIK5L6BQYABNBMA4DRWRZGVIQAUU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receive time delay through B205
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XBU3QIK5L6BQYABNBMA4DRWRZGVIQAUU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TXkgcmVjb2xsZWN0aW9uIGlzIHRoYXQgb24gdGhlIEIyeHggdGhlIGxhdGVuY3kgaXMgZml4ZWQg
YXQgYWJvdXQgNTAgc2FtcGxlcy4NCg0KQnV0IGltcGxlbWVudGF0aW9uIGNoYW5nZXMgY291bGQg
ZWFzaWx5IGNoYW5nZSB0aGF0LCBzbyBpdOKAmXMgcHJvYmFibHkgYmVzdCB0byBjaGFyYWN0ZXJp
emUgdGhhdCB5b3Vyc2VsZi4gDQoNCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+IE9uIEp1bCAx
OSwgMjAyMSwgYXQgNTo1NCBQTSwgQ2xhcmsgKFVTKSwgS2VubmV0aCBDIDxrZW5uZXRoLmMuY2xh
cmsyQGJvZWluZy5jb20+IHdyb3RlOg0KPiANCj4g77u/SG93IGNhbiBJIGNvbXB1dGUgdGhlIHJl
Y2VpdmUgdGltZSBkZWxheSB0aHJvdWdoIHRoZSBCMjA1Pw0KPiANCj4gSW4gcGFydGljdWxhciwg
Zm9yIGEgZ2l2ZW4gYmFzZWJhbmQgc2FtcGxpbmcgcmF0ZSwgd2hhdCBpcyB0aGUgdGltZSBmcm9t
IHdoZW4gdGhlIFJGIGhpdHMgdGhlIGlucHV0IFNNQSBjb25uZWN0b3IsIHRvIHdoZW4gSSBzZWUg
aXQgaW4gdGhlIGJhc2ViYW5kIEkmUSBzYW1wbGVzLCB3aXRoIHRoZSBhc3NvY2lhdGVkIDEtUFBT
IGRlcml2ZWQgdGltZXN0YW1wLiAgSSBhbSBzeW5jaGluZyB0aGUgQjIwNSB0byBhIEdQUyByZWNl
aXZlcidzIDEtUFBTIHNpZ25hbC4gIEkgYW0ganVzdCB1c2luZyB0aGUgc3RvY2sgJ3J4LXNhbXBs
ZXMtdG8tZmlsZScgZXhhbXBsZSBzb2Z0d2FyZS4gIFRoZSBtYWluIHRoaW5nIGlzIHByb2JhYmx5
IHRoZSBGSVIgZmlsdGVyIGluIHRoZSBEREMgY2hhaW4sIHJpZ2h0Pw0KPiANCj4gVGhhbmtzLA0K
PiANCj4gS2VuIENsYXJrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20K
