Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AECC3128A97
	for <lists+usrp-users@lfdr.de>; Sat, 21 Dec 2019 18:26:01 +0100 (CET)
Received: from [::1] (port=49504 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iiiVk-0006L1-As; Sat, 21 Dec 2019 12:25:52 -0500
Received: from mail-wm1-f45.google.com ([209.85.128.45]:35343)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1iiiVg-0006Fu-Rh
 for usrp-users@lists.ettus.com; Sat, 21 Dec 2019 12:25:48 -0500
Received: by mail-wm1-f45.google.com with SMTP id p17so12285269wmb.0
 for <usrp-users@lists.ettus.com>; Sat, 21 Dec 2019 09:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=/nFxmQGyFp5ilXtZ/vm8pziQqC+rNhjDBQbC/eBT6SI=;
 b=WDKnyilVWBvdU7YxXIOItk5shaLg6M+CA0xb51MIvRzMMLe1u3rZcME6VHEg0AVReq
 iPllXQF+D/Z9pkjcHwCFr7D+IsxHdk8B/f2JBQVZOlENFD8KIGF2/Qov4myBu0YVIP7E
 j/d02yNtsK0Me0wc1DCPqwgHqnap2AO05d9SsdP8ybSTNwuHHQqWGuw2oi4Zp9lWthTz
 8Lf8bteP+3aZpXVfFAxl3gbBVW6vVE1qkiACY34RYSll27CBmufZpTcZfvpO+THtwjCp
 /eKA4QrKeNV+qzv2YE162k3n8DVVGMcwGtm3rYOTcU+bwJF5SR+McGHzJGdrIIN5Rfpx
 uMmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=/nFxmQGyFp5ilXtZ/vm8pziQqC+rNhjDBQbC/eBT6SI=;
 b=E6Q5Jea9kpGFyUoDoo9AKaShv20gBoNcY6kkflGUCIsipBKBemF3dLeW2i3vijBD2m
 mcUUiVM/W/wCy4XS5Z9Zg3a+iF4IcnUJHsNKv6b9MChcl+sYZ9n1vXHHo8DXekVLeho/
 7nKdaVyvH6eCzoNA02+F8jZVZlgBBBZy62euIO89giZeToON5GkfSeIIVO1ztdy8KneN
 s0lFCTbmfa0r+iRPOXYBAXALQtd+Rxl0VbuHQlxRnWLyJBYEQVP7YPRUkw+0IQQwZGzr
 Nw0FVcEn752a1Gpam7++XJoByBIvARPTWtP7rYgRdgCOx28I5XbRfkJ9JRmkO+fIyMAS
 pcRA==
X-Gm-Message-State: APjAAAW3bMBt4MC1/+0c+CWXXNPFIVfoOyO6lyQk+faGoOzQRBEEO2qd
 gUjqezNcfJWCyWxMpqisqih2HCUs
X-Google-Smtp-Source: APXvYqzHT8yfJevSMCJR5u9Q0zCrddJi5P3Uef41o1jOtZSvYWQPlHXFWYiEynHLc18vJpU4jjxVzA==
X-Received: by 2002:a1c:9814:: with SMTP id a20mr22264912wme.94.1576949107759; 
 Sat, 21 Dec 2019 09:25:07 -0800 (PST)
Received: from workhorse.lan
 (HSI-KBW-46-223-163-146.hsi.kabel-badenwuerttemberg.de. [46.223.163.146])
 by smtp.googlemail.com with ESMTPSA id 4sm13139299wmg.22.2019.12.21.09.25.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 09:25:07 -0800 (PST)
Message-ID: <39281f29c310afd41aa6795a29209402fff99484.camel@ettus.com>
To: =?UTF-8?Q?=D0=93=D0=B5=D0=BD=D0=BD=D0=B0=D0=B4=D0=B8=D0=B9_?=
 =?UTF-8?Q?=D0=9A=D0=B0=D0=B7=D0=B0=D1=87=D1=91=D0=BA?=
 <gena.kazachek@gmail.com>, Sam Reiter <sam.reiter@ettus.com>, 
 usrp-users@lists.ettus.com
Date: Sat, 21 Dec 2019 18:25:06 +0100
In-Reply-To: <CADfCwn04HwSBiaCef8f4QK_YOhoNGQe+9TFs5cqFLo4D2VPpTA@mail.gmail.com>
References: <CADfCwn0ty1KmKt2ba_dBEapoJ5-vyb=i0JffE=V2aXTNK_vuhw@mail.gmail.com>
 <CANf970YugamZVx6BW=XD_es4VSnHkLPudPcLCdA864MsEMk8Ew@mail.gmail.com>
 <CADfCwn2mNfRYh0HpOr-cYPGw99oZW2D08Y2fab=10Tvg3SE9dw@mail.gmail.com>
 <CADfCwn09ypZGMRPAvGoGi6nMcM2ZMXeOn44g9CHas78Wdi04gQ@mail.gmail.com>
 <CADfCwn04HwSBiaCef8f4QK_YOhoNGQe+9TFs5cqFLo4D2VPpTA@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Pulsations on a QPSK transmission
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
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

SnVzdCB0byBydWxlIG91dCBpbnRlcmZlcmVyczoKCiogdGhlIHN0cmlwZXMgZ28gYXdheSB3aGVu
IHlvdSB0dXJuIG9mIHRoZSBVU1JQcz8KKiBBbHNvLCB0aGUgc3RyaXBlcyBhcmVuJ3QgdGhlcmUs
IGVpdGhlciwgd2hlbiB5b3UgdXNlIHRoZSBMaW1lIG9uIHRoZQpzYW1lIDEuMDExIEdIeiBmcmVx
dWVuY3ksIGV4YWN0bHk/CgpNeSBzdXNwaWNpb24gaXMgdGhhdCB0aGlzIGlzIG1vc3RseSBVU0Iz
IGVtaXNzaW9ucyAodGhvc2UgY291bGQgYmUsIGJ1dApub3QgbmVjZXNzYXJpbHkgYXJlLCBoYXBw
ZW5pbmcgdGhyb3VnaCB0aGUgVVNSUCBpdHNlbGYsIG9yIHRocm91Z2gKY2FibGVzLCBvciB0aHJv
dWdoIHlvdXIgaG9zdCBjb21wdXRlci4KCklmIHlvdXIgc2FtcGxpbmcgcmF0ZXMgYWxsb3cgaXQg
KHRoZXkgZG8sIEkgdGhpbmsgeW91J3JlIHVzaW5nIDUwMCBrSHoKb25secK5KSwgdHJ5IHRvIHVz
ZSBhIFVTQjItb25seSBjYWJsZSBvciBwb3J0IGFuZCBzZWUgd2hldGhlciB0aGVzZQpkaXNhcHBl
YXIuCgpBbHNvLCBhcmUgeW91IHVzaW5nIGFuIGV4dGVybmFsIHBvd2VyIHN1cHBseSBmb3IgeW91
ciBVU1JQcz8gSWYgdGhpcyBpcwphY3R1YWxseSBhbiBpbnRlcmZlcmVyLCBpdCBtaWdodCBhcyB3
ZWxsIGJlIHNvbWUgcGVyaW9kaWMgYmVoYXZpb3VyIG9mCnRoZSBwb3dlciBzdXBwbHkuIAoKQmVz
dCByZWdhcmRzLApNYXJjdXMKCgrCuVRoYXQncyBhIHNhbXBsaW5nIHJhdGUgdGhhdCBzaG91bGQg
d29yayBvbiBCMjAwIGFuZCBCMjB4bWluaSwgYnV0IGl0J3MKdW5jb21mb3J0YWJseSBsb3cg4oCT
IHRyeSB3aXRoIDEgTUh6IGFuZCBob3N0LXNpZGUgcmVzYW1wbGluZywgbWF5YmU/CgpPbiBXZWQs
IDIwMTktMTItMTggYXQgMjE6MjggKzAzMDAsINCT0LXQvdC90LDQtNC40Lkg0JrQsNC30LDRh9GR
0LogdmlhIFVTUlAtdXNlcnMKd3JvdGU6Cj4gSGVsbG8sIFNhbSEKPiBObywgSSB1c2UgdHdvIGRl
dmljZXMgYXMgdHJhbnNtaXR0ZXIgYW5kIHJlY2VpdmVyIGFuZCB0aGlyZCBib2FyZCBJCj4gdXNl
IGp1c3QgdG8gb2JzZXJ2ZSBzb25vZ3JhbS4KPiBQdWxzYXRpb25zIGV4aXN0IG9uIGJvdGggYjIw
NSBhbmQgYjIxMCBkZXZpY2VzIGlmIEkgdXNlIHRoZW0gYXMgYQo+IHRyYW5zbWl0dGVyIGFuZCBu
b3QgZXhpc3QgaWYgSSB1c2UgYXMgdHJhbnNtaXR0ZXIgYW5vdGhlciB2ZW5kb3Incwo+IGRldmlj
ZSAtIExpbWVTRFIuCj4gCj4gQWxsIDMgVVNSUCBkZXZpY2VzIGFyZSBpbmR1c3RyaWFsIHdpdGgg
bWV0YWwgY2FzZSwgYW5kIExpbWVTRFIgaXMKPiBub3QuCj4gCj4gT24gV2VkLCAxOCBEZWMgMjAx
OSBhdCAyMToyNiwg0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQuiA8Cj4gZ2VuYS5rYXph
Y2hla0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gQWxsIDMgVVNSUCBkZXZpY2VzIGFyZSBpbmR1c3Ry
aWFsIHdpdGggbWV0YWwgY2FzZSwgYW5kIExpbWVTRFIgaXMKPiA+IG5vdC4KPiA+IAo+ID4gT24g
V2VkLCAxOCBEZWMgMjAxOSBhdCAyMToyNSwg0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQ
uiA8Cj4gPiBnZW5hLmthemFjaGVrQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+IEhlbGxvLCBTYW0h
Cj4gPiA+IE5vLCBJIHVzZSB0d28gZGV2aWNlcyBhcyB0cmFuc21pdHRlciBhbmQgcmVjZWl2ZXIg
YW5kIHRoaXJkIGJvYXJkCj4gPiA+IEkgdXNlIGp1c3QgdG8gb2JzZXJ2ZSBzb25vZ3JhbS4KPiA+
ID4gUHVsc2F0aW9ucyBleGlzdCBvbiBib3RoIGIyMDUgYW5kIGIyMTAgZGV2aWNlcyBpZiBJIHVz
ZSB0aGVtIGFzIGEKPiA+ID4gdHJhbnNtaXR0ZXIgYW5kIG5vdCBleGlzdCBpZiBJIHVzZSBhcyB0
cmFuc21pdHRlciBhbm90aGVyCj4gPiA+IHZlbmRvcidzIGRldmljZSAtIExpbWVTRFIuCj4gPiA+
IAo+ID4gPiBPbiBXZWQsIDE4IERlYyAyMDE5IGF0IDE4OjQ5LCBTYW0gUmVpdGVyIDxzYW0ucmVp
dGVyQGV0dHVzLmNvbT4KPiA+ID4gd3JvdGU6Cj4gPiA+ID4gSnVzdCB0byBiZSBjbGVhciwgeW91
IHNlZSB0aGVzZSBwdWxzYXRpb25zIHdoZW4gdHJhbnNtaXR0aW5nCj4gPiA+ID4gd2l0aCBhIGIy
MDVtaW5pLCBidXQgbm90IHdpdGggdGhlIGIyMTA/Cj4gPiA+ID4gCj4gPiA+ID4gSXMgdGhlIGIy
MDVtaW5pIGEgYmFyZSBib2FyZCBvciBhbiBpbmR1c3RyaWFsIG1vZGVsIHdpdGggYSBjYXNlCj4g
PiA+ID4gYW5kIGFsdW1pbnVtIGhlYXQgc3luYz8KPiA+ID4gPiAKPiA+ID4gPiBTYW0gUmVpdGVy
IAo+ID4gPiA+IEV0dHVzIFJlc2VhcmNoCj4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gT24gV2Vk
LCBEZWMgMTEsIDIwMTkgYXQgMTE6NDggUE0g0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQ
uiB2aWEgVVNSUC0KPiA+ID4gPiB1c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdy
b3RlOgo+ID4gPiA+ID4gSGVsbG8hCj4gPiA+ID4gPiBJJ20gdHJ5aW5nIHRvIGJ1aWxkIFFQU0sg
YmFzZWQgc3lzdGVtIG9uIEdOVVJhZGlvLgo+ID4gPiA+ID4gSSdtIHVzaW5nIHR3byBVU1JQIEIy
MDUtbWluaSBib2FyZHMgYXMgdHJhbnNtaXR0ZXIgYW5kCj4gPiA+ID4gPiByZWNlaXZlciwgYWxz
byBJIGdvdCBCMjEwIGJvYXJkIHRoYXQgSSBydW4gZ3FyeCBvbiB0byB3YXRjaAo+ID4gPiA+ID4g
d2hhdCBpcyByZWFsbHkgZ29pbmcgb24uIAo+ID4gPiA+ID4gSSBub3RpY2VkIGEgc3RyYW5nZSBi
ZWhhdmlvdXIgb24gbXkgdGVzdHMsIHNvIEkgYmVnYW4gdG8KPiA+ID4gPiA+IGludmVzdGlnYXRl
IGl0IGFuZCBlbmRlZCB0byBhIHZlcnkgc2ltcGxlIGdyYXBoLCB0aGF0IGlzIGluCj4gPiA+ID4g
PiBhdHRhY2htZW50LiBPbiBhIGZyZXF1ZW5jaWVzIHRoYXQgYXJlIG11bHRpcGxlIG9mIDEwTWh6
LCBsaWtlCj4gPiA+ID4gPiAxMDIwTWh6IGFsbCB3b3JrcyBsaWtlIGV4cGVjdGVkIGFuZCBzb25v
Z3JhbSBsb29rcyBnb29kLiBJZiBJCj4gPiA+ID4gPiB0dW5lIHRvIGFueSBvdGhlciBmcmVxdWVu
Y3ksIGV2ZW4gMUh6IG1vcmUgb3IgbGVzcywgdGhlCj4gPiA+ID4gPiBzb25vZ3JhbSBpcyBmdWxs
IG9mIHB1bHNhdGlvbnMgYW5kIGZyZXF1ZW5jeSBvZiB0aGF0Cj4gPiA+ID4gPiBwdWxzYXRpb24g
aXMgZGVwZW5kcyBvZiBleGFjdCB0dW5lIGZyZXF1ZW5jeS4gSSBhdHRhY2hlZCBzb21lCj4gPiA+
ID4gPiBzY3JlZW5zaG90cyBvZiB0aGF0IHB1bHNhdGlvbnMuCj4gPiA+ID4gPiBPbiByZWNlaXZp
bmcgcGFydCB0aGF0IHB1bHNhdGlvbnMgY2F1c2UgbWFueSBlcnJvcnMgd2hpbGUKPiA+ID4gPiA+
IGRlY29kaW5nLgo+ID4gPiA+ID4gSSBnb3QgYW5vdGhlciBib2FyZCwgTGltZVNEUi1NaW5pLCBh
bmQgbm8gc3VjaCBiZWhhdmlvdXIKPiA+ID4gPiA+IG9ic2VydmVkIHdoaWxlIHJ1bm5pbmcgZ3Jh
cGggb24gaXQuCj4gPiA+ID4gPiBJIHdvbmRlciB3aGF0IGlzIGdvaW5nIG9uLCBhbmQgaG93IGNh
biBJIGZpeCB0aGlzIHByb2JsZW0uCj4gPiA+ID4gPiBUaGFuayB5b3UuCj4gPiA+ID4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiA+ID4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QKPiA+ID4gPiA+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Cj4gPiA+ID4gPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11
c2Vyc19saXN0cy5ldHR1cy5jb20KPiA+ID4gCj4gPiA+IAo+ID4gPiAtLSAKPiA+ID4g0JPQtdC9
0L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQugo+ID4gCj4gPiAKPiA+IC0tIAo+ID4g0JPQtdC90L3Q
sNC00LjQuSDQmtCw0LfQsNGH0ZHQugo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0
aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
