Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5621BA40580
	for <lists+usrp-users@lfdr.de>; Sat, 22 Feb 2025 05:38:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9493D385A97
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 23:38:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740199084; bh=3wrn9wngWRyPkHfve+9oEZtXZ1DgpKoDEvynJToRpuc=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EQNhX/W8OHmSkx1r/oT8W5dq+/L4Jl7+TU9XZrVu5hrNNlJsR5BzM2AQuQAaitPFv
	 /j9VfGvoh6JJRkWlIOjonaU7yGZZNloJE/HmgGLLzDeBOIE4M2PWvsG3/JTFpEypnM
	 +MAK70cS0AOpVhf6J8jj16N5gNsHVsYLaskdT0fER8/72Zjv0XUklNUIuiEuHt6vph
	 R+o/TQD+sUtvvCk+n5Oq0OdbXxJ0VOax059nPjrqpy4SX/lJgCV/zZkYCy8cK49qhC
	 mkg7Im6tNb06C3W4NDc1Gzb17lylIS7ZPKGGG2xEqF2rCpaxclspxWEV+yJFTSs/w2
	 PdA9LhYhEWKcQ==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 3979A38586A
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 23:38:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y2TrUl86";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6e65be7d86fso36373586d6.1
        for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 20:38:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740199079; x=1740803879; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=igECqtkErNFJwVrp/HFmMCNUdYRQeFAmAcP5wNL03eQ=;
        b=Y2TrUl86g78LXoOzg18IqOQ9fzZvEZjQoUYD6FpBJ94Fhze+3gSbjjW6dFdRuA6T40
         WPWhOCHsBgFU9a7VOlsBBrKNdoGRnZ0uI+zSWnzo/rddXfweb7qH6P2ml4ivJANuGmNp
         NxXRFQ9h0DW1q5IWtIQzek2X6z5/ovxojg2dujFR/EtA7f3xzX13u6a2V5Jdla6np9rV
         EsORpVh9GDfqJzwX65HcnaPpaB48KJc6yCZVAfTAS9Vzgl5lEl/YXbEop5ofMAhRRPAI
         kG10qktvB5slqaqrp+8DsPBISCPafKXLlPi81/SC+FQImDClBDC1KratC6jZM9NDtiyT
         bWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740199079; x=1740803879;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=igECqtkErNFJwVrp/HFmMCNUdYRQeFAmAcP5wNL03eQ=;
        b=AvmjoaBLDfr7INbfDP3iuaOmokDRRWN0hdAQjpTkWCpoRV66ViKsj782n+hlu3RHzr
         /H+ApXKvRsEqNsB4CWaEvXHqALqhVf4Qjyyp8brcN0t5Thsodmywyd8HjAxiXulmZoNB
         GSx0/X3vos/+WWVxOFdwHA2R1A2lJCyuDQJQlK08WTriFe3qxE5l0H0EkxKOtDnDOLCm
         V3zQhaGZpDAwLgYwK5nkDM1jSeqWP6HsffehVGm4nbuZDkHwZv5xDqRgvXfAeL63ci+C
         ppDTsFqbZQq564qznGkAQ8nArXyvXixVFrpG2A1Oha0Eih+04hMdieIv9S7pAQDb1hcJ
         vbQA==
X-Gm-Message-State: AOJu0Yy1OXkudFIpyEDL3iFNjupACKHlVWlMxl4Y5WoONCuRq83oXmNz
	tVSxjC4oFjVx/BEF9Lbg1VtFPY1x614/wmIUrfoeauw+MnkI3NqTK72hbN2F
X-Gm-Gg: ASbGnctcN71Jwtwyq0CYhL8fM2TOb0ny+GnSSAqIXdgJcBPCW64nYb+LhmYs3gbAtkZ
	kN2rJVGoEHZ99UdEwZKfalSfllvWLatG8Q7nZ9zXpxcZgGEl8qE/4UF2niXpVrQOsFH3jwYdMHP
	y5IZf7o1e9SuA7g21biGXeNTmD++yejiEAdL7HmxYNmjVpcKoJXq8ByH5zTHYA8iEHDmBpO0R/C
	zGeuLiE7HwHeeCF89iNRDS26a41ee52FfeunzXoz5ZqZ38ZO1kn6m+L8B2BeWJAvvnc2FZ97YcA
	E2KfWamgPMj0Pfv+EGq0w8YkBgPS0ep3iLMTYd20kIjsSQx6CLtFNX+JBx5dkp//N8Tce6q0wNJ
	WXB/S+YCKC9x4iqHTvHBrtuOC
X-Google-Smtp-Source: AGHT+IEprE3nyl9z+NgtueJCbJu2kI8A0BN65hmWVBpXZXgJYoSUBvchboQrVh+SNPqmxoNOY98xPw==
X-Received: by 2002:a05:6214:29e4:b0:6d9:ac3:e730 with SMTP id 6a1803df08f44-6e6a257da4cmr125506956d6.5.1740199079546;
        Fri, 21 Feb 2025 20:37:59 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c07c5f3a42sm1110298185a.22.2025.02.21.20.37.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 20:37:58 -0800 (PST)
