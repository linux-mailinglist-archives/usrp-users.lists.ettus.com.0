Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EFD5736FA
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jul 2022 15:12:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2E99F381117
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jul 2022 09:12:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657717970; bh=QTSVJzeVWRA2ux/FkLPoG7F/gowXnc3Oq0/aP7fE7Pg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vjxYbMnqpSbTEVcTY47xf6XXcC0vLqPKBhZoSmlNBYMF8cTsaWB6LAuZXpE9RRjuF
	 9IbPmRk5Xln46pCR7cnMRn86xynrDbjE9aCDKjIoNLsAZKnRr+J+nj4RXzPg+188yL
	 ZCAt90ByXYCQpceecUFvLtwCcKQrYQf2vZEg4NYgf5uj9bJCE5CN3X20ElZeHt+IMX
	 rprL7VrC39QYYSPGnkM4vT/Tcq1bguMzswwTGpM3sakbKhPGFlqqZ1MKNXyC+DNyoa
	 K4TOfdGpRMD/m8mt9ryEpF7xcMRnjM0Ru5RqtOWn1UrGZZJW43K+fBC+BQQZwhHQUF
	 S2iLMaGLfbLoQ==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 8FD183818CD
	for <usrp-users@lists.ettus.com>; Wed, 13 Jul 2022 08:49:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aHeGKUec";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id m6so4720483qvq.10
        for <usrp-users@lists.ettus.com>; Wed, 13 Jul 2022 05:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=UeiI5Y2pJ7oU4h6MZ5cg/xwtL8xBtGwPYYfZWpnZHIA=;
        b=aHeGKUeczihMkEu7x5kEiRofNtBS0wcT3q7pCVNwGPKE37lf046t1/6NoPRnsKTW2/
         mKazFeeydHlGTh9phdDNsn9b6BcyOePYiUBBi6Dz5ahAiulbqBwWnAs/5V82Ecq4y+Pg
         1M39AGXGg1PfnIVA3G66nFJXvrbuxONRa+1LiURO2j+naTGoDeqknyktWKf5d77Lzi4A
         7IwjKYo3VG7PV4iSedV1Nwu/fVDPOe1H+rdo6whgX4FloQYoyIO+mYRN3/E87Y1H1EM8
         7+DUwDt/bObqyPH4dGSzL9TgDrls0Il/BTIXVQIQkIdpm9NlGSbaUw4xkKme1iM7oozC
         cCHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UeiI5Y2pJ7oU4h6MZ5cg/xwtL8xBtGwPYYfZWpnZHIA=;
        b=FyqlsJD8/ugPmCR5EtNdU7FQDy09lQCSIkhd+msVzjFivAUbNx5dphuAKMhY33169q
         +CvTnTymO5TatlNtY2dHD1KKKA4A63jfPEHGpCYm3t8SM40pbLbXu59z75u3VU5/d3Cv
         jU+FN8C3xA60cls3GAXmpn5vwXm2U1rfaKjq4MXiswzJH3lxEZUZsJbpXb4S6wJNL9fD
         WeVuDX5dKTYifqqFxx9GYYxX9ZVhW3czquISNIqXFCQ/OloqpUtx46ygSQCBV36kre9A
         a3mFbKbBpR8vA3m10yg6qGZv+ZScIoVWwKe1M83Ga05V413eW8hpRK4ZvdjZdNvmYEiA
         2Lsw==
X-Gm-Message-State: AJIora8zBGZHcyG52BJvQvvUu6kWfAyryapsk98RaeP/3q7gn7PGrbLf
	M77Tge0tmIraYf1uFelg8ns4x83u4Jw=
X-Google-Smtp-Source: AGRyM1v0GGLMSfcQ/3rOburwHX8v5DFQ8Ba5SA6IIcadC9VIGcqWiA3EELFDlCeIl13zfYvVE4xxuA==
X-Received: by 2002:a0c:90e7:0:b0:472:ec05:f640 with SMTP id p94-20020a0c90e7000000b00472ec05f640mr2613003qvp.97.1657716549545;
        Wed, 13 Jul 2022 05:49:09 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id l20-20020a05622a175400b00304fa21762csm6576798qtk.53.2022.07.13.05.49.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jul 2022 05:49:09 -0700 (PDT)
