Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C3DB23A5D
	for <lists+usrp-users@lfdr.de>; Tue, 12 Aug 2025 23:09:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DBFD3864B2
	for <lists+usrp-users@lfdr.de>; Tue, 12 Aug 2025 17:09:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755032954; bh=CxH0tQV2EWuUz5mJsY72Yc41aWKO7aOYRuyM6KuXy9c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SGBgiyHClJTgxGTbBTQoln2o6UYxsyLqfKOFTV+om8Iep9+XnSl+4ENOX3E+2ij6r
	 LU0gZHXkHw01zG/j5S5Mnsu2eBUkPDmFoqAEbXKxw2pyz8ka+lVzrKqhxr2ZVoVkzC
	 ihBymn2XLALYdn7iCG8y3dwz3iO1P1WzwMIlRQG5iYJmLougTHgdd+dj1JIJNtCQZq
	 4LVTzBkJWaNdhc3ebLkFRMlttJRhqmwQrB/PAyk6wX6rORx25GjcIavsQ4iDJodO+A
	 fKCpltkXYK2f0xK6f4sbesNMZdcRt0Xa/0TF099Dhl0Ds+5wQvzimcA5SR/8diSwCg
	 B9CEB0ow9b6aA==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id E4222386497
	for <usrp-users@lists.ettus.com>; Tue, 12 Aug 2025 17:08:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="j/FTVgH0";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-4b062b6d51aso65200621cf.2
        for <usrp-users@lists.ettus.com>; Tue, 12 Aug 2025 14:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755032908; x=1755637708; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ffUNyAWiXdzGEuVNLUy4Llm/3H0Tp/vhyY7Skjbbytk=;
        b=j/FTVgH0IHcwBVSh5YG4MciVVAVYKBROM+zS+vo/PSPMbCLsusLYO66cOe/7BCiwtj
         1ZIXbzZfAF89k+xny3pMMtx0eUZknjJ4xRmmrK2OLlBXSz62LVdicpHQwZ00SVaJuPGr
         xXTD3zSoHFgWEpWLzy/WrQPMJR1WQs49f5LF2y90ACJ69K8D85Jk/le4y/MB9bx8YOf2
         0/O8woiAqMESbXRqh036EhhtBLbPxb8AZaWgFaKHTE1k2ERHYfECQqfUpcN50hMHtoFG
         wX6fuemWrx1HDtKkcrTHzMME3q1G5HmbyurQ06M4Ej7ExETBq+4wKCKLllSZJlC1F1uD
         teTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755032908; x=1755637708;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ffUNyAWiXdzGEuVNLUy4Llm/3H0Tp/vhyY7Skjbbytk=;
        b=sAqoH63x9KyWAE9KI6V8kQXMB3xV8zAO+ynyAA5MgTplC1vFjfcJfKc1MeidZ5t8p6
         1sP0PkC2T6KDyoxAKEgdfyl+CrlvFlk2vPDO+7pXNrIvNj3h6pyrEuFG5lAQmEoe8hRN
         R7ZwKEUq7vYxY+WKkEdacCct4FESJ9MUE5t9ulSZ7NbKsgLpWfYAfeHdXU2qzC6qpXt0
         BIAeYOG6lf6hYoMelTPm1ACRwSsz0SAuT9amPxHQiW64T+x8zD8vKbp6fNcj5ZTiP9HB
         TQfHhLCYxdB5DwXQuTABJsaIlxHFhLYfJtDRBPjNoMp70/c63cZW8h8+mp5i7LRm6v+D
         nVRg==
X-Gm-Message-State: AOJu0YwjVUOs2P/ZIMpPXsS/ft6NErUQf1BDZKXvoEYP8pybGV57FgSC
	M2RSTUiHud6AANkM7gxN8/pNx05XG14I9NqPDbY07XcKmrSfZ1YZeah0MJRlVw==
