Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 483AB10E878
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2019 11:15:29 +0100 (CET)
Received: from [::1] (port=55910 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ibijg-0002yy-79; Mon, 02 Dec 2019 05:15:20 -0500
Received: from mailgate.nsl.eu.com ([77.111.227.135]:55024)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david.scott@nsl.eu.com>)
 id 1ibijd-0002vX-Cz
 for usrp-users@lists.ettus.com; Mon, 02 Dec 2019 05:15:17 -0500
Received: from mailgate.nsl.eu.com ([77.111.227.135] helo=[192.168.16.148])
 by mailgate.nsl.eu.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <david.scott@nsl.eu.com>)
 id 1ibiix-0005aH-Qd
 for usrp-users@lists.ettus.com; Mon, 02 Dec 2019 10:14:35 +0000
To: usrp-users@lists.ettus.com
Message-ID: <e4318420-c94d-2511-d415-e4a6fb5c0dca@nsl.eu.com>
Date: Mon, 2 Dec 2019 10:14:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: en-GB
Subject: [USRP-users] Spectral flatness with USRP x310 and TwinRX
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
From: David Scott via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Scott <david.scott@nsl.eu.com>
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

SGkgYWxsLAoKV2UgYXJlIG1ha2luZyB1c2Ugb2YgYSBVU1JQIFgzMTAgd2l0aCBUd2luUlggZGF1
Z2h0ZXJib2FyZCB0byBjYXB0dXJlIApkYXRhIG9uIDIgY2hhaW5zIGF0IHRoZSBzYW1lIHRpbWUu
IEZvciB0aGUgaW50ZW5kZWQgdXNlIG9mIHRoZSBkYXRhIGl0IAppcyBpbXBvcnRhbnQgdGhhdCB0
aGUgc3BlY3RydW0gaXMgdmVyeSBmbGF0LiBCZWxvdyBpcyBhIHNjcmVlbnNob3Qgb2YgCnRoZSAy
IGNoYWlucyB3aGVuIGZlZCB3aXRoIEFXR04gZnJvbSBhIHNpZ25hbCBnZW5lcmF0b3I6CgpodHRw
czovL2ltZ3VyLmNvbS9hL1I3WjFCeWEKCkFzIHlvdSBjYW4gc2VlIHRoZXJlIGlzIG92ZXIgMmRC
IGRyb3AsIG1vcmUgcHJvbm91bmNlZCBvbiB0aGUgc2Vjb25kIApjaGFpbi4gVGhpcyBkYXRhIHdh
cyByZWNvcmRlZCB3aXRoIGEgbW9kaWZpZWQgdmVyc2lvbiBvZiAKcnhfbXVsdGlfc2FtcGxlcyAo
dGhlIG9ubHkgbW9kaWZpY2F0aW9ucyB3ZXJlIHRvIGFsbG93IGZyZXF1ZW5jeSBhbmQgCmdhaW4g
c2VsZWN0aW9uIGZvciBlYWNoIGNoYW5uZWwsIGFuZCB0byB3cml0ZSB0aGUgY29sbGVjdGVkIGRh
dGEgdG8gZmlsZSAKZm9yIGFuYWx5c2lzLCBtaW1pY2tpbmcgdGhlIHByb2Nlc3MgY2FycmllZCBv
dXQgYnkgb3VyIGFwcGxpY2F0aW9uKS4gV2UgCmhhdmUgcGxheWVkIGFyb3VuZCB3aXRoIGNoYW5n
aW5nIHRoZSBsb3diYW5kIHRocmVzaG9sZHMgaW4gCnR3aW5yeF9leHBlcnRzLmNwcCBhbmQgbW9k
aWZ5aW5nIHRoZSBwcmVhbXAgc2VsZWN0aW9uIGluIAp0d2lucnhfY3RybC5jcHAsIGluIHRoZSBo
b3BlIHRoYXQgd2UgY291bGQgcHJvZHVjZSBhIGZsYXR0ZXIgc3BlY3RydW0sIApidXQgdGhpcyBo
YXMgcHJvdmVuIGZydWl0bGVzcyBzbyBmYXIuCgpXZSBhbHNvIGhhdmUgYSBVQlgxNjAgZGF1Z2h0
ZXJib2FyZCB3aGljaCBwcm9kdWNlcyBhIG11Y2ggZmxhdHRlciAKc3BlY3RydW0gdW5kZXIgdGhl
IHNhbWUgdGVzdCBjb25kaXRpb25zIChzZWUgc2NyZWVuc2hvdCBiZWxvdyk6CgpodHRwczovL2lt
Z3VyLmNvbS9hL3MxQXNicVcKClVuZm9ydHVuYXRlbHksIHRoZSBVQlggaXMgc2luZ2xlIGNoYWlu
IGFuZCB3ZSByZXF1aXJlIDIgY2hhaW5zLgoKSXMgdGhlcmUgYW55dGhpbmcgd2UgYXJlIG1pc3Np
bmc/IFNvbWUgd2F5IHRoYXQgd2UgY2FuIGNvbmZpZ3VyZSB0aGUgClR3aW5SWCBzbyB0aGF0IHRo
ZSBzcGVjdHJ1bSBpcyBzaW1pbGFyIHRvIHRoZSBVQlgtMTYwPyBIYXZlIGFueSBvZiB5b3UgCmNv
bWUgYWNyb3NzIHRoaXMgYmVmb3JlPyBXZSByZWFsaXNlIHRoYXQgd2UgY291bGQgdXNlIHR3byBV
QlgtMTYwJ3MgYnV0IAp3b3VsZCByYXRoZXIgbm90IHB1cmNoYXNlIGFuIGV4dHJhIG9uZSBpZiB3
ZSBjYW4gY29uZmlndXJlIHRoZSBUd2luUlggCmFub3RoZXIgd2F5LgoKVGhlIGNvbW1hbmQgZ2l2
ZW4gdG8gcnhfbXVsdGlfc2FtcGxlcyBpcyA6CgogwqDCoMKgIC4vcnhfbXVsdGlfc2FtcGxlcyAt
LXN1YmRldj0iQTowIEE6MSIgLS1idz0yNWU2IC0tcmF0ZT0yNWU2IAotLXN5bmM9bm93IC0tbnNh
bXBzPTEwMDAwMAoKV2UgaGF2ZSB0ZXN0ZWQgdGhpcyB3aXRoIHNldmVyYWwgdmVyc2lvbnMgb2Yg
VUhELCBpbmNsdWRpbmcgMy4xMSwgMy4xNCAKYW5kIDMuMTUgYW5kIG9ic2VydmVkIG5vIGRpZmZl
cmVuY2UgYmV0d2VlbiB2ZXJzaW9ucy4KCkFueSBhZHZpY2UgeW91IGNhbiBwcm92aWRlIGlzIG11
Y2ggYXBwcmVjaWF0ZWQuCgpNYW55IHRoYW5rcywKCkRhdmlkCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9s
aXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
