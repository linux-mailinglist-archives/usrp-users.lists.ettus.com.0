Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C535575DD4F
	for <lists+usrp-users@lfdr.de>; Sat, 22 Jul 2023 17:52:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C6D423842BB
	for <lists+usrp-users@lfdr.de>; Sat, 22 Jul 2023 11:52:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690041156; bh=YoxbEMH6/rqKE31yFzsJzDJ26Gr9vLHTZ4R5Nrihl3g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LQNheFHSfaDSVJJTYdX0S+uI1OrnbivwXLk18nxlJ1tslXvYgrAxjtkJNRrHNE5xZ
	 DKhJ+Xy0x1IX0Cec/D29BcRhO0ZSTYL1QB4Htjek/P7NWAc3GMXRloU/UNcdaxO3Yz
	 JTHLlZod1liSMgJ3S+qdPlE4KBAelwzM2CPIUKWdbMUTzzftHJ1+j/AtThRZXOnY+B
	 Zky64VldF62NgnclIgaRH9PgqFFH64l27FhMqPE73XNFqNb09Zfu9vsvy5S91J9XJt
	 RMpiQUnaNXLRU/Oq5xHHW0ImVgLHBS15GPUdEBbeNX6sN8ezHw0hr77hWMmsDGKHvr
	 BbqxIqBe5BJnA==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 3FFED383C88
	for <usrp-users@lists.ettus.com>; Sat, 22 Jul 2023 11:52:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G3+uJxw8";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7672073e7b9so226986285a.0
        for <usrp-users@lists.ettus.com>; Sat, 22 Jul 2023 08:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690041140; x=1690645940;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uu8hP+1+yQxUpliPlIxw/4j35WAk6vwChNNmW8nskrg=;
        b=G3+uJxw81MifjoQYrZb72xjC5Hl8veQFEG7LoeLun8ceZ7cTHWiO+CIb3dQ14OpuZQ
         HBT2nt6XiWwwX732z6msqWT6rzgn/KkBmhJvJO36QNGgxTfcOomBURUOCve10eUISkAm
         uvttfU/ebGFIWfZ6AVUNGW1jYyj+ESUm0Vnb3DBORPz9B6J8+kQO0h7HOKXypq5RMkcD
         WRl6I0y7Z7iXsf6Rg77yjs27pVv3WZ1XrgNqH3pr/7Iki3VRfm2l+cqkMMdzgyLJY1YP
         Fnd4j5SrFmQflC5xDGiqloxhobr13aVgsExhPln5QZyAxW1/YrqaenL4Npyw7MGwz5V4
         OxKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690041140; x=1690645940;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uu8hP+1+yQxUpliPlIxw/4j35WAk6vwChNNmW8nskrg=;
        b=XQLuU5AG3MP2+Zsh0i3UFZ4vE1SV5PgCaW5gLS7Bzs9aDmLWxp+J1qSNkbviP2/L0x
         RH9ZMaB/AqMFgS1WyC6ic7KOrfuhDgmDb9JUsIQ8NeMsp1PFSawUU0RiIwoQNPumZjyi
         6Vy2PBPIwQoP+gtkxwHjhLZQEe6z7qaJgv5Qbr2mzq+VrXa3746Bmxplu07kcYB8U9GA
         6bAyG9vtSTLej6jjteMWKH1gsUYv6VAgFl/ysFZQsCDg/g8DkYHZZR8Ww6NMcIantHGP
         36ryhjLGk/HV7GIu4lSzBNylITkqFWsP7F6Hy5uwY/1HXXHCIUInXUw/G6/zkoneiwzE
         BVeQ==
X-Gm-Message-State: ABy/qLZhxGeaIaKbivBxeTNmJFvhwu32xBjGsn5WDonHA3shL7pqMIFN
	6XCwTmdep+CK5la1kKBbIM3lqmFCIjc=
X-Google-Smtp-Source: APBJJlFtD1dxb8QwVlLdnOzTnBMZkiIRkPCWOqZZT/bRNbnXpOJLAoqAy+/C9IjN62hLI+UbsCTpdQ==
X-Received: by 2002:a05:620a:2915:b0:768:1db5:d9d1 with SMTP id m21-20020a05620a291500b007681db5d9d1mr3925914qkp.5.1690041140321;
        Sat, 22 Jul 2023 08:52:20 -0700 (PDT)
