Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6123FB39134
	for <lists+usrp-users@lfdr.de>; Thu, 28 Aug 2025 03:45:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B65CC385F00
	for <lists+usrp-users@lfdr.de>; Wed, 27 Aug 2025 21:45:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756345521; bh=4vPfFyi8UGGq2+Q4Jec5iemwmKrcZ/U/c/5tZIiUSns=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=W312x1FQmxzkw3npnsJTS2MSH6lY17uqLHyY43+xHeVQ8t+MPtemlWSxfRVQAdIHA
	 mixPmzZ48omhqUwwe1eD+DOmOfU5S2OZa6ZwGArvVDSSXoNGtnix40pbo/Rq9wcvTT
	 WbPDr3ODIkBKc1jMHI5rJRepnR48jkzRRXXf/hggD+Qn74Rx5g/JA9vzFSUqYDTGQO
	 2LUYGO968fnr/L7cUvTVLxNFMkR1JWG+fyEjxJx4jeskFVVO8PICDgIsqHv/j7QTU/
	 fzplzQuT4SpoB4o5wAZtoU2RCTT8gTwQcQj6KUTfoxOACyegSmJK4soC13QtHfRrzc
	 +6mYOGUMZKtaA==
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	by mm2.emwd.com (Postfix) with ESMTPS id DE9D2385C25
	for <usrp-users@lists.ettus.com>; Wed, 27 Aug 2025 21:45:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=febo.com header.i=@febo.com header.b="cQJ0ivxv";
	dkim-atps=neutral
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3ed3e77ac1bso2496915ab.3
        for <usrp-users@lists.ettus.com>; Wed, 27 Aug 2025 18:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=febo.com; s=google; t=1756345515; x=1756950315; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qVz/PR2OulZNc7LuiUrcnhcCsH+k3646fMlMj8cgTe0=;
        b=cQJ0ivxvbVM1LhJG+cYFDCMozFx6rKJh9cfnCvuf4yLeFxIj/gkQLVQ8rOogxeg3At
         OWPANeQViANRKfTPMoqJU6iVElTN+0H907Gh+i6uqwkfomo18vkSZM6YXmfigAgX6cg7
         ZDZimGSD01G3lnUiG75YE6Cjpo87ZACznwjcKLnFkavd+i36ff/fADIfC9qJWBsaLXdy
         hKs8FByvDCI23qnGRFix6c/GGhjB6ifvwYWwjVa8p6R/xuMBAchJR9rh3EDtOzUKj66T
         ReWNl2GrjdRjfDF/c8rIGzgrw3uX6/3jFSfIcxYCq6Rny6a0UOSw5GRZ5dldE2VFvi1N
         sApw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756345515; x=1756950315;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qVz/PR2OulZNc7LuiUrcnhcCsH+k3646fMlMj8cgTe0=;
        b=Etu6gupHFd9a5KFWjEGmazX4O7pB42e1tZUli9/yTf0pYaBRoMYD2fWGUct+ePYQTD
         ZzSe14LqSfVoJQCNlxA9o1n4p+2P0WnYnbSqNk9BDQPs1Zm6Kj3nry7xamBRFpTSDPdy
         4fW7Y9m1ZIH5L5nqeyRjVsGswxmpreXtVE0vO/ErpAmaIAP5z6NjQxGyCqGh/uEgPQ6Q
         p/axSgQZ6w4f6F6RsF85Hfo48ogLo0ZkIit0R0AEbPcZzPCYXkvOnM362Sv3pSLCsZ52
         qKa+hGeA88KGQ1DIpPCSSFDtJDEq0DUdSNcBAzJzCWa8QGCjU/cpqlSDYh51UEUWZQXG
         j+ag==
X-Gm-Message-State: AOJu0Yy8te5T5Ij2kbi1ZM280BYT9CVO2wiq+Q4GN6BOMOqG5CNUCOu/
	6M5+xQp/OyzxnApPuO12QCrvZ4bTJhXaUEDqqoi7/WQYChSRi70tsmM9mUmCR1JbjnW/0S+MQ5P
	lqbLa
