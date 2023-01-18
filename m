Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8DB67242C
	for <lists+usrp-users@lfdr.de>; Wed, 18 Jan 2023 17:52:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AE9A38438E
	for <lists+usrp-users@lfdr.de>; Wed, 18 Jan 2023 11:52:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674060747; bh=AN+8H5rz4qiISH6OENaK9/1KzFFVHAwHto75lti+j40=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZPtqrBTVDcVhOdFOEBcbdqyMXens1CVCB4a7CoOZaj0JL3mF3qOKzDIxkp2G+ZSbU
	 f/ZsuDvrvPy9FBU5bfsrsqX4RS3t/uTWmhASodG5W7UcFBulc5bz6V+CCZ5auaqFiz
	 5QMAzvC6xLS+WpjZ64pVarblR1Hpgq8G5tBaayTFB5KWZsvw6W4i4jzmOP/HaGDMCZ
	 EHck+7di2uXzZZacAcMu787uWCznSxbL4Y6XUrZ/M/TqGDz02SGdxfxYLakvIxuxG8
	 Rr1SkQeQv3CEhzCvVjSdT7Kn2g+U52FK9E1oCuCydDfqPZUjCMzCN3/Yt3Fx52us8F
	 xvX5OBAWTu3wQ==
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C63D384502
	for <usrp-users@lists.ettus.com>; Wed, 18 Jan 2023 11:52:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iT9VCjBY";
	dkim-atps=neutral
Received: by mail-vk1-f173.google.com with SMTP id i82so16491094vki.8
        for <usrp-users@lists.ettus.com>; Wed, 18 Jan 2023 08:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QAahvpGoADe7mX4ID0nPMjnA7Ra3HcHnTIr7T5BPITg=;
        b=iT9VCjBYLtz8QFeWKtupZRAmfX5cW7dc0UDIf+4nBcklJLzX9uSka7qVkhRVLUrfiq
         W5MNU+jaRXCbZqegisAyuM57zCZfCyfuWtr2mlGoeYd3HObVQj3S92puSYIwxL48TymD
         vu+RZXsHub7b0hpaE/V/muOAOkOH7lzK9le8id1slG3jeOGdOp8XbUQGZ0UM/N/oYHmf
         hfUSPVOhU1oHnFNSeBulKBsp3F8H+faMTTbIPZum2xw4fNh7W9JW7B4S7Br+KDY45W43
         1D4T7gVn/RhiEAaeFUhJAlQ4FXPmVx7wJ4Zp6rXK2byXSJdvU1zMcD2H+VJ10OnXrDMM
         xaig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QAahvpGoADe7mX4ID0nPMjnA7Ra3HcHnTIr7T5BPITg=;
        b=P8XbNTUTUazs/kq5SMdwpSHEsS/RaVu5qoGQtKW3ofLv5f/pUF0XBZ9RL5ebLVUFa1
         L62Xi2fNrsniIb1ZDDKDJwkQH4c6uj5GKzk4cUDzkLAnFnoKEXMi60mngz8qjidLPrLS
         AEzDPIJ+tjVDA6nLAGYhgIrPgVtlozC6Ef/jgC2It5kUmh+wetEbf6TuNSMMspR57pRg
         NcJmoXL0WIquBAG2gqqVqB8YyQ1EiF6EIRYbF34vouULWeS9F1cgpw7vrq/CvkKpHQKJ
         PHqqIkTAJZbjNbhttq+q3fA/w/ZTAKD6ib6lp1JnbF/uJpw4AtQ6+zwJpLdAEYKGMfHv
         XSWw==
X-Gm-Message-State: AFqh2kq+hZWW7vR3jWhNgGD+/OLfWKuR4rwMgOZTC/X/9qAP4IAoFaPW
	FaMOQG/N9X3aZqvsN3iFt1w=
X-Google-Smtp-Source: AMrXdXtnaDZ7rzJXSqmpWJpUINkcQMxx9oBFzjYqzVPgojfu+qvNq4gzDlPjZy474ZsnEv0Uj8+YnA==
X-Received: by 2002:a1f:9bcd:0:b0:3da:de07:66a1 with SMTP id d196-20020a1f9bcd000000b003dade0766a1mr4189893vke.14.1674060738724;
        Wed, 18 Jan 2023 08:52:18 -0800 (PST)
