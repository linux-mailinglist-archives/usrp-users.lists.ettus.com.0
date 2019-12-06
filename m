Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40627114D0A
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2019 08:58:58 +0100 (CET)
Received: from [::1] (port=60656 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1id8Vq-0004gT-Gr; Fri, 06 Dec 2019 02:58:54 -0500
Received: from sidious.ihf.ing.tu-bs.de ([134.169.78.12]:60694)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fabian.schwartau@ihf.tu-bs.de>)
 id 1id8Vm-0004dD-MA
 for usrp-users@lists.ettus.com; Fri, 06 Dec 2019 02:58:50 -0500
Received: from localhost (localhost [127.0.0.1])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTP id E00F683D3027
 for <usrp-users@lists.ettus.com>; Fri,  6 Dec 2019 08:58:08 +0100 (CET)
X-Virus-Scanned: by amavisd-new-2.10.1 (20141025) (Debian) at ihf.ing.tu-bs.de
Received: from sidious.ihf.ing.tu-bs.de ([127.0.0.1])
 by localhost (sidious.ihf.ing.tu-bs.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S3B8rA-V0p81; Fri,  6 Dec 2019 08:58:08 +0100 (CET)
Received: from [134.169.78.184] (unknown [134.169.78.184])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTPSA id 683BF83D3022
 for <usrp-users@lists.ettus.com>; Fri,  6 Dec 2019 08:58:08 +0100 (CET)
To: usrp-users@lists.ettus.com
References: <CANQ3h38Ld+PabG4QosHwhyhg4=BYWBC+uEyhZDrTUstaxNAT7g@mail.gmail.com>
Message-ID: <2d9189fb-9713-f432-e827-c28336f68db4@ihf.tu-bs.de>
Date: Fri, 6 Dec 2019 08:58:06 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CANQ3h38Ld+PabG4QosHwhyhg4=BYWBC+uEyhZDrTUstaxNAT7g@mail.gmail.com>
X-Antivirus: AVG (VPS 191205-0, 05.12.2019), Outbound message
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

WW91IGhhdmUgYW4gb2xkIHZlcnNpb24gb2YgbGlidWhkIGFscmVhZHkgaW5zdGFsbGVkLiBVbmlu
c3RhbGwgaXQgdXNpbmc6CiQgc3VkbyBkcGtnIC1QIGxpYnVoZApUaGVuIHJldHJ5IGluc3RhbGxp
bmcgaXQuIFNvbWV0aW1lcyBsaWJyYXJpZXMgYXJlIG5vdCBmb3VuZCBhbmQgeW91IGhhdmUgCnRv
IHJ1bgokIHN1ZG8gbGRjb25maWcKYnV0IHRoYXQgaXMgdXN1YWxseSBkb25lIGJ5IGRwa2cuCgpB
bSAwNi4xMi4yMDE5IHVtIDAwOjMxIHNjaHJpZWIgU2FlaWQgSGFzaGVtaSB2aWEgVVNSUC11c2Vy
czoKPiBIZWxsbyBldmVyeW9uZSwKPiAKPiBJIGhhdmUgYW4gSW50ZWwgTlVDIHJ1bm5pbmcgVWJ1
bnR1IDE2LjA0IGFuZCBhIGxvdyBsYXRlbmN5IGtlcm5lbCB3aGljaCAKPiBJIHVzZSBmb3IgT0FJ
IExURSBzb2Z0d2FyZSBvbiB0b3Agb2YgVUhELgo+IAo+IEFmdGVyIHVwZGF0aW5nIG15IHN5c3Rl
bSByZXBvc2l0b3JpZXMsIFVIRCBicm9rZSBzb21laG93IHdpdGggdGhlIAo+IGZvbGxvd2luZyBy
ZXN1bHQ6Cj4gCj4gbnVjOC0zQG51YzgzLU5VQzhpN0JFSDp+JCB1aGRfZmluZF9kZXZpY2VzCj4g
dWhkX2ZpbmRfZGV2aWNlczogZXJyb3Igd2hpbGUgbG9hZGluZyBzaGFyZWQgbGlicmFyaWVzOiAK
PiBsaWJ1aGQuc28uMy4xNC4xOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1
Y2ggZmlsZSBvciBkaXJlY3RvcnkKPiAKPiBBdHRlbXB0aW5nIHRvIG1hbnVhbGx5IGluc3RhbGwg
dGhlIHZlcnNpb24gY2l0ZWQgaW4gdGhlIGVycm9yIGdpdmVzIG1lIHRoaXM6Cj4gCj4gVW5wYWNr
aW5nIGxpYnVoZDMuMTQuMTphbWQ2NCAoMy4xNC4xLjEtMHVidW50dTF+dHJ1c3R5MSkgLi4uCj4g
ZHBrZzogZXJyb3IgcHJvY2Vzc2luZyBhcmNoaXZlIAo+IC92YXIvY2FjaGUvYXB0L2FyY2hpdmVz
L2xpYnVoZDMuMTQuMV8zLjE0LjEuMS0wdWJ1bnR1MX50cnVzdHkxX2FtZDY0LmRlYiAKPiAoLS11
bnBhY2spOgo+ICDCoHRyeWluZyB0byBvdmVyd3JpdGUgJy91c3Ivc2hhcmUvdWhkL3Jmbm9jL2Js
b2Nrcy9rZWVwX29uZV9pbl9uLnhtbCcsIAo+IHdoaWNoIGlzIGFsc28gaW4gcGFja2FnZSBsaWJ1
aGQzLjE0LjA6YW1kNjQgMy4xNC4wLjAtMHVidW50dTF+dHJ1c3R5MQo+IGRwa2ctZGViOiBlcnJv
cjogc3VicHJvY2VzcyBwYXN0ZSB3YXMga2lsbGVkIGJ5IHNpZ25hbCAoQnJva2VuIHBpcGUpCj4g
RXJyb3JzIHdlcmUgZW5jb3VudGVyZWQgd2hpbGUgcHJvY2Vzc2luZzoKPiAgwqAvdmFyL2NhY2hl
L2FwdC9hcmNoaXZlcy9saWJ1aGQzLjE0LjFfMy4xNC4xLjEtMHVidW50dTF+dHJ1c3R5MV9hbWQ2
NC5kZWIKPiBFOiBTdWItcHJvY2VzcyAvdXNyL2Jpbi9kcGtnIHJldHVybmVkIGFuIGVycm9yIGNv
ZGUgKDEpCj4gCj4gCj4gV291bGQgYW55b25lIGhhdmUgYW55IHJlY29tbWVuZGF0aW9ucyBvbiB3
aGF0IHRvIGRvIHRvIG1ha2Ugc3VyZSBJIGhhdmUgCj4gdGhlIHJpZ2h0IHZlcnNpb24gb2YgZXZl
cnl0aGluZyBwcmVzZW50Pwo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91
c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+IAoKLS0gCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCk0uLVNjLiBGYWJpYW4gU2Nod2FydGF1ClRlY2hu
aXNjaGUgVW5pdmVyc2l0w6R0IEJyYXVuc2Nod2VpZwpJbnN0aXR1dCBmw7xyIEhvY2hmcmVxdWVu
enRlY2huaWsKU2NobGVpbml0enN0ci4gMjIKMzgxMDYgQnJhdW5zY2h3ZWlnCkdlcm1hbnkKClRl
bC46ICAgKzQ5LSgwKTUzMS0zOTEtMjAxNwpGYXg6ICAgICs0OS0oMCk1MzEtMzkxLTIwNDUKRW1h
aWw6ICBmYWJpYW4uc2Nod2FydGF1QGloZi50dS1icy5kZQpXV1c6ICAgIGh0dHA6Ly93d3cudHUt
YnJhdW5zY2h3ZWlnLmRlL2loZgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tCg==
