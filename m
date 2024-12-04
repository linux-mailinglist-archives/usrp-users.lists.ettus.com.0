Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3EC9E48BE
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 00:23:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BEC3D3854CF
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 18:23:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733354629; bh=yrBv0gn8QwsPSFg7aMLRMFVABPjXTdePRSXZSYz/Ytg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=arjhUIh3Bd/XCw6X/k8Lv6btGwPY6PfDCc8rNpP4YTu3bdi9IQIiaEa4a4NqCW0Na
	 IDYFRd7IKarOvsdHtVVNimRZrz4CcfvOk2UUjzxdYRf9pG3fQFSnL7lZ1vk/PvRm94
	 /pShr+L5kzfv46jsxrTsgHji4zKVEDZoGaq5D1BcSpaqwbRLRXXwLNTuIE8RD5kID+
	 zwy5HKrZVqtuVqvy0x+L12m3asPCMuY1GfWA0pW2QEW0HDF+zvHwRGqzZwu/jjZGef
	 24UuhNI60zCFsZKisny3RMPTEppNBl+DyCO3UD/H7+1FPybeQq0I8aZ+NT1htzCU3+
	 RNcMYqSi9fkyQ==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E7A83850B2
	for <usrp-users@lists.ettus.com>; Wed,  4 Dec 2024 18:23:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DdjeVhWk";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7b65f8cb347so37084785a.3
        for <usrp-users@lists.ettus.com>; Wed, 04 Dec 2024 15:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733354590; x=1733959390; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=clODu7EMltqECHdRhmxINVXabSgsBZL95EIWIRh4Irg=;
        b=DdjeVhWkzEepnrZwzRSrdssHFBV3CP/E8sbsVPguxFKcaKeG2zSQi1RtGzWfIEJX5j
         dTZqGxPfnNJBYjR/SC0Azip9/r0rL9Ywaa3Bh3eQFOz8XWUPd/qFQuzZkf6K4JgW6/3i
         yNciOqR0cepsNJyzDe2l9FqtY5dDZsujYpBnTCs4IHo92O9qOaIHB2he5gTiKz9VLEQy
         2JSSGTTP2Y69ilFr2Ky81OJ33Highg9S3nY1Mq8JyjbX6b2HpKNUiPN6rhPJkU4nacTh
         EPNWbB9De55f/VCeLDRVzrkSZ+b7uukMxBLbujfeebfdJ9UhS0b9ozfDkW3IdoUapPKP
         5QLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733354590; x=1733959390;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=clODu7EMltqECHdRhmxINVXabSgsBZL95EIWIRh4Irg=;
        b=WS8++P/xp14SX4u37McCdbaYw6lMx7FTVAKJVMYQwSK2fhLr5ku8byPQBnjz4DWkIe
         +KVQjL9A8b3LmoM9shfL62I5tEOOnLAbhIJnVqGgl8fjtC0c5z3kxxsZX59yOttCzheh
         Aba4LzWHPaUjHR2tPjIYyyZl7F2+rXmNXEFQ0EN/J3cHFi+qMq5LHt0GKaKi7WCGSWQW
         I9nJRLyTwjU2g2IgDdGWeX2eW0sYOnvX5392L2QZ0Rm6acCOYd/W5/qrf27DQAYEw97b
         0ioTKhyxFpOJMhp4EvWDRR/KJOfzeRbESk6VHkOq0N0AOYF2ZeVMcC18TMRgEVFiFRcA
         FZsA==
X-Gm-Message-State: AOJu0Yz4TzWYRzLyb6fUFK1zcOG+RGLWn0j3Uu+m+NH8HaNf52DAX6mw
	P2AVaOGdPtsUPouuwLt1ou8JlvAFGD00zG9aYYi6tEy0yYluvx++dLANEg==
X-Gm-Gg: ASbGncveJsEQDC/BExs7yJWzMk2VD7DMwn44tQZjhPZLxm4eqFdIrIXeIYuqqIifdXc
	RGZV62f5ZH0QHaQwXyVkuqtF89Xg0vCC2404NwbRDc2jVNwJHI4H8YGgfl9ihREmNhxDXETdqz4
	yXg0xjaKtjSJF7pTQMnXkHciNGh4lOTKskaXrjtj2EPo+kv0YOwnX1MSL8SF4OWP9+yvne/42Ip
	Q9Jk0e4AJhajnE0LAm/M+z32BFcOQ57x3Ip8jCqAqI79jqsYYXik0O9AAnjZ21ZouXWUWkdoeYk
	jWsb+Q1QKtD4G6ukkbn56Q6DrWu9YfgbzxeLlxK4SQ5ApfaX
