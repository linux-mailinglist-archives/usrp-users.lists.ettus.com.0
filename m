Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79085851AD8
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 18:10:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32D8C385068
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 12:10:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707757805; bh=I9DrhvXlO16UC0trV3R4KgbDdTCuiogpsN75dzkriL8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=A3Qbq0oFVc8J144ZspSNtQJFMwRKVCcvmnSeIannc5VJJydyNQfEXMAkawOZsHEaT
	 LBNqMIecQvwKTbrqV13YavmyW1Xn9rtJdga4CnSG8V4MkBEnYz6U9zHg9kSc+kGVMS
	 clj/zL9SqfBeJ9HvTPOk80JySeFM1b+Jy70VQe2Fi6M2yTfJMuXF0Ntak/oa74RDtI
	 vJHKY0D9pur98D/dd8tfP21TsrYXOzNnX8jFI8aUJTxxxMnV60MXCVVzy40Kgfl5jA
	 ZD9SifH8dajtx74NGuSP2ZlOoKZpl72+gdSh2g9/6OUCwQINbGR19xOBlwwR4u39/H
	 DaUCsf5PQCeig==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 54437384C38
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 12:09:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EXHvS+Je";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-68cc2a389a9so23246616d6.1
        for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 09:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707757798; x=1708362598; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nhcAnzDsyM42OZDJDIZVRGNFT/ZKw2rD9ZiboXD+8Pk=;
        b=EXHvS+Je6TPkP35nQKHCRLwLooHW3lnsEvQuabJAN7XLJJy4QUHCzLrkRWe0Wy3c+I
         7MLqKmfVvjgtBDTpM5JuAjJ6gASwPGp37N4dO+t6D0SbiRNVmU14kcMe9K9FsAamqw0K
         p03ltGZzvnmfD5iamOsRk55EA9VA9IlRPcvSLYNiamN0ceJEWmw36SHFZqqNn7FE9+uR
         ZEYjCg7bJEbzAGMfmXq5eN+EEkNNDB3N34cXN/YW4sCjQXm0nUQqrx3OLBygB/KLpcZ2
         zwUIL/xMl8Oy1epGo9pxfaIC2dkb9OkYDp8OjBUkqYQ3kz6QPwCtnZ2iz3G/P8O8IXZn
         EkVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707757798; x=1708362598;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nhcAnzDsyM42OZDJDIZVRGNFT/ZKw2rD9ZiboXD+8Pk=;
        b=GUpWSGLiLAhn4Zyy+1GRlxqOHN3W5hvKPWAlkNUWIWoRZJrJTWeiCNvW6YGbeAIPnR
         IiGtwMA4ijXcBdQfEkfOW8n9Ts8774NnOss1OsCYRqy84nCJ8PDo5EahK9WWzDitWaIZ
         5apAhj1H3Z5fr7wwCM+of+bc0it1xR9Lx4p9EZwYp7v+gAZt9/GeQC2Bls4RJvmr7EHP
         V0VWUmsNWMA7OnpVg3nTTapEJYJUYddNLPhquA1lIro82JihTv5GhNMxs+tuzqDNYf8U
         Ee7oR+8hJbcUX1Qv9KUdE+Kp4tLfh4F3FAkd05iwWvOPuhbK4L5RHrj+2Y5m8qCA+oqJ
         8SNw==
X-Gm-Message-State: AOJu0YwxYToZormV0YxrgbEvbEQLR63JGP8DIzRfeJWLs5qRIiZUWm/H
	cNbCffKg1XUnVh5qk4Wn8WOodrsSLWf4SzqS4hL0V7rRRUNVAWQdcuY70Sbr