X-Gm-Gg: ASbGncsUZPFHKCGKMr+JSpp6z1vbgn5bvO61sUmfUwYzpVwKvu02VLoE5yiffHAiq4f
	NSPtApJMfOGmP8NlW10+oxf1DSKuZYZlw8o8zsALkx10/ftOnIa5KN9N3MmwA0p5mRTEjQ5uzo3
	rVcJGSZzqH/8R4BomF0HazR5sCb99wf9NG2EgKzUbN14RsGgpi7m+e1aUU7axVbR6oDLqbgapXY
	CPlrtky+F1K8q9DN2pckWgAZLdX0O4l2wM1uJbqU5k+/183fvKDOlaIBE/mr85GeRSZF5JkM7vk
	RRKi4Wd9gnVAIec1XdCRD3IKVbnwt2dJXO3/bvfJBp5tLa9MeEsQQzRNwM/ILEiIICEs5JRpg0e
	yvujNrtqDqka2+MXtLO9CjQ==
X-Google-Smtp-Source: AGHT+IEzDlo8a1u7GZ7XFaPZdGw33J+UHxaT3XZbLWAOztg4cD4It2Xxu7lnLLrkGDQVFvHIHdc3Mw==
X-Received: by 2002:a05:6e02:1988:b0:3e5:51bb:9cd9 with SMTP id e9e14a558f8ab-3e91fc29a4emr307469285ab.8.1756345515517;
        Wed, 27 Aug 2025 18:45:15 -0700 (PDT)
Received: from [10.73.3.60] ([104.185.8.17])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3f0693d885esm17168075ab.38.2025.08.27.18.45.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 18:45:15 -0700 (PDT)
Message-ID: <007eaa83-8856-4b85-9d5b-e6eb63b8d5ef@febo.com>
Date: Wed, 27 Aug 2025 21:45:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <URBT2oW9yHCCQED5wSMVTZS2picdEqDS37NNg6h5mmI@lists.ettus.com>
 <0d34b260-fcfc-4669-9b4e-61b4196a727b@febo.com>
 <ac34601a-b031-4ef9-9901-632991eaeffa@baseband.digital>
