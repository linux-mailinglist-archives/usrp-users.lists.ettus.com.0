Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9920FB41F9
	for <lists+usrp-users@lfdr.de>; Mon, 16 Sep 2019 22:37:07 +0200 (CEST)
Received: from [::1] (port=35832 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9xk8-0004H9-W6; Mon, 16 Sep 2019 16:37:04 -0400
Received: from dd22108.kasserver.com ([85.13.141.232]:47008)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <julian@elitecoding.org>)
 id 1i9xk5-0003rQ-7B
 for usrp-users@lists.ettus.com; Mon, 16 Sep 2019 16:37:01 -0400
Received: from [192.168.2.116] (pD951E06A.dip0.t-ipconnect.de [217.81.224.106])
 by dd22108.kasserver.com (Postfix) with ESMTPSA id B7B0E442001D;
 Mon, 16 Sep 2019 22:36:19 +0200 (CEST)
To: =?UTF-8?Q?Skorstad=2cJ=c3=b8rn?= <Joern.Skorstad@Nkom.no>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <ecbac5bf-b40a-4c93-980b-cc6f7c852f1a@email.android.com>
 <BC4D9856-CF67-47A5-BBFF-74B38B0F72EA@gmail.com>
 <4e120fcf-28e9-d02b-8523-3a7273b2f7aa@elitecoding.org>
 <D71B2B9BB39CE44CACCAB6646DF20CFD48D79E3D@exmbx01>
Message-ID: <40721168-f9fa-bd3c-7dc4-47e610e059df@elitecoding.org>
Date: Mon, 16 Sep 2019 22:36:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <D71B2B9BB39CE44CACCAB6646DF20CFD48D79E3D@exmbx01>
Content-Language: en-US
Subject: Re: [USRP-users] E310 filter settings and LO lock question
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
From: Julian Arnold via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Julian Arnold <julian@elitecoding.org>
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

