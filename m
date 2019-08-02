Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DC07F71E
	for <lists+usrp-users@lfdr.de>; Fri,  2 Aug 2019 14:43:28 +0200 (CEST)
Received: from [::1] (port=52738 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htWu6-0006Sk-Rr; Fri, 02 Aug 2019 08:43:26 -0400
Received: from sanddollar.geekisp.com ([216.168.135.167]:27941)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@balister.org>) id 1htWu1-0006NQ-5u
 for usrp-users@lists.ettus.com; Fri, 02 Aug 2019 08:43:21 -0400
Received: (qmail 20272 invoked by uid 1003); 2 Aug 2019 12:42:44 -0000
Received: from unknown (HELO ?192.168.11.100?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 2 Aug 2019 12:42:44 -0000
To: Nate Temple <nate.temple@ettus.com>, =?UTF-8?B?56aP5bO25bm56ZuE?=
 <mikio@dolphinsystem.jp>
References: <CABfZwcdKyO0+zUTd5oVcwrr=mAhScEroL_mwGDoEJ52+i+sAjg@mail.gmail.com>
 <CAL263iw7Rwb4n-FJvnqOqtgev8AAx9uNvutVbNf2Q__cL1C6Hg@mail.gmail.com>
 <CABfZwcdc9PR_dNbAaTbXaE7LxC6wE6+3mRuagXfkuyASHm0TrQ@mail.gmail.com>
 <CAL263iy15x0bAE6CK_LQbnvbLk86=o5k_sk7CJzG_K_bXF+TDA@mail.gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=philip@balister.org; prefer-encrypt=mutual; keydata=
 xsBNBE6PN4EBCADXwOSVOvTrJ370tH2RmiR22OuCBcKfnKTLztyV5zA0veDB1kmrIajh+sJe
 HWNqsib0v19S3wdrvqzKrztSfNAgUctvkAuTOloU81dmbAjDSge6nFxjzIIz6XjNvmP5xl9J
 rstPm4i4dhAs5436xf4Bh0vn3C/Bp4fKwXBSW/Xto7vuiuSK03ojon3F8O2WNEmKxHyubFP1
 2tNvXOp/PeAR4LTnYq6fdAAofvbpbPDBg8qICe6j1UXaIyU93IbW+bJp1RFbeakWxiTw+eQ2
 fVjG5XnubNX0YBlmjHDJhjeqV1uwkImNHlZknecLjT7g37vIMwz+PTfPIhmIGffzqtHlABEB
 AAHNJVBoaWxpcCBCYWxpc3RlciA8cGhpbGlwQGJhbGlzdGVyLm9yZz7CwH4EEwECACgCGyMG
 CwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJYM1D9BQkRKOdqAAoJEMDJd4rr0merDX4H/3Pr
 nYKDnml7LRiikoOTFJb4r7ub04skrkGI2DAYvRUPH110KXaan84Qo2Yl4r/ma15Lpqx+cdPR
 3KbFlSWyjgY6CMN/BclutsK4mFkoxnmhdYJvc5M2TDfZLxBPMTeQiHo0MwxUB5v81mv812bx
 YKfEOg3ndk7C/TE0Q8ZER7p6fU3ol/e0ilLyaCpd85nkEcOEI7BdBBGhKWii+Cwvv8g2ofQZ
 3wAsqQFp7PFxlEjo5Xc1QGqo7L+UlDG23QjUn33n+wZMZm9EUZFu1c1MAGZsvXiqKw8P07Mj
 yyf6h6EMVP8wME7gnkxsZkpKv04mSvKpDLIInmRW9ZlHXaJ4YxjOwE0ETo83gQEIAPs+ZC0R
 gF4blrRIiVHdkARncAxUwSUbti5Ku23dQ0iBizozh4YGucgW48gxsvJCkCc9s/4C9e3vYiCZ
 GVGC8x6Ll3vE7xwRQ/euVqJ0mXG7tNK1zAPpSgI6aooPSZCW7PBvwY8uMvzzCzP+EBd0+oA5
 uXQSEcyOJUYy4beferoHUiBjBkyNd+v2iaJf7KjAYYxJOcPvtnq/VL09hlmtCD5zghOn80rt
 LqF66BJkHmATopSWyor1qz7gmowdCkFkUJDNW7yJT1wVANqDd9P5A8vYhngwJTHsvXVftmvB
 gLiJjYuKst36G2AOHgm4ls5jRMa/k7jWue1RKM5LxzgBtLUAEQEAAcLAZQQYAQIADwIbDAUC
 WDNRbAUJESjn5AAKCRDAyXeK69Jnq1qYB/93aiBdenAuu0H/zGWEFFB14cdhDR4S4q0EbfXl
 1z9o3Irazw6WMtLe12zJ4/Xl41Mh/IH8/+AgDnigisrkKRN1TkiOGDUVnS0akkhML3ONbeFd
 ocYEwBAPDTxAaWNoyjDe/bORokSJn31cFoG6QYyzUct79npHorbaXW0zW+KC77Do53yUKQ8+
 icWpfiCMk1YzSHCr0y5NZNVxac9a0+IDzH/YBbNdJLNaMvXcuege1Qqz85pdR0P4XuCVRD2j
 ZAbcGJzZXlu9ZzpIHjtZoyF8paJRMQwzWEO3/Txksmm7K8eu8Tz2JVpjiOIj44MOTKoRGKjO
 6eUfr0u7CwnEyqiQ
Message-ID: <507c68a0-af4c-180a-5385-4fbdf204671d@balister.org>
Date: Fri, 2 Aug 2019 08:42:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <CAL263iy15x0bAE6CK_LQbnvbLk86=o5k_sk7CJzG_K_bXF+TDA@mail.gmail.com>
Content-Language: en-MW
Subject: Re: [USRP-users] cmake error : Cross-Compiling GNU Radio on Ubuntu
 16.04
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

T24gMDgvMDEvMjAxOSAxMDo1OCBQTSwgTmF0ZSBUZW1wbGUgdmlhIFVTUlAtdXNlcnMgd3JvdGU6
Cj4gSGksCj4gCj4gSSBob3BlIHRvIGhhdmUgdGhlIEUzMTAgdmVyc2lvbiBwb3N0ZWQgdG9tb3Jy
b3cuIERvbid0IGhhdmUgYSBmaXJtIHRpbWVsaW5lCj4gZm9yIHRoZSBFMzIwL04zeHggdmVyc2lv
biB5ZXQuCj4gCj4gVGhlIHByb2Nlc3MgaXMgbW9zdGx5IHRoZSBzYW1lLCBleGNlcHQgeW91IHNo
b3VsZCBub3QgdXNlIHJmbm9jLWRldmVsLCBidXQKPiBpbnN0ZWFkIHVzZSBhIG1vZGVybiBVSEQg
dmVyc2lvbiBzdWNoIGFzIHYzLjE0LjEuMCwgYW5kIHRoZW4gZHVyaW5nIHRoZQo+IGNtYWtlIGNv
bmZpZ3VyYXRpb24gc3RlcCwgcGFzcyB0aGUgYXJnIC1ERU5BQkxFX1JGTk9DPU9OLgo+IAo+IFlv
dSBjYW4gZmV0Y2ggdGhlIEUzMjAgU0RLIHVzaW5nIHVoZF9pbWFnZXNfZG93bmxvYWRlciB3aXRo
IHRoZSBjb21tYW5kCj4gKHdpdGggVUhEIDMuMTQuMS4wIG9uIHlvdXIgaG9zdCk6Cj4gCj4gdWhk
X2ltYWdlc19kb3dubG9hZGVyIC10IHNkayAtdCBlMzIwCgpXaGF0IGlmIEkgaGF2ZW4ndCBpbnN0
YWxsZWQgdWhkIG9uIHRoZSBtYWNoaW5lIEkgcGxhbiB0byBkZXZlbG9wbWVudAp3b3JrIG9uPwoK
UGhpbGlwCgo+IAo+IEkgd291bGQgcmVjb21tZW5kIHRvIHVzZSBtYWludC0zLjcgZm9yIHRoZSBH
UiB2ZXJzaW9uIHdpdGggdGhlIEUzMjAuCj4gCj4gCj4gUmVnYXJkcywKPiBOYXRlIFRlbXBsZQo+
IAo+IE9uIFRodSwgQXVnIDEsIDIwMTkgYXQgNzo1MyBQTSDnpo/ls7blubnpm4QgPG1pa2lvQGRv
bHBoaW5zeXN0ZW0uanA+IHdyb3RlOgo+IAo+PiBIaSBOYXRlCj4+IFRoYW5rIHlvdSBmb3IgYWx3
YXlzIHlvdXIgc3VwcG9ydCBhbmQgcXVpY2sgcmVwbHkuCj4+Cj4+PiBBcmUgeW91IHVzaW5nIHRo
ZSBFMzIwIFNESz8KPj4gTm8sIEkgdXNlIHRoZSAqRTMxMCBTREsqLgo+PiBiYWNhdXNlIEkgYW0g
dHJhaW5pbmcgdG8gZ2V0IHVzZWQgdG8gYnVpbGQgdGhlIFVIRCBhbmQgR1IgZm9yIGNyb3NzCj4+
IGNvbXBpbGluZyBlbnZpcm9ubWVudC4KPj4gbmV4dCBzdGVwLCBJIHdpbGwgdXNlIHRoZSAqRTMy
MCBTREsqLgo+Pgo+Pj4gQWxzbyB0aGF0IGFwcCBub3RlIGlzIG91dGRhdGVkLCBhbmQgSSB3aWxs
IGJlIHBvc3RlZCBhbiB1cGRhdGVkIHZlcnNpb24KPj4gc29vbi4gQW5vdGhlciBhcHAgbm90ZSB0
aGF0IGNvdmVycyB0aGUgRTMyMC9OM3h4IHdpbGwgZm9sbG93Lgo+Pgo+PiBPaCEhIQo+PiBJIGhh
dmUgbm8gd29yZHMgdG8gdGhhbmsgeW91Lgo+PiBXaGVuIGRvIHlvdSB0aGluayB0aGF0IHdpbGwg
YmU/Cj4+Cj4+IFRoYW5rcy4KPj4KPiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlz
dGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0
aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
