Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C15CAB31EC
	for <lists+usrp-users@lfdr.de>; Sun, 15 Sep 2019 22:15:17 +0200 (CEST)
Received: from [::1] (port=57792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9avT-0003wT-DE; Sun, 15 Sep 2019 16:15:15 -0400
Received: from dd22108.kasserver.com ([85.13.141.232]:36452)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <julian@elitecoding.org>)
 id 1i9avP-0003rW-NB
 for usrp-users@lists.ettus.com; Sun, 15 Sep 2019 16:15:11 -0400
Received: from [192.168.2.116] (pD951E06A.dip0.t-ipconnect.de [217.81.224.106])
 by dd22108.kasserver.com (Postfix) with ESMTPSA id 3F5264420063;
 Sun, 15 Sep 2019 22:14:30 +0200 (CEST)
To: =?UTF-8?Q?Skorstad=2cJ=c3=b8rn?= <Joern.Skorstad@nkom.no>
References: <ecbac5bf-b40a-4c93-980b-cc6f7c852f1a@email.android.com>
 <BC4D9856-CF67-47A5-BBFF-74B38B0F72EA@gmail.com>
Message-ID: <4e120fcf-28e9-d02b-8523-3a7273b2f7aa@elitecoding.org>
Date: Sun, 15 Sep 2019 22:14:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <BC4D9856-CF67-47A5-BBFF-74B38B0F72EA@gmail.com>
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
Cc: usrp-users@lists.ettus.com
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

Sm9ybiwKCnJlZ2FyZGluZyB5b3VyIG90aGVyIHF1ZXN0aW9uLCBmaWx0ZXIgc2VsZWN0aW9uIG9u
IHRoZSBFMzEwIGlzIGhhbmRsZWQgCmJ5IFVIRCwgaW50ZXJuYWxseS4KCkNoZWVycywKSnVsaWFu
CgpPbiAxNS4wOS4xOSAyMDo1NCwgTWFyY3VzIEQgTGVlY2ggdmlhIFVTUlAtdXNlcnMgd3JvdGU6
Cj4gTXkgcmVjb2xsZWN0aW9uIGlzIHRoYXQgdGhlIEFEOTM2MSBSRiBjaGlwIGRvZXNu4oCZdCBo
YXZlIGFuIGV4dGVybmFsIGxvY2sgaW5kaWNhdG9yLgo+IAo+IFNlbnQgZnJvbSBteSBpUGhvbmUK
PiAKPj4gT24gU2VwIDE1LCAyMDE5LCBhdCA5OjE3IEFNLCBTa29yc3RhZCxKw7hybiB2aWEgVVNS
UC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+Pgo+PiBIaSBhbGws
Cj4+Cj4+Cj4+Cj4+IEkgYW0gY3VycmVudGx5IHdvcmtpbmcgb24gYSBwcm9qZWN0IHVzaW5nIGEg
VVNSUCBFMzEwIHRvIG91dHB1dCBhbiBGRlQgcGxvdCBvdmVyIGEgZ2l2ZW4gZnJlcXVlbmN5IHJh
bmdlICh1c3VhbGx5IGJpZ2dlciB0aGFuIHRoZSBwb3NzaWJsZSBzYW1wbGUgcmF0ZSkuIFRoZSBw
cm9ncmFtIGlzIHdyaXR0ZW4gaW4gQysrIHVzaW5nIHRoZSBVSEQgbGlicmFyeS4gRnJlcXVlbmN5
IHJhbmdlIGlzIGFjaGlldmVkIGJ5IGNoYW5naW5nIHRoZSBMTyBmcmVxdWVuY3kgcmVndWxhcmx5
LiBUaGUgcHJvZ3JhbSBzZWVtcyB0byB3b3JrLCBob3dldmVyIEkgaGF2ZSB0d28gcXVlc3Rpb25z
IEkgY2Fu4oCZdCBmaW5kIHRoZSBhbnN3ZXIgdG8gaW4gdGhlIFVIRCBtYW51YWw6Cj4+Cj4+Cj4+
Cj4+IFRoZSBFMzEwIGhhcyBhbmFsb2cgZmlsdGVycyBvbiB0aGUgUlggYW5kIFRYIHBvcnRzLiBU
aGUgZG9jdW1lbnRhdGlvbiBpcyBhIGxpdHRsZSBzaG9ydCBvbiBob3cgdGhlc2UgZmlsdGVycyBh
cmUgY29udHJvbGxlZC4gQXJlIHRoZXkgc2VsZWN0ZWQgYXV0b21hdGljYWxseSBiYXNlZCBvbiB0
aGUgTE8gZnJlcXVlbmN5LCBvciBkbyB0aGV5IG5lZWQgdG8gYmUgbWFudWFsbHkgc2VsZWN0ZWQ/
IElmIHNvLCBob3c/IEFuZCB3aGF0IHdvdWxkIGJlIHRoZSAoZXN0aW1hdGVkKSBjaGFuZ2VvdmVy
IHRpbWUgYmV0d2VlbiBmaWx0ZXJzPwo+Pgo+Pgo+Pgo+PiBMTyBsb2NrIOKAkyBJIHRyaWVkIHRv
IGRldGVjdCBpZiBMTyBpcyBsb2NrZWQgYWZ0ZXIgYSB0dW5lIHJlcXVlc3QgdXNpbmcgdGhlIFVI
RCBtYW51YWwgYXMgYSByZWZlcmVuY2UuIElmIEkgaW5jbHVkZSB0aGUgZm9sbG93aW5nIGRpcmVj
dGx5IGFmdGVyIGEgdHVuZSByZXF1ZXN0IG5vdGhpbmcgaXMgcHJpbnRlZDoKPj4KPj4gICB3aGls
ZSAoIXVzcnAtPmdldF9yeF9zZW5zb3IoImxvX2xvY2tlZCIpLnRvX2Jvb2woKSkgc3RkOjpjb3V0
IDw8ICJQTEwgdW5sb2NrZWQhIiA8PCBzdGQ6OmVuZGw7Cj4+Cj4+Cj4+Cj4+IElzIHRoZXJlIHNv
bWUgb3RoZXIgd2F5IHRvIGRldGVjdCBMTyBsb2NrPwo+Pgo+Pgo+Pgo+PiBSZWdhcmRzLAo+Pgo+
PiBKb3JuCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tCj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJz
X2xpc3RzLmV0dHVzLmNvbQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3Jw
LXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
