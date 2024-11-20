Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3FE9D37CA
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 11:02:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63BD73862D1
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 05:02:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732096960; bh=eD45uARpRaBJCtZubAglXaoXryXuVYbjFL7TdiLtnkA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cn3i0IBaPn64AcdXtjhDQ6oy99sYa0lXwDPOA+tHNrFpYMKkJwASep7DJ8y8+ZeGH
	 GzY6KSNxFylMf2eqJVXEvS0brtJ9US4q/D41ojnXsJTUZyju3g7l65ciShY89pI7fU
	 6jXtHmydi7LfyRzCxxz27TFaxcy+eq77vKG/b9QhmcX6u2vtjmOF3JJLZ+4EwW0oHi
	 fosY5s+jNSX3gyQP8aWtV28FLmS9g4UilOwEQemwmgi33TQizKssoKy5LvkQoLDkEu
	 niNoOa4X4qW2gUB3vg6+tJwbqXsXoXmTd1X18ZAmdCKR6YfLISo6mwyv/6TbO2K3+l
	 ji+fRDDbpTX4Q==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id F41533861B0
	for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2024 05:02:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="FIunGUAM";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5cf6f367f97so7425772a12.0
        for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2024 02:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1732096932; x=1732701732; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nck/OYjkWANMMe4mFIRr2BifvyFHiR3IMp+j7m/343s=;
        b=FIunGUAMWyV0BRTX+oJOT6pSZ0wC2du+x50xt4GvFOlt5zxG/cd/evmddIoQ0oD/Q7
         Ozd0I56LXELVS8eFbcCEPNXRRw2RRZX6rOmRCbrhOqn8udRNh0olG4sW5m9srDcf7wa8
         DPb372WpbcSPR9Sq3lDxmk6iWBlL2kDyno/pRPNgAigesC5zRuM0aHTtl7qjr6KejHtA
         WggVtqkD/ZQkU7z5aOKkgRG/InPqUCKV98qEba/MUrNOx2B7UHaxMXZSsfNpV4ljSZtJ
         5YtF8xLP8KQGSH6az+3hS/oGElExM4spLG5qBBODNr3wWa9sixOLT+yuZHixpSplbAHq
         Fvnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732096932; x=1732701732;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nck/OYjkWANMMe4mFIRr2BifvyFHiR3IMp+j7m/343s=;
        b=DPFHpBairKnPbiiiQVIwJLHqEY3k7z6bMq+KHL2l8AyCCdR+gyktFSzfiQ5zFcmny4
         0T+e/TneW8PQZNi/A9OCSuUafLf/qUk+HfIQa8r28W6RcA9vnzt49tGZSqJ4NqPJBd7k
         uZcoX8tpV1d0D5tnNXZedYrgU5fIqJjAzlOxRM+W68mlKObPIRzeX14t9oRbt1hcemhk
         pwV4W3jTKzDUJRf7t82Z52t77vvIyQj5wilbiTPwAzu74Pgu7JyAG9ot6EbW1MnIR4zS
         MWFL3pT2nYMc4cNX7LtwfcNwO6JKykGZqaDjvTQpy0pyEAh0kbP3q2+GIMk/tcIGfGCx
         QPUA==
X-Gm-Message-State: AOJu0Yw2WPXUM9dc9QoSzj/TKNr4kQb3Vrrf6aQitng1CT42JYqAWjy3
	WIOW7M/RXjfQfSOmqdSexCYaTKBCCqTe8aCXVAXvZSZ3liSHozcmjiUsAKZhPgKDXSvgMIL1uaX
	cI1s=
X-Google-Smtp-Source: AGHT+IH+QvttBamcRUuIXwTqpsz4JbS9jiVIsuC84qvXPmksqPUdIIlBrFH0d+1PzDRPaJ+ApoxEyg==
X-Received: by 2002:a17:906:c107:b0:a9a:4f78:b8 with SMTP id a640c23a62f3a-aa4dd52c2f7mr182736366b.2.1732096932545;
        Wed, 20 Nov 2024 02:02:12 -0800 (PST)
