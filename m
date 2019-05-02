Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B87511CC3
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2019 17:26:48 +0200 (CEST)
Received: from [::1] (port=56334 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMDbj-0007bh-Ae; Thu, 02 May 2019 11:26:47 -0400
Received: from resqmta-po-12v.sys.comcast.net ([96.114.154.171]:38028)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <w6rz@comcast.net>) id 1hMDbB-00077H-19
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 11:26:43 -0400
Received: from resomta-po-08v.sys.comcast.net ([96.114.154.232])
 by resqmta-po-12v.sys.comcast.net with ESMTP
 id MBJphEvcpZhYwMDaVholPj; Thu, 02 May 2019 15:25:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1556810731;
 bh=zUr/w2uYlj0nldrLQ/prj0jSd5XlI0/nBW95iEHgXSI=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=DYjyVfbyUHEjQbres2LmUbwgua+1LINzP2EB58IBsPcvaDWdP47O4sUKkSbfMxOF0
 sd8NQKS9FS6cSwcJXSKRWXpaPS1d/Q6Pg8yNMgywlnkMfVtJRUG+ZSkZEQ5Vmj8Xwu
 BStDxlewZE6cWihqd66hCSlBVpue1dPr3aCYiYLk9qDWI1TEFIg7smt91OswOnl5Tw
 68j0y6GzhaAcUeh8R9w9Hwfcp8dueEZsd5yj5O1WEu+3RlQZHa4DV5ZA8wVXLGx4Ga
 jWTjJ0mkp4/xoPwDJ8/nS8l/Ry5hFiKanL4B6smQRdYT+SJkbGRCqKP4jXhpKPSemX
 jTE2k6NQWHJgQ==
Received: from [IPv6:2601:647:4200:ea30:55dc:82a8:c404:b5e7]
 ([IPv6:2601:647:4200:ea30:55dc:82a8:c404:b5e7])
 by resomta-po-08v.sys.comcast.net with ESMTPSA
 id MDaUhzlbssilZMDaVhKPqF; Thu, 02 May 2019 15:25:31 +0000
X-Xfinity-VMeta: sc=0;st=legit
To: usrp-users@lists.ettus.com
References: <2489f2eb-d1a4-2156-04b3-bf4611f16a57@mpb.li>
Message-ID: <2c9b1761-ed34-e991-b10a-4d73a04368cc@comcast.net>
Date: Thu, 2 May 2019 08:25:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2489f2eb-d1a4-2156-04b3-bf4611f16a57@mpb.li>
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Plagued by sporadic TX underruns on some systems,
 B200
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
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