Received: from [192.168.2.174] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id w6-20020a05620a444600b00706719da000sm6120611qkp.103.2023.01.18.08.52.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 08:52:18 -0800 (PST)
Message-ID: <f159ed32-3c3a-a7f8-4aa5-23b7cbbeb16a@gmail.com>
Date: Wed, 18 Jan 2023 11:52:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: mychk1 1 <mychk2@gmail.com>
References: <CAEygNraa096PUD+3D_EUzKoOW4PnxbmyxZ7O5tNqEUW3zmudfQ@mail.gmail.com>
 <71fccf0a-dc79-2695-7433-42382fb02c2c@gmail.com>
 <CAEygNrYO8Ji0dqY3-TcUsFJ1CVkCLVX7B09hUudnBJ+JY2UK6g@mail.gmail.com>
 <20f83cf4-3f8a-0729-a5e5-5c07f13e95ca@gmail.com>
 <CAEygNrZ1KAm9U_X5EQCR_nXntLs_ip27-inL_44vxnV5r34a4Q@mail.gmail.com>
 <78fc5b80-da7f-bb4b-df33-388f02af5ee2@gmail.com>
 <CAEygNrZYaHU1mHBnVET8MPdYB7GEspHcFuf+aTEu4i6G8c936A@mail.gmail.com>
 <d0ebe026-1452-9867-e867-dafacce9288f@gmail.com>
 <CAEygNraUZOKVEaERfhdRHF9SHo--EPhm4eEpOy22jH=fQWPHEQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEygNraUZOKVEaERfhdRHF9SHo--EPhm4eEpOy22jH=fQWPHEQ@mail.gmail.com>
