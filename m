Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3F242FC2A
	for <lists+usrp-users@lfdr.de>; Fri, 15 Oct 2021 21:30:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4353A384AAC
	for <lists+usrp-users@lfdr.de>; Fri, 15 Oct 2021 15:30:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Yz1e0lTv";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 7E619384A5B
	for <USRP-users@lists.ettus.com>; Fri, 15 Oct 2021 15:29:20 -0400 (EDT)
Received: by mail-qt1-f173.google.com with SMTP id t16so9752710qto.5
        for <USRP-users@lists.ettus.com>; Fri, 15 Oct 2021 12:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=irXrd49widxPGiR5pg3pZH8/a015t+TYEFNJZnEy8g4=;
        b=Yz1e0lTvoI59oK7UiaRCTH4iov7WBGEVdNXWJ3HoJiVy2ik+mdT8+04HyptQjd3X86
         0h09CphHUydfMJTQxckWDN+wgJro3BeyHDO3CGtttQzvuot2b4zUzIy/5i2fuGzcJYOw
         +6iAcbwVHkcFczvuXRiCJ0qwqnvgv7ORrTbJVTINcliVUg4e2xqsd0ZX4BpI0oeuqmLg
         BwQfPmjPOA3VOj1isH76V7pCdcRlx68KoBmywoICtQukSHd6gBnEryGHiCUC8NJgfoK8
         AByUho0Bnq4TSktH3fPtOCdIiu6y1vSfIPEh1lAdSitsduy0CmC8wCHmWzgRLjDZt5kb
         WOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=irXrd49widxPGiR5pg3pZH8/a015t+TYEFNJZnEy8g4=;
        b=SiV/nKfRe8wwuiaQvGkxdtC5cZcCX0XckmLnjyXlKJofyfJPFlm0Xkmdq7CXixE+9w
         tOO/i9LmTXD5hYCKeVYRuYzBPI9PqFfUR74x/UF/0r/6AqKvo5XDHN0hQfDh04CEdWlj
         LAR1c9z7ffojerjzC2d5NHhO22vsP3A73EfyVsnSxXeQgrRaubKD02r3MxhlxsrPDq8c
         P34dfwt7OO9zw3ETu6ZPx8MI6Y5+lC4iteTRD056V4qEGHK+z08IAjFqssD6pGdPt4Fm
         D6WIp18zQyMMdPRwdX/6e8AuejdqkBo4iM6s6GA/4NbWnXXKVPOaXEgKi9EwOXYQWg1+
         pqAw==
X-Gm-Message-State: AOAM5326woaOThJutoos+KViOGHlDNtoiUxaUJ5ObVeA3aMMAeIlKSxj
	tI4vNke1i7s3l5dFPHZTf58WSgYd6A0=
X-Google-Smtp-Source: ABdhPJy0m+9im/VYWr/K/Cxvr4hr1+FOa5GiqNy50sPzn+odasmSs9pwnwpiNPckDeip0vMU9Qkkmw==
X-Received: by 2002:ac8:6bcc:: with SMTP id b12mr16144619qtt.101.1634326159626;
        Fri, 15 Oct 2021 12:29:19 -0700 (PDT)
Received: from [192.168.2.240] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id 33sm3055996qtc.18.2021.10.15.12.29.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 12:29:19 -0700 (PDT)
To: Achilleas Anastasopoulos <anastas@umich.edu>
References: <CAErymBgdKeG9dKdwN_LTmYW0=gXTvO+POuGZ6Ge9VOkk5X33aw@mail.gmail.com>
 <564F776E-53EB-4128-A46E-D0C4047BD66C@gmail.com>
 <CAErymBi5VDcGrJ6eVtzS2CdgWvUOmRSBoPb+7eM8Pbn7mgx62A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <b8bdbf04-0e27-ab0f-f048-2ddb21a36828@gmail.com>
Date: Fri, 15 Oct 2021 15:29:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAErymBi5VDcGrJ6eVtzS2CdgWvUOmRSBoPb+7eM8Pbn7mgx62A@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: QZ4YXIF6NEUVYCRQ5PB24ZSF66G5Q7HA
X-Message-ID-Hash: QZ4YXIF6NEUVYCRQ5PB24ZSF66G5Q7HA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X310 with internal GPSDO: GSM led in front panel
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QZ4YXIF6NEUVYCRQ5PB24ZSF66G5Q7HA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMC0xNSAzOjAyIHAubS4sIEFjaGlsbGVhcyBBbmFzdGFzb3BvdWxvcyB3cm90ZToN
Cj4gSGkgTWFyY3VzIGFuZCBhbGwsDQo+DQo+IFRoZSBYMzEwIGhhcyB0aHJlZSBsZWRzIGluIHRo
ZSBmcm9udCBwYW5lbCAoYW1vbmcgb3RoZXJzKToNCj4gUkVGLCBQUFMsIEdQUw0KPiBXaGVuIEkg
dHVybiBvbiB0aGUgVVNSUCBub25lIG9mIHRoZW0gaXMgbGl0Lg0KPiBXaGVuIEkgZXhlY3V0ZSAi
dWhkX3VzcnBfcHJvYmUiIGZyb20gdGhlIHRlcm1pbmFsIHRoZSB0aGUgUkVGIGxpZ2h0cyANCj4g
dXAgYW5kIHRoZSBQUFMgc3RhcnRzIGJsaW5raW5nLg0KPiBXaGF0IGlzIHRoZSBtZWFuaW5nIG9m
IHRoaXM/IChJIGFtIG5vdCBjb25uZWN0ZWQgdG8gYW55IFJFRiBzb3VyY2UgLi4uKQ0KPg0KPiB0
aGFua3MNCj4gQWNoaWxsZWFzDQo+DQpVSERfVVNSUF9QUk9CRSB3aWxsIHNldCB0aGUgc3lzdGVt
IGNsb2NrIHRvIHRoZSBHUFMgaWYgdGhlcmUncyBvbmUgDQppbnN0YWxsZWQuDQoNClJlZ2FyZGxl
c3MsIHRoZXJlJ3MgYWx3YXlzIGEgc3lzdGVtIFJFRiBjbG9jayBhbmQgaW50ZXJuYWwgUFBTLsKg
IFRoZSBSRUYgDQpMRUQgaXMgc2ltcGx5IGluZGljYXRpbmcNCiDCoCB0aGF0IHRoZSBpbnRlcm5h
bCByZWZlcmVuY2UgUExMIGlzIGxvY2tlZC0td2hldGhlciBpdHMgZ2V0dGluZyB0aGF0IA0KZnJv
bSBleHRlcm5hbCwgdGhlIGludGVybmFsIEdQUywgb3IganVzdCBmcm9tDQogwqAgdGhlIG9uLWJv
YXJkIFRDWE8gb3NjaWxsYXRvci4NCg0KVGhlIEdQUyBMRUQgaWxsdW1pbmF0ZXMgd2hlbiB0aGUg
aW50ZXJuYWwgR1BTIG1vZHVsZSBpbmRpY2F0ZXMgdGhhdCBpdCANCmhhcyBhY2hpZXZlZCBsb2Nr
Lg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
