Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58467B3244
	for <lists+usrp-users@lfdr.de>; Sun, 15 Sep 2019 23:40:27 +0200 (CEST)
Received: from [::1] (port=45476 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9cFs-0008UG-TU; Sun, 15 Sep 2019 17:40:24 -0400
Received: from starfish.geekisp.com ([216.168.135.166]:37472)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@balister.org>) id 1i9cFm-0008Pg-Pv
 for USRP-users@lists.ettus.com; Sun, 15 Sep 2019 17:40:18 -0400
Received: (qmail 14447 invoked by uid 1003); 15 Sep 2019 21:39:34 -0000
Received: from unknown (HELO ?172.20.8.168?) (philip@opensdr.com@69.47.194.20)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted)
 SMTP; 15 Sep 2019 21:39:34 -0000
To: Marcus D Leech <patchvonbraun@gmail.com>
References: <CAOCyOuMCrkq4QrLEHpPFK-K8nRhX-FSTibcHyP5j2iJ4o=9S2g@mail.gmail.com>
 <059c1852-c2bc-c352-0b63-8f2f7e6de861@balister.org>
 <A31D6066-827F-4837-AE6F-8C77E6615147@gmail.com>
Openpgp: preference=signencrypt
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
Message-ID: <bd2483ad-ac94-5895-0a82-1a9ae4105cfd@balister.org>
Date: Sun, 15 Sep 2019 17:39:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <A31D6066-827F-4837-AE6F-8C77E6615147@gmail.com>
Content-Language: en-MW
Subject: Re: [USRP-users] cannot load fpga to b205mini from wandboard
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
Cc: USRP-users@lists.ettus.com
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