X-Google-Smtp-Source: AGHT+IHIRzgB7ZZMOabBvYYgBqlfooCQgVaZjmWlqykWDNrY1pDiXHiFy4mXll1Fb+Snzw6GdR18cA==
X-Received: by 2002:ad4:4e0c:0:b0:68c:ccc7:ce96 with SMTP id dl12-20020ad44e0c000000b0068cccc7ce96mr207437qvb.10.1707757798545;
        Mon, 12 Feb 2024 09:09:58 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-146.dsl.bell.ca. [174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id bo10-20020a05621414aa00b0068ccb492b1dsm328491qvb.141.2024.02.12.09.09.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 09:09:58 -0800 (PST)
Message-ID: <650c94c1-cec0-4162-91f3-03335456ce75@gmail.com>
Date: Mon, 12 Feb 2024 12:09:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CACDPEcM6_ypEBhJG0mPAGUTFAKjESbEYCsk6QNnOQGVhW1Syxg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACDPEcM6_ypEBhJG0mPAGUTFAKjESbEYCsk6QNnOQGVhW1Syxg@mail.gmail.com>
Message-ID-Hash: OBVOVN3U7WXBV7Q4GED6GRMPXBD43KU5
X-Message-ID-Hash: OBVOVN3U7WXBV7Q4GED6GRMPXBD43KU5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B205 mini as a transmitter
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OBVOVN3U7WXBV7Q4GED6GRMPXBD43KU5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMDIvMjAyNCAxMTo0MiwgTXVoYW1tYWQgSGFzc2FuIHdyb3RlOg0KPiBIaSBldmVyeWJv
ZHksIEkgYW0gdXNpbmcgU1VSUCBiMjA1IGFzIHRyYW5zbWl0dGVyLiBJIGFtIHRyeWluZyB0byAN
Cj4gdHJhbnNtaXQgcHVsc2UuIEkgZ2V0IGZvbGxvd2luZyBlcnJvci4gY2FuIGFueWJvZHkgaGVs
cC7CoEkgYW0gbmV3IHVzZXIuDQo+DQo+IEVycm9yOkVycm9yIHJlcG9ydGVkIGJ5IFMtZnVuY3Rp
b24gJ3VzcnBfaW50ZXJmYWNlX3NmdW50eCcgaW4gDQo+ICd1bnRpdGxlZC9TRFJ1IFRyYW5zbWl0
dGVyL3VzcnBfaW50ZXJmYWNlX3NmdW50eCc6DQo+IENvdWxkIG5vdCBleGVjdXRlIFVIRCBkcml2
ZXIgY29tbWFuZCBpbiAnY3JlYXRlRHJpdmVyX2MnOiBDb3VsZCBub3QgDQo+IGNyZWF0ZSBhIFVI
RCBkcml2ZXIgdXNpbmcgSVAgYWRkciAnMzEzNkQyMScuwqAgQXR0YWNoIGEgZGV2aWNlIGF0IHRo
ZSANCj4gc3BlY2lmaWVkIGFkZHJlc3MsIGNvcnJlY3QgdGhlIHNwZWNpZmllZCBhZGRyZXNzIHRv
IG1hdGNoIGFuIGFscmVhZHkgDQo+IGF0dGFjaGVkIGRldmljZSwgb3IgY29udGludWUgdG8gd29y
ayBpbiBvZmYtbGluZSBtb2RlLg0KPiBFcnJvciBmcm9tIFVIRDogTG9va3VwRXJyb3I6IEtleUVy
cm9yOiBObyBkZXZpY2VzIGZvdW5kIGZvciAtLS0tLT4NCj4gRGV2aWNlIEFkZHJlc3M6DQo+IMKg
IMKgIHNlcmlhbDogMzEzNkQyMQ0KPiDCoCDCoCByZWN2X2ZyYW1lX3NpemU6IDIwMDAwMDAwDQo+
IMKgIMKgIG1hc3Rlcl9jbG9ja19yYXRlOiAzMjAwMDAwMA0KPg0KPiBSZWdhcmRzDQo+IEhhc3Nh
bg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tDQpJIHRoaW5rIHlvdSdyZSBwcm9iYWJseSB1c2luZyBNYXRsYWIgaGVyZT8NCg0K
WW91J2xsIG5lZWQgdG8gbG9vayBpbnRvIGhvdyBNYXRsYWIgc3VwcG9ydHMgZGV2aWNlIGlkZW50
aWZpY2F0aW9uIA0Kc3ludGF4IC0tIGl0J3MgY2xlYXJseSB0aGlua2luZyB5b3Ugd2FudCB0byB0
YWxrIHRvIGFuIElQLWNvbm5lY3RlZA0KIMKgIGRldmljZXMsIHdoaWNoIHRoZSBCMjA1IGlzIG5v
dC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
