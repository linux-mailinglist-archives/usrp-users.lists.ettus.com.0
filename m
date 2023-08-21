Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB59782E5D
	for <lists+usrp-users@lfdr.de>; Mon, 21 Aug 2023 18:25:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 110503849D8
	for <lists+usrp-users@lfdr.de>; Mon, 21 Aug 2023 12:25:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692635142; bh=nDs/dVKuxu4SpeDQD6tGYtmH9oG+ACKo2WFBDl6N3FU=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EGUT88umzLMWuDnWmm8Bb9YPrrzCP7W/GdwO+He5oFuKyiA5kAbsp6HJCKfOxQEB/
	 Q9ba6ZaAjIYPzFIKbDv5cwn8LIZle4Y2CJuncp7btgzRtyYjIV9P5D5MZPFELzyDmG
	 BiP1TSjrvW+rQ8eLc3/J1PKguQWgFs+LGUZrchE7G1ylnUutz69K+oI7JLU/puOqSS
	 3w3PphSTdObtOtqU+uveulC/ZBDxc4BFZVyZCPO8mgxUOlGYQsctcRmlbYfgExijo3
	 +HvTE/POnE3f46fquzblmM04ikbZSCTMg69iwszmihdHpo0ToY1uqX0Had8f4wZRhA
	 qle0SRNFTJ/zg==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id F2D92383FAC
	for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 12:25:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LIsuzeQB";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-64c1d487e72so18434246d6.0
        for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 09:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692635108; x=1693239908;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=51zzW/tMue6d5cHx0LxWE2910LY7E/772hJBRVzpAys=;
        b=LIsuzeQB2ba2wLfU3ySlhUVIHdmFzOOx3mL61Wufkjv4P/sIiOyYAXEhvM4COdX+CU
         s/2hjBw7r1ELN9pqSIEzVCUUPK7w/oKUB273m5uE3t9nlPOl8L5K2h5wfuqsc9yp+eiw
         CRUNmBuY9odtrzbFaDqf+R9xf3dtXSgikRc7GE0yU16SdZTiZCowWb47Qb6f+TPRzwGb
         QT78gNqvsigDr9755Y0G7uRW/wNhYGiyPks0XQ71RsLgwwqtWuHlbDOLcASa43Yc3WhC
         7IJezYWtKYY95yW1x5lrJacx6IuNnlB6g6FqbAeNlIxktfL2N0Jxa+UJOFYshz/WC9r5
         ZAgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692635108; x=1693239908;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=51zzW/tMue6d5cHx0LxWE2910LY7E/772hJBRVzpAys=;
        b=BpVEhWxJaZzJgm230MfQ56EdpMhsoHDkwQqVWlo5QPkV2exd+VsAZyimM2GblzPx8U
         +bzNyLsnCB1mFrR6j0Psk14CYmTFY4IE4ltHAgnnkswKHqrbQCqthWockf6N95WDB8Sd
         lCFd9IuaOVOtNHP3oVgCF3osoUw3k4DZDWppzNjXPkcyS6YgBCGnedZy8UsphC00Sl4a
         bmbQG4DrbzIKiUUYUg6CPGNx/bI3j9OtLTMJx/BEqDFb1zxwYeuHI4ssAM2nXZIdXtp8
         WVSTaTg/91cmwZs4BW7D18veH8IVI2gw9dIvTlnuqTgWA9bcA+OUkgodUtLlXdD/9/LG
         voVg==
X-Gm-Message-State: AOJu0Yy5Bu11BJ56VuMuItiOyBwRxrRicWzsrfZhwimxy30hrkpbefos
	7YlckJuqr1JXJWpA9moSPLEk8NW6UVo=
X-Google-Smtp-Source: AGHT+IFtmSog/hR+GzRTBOLEkMIgHw3lIQMTEGPd33HJ7r0KJYAuFh6n9lDo9rFlvBUX+v5G2cU5yQ==
X-Received: by 2002:a0c:ac01:0:b0:647:42ac:d7f2 with SMTP id l1-20020a0cac01000000b0064742acd7f2mr7093080qvb.63.1692635108149;
        Mon, 21 Aug 2023 09:25:08 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:1919:60f2:a1ea:786e:d467:d976])
        by smtp.gmail.com with ESMTPSA id o6-20020a0ccb06000000b0063d252a141dsm3006291qvk.116.2023.08.21.09.25.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 09:25:07 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 21 Aug 2023 12:24:56 -0400
Message-Id: <4CACAAE4-2E91-485D-9BA2-39276BEABC91@gmail.com>
References: <2bfda6d3-da35-7cff-93f5-4d94deabffd0@gmail.com>
In-Reply-To: <2bfda6d3-da35-7cff-93f5-4d94deabffd0@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (20G75)
Message-ID-Hash: EEDMRYVXUER6QMH34Q7CH65RXGLUTTBF
X-Message-ID-Hash: EEDMRYVXUER6QMH34Q7CH65RXGLUTTBF
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 and PCIe connection
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EEDMRYVXUER6QMH34Q7CH65RXGLUTTBF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QSBRU0ZQIFBDSWUgY2FyZCB3aWxsIHdvcmsgb24gYSBkZXNrdG9wIGZvciB0aGUgWDQxMC4gTmF0
aW9uYWwgaW5zdHJ1bWVudHMgc2VsbHMgdGhlIGtpdCB3aXRoIHRoZSBuZWNlc3NhcnkgY2FibGUu
DQoNCjxlbmQgdHJhbnNtaXNzaW9uPg0KDQo+IE9uIEF1ZyAyMSwgMjAyMywgYXQgMTA6NTQsIE1h
cmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4g77u/
T24gMjEvMDgvMjAyMyAwNzoyOSwgLiBBRVJNQU4gVFVFUlhVTiB3cm90ZToNCj4+IEhpIFVTUlAg
dXNlciwNCj4+IA0KPj4gSSBhbSB1c2luZyBVU1JQIHg0MTAsIGFuZCB3b25kZXJpbmcgaXMgdGhl
cmUgcG9zc2libGUgdG8gdXNlIFBDSWUgZm9yIHN0cmVhbWluZyBkYXRhIGluc3RlYWQgb2Ygc2Zw
Kz8NCj4+IElmIHBvc3NpYmxlLCBpcyB0aGVyZSBhbnlvbmUga25vdyBob3cgdG8gY29ubmVjdCBk
ZXZpY2UgdG8gdGhlIGhvc3QgYW5kIHdoYXQgc2hvdWxkIGJlIHRoZSDigJxhcmdz4oCdIGZvciBV
U1JQPw0KPj4gDQo+PiBCZXN0IHJlZ2FyZHMuDQo+PiANCj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPiBNeSBndWVzcywgYmFz
ZWQgb24gY3Vyc29yeSBpbnNwZWN0aW9uLCBpcyB0aGF0IHRoZSBQQ0llIGludGVyZmFjZXMgZG9u
J3QgeWV0IGhhdmUgc29mdHdhcmUgc3VwcG9ydC4NCj4gDQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
