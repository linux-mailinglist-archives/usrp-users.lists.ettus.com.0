Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D91A198C384
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 18:36:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 312A9385479
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 12:36:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727800582; bh=ZrASiePXAEr2fvWWhgXLp5XQ99kQpAYvoVROPDy62Uc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=h6B1CgH8ukysuE6NLugVoLDebn3mWsZQmW7y0/b1Hb/45uaR9+PT39wjBtHnuTKMD
	 7WIGKGe/GMaOjLDqwuj/dFe4vM0lgSn0jzd8hifTR42FKvihugk9YLxk4g+U8x8HHn
	 gOi0QW1IIbVB7v1GEtg9YnuQ7vfMx0Bj2RV8oNzi0Znk19IQgI3uiA6A87Cz8gVCaa
	 av5CcUzr2ummDz3/Gy1bX1QxD6jaPFx+MWvO+QFp+NatkTNY22GZihxm4/9Kmcehpi
	 6j3cCI8W26wHh/WmZu1Wxu1/9TFQ6ZDtDswtTScqTK/kH35Gp9gA+lGr8Vr7/zfkG4
	 02cwujLbSxwCA==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 1F8A5385470
	for <usrp-users@lists.ettus.com>; Tue,  1 Oct 2024 12:36:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V8OeomUg";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6cb399056b4so42826066d6.0
        for <usrp-users@lists.ettus.com>; Tue, 01 Oct 2024 09:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727800576; x=1728405376; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uek4MCE3ovw5NQzlcEyrv4uhHGmVNTixaTuybUiCG7g=;
        b=V8OeomUgb9iJ16RtOpULsPE+43yLH6kGK+9TVmy0/gga7x1xyZ+uHuLZE2GSBddlsi
         CpsJSOR2NZ4xgc5Y+Pu4tqqfqxgePoLi4KfUK5+gGrTY8SMNGXzRtbbIYXPtVQWGpXzy
         tjXw4zEIf/x61kOBGNadNwlOK35djJhNP8/PwAO2mrdtz6T68uMm0ZYfYxr3NhY9E/YW
         BcJRZwFK8T0mHuf33EoeM9AFIceZCokRaRziXsOCDCSw9CMxlDbx2LuE90NKYpXHAMZm
         MrXVduKgyKf0lAZjO9tshGQQg49Cdnyo8qODXrk6kCdPDTcTiRs34Aug7TzGX/IreWWR
         2zzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727800576; x=1728405376;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uek4MCE3ovw5NQzlcEyrv4uhHGmVNTixaTuybUiCG7g=;
        b=toTfLq31R4FzG4H4G4QR9nyQP43toBetwC6IRTI7jMaOnvrIgp9CYDgtsUIb0wHa0L
         jWpGdTMLyLlTTBppKbhbHq3uZmoLSyCJwDEUO3rutdtuXKum8J05PaYiwQmYG4W7SkgQ
         LQ58eL39zpu42UoqXpcOkmgwbuEm4qpvJMvFUX8bbujrqf2Ab3tRw55o5P6sUSu71hUX
         pfqF4KYYwA/+dDSyChJ1EOGtvy/vdahH05GpmfxTtuwZ/DLqrW4n3O8k0XQldNgsMrN0
         mwAU5a4cuCi2X8esTfYwivoNLPG0/q6JPfROdfXW+f5zgp7N1YFBD7VZ7nO4byf9R4bA
         aERA==
X-Gm-Message-State: AOJu0Yx6N7aEFFp9t8Xz7318JzBSkrlMIyVn32J5ZtsasnlPRdklywo7
	oqWl7CGIe9pW6y4B9U1uxONuBIPiKdhHBKYuotk5ZmA6EBmAqh+MutMZ8g==
X-Google-Smtp-Source: AGHT+IFEun558y2vJt/oI17e3v/ziNEjDBdOAJSh6sB3dSQrQMp+nUrV0fWz6S/LMe1uwumDFTTNaQ==
X-Received: by 2002:a05:6214:390e:b0:6c7:c63f:b414 with SMTP id 6a1803df08f44-6cb81b9a0a9mr614156d6.33.1727800576181;
        Tue, 01 Oct 2024 09:36:16 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6cb3b67f776sm51252666d6.113.2024.10.01.09.36.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2024 09:36:15 -0700 (PDT)
