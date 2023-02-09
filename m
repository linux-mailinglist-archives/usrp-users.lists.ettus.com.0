Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3FC69104D
	for <lists+usrp-users@lfdr.de>; Thu,  9 Feb 2023 19:30:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A16EF384308
	for <lists+usrp-users@lfdr.de>; Thu,  9 Feb 2023 13:30:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675967413; bh=HkEZx1HcInHSFxHE9yNsUrcIkrVn2M5URf2XjYCM6bo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cXdcBRf/YSnzKSmIgcWV2njLcdq1JYy6f9hhwnhuapqEFCxh7hzCmXJmv65T/F+Vu
	 4qdzuQ1v5vfXtSzNdsgYSp5pL3aWc4LJ3jwY5hv13WjAqd/qmSQA/mO7FX9fXh235Q
	 +nlrHmFatt7Q/ri90WN0sQxPOvrLT7gsAjJFF9a0ToRcEcdRCTbq3HFfxDbAFhdvSU
	 liAGTTBek/xcsQNRT4QtMwyL4YtuurjecxxePWkNDySLJcMCYZDOKtjV0MsgLN6EHO
	 D8PiP0wM6e9bv08dVK7OFo1XUeLBtX5fhg4Z5qgGuMIRiam6YR3Y2L0JsnnytzEGa8
	 1afplRkPEt4uA==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id CF9FD3842C8
	for <usrp-users@lists.ettus.com>; Thu,  9 Feb 2023 13:29:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OKfXQHZo";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id d13so1922146qvj.8
        for <usrp-users@lists.ettus.com>; Thu, 09 Feb 2023 10:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Uu1Ob1yhzNE+oHYmng3yqlWigbJF99NM3k3wN98v1f8=;
        b=OKfXQHZom2779bLso85ziDalYkp7TwcsPli92kjnGek2RCY5LC+bXoN00nr8kQ18AM
         YmkDa9kuq9OTmLUwVZgcKUeopV+4yvGzTcJVzpTMNhaWjrt23iYsv6ncuIUGpCaFm83Y
         9gRp2Mi8cSKC2cQ0J09Lz6rjS6nFC4+/09pHW/58FIyJF8d1ek6LRHm//s2qGQjAuJi7
         aYs3jJM/ac8nv4qiyMfPrd1k49jMVCnc6RCiq05nHvukMCs+D9F42UxsQEFYscUjAFQO
         0Nvnsln9Db47AQFUPMlv9laYrWNzg2WzicljovIDqz4ejcREctqGPq7I2aQPySvwFLnT
         /big==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Uu1Ob1yhzNE+oHYmng3yqlWigbJF99NM3k3wN98v1f8=;
        b=6wR3UFTV3lyGEsjEOyAhCPdiJI+TLp5xWYcH9UeAhBJ2tnfTQRctgLMIj6xatT/azo
         fes1R5pzFInDhB95TJhuXrZFeUHnoPNqkV9y2uSLOcHCic7aPThd3jQ0ZPzylQ1CGkM2
         wLSYGPR+VmEGbR1vinDIfIXrm53UPi28tzaZFNeduOz8czfKlqAk7EWnNMDZSg9w19VL
         oMUHBVQYAOcAjJ64uv6o+PbAppkHwcPOcxleIyH1lRwOascJDGwrt+ZrHZ3UeThkV0pV
         95p8AbraDo6RJQClSIM0o+QrskSpPSGM8ndpKrqOQzLdu3aakVw24u1idQuefu3SIJ6u
         Q3Og==
X-Gm-Message-State: AO0yUKVk2AcYIHUZpb72FDJEy+HXOAz3OjsWoHQE9AWDPasSavKewWBy
	nIFEbe18NGjtKvzzpAJWS7rig0EZXTQ=
X-Google-Smtp-Source: AK7set/RY0dThn5GBLpHDX6nRJjQrE/oQrBzFNtq9qeU897BeYd2Fd3avCpzJOtP4sThFEbus+bgWg==
X-Received: by 2002:ad4:5f07:0:b0:56b:fcb1:47c4 with SMTP id fo7-20020ad45f07000000b0056bfcb147c4mr21239800qvb.52.1675967353042;
        Thu, 09 Feb 2023 10:29:13 -0800 (PST)
