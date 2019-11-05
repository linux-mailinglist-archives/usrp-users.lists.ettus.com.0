Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95963EFF22
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2019 15:00:04 +0100 (CET)
Received: from [::1] (port=43250 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iRzNG-0003re-R1; Tue, 05 Nov 2019 08:59:58 -0500
Received: from starfish.geekisp.com ([216.168.135.166]:15688)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@balister.org>) id 1iRzNC-0003iN-TF
 for USRP-users@lists.ettus.com; Tue, 05 Nov 2019 08:59:54 -0500
Received: (qmail 31936 invoked by uid 1003); 5 Nov 2019 13:59:11 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 5 Nov 2019 13:59:11 -0000
To: "zcao@c3commsystems.com" <zcao@c3commsystems.com>
References: <F8807E43-2706-48BD-84BC-3C53C4EE65CB@c3commsystems.com>
 <b21ca1df-ce39-ee8e-70c7-9a89726ff11e@balister.org>
 <86BC5E7F-802A-4100-AC71-72CB42A42DE8@c3commsystems.com>
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
Message-ID: <3a0b98db-744b-d378-354c-5232a6b031de@balister.org>
Date: Tue, 5 Nov 2019 14:59:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <86BC5E7F-802A-4100-AC71-72CB42A42DE8@c3commsystems.com>
Content-Language: en-US
Subject: Re: [USRP-users] Problems when Running UHD_3.14.1 Examples on E310
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
Cc: USRP-users <USRP-users@lists.ettus.com>
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

