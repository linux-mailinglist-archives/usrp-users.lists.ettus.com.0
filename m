Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB76148F23A
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 23:04:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B25B338597B
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 17:04:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kmr3hCxc";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id F3211385461
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 17:03:55 -0500 (EST)
Received: by mail-qk1-f169.google.com with SMTP id b127so12385558qkd.0
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 14:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LtgXcAqKg7MXaXatXDaEjVZAh3P3etlICdgOXh32wU4=;
        b=kmr3hCxcUQx/vWdfTqVYiCoT9ZVyLk1Yl5y0cz3RejXXaV8kl5f3kwwo4mbPixPDF9
         ZsIeQVnWF5Icueu76WpGAg9cMF+3XANZIld01D4tBcSHurBwLaSp19mdObaUtpCaPanw
         qrxVoE6SbIdm3HR2sWu+VGl7g3AN2AdPyUiMCw5XUe+SGdnPlaYnjzaRoHscYtFmV8gW
         tFxUVTbcG2h3mykPquPdFmHBP+5Zd7A1OElcNg5XiYZ5FFe1yWLvQbdJxvTKQ+Iwimy3
         HW6i3WnSeVG2OmuBHwnNTkBFvt8gc/rK5X1ZMJAbl79O2TywXLThVtceswcApdE792fY
         LG5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LtgXcAqKg7MXaXatXDaEjVZAh3P3etlICdgOXh32wU4=;
        b=Hl66WxVFyyJw7PJBI1HL0lYpbhTDXR/P/pDctu6YHwHXr9WAew9s6SiflAAYSva10J
         boARGuhmzmqUIBX0OhjZ8oNz0GUX6KOlNBRTjH8G/bg56QF9ajRD1f011mTk0t3wTZQU
         gfCubDpzvp2L5oGXCrPqFHENxvSFfh20BppVILnxJr0LVcS1BUJnY3jkzI078UpV8I08
         n4Xu2lhk9yyyx9jdrTR28dlNN3kPIh0IS2eS8I/sB+UeytIfS8q30yBhQp6Vtex/BFns
         jjpjKxU1sQVO4dRcze8lfBw3d+H2IcLWdqUiG6veO1rwHqrXLaUJcZbdClteEcCFPNpL
         8o7A==
X-Gm-Message-State: AOAM5310AMYUDAMe7lC5NvYgwlo0Wo3/cuGE6F+ovzt+FSSO+Bd6nIIB
	xKqTxX3vQQO/TlFrzwM8jmQ=
X-Google-Smtp-Source: ABdhPJw+iXfxqkEJuvX5tdU8gVUFrf5d/hIGJ3I0qN3YKEOsCq9hPd3rQSVBbkeNDPMBApJIioHnkg==
X-Received: by 2002:a05:620a:103a:: with SMTP id a26mr2594612qkk.101.1642197835482;
        Fri, 14 Jan 2022 14:03:55 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id t14sm4904628qkp.42.2022.01.14.14.03.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 14:03:55 -0800 (PST)
Message-ID: <6972c87a-2795-bc01-a8b1-80b313e96a54@gmail.com>
Date: Fri, 14 Jan 2022 17:03:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Paul Atreides <maud.dib1984@gmail.com>
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com>
 <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com>
 <CACwKM9JZU0UYDraek9LKFKTBvBuoCKKC=-xWvUkH-Jn3yOvz-Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACwKM9JZU0UYDraek9LKFKTBvBuoCKKC=-xWvUkH-Jn3yOvz-Q@mail.gmail.com>