Sm9ybiwKCndoaWxlIHR1bmluZywgc2FtcGxlcyB3aWxsIGNvbnRpbnVlIHRvIGZsb3cgZnJvbSB0
aGUgZGV2aWNlIHRvIHlvdXIgaG9zdCAKKGlmIHlvdXIgcmVjdiBsb29wIGlzIHJ1bm5pbmcgaW4g
YSBzZXBhcmF0ZSB0aHJlYWQpLgpIb3dldmVyLCB3aGlsZSBVSEQgaXMgcHJvY2Vzc2luZyB5b3Vy
IGNhbGwgdG8gJ3NldF9yeF9mcmVxJyB0aGVyZSB3aWxsIApiZSBzb21lIHRyYW5zaWVudCBiZWhh
dmlvciB2aXNpYmxlIGluIHRoZSByZWNlaXZlZCBzYW1wbGVzLgpUaHVzLCB5b3Ugc2hvdWxkIHBy
b2JhYmx5IGRpc2NhcmQgYWxsIHJlY2VpdmVkIHNhbXBsZXMgd2hpbGUgd2FpdGluZyBmb3IgCidz
ZXRfcnhfZnJlcScgdG8gZmluaXNoLgoKVGhlIHR1bmluZyBwcm9jZXNzIG9uIHRoZSBFMzEwL0Iy
MTAgaXMgYWN0dWFsbHkgcmVsYXRpdmVseSBpbnZvbHZlZCAKKGNhbGlicmF0aW9uIHdpc2UpLiBU
aGUgZnJvbnQtZW5kIElDIGhhcyB0byBwZXJmb3JtIGNhbGlicmF0aW9uIG9mIApzZXZlcmFsIHN0
YWdlcyB3aGVuIGNoYW5naW5nIGZyZXF1ZW5jeS4gU29tZSBvZiB0aG9zZSBjYWxpYnJhdGlvbiBz
dGVwcyAKb25seSBoYXBwZW4gZXZlcnkgMTAwIE1IeiB3aGljaCBpcyB3aHkgeW91IHdpbGwgbm90
aWNlIHRoYXQgc29tZSBjYWxscyAKdG8gJ3NldF9yeF9mcmVxJyB3aWxsIHRha2UgY29uc2lkZXJh
Ymx5IGxvbmdlciB0aGFuIG90aGVycy4KCldoaWxlICdzZXRfcnhfZnJlcScgaXMgYmxvY2tpbmcg
ZHVyaW5nIHRoaXMgY2FsaWJyYXRpb24gcHJvY2VzcywgdGhlcmUgCmFyZSBvdGhlciBwYXJ0cyBp
biB0aGUgZnJvbnQtZW5kIHRoYXQgbWlnaHQgKGRlcGVuZGluZyBvbiB5b3UgaW5wdXQpIAp0YWtl
IHNvbWUgbW9yZSB0aW1lIHRvIHNldHRsZSAodGhlIERDIG9mZnNldCBhbmQgSVEgaW1iYWxhbmNl
IApjb3JyZWN0aW9uLCBmb3IgZXhhbXBsZSkuClNvIGl0J3Mgbm90IGEgYmFkIGlkZWEgdG8gZ2l2
ZSB0aGUgZGV2aWNlIHNvbWUgZXh0cmEgdGltZSBhZnRlciAKJ3NldF9yeF9mcmVxJyBpcyBkb25l
IGJlZm9yZSBwcm9jZXNzaW5nIHNhbXBsZXMgYWdhaW4uCgpIb3BlIHRoaXMgaGVscHMuIExldCBt
ZSBrbm93IGlmIHlvdSBoYXZlIGFueSBmdXJ0aGVyIHF1ZXN0aW9ucy4KQ2hlZXJzLApKdWxpYW4K
Ck9uIDE2LjA5LjE5IDE1OjM4LCBTa29yc3RhZCxKw7hybiB2aWEgVVNSUC11c2VycyB3cm90ZToK
PiBNYW55IHRoYW5rcyBmb3IgeW91ciBhbnN3ZXJzLiBEbyB5b3Uga25vdyBpZiB0aGUgRTMxMCB3
aWxsIGhhbHQgdGhlIGRhdGEgc3RyZWFtIHdoaWxlIGNoYW5naW5nIGZpbHRlci9mcmVxdWVuY3ks
IG9yIGRvIEkgbmVlZCB0byB0YWtlIHRoaXMgaW50byBhY2NvdW50IGluIHRoZSBzb2Z0d2FyZSB3
aGlsZSBjaGFuZ2luZyBmcmVxdWVuY2llcz8KPiAKPiAKPiBKb3JuLAo+IAo+IHJlZ2FyZGluZyB5
b3VyIG90aGVyIHF1ZXN0aW9uLCBmaWx0ZXIgc2VsZWN0aW9uIG9uIHRoZSBFMzEwIGlzIGhhbmRs
ZWQgYnkgVUhELCBpbnRlcm5hbGx5Lgo+IAo+IENoZWVycywKPiBKdWxpYW4KPiAKPiBPbiAxNS4w
OS4xOSAyMDo1NCwgTWFyY3VzIEQgTGVlY2ggdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4+IE15IHJl
Y29sbGVjdGlvbiBpcyB0aGF0IHRoZSBBRDkzNjEgUkYgY2hpcCBkb2VzbuKAmXQgaGF2ZSBhbiBl
eHRlcm5hbCBsb2NrIGluZGljYXRvci4KPj4KPj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Pgo+Pj4g
T24gU2VwIDE1LCAyMDE5LCBhdCA5OjE3IEFNLCBTa29yc3RhZCxKw7hybiB2aWEgVVNSUC11c2Vy
cyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+Pj4KPj4+IEhpIGFsbCwKPj4+
Cj4+Pgo+Pj4KPj4+IEkgYW0gY3VycmVudGx5IHdvcmtpbmcgb24gYSBwcm9qZWN0IHVzaW5nIGEg
VVNSUCBFMzEwIHRvIG91dHB1dCBhbiBGRlQgcGxvdCBvdmVyIGEgZ2l2ZW4gZnJlcXVlbmN5IHJh
bmdlICh1c3VhbGx5IGJpZ2dlciB0aGFuIHRoZSBwb3NzaWJsZSBzYW1wbGUgcmF0ZSkuIFRoZSBw
cm9ncmFtIGlzIHdyaXR0ZW4gaW4gQysrIHVzaW5nIHRoZSBVSEQgbGlicmFyeS4gRnJlcXVlbmN5
IHJhbmdlIGlzIGFjaGlldmVkIGJ5IGNoYW5naW5nIHRoZSBMTyBmcmVxdWVuY3kgcmVndWxhcmx5
LiBUaGUgcHJvZ3JhbSBzZWVtcyB0byB3b3JrLCBob3dldmVyIEkgaGF2ZSB0d28gcXVlc3Rpb25z
IEkgY2Fu4oCZdCBmaW5kIHRoZSBhbnN3ZXIgdG8gaW4gdGhlIFVIRCBtYW51YWw6Cj4+Pgo+Pj4K
Pj4+Cj4+PiBUaGUgRTMxMCBoYXMgYW5hbG9nIGZpbHRlcnMgb24gdGhlIFJYIGFuZCBUWCBwb3J0
cy4gVGhlIGRvY3VtZW50YXRpb24gaXMgYSBsaXR0bGUgc2hvcnQgb24gaG93IHRoZXNlIGZpbHRl
cnMgYXJlIGNvbnRyb2xsZWQuIEFyZSB0aGV5IHNlbGVjdGVkIGF1dG9tYXRpY2FsbHkgYmFzZWQg
b24gdGhlIExPIGZyZXF1ZW5jeSwgb3IgZG8gdGhleSBuZWVkIHRvIGJlIG1hbnVhbGx5IHNlbGVj
dGVkPyBJZiBzbywgaG93PyBBbmQgd2hhdCB3b3VsZCBiZSB0aGUgKGVzdGltYXRlZCkgY2hhbmdl
b3ZlciB0aW1lIGJldHdlZW4gZmlsdGVycz8KPj4+Cj4+Pgo+Pj4KPj4+IExPIGxvY2sg4oCTIEkg
dHJpZWQgdG8gZGV0ZWN0IGlmIExPIGlzIGxvY2tlZCBhZnRlciBhIHR1bmUgcmVxdWVzdCB1c2lu
ZyB0aGUgVUhEIG1hbnVhbCBhcyBhIHJlZmVyZW5jZS4gSWYgSSBpbmNsdWRlIHRoZSBmb2xsb3dp
bmcgZGlyZWN0bHkgYWZ0ZXIgYSB0dW5lIHJlcXVlc3Qgbm90aGluZyBpcyBwcmludGVkOgo+Pj4K
Pj4+ICAgIHdoaWxlICghdXNycC0+Z2V0X3J4X3NlbnNvcigibG9fbG9ja2VkIikudG9fYm9vbCgp
KSBzdGQ6OmNvdXQgPDwKPj4+ICJQTEwgdW5sb2NrZWQhIiA8PCBzdGQ6OmVuZGw7Cj4+Pgo+Pj4K
Pj4+Cj4+PiBJcyB0aGVyZSBzb21lIG90aGVyIHdheSB0byBkZXRlY3QgTE8gbG9jaz8KPj4+Cj4+
Pgo+Pj4KPj4+IFJlZ2FyZHMsCj4+Pgo+Pj4gSm9ybgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dAo+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+Pgo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdAo+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiBodHRwOi8vbGlz
dHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
Pj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRw
Oi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1
cy5jb20KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6
Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVz
LmNvbQo=