X-Google-Smtp-Source: AGHT+IFDj38dGPaVnt4rn4wBZyRiyhYyrmQT6XEjW8wqLZIPynfQe7JySN1/kWm7Vb99v8em5pLe7A==
X-Received: by 2002:a05:620a:44d6:b0:7b6:701c:9e3 with SMTP id af79cd13be357-7b6a61c3fe3mr1011501385a.45.1733354588425;
        Wed, 04 Dec 2024 15:23:08 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b6b5a5b65bsm6201285a.38.2024.12.04.15.23.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 15:23:07 -0800 (PST)
Message-ID: <a38cfc69-ef62-4668-9da0-51008eeefd38@gmail.com>
Date: Wed, 4 Dec 2024 18:23:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <fjMxPgCNLQeba4fkOn0oege8rf8Rf9qnuMMpo473yIw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <fjMxPgCNLQeba4fkOn0oege8rf8Rf9qnuMMpo473yIw@lists.ettus.com>
Message-ID-Hash: ROZ5HYYDELX3VH3VGSQP5JXMDBSJD65G
X-Message-ID-Hash: ROZ5HYYDELX3VH3VGSQP5JXMDBSJD65G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trying to run rfnoc blocks in example uhd folder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ROZ5HYYDELX3VH3VGSQP5JXMDBSJD65G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDQvMTIvMjAyNCAxODoyMCwgZGhwYW5jaGFhaUBnbWFpbC5jb20gd3JvdGU6DQo+DQo+IEni
gJltIGF0dGVtcHRpbmcgdG8gcnVuIHNvbWUgb2YgdGhlIGV4YW1wbGUgcmZub2MgZmxvd2dyYXBo
cyBpbiBHbnJ1YWRpbyANCj4gdXNpbmcgWDQxMC4gSSBrZWVwIGdldHRpbmcgYW4gZXJyb3IgdGhh
dOKAmXMgc2ltaWxhciB0byB0aGUgZm9sbG93aW5nOg0KPg0KPiBsaW5lIDExNCwgaW4gX19pbml0
X18NCj4NCj4gc2VsZi51aGRfcmZub2NfYWRkc3ViXzAgPSB1aGQucmZub2NfYmxvY2tfZ2VuZXJp
YygNCj4NCj4gUnVudGltZUVycm9yOiBDYW5ub3QgZmluZCBibG9jayB3aXRoIElEOiBBZGRTdWIg
RGV2aWNlL0luc3RhbmNlOiAtMS8tMQ0KPg0KPiBJ4oCZbSB1c2luZyB0aGUgbGF0ZXN0IEdudXJh
ZGlvIHYzLjExLjAuMA0KPg0KPiBEb2VzIGFueW9uZSBrbm93IHdoYXQgdGhhdCBtZWFucyBhbmQg
aG93IHRvIGZpeD8NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KTGlrZWx5IGJlY2F1c2UgdGhlIGltYWdlIHJ1bm5pbmcg
b24geW91ciBkZXZpY2UgZG9lc24ndCBoYXZlIHRoYXQgYmxvY2sgDQppbiB0aGUgRlBHQSBpbWFn
ZS7CoCBUaGUgImJhc2ljIiBpbWFnZXMNCiDCoCBkb24ndCBoYXZlIG11Y2ggIndpcmVkIGluIiB0
byB0aGVtLg0KDQpVc2UgdWhkX3VzcnBfcHJvYmUgd2l0aCB0aGUgZGV2aWNlIGFuZCBzZWUgd2hp
Y2ggUkZOb0MgYmxvY2tzIGFyZSBpbiB0aGUgDQppbWFnZS4NCg0KWW91J2xsIG5lZWQgdGhlIGFi
aWxpdHkgdG8gZ2VuZXJhdGUgeW91ciBvd24gRlBHQSBpbWFnZXMgdG8gYWRkIGluIFJGTm9DIA0K
YmxvY2tzIG9mIHlvdXIgY2hvb3NpbmcuLi4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
