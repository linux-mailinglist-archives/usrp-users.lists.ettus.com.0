Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B55A39D08
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 14:11:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF0913854D8
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 08:11:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739884317; bh=ozQBgHqV1QwqWSRNCvauU+LM2wynpgy6lc+iZwQNKvs=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GAaVWnDQ3Su3Qxw+imywWI9Whs5oxYnSURY1fL6yAvxgmDflRsG3ofnZcEOgtPJlz
	 bZYSBGumretOrBUljWXA6Z8ZxkEqkvTDLXxO66Nler7W0Fzeuv9cawLot6UJMTJcQk
	 jC56JkDtM+zUrO6L1rEqNPviQr1sAfY9eiAsFrB+Q55PcE8wJSboYsY7cPnM7uW7py
	 6dvyN85vwYyTxB1ZmlxxphY3b5NdxCqEc1XqfaLNYp/+SjQVCLvCYBNL5iMTvVgW7c
	 cE0HCxVkQ3nebq6fHHRmTclly8hzzyeExwg1xl8LqQAKMvse0PhndbyYwVmqQuZdFi
	 abbltb4YcH8/g==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id AE0F83854A2
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 08:11:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RVcwDJ67";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7c089b2e239so318430185a.0
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 05:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739884312; x=1740489112; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Q2LV9ghrfiYXTLzBefYHLNI1gaDlTJm/2s0MN/Djy8=;
        b=RVcwDJ677ctzni0nmyptBpy/21IC9BNVNjHNWudbJd5/lFw6m+EHxf5wbtwwXGrykg
         veoBZ1J5dt+yK88lX/eqmhnFUmL5MjXC+SNQHquvi2EA1WBH2NW0oAx5gWl1SJT3WZAs
         l3RTphKhwY2BYcA1PO33G2Wi69jLHg3btOREtuVSlc6NY06uQA8GzmtZHLp1NkMa1ONk
         WshnAvm/huY9kkGMOO+yQgjA/P0HBya79B54pT0011Sq6lmgLvAWmXLLcU00t5v40p8D
         1XP6KC7td15WLJ74HOGb3SqGjpvzluPpUMIRgybu4PJ3wF+C1Mq/DZax7UAWWcaGj0Bg
         eaDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739884312; x=1740489112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Q2LV9ghrfiYXTLzBefYHLNI1gaDlTJm/2s0MN/Djy8=;
        b=kuTjkbxeth/FoiZb0UEr7aNFrAWEf9lv4bUIGxCpq3lQorEqiepXL5/Zd6EGqetYCb
         KU7xDxe1tvm23T2SG/RlxGQCkKQtxEfLUe7r77tk0uCsT0ochVa96N0zqLJLvlev0Sb2
         kewT/oORJ4sZU3OlcJmHrVWigutvJR/+S8Lwu/LPX4OGXQMNzg9vub4ym89ydBZ5JvF7
         Q8wxiPcwslB97/75k1WIHLIySRGbmwtkTang/WzYB8GvZsP8rGpAlfCVr5pPxCIUSqUd
         1db0F0LdycbgpEwf+KlSJGiUBJKKzUXEoOna1MWir7yZbpheAvv/JL4+BIoLCMDp0Kva
         SpaQ==
X-Gm-Message-State: AOJu0Ywd4iGorJ0+NCSJqp2pPLpeRb8oEbohEPzXcJpN/0R88E+hh6T1
	69IluA+oD3a6U7EpDpd5dzmGiBV944JQt+Z2NnjeFummIHIZi4q4Wyii7A==
X-Gm-Gg: ASbGncs+OWJr2lqUOmmBiAwHToeISpxRghNQjge6KBhZpL+EdPRDPL7i21Bf1ccd+fU
	OjqdTo7sL3zwSTXawOWOan8Jeux6zuoDSD07Cu3jWbik5sY/n3U9Ii+Qe91oRJqSRzz9ICUYJ0d
	JxH4O0VLVdmnZm9QNflNgDuxV0M5an0uMWJiZ2XZkWgdM0iwCvy2Hg0Kzjcu9KmpRYCKds2Iw4K
	yrOM/hlKSqqBse06viIoPsYxnDC+rfss1NTezR43My0x3gnPS8X6l4WUb0lxOix6vfVqyoourXk
	JIrBzsEvhluMw/3Qyi/TUJ2fGc+QN2rIW985
