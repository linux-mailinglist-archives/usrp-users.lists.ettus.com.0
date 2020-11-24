Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 404C92C3127
	for <lists+usrp-users@lfdr.de>; Tue, 24 Nov 2020 20:46:21 +0100 (CET)
Received: from [::1] (port=34982 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kheGX-0000VB-JN; Tue, 24 Nov 2020 14:46:17 -0500
Received: from mail-lj1-f180.google.com ([209.85.208.180]:35569)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <luke.whittlesey@gmail.com>)
 id 1kheGS-0000Fi-L6
 for usrp-users@lists.ettus.com; Tue, 24 Nov 2020 14:46:12 -0500
Received: by mail-lj1-f180.google.com with SMTP id r18so8651229ljc.2
 for <usrp-users@lists.ettus.com>; Tue, 24 Nov 2020 11:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Y7IZkUNQSAj9aRTevdJKtgkMfUyMcknehHDqiKxZ7u8=;
 b=IQsN7Htf8P+BZ0KtaPmiJQxREELklyiIBrqi6QZUR398MEygR+EUX6fjOvFbdICJXk
 BSkhsk20cL1Jgzt/3QdOz+/VwW0rYm0nAinDlRrDyS/HQZtV97K0PQeepgXbS9ZMDGFG
 vAX161LGI9mWChaIsqVL2FWahZCJao8VF8aCX2YAPBpqiTdYXSJ6wZA3r1qGJUTMIe3M
 r9M7dxGIwDTZMyyzEW3I9APOsoQOu/nsrLaif5EViyt6YYg3m26iGHeB4LXmk5Fi1MWW
 fO9G/A6sFObvUvx/aWU3GOttJdQAi2ATpYVcuz07gKaqKKTa0D/wC0nF3p9rX2ophaFz
 YGiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Y7IZkUNQSAj9aRTevdJKtgkMfUyMcknehHDqiKxZ7u8=;
 b=MGUax43JjyJcIS9Nh1sVohs9+PrWaN7V8aDr86FXGpcq3fnXY27MPg86CvTtJJyQ7I
 ofc9NyUdaXuakGUZjQ4n6DrJGh2q8Q+mZhnVYdc7ru1piv0Pbirkrsbxib31X+ocgCX6
 TZ1wYAxDQlwWMpwG/qa7psZWx5x2+bQoKxuuwSF9qMNZcQhpllRaXNpyCnXgb0ebKXN2
 553atyKl8N4EjHXTQDtY2d5scR41vaKRWrQl9JrCxDvDUIaRnVTAmn7fH/Q+VNAIL69m
 k3AG0rIzR/sRJ4Vs63eFMlQF0Q3hIFwelU8OL8ZtMbfnW60oIrRAx/pHyV8j7ox+toQl
 oUKg==
X-Gm-Message-State: AOAM533gsmyHOfxmxho2nO6QZ0uMWTcH4cRRLVA0SgoC0pPRzBiiXHmH
 X+mhATYG+KMXj6E9nlorHV3xXZCVrnE+khiWm7o=
X-Google-Smtp-Source: ABdhPJwb9yAsylkHXWj1WNxXmYxhiho34FS5ERgQvAyY+jqcQ3uA9+/f5OCTxDK5/3habutiPr6S3aQ4ANj5aPXJ9gI=
X-Received: by 2002:a2e:804b:: with SMTP id p11mr2352763ljg.54.1606247131288; 
 Tue, 24 Nov 2020 11:45:31 -0800 (PST)
MIME-Version: 1.0
References: <CA+ce6i3ka5am6USYVrzeh17K-vgXBJL5iB-rYz+382JobXi0dg@mail.gmail.com>
 <10B10E99-CD7E-49AF-9FC6-F1D6620BD96F@gmail.com>
In-Reply-To: <10B10E99-CD7E-49AF-9FC6-F1D6620BD96F@gmail.com>
Date: Tue, 24 Nov 2020 14:38:30 -0500
Message-ID: <CA+ce6i2Qc0Y9g=U+g_6mHmmwOwXi77wbs76uKWnCHu=rcxb+bQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Carrier frequency jumps on E310
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
From: Luke Whittlesey via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Luke Whittlesey <luke.whittlesey@gmail.com>
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

