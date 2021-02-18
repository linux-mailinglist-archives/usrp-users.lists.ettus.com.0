Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFD331EAB3
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 15:06:02 +0100 (CET)
Received: from [::1] (port=43802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCjwP-0006fY-3C; Thu, 18 Feb 2021 09:06:01 -0500
Received: from mail-qt1-f178.google.com ([209.85.160.178]:43939)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lCjwL-0006Zb-8u
 for USRP-users@lists.ettus.com; Thu, 18 Feb 2021 09:05:57 -0500
Received: by mail-qt1-f178.google.com with SMTP id d3so1384731qtr.10
 for <USRP-users@lists.ettus.com>; Thu, 18 Feb 2021 06:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=iRLW1K63+kUTxOGRMX0iHDydPbzb4htQo0n1m04ARMg=;
 b=TnZSABxflKOMh3a6PfqywL61+WlcqK7T98XDIXwR1LLOOg9+9T87J4JumTO028oKSJ
 5hO+vg5N3jxHblNAlapYBHA5U6uf5Zy66c3ShcTh4KQTltor0D6fI6wyM+y4/bacK8QC
 hBCEDP3i2G7xXI1beMX2cgomn9dkGWIfNFUnMmA8+B4leGqLLbAHmj77m0nyXWxbeTlo
 HPBZrmsnqqMuMpEN7mFmFJHgBbBkQ44DDaMe9onDQ6dN/xWOcP6UPHGxQB1GlWwVzKbI
 WX++F3J8Yl8CV/cPqCWTZ95cBeDMo4fhFulp7+2tnUSBkNSPrOs3IR/T/D5jIuw2+YcD
 ssJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=iRLW1K63+kUTxOGRMX0iHDydPbzb4htQo0n1m04ARMg=;
 b=U1ayc7Mq1eOhS5N3T75hdxYhIB6iUwzSht9TyoxdYmYDIZAj9MroF2KTbxL9sYEwuB
 SQxKw/s3kG2LRDl0S1xn/VfGUwRBcOWLZImzNrB3OXJqge4M2NVv5Xn1EM83lCYv3kxV
 eJQPUwF7faX4UjwlyI6z1Ti11ejjgKQobNClJlRZVuntIl/mF5hknt5o3sPijFWl2YgE
 k6bUfZXyJterxeAY3k5CYJJaKq9IKLXhA0QOjGoP0kALYZ5wTLzhjGFWDbTr+M2n6yM7
 o/x5jLnQ+JaTrZXJi27OtP1yG8HU10NUYM99KBU7xhSKaBlmlVif4Z+f+tdSXqA/Cei1
 vGBQ==
X-Gm-Message-State: AOAM530HRwlNGRNa6vsxQ7Iymh6uehvWIck2/KHoaKegJ7KqKgr0spDD
 m0+lFi6uMqHswi5R89as+odJ9U3WWWg=
X-Google-Smtp-Source: ABdhPJyzByBUT6HfcBT+FtDaw2pWwHF+V0xGzuogDoe9Z2SwKlzoKYrOIe1L8jXtKRKL5KN4mNym5w==
X-Received: by 2002:ac8:1190:: with SMTP id d16mr4188432qtj.125.1613657114748; 
 Thu, 18 Feb 2021 06:05:14 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id k90sm3433922qtd.0.2021.02.18.06.05.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Feb 2021 06:05:14 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 18 Feb 2021 09:05:13 -0500
Message-Id: <5B9A3BD5-2235-434A-B205-4D62F543B9A3@gmail.com>
References: <9bb07e02-0567-9d12-299d-26daf430015d@ant.uni-bremen.de>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <9bb07e02-0567-9d12-299d-26daf430015d@ant.uni-bremen.de>
To: Johannes Demel <demel@ant.uni-bremen.de>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] GPSDO fails to lock
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