X-Google-Smtp-Source: AGHT+IEns9YhWk1xikj6z7NPp1S9XJwmCgHoAsok38INvCl6oZt0+toC55hyR1WW+gbiiZUvqNzl/g==
X-Received: by 2002:a05:620a:2b44:b0:7b1:4a2a:9ae0 with SMTP id af79cd13be357-7c07a8913c0mr3287016285a.9.1739884311661;
        Tue, 18 Feb 2025 05:11:51 -0800 (PST)
Received: from smtpclient.apple ([142.115.37.13])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c0a49c29bfsm172034785a.45.2025.02.18.05.11.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 05:11:51 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 18 Feb 2025 08:11:29 -0500
Message-Id: <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com>
References: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
In-Reply-To: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
X-Mailer: iPhone Mail (22B91)
Message-ID-Hash: IMO6HO4FEZMCZRUPOF4JDDVIKG5X55BZ
X-Message-ID-Hash: IMO6HO4FEZMCZRUPOF4JDDVIKG5X55BZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IMO6HO4FEZMCZRUPOF4JDDVIKG5X55BZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmUgd2lsbCBhbHdheXMgYmUgc29tZSBlZGdlIHJvbGwgb2ZmLiBEZWNpbWF0aW9uIGluY2x1
ZGVzIGZpbHRlcmluZyBhbmQgdGhvc2UgZmlsdGVycyBjYW5ub3QgYmUgaW5maW5pdGVseSBzdGVl
cC4gDQpTZW50IGZyb20gbXkgaVBob25lDQoNCj4gT24gRmViIDE4LCAyMDI1LCBhdCAyOjEy4oCv
QU0sIEJyZW5kYW4gSG9yc2ZpZWxkIDxicmVuZGFuLmhvcnNmaWVsZEB2ZWN0YWxhYnMuY29tPiB3
cm90ZToNCj4gDQo+IO+7vw0KPiBIaSBBbGwsDQo+IA0KPiBJIGhhdmUgYSBxdWVzdGlvbiBhYm91
dCB0aGUgdXNhYmxlIGJhbmR3aWR0aCBvZiB0aGUgWDMwMCBVU1JQIC8gVUJYLTE2MCBkYXVnaHRl
cmJvYXJkIGNvbWJvIGF0IHNhbXBsaW5nIHJhdGVzIGJlbG93IDIwMCBNc3BzOg0KPiANCj4gQXMg
SSB1bmRlcnN0YW5kIGl0LCB0aGUgVUJYLTE2MCByZWNlaXZlciBoYXMgYW4gYW5hbG9nIChoYXJk
d2FyZSkgZmlsdGVyIGJlZm9yZSB0aGUgQURDIHRoYXQgbGltaXRzIHRoZSB1c2FibGUgYmFuZHdp
ZHRoIHRvIDE2MCBNSHosIHdoaWxlIHRoZSBBREMgcnVucyBhdCAyMDAgTXNwcy4gIFRoZXJlZm9y
ZSB0aGUgdXNhYmxlIGJhbmR3aWR0aCBpcyBhcm91bmQgODAlIG9mIHRoZSBzYW1wbGUgcmF0ZS4N
Cj4gDQo+IE15IHF1ZXN0aW9uIGlzOiAgV2hhdCBpcyB0aGUgdXNhYmxlIGJhbmR3aWR0aCBhdCBs
b3dlciBzYW1wbGluZyByYXRlcz8gIERvZXMgdGhlIDgwJSBmYWN0b3IgYWx3YXlzIGFwcGx5PyAg
DQo+IA0KPiBGb3IgZXhhbXBsZSwgaWYgSSBzZXQgdGhlIGRlY2ltYXRpb24gZmFjdG9yIHRvIDQs
IHNvIHRoYXQgbXkgc2FtcGxpbmcgcmF0ZSBpcyA1MCBNc3BzLCBkb2VzIHRoaXMgbWVhbiB0aGF0
IHRoZSB1c2FibGUgYmFuZHdpZHRoIHdpbGwgYmUgNDAgTUh6Pw0KPiANCj4gVGhhbmtzICYgUmVn
YXJkcywNCj4gQnJlbmRhbi4NCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
