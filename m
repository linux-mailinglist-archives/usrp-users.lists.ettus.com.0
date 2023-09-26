Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B14367AF6C1
	for <lists+usrp-users@lfdr.de>; Wed, 27 Sep 2023 01:38:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9AF22385376
	for <lists+usrp-users@lfdr.de>; Tue, 26 Sep 2023 19:38:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695771515; bh=xgWHt8aNOh17T424A2ERnZI1fnr+TvZEsk+wX9kn9fk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TtS4pFcFk2xkYQ9OfGx0QC4O6C1vBXZpdNTIJqSGiuVukkKu3PI2ykMB+TH9czlbD
	 8Q6yXUjlsJbutWJ0u0eoRqjNK95HK1xAkWiW/Nlm5U3wMxTEfXeuU4kr36sNAqJfVg
	 vpOHp8gfYm0kKzgmsKjkOJ7nA3IU58UfRgQcSm9xjX44xsmlYoI0LW3Qcac33ruiSR
	 48DnP478i+IEABSGeOubWqY/TxaMY9c1oMUlK8AssA+uFqnnFO6D1vPRxVzCNbMOtT
	 +07fRHg8eVkLFiGRPL6t3Ch3Csc7N4P1CM2tEO+oSr/nnopwVjUEkYEu42Q2HiKjpB
	 63GsKNHzA8r3w==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 62F22385376
	for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 19:38:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BYvvwxSV";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-77412b91c41so522035585a.1
        for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 16:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695771503; x=1696376303; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9Yuqlk4VfpVrxaBwQpP/zYXN3zpfd3/aFIJwTf3h6Yw=;
        b=BYvvwxSV3D6AUQuwcptb9RZlvCQa5T7Hc/hoBjH62ci35/EX/bNQmi7ATGy0Djh/pj
         tsUXrNOjcL8EJYPiF0h1Gmfka9uQYNM8F0asL8uRnGfwygU9uCHHuHbZVGDLD6Q+r6rv
         Tf40NFmfSeSXFRz78fN3ytiv1L4mOeLwDHCAwpGK9zVVJpLQyIDm2N2eZgSizDPLBp/h
         etlw+mBUFVt+Eef5AbyFgeT7SDCEUXwLhuzpnrL94+Xcu0qOGvkZM1EZtJlZ7klefbwL
         Sfn7UPeqOD+vvGBQFdHVmjHNOWe7TFaSBsR7BBoSq1vS9tOUK5oAyFi1Ndbkhr/wtpvc
         KIwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695771503; x=1696376303;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9Yuqlk4VfpVrxaBwQpP/zYXN3zpfd3/aFIJwTf3h6Yw=;
        b=XuH+ynwOY+rhcRyK4Z5ymfi46TdmNKUgnKjyxlw5gnJwjYRt1aNeDd81r0Bg9t6bin
         K+Kz/xLvj63CmkJCvZw5tqxMRIBHwpV0kO5hjjT63aJ3zO0dBqVt6NC4pvlNJbYfICwC
         pYbG4tKoH2EDLyg0GhkcAR81Sdl/dfkAIUYRgm4CV2zJ4+RndMKJ8R857Bq+U5odf6W4
         cEAa4B8B3mg8yUcZyfvk5o9zvL4Vi60qV2AqVDQWySik1sqGRdKzAQVCc2hGqEKBFit8
         4dfDSrKS8/cAh2gHa40394hI3HA/BH9eSXFrLOyN2mT5/z4SP1sL3Ns/lybmgrCBJvHW
         IgEg==
X-Gm-Message-State: AOJu0Yxvr60qjbkMZuHfQKVIq2vflbmaaspXHiqtcPiyWL8rqER7I1nx
	s5ntor+q7/PbDUiqFnTG2Mg=
X-Google-Smtp-Source: AGHT+IH7vHPbjX9K6WxVj5YUPD3MMIxuXwi44rZnSyuCMPNmQhyexMZhUtECLwVQBQJ7iVGq0nXxEg==
X-Received: by 2002:a05:620a:2a12:b0:76f:93e:4b2f with SMTP id o18-20020a05620a2a1200b0076f093e4b2fmr345189qkp.38.1695771502645;
        Tue, 26 Sep 2023 16:38:22 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id e2-20020a05620a208200b0076cda7eab11sm5029078qka.133.2023.09.26.16.38.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 16:38:22 -0700 (PDT)
Message-ID: <4b125243-6ecf-9975-95e0-73d973f3ca04@gmail.com>
Date: Tue, 26 Sep 2023 19:38:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Achilleas Anastasopoulos <anastas@umich.edu>, usrp-users@lists.ettus.com
References: <CAErymBjsm1EFK_Py2RGfm7nyWzAkspg5=at5Cd+24v2XVnOkQQ@mail.gmail.com>
 <76176ec5-f739-d9dd-d85c-9f7c90f4f60d@gmail.com>
 <CAErymBgV7uNOSMUko3V2CJAo0OCe00COgqQyRMT9YDFPTEKcrw@mail.gmail.com>
 <27b80b15-d95d-e1e7-aecf-3e5541afb1b5@gmail.com>
 <CAErymBh+4WaKd8BTiwGW7uHHhbii_u6GvV52MB8UJfioDyCKEA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAErymBh+4WaKd8BTiwGW7uHHhbii_u6GvV52MB8UJfioDyCKEA@mail.gmail.com>