Message-ID-Hash: NW24VDCGSE5D5F5HDZAMBC36ZVOS5XCO
X-Message-ID-Hash: NW24VDCGSE5D5F5HDZAMBC36ZVOS5XCO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM compat error using USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NW24VDCGSE5D5F5HDZAMBC36ZVOS5XCO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDEvMjAyMyAxMTozMSwgbXljaGsxIDEgd3JvdGU6DQo+IFRoYW5rcyBNYXJjdXMgZm9y
IHlvdXIgc3VwcG9ydC4NCj4NCj4gQWN1YWxseSwgSSBiZWxpdmUgdGhpcyBlcnJvciBpcyBub3Qg
cmVsYXRlZCB0byBPQUkgc3BlY2lmaWNhbGx5Lg0KPiBOb3csIEkgY2hhbmdlIHRoZSBVSEQgdmVy
c2lvbiB0byBVSEQgVjQuMi4wIGFuZCB3aGVuIGFuZCB0aGUgc2FtZSANCj4gZXJyb3IgYXBwZWFy
cw0KPg0KPiB1aGRfaW1hZ2VfbG9hZGVyIC0tYXJncyAidHlwZT1uM3h4LGFkZHI9MTkyLjE2OC4x
MC4yLGZwZ2E9SEciDQo+DQo+IFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDcu
NS4wOyBCb29zdF8xMDY1MDE7IA0KPiBVSERfNC4yLjAuSEVBRC0wLWc0NmE3MGQ4NQ0KPiBbSU5G
T10gW01QTURdIEluaXRpYWxpemluZyAxIGRldmljZShzKSBpbiBwYXJhbGxlbCB3aXRoIGFyZ3M6
IA0KPiBtZ210X2FkZHI9MTkyLjE2OC4xMC4yLHR5cGU9bjN4eCxwcm9kdWN0PW4zMTAsc2VyaWFs
PTMxRkQ5REQsZnBnYT1IRyxjbGFpbWVkPUZhbHNlLHNraXBfaW5pdD0xDQo+IFtJTkZPXSBbTVBN
RF0gQ2xhaW1lZCBkZXZpY2Ugd2l0aG91dCBmdWxsIGluaXRpYWxpemF0aW9uLg0KPiBbSU5GT10g
W01QTUQgSU1BR0UgTE9BREVSXSBTdGFydGluZyB1cGRhdGUuIFRoaXMgbWF5IHRha2UgYSB3aGls
ZS4NCj4gW0lORk9dIFtNUE0uUGVyaXBoTWFuYWdlcl0gSW5zdGFsbGluZyBjb21wb25lbnQgYGZw
Z2EnDQo+IFtJTkZPXSBbTVBNLlBlcmlwaE1hbmFnZXJdIEluc3RhbGxpbmcgY29tcG9uZW50IGBk
dHMnDQo+IFtJTkZPXSBbTVBNLlJQQ1NlcnZlcl0gUmVzZXR0aW5nIHBlcmlwaGVyYWwgbWFuYWdl
ci4NCj4gW0lORk9dIFtNUE0uUGVyaXBoTWFuYWdlcl0gRGV2aWNlIHNlcmlhbCBudW1iZXI6IDMx
RkQ5REQNCj4gW0lORk9dIFtNUE0uUGVyaXBoTWFuYWdlcl0gSW5pdGlhbGl6ZWQgMiBkYXVnaHRl
cmJvYXJkKHMpLg0KPiBbSU5GT10gW01QTS5QZXJpcGhNYW5hZ2VyXSBpbml0KCkgY2FsbGVkIHdp
dGggZGV2aWNlIGFyZ3MgDQo+IGBjbG9ja19zb3VyY2U9aW50ZXJuYWwsdGltZV9zb3VyY2U9aW50
ZXJuYWwnLg0KPiBbSU5GT10gW01QTUQgSU1BR0UgTE9BREVSXSBVcGRhdGUgY29tcG9uZW50IGZ1
bmN0aW9uIHN1Y2NlZWRlZC4NCj4gW0lORk9dIFtNUE1EXSBJbml0aWFsaXppbmcgMSBkZXZpY2Uo
cykgaW4gcGFyYWxsZWwgd2l0aCBhcmdzOiANCj4gbWdtdF9hZGRyPTE5Mi4xNjguMTAuMix0eXBl
PW4zeHgscHJvZHVjdD1uMzEwLHNlcmlhbD0zMUZEOURELGZwZ2E9SEcsY2xhaW1lZD1GYWxzZSxh
ZGRyPTE5Mi4xNjguMTAuMixmaW5kX2FsbD0xDQo+IFtFUlJPUl0gW01QTURdIE1QTSBtaW5vciBj
b21wYXQgbnVtYmVyIG1pc21hdGNoLiBFeHBlY3RlZDogNC4yIEFjdHVhbDogDQo+IDQuMC4gUGxl
YXNlIHVwZGF0ZSB0aGUgdmVyc2lvbiBvZiBNUE0gb24geW91ciBVU1JQIGRldmljZS4NCj4gRXJy
b3I6IFJ1bnRpbWVFcnJvcjogTVBNIG1pbm9yIGNvbXBhdCBudW1iZXIgbWlzbWF0Y2guIEV4cGVj
dGVkOiA0LjIgDQo+IEFjdHVhbDogNC4wLiBQbGVhc2UgdXBkYXRlIHRoZSB2ZXJzaW9uIG9mIE1Q
TSBvbiB5b3VyIFVTUlAgZGV2aWNlLg0KPg0KUmlnaHQuwqAgQmVjYXVzZSB5b3UgdXBkYXRlZCBV
SEQgb24geW91ciBob3N0IFBDLCBidXQgdGhlIE4zMTAgKnN5c3RlbSANCmltYWdlKiBoYXNuJ3Qg
YmVlbiB1cGRhdGVkIHRvIHRoZSBzYW1lIHZlcnNpb24geW91J3JlDQogwqAgcnVubmluZyBvbiB0
aGUgaG9zdC7CoCBVcGRhdGluZyB0aGUgRlBHQSBpcyBOT1QgdGhlIHNhbWUgYXMgdXBkYXRpbmcg
DQp0aGUgZnVsbCBzeXN0ZW0gaW1hZ2UuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
