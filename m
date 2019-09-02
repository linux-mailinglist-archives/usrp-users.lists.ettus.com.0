Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE65A508F
	for <lists+usrp-users@lfdr.de>; Mon,  2 Sep 2019 10:00:46 +0200 (CEST)
Received: from [::1] (port=37546 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i4hGW-0003Qj-Ed; Mon, 02 Sep 2019 04:00:44 -0400
Received: from dnsmx.mpb.li ([185.16.174.81]:40816)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <matthias@mpb.li>) id 1i4hGS-0003Lk-Gc
 for usrp-users@lists.ettus.com; Mon, 02 Sep 2019 04:00:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mpb.li;
 s=20161108; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DRXUitu2RntPBIIwn2sTKz/CEF/q6sPZW58kJeuyFYY=; b=bvHgi4GYXjnDYM0tO6LtSjWsU0
 AfiRVJ7DzRo7xerIxIJ7S7mtEP9VKdW7yc2ow4Z6egCggZcES0Cb8f8thDllNjLyRKgu8WibC5+Yp
 tpHHIG6euPQJpiYmn0zCIzWRV7VMNASGqaGS5l0dFqXM2vJivZ/X+5q+44loAHMVcRgE=;
Received: from adslgva0461.worldcom.ch ([83.172.200.7] helo=[172.30.201.38])
 by dnsmx.mpb.li with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <matthias@mpb.li>)
 id 1i4hFm-0006KG-EZ; Mon, 02 Sep 2019 09:59:58 +0200
To: Michael West <michael.west@ettus.com>
References: <CAM4xKrrb4MNYu8PZmt29f8R5FbSpiik7Q95XPqVMtBqQO7ZtPQ@mail.gmail.com>
 <e50bf1f7-0bb6-84a2-edfa-0188a229fc63@mpb.li>
 <CAM4xKrp8ng4b6gYvU1T7a-8VOj=fXY8Ji-BowcFeQkYiEerWGQ@mail.gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias@mpb.li; prefer-encrypt=mutual; keydata=
 mQGiBEYMuHcRBACA+gOZ2kLr+D9EbTZaM+8FKSrB+W92gi82LlSnWIx5vQ2bs4u+3ZMGT4WB
 +euKj49/bQ99CoEDB94dGWDrVol3Qxx39UIhL8VSJpHMKQZaa7fHJgOeZLCyjM+qTm/yWcIC
 ND2n8CgJc6oRqmD8l/nRQqHTceSaYPJSIc82QC05zwCgsL7inGV7Xhb8kSJt4B1vOLUG1XMD
 /2swxqZ3QkER90QFGwThUhsPbscl7jVBUWalqHb8n7aM+CrxMuevS/dpOVRA1nEGGgWzEtfs
 UGEKMR7feOf9dnajULnUogLUboIlUrlL+JAwR0uGvI+wynOHMJEcWYhIZG43BQPLJrMitHyE
 HnTjCvZSEsnrDE31GBSCyIyLCkwtA/97MwVUBw0LxsLWK9fnNhuymjWWA07b2keNVUmETVPj
 KeyicE7d8xZUeyrm5JnBj61wm7PeeZBf+pq2mEDqdputuNNPuh8o7rYxua1Vc3HKbz068gN+
 YmA3yVLAEs1aJ5s+5KyP/aGVygSi5td0mNnqzlCfFntIPj3v1LS21pI+SrQjTWF0dGhpYXMg
 QnLDpG5kbGkgPG1hdHRoaWFzQG1wYi5saT6IggQTEQIAQgIbIwYLCQgHAwIGFQgCCQoLBBYC
 AwECHgECF4ACGQEWIQRQgfjVU8jOSc2gZI3uThRyhIPRdAUCXGq2XwUJGiBk6AAKCRDuThRy
 hIPRdA4gAJ90A0IL44gVL09jh3zq8hiT0rQ0XgCgnCYTCybgTT3KDcVV8gUPb8yMXB65AQ0E
 Rgy4eRAEAM99KgY6ujv19er4CU9lTx1Cuc6B9jHqlDutB921+1BKeCJcniz1d0z94+ZfTbJd
 UI/1TnXDPOPjJ3tJB4Nca/p2vwoOruW62yw9rCGV8qgFKSWEg+MqGs7Ks9Zk+xNHqL7Pg8Nr
 1rxkjTFNiDJABAHNuhg+U/2krnSP0ws25m+XAAQLA/9ibdsVCgSqCFkgnFTLnydQOSr4f6aT
 PeH1cZB6vgIZemt4mtnVrCKIYNSyUEwN05mlNR2hcXfaRyFRw2hhAVmqO5bYkLtrvXn2BLs9
 6lgyF/12tF7x7LydFPcdTPiu4MsP+rzOYlHUk5onqippMMfY6hv6exTB2dWSaeLgPqPclYhm
 BBgRAgAmAhsMFiEEUIH41VPIzknNoGSN7k4UcoSD0XQFAlxqtnMFCRogZPoACgkQ7k4UcoSD
 0XR1jgCdFz+aNIwDAbw75m0bivIINrQWIOcAn3s0DBAg48EhAFrPUuloCtLKbKm4
