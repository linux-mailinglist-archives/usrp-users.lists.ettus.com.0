Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3269C89E7EF
	for <lists+usrp-users@lfdr.de>; Wed, 10 Apr 2024 03:48:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A610385295
	for <lists+usrp-users@lfdr.de>; Tue,  9 Apr 2024 21:48:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1712713716; bh=+Vob0p2w2QJIarltAmxK8126xePCDsSkkzEzfNfIr8U=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=mo2F+KtKPkRn7M+IpASCtA1ZPFbl52JaujeZVlVY+GiJYgN55rO9vsS8arxmDlmXl
	 SHMxlQ882q9B6GqYRcXuldEZsFCUG8W5WuoUZMy45dpJwP6Vc8XMozKcLV1sCcLW+M
	 Rb8QdG538A7BL0IM5s2kZ7TS7SgmOi/WrVLxwqxvezTVVvGrDa4IgSyymh00Sua9LC
	 iaHILLfspM3DieHqAlFL4BUwdslI7m9Yy7istg04Ycdpj5GRZzgq0qtkvr+HYGKdlq
	 eP7PNXa8gyMRxKaFZgcAtoXqdqkgah2L8WWaT5FTn3k+pSrISiUx9onOQudzM06iQe
	 4v6Kvthb2Wokg==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id AB9E5384F42
	for <usrp-users@lists.ettus.com>; Tue,  9 Apr 2024 21:48:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=febo.com header.i=@febo.com header.b="IBnYHv+z";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-69b0f08a877so17654656d6.0
        for <usrp-users@lists.ettus.com>; Tue, 09 Apr 2024 18:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=febo.com; s=google; t=1712713682; x=1713318482; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X6aR6fYiH4Ea9indbjotN0iIQ56TbxK/cxD/942Q6Zg=;
        b=IBnYHv+zXyUpj4jBNNvKzLEiy1TLvLfGo29luW2Ksqo+DW5INFQBSwNi68S1T4pZj8
         tQgxKR3KFP21YO7eSpJ4Cs/x3Ql7rVT8TdWx7/8toKymPlBOgONlbZldwYx3ZtDzrpls
         GiM8xPe2zLEqOarjcl6dKaIF/lg8+ywYC9ZjvORyFpKrxDdXOw8buVhnwcT+91eTaoBn
         gA6QrSYQ1CO2pMD/612P8LPBN4NHWfQbxLyCK9Ewy/e5v/t+RovU3eSDKYChQRGxBrTK
         XKOGRy730DBTa8zbb8GdVIDnh7qQwrfwXno1+IfpksiKga+y2JPHAnpG/oI3tiuCsUQ9
         QfeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712713682; x=1713318482;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X6aR6fYiH4Ea9indbjotN0iIQ56TbxK/cxD/942Q6Zg=;
        b=kXIzAnIEb9iySIvLXKohfnHhSiuaKPJdq/E00OsS2VhG3NktKbuP30ia8z5ipdYLrb
         jGpR/oOi6xVy2OyJwXD/Uei4pM7Ea7nKCNb3h335zFwSGnnL0kLYrwEY+BuMe7kx6vWW
         9JZyaY7xaEcT5yuaXHuQ0C49MMfnIt6TF/yLw0AiuEY/7Af8PB6z8lLypOyiO/1eSPJA
         0XzTvO/38MYpyIdkfNVi+4tvxkCy18ottt5Gix42b+Ybais+GA6/6WG3JWBnrG9BC/ym
         j7hQc9P1zvlXlXw89V1CCyFLAu8zbZ700xE97gNdpmc5QcJtW4hRydZRvT2QSQCdpQ2M
         vlrQ==
X-Gm-Message-State: AOJu0YyoZFnwwD7WF203ui6TW8wFFS3Aw2Mze1paajYA+/jJMeM845RY
	N/G6Yg1+wubFltvpdepOi6m+fZHFZ9PxB7hjZ50oywbNf5R942ZmBlvsBZk3P5smwLr6yInFo8o
	k
X-Google-Smtp-Source: AGHT+IEiKCzdLM5uVd2hqeNGnCouyYQ6FbEssZjPhR7U67uYv9TNYWxW1vyqRP4D5PAQL+69Yglh+g==
X-Received: by 2002:a05:6214:2627:b0:699:26b2:31b3 with SMTP id gv7-20020a056214262700b0069926b231b3mr1518762qvb.12.1712713681837;
        Tue, 09 Apr 2024 18:48:01 -0700 (PDT)
Received: from [10.73.3.60] (litterbox.febo.com. [98.103.30.118])
        by smtp.gmail.com with ESMTPSA id od1-20020a0562142f0100b0069b26d7f061sm1275484qvb.99.2024.04.09.18.48.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 18:48:01 -0700 (PDT)