SSdtIGluIHRoZSBwcm9jZXNzLCBidXQgaXQncyBhIGxlbmd0aHkgcHJvY2Vzcy4gVGhlcmUgaXMg
c29tZXRoaW5nCm1lc3NlZCB1cCB3aXRoIHRoZSBDIEFQSSBpbiAzLjE1LCBzbyBpdCBkb2Vzbid0
IHdvcmsgZm9yIG1lIGFzIGEKc2ltcGxlIGRyb3AgaW4gcmVwbGFjZW1lbnQuIFdvdWxkIGl0IGJl
IHdpc2UgdG8gdHJ5IHRvIGp1bXAgc3RyYWlnaHQKdG8gNC4wPwoKT24gVHVlLCBOb3YgMjQsIDIw
MjAgYXQgMjo0MCBQTSBNYXJjdXMgRCBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+IHdy
b3RlOgo+Cj4gUiZEIHN1Z2dlc3QgdXBkYXRpbmcgdG8gYSBVSEQgMy4xNSBlbnZpcm9ubWVudCBm
aXJzdC4KPgo+IFNlbnQgZnJvbSBteSBpUGhvbmUKPgo+ID4gT24gTm92IDI0LCAyMDIwLCBhdCAx
OjU0IFBNLCBMdWtlIFdoaXR0bGVzZXkgPGx1a2Uud2hpdHRsZXNleUBnbWFpbC5jb20+IHdyb3Rl
Ogo+ID4KPiA+IO+7v0knbSBzZWVpbmcgdGhpcyBvbiB0d28gRTMxMHMgdGhhdCBhcmUgYSBmZXcg
eWVhcnMgb2xkLiBJIGp1c3Qgc3dhcHBlZAo+ID4gdGhlIHNkIGNhcmQgaW50byBhIGJyYW5kLW5l
dyBFMzEwIGFuZCBJIGFtIE5PVCBzZWVpbmcgdGhlIGZyZXF1ZW5jeQo+ID4ganVtcHMuIFNvLCBz
YW1lIGV4YWN0IHNvZnR3YXJlLCBidXQgZGlmZmVyZW50IGFnZWQgRTMxMHMuIElzIHRoZXJlCj4g
PiBwb3NzaWJseSBhIGRpZmZlcmVuY2UgaW4gaGFyZHdhcmUgbGVhZGluZyB0byB0aGlzPwo+ID4K
PiA+PiBPbiBUdWUsIE5vdiAyNCwgMjAyMCBhdCAxOjA0IFBNIEx1a2UgV2hpdHRsZXNleQo+ID4+
IDxsdWtlLndoaXR0bGVzZXlAZ21haWwuY29tPiB3cm90ZToKPiA+Pgo+ID4+IEkgd291bGQgc2F5
IHRoZXkgYXJlIHByb3BvcnRpb25hbCB0byBmcmVxdWVuY3kuIEF0dGFjaGVkIGlzIHdoYXQgaXQK
PiA+PiBsb29rcyBsaWtlIGF0IDVHSHouIFRoZXJlIGFyZSBqdW1wcyBvZiA0MDBIeiBhbmQgMjIw
SHouCj4gPj4KPiA+Pj4gT24gVHVlLCBOb3YgMjQsIDIwMjAgYXQgMTE6NTAgQU0gTWFyY3VzIEQg
TGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiB3cm90ZToKPiA+Pj4KPiA+Pj4gVHJ5IGF0
IGxvd2VyIGFuZCBoaWdoZXIgZnJlcXVlbmNpZXPigJRhcmUgdGhlIGp1bXBzIHRoZSBzYW1lIG9y
IHByb3BvcnRpb25hbCB0byBmcmVxdWVuY3k/Cj4gPj4+Cj4gPj4+IFNlbnQgZnJvbSBteSBpUGhv
bmUKPiA+Pj4KPiA+Pj4+IE9uIE5vdiAyNCwgMjAyMCwgYXQgMTE6MjcgQU0sIEx1a2UgV2hpdHRs
ZXNleSB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+
ID4+Pj4KPiA+Pj4+IO+7v09uIHRoZSBFMzEwIEknbSBzZWVpbmcgZGlzY3JldGUganVtcHMgaW4g
dGhlIGNhcnJpZXIuIFRoZSBjYXJyaWVyIHdpbGwKPiA+Pj4+IGludGVybWl0dGVudGx5IGp1bXAg
YXJvdW5kIGluIHN0ZXBzIG9mIGFib3V0IDUwSHouIFNvbWV0aW1lcyBpdCB3aWxsCj4gPj4+PiBq
dW1wIGJ5IGFib3V0IDIwMEh6LiBJJ3ZlIGF0dGFjaGVkIGEgd2F0ZXJmYWxsIGRpc3BsYXksIGJ1
dCBJIGRvbid0Cj4gPj4+PiBrbm93IGlmIGF0dGFjaG1lbnRzIHdpbGwgbWFrZSBpdCB0aHJvdWdo
Lgo+ID4+Pj4KPiA+Pj4+IE15IHNldHVwIGlzOgo+ID4+Pj4gRTMxMCBTRzMKPiA+Pj4+IFVIRDMu
MTEgdXNpbmcgdGhlIEMtYXBpCj4gPj4+PiBUaW1pbmcgUmVmZXJlbmNlIGlzICJpbnRlcm5hbCIK
PiA+Pj4+IENlbnRlciBGcmVxdWVuY3kgMUdIego+ID4+Pj4gSS9RIHNpZ25hbCBpcyBhIHN0cmVh
bSBvZiAxLDAuLi4gZm9yIGEgQ1cgYXQgdGhlIGNhcnJpZXIKPiA+Pj4+Cj4gPj4+PiBJIGNhbiBz
ZWUgdGhlIHNhbWUgdGhpbmcgd2hlbiBJIHNldCB0aGUgdGltZXNvdXJjZSB0byAiZ3BzZG8iLCBi
dXQgSQo+ID4+Pj4gd291bGRuJ3QgZXhwZWN0IGl0IHdoZW4gSSBzZXQgaXQgdG8gImludGVybmFs
Ii4gTXkgZ3V0IHNheXMgdGhhdCB0aGlzCj4gPj4+PiBpcyBiZWluZyBjYXVzZWQgYnkgc29tZSB0
aW1lc291cmNlIGNvcnJlY3Rpb24gbG9vcC4gSWYgdGhpcyBpcyB0aGUKPiA+Pj4+IGNhc2UgaXMg
dGhlcmUgYSB3YXkgdG8gZGlzYWJsZSB0aGlzPwo+ID4+Pj4KPiA+Pj4+IFRoYW5rIHlvdQo+ID4+
Pj4gPGUzMTAtbG8tZnJlcXVlbmN5LXNoaWZ0czIucG5nPgo+ID4+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0Cj4gPj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+ID4+Pj4gaHR0cDovL2xp
c3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29t
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
