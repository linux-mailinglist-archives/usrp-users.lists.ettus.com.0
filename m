Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3787DE4F24
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2019 16:32:24 +0200 (CEST)
Received: from [::1] (port=54922 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iO0dX-0003Pn-Bm; Fri, 25 Oct 2019 10:32:19 -0400
Received: from neon-v1.ccupm.upm.es ([138.100.198.71]:34978)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <pablo.mdiaz@alumnos.upm.es>)
 id 1iO0dT-0003Il-Ap
 for USRP-users@lists.ettus.com; Fri, 25 Oct 2019 10:32:15 -0400
Received: from www.upm.es (webmail01.dcupm [10.20.20.20])
 by neon-v1.ccupm.upm.es (8.14.4/8.14.4/neon-v1-002) with ESMTP id
 x9PEVRQv020002; Fri, 25 Oct 2019 16:31:27 +0200
MIME-Version: 1.0
Date: Fri, 25 Oct 2019 16:31:27 +0200
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5DAFA817.2020403@gmail.com>
References: <d92a0a15-a78c-a63d-8ed1-54f475f1be61@alumnos.upm.es>
 <75DDE278-D19C-4F01-91B6-84FFF9D97CE9@gmail.com>
 <e3f65254-948f-054c-5702-c453e4700b4f@alumnos.upm.es>
 <5DACCFE8.6020102@gmail.com>
 <4f85e58a-81e2-97a4-e7d5-9f6f2cd826d4@alumnos.upm.es>
 <5DADF682.7080202@gmail.com>
 <3d81d230-eeea-9621-046f-b21f4615007a@alumnos.upm.es>
 <5DAFA817.2020403@gmail.com>
Message-ID: <940843aff248b2a30f7bca809e8a6177@alumnos.upm.es>
X-Sender: pablo.mdiaz@alumnos.upm.es
User-Agent: Webmail UPM Alumnos
X-Originating-IP: 138.100.9.10
X-BitDefender-Scanner: Clean,
 Agent: BitDefender Milter 3.1.6 on neon-v1.ccupm.upm.es, sigver: 7.82693
Subject: Re: [USRP-users] Setting tune freq error
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
From: "pablo.mdiaz via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "pablo.mdiaz" <pablo.mdiaz@alumnos.upm.es>
Cc: USRP-users@lists.ettus.com
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

CkFuc3dlcmluZyB5b3VyIHF1ZXN0aW9uczoKCiAgICBBIC0gT3VyIFgzMTAgaXMgY29ubmVjdGVk
IHZpYSBQQ0ktRSwgc28gdGhlIG9ubHkgYnVmZmVyIHdlIGhhdmUgaXMgCnRoZSBvbmUgdXNlZCBp
biByZWN2KCkgZnVuY3Rpb24uCiAgICBCIC0gT3VyIHN5c3RlbSBpcyBub3QgdmlydHVhbGl6ZWQs
IHRoZSByZWNlaXZlciBjYXJkIGlzIGRpcmVjdGx5IApjb25uZWN0ZWQgdG8gdGhlIFNEUi4KCldl
IGhhdmUgcHJvYmxlbXMgd2l0aCBnbnUtY29tcGFuaW9uIG9wZW5pbmcgeW91ciAuZ3JjIGZpbGUg
LCBzbyB3ZSAKY291bGRuJ3QgdGVzdCBpdC4gV2Ugc3VzcGVjdCByZWNvbXBpbGluZyBnbnVyYWRp
byB3aWxsIGZpeCB0aGlzIGlzc3VlLgoKSSB3b3VsZCBsaWtlIHRvIGFzayB5b3UgYW5vdGhlciBx
dWVzdGlvbjoKCiAgICAtIFRoZSB2YWx1ZSByZXR1cm5lZCBmcm9tIGdldF9tYXhfbnVtX3NhbXBz
KCkgaXMgMTAyMCBzYW1wbGVzIHBlciAKcGFja2V0LiBJcyB0aGlzIHZhbHVlIGEgY29uc3RhbnQg
ZGVwZW5kaW5nIG9uIHRoZSBoYXJkd2FyZT8gSXQgd291bGQgYmUgCmdyZWF0IGZvciB1cyB0byBy
ZWFjaCAxMDI0IHNhbXBsZXMgcGVyIHBhY2tldC4KClRoYW5rcyBiZWZvcmVoYW5kLgoKCj4+IEVs
IDIxLzEwLzIwMTkgYSBsYXMgMjA6MTgsIE1hcmN1cyBELiBMZWVjaCBlc2NyaWJpw7M6Cgo+IEkg
dHJpZWQgdGhlIGF0dGFjaGVkIGZsb3ctZ3JhcGgsIGFnYWluc3QgYW4gWDMxMCwgd2l0aCBVSEQg
Z2l0IGNvbW1pdDoKPiBjNTJmM2Y0MTgwNjYyMmM5NTU3M2RlMjFiZTA0MmY5NjZmNjc1NTQzCj4g
Cj4gQW5kIGNvdWxkbid0IGdldCBpdCB0byBmYWlsLgo+IAo+IE1ha2Ugc3VyZSB5b3UgcmVzaXpl
IHlvdXIgc29ja2V0IGJ1ZmZlcnMgdG8gdGhlIHNpemUgcmVjb21tZW5kZWQgLS0gaWYKPiB0aGV5
IGFyZW4ndCBiaWcgZW5vdWdoLCBVSEQgd2lsbCBwcm9kdWNlIGEgbWVzc2FnZSBpbmRpY2F0aW5n
Cj4gICBob3cgdG8gcmVzaXplIHRoZW0gb24geW91ciBzeXN0ZW0uCj4gCj4gU28sIG1vcmUgcXVl
c3Rpb25zOgo+IAo+ICAgKEEpIFdoYXQgdHlwZSBvZiBldGhlcm5ldCBpbnRlcmZhY2UgZG8geW91
IGhhdmU/Cj4gICAoQikgSXMgdGhpcyBpbiBhIGhhcmR3YXJlIG9yIHZpcnR1YWwgZW52aXJvbm1l
bnQ/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlz
dHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
