Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9031889E7D3
	for <lists+usrp-users@lfdr.de>; Wed, 10 Apr 2024 03:30:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60ED938532E
	for <lists+usrp-users@lfdr.de>; Tue,  9 Apr 2024 21:30:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1712712631; bh=jNCPqktR7TEhRXBJ+pUQxnRl7Qou2WKQYS4NkpTWLEY=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=emhKY5w1xgUuf2gtbjnXgENDY/iaaeFSyCic5cakuKYF+zMK/BUo5cNkt7ZqUblhk
	 Y2ERtnOg3c5nXtlwlPmRa2s7J3gMRuUVx/V4HcXAhC/q7B45djH1EotNcEuMgVko9o
	 jKoLeaer0kLZwIlIaHYJ+vj6NOowfU2cIPeExAsKw16by03LM4vrIgoSivDpGcgmVV
	 V2XtSq7/srAqn+cCi02Y8hAJjunJD9csPErGfZCJqo/odJ7lDhXHZCdiKXPxsP3rOO
	 oUtBCgL2lWjNiixREUiey2vy5W5mVOni6nlamcNbdQTGod5zn+JN467fS7ZdruwEUd
	 m2QRLpxHNh+9w==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id A0887385283
	for <usrp-users@lists.ettus.com>; Tue,  9 Apr 2024 21:30:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RFfQwKYi";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6992f97ec8eso38646816d6.3
        for <usrp-users@lists.ettus.com>; Tue, 09 Apr 2024 18:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712712624; x=1713317424; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M0kRiHXQZwbfZ+92nYzpFZ6rDokUKMZ/lAfDBW9U868=;
        b=RFfQwKYiSFWcXVXglyarrgBEkeOoOzVbAY3YFliDhlrWFz6w6fsbK5BrdN7f66gdAd
         b5V5H22Vm+AiNBS73Gga2HjM478DKB9krSdnxLtJ0lFP7IDOIlVByzL5+88+cjUtpORr
         eMEP1Jd/MrUzTHg4pdCt75Isk2JVpexV1JvaZwjewZSBw/N/++CHF/bE2IouJDXHquf8
         DRaYSyn2fL8cZvFJlpYqeiKYli/+RogKII68nN07ofrpZmftVpLFYfLdI59R7TMM+wbA
         zGQKi+U322vxycxRMLAVWsGn09fGluiODwjiNe2GzRjxL9M3+0CoAIIqF1CHApZluP9T
         UUyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712712624; x=1713317424;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M0kRiHXQZwbfZ+92nYzpFZ6rDokUKMZ/lAfDBW9U868=;
        b=Z+nk9yXAmRr1Joohq3pimUSUfbd0F5cJyMDQlo7EMqy1rVASCk/+TjeaHlDaIlKDGs
         5Wyf3FF4SsQC+mGtlFnH//jvo4QGnNHlY+6O6nLrlvqkpP+5LMEovDM7zanYk6GcAzw0
         Jvc5KJsyFmaoK1t0k09BCVe+xVc4Rr3vMRiYY/5nPhnPx7o+ailw71vGw7cSbAg8nAzG
         eTEosgWn6572A7D5mP0CI5RNIBbt7M7cPepP9bSP/5PNoxZ6bL8bkc0cyEmEyXLwKyXr
         1v+WNxf4bxUvzmEVQADvIRmwBzykum2Mo2Mg9gPOZbJen0kSU7FeAWTUt5LxGmpC6kYr
         avzA==
X-Gm-Message-State: AOJu0YxxCh6mbNte5KsQ5F0HPTorQLlBJv3b2aAw24bBQe8Jhh7EEyzi
	9elDBLaGhNtU5JKNx5mLKE9IPPFsE2FEAC6Vh7+76qGu/VLbbsbP4ddZh4JZ
X-Google-Smtp-Source: AGHT+IFazX4OU/wUfCRtsJIBaQz2Pad5WoATnZfxBJgoTr37e2LTQ2qpvorH0BwLzZn6tdf8tngKjQ==
X-Received: by 2002:a05:6214:d66:b0:699:43fa:9f65 with SMTP id 6-20020a0562140d6600b0069943fa9f65mr1342003qvs.47.1712712623756;
        Tue, 09 Apr 2024 18:30:23 -0700 (PDT)