Message-ID-Hash: BXBGX66FWCF66JVPNWZREUDHEOB26XZP
X-Message-ID-Hash: BXBGX66FWCF66JVPNWZREUDHEOB26XZP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BXBGX66FWCF66JVPNWZREUDHEOB26XZP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjYvMDkvMjAyMyAxODoyMiwgQWNoaWxsZWFzIEFuYXN0YXNvcG91bG9zIHdyb3RlOg0KPiBJ
bmRlZWQsIEkgaGF2ZSBpbnN0YWxsZWQgdWhkIG1hbnVhbGx5Og0KPg0KPiBJIHdlbnQgaGVyZSAo
bG9uZyB0aW1lIGFnbyk6DQo+IGh0dHBzOi8vbGF1bmNocGFkLm5ldC9+ZXR0dXNyZXNlYXJjaC8r
YXJjaGl2ZS91YnVudHUvdWhkLytwYWNrYWdlcz9maWVsZC5uYW1lX2ZpbHRlcj11aGQmZmllbGQu
c3RhdHVzX2ZpbHRlcj1wdWJsaXNoZWQmZmllbGQuc2VyaWVzX2ZpbHRlcj1mb2NhbCANCj4gPGh0
dHBzOi8vbGF1bmNocGFkLm5ldC9+ZXR0dXNyZXNlYXJjaC8rYXJjaGl2ZS91YnVudHUvdWhkLytw
YWNrYWdlcz9maWVsZC5uYW1lX2ZpbHRlcj11aGQmZmllbGQuc3RhdHVzX2ZpbHRlcj1wdWJsaXNo
ZWQmZmllbGQuc2VyaWVzX2ZpbHRlcj1mb2NhbD4NCj4gYW5kIGRvd25sb2FkIGxvY2FsbHkgZm91
ciAqLmRlYiBmaWxlczoNCj4gLSBsaWJ1aGQ0LjIuMF80LjIuMC4wLTB1YnVudHUxX2ZvY2FsMV9h
bWQ2NC5kZWINCj4gLSBsaWJ1aGQtZGV2XzQuMi4wLjAtMHVidW50dTFfZm9jYWwxX2FtZDY0LmRl
Yg0KPiAtIHB5dGhvbjMtdWhkXzQuMi4wLjAtMHVidW50dTFfZm9jYWwxX2FtZDY0LmRlYg0KPiAt
IHVoZC1ob3N0XzQuMi4wLjAtMHVidW50dTFfZm9jYWwxX2FtZDY0LmRlYg0KPiBhbmQgdGhlbiBp
bnN0YWxsIHRoZW0gbWFudWFsbHkgdXNpbmcNCj4gc3VkbyBkcGtnIC1pIHBhdGhfdG9fZGViX2Zp
bGUNCj4NCj4gQXJlIHRoZXNlIHBhY2thZ2VzIGluc3RhbGxpbmcgYm90aCBsaWJyYXJpZXMgQU5E
IHV0aWxpdGllcz8NCllvdSBjYW4gdXNlIGRwa2cgLUzCoCBvbiB0aGUgcGFja2FnZSB0byBzZWUg
d2hhdCBmaWxlcyBpdCBpbmNsdWRlcy4NCg0KPg0KPiBJIGFsc28gY2hlY2tlZCBpbsKgwqB+Ly5s
b2NhbC9zaGFyZS91aGQvY2FsLw0KPiBhbmQgZG8gbm90IGhhdmUgYW55IGNhbCBmaWxlcyBmb3Ig
dGhpcyBVU1JQLg0KPg0KPiBGaW5hbGx5IEkgZGlkIHdoYXQgeW91IHN1Z2dlc3RlZCAobGRkKSBp
biB0d28gY29tcHV0ZXJzIHdoZXJlIGluIHRoZSANCj4gZmlyc3Qgb25lIEkgaGF2ZSB0aGUgcHJv
YmxlbSBhbmQgaW4gdGhlIHNlY29uZCBvbmUgaXQgd29ya3MgYW5kIGdvdCANCj4gdGhlc2UgcmVz
dWx0cyAod2hpY2ggc2VlbSBpZGVudGljYWwgdG8gbWUgZXhjZXB0IHRoZSBoZXggbnVtYmVycyBp
biANCj4gcGFyZW50aGVzZXMuLi4pOg0KPg0KQXJlIHRoZSBYMzEwcyBvbiBhbGwgdGhlc2Ugc3lz
dGVtcyBjb25maWd1cmVkIGlkZW50aWNhbGx5Pw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
