Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B74D991E578
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 18:36:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7FEBA384E00
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 12:36:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719851768; bh=xqc7nogQ6pj4+Wf1AmBvZkrOTgH24a4OITaAbTcdYoM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OC0UDqxk3r6WVnn5TPSrC8mnUPgS1HxlGaU7zi1Hv/ZysVFCoBOq+5DRyxaDuReYr
	 yPvE1ENJ1PPNtGJcp6M3YEiB+vWYpDl2/w9GhoUhNj0MSU9z+htnyaavqaiUrkOQeF
	 CkH6IRXVvvxpnGG29Avd+6j3nMaqUAZxgwQ0g670u3TmsdKEOL6dllShjFoFRljUuP
	 5FbvnjXzDsF3aGpTx1Q+x24dElNRslH6XWHiABD3kG3rowVVnfkXPx7z8hf2p0lhpa
	 TkuBoMqbjV9DS/KqfUWRpD3z3oOvAYmgs50j6FQYGjkr2zVWK2XJuPCRex8yYhiVAp
	 sRAOHiMbzXMeg==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 0BF7B384BB9
	for <usrp-users@lists.ettus.com>; Mon,  1 Jul 2024 12:35:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kPql1TNP";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-79c076c0d83so197285885a.3
        for <usrp-users@lists.ettus.com>; Mon, 01 Jul 2024 09:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719851728; x=1720456528; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ljHpEHTyp4DVzfPTFe/vkCBVEHYqvakzcVRg6OdHox8=;
        b=kPql1TNPi8jVHWK8XkWtly/2G1Le6D0bv0LmuTg7Dp+VLyif2TNPt/agrei0jRJiGy
         Q/HqoqaZVKPvfpyJ1c8x0c7Od0cJaerS5TjXjlexiwUKe4Sp3PyCHD7OP2iOfVQjsE5d
         JPvyq4gk+nyZad7rtaMtacExGSrFSiM+Cdr7p5wuMTP33pfrD4BVLtvs1uVDbUJId3YU
         cJC1O6B8AgBkYTXGc9jpUXOQe0a6fM5VG0zdoZiufIe579naEhVbVVA90iMdpqw/qGMf
         /F7i/Sy0kty88WYPBToIXcASHmHwk28LUN/2VdkL9omHV5SxlrDxvB37gaGo4YQ8R1vr
         OjgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719851728; x=1720456528;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ljHpEHTyp4DVzfPTFe/vkCBVEHYqvakzcVRg6OdHox8=;
        b=VJcmEz5v6qWq4gyFW73DrSWZjr40J47zTlIma5x9d+tXiF7G/FsNKiocGcR0AvKnRL
         TFKdqwb0uwwE2muGYsrS8IfrWQW8rzjsKG2tJJvuyBNGgbMYm2dOlxHSbBj+RvUle+Lu
         oirEioAkRq/GBFPM57842cxCEgbzz8GbLmw96kS5YVi8NHFeMLlqq9FVFIBmhRbXLQZs
         5U6xstCs0HyTLDltT5ML2blEWJgEBSdf7sbWmDULd2Tp/1HIiQtsQ0WYaF9/JuTUS80t
         Qg04TjuUwGBrSj9MreqIPeZK+2DFJ7pz/dja/iFDdUJuisLyi4oQYFGdU3xt4x5pavon
         P1ig==
X-Gm-Message-State: AOJu0Yzh43ClSmAiBLJKrHyKaNTCRYxI/sCeAY3yy0q71rdwkSTBCCpk
	kxcrKEEoJnbXZ88Z/2D+IhlKn/8cWKLRjCewc29jEuplQiIm0LJD9t2chA==
X-Google-Smtp-Source: AGHT+IHjdaywFzOVY5vgahaeieaI6vC+viqUzfWYZSWNU9IRuaKKx4wuWubC6daKbXobbmbMFnIYZg==
X-Received: by 2002:a05:620a:2154:b0:79d:6bba:4a66 with SMTP id af79cd13be357-79d7babe6d5mr727359385a.66.1719851728168;
        Mon, 01 Jul 2024 09:35:28 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-79d69295c17sm361011385a.63.2024.07.01.09.35.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jul 2024 09:35:27 -0700 (PDT)
Message-ID: <0568ca63-1fbf-4815-9efd-e065a610ff72@gmail.com>
Date: Mon, 1 Jul 2024 12:35:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DDsHCDTsdcDY6ZjVlG5vA6ayX9WCSouECsGprLEZ6k@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DDsHCDTsdcDY6ZjVlG5vA6ayX9WCSouECsGprLEZ6k@lists.ettus.com>
Message-ID-Hash: CZB47JU2UKIK6254F4AIPCGVDFOVAFR5
X-Message-ID-Hash: CZB47JU2UKIK6254F4AIPCGVDFOVAFR5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CZB47JU2UKIK6254F4AIPCGVDFOVAFR5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDEvMDcvMjAyNCAxMDoyOSwgY2pvaG5zb25Ac2VycmFub3N5c3RlbXMuY29tIHdyb3RlOg0K
Pg0KPiBJIGFsc28gZ290IG91dCBvZiBzZXF1ZW5jZSBlcnJvcnMgYXQgMWU2LCBJIGp1c3QgaGFk
IHRvIHdhaXQgNjAgDQo+IHNlY29uZHMgaW5zdGVhZCBvZiAzMC4NCj4NCj4NCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KU28sIHlv
dSdyZSBnb2luZyB0aHJvdWdoIHRoZSBsaXR0bGUgMTBHaUdlIHN3aXRjaCB0aGF0J3Mgb24gdGhl
IDI5NzQ/wqAgDQpMaWtlIEkgc2FpZCwgSSBkb24ndCBoYXZlIG9uZSBteXNlbGYuDQoNCkFyZSB5
b3UgdXNpbmcgYSBkaXN0aW5jdCBhZGRyZXNzIG9uIHlvdXIgaG9zdCwgY29tcGFyZWQgdG8gdGhl
IElQIA0KYWRkcmVzcyBhc3NpZ25lZCB0byB0aGUgbWluaS1QQyB0aGF0J3MNCiDCoCBpbiB0aGUg
Mjk3ND/CoMKgIElmIG5vdCwgdGhpcyBjb3VsZCBiZSBhIGNhdXNlIG9mIG1ham9yIA0KaGVhZGFj
aGVzLi4uLsKgwqDCoCBUaGlzIGp1c3Qgb2NjdXJyZWQgdG8gYmUgbm93Lg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
