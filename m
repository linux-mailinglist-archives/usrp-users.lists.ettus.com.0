Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0139FEA2D
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2024 20:03:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 886FF385A86
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2024 14:03:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735585394; bh=8mKCEo+4WjtsK+zS2g6tl8P8RQOjzeyfJGk0Bwbo+8k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=f4mjCCRDA+uc9QX/OeZtKFbZsPvV5pnGHW+6Rh8s7rmjBl4GP8kFfwpNyun2Dz/Kp
	 xNBcTrf66OCU8Ai0CfDoUmd6n/h1iO9SGwrda4TVm0qNpUXvC6f7Rqq+zFbj2MQW5S
	 lTvX11/vsKP/1ceJRlIF1Zn+4PbOfShc+wlxiNfbN0YZRFjaCFrqavW3lefLxkV1ND
	 qBHIoW74JNXtAZNbRj3H7fuKj8Gft49EDWI6eroxwt4Mcgm7Yb/jl2NTZ64mQXv0t1
	 24+2D/544IA0hKitNLXwwMhhi9J5NaibP59oObV8LNxHg1U17bWBoALiGuUybtSlGy
	 ngHFI/h6h05mA==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 83769385A57
	for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2024 14:03:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S3rC2eqI";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7b6f0afda3fso949336685a.2
        for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2024 11:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735585383; x=1736190183; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=skbAUTnLfK+iEdYPYlFTxkgM7zzC8lBtusHEDjikxOw=;
        b=S3rC2eqIJa7RRWikZwmm99qrqjVE+QGYI0SeLPjKaFzzFEhaOSvyWNhIee9UZPw2S8
         sLMqxevd6wpm+lL+OKqJpqV1dEYzmNyhAamNdXtF9kG/BIC2ShVfS0mBBzr/gGP+bkPf
         OkE5j2k4U3EZwItLjLzdsAi8J/RN7sbhLRCjdlRUzI8VaiTuvdIL4eJYkisrZ1M36ahC
         uEMqE1y8WZQy+cv8c2BlZGrIslAPYGrVxzK1YF30fv0vcCH4yK0coZEipDDC98d4aav/
         MPdlMxlOGLE9CD9Qe4shxwYfmn8RfWPLxD7bokpfZpSQhx/OtCdtJF5Dp13VEeAJ7XvR
         03SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735585383; x=1736190183;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=skbAUTnLfK+iEdYPYlFTxkgM7zzC8lBtusHEDjikxOw=;
        b=cTWhmHxXe2hLvuEtf+5bsa6mq6kd2fpu8Euedqq7JLSc7HPeThqAwwTp4X4jamsyxG
         4roxdU14kV45zLwcnxMiTYS0nbIrd7mGtsp7k1E1MSZO2gsCSv+GSP3bAnxEkGOw1epw
         RY3N04ipC4whS45SZQA9o7zBvPd4cPSIFc2IEbvWWq+1NPKgWCkVHCfoPaP7qBqfuQLX
         TI6ds09JYTakhlkohb77ROfVVzOEVdU2SI9hi+weTGdg2ylP+JBY8mIQCrmxpcGdgM10
         MT6U+qRIadwJ4fQgcd750Jp1Ak/M/UhI+WY9np2kCKFpG1dN9tgmILloF09r21s3kIXa
         kHag==
X-Gm-Message-State: AOJu0YwuUi7Rhwe3EOTFNfLShB99drh3KO/257mg0kK/qtrOdsKwS2oz
	QGpd69g/gJaTGAt25FWW0IWLXqTtTZ2wa8vFo8jvem/yrejObntGc2LQUw==
X-Gm-Gg: ASbGncv4EJI5Rdk50pBaw1OsjwPuoiNX5+mzwCKZfSYHdQo2iH2I4gO0H+YLiJP7sIy
	dfHKUaYA5HwU/ttKe6y/X9LISUbov8eY6JbPRblQPaJd4TeK9HilUzncpEa2X2aqp8gj8CT7TSz
	18TzCxOEjnhZTcgvTuiucW9/6ttnMHju8XsnGAjrQVMiL1K8mescmoQDnQ122FFozuhRcYLZgdh
	3txVNFU46zae/LwcVzLVo7kaF2OpSc7zCoF8JotEawJCMqB/dXNs8b97vKSgnnPwtJb8v3vs80+
	1tk2LelmNTJcpEetijs+X5icQcRIqvxbGMq7MLPcC/6enbK1YXEd52g=
