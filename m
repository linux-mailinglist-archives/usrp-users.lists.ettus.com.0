Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E24822AC40
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 12:14:17 +0200 (CEST)
Received: from [::1] (port=60084 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyYEy-0002Yf-BL; Thu, 23 Jul 2020 06:14:16 -0400
Received: from mail-wm1-f47.google.com ([209.85.128.47]:52171)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jyYEu-0002P3-Ms
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 06:14:12 -0400
Received: by mail-wm1-f47.google.com with SMTP id p14so4063743wmg.1
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 03:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=MTlbJDKg+0e/zGhuke3THGDw/KYAgdtzD21ulzK4XGg=;
 b=OtaViUl4SWi5vE9Lig3oCF8r6nhjCgoVGdkz0m6y1pG+ZVi3mEfwMf/E+8itV3MI9a
 oPD4U0XV8OYAmMcbOiTDOPgsvlVtqeIH4sDYtCt4hKo06XU7lga8nKdjnhjigiFIh9oS
 Tq8LSMmx1BnQ5V1yblUrZxvW9fJMnqKRk5uAZd1q22K81mev58V/DpqciRdaevmEVO/k
 ZYQ8J+s/2aDA9shJdEXLd6YTXLCQ6zpVrcqR/s+iSNWMoToMEKw7XlguXE6fGVinRMgc
 X2ZLY+CCv4gOirGvZz895LsU1y87VNkncSJ3JsT4CruBTN+leGMGLN0N2Oelnlo2BDDO
 mMyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MTlbJDKg+0e/zGhuke3THGDw/KYAgdtzD21ulzK4XGg=;
 b=lJ2tbPjZetvT4ax9d8jFIw6y/V9ShOS//Ihx/JX2jVDRFrkSQbeKJ7/XuRTdNYWnUq
 VDTVGI7CrSdznfQZw1CrRGj+EHFkSG3BiMVmiOtkz271S2JwngwTI5Firt1idf+KLzRd
 WHVr5IY/7lMNk+VXpi2QN6vfraayAYCWvw7jWBawpWmSHkUSECpKeNvy657fasI+6u7C
 MQR8KXbrafArSD+K/RGFrUw940NNF259hyubYcsAMuEOmWhHZadcQwDuHUaTvIrIX/FA
 ynIw8aqxhylEiBGqfII8lx/0fOJcGQey5B+UqApFQ2DxjWiv23x1cEv5CQejR3QDyBnh
 o1Xg==
X-Gm-Message-State: AOAM532GLRmyu7U8R0qZNSPLF38P4NH9yOpfeqsxxDITyXbLnTY/vqLC
 fYCKszZIL6AB5rijaK8oWa3A5GOVnoBxVw==
X-Google-Smtp-Source: ABdhPJwHcNvOVIl/FV7QD6U7Ueav3JfZwq4HPuPi3lCnsuY/rFpm8pP+06E3RbN72xT0rBgmnPy5oA==
X-Received: by 2002:a7b:cbc5:: with SMTP id n5mr3479023wmi.95.1595499211326;
 Thu, 23 Jul 2020 03:13:31 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id t202sm2993563wmt.20.2020.07.23.03.13.30
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jul 2020 03:13:30 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <f6a7bc0f-a627-bd61-827c-04e2e9cea7b8@ant.uni-bremen.de>
 <5F1870B5.7030805@gmail.com>
 <eb60c58d-9d5f-6968-b424-e003094571fd@ant.uni-bremen.de>
 <acb46f0c-e8a2-c08b-5e75-afcad50e30d2@ettus.com>
 <f68cc2a0-d33d-11b9-bf84-0f6492128401@ant.uni-bremen.de>
Message-ID: <6007c12a-d58e-83cb-6b8d-519c9da42a0b@ettus.com>
Date: Thu, 23 Jul 2020 12:13:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <f68cc2a0-d33d-11b9-bf84-0f6492128401@ant.uni-bremen.de>
Content-Language: en-US
Subject: Re: [USRP-users] 10us+ sample delay between daughterboards
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

SSBhbHNvIGp1c3QgcmVhbGl6ZWQgdGhhdCB5b3UgY2FuIGJlIHJlYWFhYWxseSBzaWxseS4gSWYg
eW91IGhhdmUgYQp0cmFuc2lzdG9yIGFuZCB0d28gcmVzaXN0b3JzIHRvIHNwYXJlLCB1c2UgdGhl
IEdQSU8gZnJvbnQgcGFuZWwKY29ubmVjdG9yIHRvIGdlbmVyYXRlIGEgZmF1eC1QUFMgcHVsc2Us
IGJ1ZmZlciBpdCB1c2luZyB0aGUgdHJhbnNpc3RvciwKYW5kIGZlZWQgaXQgYmFjayB0byB0aGUg
YmFja3BhbmVsIFBQUyBpbnB1dC4uLiBtaWdodCBzYXZlIHlvdSB0aGUgZXh0cmEKZGV2aWNlLCBi
dXQgb2YgY291cnNlIHRoZSBSUGkgc29sdXRpb24gaXMgc3RpbGwgZWxlZ2FudCwgYXMgaXQgYWxs
b3dzCmZvciBub3QtcXVpdGUtYnV0LWF0LWxlYXN0LWNsb3NlLWlzaCBOVFAgc3luY2hyb25pY2l0
eS4KCkNoZWVycywKTWFyY3VzCgpPbiAyMy4wNy4yMCAxMTo0NCwgSm9oYW5uZXMgRGVtZWwgdmlh
IFVTUlAtdXNlcnMgd3JvdGU6Cj4gSGkgTWFyY3VzLAo+IAo+IEkgdHJpZWQgdG8gaW1wcm92ZSB0
aGUgc2l0dWF0aW9uLiBJIGhhZCBhbm90aGVyIGxvb2sgYXQgWzAsMV0uCj4gCj4gRnJvbSBbMV0g
KE4zMTAgbWFudWFsKQo+ICJbLi5dIHdoaWNoIGNhbiBib3RoIGJlIHVzZWQgYXMgdGltZS0gYW5k
IGNsb2NrIHJlZmVyZW5jZXMuIFRoZSBHUFNETwo+IHdpbGwgZnVuY3Rpb24gYXMgYSByZWZlcmVu
Y2UgZXZlbiB3aGVuIHRoZXJlIGlzIG5vIEdQUyByZWNlcHRpb24uIgo+IAo+IFRoaXMgaGVscHMu
IEkgc2V0Cj4gU3luYzogIlVua25vd24gUFBTIgo+IENsb2NrL1RpbWUgc291cmNlOiAiTy9CIEdQ
U0RPIgo+IGFuZCBhbGwgc3RyZWFtcyBhcmUgaW4gc3luYy4gVGhhdCdzIHNvcnQgb2YgYSByZWxp
ZWYgZm9yIE4zMTBzLgo+IAo+IFNpbmNlIEkgZG9uJ3QgaGF2ZSBhIEdQUyBzaWduYWwgaW4gdGhl
IGxhYiwgSSBhc3N1bWUgdGhlcmUncyBubyBwb2ludCBpbgo+IHRyeWluZyB0byByZWNlaXZlIGEg
R1BTIHRpbWVzdGFtcCBhbmQgc2V0IHRoZSBkZXZpY2UgdGltZSBvbiBuZXh0IFBQUwo+IFswXS4g
SSB3b3VsZCBwcmVmZXIgdG8gd29yayB3aXRoIHRpbWVzdGFtcHMgInNpbmNlIGVwb2NoIiBpbnN0
ZWFkIG9mCj4gInNpbmNlIHN0YXJ0IG9mIGZsb3dncmFwaCIuCj4gCj4gSSBuZWVkIHRvIGZpZ3Vy
ZSBvdXQgaG93IHRvIHVzZSBHUFNETyBvbiB0aG9zZSBYMzEwcyB0aG91Z2guIFNpbmNlIHRoZQo+
IEdQUyBMRUQgZG9lcyBub3QgbGlnaHQgdXAsIEkgZG9uJ3QgdGhpbmsgaXQgZGV0ZWN0cyBhIEdQ
U0RPIGF0IGFsbC4gQW5kCj4gSSBqdXN0IGhvcGUgaXQgY2FuIHVzZSBhIEdQU0RPIGxpa2UgYW4g
TjMxMC4KPiAKPiBTaW5jZSBJIHdvcmsgcmVtb3RlbHksIEkgY2FuJ3QganVzdCBtYW51YWxseSBn
ZW5lcmF0ZSBhIHN5bmMgcHVsc2UuIEJ1dAo+IGlmIEkgY2FuIGZpbmQgYSBkZXZpY2UgdGhhdCB3
b3JrcyByZWxpYWJseSBJIG1heSBzd2l0Y2ggdG8gdGhhdC4gVGhhbmtzCj4gZm9yIHRoZSBleHBs
YW5hdGlvbiBhbmQgQVNDSUkgc2NoZW1hdGljLgo+IAo+IENoZWVycwo+IEpvaGFubmVzCj4gCj4g
WzBdIGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX2dwc2RvX3gzeDAuaHRtbAo+
IFsxXSBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV91c3JwX24zeHguaHRtbCNu
M3h4X3N5bmNocm9uaXphdGlvbgo+IAo+IE9uIDIzLjA3LjIwIDA5OjU5LCBNYXJjdXMgTcO8bGxl
ciB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4gSGkgSm9oYW5uZXMsCj4+Cj4+IGxldCBtZSBpbmNy
ZWFzIE1hcmN1c25lc3Mgb2YgdGhpcyBieSB+M2RCLgo+Pgo+PiBPbiAyMy4wNy4yMCAwOToyOSwg
Sm9oYW5uZXMgRGVtZWwgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4+PiBJIGRvbid0IGhhdmUgYSBQ
UFMgc2lnbmFsIHJlYWRpbHkgYXZhaWxhYmxlLiBXb3VsZCBhIDEwTUh6IHJlZmVyZW5jZQo+Pj4g
c3VmZmljZSBhcyB3ZWxsPwo+Pgo+PiBOb3BlLCB0aGF0IGRvZXNuJ3Qgc2V0IGEgdGltZSByZWdp
c3Rlci4gWW91IGRvbid0IGFjdHVhbGx5IG5lZWQgYSBwdWxzZQo+PiBwZXIgc2Vjb25kIOKAkyB5
b3UgbmVlZCBhIHNpbmdsZSBwdWxzZS4KPj4KPj4gSXQncyBhIHRyaWNrIEkgdXN1YWxseSB0ZWxs
IHRvIGltcHJlc3MgcGh5c2ljaXN0cyBkb2luZyBtZWFzdXJlbWVudHM6Cj4+Cj4+IDEuIGNhbGwg
c2V0X3RpbWVfbmV4dF9wcHMKPj4gMi4gY29ubmVjdCAyw5cgMS41IFYgYmF0dGVyaWVzIChvciBz
aW1pbGFyKSB0byBnZXQgYSB2b2x0YWdlIGJldHdlZW4KPj4gc29tZXRoaW5nIGxpa2UgMi41IFYg
YW5kIDVWLgo+PiAzLsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8Cj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC0tLS0tCj4+IMKgwqDCoCAtLS0tLS0tLS0tb8KgwqAgby0tLS0tLS0tLS0r
LS0tLS0tLS0tLS0tLS0tPiBTTUEgaW5uZXIKPj4gwqDCoCB8wqDCoCArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8Cj4+IC0tLS0tLcKgwqDCoMKgwqDCoMKgwqAgcHVz
aC3CoMKgwqDCoMKgwqAgfCB8IHB1bGwtCj4+IMKgIC0tLWJhdMKgwqDCoMKgwqDCoMKgIGJ1dHRv
bsKgwqDCoMKgwqAgfFJ8IGRvd24KPj4gwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwKPj4gwqDCoMKgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0rLS0tLS0tLS0tLS0tLS0tPiBTTUEgb3V0ZXIKPj4KPj4gVGhlIHB1c2hidXR0b24gY2FuIGVm
ZmVjdGl2ZWx5IGJlIGFueXRoaW5nIHRoYXQgaGFzIGEgbmljZSBxdWljawo+PiBjb250YWN0aW5n
IG1lY2hhbmlzbSB0byB5aWVsZCBhIG5pY2UgZWRnZSwgd2l0aG91dCByaW5naW5nIGRhbmdlcm91
c2x5Cj4+IGhpZ2guCj4+Cj4+Cj4+PiBEbyBJIGdldCByaWQgb2YgdGhpcyBpc3N1ZSBpZiBJIHVz
ZSBhIEdQU0RPPyBXZSBoYXZlIHRoZSBoYXJkd2FyZQo+Pj4gKGFudGVubmFzICsgbW9kdWxlcykg
YXZhaWxhYmxlIGJ1dCBubyBHUFMgc2lnbmFsIGluIG91ciBsYWIuCj4+Cj4+IEhtbW1tIEknZCBo
YXZlIHRvIHRoaW5rIGhhcmQgaGVyZTogdGhlIEdQU0RPIGRvZXMgb2ZmZXIgMTAgTUh6IGZyb20g
aXRzCj4+IGludGVybmFsIG9zY2lsbGF0b3Igd2hlbiBpdCdzIG5vdCBsb2NrZWQsIGJ1dCBJIHRo
aW5rIHRoZSBQUFMgaXMgcmVhbGx5Cj4+IG9ubHkgcHJlc2VudCB3aXRoIEdQUyB0aW1lCj4+Cj4+
PiBCZXNpZGVzLCBJIHdhcyByZWFsbHkgaG9waW5nIHRoYXQgb25lIFVTUlAgd291bGQgc3luYyBp
dHNlbGYuCj4+Cj4+IFNvdW5kcyBmYWlyOyB0aGVyZSdzIGFuIGludGVybmFsIFBQUyBwdWxzZSwg
SSd2ZSBuZXZlciB0cmllZCBpdC4gSGF2ZQo+PiB5b3UgdHJpZWQgc2V0dGluZyB0aGUgcHBzIHNv
dXJjZSB0byAiaW50ZXJuYWwiIGFuZCB0aGVuIHNldHRpbmcgb24gUFBTPwo+Pgo+PiBDaGVlcnMs
Cj4+IE1hcmN1cyB0aGUgeW91bmdlcgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+PiBVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlz
dGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPj4KPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21h
aWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