Message-ID-Hash: W4TYN52REJCV5DIZ4XY54LAXGPNLKUQS
X-Message-ID-Hash: W4TYN52REJCV5DIZ4XY54LAXGPNLKUQS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W4TYN52REJCV5DIZ4XY54LAXGPNLKUQS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMS0xNCAxNzowMCwgUGF1bCBBdHJlaWRlcyB3cm90ZToNCj4gVGhhdCdzIHdoYXQg
SSBoYWQgb3JpZ2luYWxseS4NCj4gaSd2ZSBDaGFuZ2VkIGJhY2sgdG8gdGhpcyBhbmQgc3RpbGwg
Z2V0dGluZyBubyBMRUQgb24gdGhlIFRYIExPIE9VVDA6DQo+IFJGMA0KPiBMTyBTb3VyY2UgaW50
ZXJuYWwNCj4gTE8gZXhwb3J0IFRydWUNCj4gUkYxDQo+IExPIFNvdXJjZSBleHRlcm5hbA0KPiBM
TyBleHBvcnQgRmFsc2UNCj4NCj4gdGhlIGdlbmVyYXRlZCBmbG93Z3JhcGggY29kZSBsb29rcyB0
byBiZSByZWZsZWN0aW5nwqAgaXM6DQo+IMKgwqDCoMKgwqDCoMKgIHNlbGYudWhkX3VzcnBfc2lu
a18wLnNldF9jbG9ja19zb3VyY2UoJ2V4dGVybmFsJywgMCkNCj4gwqAgwqAgwqAgwqAgc2VsZi51
aGRfdXNycF9zaW5rXzAuc2V0X3RpbWVfc291cmNlKCdleHRlcm5hbCcsIDApDQo+IMKgIMKgIMKg
IMKgIHNlbGYudWhkX3VzcnBfc2lua18wLnNldF9zYW1wX3JhdGUoc2FtcF9yYXRlKQ0KPiBzZWxm
LnVoZF91c3JwX3NpbmtfMC5zZXRfdGltZV91bmtub3duX3Bwcyh1aGQudGltZV9zcGVjKDApKQ0K
Pg0KPiDCoCDCoCDCoCDCoCBzZWxmLnVoZF91c3JwX3NpbmtfMC5zZXRfY2VudGVyX2ZyZXEoZnJl
cSwgMCkNCj4gwqAgwqAgwqAgwqAgc2VsZi51aGRfdXNycF9zaW5rXzAuc2V0X2FudGVubmEoJ1RY
L1JYJywgMCkNCj4gwqAgwqAgwqAgwqAgc2VsZi51aGRfdXNycF9zaW5rXzAuc2V0X2dhaW4oZ2Fp
bl8wLCAwKQ0KPg0KPiDCoCDCoCDCoCDCoCBzZWxmLnVoZF91c3JwX3NpbmtfMC5zZXRfbG9fc291
cmNlKCdpbnRlcm5hbCcsIHVoZC5BTExfTE9TLCAwKQ0KPiDCoCDCoCDCoCDCoCBzZWxmLnVoZF91
c3JwX3NpbmtfMC5zZXRfbG9fZXhwb3J0X2VuYWJsZWQoVHJ1ZSwgdWhkLkFMTF9MT1MsIDApDQo+
IMKgIMKgIMKgIMKgIHNlbGYudWhkX3VzcnBfc2lua18wLnNldF9jZW50ZXJfZnJlcShmcmVxLCAx
KQ0KPiDCoCDCoCDCoCDCoCBzZWxmLnVoZF91c3JwX3NpbmtfMC5zZXRfYW50ZW5uYSgnVFgvUlgn
LCAxKQ0KPiDCoCDCoCDCoCDCoCBzZWxmLnVoZF91c3JwX3NpbmtfMC5zZXRfZ2FpbihnYWluXzEs
IDEpDQo+DQo+IMKgIMKgIMKgIMKgIHNlbGYudWhkX3VzcnBfc2lua18wLnNldF9sb19zb3VyY2Uo
J2V4dGVybmFsJywgdWhkLkFMTF9MT1MsIDEpDQo+IMKgIMKgIMKgIMKgIHNlbGYudWhkX3VzcnBf
c2lua18wLnNldF9sb19leHBvcnRfZW5hYmxlZChGYWxzZSwgdWhkLkFMTF9MT1MsIDEpDQo+DQoN
Ckkgd29uZGVyIGlmIHRoaXMgaXMganVzdCBhIGNhc2Ugb2YgdGhlIExPIGV4cG9ydCBMRUQgY29k
ZSBpc24ndCB0aGVyZSBpbiANCnRoYXQgdmVyc2lvbiBvZiBVSEQ/DQoNCkNhbiB5b3UgY29uZmly
bSBwcmVzZW5jZSBvZiB0aGUgTE8gc2lnbmFsIHdpdGggYSBzcGVjdHJ1bSBhbmFseXNlciBvciAN
CnNpbWlsYXI/DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20K
