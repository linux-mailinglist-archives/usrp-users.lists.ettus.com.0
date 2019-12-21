Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F505128ABA
	for <lists+usrp-users@lfdr.de>; Sat, 21 Dec 2019 19:15:11 +0100 (CET)
Received: from [::1] (port=60712 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iijHQ-00012s-66; Sat, 21 Dec 2019 13:15:08 -0500
Received: from resqmta-po-06v.sys.comcast.net ([96.114.154.165]:46295)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <w6rz@comcast.net>) id 1iijHL-0000w5-Pi
 for usrp-users@lists.ettus.com; Sat, 21 Dec 2019 13:15:03 -0500
Received: from resomta-po-12v.sys.comcast.net ([96.114.154.236])
 by resqmta-po-06v.sys.comcast.net with ESMTP
 id iiObiHik41p3CijGgidASV; Sat, 21 Dec 2019 18:14:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1576952062;
 bh=iGoGZ2r94FId8dGp76ZEPTp684/3Iy3zzPb5TGqrICI=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=leHikNFxP1MV+nY6l57x50IYNHE31zDAMsQr3Wyi0zqDKEavWW4UYS43hVrvzJP/s
 q/7l8x6J2u4HCzp73E3V31g6ejeBzWIm3yh13xhxv2Lev3ZQexf+2SUbo+1Ih+sI45
 z9Ow5SmEvjsD5dWkc4nRIRRuBV2im9Ovk7kHnhixxILFXGVxr4zcl7HCph11knFcQ2
 H0NBZ57+pUr3AQVnZV6Xhv+hlDCy70KTaH+qD2H2VW6RVkhyxc5/u3XeYOaw07wls8
 PqjHY14hVRROmBJTgcxZaQuFJvzCEFQl1g33nWkExOPfX4a54a8ckBNu5PIkTkl+oV
 53vy2opkjkvnw==
Received: from [IPv6:2601:647:4200:ea30:ed15:4dc7:8de7:a96f]
 ([IPv6:2601:647:4200:ea30:ed15:4dc7:8de7:a96f])
 by resomta-po-12v.sys.comcast.net with ESMTPSA
 id ijGfi9q2gyNGJijGgizh6o; Sat, 21 Dec 2019 18:14:22 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CADfCwn0ty1KmKt2ba_dBEapoJ5-vyb=i0JffE=V2aXTNK_vuhw@mail.gmail.com>
 <CANf970YugamZVx6BW=XD_es4VSnHkLPudPcLCdA864MsEMk8Ew@mail.gmail.com>
 <CADfCwn2mNfRYh0HpOr-cYPGw99oZW2D08Y2fab=10Tvg3SE9dw@mail.gmail.com>
 <CADfCwn09ypZGMRPAvGoGi6nMcM2ZMXeOn44g9CHas78Wdi04gQ@mail.gmail.com>
 <CADfCwn04HwSBiaCef8f4QK_YOhoNGQe+9TFs5cqFLo4D2VPpTA@mail.gmail.com>
 <39281f29c310afd41aa6795a29209402fff99484.camel@ettus.com>
Message-ID: <95808e09-d093-ae35-83b8-abc7ff04620e@comcast.net>
Date: Sat, 21 Dec 2019 10:14:21 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <39281f29c310afd41aa6795a29209402fff99484.camel@ettus.com>
Content-Language: en-US
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

