Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A65491F6EF1
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 22:47:09 +0200 (CEST)
Received: from [::1] (port=36258 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjU6M-00075V-Gy; Thu, 11 Jun 2020 16:47:06 -0400
Received: from mout.gmx.net ([212.227.17.20]:46913)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jjU6I-0006xb-Hf
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 16:47:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1591908381;
 bh=5u8wGadSSgVYDaYz0fNWYOvaklB+276CINm6h0uIfVk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=YiQsFokoBbgIOEU9sjyZ1nKdJjx5FRie/Yl2BXF4ul914tW4ONJ4kpbl7UNWdnOFd
 bMRIWcdE9zKoAkMDOWWg+jEybedXiG5yHZWFE7rernmcQuqsGrFqRf4Z3UcPibxdEs
 tfeeGPBqq4JsKNvRjVPl30dXEmcc43Dc74PUCJbE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.101.54.176] ([87.101.54.176]) by web-mail.gmx.net
 (3c-app-gmx-bap40.server.lan [172.19.172.110]) (via HTTP); Thu, 11 Jun 2020
 22:46:21 +0200
MIME-Version: 1.0
Message-ID: <trinity-698bf8e0-f382-4350-99d9-e2bf4b5ef8d4-1591908381370@3c-app-gmx-bap40>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
Date: Thu, 11 Jun 2020 22:46:21 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <AAE54BC7-1AC7-4745-8598-4FC701DC2627@gmail.com>
References: <trinity-469b54f5-33c1-4a43-876d-eb07014b9eb2-1591904041140@3c-app-gmx-bap40>
 <AAE54BC7-1AC7-4745-8598-4FC701DC2627@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:/Od5t0jw5kFbZanWUb5p90okUfN95imGFo/NWlOFAIxpvtLjZMI73ny49B875nxSVp62M
 wKeFn6SIjsdOYq9/porbOs18ruJIAvWk7Es5ImDRcd5h5WHGvKDygDAOfCWT2ivEPFgZYsPbtNcv
 cUCh+4olrqBVMj6hu5uTiG2xZq69DVm4aZOeoMv/mKyXkNBSLaMpLgY6GO0mvm95aBOnxyDgzr3q
 Z0R9k39nJs67XRLzEg33gnxGw9KUBSmWaTgRi3riLVQ2CLWj7ymmZA90VXqNREoTefCLYUHpe9IC
 NA=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:U0VPSUuN+Pk=:7btASFznkY2vAWtzbdtkh8
 EYHctqrLFvgDkD/AMiU5VVYz7n3J7OTLWQC/qvQD9Yssgs6XazhdbkBtisd/OavIabtc7EHgX
 cQZUgMVd1JnEvxByhr69ZXLmCbP8w5ueWH3gthth7y100D54y9/A+j83Y+Fw6R2cca5Exl5Yp
 JY5vHzQaf0+98fvORdCKMMohqhaCvYb1sk1Si6zF7aTz+Om1i/nVNCEcCuLkBJ2lQKw6kRioV
 X6FqtYt/nqFjfnJHWJxX9ALVSwIe+mgfc/CX5Df9VwORl/itrN2IHTJUY/XJcbb8DhHVtAd4T
 45X/rRX38qNQSWkz/Y533glHKfWmVlxi31cqtUJWxgZnBY482/0/2eYvb8evho8m/8DP+loZn
 2NBkgYOAiaHWqPhD+2/1BkqybRLmk7W8aPtwlaAgbdN/82UelQukjZBzVOvTwhnLR1LtFat6R
 dDGZ2J2/z5C2pIFT//BvULfflZLes4pPF/5ogBPJyC3GMejUATDI2dyYXl8HCI3iK4sOqw+dk
 dy/xgmKeo4Dlg+ODpAqK5cJURmRwcWE5ISvtu9oEGirN9eiJQbKjT0ClSPQwPHRV8rPlrA7Fk
 qaG9u7dBaK1SYM2SGDpjZVSjUDSt0KAJvUUslejcKE7WGMeIjOH6ehSleufcpycEp2HIBiPpv
 rC/bpUM9L834VLhnD9KJrk8HiitrylPMJUWlGNKv2tMU95526fmy1Jx5u5IP9XqNu7Mc=
Subject: Re: [USRP-users] How to debug timed commands on FPGA side?
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
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

