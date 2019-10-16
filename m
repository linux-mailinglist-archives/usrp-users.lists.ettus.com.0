Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87495D9884
	for <lists+usrp-users@lfdr.de>; Wed, 16 Oct 2019 19:31:24 +0200 (CEST)
Received: from [::1] (port=56588 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKn8s-0003wC-Rz; Wed, 16 Oct 2019 13:31:22 -0400
Received: from sanddollar.geekisp.com ([216.168.135.167]:21196)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@balister.org>) id 1iKn8p-0003mr-4E
 for USRP-users@lists.ettus.com; Wed, 16 Oct 2019 13:31:19 -0400
Received: (qmail 7479 invoked by uid 1003); 16 Oct 2019 17:30:42 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 16 Oct 2019 17:30:42 -0000
To: "zcao@c3commsystems.com" <zcao@c3commsystems.com>,
 USRP-users <USRP-users@lists.ettus.com>
References: <28B45C9C-A4D1-4752-8921-25BFB5E5FF19@c3commsystems.com>
Autocrypt: addr=philip@balister.org; prefer-encrypt=mutual; keydata=
 mQENBE6PN4EBCADXwOSVOvTrJ370tH2RmiR22OuCBcKfnKTLztyV5zA0veDB1kmrIajh+sJe
 HWNqsib0v19S3wdrvqzKrztSfNAgUctvkAuTOloU81dmbAjDSge6nFxjzIIz6XjNvmP5xl9J
 rstPm4i4dhAs5436xf4Bh0vn3C/Bp4fKwXBSW/Xto7vuiuSK03ojon3F8O2WNEmKxHyubFP1
 2tNvXOp/PeAR4LTnYq6fdAAofvbpbPDBg8qICe6j1UXaIyU93IbW+bJp1RFbeakWxiTw+eQ2
 fVjG5XnubNX0YBlmjHDJhjeqV1uwkImNHlZknecLjT7g37vIMwz+PTfPIhmIGffzqtHlABEB
 AAG0JVBoaWxpcCBCYWxpc3RlciA8cGhpbGlwQGJhbGlzdGVyLm9yZz6JAT4EEwECACgCGyMG
 CwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJYM1D9BQkRKOdqAAoJEMDJd4rr0merDX4H/3Pr
 nYKDnml7LRiikoOTFJb4r7ub04skrkGI2DAYvRUPH110KXaan84Qo2Yl4r/ma15Lpqx+cdPR
 3KbFlSWyjgY6CMN/BclutsK4mFkoxnmhdYJvc5M2TDfZLxBPMTeQiHo0MwxUB5v81mv812bx
 YKfEOg3ndk7C/TE0Q8ZER7p6fU3ol/e0ilLyaCpd85nkEcOEI7BdBBGhKWii+Cwvv8g2ofQZ
 3wAsqQFp7PFxlEjo5Xc1QGqo7L+UlDG23QjUn33n+wZMZm9EUZFu1c1MAGZsvXiqKw8P07Mj
 yyf6h6EMVP8wME7gnkxsZkpKv04mSvKpDLIInmRW9ZlHXaJ4Yxi5AQ0ETo83gQEIAPs+ZC0R
 gF4blrRIiVHdkARncAxUwSUbti5Ku23dQ0iBizozh4YGucgW48gxsvJCkCc9s/4C9e3vYiCZ
 GVGC8x6Ll3vE7xwRQ/euVqJ0mXG7tNK1zAPpSgI6aooPSZCW7PBvwY8uMvzzCzP+EBd0+oA5
 uXQSEcyOJUYy4beferoHUiBjBkyNd+v2iaJf7KjAYYxJOcPvtnq/VL09hlmtCD5zghOn80rt
 LqF66BJkHmATopSWyor1qz7gmowdCkFkUJDNW7yJT1wVANqDd9P5A8vYhngwJTHsvXVftmvB
 gLiJjYuKst36G2AOHgm4ls5jRMa/k7jWue1RKM5LxzgBtLUAEQEAAYkBJQQYAQIADwIbDAUC
 WDNRbAUJESjn5AAKCRDAyXeK69Jnq1qYB/93aiBdenAuu0H/zGWEFFB14cdhDR4S4q0EbfXl
 1z9o3Irazw6WMtLe12zJ4/Xl41Mh/IH8/+AgDnigisrkKRN1TkiOGDUVnS0akkhML3ONbeFd
 ocYEwBAPDTxAaWNoyjDe/bORokSJn31cFoG6QYyzUct79npHorbaXW0zW+KC77Do53yUKQ8+
 icWpfiCMk1YzSHCr0y5NZNVxac9a0+IDzH/YBbNdJLNaMvXcuege1Qqz85pdR0P4XuCVRD2j
 ZAbcGJzZXlu9ZzpIHjtZoyF8paJRMQwzWEO3/Txksmm7K8eu8Tz2JVpjiOIj44MOTKoRGKjO
 6eUfr0u7CwnEyqiQ
