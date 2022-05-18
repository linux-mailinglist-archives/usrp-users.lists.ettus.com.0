Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8947352C40F
	for <lists+usrp-users@lfdr.de>; Wed, 18 May 2022 22:21:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A8BC384998
	for <lists+usrp-users@lfdr.de>; Wed, 18 May 2022 16:21:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652905276; bh=iEnS9Qj3NtHw1F1J7m3sQXo+2mRhdXAkIjiWH9Md8IU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=smVszlHZeH2sYLs4ZKy7D+BBn7+kJGck+8iK8xmfDsUBOLzqcsmtAmILCGS8rb5jJ
	 8FOmAWpUBT2A52ip7IqMT+RSpChLJs6YWmDkr0Ee5PLpK+mT3pVDcNWL/ovI/X7vRs
	 vPDpndWgChhvA4oylFwYPGwK8D2Jtt3AskbIDq2/7z4w5sdnLGy5GwLUTaRnqCuQ/J
	 ONme3Dho1IFqHyQwn7XbbdApcghko02w/nTvIVjbtILniLwuY5VSkFQEr6OxwXDhko
	 ZaeCnxH5TjLywFcqFuCCJwt/K3qsqE7XpNlPJpG3g1EcNjHsJfOAsNgWIwJeJ3BHfl
	 rG42ZlER0HXKw==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C548F3845F4
	for <usrp-users@lists.ettus.com>; Wed, 18 May 2022 16:20:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eFzh+qBI";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id b20so2431675qkc.6
        for <usrp-users@lists.ettus.com>; Wed, 18 May 2022 13:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=dIxgLXcoLnvegPkfjVBRrjohRAW2iPyb5qiryUxjeSs=;
        b=eFzh+qBIJZDxtnhvyVYJM4FcaYK4UFaPgIPbgoPkQz4NyDAvtXEfzAxZ9sxx/PV/Uf
         aUP8NrEJcBASbeJ1znZsPvxdNjIO7hU3hlV2qqR1fDW+EthbIv6Mx0o93PAH8LB+IFLL
         INepY+WNi0Oadeodc0x3nyywxMGYZQpGOKnEnM8SuFYubc3Qv0/ayIGWpG0wGe1SGPus
         2CYMqB+eUSETBuQDKkhgECgKnCWtOt2joZzVGJYJIl+Ojr8tvUnzmyN2IbOuqc5eUH8Q
         P8vs7DqSIWh8ggNcWZ4me0rf32JZ3EpSx7+QBYvEjE5Y61C/qjwSNWMjx6aka0zfuPG0
         QRcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dIxgLXcoLnvegPkfjVBRrjohRAW2iPyb5qiryUxjeSs=;
        b=u8HaJwjXv0kKRTB9epwxg4TBIRJ3gkkKZNNe7+VO2s23P19tz1p7VfP3Pa65fNKoD8
         0lFRj75+AaKjKDLCjeHAOChVQBsioBJ9kDTZzSyIa062YUqTO7D5WHyLluT2NjzCvGkl
         1TXN3WPNFvOiineE8Scz2OFFE3fd9n511JqZCEeX8M4iD4piEyXvpwurny7hCCh8EMZw
         j1PH7qJRdPNXbafvAK8FfkmNMmrB5y2bga7jsYBGuT0py2Gca9SQaSmBxrfQnSs+9f+0
         dz1tzCxGJvtspOTGFsZkx0N9WMeyPlB6Up1pi/5KE3iQXMmj+vVAh9ZBXFG/5OfDdn69
         p92A==
X-Gm-Message-State: AOAM532Vc81ZOMVlcaqBffwbRd/M/Me6AQTNNqyVpeBYqz/2Nyiu6mM8
	dB6w4hPrVBD7AmAkDVXLcnlAcjsu/5M=
