Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A12390BC48
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 22:44:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E375385407
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 16:44:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718657058; bh=nldeqd6+CTGUXzV7990i6J6kjRN+jTwh3fd6TI7hNb4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WMLktup51LIcgJx21Su2ErQsdvcv87DqxRcD2dco4fcA/c28jbSzeazATP2+jnzHi
	 wWEYwovvvlqF9elRSpg1+rbKIO3CMGhBJOu2Nc6rMWIVcCZYTVajZWVPqp3blz6/9h
	 hA5wOGPVY/3tdRslBykrCAuR2oiE5HjtRHOfAbiLCszkpi3wH7iSqYccUzVBKuJrDD
	 YDG5VPJUL7OKoSs4ypKc+DRtuyJxYY0AYrSpNH/ZA6NfkG7y6lJMqGt+FJfC0v+tlB
	 YKu1Xvd98sJeN17OKHlwwaTeGl5WraWkWQJUNh/aB7Zn5ROFeWNjR+sEAEiNN2m8RP
	 SDDy8+nyqW9xw==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 696B6380D2E
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 16:43:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fyI4+5MH";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6ad86f3cc34so22362646d6.1
        for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 13:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718656992; x=1719261792; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9K+mU+dj7Er2hc0IGBSVvAW0cBYlniJipe+6HSqyCaw=;
        b=fyI4+5MHUeB/b0XnTkSgpoQorO+vvYt/D5Y0ZNU0EKcKwJehJ72M2IJkYZ4yWhwBk8
         Z3Feenr9P7SyTnkDQbsSwhQ/cDUJF0K3nna0pSRM7v9jIpqHp4wJUVDyW1dRb9cyK7j3
         5rwLq50QWXv/O4Qnm1WPB2GMohkg1PrzMtofG0+TPQKR9YYYB1jZ44+HNzHI0HBsIcHJ
         y6AVubVElSNcJi0694cPAkP68xHiqXt/5bezHfOgp/4OQveh9K92uMTj5Y5SVzV45BiN
         fi4O+y3QStLTOjsSDjJx1EwX5WkvjmhG4stnKd6l7EzqJbcIXIGwSRcygI638oUXINij
         S+UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718656992; x=1719261792;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9K+mU+dj7Er2hc0IGBSVvAW0cBYlniJipe+6HSqyCaw=;
        b=fWTQotrd+fQYiBi+2UcPRa8crNe2A+UKze6yMI7vg3PMzrz0eMSP0ObjiJPizHOuQF
         rr9sArVQoX4IwDT3l1ir29iaQMifJP6uZULgeu09XsbuwUShTkhuX70izkafdipU++GO
         otSJhWQNs1mgRqGFgdCGZFL5Oxt29kFEcJUGxN5FbseHYwPaRIem7aSF+u4WsQSl9Tfa
         RRnPDJ53oCHLd73+rf/zx6lCPObWuHcrwWflLHh1Qr3mwAD0AnL1c1PJAhTGuNKJ5qu1
         biDbNP0eB4Si7cI9dFbxboVtnTggaU5QgZ51PvN22w3q5hOjWHC0nzV3Ww4FscKx0JSZ
         JaUA==
X-Gm-Message-State: AOJu0YzZhk9q48rOROB0nUf1Qj2+MfEozvwkncYvgEOGJimbeq6En/+L
	U0RaRprJs9XcGS0F5MNWGBhm+YxaI/yQFvTimRt+yiwdAmbuBApauyGSZw==
X-Google-Smtp-Source: AGHT+IH39GWI+DNDc5WasqcR2tl/WMI8eIbR1ZSOJmW3G0iHUm/+Krd+gV3fIYTbcF1Us+tETABVEA==
X-Received: by 2002:a0c:dc06:0:b0:6b0:705b:54e9 with SMTP id 6a1803df08f44-6b2df959bf2mr18652646d6.13.1718656992396;
        Mon, 17 Jun 2024 13:43:12 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6b2a5c4663fsm58843706d6.66.2024.06.17.13.43.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 13:43:12 -0700 (PDT)
