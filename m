Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C13CF2146CD
	for <lists+usrp-users@lfdr.de>; Sat,  4 Jul 2020 17:11:22 +0200 (CEST)
Received: from [::1] (port=55778 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jrjoy-0004c6-5D; Sat, 04 Jul 2020 11:11:16 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:40090)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <david.bengtson@gmail.com>)
 id 1jrjou-0004YK-8q
 for usrp-users@lists.ettus.com; Sat, 04 Jul 2020 11:11:12 -0400
Received: by mail-oi1-f178.google.com with SMTP id t198so16230846oie.7
 for <usrp-users@lists.ettus.com>; Sat, 04 Jul 2020 08:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=A7sZ5hdon0s3bz4yXmfYFEgUWicnNTL9XKwI/uLFqKo=;
 b=lHVf0QC26y0xMaz8xpF+OFrrStcjbWAUpgxD/HzalV7mu88WGc4YbjNojKs7Qua1X2
 bs0BcAGiIFmEXsyFEUPFHfkCTaqed4qC8GYhip7MNFDeWjPTLLd6nBaOvvY+4T+nw8mk
 FmAqs5l1lE7nK9yys4Tn5Z0jn+iJgfU5nZIS8Bav2yiYO0u9ZiKrglG1UPWOMYvnDQoa
 2f3ORFI5z6RRfWysWbtbLTD1mnKRYgOvsnlWdqe98UVG7NNa+f4JYHmxmiZHq+r1LGFm
 fJ+35kDTS0J5BTmj9ZyUAJ3HSiNHXFnqg8/ZkZu8kFRj+TwWl0JV2G/10VZTZ/CZIFHr
 78hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=A7sZ5hdon0s3bz4yXmfYFEgUWicnNTL9XKwI/uLFqKo=;
 b=isdE176pJkME6y2BUrnlSkvcH+bcOMlyWmMIa9kDZOjDZTNUhXb5cHGZbn2Hb9NZuR
 cZjQL0nvQM7/bx+8cVQMZ4cPDmxz14tEi+cR24pxomNQYQT03HqMXGDpjbOQVSqMJ0wm
 neSPt+G0FPEWZ9Hb3KquX32eV1lI+IdY3+N2uC8D5F7uaOloKAhMNoWgS7yxy9MeBEd4
 hUmnKslf7WqFuotqJ+cKW1wuoq5xDcEImYQ6RI0Bj1ZHpS00MgajbP2EvTPI1Yr0mtfz
 i6zmcuSxh3gPmODAmIiiQ0RxEYvy+ldlbsFZPnsox7xtzghaj4ShgOsUfSeQ3lZ9O4HP
 EQAw==
X-Gm-Message-State: AOAM532QbttbK1HB/eI4MRT4DlTgBIxD54gKWVUnPhHShEPpky2VsP0o
 PLNjF3ckwiHUCUDAh0mzpu5Ojwd20PkM/zf3Gug=
X-Google-Smtp-Source: ABdhPJxcmeryk0tClMR4dqUM3PV+qSidH+dPHf/fmVlppNo6vBWZ37ivFPRQ0nqHcNY0AO2YRbhMd5nrMQKGQp5FRg0=
X-Received: by 2002:aca:5703:: with SMTP id l3mr12871311oib.43.1593875431454; 
 Sat, 04 Jul 2020 08:10:31 -0700 (PDT)
MIME-Version: 1.0
References: <SN6PR09MB3726D7D87F81583127681C3FEC980@SN6PR09MB3726.namprd09.prod.outlook.com>
 <CAE0dfYZz1vrKBZ26jyaaV3LkC+gk1mTZ2uJHdmP3-HZQ6TuV+Q@mail.gmail.com>
 <CAE0dfYadQpuFXYhkOaWbsq8+UdS8U+btPTqnP04m1e6kCrSdOw@mail.gmail.com>