Received: from ?IPV6:2001:16b8:cc51:9300:10fc:1619:bea3:90d1? ([2001:16b8:cc51:9300:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df2664csm742499966b.7.2024.11.20.02.02.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 02:02:12 -0800 (PST)
Message-ID: <366669ee-af7c-4552-920b-f3bfd193fe57@ettus.com>
Date: Wed, 20 Nov 2024 11:02:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <XvncymCGEa3CMQFUGuPuo88hj6LwjTG56X8r9RxIw2w@lists.ettus.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <XvncymCGEa3CMQFUGuPuo88hj6LwjTG56X8r9RxIw2w@lists.ettus.com>
Message-ID-Hash: MHM4JZ4XA7GUODDXEQYVPA6DDX6F5ZTX
X-Message-ID-Hash: MHM4JZ4XA7GUODDXEQYVPA6DDX6F5ZTX
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 power and gain levels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MHM4JZ4XA7GUODDXEQYVPA6DDX6F5ZTX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgSm9obiwNCg0KT24gMjAuMTEuMjQgMDg6NDUsIGpvaG5oaWdnaW5zZ2lzQGdtYWlsLmNvbSB3
cm90ZToNCj4NCj4gSSBoYXZlIGZldyBxdWVzdGlvbnMgcmVnYXJkaW5nIEIyMTAuDQo+DQo+IDEp
IEV0dHVzIHJlY29tbWVuZHMgLTE1IGRCbSBmb3IgdGhlIG1heCBpbnB1dCBwb3dlci4gSXMgdGhp
cyBwb3dlciBhdCB0aGUgUkYgcG9ydHMgKGkuZS4gDQo+IFJYLUEvUlgtQik/DQo+DQp5ZXMsIG5v
dGUgdGhvdWdoIHRoYXQgdGhpcyBpcyAibnVtYmluZ2x5IGxvdWQiIHRvIHRoZSByZWNlaXZlcnMs
IHNvIHlvdSBtaWdodCBub3QgYmUgYWJsZSANCnRvIHJlY2VpdmUgb3Zlcmx5IHVzZWZ1bCwgYnV0
IGl0J3MgInN0aWxsIGd1YXJhbnRlZWQgdG8gYmUgZGFtYWdlIGZyZWUgbG91ZCIuDQo+DQo+IDMp
IElmIG15IHNpZ25hbCBpcyBndWFyYW50ZWVkIHRvIGJlIGJlbG93IC0xNWRCbSwgY2FuIEkgc2V0
IHRoZSBCMjEwIGdhaW4gdG8gaXRzIA0KPiBtYXhpbXVtLCBpLmUuIDc2ZEIgc2FmZWx5IChleGNl
cHQgbWF5YmUgQURDIGNsaXBwaW5nKSB3aXRob3V0IGRhbWFnaW5nIGFueXRoaW5nPw0KPg0KeWVz
LCBidXQgeW91IHdpbGwgZGVmaW5pdGVseSBiZSBjbGlwcGluZyBhbGwgdGhlIHRpbWUgaWYgeW91
IGdldCBhbnl3aGVyZSBjbG9zZSB0byAtMTVkQm0uDQo+DQo+IDQpIElzIHRoZSA3NmRCIGdhaW4g
c29sZWx5IGR1ZSB0byB0aGUgQUQ5MzYxIG9yIGlzIHRoZXJlIGEgc2VwYXJhdGUgTE5BIG9uIEIy
MTA/DQo+DQpTZWUgdGhlIHNjaGVtYXRpYyBvbiBodHRwOi8vZmlsZXMuZXR0dXMuY29tOiBZb3Un
bGwgZmluZCBhIHNldCBvZiBzd2l0Y2hlcyAoaW5jbHVkaW5nIG9uZSANCnRvIHNlbGVjdCB0aGUg
cmlnaHQgYmFuZCksIGEgc2V0IG9mIGJhbHVucyAob3IgcmF0aGVyLCB1bmJhbHMpIGFuZCB0aGVu
IHRoZSBBRDkzNjENCj4NCj4gNSkgQUQ5MzYxIGlzIDEyIGJpdHMsIHRodXMgdGhlb3JldGljYWxs
eSBoYXMgNzJkQiBkeW5hbWljIHJhbmdlIHRob3VnaCBpbiBwcmFjdGljZSANCj4gYXBwYXJlbnRs
eSBpdCBpcyBhcm91bmQgNjAgZEIuIEFsdGhvdWdoIEIyMTAgaXMgbm90IGNhbGlicmF0ZWQgYWZ0
ZXIgbWFudWZhY3R1cmluZyB3aGF0IA0KPiBpcyB0aGUgdXN1YWwgYmFsbHBhcmsgZEJtIGxldmVs
IHRoYXQgY29ycmVzcG9uZHMgdG8gMCBkQkZTIGxldmVsPw0KPg0KRGVwZW5kcyBvbiB0aGUgZ2Fp
biB5b3Ugc2V0LCBhbmQgdGhlIGZyZXF1ZW5jeSB5b3UncmUgd29ya2luZyBvbi4gSSB3aXNoIEkg
Y291bGQgZ2l2ZSB5b3UgDQphIHNpbXBsZSBudW1iZXIgb3IgZXZlbiBqdXN0IGEgZ3JhcGggb3Zl
ciBnYWluLCBidXQgaXQncyBuZWNlc3NhcmlseSBhIHR3by1wYXJhbWV0ZXIgDQp0aGluZy4gWW91
IHdpbGwgaGF2ZSB0byBtZWFzdXJlLg0KDQpBdCBtYXggZ2FpbiwgeW91J2QgZXhwZWN0IGZ1bGwg
c2NhbGUgb3V0cHV0IHRvIGJlIGFjaGlldmVkIGRlZWVlZXAgaW4gdGhlIG5lZ2F0aXZlIGRCbS4N
Cg0KQmVzdCByZWdhcmRzLA0KTWFyY3VzIE3DvGxsZXINCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