Message-ID: <d21698c4-afb0-bd38-cf0a-c6a038f76a96@mpb.li>
Date: Mon, 2 Sep 2019 09:59:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAM4xKrp8ng4b6gYvU1T7a-8VOj=fXY8Ji-BowcFeQkYiEerWGQ@mail.gmail.com>
Content-Language: en-US-large
Subject: Re: [USRP-users] [UHD] 3.14.1.0 Release Announcement
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
From: =?utf-8?q?Matthias_Br=C3=A4ndli_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Matthias_Br=c3=a4ndli?= <matthias@mpb.li>
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

RGVhciBNaWNoYWVsLAoKVGhhbmtzIGEgbG90IGZvciB0aGUgY2xhcmlmaWNhdGlvbnMsIGl0J3Mg
aW5kZWVkIGFuIGlzc3VlIHdlIHJhbiBpbnRvLgoKSSdtIGdvaW5nIHRvIHRyeSB0aGlzIG91dCBu
b3cuCgpDaGVlcnMKbXBiCgpPbiAyMy8wOC8yMDE5IDE5OjI4LCBNaWNoYWVsIFdlc3Qgd3JvdGU6
Cj4gSGkgTWF0dGhpYXMsCj4gCj4gVGhlIG5ldyBCMjAwIGJvb3Rsb2FkZXIgaGVscHMgd2l0aCBm
YWlsdXJlcyB0byBlbnVtZXJhdGUgdGhlIGRldmljZSB3aGVuCj4gaXQgaXMgcGx1Z2dlZCBpbiBi
ZWZvcmUgdGhlIGhvc3QgaXMgYm9vdGVkLsKgIFRoaXMgb25seSBoYXBwZW5zIHdpdGggc29tZQo+
IFVTQiBjb250cm9sbGVycy7CoCBMb2FkaW5nIHRoZSBib290bG9hZGVyIGNhbiBiZSBkb25lIGJ5
IHJ1bm5pbmc6Cj4gCj4gYjJ4eF9meDNfdXRpbHMgLS1sb2FkLWJvb3Rsb2FkZXIgPGZpbGU+Cj4g
Cj4gVGhlIGJvb3Rsb2FkZXIgZmlsZSBoYXMgYmVlbiBhZGRlZCB0byB0aGUgYjJ4eCBpbWFnZXMg
ZmlsZSBhbmQgY2FuIGJlCj4gcmV0cmlldmVkIGJ5IHJ1bm5pbmc6Cj4gCj4gW3N1ZG9dIHVoZF9p
bWFnZXNfZG93bmxvYWRlciAtdCBiMnh4Cj4gCj4gUmVnYXJkcywKPiBNaWNoYWVsCj4gCj4gT24g
VHVlLCBKdWwgOSwgMjAxOSBhdCAxMjoxMCBBTSBNYXR0aGlhcyBCcsOkbmRsaSB2aWEgVVNSUC11
c2Vycwo+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8bWFpbHRvOnVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tPj4gd3JvdGU6Cj4gCj4gICAgIERlYXIgTWljaGFlbCwKPiAKPiAgICAgRmly
c3Qgb2YgYWxsLCB0aGFua3MgZm9yIHRoZSBuZXcgVUhEIHJlbGVhc2UgdG8gYWxsIHBlb3BsZSBp
bnZvbHZlZCEKPiAKPiAgICAgT24gMDgvMDcvMjAxOSAyMDozNSwgTWljaGFlbCBXZXN0IHdyb3Rl
Ogo+ICAgICA+IFRoaXMgcmVsZWFzZSBpbmNsdWRlcyBbLi4uXSBhIG5ldyBib290bG9hZGVyIGZv
ciBCMjAwCj4gCj4gICAgIElzIHRoZXJlIG1vcmUgaW5mb3JtYXRpb24gYWJvdXQgdGhpcyBjaGFu
Z2U/IERvZXMgdGhpcyBzb2x2ZSBhIHNwZWNpZmljCj4gICAgIGlzc3VlPyBJIGhhZCBhIGxvb2sg
YXQgdGhlIHJlbGV2YW50IGNvbW1pdHMsIGJ1dCBJIGFtIHRyeWluZyB0bwo+ICAgICB1bmRlcnN0
YW5kIHdoeSBpdCB3YXMgaW1wbGVtZW50ZWQgYW5kIGlmIHRoZXJlJ3MgYW55IGltcGFjdCBmb3Ig
b3VyCj4gICAgIGFwcGxpY2F0aW9uLgo+IAo+ICAgICBCZXN0IHJlZ2FyZHMKPiAgICAgbXBiCj4g
Cj4gCj4gICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gICAgIFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gICAgIFVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tIDxtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Cj4gICAgIGh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQo=