Message-ID: <b6788eea-f03b-3648-91d0-61b8297ecb5a@balister.org>
Date: Wed, 16 Oct 2019 13:30:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <28B45C9C-A4D1-4752-8921-25BFB5E5FF19@c3commsystems.com>
Content-Language: en-US
Subject: Re: [USRP-users] E310 GPS time source?
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
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@balister.org>
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

T24gMTAvMTYvMTkgMTA6MzMgQU0sIHpjYW8tLS0gdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4gSGks
Cj4gCj4gVUhEIGxpYiBwcm92aWRlcyBhIGZ1bmN0aW9uLCBnZXRfdGltZV9sYXN0X3BwcygpLCB3
aGljaCBzdXBwb3NlIHRvIHByb3ZpZGVzIHRoZSB0aW1lIHN0YW1wIGZvciB0aGUgbGF0ZXN0IFBQ
UyByaWdodCBlZGdlLiBJIGFtIHdvbmRlcmluZyB3aGF0IGlzIHRoZSBzb3VyY2Ugb2YgdGhlIHRp
bWUgaW5mb3JtYXRpb24gdGhlIGFib3ZlIGZ1bmN0aW9uIHVzZXM/IAo+IAo+IFNwZWNpZmljYWxs
eSwgd2UgYXJlIGFpbWluZyBhdCBzeW5jaHJvbml6ZSBtdWx0aXBsZSBFMzEwIGRldmljZXMgZm9y
IGEgVERNQSBzeXN0ZW0uIEVhY2ggRTMxMCBpcyBzdGFuZGFsb25lIGFuZCBoYXMgbm8gbmV0d29y
ayBjb25uZWN0IHRvIGEgY29tbW9uIE5UUCBzZXJ2ZXIuIEZyb20gdGhlIHNjaGVtYXRpY3Mgb2Yg
RTMxMCwgaXQgc2VlbXMgdG8gbWUgdGhhdCB0aGUgR1BTIHJlY2VpdmVyIGNoaXAgb25seSBwcm92
aWRlcyB0aGUgUFBTIG91dHB1dCB0byB0aGUgRlBHQS4gSSBkaWRu4oCZdCBmaW5kIGFueSBoYXJk
d2FyZSBzdXBwb3J0IHRoYXQgYWxsb3dzIEUzMTAgdG8gb2J0YWluIHRoZSB0aW1lIGluZm9ybWF0
aW9uIGZyb20gR1BTLCBvdGhlciB0aGFuIHRoZSBlZGdlIG9mIGVhY2ggc2Vjb25kLiAKCkkga25v
dyB0aGUgRTMwMCBjYW4gc3luYyBOVFAgdGltZSB0byBHUFMgdGltZS4gU2VhcmNoaW5nIHRoZSBt
ZW1vcnkKYmFua3MgbWFrZXMgbWUgdGhpbmsgZ3BzZCBpcyBwcm92aWRpbmcgdGhlIHRpbWUgdG8g
bnRwZCBhbmQgdGhlIHBwcwpkcml2ZXIgaXMgZG9pbmcgdGhlIHBwcyBpbnRlcmZhY2UgdG8gbnRw
ZC4KCkkgZG9uJ3Qga25vdyBhYm91dCB0aGUgdWhkIHRpbWUgdGhvdWdoLgoKUGlobGlwCgo+IAo+
IEFtIEkgcmlnaHQ/IElmIHNvLCB3aGF0IHRpbWUgaW5mb3JtYXRpb24gdGhlIGZ1bmN0aW9uIGdl
dF90aW1lX2xhc3RfcHBzKCkgYWN0dWFsbHkgcmV0dXJucz8gSXMgdGhlcmUgYSB3YXkgdG8gc3lu
YyB0aGUgdGltZSBhY3Jvc3MgbXVsdGlwbGUgc3RhbmRhbG9uZSBFMzEwPwo+IAo+IFRoYW5rcywK
PiBBcm5vbGQgCj4gCj4gQy0zIENvbW0gU3lzdGVtcywgTExDCj4gMzEwMCBDbGFyZW5kb24gQmx2
ZC4sIFN1aXRlIDIwMAo+IEFybGluZ3RvbiwgVkEgMjIyMDEKPiBQaG9uZTogKDcwMykgODI5LTA1
ODgKPiBFbWFpbCA6IHpjYW9AYzNjb21tc3lzdGVtcy5jb20gPG1haWx0bzp6Y2FvQGMzY29tbXN5
c3RlbXMuY29tPgo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tCg==
