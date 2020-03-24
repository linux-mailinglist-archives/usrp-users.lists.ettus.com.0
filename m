Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3841903C7
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2020 04:08:55 +0100 (CET)
Received: from [::1] (port=51682 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGZvv-0004Wc-Cn; Mon, 23 Mar 2020 23:08:51 -0400
Received: from mout.gmx.net ([212.227.17.21]:40901)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jGZvr-0004Sz-7O
 for usrp-users@lists.ettus.com; Mon, 23 Mar 2020 23:08:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585019286;
 bh=WAffopIyg/BFCkdajrrN4hpdDPDTNo3/HR5Ibp9x+yU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ShAi770lBIWnpr7Haoyc5p29YgiyXvrB3+rFlOnJ6sPDUUyAAY4QkrsqDbfVWG2cc
 jXfXfUErBPpMyIgec2rETu9iitwgzzrdPrE5virY6hb6HaqWrw+5JUt3i0ytRhoaon
 CK/zT1U8ylfpRUZ4/uMgGeFh7UvHwMW2gm4yAzhU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [67.216.63.255] ([67.216.63.255]) by web-mail.gmx.net
 (3c-app-gmx-bap77.server.lan [172.19.172.135]) (via HTTP); Tue, 24 Mar 2020
 04:08:06 +0100
MIME-Version: 1.0
Message-ID: <trinity-d7f908f5-bedb-43b2-b687-8e8632475dc0-1585019285999@3c-app-gmx-bap77>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Tue, 24 Mar 2020 04:08:06 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5E6BC2E8.20108@gmail.com>
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <38CFC8D2-9645-4412-9873-9612B897C5EB@gmail.com>
 <trinity-c8914290-4845-4675-98c6-2e02b41f536e-1584075584965@3c-app-gmx-bap08>
 <CAB__hTRm4hNPnfX4usHGA-hdc5WZ_=AnHVjJnZj7rGYM8xb0Tw@mail.gmail.com>
 <CAB__hTQOdK3Y3rEbVOGtkS9L-SE2aQ3JkyfueQZAmS_h4ULETg@mail.gmail.com>
 <trinity-f6784e7e-a386-4c2d-9853-5909919d6c1c-1584111163445@3c-app-gmx-bs31>
 <5E6BC2E8.20108@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:y3dA2HyLT3DZk3BMGqpIonv3JHW9O/LFO/oODnZCWAPV3PGw/wjyd6zE/oQ8rhyep7lUJ
 lLrg6qGmWsaIm3yao4XVDlRMnDmFzOeyVItMGeQD/CCu1zw4WZo0YK7GqSbb8BgMwqtw0OoRMlzw
 l2gjrFDuHOGClgethcwExOmXw1chg9uJxB2lkCk4BuJeRGK5eD2gmHyaEWJ/eGZGvNkU3uoBMZMm
 ROiOlAgFC5LG3irwSvlypKpkLwiB16k+jlOILQv0Bxr1bTS89Z2RasCDnu62O2TxOmteCshuoUvF
 BU=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HZi0XFAM+Wo=:QsZMKVGYJfFIbSPNs/i0MK
 wJApQ5TAxGlyi+R08D6fbIo4UuntbP/BnjaMDs2BmGDuc1+AH+7a+TGW93DQH/4UJEbd+CtH1
 f3aWyELedWceLQm+YBJ59yengazVMY5Pox8tEDmza/qnco7+ipzoFjvDQi1MzxU7R3mdKH6OP
 2tSSKZ4ED4OEixAR9TocHdfkw+Pa5wQR4RRL6+yqyUoiEY6lQ6kol0EPhuLb/rZfQAgM2AFJT
 2MjKXyodbyg41bcvhuE95VzCBWD3A6uhIUOpE+47lDTX2KjJzF6QbeM1rTYTksYEJmxmAyXZm
 D66jnfxCfPNaCMVNtaKqr2VB/drMBV2pmxqviQLDguopBnsELBaZ72mTbbt+XlCCSw/51GOdH
 wVTL/+2tRXldXIEv7aDo+8E9Ut60UEkb/D4Fg7VmkCIxSgtV2MWQGN+avQQsiV1IdHhYdXzcO
 pcdFPR9ap8MdCvO/msEEPw8IpXXH6I+xtf5l1DGctcmVO6E529sN2+pukfGYLdnQRgf0lqlDf
 PrByjVNj/eTppnUlr51qZRbAE7LQgC4QzY9HKoWOeauHeUnLSGELjJfqExWEBMixpox0KzFBd
 mUA4iaSuDQgz32HvwjoOJbPm7sahQWqMYZ6iIBeGrvNDvw71UbqgP0CgL1/UiM4+crML/x9Vt
 6bmqmgbb6DVnyyQ/zd6+fWS4YViXz7UjzvsIJRPnWeSrWsFG7j9KtUClI9i76zhZVsR8=
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Rob Kossler <rkossler@nd.edu>
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

SGkgTWFyY3VzLAoKPiBHZXNlbmRldDogRnJlaXRhZywgMTMuIE3DpHJ6IDIwMjAgdW0gMTM6Mjkg
VWhyCj4gVm9uOiAiTWFyY3VzIEQuIExlZWNoIiA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+Cj4g
QW46ICJMdWthcyBIYWFzZSIgPGx1a2FzaGFhc2VAZ214LmF0PiwgIlJvYiBLb3NzbGVyIiA8cmtv
c3NsZXJAbmQuZWR1Pgo+IENjOiAiVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIDx1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4KPiBCZXRyZWZmOiBSZTogW1VTUlAtdXNlcnNdIFVTUlAgWDMx
MCBpZ25vcmVkIERTUCByZXR1bmluZyBvbiBUWCB3aGVuIHVzaW5nIGEgdGltZWQgY29tbWFuZAo+
Cj4gT24gMDMvMTMvMjAyMCAxMDo1MiBBTSwgTHVrYXMgSGFhc2Ugd3JvdGU6Cj4gPiBIaSBhZ2Fp
biBSb2IsCj4gPgo+ID4gWWVzLCBJIGNvbmZpcm06Cj4gPgo+ID4gMS4pIEZpbmFsbHkgSSBnZXQg
dGhlIGNvbW1hbmRzIHRvIGV4ZWN1dGUgYXQgdGhlIHNhbWUgdGltZSAoVFggYW5kIFJYIGluZGl2
aWR1YWxseSBhbmQgYm90aCBhdCB0aGUgc2FtZSB0aW1lKQo+ID4gMi4pIFllcywgdGhlIHBoYXNl
IGlzIHJhbmRvbSBhZnRlciBlYWNoIHJldHVuZSwgZXZlbiB3aGVuIEkgcmV0dW5lIGJhY2sgdG8g
dGhlIHNhbWUgZnJlcXVlbmN5Cj4gPiAzLikgKDIpIGlzIG9ubHkgdHJ1ZSBpZiBpdCBpbmNsdWRl
cyAqRFNQKiByZXR1bmluZy4gV2l0aCBuYWFsb2cgcmV0dW5pbmcgKCtpbnRlZ2VyLU4gcmV0dW5p
bmcpIEkgZ2V0IHBoYXNlIGNvaGVyZW5jZSwgYXMgZXhwZWN0ZWQuCj4gPgo+ID4gSSBhY3R1YWxs
eSBleHBlY3RlZCB0aGUgUExMIHJldHVuaW5nIG11Y2ggbW9yZSBjaGFsbGVuZ2luZyB0aGFuIHRo
ZSBEU1AgcmV0dW5pbmcgYnV0IGZvciBzb21lIHJlYXNvbiBpdCBzZWVtcyB0byBiZSB0aGUgb3Bw
b3NpdGUuLi4KPiBJdCBkZXBlbmRzIG9uIHdoZXRoZXIgdGhlIHBoYXNlLWFjY3VtdWxhdG9yIGlu
IHRoZSBEU1AgaXMgcmVzZXQgdG8gemVybywgCj4gb3Igd2hldGhlciBqdXN0IHRoZSBpbmNyZW1l
bnQgcmVnaXN0ZXIgaXMgdXBkYXRlZCB3aXRoIHRoZQo+ICAgIG5ldyBwaGFzZSBpbmNyZW1lbnQu
ICAgVGhlcmUgYXJlIGdvb2QgYXJndW1lbnRzIGZvciBib3RoIGFwcHJvYWNoZXMuCgpJIGp1c3Qg
d2FudGVkIHRvIGNoZWNrIGluIGFnYWluIGlmIHlvdSBrbm93IGhvdyB0aGlzIGlzIGltcGxlbWVu
dGVkIGFuZCBob3cgeW91ciB0aG91Z2h0cyBhcmUgcmVnYXJkaW5nIHR1bmluZyBpbiBib3RoIGNh
c2VzLiBNeSB0YWtlOgoKQ2FzZSAjMTogUGhhc2UgYWNjdW11bGF0b3IgYW5kIGluY3JlbWVudCBy
ZWdpc3RlciBpcyByZXNldC4KICAgLSBUaGlzIHJlc3VsdHMgaW4gdHJhbnNpZW50cyB3aGVuIHJl
LXR1bmluZyBmcmVxdWVuY3kgYmVjYXVzZSB0aGUgbWl4ZXIgTE8gYWx3YXlzIChyZS0pc3RhcnRz
IGF0IHplcm8gcGhhc2UuCiAgIC0gU2luY2UgdGhpcyBjb21wbGV0ZWx5IGRlZmluZXMgdGhlIHN0
YXRlIG9mIHRoZSBEREMvRFVDLCBJIGltYWdpbmUgcGhhc2UgY29oZXJlbmNlIG11c3QgYmUgcHJl
c2VydmVkIGFzc3VtaW5nIHRoZSByZXNldHMgaW4gVFggYW5kIFJYIGhhcHBlbiBleGFjdGx5IGF0
IHRoZSBzYW1lIHRpbWUgKHdoaWNoIGlzIHN0aWxsIG5vdCBjZXJ0YWluIHRvIG1lKQoKQ2FzZSAj
MjogT25seSBpbmNyZW1lbnQgcmVnaXN0ZXIgaXMgdXBkYXRlZAogICAtIFRoaXMgcmVzdWx0cyBp
biBhIHNtb290aCB0cmFuc2l0aW9uCiAgIC0gSSB3b3VsZCBndWVzcyB0aGF0IHRoaXMgaXMgd2hh
dCBVU1JQIGltcGxlbWVudHMKICAgLSBTaW5jZSBub3QgdGhlIHdob2xlIHN0YXRlIG9mIERVQy9E
REMgaXMgcmVzZXQgSSBjYW4gaW1hZ2luZSB0aGVyZSBpcyBhIHBvdGVudGlhbCBmb3IgcGhhc2Ug
Y29oZXJlbmNlIHByb2JsZW1zLgogICAtIGlmIEkgdXBkYXRlIHRoZSBwaGFzZSBpbmNyZW1lbnQg
cmVnaXN0ZXIgZm9yIERVQyB0byBmZHNwPTUwMGUzIGFuZCB0aGUgcGhhc2UgaW5jcmVtZW50IHJl
Z2lzdGVyIGZvciBEREMgdG8gZmRzcD0tNTAwZTMgY2FuIHRoZXJlIGJlIGFueSB3YXkgb2YgYnJl
YWtpbmcgcGhhc2UgY29oZXJlbmNlPyBJIGp1c3QgY2FuJ3QgdGhpbmsgb2YgYSBhd2F5IChiZWNh
dXNlIHdoaWxlIHRoZSBmcmVxdWVuY3kgaXMgZGlmZmVyZW50LCBpdCdzIGV4YWN0bHkgdGhlIG1p
cnJvciBmcmVxdWVuY3kgYW5kIHJlc3VsdHMgaW4gdGhlIHNhbWUgYWJzb2x1dCB2YWx1ZSkKClRo
YW5rcywKTHVrYXMKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20K
