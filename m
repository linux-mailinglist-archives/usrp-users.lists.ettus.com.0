Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B901F6ED1
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 22:33:32 +0200 (CEST)
Received: from [::1] (port=58478 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjTtA-0004lC-Pf; Thu, 11 Jun 2020 16:33:28 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:34841)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jjTt7-0004Wy-El
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 16:33:25 -0400
Received: by mail-qk1-f176.google.com with SMTP id n141so6973291qke.2
 for <usrp-users@lists.ettus.com>; Thu, 11 Jun 2020 13:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=7ForHQ4gIyQnjns6K9WVgTIQPaiSqPwX2atGW62uPdw=;
 b=u57IETpCvr08t8zNrkvDKRcVMNdv86jyK8PNcHtgtObubMmpZ+z2VehVgCRr5BOJRW
 mjB40BRi3agqyMKtnt/taOlwvAAYdfzwUedSpWh39pju3pZjjqPm+XKYiCSamMPvCq94
 E5N2JwEcHqL0V2FpfZi35qtzdcdRwUrVeeDiggU0kMZogBf6VZRrcY3wYxBe3gjnrOWq
 kohorVEREHysZe3w0TJtaZ2G1D0q+aPCUh6xZ0Fshyg4YAMdENOdWDtyUPwCziAjKELH
 n8/4vrt4xdgDkax61h8GR+XAFKlvyle7Q3f9r025XYkM+pnnJaAyLFZPJkYiiZ6beBLn
 nq6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=7ForHQ4gIyQnjns6K9WVgTIQPaiSqPwX2atGW62uPdw=;
 b=VRbSzEKIr5QEuO3cGtHYXsT8Qmv2EfeYTbInTRunOdnFSGjiw3SlCyaA4FR9eJaiNK
 1LewP4VsNRxkXtJ7WEOI4WQp5wAYhv61lbiF4357ScVjhZ6xKtPuHeI1DrTfals96LkE
 xHKa96afZ7kIQadY9BrdUzq+vpvZW5jgcHBRR8OJYMGsUKic3SgmbjOOj0hmGz1xXPyv
 jf699OH9+B9qVmyptylJp2PfnnlqlkU1Cb99vKqqmGUQl/1WHx3iHzWvv0Ew/DaEIi9b
 +3Mn9pAimGGEg3KRF2BWFC/jK3SflCnZmIGEftCa88wyMbNBmm62V+oBtl1FBozvc4UC
 vyBQ==
X-Gm-Message-State: AOAM530RlOXyrIy3/JrDiK1up8kngTT+mwl0r+3I+MaR4RXXu000WFEj
 PPwJOg+fwhXF+Jx/x4F6I0I/tZxUdC0=
X-Google-Smtp-Source: ABdhPJxi9elXGR9u0XQ6wa0EKnj9HkUegy5a1d0cf73f+32V6NnMSaAUzk/lQ6CWdQ532SXBZKDhew==
X-Received: by 2002:ae9:efc2:: with SMTP id
 d185mr10419282qkg.177.1591907564671; 
 Thu, 11 Jun 2020 13:32:44 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id d17sm3005226qke.101.2020.06.11.13.32.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 13:32:43 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 11 Jun 2020 16:32:42 -0400
Message-Id: <AAE54BC7-1AC7-4745-8598-4FC701DC2627@gmail.com>
References: <trinity-469b54f5-33c1-4a43-876d-eb07014b9eb2-1591904041140@3c-app-gmx-bap40>
Cc: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
In-Reply-To: <trinity-469b54f5-33c1-4a43-876d-eb07014b9eb2-1591904041140@3c-app-gmx-bap40>
To: Lukas Haase <lukashaase@gmx.at>
X-Mailer: iPhone Mail (17E262)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
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

