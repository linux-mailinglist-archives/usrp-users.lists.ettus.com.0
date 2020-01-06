Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D96C130EC1
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 09:37:30 +0100 (CET)
Received: from [::1] (port=54478 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioNtB-0000pM-5V; Mon, 06 Jan 2020 03:37:29 -0500
Received: from sidious.ihf.ing.tu-bs.de ([134.169.78.12]:43902)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fabian.schwartau@ihf.tu-bs.de>)
 id 1ioNt6-0000hE-GZ
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 03:37:24 -0500
Received: from localhost (localhost [127.0.0.1])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTP id 89C0983D3181;
 Mon,  6 Jan 2020 09:36:43 +0100 (CET)
X-Virus-Scanned: by amavisd-new-2.10.1 (20141025) (Debian) at ihf.ing.tu-bs.de
Received: from sidious.ihf.ing.tu-bs.de ([127.0.0.1])
 by localhost (sidious.ihf.ing.tu-bs.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iwDetJy5KefX; Mon,  6 Jan 2020 09:36:42 +0100 (CET)
Received: from [134.169.78.184] (unknown [134.169.78.184])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTPSA id 92A8583D3175;
 Mon,  6 Jan 2020 09:36:42 +0100 (CET)
To: Saeid Hashemi <saeidh@gmail.com>
References: <CANQ3h38Ld+PabG4QosHwhyhg4=BYWBC+uEyhZDrTUstaxNAT7g@mail.gmail.com>
 <2d9189fb-9713-f432-e827-c28336f68db4@ihf.tu-bs.de>
 <CANQ3h38SDVKKH0gSmtZ5k2KruMPT_xQvmzVs1Dywi2YcDx0n=Q@mail.gmail.com>
Message-ID: <4b2494fd-23d6-f6ae-fa58-f3fc80a46537@ihf.tu-bs.de>
Date: Mon, 6 Jan 2020 09:36:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CANQ3h38SDVKKH0gSmtZ5k2KruMPT_xQvmzVs1Dywi2YcDx0n=Q@mail.gmail.com>
X-Antivirus: AVG (VPS 200105-0, 05.01.2020), Outbound message
X-Antivirus-Status: Clean
Subject: Re: [USRP-users] Libuhd issues - "uhd_find_devices: error while
 loading shared libraries"
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
From: Fabian Schwartau via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Fabian Schwartau <fabian.schwartau@ihf.tu-bs.de>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

T2hoIHNvcnJ5LApqdXN0IHJlYWQgdGhlIGVycm9yIG1lc3NhZ2UgcHJvcGVybHkgOkQKWW91IGhh
dmUgYW4gZW1wdHkgZGV2aWNlIHN0cmluZyBpbiB5b3VyIHNvZnR3YXJlIHdoZW4gb3BlbmluZyBp
dC4KCkFtIDEwLjEyLjIwMTkgdW0gMDA6MDYgc2NocmllYiBTYWVpZCBIYXNoZW1pOgo+IFRoYW5r
IHlvdSBmb3IgeW91ciBhZHZpY2UgRmFiaWFuIQo+IAo+IEl0IHNlZW1zIHRoZXJlIGlzIG5vIHBh
Y2thZ2UgY2FsbGVkIGxpYnVoZCwganVzdCB0aGUgZm9sbG93aW5nIHZlcnNpb25zOgo+IGxpYnVo
ZDAwMyDCoCDCoCBsaWJ1aGQzLjE0LjAgwqBsaWJ1aGQtZGV2Cj4gCj4gU28gSSBkaWQ6Cj4gCj4g
JCBzdWRvIGRwa2cgLVAgbGlidWhkMy4xNC4wCj4gKFJlYWRpbmcgZGF0YWJhc2UgLi4uIDI5MTI5
OSBmaWxlcyBhbmQgZGlyZWN0b3JpZXMgY3VycmVudGx5IGluc3RhbGxlZC4pCj4gUmVtb3Zpbmcg
bGlidWhkMy4xNC4wOmFtZDY0ICgzLjE0LjAuMC0wdWJ1bnR1MX50cnVzdHkxKSAuLi4KPiBQdXJn
aW5nIGNvbmZpZ3VyYXRpb24gZmlsZXMgZm9yIGxpYnVoZDMuMTQuMDphbWQ2NCAKPiAoMy4xNC4w
LjAtMHVidW50dTF+dHJ1c3R5MSkgLi4uCj4gUHJvY2Vzc2luZyB0cmlnZ2VycyBmb3IgbGliYy1i
aW4gKDIuMTktMHVidW50dTYuMTUpIC4uLgo+ICQgc3VkbyBhcHQtZ2V0IGluc3RhbGwgbGlidWhk
My4xNC4xCj4gCj4gQW5kIG5vdyBVSEQgdG9vbHMgd29yaywgYWxzbyB3aXRoaW4gdGhlIExURSBz
b2Z0d2FyZSwgYnV0IHRoZXkgd29uJ3QgCj4gZmluZCBteSBCMjEwIHNheWluZzoKPiAKPiBbSU5G
T10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiA0LjguNDsgQm9vc3RfMTA1NDAwOyAKPiBV
SERfMy4xNC4xLjEtcmVsZWFzZQo+IEVycm9yOiBMb29rdXBFcnJvcjogS2V5RXJyb3I6IE5vIGRl
dmljZXMgZm91bmQgZm9yIC0tLS0tPgo+IEVtcHR5IERldmljZSBBZGRyZXNzCj4gCj4gUmVnYXJk
cywKPiBTYWVpZAo+IAo+IAo+IAo+IAo+IE9uIEZyaSwgRGVjIDYsIDIwMTkgYXQgMjo1OCBBTSBG
YWJpYW4gU2Nod2FydGF1IHZpYSBVU1JQLXVzZXJzIAo+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbSA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPj4gd3JvdGU6Cj4gCj4gICAg
IFlvdSBoYXZlIGFuIG9sZCB2ZXJzaW9uIG9mIGxpYnVoZCBhbHJlYWR5IGluc3RhbGxlZC4gVW5p
bnN0YWxsIGl0IHVzaW5nOgo+ICAgICAkIHN1ZG8gZHBrZyAtUCBsaWJ1aGQKPiAgICAgVGhlbiBy
ZXRyeSBpbnN0YWxsaW5nIGl0LiBTb21ldGltZXMgbGlicmFyaWVzIGFyZSBub3QgZm91bmQgYW5k
IHlvdQo+ICAgICBoYXZlCj4gICAgIHRvIHJ1bgo+ICAgICAkIHN1ZG8gbGRjb25maWcKPiAgICAg
YnV0IHRoYXQgaXMgdXN1YWxseSBkb25lIGJ5IGRwa2cuCj4gCj4gICAgIEFtIDA2LjEyLjIwMTkg
dW0gMDA6MzEgc2NocmllYiBTYWVpZCBIYXNoZW1pIHZpYSBVU1JQLXVzZXJzOgo+ICAgICAgPiBI
ZWxsbyBldmVyeW9uZSwKPiAgICAgID4KPiAgICAgID4gSSBoYXZlIGFuIEludGVsIE5VQyBydW5u
aW5nIFVidW50dSAxNi4wNCBhbmQgYSBsb3cgbGF0ZW5jeSBrZXJuZWwKPiAgICAgd2hpY2gKPiAg
ICAgID4gSSB1c2UgZm9yIE9BSSBMVEUgc29mdHdhcmUgb24gdG9wIG9mIFVIRC4KPiAgICAgID4K
PiAgICAgID4gQWZ0ZXIgdXBkYXRpbmcgbXkgc3lzdGVtIHJlcG9zaXRvcmllcywgVUhEIGJyb2tl
IHNvbWVob3cgd2l0aCB0aGUKPiAgICAgID4gZm9sbG93aW5nIHJlc3VsdDoKPiAgICAgID4KPiAg
ICAgID4gbnVjOC0zQG51YzgzLU5VQzhpN0JFSDp+JCB1aGRfZmluZF9kZXZpY2VzCj4gICAgICA+
IHVoZF9maW5kX2RldmljZXM6IGVycm9yIHdoaWxlIGxvYWRpbmcgc2hhcmVkIGxpYnJhcmllczoK
PiAgICAgID4gbGlidWhkLnNvLjMuMTQuMTogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxl
OiBObyBzdWNoIGZpbGUgb3IKPiAgICAgZGlyZWN0b3J5Cj4gICAgICA+Cj4gICAgICA+IEF0dGVt
cHRpbmcgdG8gbWFudWFsbHkgaW5zdGFsbCB0aGUgdmVyc2lvbiBjaXRlZCBpbiB0aGUgZXJyb3IK
PiAgICAgZ2l2ZXMgbWUgdGhpczoKPiAgICAgID4KPiAgICAgID4gVW5wYWNraW5nIGxpYnVoZDMu
MTQuMTphbWQ2NCAoMy4xNC4xLjEtMHVidW50dTF+dHJ1c3R5MSkgLi4uCj4gICAgICA+IGRwa2c6
IGVycm9yIHByb2Nlc3NpbmcgYXJjaGl2ZQo+ICAgICAgPgo+ICAgICAvdmFyL2NhY2hlL2FwdC9h
cmNoaXZlcy9saWJ1aGQzLjE0LjFfMy4xNC4xLjEtMHVidW50dTF+dHJ1c3R5MV9hbWQ2NC5kZWIK
PiAKPiAgICAgID4gKC0tdW5wYWNrKToKPiAgICAgID7CoCDCoHRyeWluZyB0byBvdmVyd3JpdGUK
PiAgICAgJy91c3Ivc2hhcmUvdWhkL3Jmbm9jL2Jsb2Nrcy9rZWVwX29uZV9pbl9uLnhtbCcsCj4g
ICAgICA+IHdoaWNoIGlzIGFsc28gaW4gcGFja2FnZSBsaWJ1aGQzLjE0LjA6YW1kNjQgMy4xNC4w
LjAtMHVidW50dTF+dHJ1c3R5MQo+ICAgICAgPiBkcGtnLWRlYjogZXJyb3I6IHN1YnByb2Nlc3Mg
cGFzdGUgd2FzIGtpbGxlZCBieSBzaWduYWwgKEJyb2tlbiBwaXBlKQo+ICAgICAgPiBFcnJvcnMg
d2VyZSBlbmNvdW50ZXJlZCB3aGlsZSBwcm9jZXNzaW5nOgo+ICAgICAgPiAKPiAgICAgIMKgL3Zh
ci9jYWNoZS9hcHQvYXJjaGl2ZXMvbGlidWhkMy4xNC4xXzMuMTQuMS4xLTB1YnVudHUxfnRydXN0
eTFfYW1kNjQuZGViCj4gICAgICA+IEU6IFN1Yi1wcm9jZXNzIC91c3IvYmluL2Rwa2cgcmV0dXJu
ZWQgYW4gZXJyb3IgY29kZSAoMSkKPiAgICAgID4KPiAgICAgID4KPiAgICAgID4gV291bGQgYW55
b25lIGhhdmUgYW55IHJlY29tbWVuZGF0aW9ucyBvbiB3aGF0IHRvIGRvIHRvIG1ha2Ugc3VyZQo+
ICAgICBJIGhhdmUKPiAgICAgID4gdGhlIHJpZ2h0IHZlcnNpb24gb2YgZXZlcnl0aGluZyBwcmVz
ZW50Pwo+ICAgICAgPgo+ICAgICAgPgo+ICAgICAgPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+ICAgICAgPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+
ICAgICAgPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8bWFpbHRvOlVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tPgo+ICAgICAgPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlz
dGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAgICAgID4KPiAKPiAgICAgLS0gCj4g
ICAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4g
ICAgIE0uLVNjLiBGYWJpYW4gU2Nod2FydGF1Cj4gICAgIFRlY2huaXNjaGUgVW5pdmVyc2l0w6R0
IEJyYXVuc2Nod2VpZwo+ICAgICBJbnN0aXR1dCBmw7xyIEhvY2hmcmVxdWVuenRlY2huaWsKPiAg
ICAgU2NobGVpbml0enN0ci4gMjIKPiAgICAgMzgxMDYgQnJhdW5zY2h3ZWlnCj4gICAgIEdlcm1h
bnkKPiAKPiAgICAgVGVsLjrCoCDCoCs0OS0oMCk1MzEtMzkxLTIwMTcKPiAgICAgRmF4OsKgIMKg
ICs0OS0oMCk1MzEtMzkxLTIwNDUKPiAgICAgRW1haWw6IGZhYmlhbi5zY2h3YXJ0YXVAaWhmLnR1
LWJzLmRlCj4gICAgIDxtYWlsdG86ZmFiaWFuLnNjaHdhcnRhdUBpaGYudHUtYnMuZGU+Cj4gICAg
IFdXVzogaHR0cDovL3d3dy50dS1icmF1bnNjaHdlaWcuZGUvaWhmCj4gICAgIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gCj4gICAgIF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gICAgIFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0Cj4gICAgIFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDxtYWlsdG86VVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Cj4gICAgIGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFp
bG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+IAoKLS0gCi0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCk0uLVNjLiBGYWJpYW4g
U2Nod2FydGF1ClRlY2huaXNjaGUgVW5pdmVyc2l0w6R0IEJyYXVuc2Nod2VpZwpJbnN0aXR1dCBm
w7xyIEhvY2hmcmVxdWVuenRlY2huaWsKU2NobGVpbml0enN0ci4gMjIKMzgxMDYgQnJhdW5zY2h3
ZWlnCkdlcm1hbnkKClRlbC46ICAgKzQ5LSgwKTUzMS0zOTEtMjAxNwpGYXg6ICAgICs0OS0oMCk1
MzEtMzkxLTIwNDUKRW1haWw6ICBmYWJpYW4uc2Nod2FydGF1QGloZi50dS1icy5kZQpXV1c6ICAg
IGh0dHA6Ly93d3cudHUtYnJhdW5zY2h3ZWlnLmRlL2loZgotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3Vz
cnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