SGkgTWFyY3VzLAoKQ2FuIHdlIHF1YW50aWZ5IHRoaXMgaW4gdGhlIGZvbGxvd2luZyB3YXk/CgpJ
ZiBJIHNlbmQgdGltZWQgY29tbWFuZHMgZXZlcnkgMm1zIGFuZCBzYW1wbGluZyByYXRlIGlzIDVN
Uy9zLCB0aGF0J3MgMTAwMDAgc2FtcGxlcyBwZXIgY29tbWFuZCBvciA1MDAwMCBmb3IgdGhlIGNv
bW1hbmQgcXVldWUgKGFzc3VtaW5nIGEgZGVwdGggb2YgNSkuCgpDYW4gd2Ugc2F5IHRoZSB0aW1l
ZCBjb21tYW5kcyB3aWxsIGd1YXJhbnRlZWQgdG8gYmUgZXhlY3V0ZWQgb24gdGltZSBpZiB3ZSBu
ZXZlciBidWZmZXIgbW9yZSB0aGFuIDUwMDAwIHNhbXBsZXMgKD0yMDAwMDAgYnl0ZXMpIG9uIHRo
ZSBob3N0PwoKQ2FuIHRoaXMgYmUgdHVuZWQgc29tZWhvdz8gSSB0cmllZCBzZXR0aW5nIHNlbmRf
YnVmZl9zaXplIFsxXSB0byBhIHNtYWxsIHZhbHVlIChzZW5kX2J1ZmZfc2l6ZT0xMDAwMCBldGMu
KSBidXQgdGhhdCBkaWRuJ3Qgc2VlbSB0byBtYWtlIGFueSBkaWZmZXJlbmNlLgoKVGhhbmtzLApM
dWthcwoKClsxXSBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV90cmFuc3BvcnQu
aHRtbAoKCgo+IEdlc2VuZGV0OiBEb25uZXJzdGFnLCAxMS4gSnVuaSAyMDIwIHVtIDE2OjMyIFVo
cgo+IFZvbjogIk1hcmN1cyBEIExlZWNoIiA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+Cj4gQW46
ICJMdWthcyBIYWFzZSIgPGx1a2FzaGFhc2VAZ214LmF0Pgo+IENjOiAiVVNSUC11c2Vyc2xpc3Rz
LmV0dHVzLmNvbSIgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPgo+IEJldHJlZmY6IFJlOiBb
VVNSUC11c2Vyc10gSG93IHRvIGRlYnVnIHRpbWVkIGNvbW1hbmRzIG9uIEZQR0Egc2lkZT8KPgo+
IFNvIG9uZSBvZiB0aGUgdGhpbmdzIFRoYXQgY2FuIGhhcHBlbiBpcyB0aGF0IHlvdXIgY29tbWFu
ZCBwYWNrZXRzIHdpbGwgaGF2ZSB0byB3YWl0IEZvciBhIG11Y2gtbGFyZ2VyIGRhdGEgcGFja2V0
LiBUaGUgbGluayBpcyBzaGFyZWQuIAo+IAo+IEnigJlkIHRpbWVkIGNvbW1hbmRzIGFyZSBzY2hl
ZHVsZWQg4oCcdGlnaHTigJ0gdGhpcyBjYW4gaGFwcGVuLiAKPiAKPiBTZW50IGZyb20gbXkgaVBo
b25lCj4gCj4gPiBPbiBKdW4gMTEsIDIwMjAsIGF0IDM6MzQgUE0sIEx1a2FzIEhhYXNlIDxsdWth
c2hhYXNlQGdteC5hdD4gd3JvdGU6Cj4gPiAKPiA+IO+7v0hpIE1hcmN1cywKPiA+IAo+ID4+PiBP
biAwNi8xMC8yMDIwIDA5OjAwIFBNLCBMdWthcyBIYWFzZSB2aWEgVVNSUC11c2VycyB3cm90ZToK
PiA+Pj4gWy4uLl0KPiA+Pj4gRm9yIGV4YW1wbGUsIHdoYXQgaXMgdGhlIGZhc3Rlc3QgcmF0ZSBJ
IGNhbiBpc3N1ZSB0aW1lZCBjb21tYW5kcwo+ID4+PiAoaWdub3Jpbmcgc2V0dGxpbmcgdGltZXMg
ZXRjKSBvbiBhIFgzMTAgb3ZlciAxMEdiZT8KPiA+PiBUaGlzIGlzIGFjdHVhbGx5IGFuIGFtYmln
dW91cyBxdWVzdGlvbi4gIERvIHlvdSBtZWFuICJ3aGF0IGlzIHRoZQo+ID4+IHNtYWxsZXN0IHNj
aGVkdWxpbmcgaW50ZXJ2YWwgZm9yIHRoZSBjb21tYW5kcyB0aGF0IHdpbGwgYmUgZXhlY3V0ZWQK
PiA+PiBpbiB0aGUgZnV0dXJlPyIgb3IgImhvdyBmYXN0IGNhbiBJIGlzc3VlIGNvbW1hbmRzIHRo
YXQgd2lsbAo+ID4+IHVsdGltYXRlbHkgYmUgc2NoZWR1bGVkIGF0IGEgbGF0ZXIgdGltZT8iICBJ
biB0aGUgZm9ybWVyLCB0aGF0Cj4gPj4gZGVwZW5kcyBvbiB0aGUgZXhhY3QgbmF0dXJlIG9mIHRo
ZSBjb21tYW5kcywgc2luY2UgdGhleSBlbmQgdXAKPiA+PiBhY3R1YWxseSBiZWluZyBleGVjdXRl
ZCBieSwgZm9yIGV4YW1wbGUsIGFuIFNQSSBvciBJMkMgZW5kcG9pbnQsCj4gPj4gd2hpY2ggb3Bl
cmF0ZXMgdmVyeSB2ZXJ5IG11Y2ggc2xvd2VyIHRoYW4gYSAxMEdpR2UgaW50ZXJmYWNlLiAgSW4g
dGhlCj4gPj4gbGF0dGVyLCBteSBndWVzcyBpcyB0aGF0IHRoZSBGUEdBIGNhbiBzd2FsbG93IGNv
bW1hbmRzIGFuZCBwbGFjZSB0aGVtCj4gPj4gb24gdGhlIHF1ZXVlIHByZXR0eS1tdWNoIGFzIGZh
c3QgYXMgeW91IGNhbiBpc3N1ZSB0aGVtIG92ZXIgMTBHaUcuCj4gPj4gSG93IGZhc3QgeW91IGNh
biBkbyB0aGF0IGRlcGVuZHMgdmVyeSBtdWNoIG9uIHlvdXIgaG9zdC1zaWRlCj4gPj4gZW52aXJv
bm1lbnQsIG5ldHdvcmsgc3RhY2ssIGtlcm5lbCBuZXR3b3JrIGRyaXZlcnMsIGtlcm5lbCBsYXRl
bmNpZXMsCj4gPj4gZXRjLgo+ID4gCj4gPiBNeSBxdWVzdGlvbnMgY29uY2VybnMgdGhlIGxhdHRl
ciAoZm9yIG5vdykuCj4gPiBTaW5jZSB0aGUgRlBHQSBoYXMgYSAoc21hbGwpIGZpbml0ZSBGSUZP
IGZvciB0aGVzZSB0aW1lZCBjb21tYW5kcyBJIGFzc3VtZSpkKiB0aGVyZSB3b3VsZCBiZSBhIGxp
bWl0IG9uIGhvdyBmYXN0IEkgY2FuIHNlbmQgdGhlc2UgY29tbWFuZHMuCj4gPiAKPiA+IEJhc2Vk
IG9uIEpvbmF0aG9uJ3MgYW5zd2VyIGhvd2V2ZXIsIGl0IHNlZW1zIHRoYXQgVUhEIG9uIHRoZSBo
b3N0IGVuc3VyZXMgdGhhdCBpdCBvbmx5IHNlbmRzIGEgbWF4aW11bSBudW1iZXIgb2YgdGltZWQg
Y29tbWFuZHMgc3VjaCB0aGF0IHRoZSBjb21tYW5kIHF1ZXVlcyBkbyBub3Qgb3ZlcmZsb3cuCj4g
PiAKPiA+IEJ1dCBpdCBzZWVtcyB0byBicmluZyBhbm90aGVyIGlzc3VlOiBJZiBVSEQgaG9sZHMg
YmFjayB0aGVzZSBtZXNzYWdlcyB0b28gbG9uZyB0aGV5IHdpbGwgZXZlbnR1YWxseSBhcnJpdmUg
bGF0ZSBhbmQgKHNpbGVudGx5KSBleGVjdXRlIG5vbi10aW1lZCAodGhlcmVieSBkZXN0cm95aW5n
IGFueSBjb2hlcmVuY2UgdGhlIGFwcGxpY2F0aW9uIG1pZ2h0IHJlcXVpcmUpLgo+ID4gCj4gPiBJ
IGFtIHRyeWluZyB0byBkZWJ1ZyBXSFkgdGhpcyBjYW4gaGFwcGVuLCB3aHkgaXQgZG9lcyBOT1Qg
aGFwcGVuIHRvIHRoZSBkYXRhIHN0cmVhbSAoYWxsIGRhdGEgYXJyaXZlcyBvbiB0aW1lISkgYW5k
IHdoYXQgSSBjYW4gZG8gdGhhdCBJIGVuc3VyZSBteSB0aW1lZCBjb21tYW5kcyB3aWxsIGV4ZWN1
dGUgKm9uIHRpbWUqLgo+ID4gCj4gPiBUaGFua3MsCj4gPiBMdWthcwo+ID4gCj4gPiAKPiA+IAo+
ID4gCj4gPiAKPiA+IAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20K
