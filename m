Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83303656DBB
	for <lists+usrp-users@lfdr.de>; Tue, 27 Dec 2022 18:54:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 468D7383920
	for <lists+usrp-users@lfdr.de>; Tue, 27 Dec 2022 12:54:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672163648; bh=c4NG4O8CMrAUjWios5pnEz1zARB7LaSsAX25AN5AGRg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QFYXwLGSYZzTUGGNzS5G/JHmO0Pwgu+PCXz+PM37Vfjr/ZwZVduPreEHUX8uze+eO
	 b3dDLAOfeyu1voIfKeOcdA/G78LBb4o4rCTCY0be2Zz5pWkg30sFcubKXuI1Qe/Qze
	 gybFn/WBRA5l0YK76Jd/UstFC93PKJNB5Wzglp1ycvgAY7HRmWupatD/eWOrZIrR4D
	 6n+40VqWJhx6p70tX2GJJFcSpvyz7HDqcmMjhTzCOEJW+c/3AH7Ug+pMbznXIOvNbP
	 aUZeYQMT5Sz3VILRIfh59Ou3xew+RmGZeWp2q1qpiUrL4fZqo9et8CtAkw83xgCS7c
	 zGjNBAeQi27nA==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A0693381237
	for <usrp-users@lists.ettus.com>; Tue, 27 Dec 2022 12:52:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X4+5O0rh";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id h26so10971176qtu.2
        for <usrp-users@lists.ettus.com>; Tue, 27 Dec 2022 09:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k5hGVoaM7vXMDFOxCm4+MYDNUjYhPbSDg+U4yGSYsSA=;
        b=X4+5O0rhKjNeUczOEMGadWpmpP+JDpATGHl5c2V/91gwVY5hjXcII6kBmdkEB5xVsm
         FtHuCDeqQ//5w9Ly9nQm1zwgZnpRwarJDXkp5s3FLmzkMnlZbqBedcAR4v6BUtU0o9Cm
         82Eu+4Uo6SF2IC/NAHZuUOXMD4Jq0MJMdNPw7GXvBbwpLuuKgdSXhB7nnEvBJ2b338eJ
         90+GZzY8GY82F1hjOY8nkPYYgfAKlMVpCyd+wNhz8GyqBAJejUIo49wd0RGHEaLUrgZZ
         lIhQWIBor2uYs/VK1cAbG97zuYCPKH8vpzkSgqbHZ1H9DmrQwiupDObgUxHwvN1AqXB6
         1RKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k5hGVoaM7vXMDFOxCm4+MYDNUjYhPbSDg+U4yGSYsSA=;
        b=6D5rPAaYjBmOxtqfS8mqDSCeyZ+s+4738969EIuLeNxVP6PyLR5hvPOYsBm9wRwrBI
         pdADW6Pt8TM6swCWrkaJJ+K7wzCLbIRVxQuoekelfpENfs6pvP6BjXb6/tQxl9pYVjGr
         SU3o085UwhWzPKLkuNlykhEjrRfoaiGioBh2pQnKJIW5X4ep//LMp1kjvEWWT5uMe+yk
         M/VD1LFQRRpSJx9qh6XhczxXtl7u9WaQHvdUB9uBfIGdCyVn0+NI4kSpR+EUcVsUeKVo
         osEr5OH2rVQWsKz4RYPek/qULZ2lIfC4EVjY5r2k8HnM68GG7cNrr+ooiQYfchUtPFeQ
         wO9g==
X-Gm-Message-State: AFqh2kp8Fq8FesnyzNy6p4lieq8EyD1BcB0Ey5+RciKBNQjHIboJLa7K
	MCj/OO9cWP67iXL7OzTHvV3FT7yAox4=
X-Google-Smtp-Source: AMrXdXsJGpAOpn4CXj3PVNQKITL6qtqqTY5o7aGGgLF1MtZA3QgHtuleou5kO2L+CfEtmvpWZ1ta6Q==
X-Received: by 2002:a05:622a:5988:b0:3a7:e91f:d23 with SMTP id gb8-20020a05622a598800b003a7e91f0d23mr30236409qtb.67.1672163562679;
        Tue, 27 Dec 2022 09:52:42 -0800 (PST)