T24gMTEvNC8xOSA5OjI1IFBNLCB6Y2FvQGMzY29tbXN5c3RlbXMuY29tIHdyb3RlOgo+IFBoaWxp
cCwKPiAKPiBUaGFua3MgZm9yIHRoZSByZXNwb25zZS4gVGhhdOKAmXMgd2hhdCB3ZSBkaWQgdG8g
Z2V0IHRocm91Z2ggdGhlIGlzc3VlLiAKPiAKPiBCdXQgaXMgaXQgd2hhdCB3ZSBzdXBwb3NlZCB0
byBkbywgaS5lLiwgZWRpdCB0aGVzZSBVSEQgcHJvdmlkZWQgcHl0aG9uIHNjcmlwdHMgbWFudWFs
bHk/CgpObywgaG9wZWZ1bGx5IHNvbWVvbmUgZnJvbSBFdHR1cyBlbnRlcmVkIHRoaXMgaW50byB0
aGUgYnVnIHRyYWNrZXIuCgpQaGlsaXAKCj4gCj4gVGhhbmtzLAo+IFpob25ncmVuCj4gCj4+IE9u
IE5vdiA0LCAyMDE5LCBhdCAyOjI3IFBNLCBQaGlsaXAgQmFsaXN0ZXIgPHBoaWxpcEBiYWxpc3Rl
ci5vcmc+IHdyb3RlOgo+Pgo+PiBPbiAxMS80LzE5IDU6MDQgUE0sIHpjYW8tLS0gdmlhIFVTUlAt
dXNlcnMgd3JvdGU6Cj4+PiBIaSwgCj4+Pgo+Pj4gV2UgYXJlIHRyeWluZyB0byBydW4gVUhEIGV4
YW1wbGVzIG9uIEUzMTAuIFRoZSBwcm9jZXNzIHdlIHRvb2sgYXJlIGFzIHRoZSBmb2xsb3dpbmcu
Cj4+Pgo+Pj4gMS4gRmxhc2ggYSBmcmVzaCBTRGNhcmQgdXNpbmcgdGhlIGRldiBpbWFnZSBsb2Nh
dGVkIGF0IGh0dHA6Ly9maWxlcy5ldHR1cy5jb20vZTN4eF9pbWFnZXMvZTN4eC1yZWxlYXNlLTQv
ZXR0dXMtZTN4eC1zZzMvIDxodHRwOi8vZmlsZXMuZXR0dXMuY29tL2UzeHhfaW1hZ2VzL2UzeHgt
cmVsZWFzZS00L2V0dHVzLWUzeHgtc2czLz4KPj4+Cj4+PiAyLiBDcm9zcy1jb21waWxlIFVIRCBz
b3VyY2UgY29kZSBvbiBhIGRldmVsb3BtZW50IG1hY2hpbmUgYW5kIGluc3RhbGwgdGhlIGJ1aWxk
IG9uIHRvIHRoZSBFMzEwIGRldmljZSB1c2luZyBzc2hmcy4gTm90ZSB0aGF0IHRoaXMgaXMgYSBk
aWZmZXJlbnQgZnJvbSB3aGF0IGlzIHByb3Bvc2VkIGluIEFOLTMxMS4gV2UgaW5zdGFsbGVkIFVI
RCAzLjE0IG9udG8gdGhlIGRldmljZSBkaXJlY3RseS4KPj4+Cj4+PiAzLiBSdW5uaW5nIC91c3Iv
YmluL3VoZF9maW5kX2RldmljZXMsIHdlIGdvdCB0aGUgZm9sbG93aW5nIG91dHB1dCwgbG9va3Mg
bm9ybWFsLgo+Pj4KPj4+IFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDQuOS4y
OyBCb29zdF8xMDU3MDA7IFVIRF8zLjE0LjEuMS0wLWcwMzQ3YTZkOAo+Pj4gLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+IC0tIFVIRCBEZXZpY2Ug
MAo+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
Pj4+IERldmljZSBBZGRyZXNzOgo+Pj4gICAgc2VyaWFsOiAzMTgxOUExCj4+PiAgICBuYW1lOiAK
Pj4+ICAgIG5vZGU6IC9kZXYvYXhpX2ZwZ2EKPj4+ICAgIHByb2R1Y3Q6IEUzWFggU0czCj4+PiAg
ICB0eXBlOiBlM3gwCj4+Pgo+Pj4KPj4+IEhvd2V2ZXIsIHdlIHJhbiBpbnRvIHRoZSBmb2xsb3dp
bmcgcHJvYmxlbXMsIHdoaWNoIHNlZW0gdG8gYmUgcmVsYXRlZC4KPj4+Cj4+PiAxLiBXZSBjYW5u
b3QgcnVuIC91c3IvYmluL3VoZF91c3JwX3Byb2JlLCBiZWNhdXNlIG9mIHRoZSBGUEdBIGNvbXBh
dGliaWxpdHkuIFNwZWNpZmljYWxseSwgdGhlIGVycm9yIG1lc3NhZ2VzIGFyZQo+Pj4KPj4+IEVy
cm9yOiBSdW50aW1lRXJyb3I6IEV4cGVjdGVkIEZQR0EgY29tcGF0aWJpbGl0eSBudW1iZXIgMjU1
LngsIGJ1dCBnb3QgMTQuMDoKPj4+IFRoZSBGUEdBIGJ1aWxkIGlzIG5vdCBjb21wYXRpYmxlIHdp
dGggdGhlIGhvc3QgY29kZSBidWlsZC4KPj4+IFBsZWFzZSBydW46Cj4+Pgo+Pj4gIi91c3IvbGli
L3VoZC91dGlscy91aGRfaW1hZ2VzX2Rvd25sb2FkZXIucHkiCj4+Pgo+Pj4KPj4+IDIuIEJ1dCBy
dW5uaW5nIHRoZSBhYm92ZSBweXRob24gc2NyaXB0IGdpdmVzIHVzIHRoZSBmb2xsb3dpbmcgZXJy
b3IgbWVzc2FnZXMuCj4+Pgo+Pj4gLXNoOiAvdXNyL2xpYi91aGQvdXRpbHMvdWhkX2ltYWdlc19k
b3dubG9hZGVyLnB5OiAvdXNyL2xvY2FsL29lY29yZS14ODZfNjQvc3lzcm9vdHMveDg2XzY0LW9l
c2RrLWxpbnV4L3Vzci9iaW4vcHl0aG9uMjogYmFkIGludGVycHJldGVyOiBObyBzdWNoIGZpbGUg
b3IgZGlyZWN0b3J5Lwo+Pgo+PiBMb29rIGF0IHRoZSBzY3JpcHQgL3Vzci9saWIvdWhkL3V0aWxz
L3VoZF9pbWFnZXNfZG93bmxvYWRlci5weSBhbmQgZWRpdAo+PiB0aGUgIyEvYmluL2ZvL2Jhci9w
eXRob24gdG8gc29tZXRoaW5nIHJlYXNvbmFibGUuCj4+Cj4+IFBoaWxpcAo+Pgo+Pj4KPj4+Cj4+
PiBOb3RlIHRoYXQgdGhlIHB5dGhvbiBzY3JpcHQgaXMgbG9va2luZyBmb3IgdGhlIFNESywgd2hp
Y2ggc2hvdWxkIGJlIG9uIHRoZSBkZXZlbG9wbWVudCBtYWNoaW5lLCBpbnN0ZWFkIG9mIHRoZSBk
ZXZpY2UgaXRzZWxmLgo+Pj4KPj4+IFdvdWxkIHJlYWxseSBhcHByZWNpYXRlIGl0IGlmIGFueW9u
ZSBrbm93cyBob3cgdG8gaGFuZGxlIGFib3ZlIGlzc3VlcyBpbiBFMzEwIGRldmljZSBpdHNlbGY/
Cj4+Pgo+Pj4gVGhhbmtzLAo+Pj4gQXJub2xkCj4+Pgo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKPj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+PiBodHRwOi8vbGlzdHMuZXR0
dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPj4+Cj4g
Cj4gQXJub2xkIFouIENhbywgUGguRC4KPiAKPiBDLTMgQ29tbSBTeXN0ZW1zLCBMTEMKPiAzMTAw
IENsYXJlbmRvbiBCbHZkLiwgU3VpdGUgMjAwCj4gQXJsaW5ndG9uLCBWQSAyMjIwMQo+IFBob25l
OiAoNzAzKSA4MjktMDU4OAo+IEVtYWlsIDogemNhb0BjM2NvbW1zeXN0ZW1zLmNvbSA8bWFpbHRv
OnpjYW9AYzNjb21tc3lzdGVtcy5jb20+Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20K