U2V0dGluZyBhIGxhcmdlIG51bWJlciBvZiBVSEQgYnVmZmVycyBjYW4gaGVscCBxdWl0ZSBhIGJp
dC4gSW4gdGhlIEdSQyAKVUhEIFNpbmsgYmxvY2sgZGV2aWNlIGFkZHJlc3M6CgoibnVtX3NlbmRf
ZnJhbWVzPTI1NiIKCkluIFB5dGhvbjoKCiDCoMKgwqDCoMKgwqDCoCBzZWxmLnVoZF91c3JwX3Np
bmtfMF8wID0gdWhkLnVzcnBfc2luaygKIMKgwqDCoMKgwqDCoMKgIMKgwqDCoCAiLCIuam9pbigo
Im51bV9zZW5kX2ZyYW1lcz0yNTYiLCAiIikpLAogwqDCoMKgwqDCoMKgwqAgwqDCoMKgIHVoZC5z
dHJlYW1fYXJncygKIMKgwqDCoMKgwqDCoMKgIMKgwqDCoCDCoMKgwqAgY3B1X2Zvcm1hdD0iZmMz
MiIsCiDCoMKgwqDCoMKgwqDCoCDCoMKgwqAgwqDCoMKgIGNoYW5uZWxzPXJhbmdlKDEpLAogwqDC
oMKgwqDCoMKgwqAgwqDCoMKgICksCiDCoMKgwqDCoMKgwqDCoCApCgpSb24KCk9uIDUvMi8xOSAw
NToxOCwgTWF0dGhpYXMgQnLDpG5kbGkgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4gRGVhciBhbGws
Cj4KPiBJJ20gbWFpbnRhaW5pbmcgT0RSLURhYk1vZFsxXSwgYSBEaWdpdGFsIEF1ZGlvIEJyb2Fk
Y2FzdGluZyBtb2R1bGF0b3IKPiB3aGljaCB1c2VzIFVIRCB0byBkcml2ZSBhIFVTUlAgYXQgMjA0
OGtzcHMsIGluIG1vc3QgYXBwbGljYXRpb25zIGEgQjIwMC4KPgo+IE9EUi1EYWJNb2QgcnVucyB0
aGUgbW9kdWxhdG9yIGFuZCB0aGUgVUhEIG91dHB1dCBpbiBzZXBhcmF0ZSB0aHJlYWRzLCB0bwo+
IGVuc3VyZSB0aGF0IGEgZmV3IG1vZHVsYXRlZCBmcmFtZXMgYXJlIGFsd2F5cyByZWFkeSB3aGVu
IHRoZSBVU1JQIG5lZWRzCj4gb25lWzJdLiBJdCByZXF1ZXN0cyByZWFsdGltZSBzY2hlZHVsaW5n
WzNdLiBUaGUgc3lzdGVtIHJ1bnMgaGVhZGxlc3MgKG5vCj4gWDExIHJ1bm5pbmcpLCBhbmQgZ2Vu
ZXJhbGx5IGRvZXNuJ3QgaGF2ZSBhbnl0aGluZyBlbHNlIHJ1bm5pbmcuCj4KPiBPbiBzb21lIHN5
c3RlbXMsIHdlIG9ic2VydmUgc3BvcmFkaWMgdW5kZXJydW5zLiBUaGV5IG9jY3VyIGluIGlycmVn
dWxhcgo+IGludGVydmFscywgc29tZXRoaW5nIGxpa2Ugb25jZSBhIG1pbnV0ZSwgc29tZXRpbWVz
IHJhcmVyLiBTZWVuIHdpdGggYm90aAo+IFVTQjIgYW5kIFVTQjMgaG9zdHMsIG92ZXIgc2V2ZXJh
bCBVSEQgdmVyc2lvbnMuIFVudGlsIG5vdyB3ZSd2ZSBtb3N0bHkKPiBiZWVuIGFibGUgdG8gYXZv
aWQgdGhlIGlzc3VlIGJ5IHNlbGVjdGluZyBtYWNoaW5lcyB0aGF0IGRvbid0IHNob3cgdGhlCj4g
aXNzdWUsIGJ1dCB3ZSBob3BlIHdlIGNhbiBmaW5kIGEgbWl0aWdhdGlvbiBpbiBzb2Z0d2FyZS4K
Pgo+IEJvdGggdGhlIGRhdGEgc291cmNlIHRoZSBtb2R1bGF0b3IgY29ubmVjdHMgdG8gYW5kIHRo
ZSBVU1JQIGhhdmUgYQo+IGRpc2NpcGxpbmVkIHRpbWUgcmVmZXJlbmNlLCBpbXBseWluZyB0aGVy
ZSBpcyBubyByYXRlIGRyaWZ0IChwbHVzLCB0aGF0Cj4gd291bGQgdHJpZ2dlciByZWd1bGFyIHVu
ZGVycnVucywgbm90IHNwb3JhZGljIG9uZXMpLgo+Cj4KPiBUaGVyZSBhcmUgc29tZSBwYXJhbWV0
ZXJzIGRlc2NyaWJlZCBpbiBVU0IgVHJhbnNwb3J0IFBhcmFtZXRlcnNbNF0sIGRvZXMKPiBpdCBt
YWtlIHNlbnNlIHRvIGNoYW5nZSB0aG9zZT8KPgo+IENvdWxkIENQVSBmcmVxdWVuY3kgc2NhbGlu
ZyBsZWFkIHRvIGludGVycnVwdGlvbnM/Cj4KPiBBcmUgdGhlcmUgb3RoZXIga25vYnMgdG8gdHVy
biB0aGF0IEknbSBub3QgYXdhcmUgb2Y/IERldmljZSwgc3RyZWFtIG9yCj4gbGludXgga2VybmVs
IHNldHRpbmdzPwo+Cj4gSXMgdGhlIGFwcHJvYWNoIG9mIHVzaW5nIGEgc2VwYXJhdGUgdGhyZWFk
IGZvciBVSEQgb3V0cHV0IGJlbmVmaWNpYWw/Cj4KPiBBbnl0aGluZyBlbHNlPwo+Cj4gU29ycnkg
Zm9yIHRoZSB2YWd1ZSBkZXNjcmlwdGlvbiBvZiB0aGUgaXNzdWUgYW5kIHRoZSBtYW55IHF1ZXN0
aW9ucywgYnV0Cj4gSSdtIGEgYml0IG91dCBvZiBpZGVhcyBhYm91dCBob3cgdG8gYXBwcm9hY2gg
dGhhdC4gSWYgYW55Ym9keSBoYWQKPiBzaW1pbGFyIHByb2JsZW1zIEknZCBiZSBjdXJpb3VzIHRv
IGhlYXIgeW91ciBleHBlcmllbmNlcy4KPgo+IENoZWVycwo+IG1wYgo+Cj4gWzFdCj4gaHR0cHM6
Ly9naXRodWIuY29tL09wZW5kaWdpdGFscmFkaW8vT0RSLURhYk1vZAo+Cj4gWzJdCj4gTG9vayBm
b3IgbV9xdWV1ZSBpbgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9PcGVuZGlnaXRhbHJhZGlvL09EUi1E
YWJNb2QvYmxvYi9tYXN0ZXIvc3JjL291dHB1dC9TRFIuY3BwCj4KPiBbM10KPiBGb3IgYWxsIHRo
cmVhZHMgaW52b2x2ZWQgaW4gRFNQIGFuZCB0aGUgU0RSIG91dHB1dCB0aHJlYWQuIEdyZXAgZm9y
Cj4gYHNldF9yZWFsdGltZV9wcmlvYC4KPgo+IFs0XQo+IGh0dHBzOi8vZmlsZXMuZXR0dXMuY29t
L21hbnVhbC9wYWdlX3RyYW5zcG9ydC5odG1sI3RyYW5zcG9ydF91c2IKPgo+IERlZmF1bHQgc2Vu
ZF9mcmFtZV9zaXplIHNlZW1zIHRvIGJlIG9uIGxpbmUgODUgb2YKPiBodHRwczovL2ZpbGVzLmV0
dHVzLmNvbS9tYW51YWwvYjIwMF9faW1wbF84aHBwX3NvdXJjZS5odG1sCj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMu
Y29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNv
bS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