Received: from smtpclient.apple ([174.93.0.156])
        by smtp.gmail.com with ESMTPSA id r10-20020a0cf80a000000b0069b21f13c52sm1690657qvn.113.2024.04.09.18.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 18:30:23 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 9 Apr 2024 21:30:04 -0400
Message-Id: <198B06D7-C0B2-4DCD-9E39-D0E0931EC095@gmail.com>
References: <d506d310-c2e3-43b4-8ae2-515205e3e19b@saloits.com>
In-Reply-To: <d506d310-c2e3-43b4-8ae2-515205e3e19b@saloits.com>
To: "Timothy J. Salo" <salo@saloits.com>
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: 3NVYQ6QX52G74GBL3IL3AVBQMLP2WXCV
X-Message-ID-Hash: 3NVYQ6QX52G74GBL3IL3AVBQMLP2WXCV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Frequency Stability versus Frequency Accuracy
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3NVYQ6QX52G74GBL3IL3AVBQMLP2WXCV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGZyZXF1ZW5jeSBvZiBhbnkgc3ludGhlc2l6ZWQgcmFkaW8gaXMgZGlyZWN0bHkgcmVsYXRl
ZCB0byBhY2N1cmFjeSBhbmQgc3RhYmlsaXR5IG9mIHRoZSByZWZlcmVuY2UgY2xvY2suIA0KDQpJ
ZiB0aGUgcmVmIGNsb2NrIGlzIGFjY3VyYXRlIHRvIDJQUE0gdGhlbiB0aGUgYWNjdXJhY3kgb2Yg
dGhlIHR1bmVkIGNhcnJpZXIgZnJlcXVlbmN5IHdpbGwgMlBQTS4gDQoNCk5vdCBhbiBleHBlcnQg
b24gNUcgYnV0IG1hbnkgbW9iaWxlIHBob25lIHN5c3RlbXMgcmVxdWlyZSBoaWdoIGZyZXF1ZW5j
eSBhY2N1cmFjeSBhbmQgc3RhYmlsaXR5IG5vdCBqdXN0IGluIHRoZSBjYXJyaWVyLCBidXQgYWxz
byBpbiB0aGluZ3MgbGlrZSBURE1BIHNsb3QgdGltZXMuDQoNCkRpZmZlcmVudCByYWRpbyBzeXN0
ZW1zIGhhdmUgZGlmZmVyZW50IHJlcXVpcmVtZW50IHMgaW4gdGhpcyByZWdhcmQgd2hpY2ggaXMg
d2h5IHRoZXJlIGFyZSBleHRlcm5hbCBjbG9jayBpbnB1dHMgYXZhaWxhYmxlIG9uIFVTUlAgYW5k
IG1hbnkgb3RoZXIgU0RSIHBsYXRmb3Jtcy4gDQoNCiANCg0KDQoNClNlbnQgZnJvbSBteSBpUGhv
bmUNCg0KPiBPbiBBcHIgOSwgMjAyNCwgYXQgOToyMCBQTSwgVGltb3RoeSBKLiBTYWxvIHZpYSBV
U1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6DQo+IA0KPiDvu79I
aSwNCj4gDQo+IEknbSB3cml0aW5nIGEgIkdldHRpbmcgU3RhcnRlZCIgZ3VpZGUgZm9yIG91ciBy
ZXNlYXJjaCBncm91cC4gIFdoZW4gSQ0KPiBnb3QgdG8gdGhlIEdQU0RPIHNlY3Rpb24sIEkgaGFk
IGRpZmZpY3VsdHkgaW4gZmlndXJpbmcgb3V0IHRoZSBmcmVxdWVuY3kNCj4gc3RhYmlsaXR5IGFu
ZCB0aGUgZnJlcXVlbmN5IGFjY3VyYWN5IG9mIHRoZSBCMjEwLg0KPiANCj4gQXQgbGVhc3QgdGhl
IGVhcmx5IHZlcnNpb25zIG9mIHRoZSBCMjEwIHVzZWQgYSBDVFMgRWxlY3Ryb25pYyBDb21wb25l
bnRzDQo+IDUyMEwyMERBNDBNMDAwMCBUQ1hPLiAgVGhlIGRhdGFzaGVldCBmb3IgdGhpcyBUQ1hP
IHNheXMgaXQgaGFzIGENCj4gZnJlcXVlbmN5IF9zdGFiaWxpdHlfIG9mICsvLSAyLjAgcHBtIG92
ZXIgYW4gb3BlcmF0aW5nIHRlbXBlcmF0dXJlIHJhbmdlDQo+IG9mIC0zMEMgLSArODVDLg0KPiAN
Cj4gVGhlIENUUyB3ZWJzaXRlIHN0YXRlcyB0aGF0IHRoZWlyIFRDWE8gZXhoaWJpdDogIlN0cmF0
dW0gMyBQZXJmb3JtYW5jZTsNCj4gwrE0LjZwcG0gb3ZlcmFsbCwgwrEwLjI4cHBtIG92ZXIgLTQw
wrBDIHRvICs4NcKwQyIuICBBbSBJIGNvcnJlY3QgaW4NCj4gY29uY2x1ZGluZyB0aGF0IHRoaXMg
aXMgdGhlIGZyZXF1ZW5jeSBfYWNjdXJhY3lfIG9mIHRoZSBUQ1hPIHVzZWQgaW4NCj4gdGhlIEIy
MTA/ICBEb2VzIHRoaXMgdHJhbnNsYXRlIGRpcmVjdGx5IGludG8gdGhlIGZyZXF1ZW5jeSBfYWNj
dXJhY3lfDQo+IG9mIHRoZSBCMjEwPw0KPiANCj4gVGhlIEIyMTAgZGF0YXNoZWV0IHN0YXRlcyBh
IGZyZXF1ZW5jeSBfYWNjdXJhY3lfIG9mICsvLSAyLjAgcHBtLiAgSXMNCj4gaXMgYSB0eXBvLCBh
bmQgc2hvdWxkIHRoZSBkYXRhc2hlZXQgYWN0dWFsbHkgc2F5IGZyZXF1ZW5jeSBfc3RhYmlsaXR5
Xz8NCj4gT3IsIGRpZCBzb21lb25lIGNvbmNsdWRlIHRoYXQgb3ZlciBhIHJlYXNvbmFibGUgb3Bl
cmF0aW5nIHRlbXBlcmF0dXJlLA0KPiB0aGUgZWZmZWN0cyBvZiB0ZW1wZXJhdHVyZSBvdXR3ZWln
aCBhbnkgaW5hY2N1cmFjeSBpbiB0aGUgZnJlcXVlbmN5DQo+IG9mIHRoZSBUQ1hPPw0KPiANCj4g
QW5lY2RvdGFsbHksIEkgaGF2ZSBoZWFyZCB0aGF0IG9uZSBvcmdhbml6YXRpb24gZm91bmQgdGhh
dCB0aHJlZSBvZg0KPiB0aGVpciBmb3VyIEIyMTBzLCB3aGVuIG9wZXJhdGluZyBhcyBhIDVHIGJh
c2Ugc3RhdGlvbiwgd2VyZSB1bmFibGUNCj4gdG8gY29ubmVjdCB3aXRoIGNvbW1lcmNpYWwgb2Zm
LXRoZS1zaGVsZiBjZWxsdWxhciBoYW5kc2V0cywgdW5sZXNzDQo+IGFuIGV4dGVybmFsIEdQU0RP
IHdhcyB1c2VkIHdpdGggdGhlIEIyMTAuICBEb2VzIGFueW9uZSBoYXZlIGFueSBpZGVhDQo+IHdo
YXQgZnJlcXVlbmN5IGFjY3VyYWN5IGlzIGV4cGVjdGVkIGJ5IGNlbGx1bGFyIGhhbmRzZXRzPw0K
PiANCj4gU28sIGRvZXMgYW55b25lIGtub3cgd2hhdCB0aGUgZnJlcXVlbmN5IF9hY2N1cmFjeV8g
b2YgdGhlIEIyMTAgaXMsIGluDQo+IHRoZSBhYnNlbmNlIG9mIGEgR1BTRE8/ICBPciwgc2hvdWxk
IEkganVzdCB1c2UgdGhlICsvMSAyLjAgcHBtIGZpZ3VyZT8NCj4gDQo+IFRoYW5rcywNCj4gDQo+
IC10anMNCj4gLSAtIC0gLQ0KPiANCj4gWzFdIGh0dHBzOi8vd3d3LmN0c2NvcnAuY29tL0ZpbGVz
L0RhdGFTaGVldHMvUGFzc2l2ZXMvRkNQL1RDWE8vVENYTy01MjAtZGF0YXNoZWV0LnBkZg0KPiAN
Cj4gDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20K
