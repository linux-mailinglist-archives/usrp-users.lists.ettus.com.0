Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB8B74F44B
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jul 2023 18:04:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86790380C96
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jul 2023 12:04:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689091477; bh=eM7/JOPCc6ufYfeC2wRpv5v/t4e7GtAW+f1l9G5i+kA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VUcqbMRfSDzHq7r4oZiZAqSM8HjNsFVLzluHCjXxi97XXhon5xaS8GxgU+Zj6BTH3
	 qwPO9QG7dWq6O5FcIHMZVweJlhObfAwM8j/YTykidTRGZV6gg4BKSIt6/0vmvPE3+0
	 Yx4n4qR8t5mrIS45+SNGUF66glNueYVjlcMEuaQr4ykyCNrzuhPLTGudOYEAGAZtu+
	 pRrWafy+TGNokL1cqHGVUB/9rFPdi9rvFW/74yfDoF1H2jLvYeE5RY3eAPRhxvBIdb
	 cJs2A+Lo1/aynUA7V4zNQdE78tfYxrvWYVhyZ399i+mhvDeV/4qqC5CLUYgUSUPQHS
	 q0BbWHcvQd7Iw==
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 347BA380DEB
	for <usrp-users@lists.ettus.com>; Tue, 11 Jul 2023 12:04:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="o4lnN8YA";
	dkim-atps=neutral
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-76547539775so429036585a.3
        for <usrp-users@lists.ettus.com>; Tue, 11 Jul 2023 09:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689091463; x=1691683463;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vo9y8DHU05vKG1IQGFCa9Dugr3ZHS5MfA+l8c6G5m7M=;
        b=o4lnN8YAEX6GHVsIG0Jl0Y8loAwROu7TjDyQ/TZM8aNWyBnWSShXJCID3k7Uu2yVs6
         xoQdYB5DddN/UPD9CClg7jMa1nVlgQ3+PHKM5NcuRQ4/qFIIlqDy7tXX8VYB8VtGAHQd
         QQWWP75uKi/K6uPSDlXAI/i3LgHlutgu+2NvgTnFf+dXXnDn9rwws7kmGX1e9RB3HFbx
         3J45g8e5MrXsZw4dNDrlkyLfmPwz7gamuR4WBmFiXAe1XGfUSOKh2cdoJ1Az1pkn969b
         LnmHXWTSrnFylPoDrG1rB8MDDAF6e0oCGPkn2TDq6ptUzPW43yKHfTRqeys7TjINMkYF
         l/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689091463; x=1691683463;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vo9y8DHU05vKG1IQGFCa9Dugr3ZHS5MfA+l8c6G5m7M=;
        b=GAmyPGngMCSXscxi1iS7f+4Y9Yf3WlZQlU6JqZyWZowzl0pZUZpOrOpm1X7iGt0cfn
         i5MsQKxc/2Z7ctwdcagSz9WnFIIgkt9xAfh4xzcunyslkrR3XJVWgamdFzsb1MdG150r
         JoLsPzmajxZCFr5/Nv9dd/AxFf0KGbeoBKfCZLurLHLR6tVI2i5iAbNpDYAX/V9Fw8A4
         JzvA46D0ojxa1aBpb90308tPr8F/97yFsBu85TL+iauOT4t/jtauv//9iPfx3UcpMcES
         LR/TQrt0VzfuK3zvnCsupa9ahdn3Qzxc+M1gFpBCUObuGFTphePl5fwTYgIu/RTmnMad
         rWPA==
X-Gm-Message-State: ABy/qLZ/jZp1yZCsgcE5Rl8NekJt23Y1vPAIbJv8/qJ7t61NhLtowx35
	sJsQotgf8nLbrad7RH7ur6gP+KfeoI4=
X-Google-Smtp-Source: APBJJlFgC9Ch1L25FO+hXXHmQW0ayHjDGrk0QktOHP9jQKSxfV1d7Bj7Hp6v2IbKIuPoNlLkobaefQ==
X-Received: by 2002:a37:f61e:0:b0:767:1967:4e33 with SMTP id y30-20020a37f61e000000b0076719674e33mr13516726qkj.55.1689091463226;
        Tue, 11 Jul 2023 09:04:23 -0700 (PDT)
Received: from [192.168.2.196] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id x20-20020ae9f814000000b007655a4c5423sm1100809qkh.130.2023.07.11.09.04.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 09:04:22 -0700 (PDT)
Message-ID: <5fa0648e-41da-3456-1c97-de733d1bd355@gmail.com>
Date: Tue, 11 Jul 2023 12:04:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <m1K5EwezzvXcOqMKHv4pRggbiupqFuTWpsLApTRW6TU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <m1K5EwezzvXcOqMKHv4pRggbiupqFuTWpsLApTRW6TU@lists.ettus.com>
Message-ID-Hash: HV7HYKKJTHZJLJYQ5D5OBG7CP47TUG3L
X-Message-ID-Hash: HV7HYKKJTHZJLJYQ5D5OBG7CP47TUG3L
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Voltage Specification of x4xx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HV7HYKKJTHZJLJYQ5D5OBG7CP47TUG3L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTEvMDcvMjAyMyAxMTo0NCwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4gV2hlbiBJIG1heGltaXplIHRoZSBHYWluIG9uIHRoZSBteSBib2FyZCwgYnV0IGtl
ZXAgdGhlIGlucHV0IGludG8gdGhlIA0KPiByZWNlaXZlIGF0IDE0IGRCbSwgSSDigJxzYXR1cmF0
ZeKAnSBteSBBREMsIGhvd2V2ZXIsIEkgZ2V0IGh1Z2UgDQo+IHBlYWtzKGdyZWF0ZXIgdGhhbiB0
aGUgZnJlcXVlbmN5IEkgYW0gdHJhbnNtaXR0aW5nIGF0KSBpbiBvdGhlciBwYXJ0cyANCj4gb2Yg
bXkgZnJlcXVlbmN5IHNwZWN0cnVtLCB3aGljaCBJIGJlbGlldmUgdG8gYmUgYW4gYXJ0aWZhY3Qg
b2YgdGhlIExPIA0KPiBsZWFrYWdlLiBXaGVuIEkga2VlcCB0aGUgZ2FpbiBvZiB0aGUgZGF1Z2h0
ZXJib2FyZCBsb3cgSSBvbmx5IHNlZSBhIA0KPiBwZWFrIGF0IHRoZSBmcmVxdWVuY3kgb2YgdGhl
IHNpZ25hbCBJIGFtIHRyYW5zbWl0dGluZy4NCj4NCj4gSSB3YW50IHRvIHNlZSBpZiBJIGNhbiBn
ZXQgYXdheSB3aXRoIGluY3JlYXNpbmcgdGhlIGlucHV0IHZvbHRhZ2UgDQo+IGdvaW5nIGludG8g
dGhlIFJYIHBvcnQuDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCisxNGRCbSBpbnRvIHRoZSBmaXJzdCBzdGFnZSBpcyBh
IHJlY2lwZSBmb3Igbm9uLWxpbmVhcml0eSBhdCBiZXN0LCBhbmQgDQpwb3NzaWJseSBkYW1hZ2Uu
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