X-Google-Smtp-Source: ABdhPJyGFZaupmND3BhvNbMtXE+sqhMl4LU7Kk6+BOcTSBtwKuxglikFJcF44KEKFcYZBgU8AANQQQ==
X-Received: by 2002:a05:620a:2949:b0:6a0:395f:c4b0 with SMTP id n9-20020a05620a294900b006a0395fc4b0mr896597qkp.3.1652905207072;
        Wed, 18 May 2022 13:20:07 -0700 (PDT)
Received: from [192.168.2.203] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id g17-20020ac84691000000b002f3e127be41sm139523qto.20.2022.05.18.13.20.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 13:20:06 -0700 (PDT)
Message-ID: <19dbac4c-acc4-3827-83d2-982d0fa83ddf@gmail.com>
Date: Wed, 18 May 2022 16:20:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <5MRZslBCn8543oJnh1vGlSlOw7dYQTzWCtpBw9jo@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5MRZslBCn8543oJnh1vGlSlOw7dYQTzWCtpBw9jo@lists.ettus.com>
Message-ID-Hash: PN7S53SEMEPBFKK3ROK227SDJMRKDJR3
X-Message-ID-Hash: PN7S53SEMEPBFKK3ROK227SDJMRKDJR3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: b200 mini LVDS Vs CMOS
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PN7S53SEMEPBFKK3ROK227SDJMRKDJR3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0xOCAxNTo0MiwgYWhhbXphMTk4MkBnbWFpbC5jb20gd3JvdGU6DQo+DQo+IEhp
LA0KPg0KPg0KPiBJIGhhdmUgYjIwMCBtaW5pIGFuZCBieSByZWFkaW5nIHJlZ2lzdGVycyBJIGZp
Z3VyZWQgb3V0IHRoYXQgaXQgaXMgDQo+IHVzaW5nIENNT1MgZm9yIGRpZ2l0YWwgaW50ZXJmYWNl
IGJldHdlZW4gYWQ5MzYxIGFuZCBCQlAuDQo+DQo+IElzIHRoZXJlIGEgd2F5IHRvIG1ha2UgaXQg
dXNlIExWRFM/DQo+DQo+IEZvciBleGFtcGxlLCBhbiBGUEdBIGltYWdlIHRoYXQgY291bGQgZG8g
dGhpcz8NCj4NCj4gSSBhbSB1c2luZyBHTlUgcmFkaW8gYW5kIFVIRCB0byBwcm9ncmFtIHRoZSBi
b2FyZCwgd2hhdCBvdGhlciANCj4gbW9kaWZpY2F0aW9ucyBpbiB0aGUgc29mdHdhcmUgSSB3aWxs
IG5lZWQgdG8gc3VwcG9ydCBMVkRTIGlmIHBvc3NpYmxlPw0KPg0KPg0KPiBUaGFua3MsDQo+DQo+
IEFobWVkDQo+DQo+DQpBIHZlcnkgc2ltaWxhciBxdWVzdGlvbiB3YXMgYXNrZWQgb24gdGhpcyBs
aXN0IGFib3V0IG9uZSB3ZWVrIGFnby4gVGhlIA0KYmFzaWMgYW5zd2VyIGlzIHRoYXQgdGhpcyB3
YXMgdHJpZWQsIHllYXJzIGFnbywgYW5kIHRoZSBGUEdBIGNvdWxkbid0IA0KbWVldCB0aGUgUy9I
DQogwqB0aW1pbmcgZm9yIHRoZSBmYXN0ZXIgTFZEUyBpbnRlcmZhY2UuIFNvLHRoZSBDTU9TIGlu
dGVyZmFjZSBpcyB1c2VkLg0KDQpOb3csIHdoaWxlIGl0IE1BWSBiZSB0aGUgY2FzZSB0aGF0ICJo
YXZpbmcgYW5vdGhlciBsb29rIiBtaWdodCB5aWVsZCB0aGUgDQphYmlsaXR5IHRvIHVzZSB0aGUg
TFZEUyBpbnRlcmZhY2UsIHRoZXJlIGlzIG5vdCBhbiBGUEdBIGltYWdlICJpbiB0aGUgd2lsZCIN
CiDCoCB0aGF0IGFsbG93cyB0aGlzLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