Message-ID: <e16da4a1-c2b1-42b1-85cd-b38c251bc94f@gmail.com>
Date: Tue, 1 Oct 2024 12:36:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <U4mx9FzgikzVEzY3DLPLwFHaGd0AKrLVBvCkUpi08Us@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <U4mx9FzgikzVEzY3DLPLwFHaGd0AKrLVBvCkUpi08Us@lists.ettus.com>
Message-ID-Hash: TP7ISX7OBV65WJT5256SFYOUZNROIXPC
X-Message-ID-Hash: TP7ISX7OBV65WJT5256SFYOUZNROIXPC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TP7ISX7OBV65WJT5256SFYOUZNROIXPC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDEvMTAvMjAyNCAxMjowOSwgbXJ1YW5lLS0tIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPg0K
PiBIaSBhbGwhDQo+DQo+IEnigJltIGFuIEZQR0EgZGV2ZWxvcGVyLCBkcmFnZ2VkIGludG8gdGhl
IFlvY3RvIHdvcmxkIGEgZmV3IHllYXJzIGFnbyANCj4gd2l0aCB0aGUgbW92ZSB0byBaeW5xIGFu
ZCBaeW5xTVAgYXJjaGl0ZWN0dXJlcy4gQXMgYSByZXNlYXJjaCBncm91cCwgDQo+IHdlIG1haW5s
eSBkZXZlbG9wIG9uIFhpbGlueCBkZXYgYm9hcmRzIGxpa2UgdGhlIFpDVTEwMiBNUFNvQywgYW5k
IA0KPiBaQ1UxMTEgUkZTb0MuDQo+DQo+IEhhdmluZyByZWNlbnQgc3VjY2VzcyBhZGRpbmcgdGhl
IFhpbGxpbnggRGVlcC1MZWFybmluZyBQcm9jZXNzb3IgKERQVSkgDQo+IHRvIHRoZSBGUEdBIGZh
YnJpYywgYnVpbGRpbmcgdGhlIFZpdGlzLUFJIGxpYnJhcmllcyBpbnRvIHRoZSByb290ZnMsIA0K
PiBhbmQgYWNjZWxlcmF0aW5nIE1MIGFwcGxpY2F0aW9ucyBvbiB2YXJpb3VzIG1vZGVscywgd2Ug
ZGVjaWRlZCB0byBtb3ZlIA0KPiB0aGluZ3Mgb3ZlciB0byBhbiB4NDEwIHRvIHRha2UgYWR2YW50
YWdlIG9mIHRoZSBSRlNvQyBpbiBhIGNvbXBsZXRlIA0KPiBTRFIgcHJvZHVjdC4NCj4NCj4gVGhl
IEZQR0EgZGVzaWduIHdhcyBzdHJhaWdodCBmb3J3YXJkLCBhbmQgdGhlIE1ha2UtYmFzZWQgRlBH
QSBidWlsZCANCj4gc2NyaXB0cywgd2hpY2ggSSBhbSB0eXBpY2FsbHkgbm90IGEgZmFuIG9mLCB3
YXMgcXVpdGUgd2VsbCB0aG91Z2h0IA0KPiBvdXQsIHdvcmtlZCB3b25kZXJmdWxseSwgYW5kIHdh
cyBlYXN5IHRvIG1vZGlmeSB0byBjdXN0b21pemUgdGhlIGZsb3csIA0KPiBhbmQgYWRkIGNoYW5n
ZXMgdG8gdGhlIGJsb2NrIGRlc2lnbi4gV2l0aCBhIGxpdHRsZSBkaWdnaW5nLCBpdCB3YXMgDQo+
IGFsc28gZmFpcmx5IHN0cmFpZ2h0Zm9yd2FyZCB0byBpbmNvcnBvcmF0ZSB0aGUgY2hhbmdlcyBp
bnRvIHRoZSANCj4gWFNBL2RldmljZSB0cmVlIGZvciB1c2UgaW4gYnVpbGRpbmcgdGhlIHJvb3Rm
cy4NCj4NCkl0J3MgaW50ZXJlc3RpbmcgdGhhdCA0OCB5ZWFycyBhZnRlciAiTWFrZSIgZmlyc3Qg
YXBwZWFyZWQgaW4gUFdCIFVuaXggDQooYW5kIHRoZW4gbGF0ZXIgZWRpdGlvbnMpLCB0aGUgc29m
dHdhcmUgREVWIHdvcmxkIGlzIHN0aWxsDQogwqAgdXNpbmcgc29tZSBmb3JtIG9mIGl0LsKgwqAg
QmVjYXVzZSB0aGUgbmVlZCB0byBlbmNhcHN1bGF0ZSB0aGUgDQpkZXBlbmRlbmN5IGdyYXBoIEFO
RCB0aGUgInJlY2lwZXMiIGZvciBidWlsZGluZyBhIGRlc2NlbmRhbnQNCiDCoCBmcm9tIGFuIGFu
Y2VzdG9yIGlzIHN0aWxsIHNvbWV0aGluZyB0aGF0IGlzIG5lZWRlZC0tcGFydGljdWxhcmx5IGZv
ciANCmJ1aWxkIGF1dG9tYXRpb24gb2YgZXZlbiBtb2Rlc3Qtc2l6ZWQgcHJvamVjdHMuDQoNCldo
ZW4gSSB3YXMgYSB0ZWVuLCBJIGRldmVsb3BlZCBhIHRleHQgZWRpdG9yICh3aGljaCwgYXQgdGhl
IHRpbWUsIGFsbCANCnRoZSBjb29sIGtpZHMgZGlkKSwgYW5kIEkgd2FzIGZvcnR1bmF0ZSB0aGF0
LCBhIHllYXIgYWZ0ZXINCiDCoCBJIHN0YXJ0ZWQgaXQsICJNYWtlIiBzaG93ZWQgdXAgb24gdGhl
IHZlcnNpb24gb2YgVW5peCB3ZSB3ZXJlIA0KdXNpbmcuwqDCoCBUaGF0IG1hZGUga2VlcGluZyB0
cmFjayBvZiB0aGluZ3MgdmFzdGx5IGVhc2llcg0KIMKgIHRoYW4gdGhlIGFkLWhvYyBtZWNoYW5p
c21zIEkgaGFkIGJlZW4gdXNpbmcuDQoNCkkgc3VzcGVjdCB0aGF0IHRoZSBtb2Rlcm4gaGF0cmVk
IGZvciBNYWtlIGFuZCBpdHMgdmFyaWFudHMgaXMgYmVjYXVzZSANCm1vZGVybiBkZXZzIGFyZSB1
c2VkIHRvIHRoZWlyIGZhdmUgSURFIGhhdmluZyBzb21lDQogwqAga2luZCBvZiBhdXRvbWF0ZWQg
ZGVwZW5kZW5jeSB0cmFja2luZyBhbmQgcmVjaXBlIHN5c3RlbSBhcyBhIA0KYnVpbHQtaW4sIGFu
ZCBmYWlsIHRvIHJlY29nbml6ZSB0aGUgbmVlZCB0byAqZGl2b3JjZSogdGhhdA0KIMKgIGFzcGVj
dCBvZiB0aGluZ3MgZnJvbSB3aGF0IGFtb3VudHMgdG8gYSAicmVhbGx5IGZhbmN5IGNvZGUgDQpl
ZGl0b3IiLsKgwqDCoCBOb2JvZHkgaW4gcHJvZHVjdGlvbiB3YW50cyB0aGUgYnVpbGQgcmVjaXBl
IHRvIGJlDQogwqAgIk9LLCBub3cgY2xpY2sgaGVyZS7CoMKgIE9rLCBzZWxlY3QgPGZvbz4gaW4g
dGhlIG1lbnUuwqAgVGhlbiA8YmFyPi7CoCANClRoZW4gaGl0ICdnbycuwqAgT2ssIG5vdywgZG8g
dGhlIGZvbGxvd2luZyAxMiB0aGluZ3MuIg0KIMKgIFdoaWNoIGhhcyBiZWVuIG15IGV4cGVyaWVu
Y2Ugd2l0aCB0aGluZ3MgbGlrZSBWUyBpbiB0aGUgcGFzdC4NCg0KT25lIGNhbiBhcmd1ZSBhYm91
dCB0aGUgY2hvaWNlIG9mIHBhcnRpY3VsYXIgTWFrZSBkaWFsZWN0LCBidXQgZXZlbiANCnNvbGlk
bHkgaW50byB0aGUgM3JkIGRlY2FkZSBvZiB0aGUgMjFzdCBjZW50dXJ5LCBzb21ldGhpbmcNCiDC
oCBNYWtlLWxpa2UgaXMgc3RpbGwgYSB2aXRhbCB0b29sIGluIHByb2R1Y3Rpb24gc29mdHdhcmUg
ZGV2ZWxvcG1lbnQuDQoNCk9rLCBJIGFkbWl0LsKgIFRoaXMgaXMgYSByYW50LsKgIEl0IGRvZXNu
J3QgYW5zd2VyIHlvdXIgcXVlc3Rpb24gaW4gYW55IA0KdXNlZnVsIHdheS7CoMKgwqAgSSdtIGFm
cmFpZCBJJ20gbm90IHBhcnRpY3VsYXJseSBmYW1pbGlhciB3aXRoDQogwqAgVGhlIFg0MTAgYW5k
IEZQR0ErWW9jdG8gZGV2IGZsb3dzIGluIHBhcnRpY3VsYXIuDQoNCg0KPiBJbmNvcnBvcmF0aW5n
IHRoZSBWaXRpcy1BSSBsaWJyYXJpZXMgYW5kIERQVSBkcml2ZXJzIGludG8gdGhlIA0KPiBLQVMv
S2lya3N0b25lL01lbmRlci9UaXRhbml1bSBidWlsZCBzeXN0ZW0gaXMgYW5vdGhlciBzdG9yeS4g
TG9uZyANCj4gc3Rvcnkgc2hvcnQsIGFmdGVyIHRoZSB0eXBpY2FsLCBsZW5ndGh5LCBZb2N0byBk
ZWJ1ZyBwcm9jZXNzLCBpdCANCj4gdWx0aW1hdGVseSBmYWlscyBhdCB3aGF0IHNlZW1zIHRvIGJl
IGEga2VybmVsIGluY29tcGF0aWJpbGl0eSBiZXR3ZWVuIA0KPiB0aGUgbWFpbmxpbmUga2VybmVs
IGFuZCB0aGUgVml0aXMtQUkgcmVxdWlyZW1lbnRzLiBUaGlzIHBhcnRpY3VsYXIgDQo+IHRpbWUs
IGl0IG1hbmlmZXN0cyBhcyBzeW50YXggZXJyb3JzIGluIHRoZSB6b2NsIG1vZHVsZSBjb21waWxh
dGlvbiwgDQo+IHRob3VnaCBJIHN1c3BlY3QgaXQgaXMgYWN0dWFsbHkgYSBjYXNjYWRpbmcgc2Vy
aWVzIG9mIGZhaWx1cmVzIHRoYXQgDQo+IGNhbiBub3QgYmUgc29sdmVkIG9uZSBhdCBhIHRpbWUu
DQo+DQo+IFJlc2VhcmNoaW5nIHRoZSBmYWlsdXJlIG9uIHRoZSBYaWxpbnggZm9ydW0gbGVhZHMg
dG8gYXNzZXJ0aW9ucyB0aGF0IA0KPiBjZXJ0YWluIHBhcnRzIG9mIHRoZSBWaXRpcy1BSSBsaWJy
YXJpZXMgKGFzIHdlbGwgYXMgbWFueSBvdGhlciBYaWxpbnggDQo+IGFwcGxpY2F0aW9ucyB0aGF0
IGV4ZXJjaXNlIGZlYXR1cmVzIG9mIHRoZSBGUEdBKSByZXF1aXJlIHRoZSBYaWxpbnggDQo+IGZv
cmsgb2YgdGhlIExpbnV4IEtlcm5lbCwgbGludXgteGxueC4NCj4NCj4gSGFzIGFueW9uZSBhdHRl
bXB0ZWQgdG8gc3dpdGNoIGtlcm5lbHMgaW4gYSBVSEQgc3lzdGVtLCBvciB0byANCj4gaW50ZWdy
YXRlIHRoZSBsaW51eC14bG54IGtlcm5lbCBmZWF0dXJlcyBpbnRvIHRoZSBVSEQga2VybmVsPw0K
Pg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