X-Google-Smtp-Source: AGHT+IEc+A44FRdAz7XqW9J1rZ1/eHfe2+aDt5sNS4IbTSTERBZOuprCOQ0GmE5H0DMjZ6FlsCOVQQ==
X-Received: by 2002:a05:620a:19a0:b0:7b1:168f:52f5 with SMTP id af79cd13be357-7b9ba821f36mr6166294685a.57.1735585382716;
        Mon, 30 Dec 2024 11:03:02 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b9ac2df5a5sm945352985a.43.2024.12.30.11.03.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 11:03:02 -0800 (PST)
Message-ID: <a5fae5af-58fb-4f08-ae95-ffe5a04d2efb@gmail.com>
Date: Mon, 30 Dec 2024 14:03:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cd7a43dc-2d15-43c8-a4e7-abde149bf497@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <cd7a43dc-2d15-43c8-a4e7-abde149bf497@ettus.com>
Message-ID-Hash: PLG6IA37IOIKVCCRNAAYO27IC5DVKEYL
X-Message-ID-Hash: PLG6IA37IOIKVCCRNAAYO27IC5DVKEYL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Thanks for a decade of professional fun! (Or: so long, and see you around!)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PLG6IA37IOIKVCCRNAAYO27IC5DVKEYL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMzAvMTIvMjAyNCAxMzo1OCwgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IEhlbGxvIFVTUlAt
VXNlcnMsDQo+DQo+IHdoZW4gSSBzdGFydGVkIGhhbmdpbmcgYXJvdW5kIG9uIHRoaXMgbWFpbGlu
ZyBsaXN0IGluIDIwMTMsIEkgd291bGRuJ3QgDQo+IGhhdmUgdGhvdWdodCB0aGF0IEknZCBzdGls
bCBiZSBhcm91bmQgZWxldmVuIHllYXJzIGxhdGVyLg0KPg0KPiBCdXQgbWUgYXNraW5nIGFib3V0
IHNwb3JhZGljIHNpZ25hbCBpc3N1ZXMgYWZ0ZXIgcmV0dW5pbmcsIHdoaWNoIEkgDQo+IHdvdWxk
IGxhdGVyIGJlIGFibGUgdG8gYXR0cmlidXRlIHRvIHRoZSBpbXB1bHNlIHJlc3BvbnNlIG9mIHRo
ZSBEQyANCj4gY2FuY2VsbGF0aW9uIElJUiBmaWx0ZXIgaW4gdGhlIE4yeDAgc2V0IG1lIG9uIGEg
Y291cnNlIHRvLCBtb3N0bHkgb3V0IA0KPiBvZiBib3JlZG9tIGR1cmluZyBsZW5ndGh5IGNvbW11
dGUsIHdvdWxkIHN0YXJ0IGhlbHBpbmcgcGVvcGxlIG9uIHRoaXMgDQo+IG1haWxpbmcgbGlzdCBm
cm9tIG1lbW9yeSBhbmQgbGVjdHVyZSBvZiB0aGUgR05VIFJhZGlvLCBVSEQgKGFuZCANCj4gZ2F0
ZXdhcmUpIHNvdXJjZSBjb2RlLiBJdCB3YXMgdGhhdCB3aGljaCBpbiB0aGUgZW5kIGdvdCBtZSBj
b250cmFjdGVkIA0KPiBhcyBzdXBwb3J0IGVuZ2luZWVyIGZvciBFdHR1cyBpbiBzcHJpbmcgMjAx
NC4NCj4NCj4gU2luY2UgdGhlbiBJIGhhZCB0aGUgaW5kdWJpdGFibGUgZnVuIHRvIHBsYXkgYSBz
bWFsbCBzdXBwb3J0aW5nIHJvbGUgDQo+IGluIHNvIG1hbnkgcHJvamVjdHMgb2YgdXNlcnMgb2Yg
VVNSUHMg4oCTIGZyb20gdW5pdmVyc2l0eSBzdHVkZW50cyBkb2luZyANCj4gdGhlc2VzLCBvdmVy
IGVuZ2luZWVycyBnZXR0aW5nIGRlbW9zIHRvIGRvIHdoYXQgdGhleSB3YW50LCB0byANCj4gcGh5
c2ljaXN0cyBjb250cm9sbGluZyBpbnN0cnVtZW50cyBvciBvYnNlcnZpbmcgdGhlIGNvc21vcywg
dG8gDQo+IGJpb2xvZ2lzdHMgd29ya2luZyBpbiB0aGUgbW9zdCBkaXZlcnNlIGltYWdpbmFibGUg
ZmllbGRzLCBhbmQgb2YgDQo+IGNvdXJzZSB0aGUgbWFueSwgbWFueSBjb21tdW5pY2F0aW9ucyBl
bmdpbmVlcnMgYnVpbGRpbmcgZmFudGFzdGljIA0KPiBzeXN0ZW1zIGZyb20gKGJvdGggbGl0ZXJh
bCBhbmQgU2hhbm5vbikgYml0cyBhbmQgcGllY2VzIQ0KPg0KPiBXb3VsZG4ndCB3YW50IHRvIG1p
c3MgdGhhdCBleHBlcmllbmNlISBTbyB0aGFuayB5b3UgYWxsIGZvciBiZWluZywgDQo+IHN1YnN1
bWluZyBldmVyeXRoaW5nLCB0aGUgbmljZXN0IHVzZXIgY29tbXVuaXR5IGEgaGFyZHdhcmUvc29m
dHdhcmUgDQo+IHZlbmRvciBjb3VsZCB3aXNoIGZvciA6KSBUaGUgVVNSUCBzZXJpZXMgb2YgZGV2
aWNlcyB3aWxsIHJlbWFpbiB0aGUgDQo+IGNsYXNzIG9mIGRldmljZXMgSSdtIG1vc3QgaW50aW1h
dGVseSBmYW1pbGlhciB3aXRoIOKAkyBhbmQgSSdtIHN1cmUgdGhhdCANCj4gZXZlbiBhcyBOSS9F
bWVyc29uIG1vdmVkIHRvIGhpZ2hlciBwcmljZWQgc2VnbWVudHMgYW5kIHBhaWQgc3VwcG9ydCAN
Cj4gbW9kZWxzLCB5b3Ugd2lsbCBjb250aW51ZSB0byBkbyBncm91bmRicmVha2luZyBhbmQgDQo+
IGluZnJhc3RydWN0dXJlLXVwaG9sZGluZyB3b3JrIHdpdGggdGhlbSENCj4NCj4gQnV0OiBpdCdz
IHRpbWUgZm9yIG1lIHRvIG1vdmUgb24g4oCTIHRoaXMgaXMgZ29pbmcgdG8gYmUgbXkgbGFzdCBw
dWJsaWMgDQo+IGVtYWlsIGZyb20gYW4gQGV0dHVzLmNvbSBhZGRyZXNzLg0KPg0KPiBXaGljaCBk
b2Vzbid0IG1lYW4gSSdsbCBub3QgYmUgYXJvdW5kOyB5b3UnbGwgc3RpbGwgZmluZCBtZSBvbiB0
aGUgDQo+IG1haWxpbmcgbGlzdCB1bmRlciBvdGhlciBhZGRyZXNzZXMgKHNlZSB0aGUgUmVwbHkt
VG86IG9mIHRoaXMgDQo+IG1lc3NhZ2UpLCBhbmQgeW91IG1pZ2h0IGtub3cgdGhhdCBJIGFscmVh
ZHkga2luZCBvZiBzdHVjayB3aXRoIHRoZSBHTlUgDQo+IFJhZGlvIHByb2plY3QuIE15IHJlbnQg
aXMgc3RpbGwgcGFpZCBmb3IgYnkgU0RSIHN5c3RlbSB3b3JrLCBhbmQgc28gDQo+IHlvdSdsbCBy
dW4gaW50byBtZSBhdCBHUkNvbiwgeW91J2xsIGZpbmQgbWUgcGxhc3RlcmluZyB0aGUgaW50ZXJu
ZXQgDQo+IHdpdGggZXhwbGFuYXRpb25zIG9mIHRoZSBzdHJhbmdlc3QgdGhpbmdzLg0KPg0KPiBO
b3QgdG8gZ2V0IHRvIHNlbnRpbWVudGFsOg0KPg0KPiBLZWVwIG9uIGhhY2tpbmcgdGhlIGVsZWN0
cm9tYWduZXRpYyBzcGVjdHJ1bSwgbmV2ZXIgbGV0IHlvdXIgc2lnbmFsIA0KPiBwcm9jZXNzaW5n
IHNsb3cgZG93biwgYW5kOg0KPg0KPiBTZWUgeW91IGFyb3VuZCwNCj4NCj4gTWFyY3VzIE3DvGxs
ZXINCj4NCldlbGwsIGZyb20gb25lIE1hcmN1cyB0byBhbm90aGVyLCB0aGFua3MgZm9yIGhhbmdp
bmcgb3V0IGZvciBzbyBtYW55IA0KeWVhcnMsIGFuZCBzZWUgeW91IGRvd24gdGhlIHJvYWQgYSB3
ZWUuDQoNCkNoZWVycw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tCg==
