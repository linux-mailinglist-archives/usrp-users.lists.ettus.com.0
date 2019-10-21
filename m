Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 971E0DF4F0
	for <lists+usrp-users@lfdr.de>; Mon, 21 Oct 2019 20:18:08 +0200 (CEST)
Received: from [::1] (port=36940 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMcFp-0001N1-Ou; Mon, 21 Oct 2019 14:18:05 -0400
Received: from neon-v1.ccupm.upm.es ([138.100.198.71]:54184)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <pablo.mdiaz@alumnos.upm.es>)
 id 1iMcFk-0001FK-Ie
 for USRP-users@lists.ettus.com; Mon, 21 Oct 2019 14:18:00 -0400
Received: from [192.168.1.163] (2.154.186.166.dyn.user.ono.com [2.154.186.166])
 (user=pablo.mdiaz@alumnos.upm.es mech=PLAIN bits=0)
 by neon-v1.ccupm.upm.es (8.14.4/8.14.4/neon-v1-002) with ESMTP id
 x9LIHG9n028526
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT); 
 Mon, 21 Oct 2019 20:17:16 +0200
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <d92a0a15-a78c-a63d-8ed1-54f475f1be61@alumnos.upm.es>
 <75DDE278-D19C-4F01-91B6-84FFF9D97CE9@gmail.com>
 <e3f65254-948f-054c-5702-c453e4700b4f@alumnos.upm.es>
 <5DACCFE8.6020102@gmail.com>
Message-ID: <4f85e58a-81e2-97a4-e7d5-9f6f2cd826d4@alumnos.upm.es>
Date: Mon, 21 Oct 2019 20:17:15 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5DACCFE8.6020102@gmail.com>
Content-Language: es-ES
X-BitDefender-Scanner: Clean,
 Agent: BitDefender Milter 3.1.6 on neon-v1.ccupm.upm.es, sigver: 7.82657
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

Tm8sIHRoZSBwcm9ibGVtIHJlbWFpbnMgZXZlbiB3aXRoIHNsZWVwcyBiZWZvcmUgc2V0dGluZyBl
dmVyeSBjaGFubmVsLgoKT25lIHRoaW5nIGkgaGF2ZSBjb21lIG91dCBpcyB0aGF0IHRoZSBmaXJz
dCB0dW5uaW5nLCB3aGVuIHRoZSByYWRpbyBoYXZlIAphIGRlZmF1bHQgdmFsdWUgb2YgMUdoeiwg
YWx3YXlzIGNoYW5nZSB0aGUgZnJlcXVlbmN5IHdpdGhvdXQgZXJyb3IgCnJlZ2FyZGxlc3Mgb2Yg
dGhlIHRhcmdldCBmcmVxdWVuY3kuCgpFbCAyMC8xMC8yMDE5IGEgbGFzIDIzOjIxLCBNYXJjdXMg
RC4gTGVlY2ggZXNjcmliacOzOgo+IE9uIDEwLzIwLzIwMTkgMDQ6MzQgUE0sIFBhYmxvIE1hcnTD
rW5leiBkZSBMZWl2YSBEw61heiB3cm90ZToKPj4gV2UgdGhpbmsgd2UgYXJlIHVzaW5nIGJvdGgg
Y2FyZHMuIFRoaXMgaXMgbXkgdWhkX3VzcnBfcHJvYmU6Cj4+Cj4+Cj4gSWYgeW91IGNoYW5nZSB5
b3VyIGNvZGUgdG8gaW5zZXJ0IGEgc21hbGwgc2xlZXAgKGxldCdzIHNheSAwLjAxc2VjKSAKPiB3
aGlsZSB0dW5pbmcgYWxsIGNoYW5uZWxzLCBkb2VzIHRoZSBpc3N1ZQo+IMKgIGdvIGF3YXk/Cj4K
Pgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlz
dHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