Message-ID: <6471cd36-0027-4ac8-a0a6-6eb8c5b0f3ec@gmail.com>
Date: Mon, 17 Jun 2024 16:43:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <3rerUmFqA60LESwgoUom5sWmLd3B9UA9NpFKMmTOWVY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <3rerUmFqA60LESwgoUom5sWmLd3B9UA9NpFKMmTOWVY@lists.ettus.com>
Message-ID-Hash: RW6T5G3MAJ5YIR76M7UYAZ2G4QC54HIC
X-Message-ID-Hash: RW6T5G3MAJ5YIR76M7UYAZ2G4QC54HIC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: My new N210 does not recognize updated UHD driver
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RW6T5G3MAJ5YIR76M7UYAZ2G4QC54HIC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTcvMDYvMjAyNCAxNjozNywgaG9vc2FjMTlAaG90bWFpbC5jb20gd3JvdGU6DQo+DQo+IEkg
dXNlZCBQeWJvbWJzIHRvIGluc3RhbGwgdGhlIFVIRCBhbmQgdGhlIEdOVVJhZGlvIG9uIG15IFBD
IHJ1bm5pbmcgDQo+IFVidW50dSB2MjMuMTAsIHRoZSB0ZXJtaW5hbCBzY3JlZW4gaW5kaWNhdGVk
IHRoYXQgdGhlc2UgaW5zdGFsbGF0aW9ucyANCj4gY29tcGxldGVkIHN1Y2Nlc3NmdWxseSwgaG93
ZXZlciB0aGUgdGVybWluYWwgZGlkIG5vdCByZWNvZ25pemUgbXkgDQo+IOKAnHVoZF91c3JwX3By
b2Jl4oCdIGNvbW1hbmQuIFBpbmdpbmcgdGhlIE4yMTAgdmlhIEV0aGVybmV0IHVzaW5nIHRoZSAN
Cj4gY29ycmVjdCBzdGF0aWMgSVAgYWRkcmVzcyB3b3JrZWQgb2suDQo+DQo+IEdvaW5nIGJ5IHRo
ZSBFdHR1cyBVSEQgaW5zdGFsbGF0aW9uIGd1aWRlLCBJIHRoZW4gdHlwZWQ6ICJzdWRvIA0KPiBh
ZGQtYXB0LXJlcG9zaXRvcnkgcHBhOmV0dHVzcmVzZWFyY2gvdWhkIiwgZm9sbG93ZWQgYnkgInN1
ZG8gYXB0LWdldCANCj4gdXBkYXRlIiwgZm9sbG93ZWQgYnkgInN1ZG8gYXB0LWdldCBpbnN0YWxs
IGxpYnVoZC1kZXYgdWhkLWhvc3QiLiBUaGlzIA0KPiBwcm9jZXNzIHRoZW4gYXBwZWFyZWQgdG8g
cnVuIHRvIGNvbXBsZXRpb24uDQo+DQo+IEkgdGhlbiB0eXBlZDogInVoZF91c3JwX3Byb2JlIiBh
Z2Fpbi4gQSBydW4tdGltZSBlcnJvciB3YXMgdGhlbiANCj4gZGlzcGxheWVkOiAiRXhwZWN0ZWQg
RlBHQSBjb21wYXRpYmlsaXR5IG51bWJlciAxMSwgYnV0IGdvdCAxMDogVGhlIA0KPiBGUEdBIGJ1
aWxkIGlzIG5vdCBjb21wYXRpYmxlIHdpdGggdGhlIGhvc3QgY29kZSBidWlsZCINCj4NCj4gU2lu
Y2UgSSBqdXN0IHB1cmNoYXNlZCBteSBOMjEwIGZyb20gTkkgKHNoaXBwZWQganVzdCBsYXN0IHdl
ZWspLCBJIA0KPiByZWFsbHkgd291bGQgbGlrZSB0byB2ZXJpZnkgdGhhdCBpdCB3b3JrcyBhcyBz
aGlwcGVkIHdpdGggdGhlIGN1cnJlbnQgDQo+IEZQR0EgYnVpbGQgdGhhdCB3YXMgbG9hZGVkIGF0
IHRoZSBmYWN0b3J5IGJlZm9yZSBtZXNzaW5nIHdpdGggaXQuIA0KPiBDb3VsZCBzb21lb25lIHBs
ZWFzZSBhZHZpc2UgbWUgb24gaG93IHRvIHByb3Blcmx5IGluc3RhbGwgdGhlIFVIRCANCj4gZHJp
dmVyIHZlcnNpb24gdGhhdCBpcyBjb21wYXRpYmxlIHdpdGggbXkgbmV3IE4yMTDigJlzIGZhY3Rv
cnkgRlBHQSANCj4gYnVpbGQ/IEnigJltIG9rIHdpdGggdXBkYXRpbmcgdGhlIEZQR0EgaW1hZ2Ug
bGF0ZXIsIGJ1dCB3YW50IHRvIG1ha2UgDQo+IHN1cmUgdGhhdCB0aGUgaGFyZHdhcmUgaXMgZnVu
Y3Rpb25hbCBvbiBhcnJpdmFsIGZpcnN0Lg0KPg0KPiBJIGFtIG5ldyB0byBMaW51eCwgc28gdGhh
bmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciBoZWxwIQ0KPg0KPg0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpZb3UgY291bGQgaGF2
ZSBpbnN0YWxsZWQgInVoZC1ob3N0IiB3aXRob3V0IHVzaW5nIHRoZSBQUEEgcmVwb3NpdG9yeS7C
oCANClNvLCBub3csIHlvdSBoYXZlIGEgIm1peGVkIiBzeXN0ZW0gd2l0aCBzb21lIHN0dWZmDQog
wqAgaW5zdGFsbGVkIGZyb20gdGhlIG9mZmljaWFsIFVidW50dSByZXBvLCBhbmQgc29tZSBzdHVm
ZiBpbnN0YWxsZWQgDQpmcm9tIHRoZSBOSS1idWlsdCBQUEEuDQoNClRoZSBGUEdBIGNvZGUgZm9y
IE4yMTAgaGFzbid0IGNoYW5nZWQgaW4gcXVpdGUgc29tZSB0aW1lLsKgIFNvIHlvdSBtYXkgDQpo
YXZlIGVuZGVkIHVwIHdpdGggYSB1bml0IHRoYXQgd2FzIHNpdHRpbmcNCiDCoCBpbiBzdG9jayBm
b3IgcXVpdGUgc29tZSB0aW1lLsKgIEknZCBnbyBhaGVhZCBhbmQganVzdCBwcm9ncmFtIGEgbmV3
IA0KaW1hZ2UgaW50byB0aGUgZGV2aWNlLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