Content-Language: en-US
In-Reply-To: <ac34601a-b031-4ef9-9901-632991eaeffa@baseband.digital>
Message-ID-Hash: URTFUACJ7XTTVNHMCLYQSYP5BTHQETSD
X-Message-ID-Hash: URTFUACJ7XTTVNHMCLYQSYP5BTHQETSD
X-MailFrom: jra@febo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: PPS signal OctoClock-G
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/URTFUACJ7XTTVNHMCLYQSYP5BTHQETSD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: John Ackermann N8UR via USRP-users <usrp-users@lists.ettus.com>
Reply-To: John Ackermann N8UR <jra@febo.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGF0IGluZm9ybWF0aW9uLCBNYXJjdXMuDQoNCkluIHRpbWUtbnV0cyBhcHBs
aWNhdGlvbnMgdGhlIGluZm9ybWF0aW9uIGlzIHVzdWFsbHkgaW4gdGhlIGxlYWRpbmcgZWRnZSAN
Cm9mIHRoZSBwdWxzZSwgc28gdGhhdCdzIHdoYXQgd2Ugd29ycnkgYWJvdXQuICBCdXQgaWYgeW91
J3JlIGxhdGNoaW5nIA0Kd2l0aCBhIDEwMCBucyBjbG9jaywgdGhlIFBQUyBjaGFyYWN0ZXJpc3Rp
Y3MgYXJlIGEgbG90IGxlc3MgY3JpdGljYWwgLS0gDQp5b3UgbWFpbmx5IG5lZWQgdGhlIHB1bHNl
IHRvIGJlIGxvbmcgZW5vdWdoIHNvIGl0J3Mgc3RpbGwgdGhlcmUgd2hlbiB0aGUgDQpuZXh0IGNs
b2NrIGFycml2ZXMuDQoNCkxvbmcsIGxvbmcgYWdvIEkgZGVzaWduZWQgYSBzaW1wbGUgY2lyY3Vp
dCAoVEFQUiBzZWxscyBpdCBhcyB0aGUgDQoiRmF0UFBTIikgdG8gc3RyZXRjaCB2ZXJ5IHNob3J0
IHB1bHNlcyBmcm9tIEhQIGNsb2NrcyBhbmQgc29tZSBHUFMgDQpyZWNlaXZlcnMgaW50byBzb21l
dGhpbmcgbG9uZyBlbm91Z2ggdG8gImNhdGNoIiBhIFBDIHNlcmlhbCBwb3J0IERDRCANCmxpbmUg
Zm9yIE5UUCB1c2UgLS0gc2ltaWxhciB0byB3aGF0IHlvdSBkZXNjcmliZWQsIHRoZSBwdWxzZSBu
ZWVkZWQgdG8gDQpiZSBsb25nIGVub3VnaCB0byBjYXRjaCB0aGUgbmV4dCBpbnRlcnJ1cHQuDQoN
ClBQUyBjYW4gYmUgc3VycHJpc2luZ2x5IGNvbXBsaWNhdGVkIQ0KDQpKb2huDQotLS0tDQpPbiA4
LzI3LzI1IDA3OjQ0LCBNYXJjdXMgTcO8bGxlciB3cm90ZToNCj4gTGV0IG1lIGdpdmUgYSB2b2lj
ZSBmcm9tIHRoZSBvZmY6DQo+IA0KPiAtIHNsZXcgcmF0ZSBpc24ndCBhcyByZWxldmFudCBmb3Ig
dGhlIE9jdG9jbG9jayBhcyBjbG9jay90aW1lIHNvdXJjZSBmb3IgDQo+IFVTUlBzIOKAkyB0aGVz
ZSBsYXRjaCB0aGUgUFBTIHN0YXRlIG9uIHRoZSByaXNpbmcgZWRnZSBvZiB0aGUgaW50ZXJuYWwg
DQo+IGNsb2NrLCB3aGljaCBtaWdodCBvciBtaWdodCBub3QgYmUgZGVyaXZlZCBmcm9tIHRoZSAx
MCBNSHogZnJvbSB0aGUgDQo+IE9jdG9jbG9jayBhbmQgY2xlYW5lZCB1cCBhZnRlci4gVGhhdCdz
IHdoeSB5b3UnbGwgZmluZCB0aGUgc2NoZW1hdGljcyANCj4gWzFdIGZlYXR1cmUgc2ltcGxlIGNh
c2NhZGVkIDc0MDAgc2VyaWVzIGludmVydGVycw0KPiANCj4gLSB5b3UncmUgcmlnaHQsIHN0YXRp
bmcgZXhwbGljaXRseSB0aGF0IHRoaXMgaXMgdGhlIHVubG9hZGVkIG91dHB1dCANCj4gbWlnaHQg
aGF2ZSBiZWVuIG5pY2UsIGJ1dCB0aGVuIGFnYWluLCBzaW5jZSBjaGFyYWN0ZXJpc3RpYyBpbXBl
ZGFuY2UgDQo+IGRvZXNuJ3QgbWF0dGVyIGZvciBhIHNpZ25hbCB0aGF0J3MgREMgZm9yID49IDEw
MCBtcywgYW5kIHNpbmNlIGl0J3MgDQo+ICJleHBsaWNpdGx5IiBvbWl0dGVkLCBJIHRoaW5rIHRo
YXQncyBhIGZhaXIgYXNzdW1wdGlvbi4gWW91J2xsIGV2ZW4gZmluZCANCj4gaW4gdGhlIFVTUlAg
WDMwMCBzY2hlbWF0aWNzIChzaGVldCAxMikgdGhhdCB0aGUgcG9ydCBpcyBhYm91dCA1MCDOqS0g
DQo+IGxvYWRlZCBmb3Igc3VmZmljaWVudGx5IGhpZ2ggZnJlcXVlbmNpZXMsIGJ1dCBhdCBEQyBp
cyBlZmZlY3RpdmVseSAzIGvOqS0gDQo+IHRlcm1pbmF0ZWQuIEZsYXQgZnJlcXVlbmN5IHJlc3Bv
bnNlIHdhcyBzZWVtaW5nbHkgbm90IGEgZGVzaWduIGdvYWwsIGJ1dCANCj4gcmFwaWQgZGFtcGVu
aW5nIG9mIG92ZXJzaG9vdCBhdCBsb3cgREMgcG93ZXIgd2FzLg0KPiANCj4gQ2hlZXJzLA0KPiBN
YXJjdXMNCj4gDQo+IA0KPiBbMV0gaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vc2NoZW1hdGljcy9v
Y3RvY2xvY2svDQo+IA0KPiBPbiA4LzI2LzI1IDc6MDEgUE0sIEpvaG4gQWNrZXJtYW5uIE44VVIg
dmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+PiBBZ3JlZWQgdGhhdCBpdCB3b3VsZCBiZSBnb29kIGZv
ciB0aGUgZGF0YXNoZWV0IHRvIGhhdmUgbWVudGlvbmVkIHRoaXMsIA0KPj4gYXMgaXQncyBhIGZy
ZXF1ZW50IGNhdXNlIG9mIGNvbmZ1c2lvbi4NCj4+DQo+PiBXaGlsZSBTTUEgY29ubmVjdG9ycyBh
cmUgZGVzaWduZWQgZm9yIDUwIG9obXMsIGl0J3MgcmVhbGx5IG5vdCBzYWZlIHRvIA0KPj4gcmVs
eSBvbiB0aGF0IHRvIGlkZW50aWZ5IHNpZ25hbCBjaGFyYWN0ZXJpc3RpY3MuwqAgQWZ0ZXIgYWxs
LCBtb3N0IA0KPj4gb3NjaWxsb3Njb3BlcyB1c2UgNTAgb2htIEJOQyBjb25uZWN0b3JzIHdoaWxl
IHRoZWlyIGlucHV0IGltcGVkYW5jZSBpcyANCj4+IDEgTW9obSBvciBtb3JlLg0KPj4NCj4+IEFz
IEkgbWVudGlvbmVkLCB0aGVyZSBpcyBubyBzdGFuZGFyZGl6YXRpb24gZm9yIFBQUyBzaWduYWxz
IA0KPj4gY2hhcmFjdGVyaXN0aWNzLsKgIEFzIGFuIGV4YW1wbGUsIG9sZGVyIEhQIGF0b21pYyBj
bG9ja3MgaGF2ZSBQUFMgDQo+PiBvdXRwdXQgb24gYSBCTkMgY29ubmVjdG9yIHRoYXQgaXMgd2Vs
bCBvdmVyIDEwIHZvbHRzIGludG8gNTAgb2htcyANCj4+ICh1bmxvYWRlZCBpdCdzIHdheSBoaWdo
ZXIpLsKgIFRoZXkgZGlkIHRoYXQgdG8gaW5jcmVhc2UgdGhlIHNsZXcgcmF0ZSANCj4+IHRvIGdl
dCBtb3JlIHByZWNpc2UgdHJpZ2dlcmluZyBpbiBhbiBlcmEgYmVmb3JlIG1vZGVybiBsb2dpYyBn
YXRlcyANCj4+IHdlcmUgd2lkZWx5IHVzZWQuIMKgQnV0IHRoZSB3aWR0aCBpcyB2ZXJ5IG5hcnJv
dyAofjIwdXMpIHNvIHRoZSB0b3RhbCANCj4+IHBvd2VyIGluIHRoZSBwdWxzZSBpc24ndCB0aGF0
IGhpZ2guDQo+Pg0KPj4gTW9zdCBtb2Rlcm4gc3lzdGVtcyB1c2UgbG9naWMgZ2F0ZSBvdXRwdXRz
IGRvbid0IGFsd2F5cyBjb25zaWRlciB3aGF0IA0KPj4gdGhlIGxvYWQgd2lsbCBiZSBhbmQgdGhh
dCBjYW4gY2F1c2UgaXNzdWVzLsKgIEZvciBleGFtcGxlLCBydW5uaW5nIGEgdS0gDQo+PiBibG94
IEdOU1MgdGltZXB1bHNlIG91dHB1dCBpbnRvIGNvYXggY2FibGUgZG9lcyBub3Qgd29yayB3ZWxs
IGF0IGFsbDsgDQo+PiB0aGUgc291cmNlIGltcGVkYW5jZSBpcyBxdWl0ZSBoaWdoIGFuZCB5b3Ug
ZG9uJ3QgZ2V0IHJlbGlhYmxlIA0KPj4gdHJpZ2dlcmluZyBhdCB0aGUgZmFyIGVuZCBvZiBldmVu
IGEgZmFpcmx5IHNob3J0IGNhYmxlIHJlZ2FyZGxlc3Mgb2YgDQo+PiB0ZXJtaW5hdGlvbi4gWW91
IG5lZWQgdG8gYnVmZmVyIHRoZSBzaWduYWwgYmVmb3JlIGZlZWRpbmcgaXQgaW50byBjb2F4Lg0K
Pj4NCj4+IEkndmUgZGVzaWduZWQgc2V2ZXJhbCBwcm9kdWN0cyB3aXRoIFBQUyBvdXRwdXRzIGFu
ZCB1c2UgdGhyZWUgNzRBQzA0IA0KPj4gZ2F0ZXMgaW4gcGFyYWxsZWwgdG8gcHJvdmlkZSA1IHZv
bHQgbm8tbG9hZCBvdXRwdXRzIHdpdGggZW5vdWdoIGRyaXZlIA0KPj4gY2FwYWJpbGl0eSB0byBk
ZWxpdmVyIGF0IGxlYXN0IDMgdm9sdHMgaW50byA1MCBvaG1zLiBUaGF0IGhhcyB3b3JrZWQgDQo+
PiB2ZXJ5IHdlbGwgZHJpdmluZyBtYW55IHR5cGVzIG9mIGNvdW50ZXJzIGFuZCBvdGhlciBkZXZp
Y2VzLg0KPj4NCj4+IEpvaG4NCj4+IC0tLS0NCj4+DQo+PiBPbiA4LzI2LzI1IDExOjQ5LCBkZW5u
aXMuam9vc2Vuc0B1YW50d2VycGVuLmJlIHdyb3RlOg0KPj4+IEhpIEpvaG4sDQo+Pj4NCj4+PiBU
aGFua3MgZm9yIHRoaXMgaW50ZXJlc3RpbmcgaW5zaWdodCENCj4+Pg0KPj4+IEhvd2V2ZXIsIEkg
d291bGQgdGhpbmsgaXQgaXMgbWVhc3VyZWQgYXQgNTAgb2htcyBhcyB0aGUgb3V0cHV0cyBvZiAN
Cj4+PiB0aGUgUFBTIG9uIHRoZSBPY3RvQ2xvY2stRyBhcmUgU01BIGNvbm5lY3RvcnMuIEFzIGZh
ciBhcyBJIGFtIGF3YXJlLCANCj4+PiBTTUEgY29ubmVjdG9ycyBkbyBub3QgaGF2ZSBhIDEgTW9o
bSBpbXBlZGFuY2UuDQo+Pj4NCj4+PiBJIGZvdW5kIHRoYXQgaW52ZXJ0ZXJzIGFyZSBwbGFjZWQg
YmVmb3JlIHRoZSBQUFMgb3V0cHV0cywgd2hpY2ggaGF2ZSANCj4+PiBhIG1pbmltdW0gb3V0cHV0
IG9mIDIuNCBWIGFuZCBhIHR5cGljYWwgb3V0cHV0IG9mIDMuNCBWLiBUaGUgaW5wdXQgb2YgDQo+
Pj4gdGhlIFVTUlAgQjIxMCAod2hpY2ggdGFrZXMgaW4gdGhlIHNpZ25hbCBmcm9tIHRoZSBPY3Rv
Q2xvY2stRykgaGFzIGFuIA0KPj4+IGlucHV0IHJhbmdlIG9mIDEuOCBWIHRvIDUgVi4gU28sIEkg
YW0gbm90IHJ1bGluZyBvdXQgdGhhdCBtaXNtYXRjaGluZyANCj4+PiBvciBtYXRjaGluZyBhdCAx
IE1vaG0gY2FuIHdvcmsgdG9vLg0KPj4+DQo+Pj4gU28gaXQgaXMgbm90IHJlYWxseSBhbiBlcnJv
ciBpbiB0aGUgZGF0YXNoZWV0LiBCdXQsIGl0IHdvdWxkIGhhdmUgDQo+Pj4gYmVlbiBuaWNlIGlm
IHRoZXkgaGFkIGFkZGVkIGFuIGV4dHJhIHJvdyBpbiB0aGUgdGFibGUsIHBvaW50aW5nIG91dCAN
Cj4+PiBhdCB3aGljaCBpbXBlZGFuY2UgdGhpcyB3YXMgbWVhc3VyZWQsIHNpbWlsYXIgdG8gdGhl
IDEwIE1IeiBzaWduYWwuDQo+Pj4NCj4+Pg0KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