X-Gm-Gg: ASbGncu+Zx+EKsSqp0DmX9mwBZ3MYwy1E4eAP7vNFaOfr2UqJdGJVGUtJmcQQJ8wMjD
	fUfAdhX137iDF5YE8xrkeIvfKAcM1NTef7IxF6EctXF6MTZT24URZO98LXg01N+nv/okWH0fhqt
	8GZ4E6eP/nGHu54rceJ2yN8XoIiPyuEC2rN10mprXkeUudjELxwbob+oVrEIM5CGEJmCDkQFHNc
	DeOE/YA9kv5H0ROh6ZHHQoWkQmr2aycUiT5/grPHyAxpRrfxvUWQ2zvcRCEcqcqfdk8jaLkMXcT
	LySJLFyUI6AxocuUTgZVHD7FQ3bASr5j1HbpNdZDbMPqW6zfTBiW6TWAwPuatvIpiYIf+U4L8mj
	fX5IYhHkSOdUQD9shGuwXgsRJluqx5jt1/wY7ot2GUzQ/D7CFDa7SmgYcM2QHuLTEymx2FRYEok
	MCNs5/NNn/VmnwyVTa/wl7D6CTyjFz
X-Google-Smtp-Source: AGHT+IHz1/3qBPK0kOsXl1OhygF0R8nxACLD/ilBv7AiKLeQgFAmsyil5LINoTFcuk/J1GRP+Ab4vQ==
X-Received: by 2002:a05:622a:118f:b0:4ab:95a7:71d6 with SMTP id d75a77b69052e-4b0fc8a3226mr7798551cf.56.1755032908311;
        Tue, 12 Aug 2025 14:08:28 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-07-174-93-0-120.dsl.bell.ca. [174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4afb76dcaa7sm138060731cf.16.2025.08.12.14.08.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 14:08:27 -0700 (PDT)
Message-ID: <390a7864-4b18-4424-8a18-28a65d3a6372@gmail.com>
Date: Tue, 12 Aug 2025 17:08:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <YQBPR0101MB98563BD5A9EFA5F51624A02D9C2BA@YQBPR0101MB9856.CANPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <YQBPR0101MB98563BD5A9EFA5F51624A02D9C2BA@YQBPR0101MB9856.CANPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: 6I74POZFN3C7NLGRDE6QUGTOV525W23V
X-Message-ID-Hash: 6I74POZFN3C7NLGRDE6QUGTOV525W23V
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 10 MHz Reference Input - Minimum Power
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6I74POZFN3C7NLGRDE6QUGTOV525W23V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyNS0wOC0xMiAxNjoyNywgS2F6YWtvZmYsIFBldGVyIChBU0MvQ1NBKSB3cm90ZToNCj4g
Tk9OIENMQVNTSUZJw4kgLyBVTkNMQVNTSUZJRUQNCj4NCj4gSSBhbSBwdXR0aW5nIHRvZ2V0aGVy
IGEgcGFydHMgbGlzdCBmb3IgYSB0ZXN0IHN0YXRpb24sIGFuZCBJIGFtIGN1cnJlbnRseSBwbGFu
bmluZyB0aGUgcmVmZXJlbmNlIGNsb2NrIGRpc3RyaWJ1dGlvbiBzY2hlbWUuIFdoYXQgaXMgdGhl
IG1pbmltdW0gcG93ZXIgZm9yIHRoZSBCMjEwIDEwIE1IeiByZWZlcmVuY2UgY2xvY2sgaW5wdXQ/
IFRoZSBrbm93bGVkZ2UgYmFzZSBpbmRpY2F0ZXMgKzE1IGRCbSBtYXhpbXVtLCBidXQgcHJvdmlk
ZXMgbm8gbWluaW11bTogaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfdXNycF9i
MjAwLmh0bWwNCj4NCj4gSSB3YXMgcGxhbm5pbmcgb24gZGlzdHJpYnV0aW5nIGEgMCBkQm0gc2lu
dXNvaWRhbCAxMCBNSHogcmVmZXJlbmNlIGNsb2NrIHRvIGFsbCB0aGUgdGVzdCBlcXVpcG1lbnQu
IEFueSBwcm9ibGVtcyB3aXRoIHRoaXMgYXBwcm9hY2ggd2l0aCBhIEIyMTA/DQo+DQo+IC1QZXRl
cg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tDQpUaGUgZGF0YSBzaGVldCBmb3IgdGhlIFBMTCB0aGF0IGlzIGRyaXZlbiBieSB0aGUg
UkVGIGNsb2NrIGlucHV0IHNheXMgDQotNWRCbSBtaW5pbXVtLsKgwqAgTXkgZ3Vlc3MgaXMgdGhh
dCBpZiB5b3VyIGRpc3RyaWJ1dG9yIGlzIGFibGUgdG8gZGVsaXZlciANCjBkQm0gb24gYWxsIHBv
cnRzLCBpdCBzaG91bGQgYmUgZmluZS4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
