Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA849C0F86
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 21:03:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0A2A3862F1
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 15:03:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731009804; bh=FLaMBR8BvRL8n6q2VxAaGqEfxQ3IcrlupqfYPkvoBEg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ASbYPg4OxtrZNMGtJ/i19Ekx21u8iKl11/EkhB2vdGPwvVFD57o3U7eAtA4kdMvB6
	 KJQ4w5zIgpzww/Q78Rv+gSL5mXRRZU1LklakE7gnRIWpHqjMaVLjHVoXBrQeeFBa5l
	 Dso0/0LXx+St4AIUW3gnfHWyheIKTigR+sHsnFD+tkPVTuM3U11rHSm7xC1c4sgc+k
	 FHEmk53tLowbT5+tAJotgzozaQMXcLfxfrR0ZDO4M3WsKe2ta/RI6LxwVBAjwC8PfO
	 JJ8JAPzRAfDHaNCDCNuqiEMMRFZFx6rnqaLAxi4xKCa2qnS3GZFeP98Ujia+Q6ShN1
	 gwsffthka/Kow==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 27E40385FB3
	for <usrp-users@lists.ettus.com>; Thu,  7 Nov 2024 15:02:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GuEs9d/C";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7b13bf566c0so78636885a.3
        for <usrp-users@lists.ettus.com>; Thu, 07 Nov 2024 12:02:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731009754; x=1731614554; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eBt35Kv4XnYfzZvuHtGIYNPXMXzzkqbiXPuyqSLPu00=;
        b=GuEs9d/CtEduzzsK3VBtsqkT0HXrpDvSrBcWvyL5gJzxBY37VSJSTKwCxDuNxIwLH+
         srtEWO0jZSVMpEFHIIQ9qlg330NcCjhwI34JvGuLhYyXJ1gwE4BxDtiHJxIyILBQ7iav
         coGG8eYe8HyjsN8hYplCbbr6Ryh1jvTrQhKwRHZ9C6gvdpzPaEXLb4R6KAO0Dm9lpBx2
         3hP0NUGvKBxW/slpw6C3JIZpRqW+FonFrv7IbrtSeVtoUHrqcyTJNFmG+0/Ud/ohwrPg
         GVT5nIe1vxjuFiqzoKrqZlUWr5/gga67XVcQgBmri2i78WvfwOTKvSj3KqQt45O1x5ob
         0zzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731009754; x=1731614554;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eBt35Kv4XnYfzZvuHtGIYNPXMXzzkqbiXPuyqSLPu00=;
        b=gtt0cMjWrQh1C+GuUo86BXXJuZ+Tk0+lW3jWSkzXX/hGqzqJaghcolHeWbRU9BxEBp
         VIgM3byTHAVuw3nDBE8KyiyUhhrHlJbT7CF2MeCnaPmiQvibPy9YKIWq/kR5femxAZep
         XDqxrtRc3H5Oy2OAxnB2Q+z36G3yTzsnytw7GI352+AoO/3zC4YSGiotUveeP15DyuYM
         n+afO7MsIEUrRxlfeeAZpC/zAy9Lmu5Rwl0IUArqWN0rzzCM9bqEEIeDBtUBO/zA83mQ
         gGRFiU0KbOeqRFXJ3f/PXhTiC58RKwaS3+jYkNeeRuX3MYfvZSi6mTH9lCRYIwEuZydx
         7PMQ==
X-Gm-Message-State: AOJu0YzOTUJmCuANVCXmERzLt4RJKTFIl22qPljxeQFV+km45m1t4vtG
	Hxh2atVKw1BRghGYr9G1Q/mrLjjPp+6IG0K0HrpU3IhXajGrmRk6ivArOA==
X-Google-Smtp-Source: AGHT+IECnyblw2Zy8EpvTg9MPBa/HPL3rXuQMCby0vD6gmYHKiWNA6+/KqxgoLHCYQiwBSr1vKDDNA==
X-Received: by 2002:a05:620a:290f:b0:7a4:d685:caa9 with SMTP id af79cd13be357-7b331e60bf4mr48639985a.48.1731009754213;
        Thu, 07 Nov 2024 12:02:34 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b32ac427b4sm93836785a.33.2024.11.07.12.02.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2024 12:02:33 -0800 (PST)
