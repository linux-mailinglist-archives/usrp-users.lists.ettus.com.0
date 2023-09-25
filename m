Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4143F7ADD51
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 18:40:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A671384BB8
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 12:40:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695660055; bh=EhUI9CrJXRp3tCGlA1i3HdK7tFVVgiRC4pF3AJlCebg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wwrCEp97Ik5X0uZYP7N/40tiumaSFPjFw5NMaqH93PjzjgrCgeL6gj8eaGuKYea7A
	 Gsp8kbSzLRuv3PAu/v30xyJpyMQ0LqwZbnZo9C/Kt26/N0Brqw1Ve139biaDwAgPBv
	 xF7l7dbuwjwoEiDAdlrdt2/ksPBwVo5Z2oHn1YKhygXGq58/DvUZY5QrMeOnmBLUOb
	 5jlFrpOAmSAyLmjf3+gkCezfLfB1jvy5r5sXp7Z0ekq55ZrCAXVJu007u2vouLahw2
	 PsQbLKiOCFv+txuyZIEw0Dt3UU9Ge9/OEQB/bVKzEz9ezvQD50oD8OIKPyl/tTdXMe
	 luM9M5cViLCFg==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 8DD72380B40
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 12:40:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gGek4nN3";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6515d44b562so41558696d6.3
        for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 09:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695660051; x=1696264851; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wxNs5ym3lWBy5woyQEtPGBaaVMS4pL1MmpO/1FhB9hc=;
        b=gGek4nN3hy73qLw4q5cBjruk2fUKy4ONIZZWVTi7HmUxkKuZSkZF3iB8cPM256+iBS
         5HX14M1ozUOKQkULHO8VfUDnyPpDvjmBVdyT+CA6V1/5m/oyNm8y4xEm7bNn3EXDZJdy
         S7VGDyF41E3DV+2DbKoZtexsAmMND1aiH8Hc3nLTadYZU+luznFoKN2Ho2kMXVkhuYR/
         cLJqdK62f9SqmZIRCigP/B2tnFT8d44I/InmT+N611JWrSPqnx+m7ROueL62exAzNx7V
         zALK88/uHhmkFLsQNwbxMED6B+PVDumpLfVQc9Z8OjAoY1MrmLeLeziEFK2n2i+Swhzr
         MoMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695660051; x=1696264851;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wxNs5ym3lWBy5woyQEtPGBaaVMS4pL1MmpO/1FhB9hc=;
        b=sv9umzVRU8HB1tob8z1oILYEy3QtsYEhEoWbGmmC6mBI1xfr+6m3gDycfBUfXFL6UU
         uC1CWs7Ccie2uNUpAEtS9YewSLlq6fcvq/zgr03MpMTl83YDfQS0tFaPK9gVHzyFvhE7
         +7vPnsbaQUKcil9YqH+Es5nFUMLdBC4zr+Ejzi5u/HBvlGQTOUufqXTTqhLPDY64cL6J
         woiy/nZynAzHQINuvzdz6Q2+tJBgdnnNB51ApAr39N1bda2B9dgf3fXrcaGZ/VH5arKt
         dTLVXdETxvKHQ+0PFvrT1KFyD7JPXB6y8/AuXW7tC3dyFc6N/U0FoYoKpd220KJbh84A
         Fh2A==
X-Gm-Message-State: AOJu0YyTo+2HJMrqM4Hn9ocnRxo28RbC2W4ExCspzvn2czreAzXiaa+x
	p2R6g/orHROzvJ0GwU81mCCbvADcRc2jwQ==
X-Google-Smtp-Source: AGHT+IEAue8mCBQ/rlztNsfvHCmN0Uw7qWG/NxkA4aqP9+wKffn07LK0dpugbW/RufVMRs4VTdKl/Q==
X-Received: by 2002:ad4:5b88:0:b0:655:6f63:17ee with SMTP id 8-20020ad45b88000000b006556f6317eemr8557057qvp.61.1695660050766;
        Mon, 25 Sep 2023 09:40:50 -0700 (PDT)