Received: from [192.168.2.183] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id y18-20020a05620a25d200b006fc447eebe5sm9917438qko.27.2022.12.27.09.52.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 09:52:42 -0800 (PST)
Message-ID: <5525e594-7af8-19e1-83ab-359e8801d356@gmail.com>
Date: Tue, 27 Dec 2022 12:52:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <wP1hakZ8Y3g5JYu346i583R2H5I6iNVZ59n2HIo7wE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <wP1hakZ8Y3g5JYu346i583R2H5I6iNVZ59n2HIo7wE@lists.ettus.com>
Message-ID-Hash: XJMMTCEUCYSR2RHRRWECE2PIH3TO4BBO
X-Message-ID-Hash: XJMMTCEUCYSR2RHRRWECE2PIH3TO4BBO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device and Connection
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XJMMTCEUCYSR2RHRRWECE2PIH3TO4BBO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMTIvMjAyMiAxMDo1OSwgaGVucnkucG93ZWxsLnh4QGdtYWlsLmNvbSB3cm90ZToNCj4N
Cj4gSGVsbG8sIEkgYW0gY3VyaW91cyBhYm91dCBVU1JQIGFuZCBpIGZvdW5kIG9uZSBmcm9tIG15
IGZyaWVuZC4gTXkgDQo+IGRldmljZSBpcyBVU1JQIEIyMDAuDQo+DQo+IEkgd2FudCB0byBhc2sg
aG93IHRvIGVtYmVkIGNvZGUgdG8gVVNSUC4gSXMgdGhlcmUgYW55IGlkZSBmb3IgdGhpcz8gDQo+
IGFuZCBEbyBpIGhhdmUgdG8gYWx3YXlzIHJ1biB0aGlzIHVzcnAgZnJvbSB1c2IgY2FibGUuDQo+
DQpUaGUgVVNSUCBCMjAwIGhhcyBhIHNtYWxsIEZQR0EgaW4gaXQsIGJ1dCBpdCBnZW5lcmFsbHkg
aXMgdG9vIHNtYWxsIHRvIA0KZG8gbXVjaCBjb2RpbmcgaW4gdGhlIEZQR0EsIGFuZCBpdCB3b3Vs
ZCByZXF1aXJlDQogwqAgdGhlIFhpbGlueCBWZXJpbG9nIHRvb2xjaGFpbi4NCj4NCj4gTXkgb3Ro
ZXIgdHJvdWJsZSBpcyBpIHRyeSB0byB2aWV3IGNoYW5nZXMgZnJvbSBHTlUgUmFkaW8gcGFuZWwu
IEkgDQo+IGRlc2lnbiBSeCBhbmQgVHggc2lkZXMuIEkgY2hhbmdlZCBhbWxpdHVkZSBidXQgdGhl
cmUgaXMgbm8gZGlmZmVyZW5jZSANCj4gaW4gc2lnbmFsIGxldmVsLiBUaGlzIHRpbWUgdXNycCBq
dXN0IGNvbm5lY3RlZCB3aXRoIHVzYiBjYWJsZS4gSSANCj4gcGx1Z2dlZCBhZGFwdG9yIHRoZW4g
dGhlIGxlZCBwaW4gb24gY2FyZCBjaGFuZ2VkLiBJdCBhbHdheXMgbGlnaHQgYmx1ZSANCj4gYnV0
IHdoZW4gaSBwbHVnIGFkYXB0b3IgaXQgY2hhbmdlIHRvIGxpa2Ugb3JhbmdlLiBUaGVuIGkgdHJ5
IHRvIHBsdWcgDQo+IGp1c3QgYWRhcHRvciB3aXRob3V0IHVzYiBjYWJsZS4gSXQgZG9lc250IHdv
cmsuDQo+DQpUaGUgTEVEIGJlaGF2aW9yIGZvciB2YXJpb3VzIHBvd2VyIGNvbmZpZ3VyYXRpb25z
IGNhbiBiZSBjb25mdXNpbmcuIFdoZW4gDQp0aGUgZGV2aWNlIGlzIHBsdWdnZWQgaW4gd2l0aG91
dCBVU0IsIHRoZSBsaWdodA0KIMKgIGZsYXNoZWQgQkxVRSBicmllZmx5IGFuZCB0aGVuIGdvZXMg
b3V0LsKgIFRoYXQgbGlnaHQgaXMgYmFzaWNhbGx5IA0KdW5kZXIgc29mdHdhcmUgY29udHJvbCwg
YW5kIHVudGlsIHlvdSBoYXZlIGEgZmlybXdhcmUgbG9hZCBpbg0KIMKgIHRoZXJlLS13aGljaCB5
b3UgZ2V0IG92ZXIgVVNCIGZyb20gdGhlIGRyaXZlciBzb2Z0d2FyZSwgaXRzIHN0YXRlIA0KaXNu
J3QgcGFydGljdWxhcmx5ICJzYW5lIi4NCg0KWW91IG1pZ2h0IHdhbnQgdG8gc3RhcnQgaGVyZToN
Cg0KaHR0cHM6Ly9rYi5ldHR1cy5jb20vQjIwMC9CMjEwL0IyMDBtaW5pL0IyMDVtaW5pX0dldHRp
bmdfU3RhcnRlZF9HdWlkZXMNCg0KDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