Received: from [192.168.2.166] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id s25-20020a05620a16b900b00767d47eb29bsm1859432qkj.119.2023.07.22.08.52.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Jul 2023 08:52:20 -0700 (PDT)
Message-ID: <4a548ba5-2ef6-1ad3-1ad6-6ecdeb098519@gmail.com>
Date: Sat, 22 Jul 2023 11:52:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <84aa53a3-be12-092e-a96f-2bc9232fe5f4@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <84aa53a3-be12-092e-a96f-2bc9232fe5f4@gmail.com>
Message-ID-Hash: YEGKLOEWKBBNFHGNMGRC22K2ZUDHDOUE
X-Message-ID-Hash: YEGKLOEWKBBNFHGNMGRC22K2ZUDHDOUE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: uhd install with ubuntu 23.04
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YEGKLOEWKBBNFHGNMGRC22K2ZUDHDOUE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjIvMDcvMjAyMyAxMTo0OCwgcGFnZSBoZWxsZXIgd3JvdGU6DQo+IEhlcmUgSSBnbyBkb3du
IGEgcm9hZCBJIGRpZCBub3Qgd2FudCB0byB0cmF2ZWwuIEkgaW5zdGFsbGVkIFVidW50dSANCj4g
MjMuMDQgb250byBhIFBpIDRCLiBJIHNlZSB0aGUgVUhEIGluc3RhbGwgaW5zdHJ1Y3Rpb25zIG9u
bHkgdGFsayBhYm91dCANCj4gVWJ1bnR1IDIwLjA0IGluIHJlZ2FyZHMgdG8gcmVxdWlyZWQgZGVw
ZW5kZW5jaWVzLiBJIHVzZWQgdGhhdCBzZXQuIA0KPiBDbWFrZSBmYWlscy4gU3VnZ2VzdGlvbnMg
YXJlIHdlbGNvbWVkLiBJZiB5b3Ugc3VnZ2VzdCB0cnlpbmcgYW4gDQo+IGVhcmxpZXIgdmVyc2lv
biwgcGxlYXNlIGxldCBtZSBrbm93IGhvdyB0byBiYWNrIHVwIG9uY2UgY21ha2UgaGFzIHJ1bi4g
DQo+IEkgZG9uJ3Qga25vdyBob3cgdG8gcmVzdGFydCB0aGUgcHJvY2Vzcy4gVGhhbmtzLiAtcA0K
Pg0KPiAkIGdpdCBjaGVja291dCB2NC40LjAuMC1yYzENCj4NCj4gMDp+L3dvcmthcmVhL3VoZC9o
b3N0L2J1aWxkMSQgY21ha2UgLi4NCj4gLS0gVGhlIENYWCBjb21waWxlciBpZGVudGlmaWNhdGlv
biBpcyBHTlUgMTIuMi4wDQo+IC0tIFRoZSBDIGNvbXBpbGVyIGlkZW50aWZpY2F0aW9uIGlzIEdO
VSAxMi4yLjANCj4gLS0gRGV0ZWN0aW5nIENYWCBjb21waWxlciBBQkkgaW5mbw0KPiAtLSBEZXRl
Y3RpbmcgQ1hYIGNvbXBpbGVyIEFCSSBpbmZvIC0gZG9uZQ0KPiAtLSBDaGVjayBmb3Igd29ya2lu
ZyBDWFggY29tcGlsZXI6IC91c3IvYmluL2MrKyAtIHNraXBwZWQNCj4gLS0gRGV0ZWN0aW5nIENY
WCBjb21waWxlIGZlYXR1cmVzDQo+IC0tIERldGVjdGluZyBDWFggY29tcGlsZSBmZWF0dXJlcyAt
IGRvbmUNCj4gLS0gRGV0ZWN0aW5nIEMgY29tcGlsZXIgQUJJIGluZm8NCj4gLS0gRGV0ZWN0aW5n
IEMgY29tcGlsZXIgQUJJIGluZm8gLSBkb25lDQo+IC0tIENoZWNrIGZvciB3b3JraW5nIEMgY29t
cGlsZXI6IC91c3IvYmluL2NjIC0gc2tpcHBlZA0KPiAtLSBEZXRlY3RpbmcgQyBjb21waWxlIGZl
YXR1cmVzDQo+IC0tIERldGVjdGluZyBDIGNvbXBpbGUgZmVhdHVyZXMgLSBkb25lDQpVYnVudHUg
MjMuMDQgcGFja2FnZXMgVUhEIDQuMy4wLjAuwqDCoMKgIFVubGVzcyB5b3UgYWJzb2x1dGVseSBu
ZWVkIHRoZSANCmxhdGVzdCBVSEQsIHRoZXJlJ3Mgbm8gcmVhc29uIHRvIGJ1aWxkIGZyb20gc291
cmNlLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tCg==