Message-ID: <91abe7a5-a2e7-95b3-8cc1-2cd7d3503273@gmail.com>
Date: Wed, 13 Jul 2022 08:49:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1e226452-681f-9f8e-afe0-c2907094055c@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1e226452-681f-9f8e-afe0-c2907094055c@gmail.com>
Message-ID-Hash: LUI6TIL7DLBAQDDEG6B6HSEQOAIRDDE5
X-Message-ID-Hash: LUI6TIL7DLBAQDDEG6B6HSEQOAIRDDE5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting TX and RX bandwidth on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LUI6TIL7DLBAQDDEG6B6HSEQOAIRDDE5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNy0xMyAwNzowOSwgR2l1c2VwcGUgU2FudGFyb21pdGEgd3JvdGU6DQo+IERlYXIg
Y29tbXVuaXR5LA0KPg0KPiBJIGluc3RhbGxlZCB0aGUgVUhEIDQuMSB2ZXJzaW9uIGFuZCBmb2xs
b3dlZCB0aGlzIHR1dG9yaWFsOiANCj4gaHR0cHM6Ly9rYi5ldHR1cy5jb20vVVNSUF9OMzAwL04z
MTAvTjMyMC9OMzIxX0dldHRpbmdfU3RhcnRlZF9HdWlkZSANCj4gZm9yIHVwZGF0aW5nIHRoZSBM
aW51eCBGaWxlIFN5c3RlbSBhbmQgdXBkYXRpbmcgdGhlIEZQR0EgSW1hZ2UuDQo+DQo+IFdoZW4g
SSB0cnkgYSBzaW1wbGUgZXhhbXBsZSBmaWxlOg0KPg0KPiAuL3J4X2FzY2lpX2FydF9kZnQgLS1m
cmVxIDk4ZTYgLS1yYXRlIDVlNiAtLWdhaW4gMjAgLS1idyA1ZTYgLS1yZWYtbHZsIA0KPiAtMzAN
Cj4NCj4gSSBnZXQgdGhlIGZvbGxvd2luZyBlcnJvcjoNCj4NCj4gW1dBUk5JTkddIFswL1JhZGlv
IzBdIHNldF9yeF9iYW5kd2lkdGggdGFrZSBubyBlZmZlY3Qgb24gQUQ5MzcxLiANCj4gRGVmYXVs
dCBhbmFsb2cgYmFuZHdpZHRoIGlzIDEwME1Ieg0KPg0KPiBJIGNhbm5vdCBmaW5kIGFueSB1c2Vm
dWwgaW5mb3JtYXRpb24gb25saW5lLCBhcGFydCBmcm9tIHRoaXMgDQo+IGRpc2N1c3Npb246IA0K
PiBodHRwczovL3d3dy5tYWlsLWFyY2hpdmUuY29tL3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
L21zZzA1NzM1Lmh0bWwgDQo+IHdoaWNoIGRpZCBub3QgaGVscCBtZS4NCj4NCj4gSSBhdHRhY2gg
dGhlIGxvZyBmaWxlLg0KPg0KPiBJIGFsc28gdHJpZWQgVUhEIDMuMTUgdmVyc2lvbiwgYnV0IHRo
ZSByZXN1bHQgd2FzIHRoZSBzYW1lLg0KPg0KPiBEbyB5b3UgaGF2ZSBhbnkgaWRlYXM/DQo+DQo+
IFRoYW5rcyBpbiBhZHZhbmNlLA0KPiBHaXVzZXBwZQ0KPg0KPg0KSXQncyBqdXN0IGEgd2Fybmlu
Zy7CoMKgwqAgVGhlIGhhcmR3YXJlIGlzIHVuYWJsZSB0byBzZXQgdGhlICpBTkFMT0cqIA0KYmFu
ZHdpZHRoIGFoZWFkIG9mIHRoZSBBREMgKHJlc3AgREFDKS7CoMKgIEJ1dCBmcm9tIGEgc2lnbmFs
LXF1YWxpdHkgDQpwb2ludC1vZi12aWV3LCB0aGVyZSBpcyB2ZXJ5IGxpdHRsZQ0KIMKgIG5lZ2F0
aXZlIGltcGFjdCB0byB0aGlzLsKgIFRoZSBzaWduYWwgaXMgaW50ZXJuYWxseSBzYW1wbGVkIGF0
IHNldmVyYWwgDQpodW5kcmVkIE1IeiBieSB0aGUgQUQ5MzcxLCBhbmQgdGhlbiAqZGlnaXRhbCog
ZmlsdGVyaW5nIGFuZCBkZWNpbWF0aW9uIA0KaXMgdXNlZCB0byBkZWxpdmVyIHRoZQ0KIMKgIHJl
cXVlc3RlZCBzYW1wbGUtcmF0ZSB0byB0aGUgaG9zdCBjb21wdXRlci9hcHBsaWNhdGlvbi4NCg0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