Message-ID: <6f137c76-b4c4-4a53-a16b-766f0c0c7299@gmail.com>
Date: Thu, 7 Nov 2024 15:02:32 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAEZoMYOCpG0bx2hMpBQGyjG3A0OfFTbLYsBTxVZ7=jaVZm2XSw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEZoMYOCpG0bx2hMpBQGyjG3A0OfFTbLYsBTxVZ7=jaVZm2XSw@mail.gmail.com>
Message-ID-Hash: XUWARITDPMVT72SKBYG2ZFLSACD4BZLK
X-Message-ID-Hash: XUWARITDPMVT72SKBYG2ZFLSACD4BZLK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: First 10 Samples From First Receive Always 0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XUWARITDPMVT72SKBYG2ZFLSACD4BZLK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDcvMTEvMjAyNCAxNDo1MywgQ2hyaXMgV296bnkgd3JvdGU6DQo+IEkgaGFkIG5vdGljZWQg
dGhhdCB0aGUgZmlyc3QgdGVuIHNhbXBsZXMgb2YgbXkgYXBwbGljYXRpb24gd2VyZSBhbHdheXMg
DQo+IGNvbWluZyB1cCBhcyB6ZXJvIHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciBpdCB3YXMgOC1iaXRz
IG9uIGhvc3Qgb3IgDQo+IDE2LWJpdHMgb24gaG9zdC4gSSB3ZW50IGRvd24gdGhlIHBhdGggb2Yg
dHJ5aW5nIHRvIHJlcHJvZHVjZSBhIG1pbmltYWwgDQo+IGV4YW1wbGUgdG8gc2hhcmUgd2l0aMKg
dGhpcyBtYWlsaW5nIGxpc3QsIGhvd2V2ZXIgSSB0aGVuIHJlYWxpemVkIHRoYXQgDQo+IGV2ZW4g
dGhlIGV4YW1wbGUgInJ4X3RpbWVkX3NhbXBsZXMuY3BwIiB3YXMgYWxzbyBwcm9kdWNpbmcgdGhl
IHNhbWUgDQo+IHJlc3VsdHMuIFRoaXMgb2NjdXJyZWQgd2l0aCB0d28gZGlmZmVyZW50IGIyMDBt
aW5pcyBhbmQgYSBCMjEwIHdpdGggDQo+IFVIRCA0LjcuMC4wLiBJIGhhZCB0byBkZS1ib29zdGlm
eSB0aGUgc291cmNlIGNvZGUgdG8gcnVuIG9uIG15IHN5c3RlbSANCj4gYW5kIHNwZWNpZnkgYSBj
ZW50ZXIgZnJlcXVlbmN5IGFuZCByZWNlaXZlIGdhaW4sIGJ1dCBhbSBhYmxlIHRvIA0KPiByZXBy
b2R1Y2UgdGhpcyBpc3N1ZSBldmVyeSB0aW1lLiBJJ3ZlIGNvbmZpcm1lZCB0aGF0IGEgc2lnbmFs
IGlzIA0KPiBwcmVzZW50IGJ5IHVzaW5nIGEgc2lnbmFsIGdlbmVyYXRvciBmb3Igb25lIHNldHVw
IGFuZCBhbHNvIHdpdGggYW4gT1RBIA0KPiBzZXR1cCB0dW5lZCB0byAyNDIxIE1IeiB3aXRoIEFH
QyBkaXNhYmxlZCBhbmQgcmVjZWl2ZSBnYWluIHNldCB0byA3MCBkQi4NCj4NCj4gSGFzIGFueW9u
ZSBvYnNlcnZlZCB0aGlzIGlzc3VlIG9yIGNhbiBhbnlvbmUgZWxzZSByZXByb2R1Y2UgaXQgdXNp
bmcgDQo+IHRoZSB0aW1lZCByZWNlaXZlIGV4YW1wbGUgYXMgd2VsbD8gU29ycnkgaWYgSSBhbSBt
aXNzaW5nIGNyaXRpY2FsIA0KPiBkZXRhaWxzIHRoYXQgd291bGQgaGVscCBkaWFnbm9zZSB0aGUg
aXNzdWUsIGxldCBtZSBrbm93IGlmIGFueSANCj4gYWRkaXRpb25hbCBpbmZvcm1hdGlvbiB3b3Vs
ZCBiZSBoZWxwZnVsLg0KPg0KPiAtIENocmlzDQo+DQpUaGUgc2lnbmFsIG11c3QgbmVjZXNzYXJp
bHkgcGFzcyB0aHJvdWdoIHNvbWUgZGlnaXRhbCBmaWx0ZXJpbmcgb24gdGhlIA0Kd2F5IGJldHdl
ZW4gdGhlIGFudGVubmEgYW5kIHlvdXIgYXBwbGljYXRpb24uDQogwqAgVGhvc2UgZGlnaXRhbCBm
aWx0ZXJzIGhhdmUgYSBjZXJ0YWluIGxlbmd0aCwgYW5kIHRodXMgZ3JvdXAgZGVsYXkuwqDCoCAN
ClRoYXQgZmlsdGVyIG11c3QgbmVjZXNzYXJpbHkgaGF2ZSAqc29tZSogdmFsdWUgYWxyZWFkeQ0K
IMKgIGluIGl0IHByaW9yIHRvIHlvdXIgc2FtcGxlcyBiZWluZyBwcmVzZW50ZWQgdG8gaXQuDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