Received: from [192.168.2.162] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id s72-20020a37a94b000000b006fa16fe93bbsm1913133qke.15.2023.02.09.10.29.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 10:29:12 -0800 (PST)
Message-ID: <cdfeef88-369e-64a8-ca5c-c43bbba635b0@gmail.com>
Date: Thu, 9 Feb 2023 13:29:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <3e9ccf66-34e3-e379-d40d-b9b87a811300@3db-labs.com>
 <08cde01c-f15b-d4d8-404d-8f96d92f4e4a@gmail.com>
 <06b39c7d-a30c-3644-3488-8ee0f3a28a59@3db-labs.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <06b39c7d-a30c-3644-3488-8ee0f3a28a59@3db-labs.com>
Message-ID-Hash: V7FGACSYRHUYXTZQS7BWFMHMV63AJN3M
X-Message-ID-Hash: V7FGACSYRHUYXTZQS7BWFMHMV63AJN3M
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM startup failure on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V7FGACSYRHUYXTZQS7BWFMHMV63AJN3M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

PiBJIHJlZmxhc2hlZCB0aGUgZU1NQyB3aXRoIHRoZSB2NC40LjAgc2RpbWcgZmlsZSBhbmQgYW0g
c2VlaW5nIHRoZSBzYW1lIA0KPiByZXN1bHRzIHdpdGggTVBNIG5vdCBzdGFydGluZy4gSSBhbHNv
IG5vdGljZWQgdGhhdCBJIHNlZSB0aGUgZm9sbG93aW5nIA0KPiBzZXJpZXMgb2YgZXJyb3JzIHJl
cG9ydGVkIGluIGRtZXNnLCByZXBlYXRpbmcgdGhlIHNhbWUgc2VxdWVuY2UgZXZlcnkgDQo+IDkw
IHNlY29uZHM6DQo+DQo+IMKgwqDCoCBbIDE2NDguODY3ODg3XSBuaXhnZSAxMDAwMGE0MDAwLmV0
aGVybmV0IGludDA6IExpbmsgaXMgRG93bg0KPiDCoMKgwqAgWyAxNjQ4LjkwMTAzMF0gZnBnYV9t
YW5hZ2VyIGZwZ2EwOiB3cml0aW5nIHg0MTAuYmluIHRvIFhpbGlueCANCj4gWnlucU1QIEZQR0Eg
TWFuYWdlcg0KPiDCoMKgwqAgWyAxNjQ5LjE0MTgyN10gT0Y6IG92ZXJsYXk6IFdBUk5JTkc6IG1l
bW9yeSBsZWFrIHdpbGwgb2NjdXIgaWYgDQo+IG92ZXJsYXkgcmVtb3ZlZCwgcHJvcGVydHk6IC9m
cGdhLWZ1bGwvZmlybXdhcmUtbmFtZQ0KPiDCoMKgwqAgWyAxNjQ5LjE1MjM3MV0gT0Y6IG92ZXJs
YXk6IFdBUk5JTkc6IG1lbW9yeSBsZWFrIHdpbGwgb2NjdXIgaWYgDQo+IG92ZXJsYXkgcmVtb3Zl
ZCwgcHJvcGVydHk6IC9fX3N5bWJvbHNfXy9taXNjX2Nsa18xDQo+IMKgwqDCoCBbIDE2NDkuMTYy
NDA1XSBPRjogb3ZlcmxheTogV0FSTklORzogbWVtb3J5IGxlYWsgd2lsbCBvY2N1ciBpZiANCj4g
b3ZlcmxheSByZW1vdmVkLCBwcm9wZXJ0eTogL19fc3ltYm9sc19fL21pc2NfY2xrXzINCj4gwqDC
oMKgIFsgMTY0OS4xNzI0MjddIE9GOiBvdmVybGF5OiBXQVJOSU5HOiBtZW1vcnkgbGVhayB3aWxs
IG9jY3VyIGlmIA0KPiBvdmVybGF5IHJlbW92ZWQsIHByb3BlcnR5OiAvX19zeW1ib2xzX18vcmZf
ZGF0YV9jb252ZXJ0ZXINCj4gwqDCoMKgIFsgMTY0OS4xODMwNTldIE9GOiBvdmVybGF5OiBXQVJO
SU5HOiBtZW1vcnkgbGVhayB3aWxsIG9jY3VyIGlmIA0KPiBvdmVybGF5IHJlbW92ZWQsIHByb3Bl
cnR5OiAvX19zeW1ib2xzX18vcmZkY19yZWdzDQo+IMKgwqDCoCBbIDE2NDkuMTkyOTk5XSBPRjog
b3ZlcmxheTogV0FSTklORzogbWVtb3J5IGxlYWsgd2lsbCBvY2N1ciBpZiANCj4gb3ZlcmxheSBy
ZW1vdmVkLCBwcm9wZXJ0eTogL19fc3ltYm9sc19fL21pc2NfY2xrXzMNCj4gwqDCoMKgIFsgMTY0
OS4yMDMwMjRdIE9GOiBvdmVybGF5OiBXQVJOSU5HOiBtZW1vcnkgbGVhayB3aWxsIG9jY3VyIGlm
IA0KPiBvdmVybGF5IHJlbW92ZWQsIHByb3BlcnR5OiAvX19zeW1ib2xzX18vbml4Z2VfaW50ZXJu
YWwNCj4gwqDCoMKgIFsgMTY0OS4yMTMzOTZdIE9GOiBvdmVybGF5OiBXQVJOSU5HOiBtZW1vcnkg
bGVhayB3aWxsIG9jY3VyIGlmIA0KPiBvdmVybGF5IHJlbW92ZWQsIHByb3BlcnR5OiAvX19zeW1i
b2xzX18vbml4Z2UwDQo+IMKgwqDCoCBbIDE2NDkuMjIzMDgxXSBPRjogb3ZlcmxheTogV0FSTklO
RzogbWVtb3J5IGxlYWsgd2lsbCBvY2N1ciBpZiANCj4gb3ZlcmxheSByZW1vdmVkLCBwcm9wZXJ0
eTogL19fc3ltYm9sc19fL25peGdlMF8xDQo+IMKgwqDCoCBbIDE2NDkuMjMyOTM0XSBPRjogb3Zl
cmxheTogV0FSTklORzogbWVtb3J5IGxlYWsgd2lsbCBvY2N1ciBpZiANCj4gb3ZlcmxheSByZW1v
dmVkLCBwcm9wZXJ0eTogL19fc3ltYm9sc19fL25peGdlMF8yDQo+IMKgwqDCoCBbIDE2NDkuMjQy
Nzg1XSBPRjogb3ZlcmxheTogV0FSTklORzogbWVtb3J5IGxlYWsgd2lsbCBvY2N1ciBpZiANCj4g
b3ZlcmxheSByZW1vdmVkLCBwcm9wZXJ0eTogL19fc3ltYm9sc19fL25peGdlMF8zDQo+IMKgwqDC
oCBbIDE2NDkuMjUyNjM3XSBPRjogb3ZlcmxheTogV0FSTklORzogbWVtb3J5IGxlYWsgd2lsbCBv
Y2N1ciBpZiANCj4gb3ZlcmxheSByZW1vdmVkLCBwcm9wZXJ0eTogL19fc3ltYm9sc19fL21pc2Nf
ZW5ldF9yZWdzXzANCj4gwqDCoMKgIFsgMTY0OS4yNjMxODhdIE9GOiBvdmVybGF5OiBXQVJOSU5H
OiBtZW1vcnkgbGVhayB3aWxsIG9jY3VyIGlmIA0KPiBvdmVybGF5IHJlbW92ZWQsIHByb3BlcnR5
OiAvX19zeW1ib2xzX18vbWlzY19lbmV0X3JlZ3NfMF8xDQo+IMKgwqDCoCBbIDE2NDkuMjczOTEy
XSBPRjogb3ZlcmxheTogV0FSTklORzogbWVtb3J5IGxlYWsgd2lsbCBvY2N1ciBpZiANCj4gb3Zl
cmxheSByZW1vdmVkLCBwcm9wZXJ0eTogL19fc3ltYm9sc19fL21pc2NfZW5ldF9yZWdzXzBfMg0K
PiDCoMKgwqAgWyAxNjQ5LjI4NDYzOF0gT0Y6IG92ZXJsYXk6IFdBUk5JTkc6IG1lbW9yeSBsZWFr
IHdpbGwgb2NjdXIgaWYgDQo+IG92ZXJsYXkgcmVtb3ZlZCwgcHJvcGVydHk6IC9fX3N5bWJvbHNf
Xy9taXNjX2VuZXRfcmVnc18wXzMNCj4gwqDCoMKgIFsgMTY0OS4zMTM1NjZdIG5peGdlIDEwMDAw
YTQwMDAuZXRoZXJuZXQgKHVubmFtZWQgbmV0X2RldmljZSkgDQo+ICh1bmluaXRpYWxpemVkKTog
Zml4ZWQgbGluayBmdWxsIGR1cGxleCAxMDAwTWJwcyBub3QgcmVjb2duaXNlZA0KPiDCoMKgwqAg
WyAxNjQ5LjMyODQ1OV0gbml4Z2UgMTAwMDBhNDAwMC5ldGhlcm5ldCBpbnQwOiByZW5hbWVkIGZy
b20gZXRoMQ0KPiDCoMKgwqAgWyAxNjQ5LjM0OTk3NF0gbml4Z2UgMTIwMDAwMDAwMC5ldGhlcm5l
dCBzZnAwOiByZW5hbWVkIGZyb20gZXRoMg0KPiDCoMKgwqAgWyAxNjQ5LjM2NjY1OF0gbml4Z2Ug
MTIwMDAzMDAwMC5ldGhlcm5ldCBzZnAwXzM6IHJlbmFtZWQgZnJvbSBldGg0DQo+IMKgwqDCoCBb
IDE2NDkuMzc3NDA4XSBuaXhnZSAxMjAwMDEwMDAwLmV0aGVybmV0IHNmcDBfMTogcmVuYW1lZCBm
cm9tIGV0aDENCj4gwqDCoMKgIFsgMTY0OS4zOTU5OTZdIG5peGdlIDEyMDAwMjAwMDAuZXRoZXJu
ZXQgc2ZwMF8yOiByZW5hbWVkIGZyb20gZXRoMw0KPiDCoMKgwqAgWyAxNjQ5LjQwNzY5N10gbml4
Z2UgMTAwMDBhNDAwMC5ldGhlcm5ldCBpbnQwOiBjb25maWd1cmluZyBmb3IgDQo+IGZpeGVkL2lu
dGVybmFsIGxpbmsgbW9kZQ0KPiDCoMKgwqAgWyAxNjQ5LjQxNTUzM10gbml4Z2UgMTAwMDBhNDAw
MC5ldGhlcm5ldCBpbnQwOiBMaW5rIGlzIFVwIC0gDQo+IDFHYnBzL0Z1bGwgLSBmbG93IGNvbnRy
b2wgb2ZmDQo+IMKgwqDCoCBbIDE2NDkuNDE4OTY2XSBuaXhnZSAxMjAwMDAwMDAwLmV0aGVybmV0
IHNmcDA6IGNvbmZpZ3VyaW5nIGZvciANCj4gZml4ZWQveGdtaWkgbGluayBtb2RlDQo+IMKgwqDC
oCBbIDE2NDkuNDYyMTE0XSBuaXhnZSAxMjAwMDMwMDAwLmV0aGVybmV0IHNmcDBfMzogY29uZmln
dXJpbmcgZm9yIA0KPiBmaXhlZC94Z21paSBsaW5rIG1vZGUNCj4gwqDCoMKgIFsgMTY0OS40NzE0
NTJdIG5peGdlIDEyMDAwMTAwMDAuZXRoZXJuZXQgc2ZwMF8xOiBjb25maWd1cmluZyBmb3IgDQo+
IGZpeGVkL3hnbWlpIGxpbmsgbW9kZQ0KPiDCoMKgwqAgWyAxNjQ5LjQ4MDc1M10gbml4Z2UgMTIw
MDAyMDAwMC5ldGhlcm5ldCBzZnAwXzI6IGNvbmZpZ3VyaW5nIGZvciANCj4gZml4ZWQveGdtaWkg
bGluayBtb2RlDQo+IMKgwqDCoCBbIDE2NTUuMDM2NTI1XSBhdWRpdDogdHlwZT0xNzAxIGF1ZGl0
KDE2NzU5NjY4NzYuMjQwOjQ0KTogDQo+IGF1aWQ9NDI5NDk2NzI5NSB1aWQ9MCBnaWQ9MCBzZXM9
NDI5NDk2NzI5NSBzdWJqPWtlcm5lbCBwaWQ9MTM4MiANCj4gY29tbT0icHl0aG9uMyIgZXhlPSIv
dXNyL2Jpbi9weXRob24zLjciIHNpZz03IHJlcz0xDQo+DQo+IEphc29uDQoNCldlbGwsIGRhcm4u
DQoNCkkndmUgZm9yd2FyZGVkIHlvdXIgbG9ncyB0byBFdHR1cyBSJkQgZm9sa3MuwqAgSSdtIGhh
bXBlcmVkIGJ5IG5vdCANCmFjdHVhbGx5IGhhdmluZyBhbiBYNDEwIGluIG15IGZsb3RpbGxhIG9m
IFVTUlBzLCBzbyBob3BpbmcNCiDCoCBSJkQgY2FuIHNoZWQgc29tZSBsaWdodC4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