T24gOS8xNS8xOSAxMTozOCBBTSwgTWFyY3VzIEQgTGVlY2ggdmlhIFVTUlAtdXNlcnMgd3JvdGU6
Cj4gTXkgZ3Vlc3MgaXMgdGhlIFdhbmRib2FyZCBkb2VzbuKAmXQgc3VwcGx5IGVub3VnaCBwb3dl
ciwgc28gaXTigJlzIGdldHRpbmcgdGFrZW4gb2ZmIHRoZSBidXMuIAo+IAo+IE1pZ2h0IG5lZWQg
b25lIG9mIHRob3NlIFkgY2FibGVzIHRvIHN1cHBseSBleHRlcm5hbCBwb3dlci4gCgpBbHNvIGEg
Z29vZCBndWVzcywgbXkgcGkgdGhpbmcgaGFzIGlzc3VlcyB3aXRoIHRoZSBiMjA1IGFsc28uCgpQ
aGlsaXAKCj4gCj4gU2VudCBmcm9tIG15IGlQaG9uZQo+IAo+PiBPbiBTZXAgMTUsIDIwMTksIGF0
IDg6MDkgQU0sIFBoaWxpcCBCYWxpc3RlciB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20+IHdyb3RlOgo+Pgo+Pj4gT24gOS8xNS8xOSA3OjU1IEFNLCBXYWVsIEFsaSB2
aWEgVVNSUC11c2VycyB3cm90ZToKPj4+IERlYXIgYWxsLAo+Pj4gcGxlYXNlIGhlbHAgbWUgd2l0
aCB0aGlzIGlzc3VlLAo+Pj4KPj4+IEkndmUgYnVpbHQgYSBwb2t5IGRpc3Ryby4gd2l0aCB5b2N0
byBwcm9qZWN0IGZvciB3YW5kYm9hcmQgYW5kIHVoZCBwYWNrYWdlCj4+PiBpcyBwcmUtaW5zdGFs
bGVkLgo+Pj4KPj4+IHRoZSBwcm9ibGVtIGlzLCB3aGVuIEkgdHJpZWQgdG8gdXNlICJ1aGRfdXNy
cF9wcm9iZSIgIHdpdGggKHRocmVlIGRpZmZlcmVudAo+Pj4gdXNycCAyMDVtaW5pKSBJIGZhY2Vk
IHRoZSBmb2xsb3dpbmcgZXJyb3IKPj4+Cj4+PiByb290QHdhbmRib2FyZDp+IyB1aGRfdXNycF9w
cm9iZQo+Pj4gbGludXg7IEdOVSBDKysgdmVyc2lvbiA3LjMuMDsgQm9vc3RfMTA2NjAwOyBVSERf
MDAzLjAxMC4wMDIuMDAwLXJlbGVhc2UKPj4+Cj4+PiAtLSBMb2FkaW5nIGZpcm13YXJlIGltYWdl
OiAvdXNyL3NoYXJlL3VoZC9pbWFnZXMvdXNycF9iMjAwX2Z3LmhleC4uLgo+Pj4gLS0gRGV0ZWN0
ZWQgRGV2aWNlOiBCMjA1bWluaQo+Pj4gLS0gTG9hZGluZyBGUEdBIGltYWdlOiAvdXNyL3NoYXJl
L3VoZC9pbWFnZXMvdXNycF9iMjA1bWluaV9mcGdhLmJpbi4uLgo+Pj4gMzklRXJyb3I6IEVudmly
b25tZW50RXJyb3I6IElPRXJyb3I6IGxvYWRfZnBnYTogY2Fubm90IHdyaXRlIGJpdHN0cmVhbSB0
bwo+Pj4gRlgzICgtNDogTElCVVNCX0VSUk9SX0NPREUgLTQpCj4+Cj4+IEEgcXVpY2sgZ29vZ2xl
IHN1Z2dlc3QgZXJyb3IgLTQgaXMgTm8gZGV2aWNlLCBhcmUgeW91IHN1cmUgdGhlIFVTQiBpcwo+
PiB3b3JraW5nPyBEbyB5b3Ugc2VlbiBtZXNzYWdlcyB3aGVuIHlvdSBpbnNlcnQvcmVtb3ZlIHRo
ZSBiMjA1PyBXaGF0IGRvZXMKPj4gbHMgdXNiIHNheT8KPj4KPj4gUGhpbGlwCj4+Cj4+Cj4+Cj4+
PiByb290QHdhbmRib2FyZDp+IyB1aGRfdXNycF9wcm9iZQo+Pj4gbGludXg7IEdOVSBDKysgdmVy
c2lvbiA3LjMuMDsgQm9vc3RfMTA2NjAwOyBVSERfMDAzLjAxMC4wMDIuMDAwLXJlbGVhc2UKPj4+
Cj4+PiAtLSBMb2FkaW5nIGZpcm13YXJlIGltYWdlOiAvdXNyL3NoYXJlL3VoZC9pbWFnZXMvdXNy
cF9iMjAwX2Z3LmhleC4uLgo+Pj4gLS0gRGV0ZWN0ZWQgRGV2aWNlOiBCMjA1bWluaQo+Pj4gLS0g
TG9hZGluZyBGUEdBIGltYWdlOiAvdXNyL3NoYXJlL3VoZC9pbWFnZXMvdXNycF9iMjA1bWluaV9m
cGdhLmJpbi4uLgo+Pj4gMzglRXJyb3I6IEVudmlyb25tZW50RXJyb3I6IElPRXJyb3I6IGxvYWRf
ZnBnYTogY2Fubm90IHdyaXRlIGJpdHN0cmVhbSB0bwo+Pj4gRlgzICgtNDogTElCVVNCX0VSUk9S
X0NPREUgLTQpCj4+PiByb290QHdhbmRib2FyZDp+IyB1aGRfdXNycF9wcm9iZQo+Pj4gbGludXg7
IEdOVSBDKysgdmVyc2lvbiA3LjMuMDsgQm9vc3RfMTA2NjAwOyBVSERfMDAzLjAxMC4wMDIuMDAw
LXJlbGVhc2UKPj4+Cj4+PiAtLSBMb2FkaW5nIGZpcm13YXJlIGltYWdlOiAvdXNyL3NoYXJlL3Vo
ZC9pbWFnZXMvdXNycF9iMjAwX2Z3LmhleC4uLgo+Pj4gLS0gRGV0ZWN0ZWQgRGV2aWNlOiBCMjA1
bWluaQo+Pj4gLS0gTG9hZGluZyBGUEdBIGltYWdlOiAvdXNyL3NoYXJlL3VoZC9pbWFnZXMvdXNy
cF9iMjA1bWluaV9mcGdhLmJpbi4uLgo+Pj4gMzglRXJyb3I6IEVudmlyb25tZW50RXJyb3I6IElP
RXJyb3I6IGxvYWRfZnBnYTogY2Fubm90IHdyaXRlIGJpdHN0cmVhbSB0bwo+Pj4gRlgzICgtNDog
TElCVVNCX0VSUk9SX0NPREUgLTQpCj4+Pgo+Pj4gQXMgeW91IGNhbiBzZWUsIHVoZDogMy4xMC4y
Cj4+PiBhbHNvLCBJIGZhY2VkIHRoZSBzYW1lIHByb2JsZW0gYWZ0ZXIgcmUtZG93bmxvYWRpbmcg
ZnBnYSBpbWFnZSBmcm9tIGV0dHVzCj4+PiB3ZWJzaXRlCj4+Pgo+Pj4gdGhhbmtzIGluIGFkdmFu
Y2UKPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQo+Pj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+PiBVU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4v
bGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21h
aWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFp
bG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