U28gb25lIG9mIHRoZSB0aGluZ3MgVGhhdCBjYW4gaGFwcGVuIGlzIHRoYXQgeW91ciBjb21tYW5k
IHBhY2tldHMgd2lsbCBoYXZlIHRvIHdhaXQgRm9yIGEgbXVjaC1sYXJnZXIgZGF0YSBwYWNrZXQu
IFRoZSBsaW5rIGlzIHNoYXJlZC4gCgpJ4oCZZCB0aW1lZCBjb21tYW5kcyBhcmUgc2NoZWR1bGVk
IOKAnHRpZ2h04oCdIHRoaXMgY2FuIGhhcHBlbi4gCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9u
IEp1biAxMSwgMjAyMCwgYXQgMzozNCBQTSwgTHVrYXMgSGFhc2UgPGx1a2FzaGFhc2VAZ214LmF0
PiB3cm90ZToKPiAKPiDvu79IaSBNYXJjdXMsCj4gCj4+PiBPbiAwNi8xMC8yMDIwIDA5OjAwIFBN
LCBMdWthcyBIYWFzZSB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4+IFsuLi5dCj4+PiBGb3IgZXhh
bXBsZSwgd2hhdCBpcyB0aGUgZmFzdGVzdCByYXRlIEkgY2FuIGlzc3VlIHRpbWVkIGNvbW1hbmRz
Cj4+PiAoaWdub3Jpbmcgc2V0dGxpbmcgdGltZXMgZXRjKSBvbiBhIFgzMTAgb3ZlciAxMEdiZT8K
Pj4gVGhpcyBpcyBhY3R1YWxseSBhbiBhbWJpZ3VvdXMgcXVlc3Rpb24uICBEbyB5b3UgbWVhbiAi
d2hhdCBpcyB0aGUKPj4gc21hbGxlc3Qgc2NoZWR1bGluZyBpbnRlcnZhbCBmb3IgdGhlIGNvbW1h
bmRzIHRoYXQgd2lsbCBiZSBleGVjdXRlZAo+PiBpbiB0aGUgZnV0dXJlPyIgb3IgImhvdyBmYXN0
IGNhbiBJIGlzc3VlIGNvbW1hbmRzIHRoYXQgd2lsbAo+PiB1bHRpbWF0ZWx5IGJlIHNjaGVkdWxl
ZCBhdCBhIGxhdGVyIHRpbWU/IiAgSW4gdGhlIGZvcm1lciwgdGhhdAo+PiBkZXBlbmRzIG9uIHRo
ZSBleGFjdCBuYXR1cmUgb2YgdGhlIGNvbW1hbmRzLCBzaW5jZSB0aGV5IGVuZCB1cAo+PiBhY3R1
YWxseSBiZWluZyBleGVjdXRlZCBieSwgZm9yIGV4YW1wbGUsIGFuIFNQSSBvciBJMkMgZW5kcG9p
bnQsCj4+IHdoaWNoIG9wZXJhdGVzIHZlcnkgdmVyeSBtdWNoIHNsb3dlciB0aGFuIGEgMTBHaUdl
IGludGVyZmFjZS4gIEluIHRoZQo+PiBsYXR0ZXIsIG15IGd1ZXNzIGlzIHRoYXQgdGhlIEZQR0Eg
Y2FuIHN3YWxsb3cgY29tbWFuZHMgYW5kIHBsYWNlIHRoZW0KPj4gb24gdGhlIHF1ZXVlIHByZXR0
eS1tdWNoIGFzIGZhc3QgYXMgeW91IGNhbiBpc3N1ZSB0aGVtIG92ZXIgMTBHaUcuCj4+IEhvdyBm
YXN0IHlvdSBjYW4gZG8gdGhhdCBkZXBlbmRzIHZlcnkgbXVjaCBvbiB5b3VyIGhvc3Qtc2lkZQo+
PiBlbnZpcm9ubWVudCwgbmV0d29yayBzdGFjaywga2VybmVsIG5ldHdvcmsgZHJpdmVycywga2Vy
bmVsIGxhdGVuY2llcywKPj4gZXRjLgo+IAo+IE15IHF1ZXN0aW9ucyBjb25jZXJucyB0aGUgbGF0
dGVyIChmb3Igbm93KS4KPiBTaW5jZSB0aGUgRlBHQSBoYXMgYSAoc21hbGwpIGZpbml0ZSBGSUZP
IGZvciB0aGVzZSB0aW1lZCBjb21tYW5kcyBJIGFzc3VtZSpkKiB0aGVyZSB3b3VsZCBiZSBhIGxp
bWl0IG9uIGhvdyBmYXN0IEkgY2FuIHNlbmQgdGhlc2UgY29tbWFuZHMuCj4gCj4gQmFzZWQgb24g
Sm9uYXRob24ncyBhbnN3ZXIgaG93ZXZlciwgaXQgc2VlbXMgdGhhdCBVSEQgb24gdGhlIGhvc3Qg
ZW5zdXJlcyB0aGF0IGl0IG9ubHkgc2VuZHMgYSBtYXhpbXVtIG51bWJlciBvZiB0aW1lZCBjb21t
YW5kcyBzdWNoIHRoYXQgdGhlIGNvbW1hbmQgcXVldWVzIGRvIG5vdCBvdmVyZmxvdy4KPiAKPiBC
dXQgaXQgc2VlbXMgdG8gYnJpbmcgYW5vdGhlciBpc3N1ZTogSWYgVUhEIGhvbGRzIGJhY2sgdGhl
c2UgbWVzc2FnZXMgdG9vIGxvbmcgdGhleSB3aWxsIGV2ZW50dWFsbHkgYXJyaXZlIGxhdGUgYW5k
IChzaWxlbnRseSkgZXhlY3V0ZSBub24tdGltZWQgKHRoZXJlYnkgZGVzdHJveWluZyBhbnkgY29o
ZXJlbmNlIHRoZSBhcHBsaWNhdGlvbiBtaWdodCByZXF1aXJlKS4KPiAKPiBJIGFtIHRyeWluZyB0
byBkZWJ1ZyBXSFkgdGhpcyBjYW4gaGFwcGVuLCB3aHkgaXQgZG9lcyBOT1QgaGFwcGVuIHRvIHRo
ZSBkYXRhIHN0cmVhbSAoYWxsIGRhdGEgYXJyaXZlcyBvbiB0aW1lISkgYW5kIHdoYXQgSSBjYW4g
ZG8gdGhhdCBJIGVuc3VyZSBteSB0aW1lZCBjb21tYW5kcyB3aWxsIGV4ZWN1dGUgKm9uIHRpbWUq
Lgo+IAo+IFRoYW5rcywKPiBMdWthcwo+IAo+IAo+IAo+IAo+IAo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QK
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFu
L2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