SSBhbHdheXMgdGhvdWdodCB0aGVzZSBwdWxzYXRpb25zIHdlcmUgZHVlIHRvIHNvbWUga2luZCBv
ZiBidWcgd2l0aCAKR3FyeC4gSWYgeW91IGNoYW5nZSB0aGUgRkZUIHNpemUsIHRoZSByYXRlIG9m
IHB1bHNhdGlvbiBjaGFuZ2VzLiBBbHNvLCAKeW91IGRvbid0IHNlZSB0aGlzIG9uIGEgcmVhbCBz
cGVjdHJ1bSBhbmFseXplciwgZXZlbiBhbiBpbmV4cGVuc2l2ZSBvbmUuCgpSb24KCk9uIDEyLzIx
LzE5IDA5OjI1LCBNYXJjdXMgTcO8bGxlciB2aWEgVVNSUC11c2VycyB3cm90ZToKPiBKdXN0IHRv
IHJ1bGUgb3V0IGludGVyZmVyZXJzOgo+Cj4gKiB0aGUgc3RyaXBlcyBnbyBhd2F5IHdoZW4geW91
IHR1cm4gb2YgdGhlIFVTUlBzPwo+ICogQWxzbywgdGhlIHN0cmlwZXMgYXJlbid0IHRoZXJlLCBl
aXRoZXIsIHdoZW4geW91IHVzZSB0aGUgTGltZSBvbiB0aGUKPiBzYW1lIDEuMDExIEdIeiBmcmVx
dWVuY3ksIGV4YWN0bHk/Cj4KPiBNeSBzdXNwaWNpb24gaXMgdGhhdCB0aGlzIGlzIG1vc3RseSBV
U0IzIGVtaXNzaW9ucyAodGhvc2UgY291bGQgYmUsIGJ1dAo+IG5vdCBuZWNlc3NhcmlseSBhcmUs
IGhhcHBlbmluZyB0aHJvdWdoIHRoZSBVU1JQIGl0c2VsZiwgb3IgdGhyb3VnaAo+IGNhYmxlcywg
b3IgdGhyb3VnaCB5b3VyIGhvc3QgY29tcHV0ZXIuCj4KPiBJZiB5b3VyIHNhbXBsaW5nIHJhdGVz
IGFsbG93IGl0ICh0aGV5IGRvLCBJIHRoaW5rIHlvdSdyZSB1c2luZyA1MDAga0h6Cj4gb25secK5
KSwgdHJ5IHRvIHVzZSBhIFVTQjItb25seSBjYWJsZSBvciBwb3J0IGFuZCBzZWUgd2hldGhlciB0
aGVzZQo+IGRpc2FwcGVhci4KPgo+IEFsc28sIGFyZSB5b3UgdXNpbmcgYW4gZXh0ZXJuYWwgcG93
ZXIgc3VwcGx5IGZvciB5b3VyIFVTUlBzPyBJZiB0aGlzIGlzCj4gYWN0dWFsbHkgYW4gaW50ZXJm
ZXJlciwgaXQgbWlnaHQgYXMgd2VsbCBiZSBzb21lIHBlcmlvZGljIGJlaGF2aW91ciBvZgo+IHRo
ZSBwb3dlciBzdXBwbHkuCj4KPiBCZXN0IHJlZ2FyZHMsCj4gTWFyY3VzCj4KPgo+IMK5VGhhdCdz
IGEgc2FtcGxpbmcgcmF0ZSB0aGF0IHNob3VsZCB3b3JrIG9uIEIyMDAgYW5kIEIyMHhtaW5pLCBi
dXQgaXQncwo+IHVuY29tZm9ydGFibHkgbG93IOKAkyB0cnkgd2l0aCAxIE1IeiBhbmQgaG9zdC1z
aWRlIHJlc2FtcGxpbmcsIG1heWJlPwo+Cj4gT24gV2VkLCAyMDE5LTEyLTE4IGF0IDIxOjI4ICsw
MzAwLCDQk9C10L3QvdCw0LTQuNC5INCa0LDQt9Cw0YfRkdC6IHZpYSBVU1JQLXVzZXJzCj4gd3Jv
dGU6Cj4+IEhlbGxvLCBTYW0hCj4+IE5vLCBJIHVzZSB0d28gZGV2aWNlcyBhcyB0cmFuc21pdHRl
ciBhbmQgcmVjZWl2ZXIgYW5kIHRoaXJkIGJvYXJkIEkKPj4gdXNlIGp1c3QgdG8gb2JzZXJ2ZSBz
b25vZ3JhbS4KPj4gUHVsc2F0aW9ucyBleGlzdCBvbiBib3RoIGIyMDUgYW5kIGIyMTAgZGV2aWNl
cyBpZiBJIHVzZSB0aGVtIGFzIGEKPj4gdHJhbnNtaXR0ZXIgYW5kIG5vdCBleGlzdCBpZiBJIHVz
ZSBhcyB0cmFuc21pdHRlciBhbm90aGVyIHZlbmRvcidzCj4+IGRldmljZSAtIExpbWVTRFIuCj4+
Cj4+IEFsbCAzIFVTUlAgZGV2aWNlcyBhcmUgaW5kdXN0cmlhbCB3aXRoIG1ldGFsIGNhc2UsIGFu
ZCBMaW1lU0RSIGlzCj4+IG5vdC4KPj4KPj4gT24gV2VkLCAxOCBEZWMgMjAxOSBhdCAyMToyNiwg
0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQuiA8Cj4+IGdlbmEua2F6YWNoZWtAZ21haWwu
Y29tPiB3cm90ZToKPj4+IEFsbCAzIFVTUlAgZGV2aWNlcyBhcmUgaW5kdXN0cmlhbCB3aXRoIG1l
dGFsIGNhc2UsIGFuZCBMaW1lU0RSIGlzCj4+PiBub3QuCj4+Pgo+Pj4gT24gV2VkLCAxOCBEZWMg
MjAxOSBhdCAyMToyNSwg0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQuiA8Cj4+PiBnZW5h
LmthemFjaGVrQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pj4gSGVsbG8sIFNhbSEKPj4+PiBObywgSSB1
c2UgdHdvIGRldmljZXMgYXMgdHJhbnNtaXR0ZXIgYW5kIHJlY2VpdmVyIGFuZCB0aGlyZCBib2Fy
ZAo+Pj4+IEkgdXNlIGp1c3QgdG8gb2JzZXJ2ZSBzb25vZ3JhbS4KPj4+PiBQdWxzYXRpb25zIGV4
aXN0IG9uIGJvdGggYjIwNSBhbmQgYjIxMCBkZXZpY2VzIGlmIEkgdXNlIHRoZW0gYXMgYQo+Pj4+
IHRyYW5zbWl0dGVyIGFuZCBub3QgZXhpc3QgaWYgSSB1c2UgYXMgdHJhbnNtaXR0ZXIgYW5vdGhl
cgo+Pj4+IHZlbmRvcidzIGRldmljZSAtIExpbWVTRFIuCj4+Pj4KPj4+PiBPbiBXZWQsIDE4IERl
YyAyMDE5IGF0IDE4OjQ5LCBTYW0gUmVpdGVyIDxzYW0ucmVpdGVyQGV0dHVzLmNvbT4KPj4+PiB3
cm90ZToKPj4+Pj4gSnVzdCB0byBiZSBjbGVhciwgeW91IHNlZSB0aGVzZSBwdWxzYXRpb25zIHdo
ZW4gdHJhbnNtaXR0aW5nCj4+Pj4+IHdpdGggYSBiMjA1bWluaSwgYnV0IG5vdCB3aXRoIHRoZSBi
MjEwPwo+Pj4+Pgo+Pj4+PiBJcyB0aGUgYjIwNW1pbmkgYSBiYXJlIGJvYXJkIG9yIGFuIGluZHVz
dHJpYWwgbW9kZWwgd2l0aCBhIGNhc2UKPj4+Pj4gYW5kIGFsdW1pbnVtIGhlYXQgc3luYz8KPj4+
Pj4KPj4+Pj4gU2FtIFJlaXRlcgo+Pj4+PiBFdHR1cyBSZXNlYXJjaAo+Pj4+Pgo+Pj4+Pgo+Pj4+
PiBPbiBXZWQsIERlYyAxMSwgMjAxOSBhdCAxMTo0OCBQTSDQk9C10L3QvdCw0LTQuNC5INCa0LDQ
t9Cw0YfRkdC6IHZpYSBVU1JQLQo+Pj4+PiB1c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20+IHdyb3RlOgo+Pj4+Pj4gSGVsbG8hCj4+Pj4+PiBJJ20gdHJ5aW5nIHRvIGJ1aWxkIFFQU0sg
YmFzZWQgc3lzdGVtIG9uIEdOVVJhZGlvLgo+Pj4+Pj4gSSdtIHVzaW5nIHR3byBVU1JQIEIyMDUt
bWluaSBib2FyZHMgYXMgdHJhbnNtaXR0ZXIgYW5kCj4+Pj4+PiByZWNlaXZlciwgYWxzbyBJIGdv
dCBCMjEwIGJvYXJkIHRoYXQgSSBydW4gZ3FyeCBvbiB0byB3YXRjaAo+Pj4+Pj4gd2hhdCBpcyBy
ZWFsbHkgZ29pbmcgb24uCj4+Pj4+PiBJIG5vdGljZWQgYSBzdHJhbmdlIGJlaGF2aW91ciBvbiBt
eSB0ZXN0cywgc28gSSBiZWdhbiB0bwo+Pj4+Pj4gaW52ZXN0aWdhdGUgaXQgYW5kIGVuZGVkIHRv
IGEgdmVyeSBzaW1wbGUgZ3JhcGgsIHRoYXQgaXMgaW4KPj4+Pj4+IGF0dGFjaG1lbnQuIE9uIGEg
ZnJlcXVlbmNpZXMgdGhhdCBhcmUgbXVsdGlwbGUgb2YgMTBNaHosIGxpa2UKPj4+Pj4+IDEwMjBN
aHogYWxsIHdvcmtzIGxpa2UgZXhwZWN0ZWQgYW5kIHNvbm9ncmFtIGxvb2tzIGdvb2QuIElmIEkK
Pj4+Pj4+IHR1bmUgdG8gYW55IG90aGVyIGZyZXF1ZW5jeSwgZXZlbiAxSHogbW9yZSBvciBsZXNz
LCB0aGUKPj4+Pj4+IHNvbm9ncmFtIGlzIGZ1bGwgb2YgcHVsc2F0aW9ucyBhbmQgZnJlcXVlbmN5
IG9mIHRoYXQKPj4+Pj4+IHB1bHNhdGlvbiBpcyBkZXBlbmRzIG9mIGV4YWN0IHR1bmUgZnJlcXVl
bmN5LiBJIGF0dGFjaGVkIHNvbWUKPj4+Pj4+IHNjcmVlbnNob3RzIG9mIHRoYXQgcHVsc2F0aW9u
cy4KPj4+Pj4+IE9uIHJlY2VpdmluZyBwYXJ0IHRoYXQgcHVsc2F0aW9ucyBjYXVzZSBtYW55IGVy
cm9ycyB3aGlsZQo+Pj4+Pj4gZGVjb2RpbmcuCj4+Pj4+PiBJIGdvdCBhbm90aGVyIGJvYXJkLCBM
aW1lU0RSLU1pbmksIGFuZCBubyBzdWNoIGJlaGF2aW91cgo+Pj4+Pj4gb2JzZXJ2ZWQgd2hpbGUg
cnVubmluZyBncmFwaCBvbiBpdC4KPj4+Pj4+IEkgd29uZGVyIHdoYXQgaXMgZ29pbmcgb24sIGFu
ZCBob3cgY2FuIEkgZml4IHRoaXMgcHJvYmxlbS4KPj4+Pj4+IFRoYW5rIHlvdS4KPj4+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdAo+Pj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+
Pj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xp
c3RzLmV0dHVzLmNvbQo+Pj4+Cj4+Pj4gLS0gCj4+Pj4g0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQ
sNGH0ZHQugo+Pj4KPj4+IC0tIAo+Pj4g0JPQtdC90L3QsNC00LjQuSDQmtCw0LfQsNGH0ZHQugo+
Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiBo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xp
c3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tCg==