Received: from [192.168.2.182] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id c26-20020a05620a11ba00b0076cb1eff83csm3924211qkk.5.2023.09.25.09.40.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 09:40:50 -0700 (PDT)
Message-ID: <6d68e868-46da-cd94-1d81-a1bb1a9f5b2e@gmail.com>
Date: Mon, 25 Sep 2023 12:40:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <yxdWD9ahkop3CRAuU7V0LZVX7WfeNIh1fUuktT6tRE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <yxdWD9ahkop3CRAuU7V0LZVX7WfeNIh1fUuktT6tRE@lists.ettus.com>
Message-ID-Hash: WGR63WFRP3IAN53VA7HIK2F7GLVRZG45
X-Message-ID-Hash: WGR63WFRP3IAN53VA7HIK2F7GLVRZG45
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus X410 Power Error State
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WGR63WFRP3IAN53VA7HIK2F7GLVRZG45/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDkvMjAyMyAxMjozMSwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4gVGhhdCB3YXMgbXkgaW5pdGlhbCBndWVzcywgYnV0IG5vdyB0aGUgcHJvYmxlbSBo
YXMg4oCcdXBncmFkZWTigJ0gZnJvbSByZWQgDQo+IExFRHMgdG8gTEVEcyB0aGF0IGFyZSBvZmYu
IEkgd2FzIHRhbGtpbmcgd2l0aCBteSBsYWIgZ3JvdXAgYW5kIHRoZXkgDQo+IHNhaWQgdGhleSBo
YWQgdGhlIHJlZCBMRUQgc3RhdGUgaW4gdGhlIGZpZWxkIGJlZm9yZSwgYnV0IGdpdmluZyB0aGUg
DQo+IHBvd2VyIGNvbm5lY3RvciBhIGdlbnRsZSB3aWdnbGUsIGl0IHR1cm5lZCBncmVlbiBhbmQg
dGhleSB3ZXJlIGFibGUgdG8gDQo+IHVzZSB0aGUgeDQxMCBhcyB1c3VhbC4gQWZ0ZXIgSSB0cmll
ZCB0aGUgc2FtZSwgbXkgbGVkcyBzdWJzZXF1ZW50bHkgDQo+IHR1cm5lZCBvZmYgYW5kIGhhdmUg
bm90IHR1cm5lZCBvbiBzaW5jZS4NCj4NCj4gV2UgaGF2ZSB0d28geDQxMHMgYW5kIHR3byB4NDEw
IHBvd2VyIHN1cHBsaWVzLCB3aXRoIG9uZSBvZiB0aGVtIA0KPiB3b3JraW5nIGFzIHVzdWFsLiBU
YWtpbmcgdGhlIOKAnHN1c3BlY3TigJ0gcG93ZXIgc3VwcGx5LCB3ZSBmb3VuZCB0aGUgDQo+IHZv
bHRhZ2UgdG8gc3dpbmcgYmV0d2VlbiA0LjUgYW5kIDEyIHZvbHRzLiBUaGUgb3RoZXIgcG93ZXIg
c3VwcGx5IA0KPiBzdGF5cyBhdCBhIHN0ZWFkeSAxMiBWLiBUYWtpbmcgc3RlYWR5IHBvd2VyIHN1
cHBseSBhbmQgY29ubmVjdGluZyBpdCANCj4gdG8gdGhlIOKAnHN1c3BlY3TigJ0geDQxMCwgc3Rp
bGwgbm8gTEVEcy4gSSBjb3VsZCB0cnkgdGFraW5nIHRoZSDigJxzdXNwZWN04oCdIA0KPiBwb3dl
ciBzdXBwbHkgYW5kIGNvbm5lY3QgaXQgdG8gdGhlIHdvcmtpbmcgeDQxMCwgYnV0IGZyYW5rbHkg
aWYgdGhlIA0KPiB2b2x0YWdlIGlzIHN3aW5naW5nIEkgd291bGQgcmF0aGVyIG5vdCB0YWtlIG15
IGNoYW5jZXMuDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20NCkkgd291bGQgc2F5IGl0J3MgdGltZSBmb3IgYW4gUk1BIGZv
ciBib3RoIHRoZSBmYWlsaW5nIHBvd2VyIHN1cHBseSBhbmQgDQp0aGUgWDQxMCB1bml0LsKgIFBs
ZWFzZSBzZW5kIHN1cHBvcnRAZXR0dXMuY29tIGFuDQogwqAgZS1tYWlsIGV4cGxhaW5pbmcgdGhl
IHNpdHVhdGlvbiwgYW5kIHJlcXVlc3RpbmcgYW4gUk1BLsKgIEkgYXNzdW1lIA0KdGhlc2UgdW5p
dHMgYXJlIGxlc3MgdGhhbiAzIHllYXJzIG9sZD8NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