Message-ID: <9458cc31-7a51-4259-9bd3-9352749b6964@gmail.com>
Date: Fri, 21 Feb 2025 23:37:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: kavinraj@atindriya.co.in
References: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
 <756c5135-0f06-4085-8bbb-ac5793b96e21@gmail.com>
 <1936f8facaa71cf7a2c6312aacbcdb42@atindriya.co.in>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1936f8facaa71cf7a2c6312aacbcdb42@atindriya.co.in>
Message-ID-Hash: JEREMYSFIIUFRETWICEICO7STMKY4XQL
X-Message-ID-Hash: JEREMYSFIIUFRETWICEICO7STMKY4XQL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : GPIO in USRP B205Mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JEREMYSFIIUFRETWICEICO7STMKY4XQL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjEvMDIvMjAyNSAyMzoyMiwga2F2aW5yYWpAYXRpbmRyaXlhLmNvLmluIHdyb3RlOg0KPiBI
aSwNCj4gwqBUaGFua3MgZm9yIGFuc3dlcmluZy4NCj4gwqBDYW4geW91IGV4cGxhaW4gbWUgY2xl
YXJseT8NCj4NCj4gVGhhbmtzLg0KSSdkIHN1Z2dlc3QsIGF0IGEgbWluaW11bSwgbG9va2luZyBh
dCB0aGUgTUFOIHBhZ2UgZm9yIHVzbGVlcCgpLg0KDQoNCj4NCj4NCj4NCj4gT24gMjAyNS0wMi0y
MSAyMzoxMSwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPj4gT24gMjEvMDIvMjAyNSAyMzowNSwg
a2F2aW5yYWpAYXRpbmRyaXlhLmNvLmluIHdyb3RlOg0KPj4+IEhpLA0KPj4+IMKgwqAgSW4gVVNS
UCBCMjA1bWluaS1pIEkgYW0gYWJsZSB0byBhY2Nlc3MgdGhlIEdQSU8gUGluLiBJIGhhdmUgdG8g
DQo+Pj4gY3JlYXRlIGEgUHVsc2UgaW4gdGhlIEdQSU8gcGluLiBJIHdhbnQgdG8gbWFrZSBoaWdo
IHRoZSBncGlvIHBpbiBmb3IgDQo+Pj4gMW1pY3Jvc2Vjb25kIGFuZCBsb3cgZm9yIDk5OW1pY3Jv
c2Vjb25kcy4gSG93IHRvIGFjaGlldmUgdGhpcyANCj4+PiB0aW1pbmdzIHRocm91Z2ggY29kaW5n
LiBDYW4geW91IGdpdmUgbWUgdGhlIHNvbHV0aW9uIGZvciB0aGlzPw0KPj4+DQo+Pj4gwqDCoCBJ
biBjb2RpbmcgYWZ0ZXIgbWFraW5nIGhpZ2ggSSBhbSBnaXZpbmcgdXNsZWVwKDEpIGZ1bmN0aW9u
IGJ1dCANCj4+PiB3aGVuIEkgYW0gY2hlY2sgaW4gdGhlIG9zY2lsbG9zY29wZSBpdCBpcyBzaG93
aW5nIDY0bWljcm9zZWNvbmRzLiBIb3c/DQo+Pj4NCj4+Pg0KPj4gQmVjYXVzZSBhbiBhcHBsaWNh
dGlvbi1sYW5kIHByb2dyYW0gZXhlY3V0aW5nIG9uIGFuIG9yZGluYXJ5IA0KPj4gZ2VuZXJhbC1w
dXJwb3NlIG9wZXJhdGluZyBzeXN0ZW0gaXMgdW5saWtlbHkgdG8gYmUgYWJsZSB0bw0KPj4gwqAg
YWNoaWV2ZSByZXBlYXRhYmxlLCAxdXNlYy1zY2FsZSB0aW1pbmcuwqAgVGhpcyBoYXMgbm90aGlu
ZyB0byBkbywgDQo+PiBwZXIgc2UsIHdpdGggVUhEIG9yIFVTUlBzLCBidXQgcmF0aGVyLCB0byB1
bmRlcnN0YW5kaW5nDQo+PiDCoCBob3cgYXBwbGljYXRpb25zIGV4ZWN1dGUgaW4gYSBnZW5lcmFs
LXB1cnBvc2Ugb3BlcmF0aW5nIHN5c3RlbSB0aGF0IA0KPj4gaXNuJ3QgcnV0aGxlc3NseSBvcHRp
bWl6ZWQgZm9yICJoYXJkIiByZWFsLXRpbWUgdGFza3MuDQo+Pg0KPj4NCj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
