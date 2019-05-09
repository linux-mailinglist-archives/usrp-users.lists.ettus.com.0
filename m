Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D81CB18A45
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 15:06:19 +0200 (CEST)
Received: from [::1] (port=37874 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOikZ-0007fj-Vz; Thu, 09 May 2019 09:06:15 -0400
Received: from mail-relay.contabo.net ([213.136.95.143]:41666)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <fabian@opencode.eu>) id 1hOik2-0007Xx-Ar
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 09:06:12 -0400
Received: by mail-relay.contabo.net (Postfix, from userid 103)
 id 98EAA20151; Thu,  9 May 2019 15:05:00 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vmd4985.contabo.net
X-Spam-Level: 
Received: from m1331.contabo.net (m1331.contabo.net [91.194.91.204])
 by mail-relay.contabo.net (Postfix) with ESMTPS id BDBDF20147
 for <usrp-users@lists.ettus.com>; Thu,  9 May 2019 15:04:59 +0200 (CEST)
Received: from [134.169.78.184] (port=57113)
 by m1331.contabo.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <fabian@opencode.eu>) id 1hOijH-00F80q-8c
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 15:05:01 +0200
To: usrp-users@lists.ettus.com
References: <883459ac-4408-76f5-37af-c6859c16a1e6@opencode.eu>
 <5CBF2EFA.9060302@gmail.com>
 <138cfa0f-aaa2-99a7-fded-41ebf1148fa0@opencode.eu>
 <5CBF42A1.2060803@gmail.com>
 <9b42df4d-1ce9-3d0d-8171-526c534b4441@opencode.eu>
 <5CBF4788.9060009@gmail.com>
 <e00a6d17-a7da-2a32-2430-bd98c888a54c@opencode.eu>
 <16f93e08-ab6b-a729-1bec-b603c8a27988@opencode.eu>
Message-ID: <9bbb117f-aff7-1a60-e3c2-362d516915d2@opencode.eu>
Date: Thu, 9 May 2019 15:04:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <16f93e08-ab6b-a729-1bec-b603c8a27988@opencode.eu>
X-Antivirus: AVG (VPS 190509-2, 09.05.2019), Outbound message
X-Antivirus-Status: Clean
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - m1331.contabo.net
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - opencode.eu
X-Get-Message-Sender-Via: m1331.contabo.net: authenticated_id:
 fabian@opencode.eu
X-Authenticated-Sender: m1331.contabo.net: fabian@opencode.eu
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] USRPs time wrong by factor of two
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Fabian Schwartau via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Fabian Schwartau <fabian@opencode.eu>
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