Message-ID: <a27c6b04-4e97-461a-b0ca-c771bf29d90d@febo.com>
Date: Tue, 9 Apr 2024 21:48:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <d506d310-c2e3-43b4-8ae2-515205e3e19b@saloits.com>
Content-Language: en-US
In-Reply-To: <d506d310-c2e3-43b4-8ae2-515205e3e19b@saloits.com>
Message-ID-Hash: DLFB2Q2CRPFJ5547CGER6DMHOGXNIG3P
X-Message-ID-Hash: DLFB2Q2CRPFJ5547CGER6DMHOGXNIG3P
X-MailFrom: jra@febo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Frequency Stability versus Frequency Accuracy
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DLFB2Q2CRPFJ5547CGER6DMHOGXNIG3P/>
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

SSdtIG5vdCBzdXJlIGFib3V0IHRoaXMgcGFydGljdWxhciB1bml0LCBidXQgdHlwaWNhbGx5IGlm
IGEgY3J5c3RhbCANCm9zY2lsbGF0b3IgZGF0YXNoZWV0IGxpc3RzIGFuICJhY2N1cmFjeSIgc3Bl
Y2lmaWNhdGlvbiwgdGhhdCBpcyBvdmVyIGEgDQp0aW1lIHBlcmlvZCB0aGF0IHRha2VzIGludG8g
YWNjb3VudCB0aGUgbG9uZy10ZXJtIGZyZXF1ZW5jeSBkcmlmdCANCigiYWdpbmciKSB0aGF0IGFm
ZmVjdHMgYWxtb3N0IGFsbCBvc2NpbGxhdG9ycy4gIFNvbWV0aW1lcyB0aGUgYWNjdXJhY3kgDQpp
cyBzcGVjaWZpZWQgb3ZlciBhIHBlcmlvZCBvZiB5ZWFycywgZXNwZWNpYWxseSBpZiB0aGUgb3Nj
aWxsYXRvciANCmRvZXNuJ3QgaGF2ZSBhIGZyZXF1ZW5jeSBhZGp1c3RtZW50IGlucHV0LiAgSW4g
b3NjaWxsYXRvcnMgdGhhdCBjYW4gYmUgDQp0d2Vha2VkLCBpdCBtaWdodCBiZSBzdGF0ZWQgYXMg
YW4gYWdpbmcgcmF0ZSBvZiBzb21lIHZhbHVlIHBlciBkYXksIA0Kd2Vlaywgb3IgbW9udGguDQoN
CkluIGluZXhwZW5zaXZlIG9zY2lsbGF0b3JzLCB0aGUgInN0YWJpbGl0eSIgbnVtYmVyIHVzdWFs
bHkgcmVmZXJzIHRvIA0Kc2hvcnQtdGVybSBjaGFuZ2UgZHVlIHRvIHRlbXBlcmF0dXJlIGFuZCBv
dGhlciBlbnZpcm9ubWVudGFsIGZhY3RvcnMuIA0KSW4gbW9yZSBleHBlbnNpdmUgb3NjaWxsYXRv
cnMsIHN0YWJpbGl0eSBpcyB1c3VhbGx5IHNwZWNpZmllZCBvdmVyIA0KdmFyaW91cyBhdmVyYWdp
bmcgaW50ZXJ2YWxzLCBzYXkgZnJvbSAxIHNlY29uZCB0byAxMEsgc2Vjb25kcy4NCg0KU29tZXRp
bWVzIGFjY3VyYWN5IGlzIGFsc28gZXhwcmVzc2VkIGFzIGEgY29tYmluYXRpb24gb2YgdGltZSBh
bmQgDQp0ZW1wZXJhdHVyZSByYW5nZSwgd2hpY2ggZ2l2ZXMgdGhlIG1vc3QgY29uc2VydmF0aXZl
IHJlc3VsdC4NCg0KSm9obg0KLS0tLQ0KDQpPbiA0LzkvMjQgMjE6MTksIFRpbW90aHkgSi4gU2Fs
byB2aWEgVVNSUC11c2VycyB3cm90ZToNCj4gSGksDQo+IA0KPiBJJ20gd3JpdGluZyBhICJHZXR0
aW5nIFN0YXJ0ZWQiIGd1aWRlIGZvciBvdXIgcmVzZWFyY2ggZ3JvdXAuwqAgV2hlbiBJDQo+IGdv
dCB0byB0aGUgR1BTRE8gc2VjdGlvbiwgSSBoYWQgZGlmZmljdWx0eSBpbiBmaWd1cmluZyBvdXQg
dGhlIGZyZXF1ZW5jeQ0KPiBzdGFiaWxpdHkgYW5kIHRoZSBmcmVxdWVuY3kgYWNjdXJhY3kgb2Yg
dGhlIEIyMTAuDQo+IA0KPiBBdCBsZWFzdCB0aGUgZWFybHkgdmVyc2lvbnMgb2YgdGhlIEIyMTAg
dXNlZCBhIENUUyBFbGVjdHJvbmljIENvbXBvbmVudHMNCj4gNTIwTDIwREE0ME0wMDAwIFRDWE8u
wqAgVGhlIGRhdGFzaGVldCBmb3IgdGhpcyBUQ1hPIHNheXMgaXQgaGFzIGENCj4gZnJlcXVlbmN5
IF9zdGFiaWxpdHlfIG9mICsvLSAyLjAgcHBtIG92ZXIgYW4gb3BlcmF0aW5nIHRlbXBlcmF0dXJl
IHJhbmdlDQo+IG9mIC0zMEMgLSArODVDLg0KPiANCj4gVGhlIENUUyB3ZWJzaXRlIHN0YXRlcyB0
aGF0IHRoZWlyIFRDWE8gZXhoaWJpdDogIlN0cmF0dW0gMyBQZXJmb3JtYW5jZTsNCj4gwrE0LjZw
cG0gb3ZlcmFsbCwgwrEwLjI4cHBtIG92ZXIgLTQwwrBDIHRvICs4NcKwQyIuwqAgQW0gSSBjb3Jy
ZWN0IGluDQo+IGNvbmNsdWRpbmcgdGhhdCB0aGlzIGlzIHRoZSBmcmVxdWVuY3kgX2FjY3VyYWN5
XyBvZiB0aGUgVENYTyB1c2VkIGluDQo+IHRoZSBCMjEwP8KgIERvZXMgdGhpcyB0cmFuc2xhdGUg
ZGlyZWN0bHkgaW50byB0aGUgZnJlcXVlbmN5IF9hY2N1cmFjeV8NCj4gb2YgdGhlIEIyMTA/DQo+
IA0KPiBUaGUgQjIxMCBkYXRhc2hlZXQgc3RhdGVzIGEgZnJlcXVlbmN5IF9hY2N1cmFjeV8gb2Yg
Ky8tIDIuMCBwcG0uwqAgSXMNCj4gaXMgYSB0eXBvLCBhbmQgc2hvdWxkIHRoZSBkYXRhc2hlZXQg
YWN0dWFsbHkgc2F5IGZyZXF1ZW5jeSBfc3RhYmlsaXR5Xz8NCj4gT3IsIGRpZCBzb21lb25lIGNv
bmNsdWRlIHRoYXQgb3ZlciBhIHJlYXNvbmFibGUgb3BlcmF0aW5nIHRlbXBlcmF0dXJlLA0KPiB0
aGUgZWZmZWN0cyBvZiB0ZW1wZXJhdHVyZSBvdXR3ZWlnaCBhbnkgaW5hY2N1cmFjeSBpbiB0aGUg
ZnJlcXVlbmN5DQo+IG9mIHRoZSBUQ1hPPw0KPiANCj4gQW5lY2RvdGFsbHksIEkgaGF2ZSBoZWFy
ZCB0aGF0IG9uZSBvcmdhbml6YXRpb24gZm91bmQgdGhhdCB0aHJlZSBvZg0KPiB0aGVpciBmb3Vy
IEIyMTBzLCB3aGVuIG9wZXJhdGluZyBhcyBhIDVHIGJhc2Ugc3RhdGlvbiwgd2VyZSB1bmFibGUN
Cj4gdG8gY29ubmVjdCB3aXRoIGNvbW1lcmNpYWwgb2ZmLXRoZS1zaGVsZiBjZWxsdWxhciBoYW5k
c2V0cywgdW5sZXNzDQo+IGFuIGV4dGVybmFsIEdQU0RPIHdhcyB1c2VkIHdpdGggdGhlIEIyMTAu
wqAgRG9lcyBhbnlvbmUgaGF2ZSBhbnkgaWRlYQ0KPiB3aGF0IGZyZXF1ZW5jeSBhY2N1cmFjeSBp
cyBleHBlY3RlZCBieSBjZWxsdWxhciBoYW5kc2V0cz8NCj4gDQo+IFNvLCBkb2VzIGFueW9uZSBr
bm93IHdoYXQgdGhlIGZyZXF1ZW5jeSBfYWNjdXJhY3lfIG9mIHRoZSBCMjEwIGlzLCBpbg0KPiB0
aGUgYWJzZW5jZSBvZiBhIEdQU0RPP8KgIE9yLCBzaG91bGQgSSBqdXN0IHVzZSB0aGUgKy8xIDIu
MCBwcG0gZmlndXJlPw0KPiANCj4gVGhhbmtzLA0KPiANCj4gLXRqcw0KPiAtIC0gLSAtDQo+IA0K
PiBbMV0gDQo+IGh0dHBzOi8vd3d3LmN0c2NvcnAuY29tL0ZpbGVzL0RhdGFTaGVldHMvUGFzc2l2
ZXMvRkNQL1RDWE8vVENYTy01MjAtZGF0YXNoZWV0LnBkZg0KPiANCj4gDQo+IA0KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
