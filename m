Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F351F24C73C
	for <lists+usrp-users@lfdr.de>; Thu, 20 Aug 2020 23:42:28 +0200 (CEST)
Received: from [::1] (port=44816 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8sKF-0000Qq-Vh; Thu, 20 Aug 2020 17:42:23 -0400
Received: from starfish.geekisp.com ([216.168.135.166]:2582)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1k8sKB-0000Mf-H1
 for usrp-users@lists.ettus.com; Thu, 20 Aug 2020 17:42:19 -0400
Received: (qmail 25466 invoked by uid 1003); 20 Aug 2020 21:37:13 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 20 Aug 2020 21:37:13 -0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>,
 "Carey, Samuel Craig" <sccarey@sandia.gov>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <24ea3a0f1617438687b7ae32d37d5e66@ES05AMSNLNT.srn.sandia.gov>
 <CAL7q81vu0QcrQueh0BU_qPyF8ZQqyey1Y+ThNcDg5xQJTBkWqA@mail.gmail.com>
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
Message-ID: <a4e050e4-47ce-2b6a-b726-a0ea12fb70b6@balister.org>
Date: Thu, 20 Aug 2020 17:41:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAL7q81vu0QcrQueh0BU_qPyF8ZQqyey1Y+ThNcDg5xQJTBkWqA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] gr-ettus / GNU Radio 3.8
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

T24gOC8xOS8yMCAxMDo1NyBQTSwgSm9uYXRob24gUGVuZGx1bSB2aWEgVVNSUC11c2VycyB3cm90
ZToKPiBIaSBTYW0sCj4gCj4gVGhhdCBicmFuY2ggaXMgc3RpbGwgYSB3b3JrIGluIHByb2dyZXNz
LgoKQW55IGVzdGltYXRlIHdoZW4gaXQgd2lsbCBiZSByZWFkeT8KClBoaWxpcAoKPiAKPiBKb25h
dGhvbgo+IAo+IE9uIFN1biwgQXVnIDksIDIwMjAgYXQgNjoxMiBQTSBDYXJleSwgU2FtdWVsIENy
YWlnIHZpYSBVU1JQLXVzZXJzIDwKPiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6
Cj4gCj4+IEhvd2R5LAo+Pgo+Pgo+Pgo+PiBJIHNlZSB0aGVyZeKAmXMgYSBnci1ldHR1cyBtYWlu
dC0zLjggYnJhbmNoIGZvciBhZGRpbmcgR05VIFJhZGlvIDMuOAo+PiBzdXBwb3J0LCB3aGljaCBz
ZWVtcyB0byBiZSBmaW5pc2hlZCBhcyBvZiB0aGlzIGNvbW1pdDoKPj4KPj4KPj4gaHR0cHM6Ly9n
aXRodWIuY29tL0V0dHVzUmVzZWFyY2gvZ3ItZXR0dXMvY29tbWl0L2I2OTI2MDY1NWU5NzQ3ODZl
YTZlNjExYmQ5MWFiNTc4YjEzZWM3MmEKPj4KPj4KPj4KPj4gSXMgdGhpcyBicmFuY2ggZ29vZCB0
byBnbz8KPj4KPj4gQXJlIHRoZXJlIGFueSBrbm93biBkcmF3YmFja3M/Cj4+Cj4+IFdpbGwgSSB0
aGVvcmV0aWNhbGx5IGJlIGFibGUgdG8gdXNlIHRoaXMgaW4gdGhlIGNvbnRleHQgb2YgcmZub2Mv
ZTMxMAo+PiBjcm9zcy1jb21waWxpbmcsIGV0Yy4/Cj4+Cj4+Cj4+Cj4+IEkgYXNrIGJlY2F1c2Ug
dGhlcmUgYXJlIGEgY291cGxlIG9wZW4gaXNzdWUgYWJvdXQgMy44IHdpdGhvdXQgYW55IHJlcGxp
ZXMKPj4gKCMzNywgIzQ2KSwgc28gSeKAmW0gd2FyeSBvZiBpbnZlc3RpbmcgdGltZSBpZiBpdOKA
mXMgbm90IHJlYWR5Lgo+Pgo+Pgo+Pgo+PiBUaGFua3MsCj4+Cj4+IFNhbQo+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdAo+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiBodHRwOi8vbGlzdHMuZXR0
dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPj4KPiAK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRw
Oi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1
cy5jb20KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6
Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVz
LmNvbQo=