In-Reply-To: <CAE0dfYadQpuFXYhkOaWbsq8+UdS8U+btPTqnP04m1e6kCrSdOw@mail.gmail.com>
Date: Sat, 4 Jul 2020 11:10:14 -0400
Message-ID: <CAN=AL9O3dsbPS=pkyH_Y63OjPaTWeyc-KROCLTo=KBYNDewQxA@mail.gmail.com>
To: Alex Humberstone <alex.m.humberstone@gmail.com>
Subject: Re: [USRP-users] 2021 IEEE Aerospace Conference
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
From: David Bengtson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Bengtson <david.bengtson@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>
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

MjAyMCBQcm9ncmFtIGh0dHBzOi8vaWVlZS1hZXNzLm9yZy9jb25mZXJlbmNlLzIwMjAtaWVlZS1h
ZXJvc3BhY2UtY29uZmVyZW5jZS1hZXJvY29uZgoyMDE5IHByb2dyYW0gaHR0cHM6Ly9pZWVlLWFl
c3Mub3JnL2NvbmZlcmVuY2UvMjAxOS1pZWVlLWFlcm9zcGFjZS1jb25mZXJlbmNlCjIwMTggcHJv
Z3JhbSBodHRwczovL2llZWUtYWVzcy5vcmcvY29uZmVyZW5jZS8yMDE4LWllZWUtYWVyb3NwYWNl
LWNvbmZlcmVuY2UKClBlcmhhcHMgdGhpcyBpcyBzdWZmaWNpZW50PwoKT24gVGh1LCBKdW4gMjUs
IDIwMjAgYXQgNjozNSBQTSBBbGV4IEh1bWJlcnN0b25lCjxhbGV4Lm0uaHVtYmVyc3RvbmVAZ21h
aWwuY29tPiB3cm90ZToKPgo+IEFueSB1cGRhdGU/Cj4KPiBXb3VsZCBsaWtlIHRvIHNlZSB0aGUg
cHJvZ3JhbSBmb3IgcGFzdCBjb25mZXJlbmNlcy4uLgo+Cj4KPgo+IE9uIEZyaSwgMTkgSnVuIDIw
MjAgYXQgMjI6NDQsIEFsZXggSHVtYmVyc3RvbmUgPGFsZXgubS5odW1iZXJzdG9uZUBnbWFpbC5j
b20+IHdyb3RlOgo+Pgo+PiBFdWdlbmUsIHRoZSBjb25mZXJlbmNlIGxvb2tzIGludGVyZXN0aW5n
LiBXaGVyZSBjYW4gd2UgZmluZCB0aGUgcHJvZ3JhbSBmb3IgcGFzdCB5ZWFycyB0byBnZXQgYSBm
ZWVsIGZvciB0aGUgY29uZmVyZW5jZT8gSSBkaWRuJ3Qgc2VlIHRoaXMgb24gdGhlIHdlYnNpdGUu
IFRoYW5rcy4KPj4KPj4KPj4gT24gRnJpLCAxOSBKdW4gMjAyMCBhdCAxNzowMiwgRXVnZW5lIEdy
YXl2ZXIgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToK
Pj4+Cj4+PiBIZWxsbywKPj4+Cj4+Pgo+Pj4KPj4+IEkgYW0gY2hhaXJpbmcgdGhlIFNvZnR3YXJl
IERlZmluZWQgYW5kIENvZ25pdGl2ZSBSYWRpbyBzZXNzaW9uIGF0IHRoZSB1cGNvbWluZyBJRUVF
IEFlcm9zcGFjZSBDb25mZXJlbmNlIChodHRwOi8vd3d3LmFlcm9jb25mLm9yZykuICBUaGlzIGxh
cmdlIGNvbmZlcmVuY2Ugd2lsbCB0YWtlIHBsYWNlIE1hcmNoIDYtMTMsIDIwMjEgaW4gQmlnIFNr
eSwgTW9udGFuYS4gIFRoZSBjb25mZXJlbmNlIHByb3ZpZGVzIGEgd29ybGQtY2xhc3MgdGVjaG5p
Y2FsIHByb2dyYW0gYW5kIHByb3ZpZGVzIGV4Y2VsbGVudCBvcHBvcnR1bml0aWVzIGZvciBib3Ro
IG5ldHdvcmtpbmcgYW5kIHJlY3JlYXRpb24uIFRoaXMgaXMgb25lIG9mIHRoZSBmZXcgY29uZmVy
ZW5jZXMgd2hlcmUgU0RSIGNhbiBiZSBwdXQgaW4gdGhlIGNvbnRleHQgb2YgYSBjb21wbGV0ZSBz
eXN0ZW0gYW5kIGNhbiBiZSBhcHBsaWVkIHRvIG5ldyBtaXNzaW9ucyBhbmQgY29uY2VwdHMgb2Yg
b3BlcmF0aW9ucy4KPj4+Cj4+Pgo+Pj4KPj4+IExhc3QgeWVhciB0aGVyZSB3ZXJlIGEgZmV3IHBh
cGVycyBkZWFsaW5nIHdpdGggYXBwbGljYXRpb24gb2YgbWFjaGluZS9kZWVwIGxlYXJuaW5nIHRv
IHJhZGlvIGRlc2lnbi4gIEkgaG9wZSB0byBzZWUgZXZlbiBtb3JlIG5leHQgeWVhciEKPj4+Cj4+
PiBBYnN0cmFjdHMgYXJlIGR1ZSBzb29uLCBidXQgSSBjYW4gdGFrZSB0aGVtIGEgYml0IGxhdGVy
IGFzIHdlbGwsIHdoaWxlIHRoZSBmdWxsIHBhcGVyIGlzIGR1ZSBlbmQgb2YgT2N0b2Jlci4gIFRo
aXMgc2Vzc2lvbiB3aWxsIGZvY3VzIG9uIGZsZXhpYmxlIHJhZGlvIGFyY2hpdGVjdHVyZXMsIGlu
Y2x1ZGluZyB0aGUgdXNlIG9mIEdQUHMsIEdQVXMsICBhbmQgRlBHQXMuICBSZXBvcnRzIG9mIGV4
aXN0aW5nIHN5c3RlbXMgYW5kIHRlc3RiZWRzIGFyZSBvZiBzaWduaWZpY2FudCBpbnRlcmVzdC4g
IFRoaXMgeWVhciBJ4oCZZCBsaWtlIHRvIGludHJvZHVjZSB3b3JrIHJlbGF0ZWQgdG8gbWFjaGlu
ZSBsZWFybmluZyBhcyBhcHBsaWVkIHRvIHdpcmVsZXNzIGNvbW11bmljYXRpb25zLgo+Pj4KPj4+
Cj4+Pgo+Pj4gUGxlYXNlIGZvcndhcmQgdGhpcyB0byB5b3VyIGNvbGxlYWd1ZXMgd29ya2luZyBp
biB0aGUgYXJlYXMgb2YgU0RSIGFuZCBjb2duaXRpdmUgcmFkaW8uCj4+Pgo+Pj4KPj4+IFJlZ2Fy
ZHMsCj4+Pgo+Pj4gRXVnZW5lLgo+Pj4KPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+
PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+Cj4+Cj4+Cj4+IC0t
Cj4+IFNpbmNlcmVseSwKPj4gQWxleC1NLUh1bWJlcnN0b25lCj4+IFBoRCBTdHVkZW50Cj4+IEts
aXBzY2ggU2Nob29sIG9mIEVsZWN0cmljYWwgRW5naW5lZXJpbmcKPj4gTmV3IE1leGljbyBTdGF0
ZSBVbml2ZXJzaXR5Cj4+IExhcyBDcnVjZXMsIE5ldyBNZXhpY28KPj4KPgo+Cj4gLS0KPiBTaW5j
ZXJlbHksCj4gQWxleC1NLUh1bWJlcnN0b25lCj4gUGhEIFN0dWRlbnQKPiBLbGlwc2NoIFNjaG9v
bCBvZiBFbGVjdHJpY2FsIEVuZ2luZWVyaW5nCj4gTmV3IE1leGljbyBTdGF0ZSBVbml2ZXJzaXR5
Cj4gTGFzIENydWNlcywgTmV3IE1leGljbwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20K