SG93IGFyZSB5b3UgZGVsaXZlcmluZyB0aGUgR1BTIGFudGVubmEgc2lnbmFsIHRvIHRoZSBVU1JQ
cz8gIFZpYSBhIHNwbGl0dGVyPyBEb2VzIHRoYXQgc3BsaXR0ZXIgcHJvdmlkZSBEQyBwYXNzLXRo
cm91Z2g/CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEZlYiAxOCwgMjAyMSwgYXQgNzowNyBB
TSwgSm9oYW5uZXMgRGVtZWwgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPiB3cm90ZToKPiAKPiDvu79KdXN0IGEgcXVpY2sgZm9sbG93LXVwLiBUaGUgQjIxMCBmaW5h
bGx5IGdvdCBhIEdQUyBsb2NrLiAoSSBoYWQgdG8gd2FpdCBmb3IgfjJoKS4gVGhvdWdoLCBhbGwg
TjMxMHMgc3RpbGwgZG9uJ3QuCj4gCj4+IE9uIDE4LjAyLjIxIDEwOjEyLCBKb2hhbm5lcyBEZW1l
bCB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4gSGkgYWxsLAo+PiBJIGhhdmUgc29tZSBOMzEwcyBh
bmQgYSBCMjEwIHRoYXQgSSB0cnkgdG8gc3luYyB3aXRoIGEgR1BTRE8uIEFsbCBvZiB0aGVtIHJl
Y29nbml6ZSB0aGVpciBHUFNET3MgYnV0IGZhaWwgdG8gbG9jay4KPj4gTXkgcGhvbmUgY2FuIHNl
ZSB+NyBTYXRlbGxpdGVzLiBXZSBoYXZlIGEgUlBpIHdpdGggYSBHUFMgbW9kdWxlIHRoYXQgbG9j
a3MgdG8gR1BTIGluIHRoZSBzYW1lIGhhbGwuIFdlIHN3aXRjaGVkIGFudGVubmFzIGJ1dCBzdGls
bCwgd2UgY2FuJ3Qgc3luYyBhbnkgb2YgdGhlIFVTUlBzIHRvIEdQUy4KPj4gSSB0cmllZDoKPj4g
YGBgCj4+IGxpYi91aGQvdXRpbHMvcXVlcnlfZ3BzZG9fc2Vuc29ycwo+PiBgYGAKPj4gYW5kCj4+
IGBgYAo+PiBsaWIvdWhkL2V4YW1wbGVzL3N5bmNfdG9fZ3BzCj4+IGBgYAo+PiBidXQgZXZlbiBh
ZnRlciBhIGRheSwgdGhleSBhbHdheXMgcmV0dXJuICJHUFMgZG9lcyBub3QgaGF2ZSBsb2NrIiBh
bmQgIldBUk5JTkc6ICBHUFMgbm90IGxvY2tlZCAtIHRpbWUgd2lsbCBub3QgYmUgYWNjdXJhdGUg
dW50aWwgbG9ja2VkIi4KPj4gYGdwc21vbmAgb24gdGhlIE4zMTBzIHJlcG9ydHMgMCBTYXRlbGxp
dGVzLiBCdXQgaXQgaGFzIGEgbGlzdCBvZiBzYXRlbGxpdGVzLgo+PiBTaW5jZSB3ZSBoYXZlIHNl
dmVyYWwgZGV2aWNlcyBpbiB0aGF0IHJvb20gdGhhdCBhcmUgYWJsZSB0byBhY3F1aXJlIGEgbG9j
ayBidXQgbm9uZSBvZiBvdXIgVVNSUHMgd2l0aCB0aGVpciBHUFNET3MsIEkgd29uZGVyIHdoYXQg
aXMgZ29pbmcgb24uIERvIHRoZXkgbmVlZCBhIHZlcnkgc3Ryb25nIHNpZ25hbD8KPj4gQ2hlZXJz
Cj4+IEpvaGFubmVzCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb20K
