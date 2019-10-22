Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49097E0909
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 18:36:27 +0200 (CEST)
Received: from [::1] (port=42512 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMx8w-0004S8-Rw; Tue, 22 Oct 2019 12:36:22 -0400
Received: from neon-v2.ccupm.upm.es ([138.100.198.70]:53425)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <pablo.mdiaz@alumnos.upm.es>)
 id 1iMx8s-0004NP-9g
 for USRP-users@lists.ettus.com; Tue, 22 Oct 2019 12:36:18 -0400
Received: from [192.168.1.163] (2.154.186.166.dyn.user.ono.com [2.154.186.166])
 (user=pablo.mdiaz@alumnos.upm.es mech=PLAIN bits=0)
 by neon-v2.ccupm.upm.es (8.14.4/8.14.4/neon-v2-001) with ESMTP id
 x9MGZZuY008059
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT); 
 Tue, 22 Oct 2019 18:35:35 +0200
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <d92a0a15-a78c-a63d-8ed1-54f475f1be61@alumnos.upm.es>
 <75DDE278-D19C-4F01-91B6-84FFF9D97CE9@gmail.com>
 <e3f65254-948f-054c-5702-c453e4700b4f@alumnos.upm.es>
 <5DACCFE8.6020102@gmail.com>
 <4f85e58a-81e2-97a4-e7d5-9f6f2cd826d4@alumnos.upm.es>
 <5DADF682.7080202@gmail.com>
Message-ID: <3d81d230-eeea-9621-046f-b21f4615007a@alumnos.upm.es>
Date: Tue, 22 Oct 2019 18:35:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5DADF682.7080202@gmail.com>
Content-Language: es-ES
X-BitDefender-Scanner: Clean,
 Agent: BitDefender Milter 3.1.6 on neon-v2.ccupm.upm.es, sigver: 7.82664
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
From: =?utf-8?q?Pablo_Mart=C3=ADnez_de_Leiva_D=C3=ADaz_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Pablo_Mart=c3=adnez_de_Leiva_D=c3=adaz?=
 <pablo.mdiaz@alumnos.upm.es>
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

V2UgY2FuJ3QgZGV0ZXJtaW5lIGhvdyBtdWNoIGRpc3RhbmNlLCBmcm9tIGN1cnJlbnQgZnJlcXVl
bmN5LCBpcyBlbm91Z2ggCnRvIHJlcHJvZHVjZSB0aGUgZXJyb3IuCgpJdCBzZWVtcyB0aGF0IGl0
IGFsc28gZGVwZW5kcyBvZiB3aGljaCBpcyB0aGUgImZpcnN0IHR1bmUiIGZyZXF1ZW5jeSwgCmZv
ciBleGFtcGxlOgoKIMKgwqDCoCAtIGlmIHRoZSBmaXJzdCB0dW5lIGZyZXEgaXMgMTAwTWh6LCB3
aGVuIHlvdSB0cnkgdG8gY2hhbmdlIGl0IHRvIAo1MDBNaHogeW91IGdldCB0aGUgZXJyb3IuCgog
wqDCoMKgIC0gYnV0LCBpZiB0aGUgZmlyc3QgdHVuZSBmcmVxIGlzIDZHaHosIHlvdSBjYW4gY2hh
bmdlIGl0IHRvIDVHaHogCndpdGhvdXQgcHJvYmxlbS4KCkluIHRoaXMgY2FzZXMsIHRoZSBkaXN0
YW5jZSBiZXR3ZWVuIHRoZSBuZXcgZnJlcSBhbmQgdGhlIGZpcnN0IG9uZSBpcyAKZGlmZmVyZW50
LgoKRWwgMjEvMTAvMjAxOSBhIGxhcyAyMDoxOCwgTWFyY3VzIEQuIExlZWNoIGVzY3JpYmnDszoK
PiBIYXZlIHlvdSBjaGFyYWN0ZXJpemVkIGhvdyBmYXIgYXdheSB0aGUgZnJlcXVlbmN5IHN0ZXAg
bmVlZHMgdG8gYmUgCj4gYmVmb3JlIHRoaXMgaXNzdWUgc2hvd3MgdXA/Cj4KPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