SGksCmlzIHRoZXJlIGFueSB1cGRhdGUgcmVnYXJkaW5nIHRoaXMgaXNzdWU/CgpBbSAyNi4wNC4y
MDE5IHVtIDExOjI3IHNjaHJpZWIgRmFiaWFuIFNjaHdhcnRhdSB2aWEgVVNSUC11c2VyczoKPiBI
aSwKPiAKPiBpcyBpdCB0byBiZSBleHBlY3RlZCB0aGF0IHRoaXMgd2lsbCBiZSBmaXhlZCBzb29u
PyBJcyBzb21lb25lIGF0IEV0dHVzIAo+IHdvcmtpbmcgb24gdGhpcz8KPiAKPiBCZXN0IHJlZ2Fy
ZHMsCj4gRmFiaWFuCj4gCj4gQW0gMjMuMDQuMjAxOSB1bSAxOTozNCBzY2hyaWViIEZhYmlhbiBT
Y2h3YXJ0YXUgdmlhIFVTUlAtdXNlcnM6Cj4+IE9LLCBJIGp1c3QgcmV2ZXJ0ZWQgdGhlIHN5c3Rl
bSB0byB0aGUgb2xkIHZlcnNpb24gYW5kIHRoYXQgd29ya3MgCj4+IHBlcmZlY3RseS4gVGhlIFVT
UlAgdGltZSBpcyBpbmNyZW1lbnRlZCBpbiBmdWxsIHNlY29uZHMgbGlrZSBleHBlY3RlZC4gCj4+
IFNvIHNvbWV0aGluZyBjaGFuZ2VkIHNvbWV3aGVyZSBpbiB0aGUgbGliL2ZwZ2EgaW1hZ2UuCj4+
IFRoZSB2ZXJzaW9uIEkgYW0gdXNpbmcgbm93IGlzOgo+PiBsaW51eDsgR05VIEMrKyB2ZXJzaW9u
IDUuNC4wIDIwMTYwNjA5OyBCb29zdF8xMDU4MDA7IAo+PiBVSERfMDAzLjAxMC4wMDIuSEVBRC0w
LWdiZDZlMjFkYwo+PiBIb3BlIHRoYXQgaGVscHMuCj4+Cj4+IEFtIDIzLjA0LjIwMTkgdW0gMTk6
MTIgc2NocmllYiBNYXJjdXMgRC4gTGVlY2ggdmlhIFVTUlAtdXNlcnM6Cj4+PiBPbiAwNC8yMy8y
MDE5IDAxOjEwIFBNLCBGYWJpYW4gU2Nod2FydGF1IHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+Pj4+
IFdpbGwgdGhlIGZwZ2EgaW1hZ2UgZG93bmxvYWRlciBmcm9tIHRoZSBvbGQgdmVyc2lvbiBhbHNv
IGRvd25sb2FkIAo+Pj4+IHRoZSBvbGQgZnBnYSBpbWFnZXM/IE9yIHdoZXJlIGNhbiBJIGdldCB0
aGVtPwo+Pj4+IEkgZG9uJ3Qga25vdyBpZiBJIHdpbGwgZG8gaXQuIEkgYW0gYWZyYWlkIG9mIGJy
ZWFraW5nIG15IHN5c3RlbSAKPj4+PiBhbmQvb3IgaW52ZXN0aW5nIGEgbG90IG9mIHRpbWUgd2l0
aCB0aGlzIGFzIEkgYW0gdW5kZXIgcXVpdGUgYSBsb3QgCj4+Pj4gb2YgdGltZSBwcmVhc3VyZSBh
bmQgSSBhbSBiYXNpY2FsbHkgd29ya2luZyBvbiB0aGUgcHJvZHVjdGlvbiBzeXN0ZW0gCj4+Pj4g
d2hpY2ggaGFzIHRvIGJvIHJvbGxlZCBvdXQgaW4gYSBmZXcgZGF5cy4gSWYgSSBicmljayBpdCwg
SSB3aWxsIGdldCAKPj4+PiBpbiB0cm91YmxlIDspCj4+PiBUaGUgdWhkX2ltYWdlc19kb3dubG9h
ZGVyIHRvb2wgd2lsbCBhbHdheXMgZG93bmxvYWQgdGhlIGltYWdlcyB0aGF0IAo+Pj4gbWF0Y2gg
dGhlIGxpYnJhcnkgdmVyc2lvbi4KPj4+Cj4+Pgo+Pj4+Cj4+Pj4gQW0gMjMuMDQuMjAxOSB1bSAx
ODo1MSBzY2hyaWViIE1hcmN1cyBELiBMZWVjaCB2aWEgVVNSUC11c2VyczoKPj4+Pj4gT24gMDQv
MjMvMjAxOSAxMTo0OCBBTSwgRmFiaWFuIFNjaHdhcnRhdSB2aWEgVVNSUC11c2VycyB3cm90ZToK
Pj4+Pj4+IEhpLAo+Pj4+Pj4gaXRzIHRoZSBzYW1lLiBJIGZvdW5kIHRoZSBidWcgYmVjYXVzZSB0
aGUgdGltZWQgY29tbWFuZHMgdG9vayBtdWNoIAo+Pj4+Pj4gbG9uZ2VyIHRoYW4gZXhwZWN0ZWQs
IHNvIHRoZSBVU1JQIGNsb2NrIGlzIGFjdHVhbGx5IHJ1bm5pbmcgYXQgYSAKPj4+Pj4+IGxvd2Vy
IHJhdGUuIEhvd2V2ZXIsIHRoZSBzcGVjdHJhIGxvb2tlZCBvayBhbmQgZXZlcnl0aGluZyBlbHNl
IAo+Pj4+Pj4gc2VlbXMgdG8gYmUgd29ya2luZyBhcyB1c3VhbCwgZXhjZXB0IHRoZXJlIGlzIGEg
bGFyZ2VyIGRlbGF5IAo+Pj4+Pj4gYmV0d2VlbiB0aGUgY29tbWFuZHMuIFNvIHRoZSBVU1JQIGlz
IG5vdCBydW5uaW5nIGF0IGEgd3JvbmcgY2xvY2sgCj4+Pj4+PiBvciBzb21ldGhpbmcgbGlrZSB0
aGF0LiBUaGF0IHdvdWxkIHByb2JhYmx5IGNhdXNlIG11Y2ggbGFyZ2VyIGlzc3Vlcy4KPj4+Pj4+
Cj4+Pj4+PiBCZXN0IHJlZ2FyZHMsCj4+Pj4+PiBGYWJpYW4KPj4+Pj4gSWYgeW91IHJldmVydCB0
byBhIHByZXZpb3VzIHJlbGVhc2UsIGRvZXMgdGhlIHByb2JsZW0gZ28gYXdheT8KPj4+Pj4KPj4+
Pj4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gQW0gMjMuMDQuMjAxOSB1bSAxNzoyNyBzY2hyaWViIE1h
cmN1cyBELiBMZWVjaCB2aWEgVVNSUC11c2VyczoKPj4+Pj4+PiBPbiAwNC8yMy8yMDE5IDA5OjQ3
IEFNLCBGYWJpYW4gU2Nod2FydGF1IHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+Pj4+Pj4+PiBIaSBl
dmVyeW9uZSwKPj4+Pj4+Pj4KPj4+Pj4+Pj4gSSBqdXN0IGZvdW5kIGEgdmVyeSBzdHJhZ2UgYnVn
IGFuZCB3b3VsZCBsaWtlIHRvIGNvbmZpcm0gdGhhdCAKPj4+Pj4+Pj4gdGhpcyBpcyBhIGJ1ZyBh
bmQgaWYgc29tZW9uZSBjYW4gZXhwbGFpbi9maXggdGhpcy4KPj4+Pj4+Pj4gSSByZWFkIHRoZSB0
aW1lIGZyb20gdGhlIFVTUlAgdXNpbmcgZ2V0X3RpbWVfbm93KCkgYW5kIGRvIGEgbG90IAo+Pj4+
Pj4+PiBvZiBzdHVmZiB3aXRoIGl0LiBNYWlubHkgdG8gdGltZSBjb21tYW5kcyBsaWtlIGZyZXF1
ZW5jeSBob3BwaW5nIAo+Pj4+Pj4+PiBhbmQgc3RhcnRpbmcgb2Ygc3RyZWFtcy4gSSBub3RpY2Vk
IHRoYXQgdGhlIHRpbWUgaW4gdGhlIFVTUlAgCj4+Pj4+Pj4+IHNlZW1lZCB0byBydW4gc2xvd2Vy
IHRoYW4gZXhwZWN0ZWQsIGFjdHVhbGx5IGJ5IGEgZmFjdG9yIG9mIHR3by4KPj4+Pj4+Pj4gUGxl
YXNlIGZpbmQgYSBwcm9ncmFtIGF0dGFjaGVkIHRoYXQgZGVtb25zdHJhdGVzIHRoaXMgZWZmZWN0
LiBJdCAKPj4+Pj4+Pj4gcHJpbnRzIHRoZSBpbnRlcm5hbCBVU1JQIHRpbWUgcm91Z2hseSBldmVy
eSBzZWNvbmQgKHVzaW5nIHNsZWVwKSAKPj4+Pj4+Pj4gYnV0IHRoZSBVU1JQIHRpbWUgaW5jcmVt
ZW50cyBvbmx5IGJ5IDAuNSBzZWNvbmRzIGluIGVhY2ggc3RlcC4gCj4+Pj4+Pj4+IFdoYXQgaXMg
Z29pbmcgb24/Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoZSBwcm9ncmFtIGNhbiBiZSBjb21waWxlZCB1
c2luZzoKPj4+Pj4+Pj4gZysrIC1zdGQ9YysrMTQgLU8yIG1haW4uY3BwIC1sdWhkIC1sYm9vc3Rf
c3lzdGVtIC1vIG1haW4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSSBhbSB1c2luZyBhIHNpbmdsZSAob3Ig
bXVsdGlwbGUgLSBkb2VzIG5vdCBoYXZlIGFuIGVmZmVjdCkgWDMxMCAKPj4+Pj4+Pj4gd2l0aCB0
d28gVHdpblJYLiBVSEQgaXMgImxpbnV4OyBHTlUgQysrIHZlcnNpb24gNS41LjAgMjAxNzEwMTA7
IAo+Pj4+Pj4+PiBCb29zdF8xMDU4MDA7IFVIRF8zLjE1LjAuZ2l0LTg5LWdmOTNjNTIyNyIgZnJv
bSB5ZXN0ZXJkYXkuIEZQR0EgCj4+Pj4+Pj4+IGltYWdlIGlzIGFsc28gZnJvbSB5ZXN0ZXJkYXkg
dXNpbmcgdGhlIGRvd25sb2FkIHNjcmlwdCAtIHdoZXJlIAo+Pj4+Pj4+PiBjYW4gSSBmaW5kIHRo
ZSB2ZXJzaW9uIG51bWJlcj8gSSBhbSBydW5uaW5nIGFuIHVwLXRvLWRhdGUgVWJ1bnR1IAo+Pj4+
Pj4+PiAxNi4wNC4KPj4+Pj4+PiBDb3VsZCB5b3UgdHJ5IHRoZSBwcmludCBhcyBhIGdldF9mcmFj
X3NlY3MoKSBhbmQgZ2V0X2Z1bGxfc2VjcygpIAo+Pj4+Pj4+IGluc3RlYWQ/wqDCoCBUbyBkaXNh
bWJpZ3VhdGUgd2hldGhlciB0aGlzIGlzIGFuIGFjdHVhbCBoYXJkd2FyZSAKPj4+Pj4+PiBjbG9j
ayBtYW5hZ2VtZW50Cj4+Pj4+Pj4gwqDCoCBpc3N1ZSBvciBqdXN0IGEgZm9ybWF0dGluZyBpc3N1
ZS4KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
Cj4+Pj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+Pj4+PiBodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPj4+
Pj4+Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+Pj4+IFVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tCj4+Pj4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPj4+Pj4KPj4+Pj4KPj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QKPj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+Pj4gaHR0cDovL2xp
c3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29t
Cj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KPj4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11
c2Vyc19saXN0cy5ldHR1cy5jb20KPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+PiBV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWls
bWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0Cj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+IGh0dHA6Ly9saXN0cy5ldHR1
cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0
cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0
dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
