Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E3D2D44C5
	for <lists+usrp-users@lfdr.de>; Wed,  9 Dec 2020 15:50:30 +0100 (CET)
Received: from [::1] (port=59676 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kn0nV-00085L-Jo; Wed, 09 Dec 2020 09:50:29 -0500
Received: from dd22108.kasserver.com ([85.13.141.232]:39956)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <julian@elitecoding.org>)
 id 1kn0nR-0007zL-IW
 for usrp-users@lists.ettus.com; Wed, 09 Dec 2020 09:50:25 -0500
Received: from [192.168.2.23] (p5b2361d1.dip0.t-ipconnect.de [91.35.97.209])
 by dd22108.kasserver.com (Postfix) with ESMTPSA id E891E4420077;
 Wed,  9 Dec 2020 15:49:43 +0100 (CET)
To: saptarshiv2hazra@gmail.com, usrp-users@lists.ettus.com
References: <7A9E93AA-5955-4874-94DC-AEA1FE4339FD@gmail.com>
Message-ID: <59356f83-3ab3-0916-676e-f049a417141c@elitecoding.org>
Date: Wed, 9 Dec 2020 15:49:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <7A9E93AA-5955-4874-94DC-AEA1FE4339FD@gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Receiving on multiple subdevs using USRP B210
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

U2FwdGFyc2hpLAoKSSdtIG5vdCBlbnRpcmVseSBzdXJlIEkgZnVsbHkgdW5kZXJzdGFuZCB3aGF0
IHlvdSBhcmUgZG9pbmcuIFlvdSAKcHJvYmFibHkgbmVlZCB0byBwcm92aWRlIHNvbWUgbW9yZSBk
ZXRhaWxzLgoKSG93ZXZlciwgaW4gZ2VuZXJhbCwgZGVwZW5kaW5nIG9uIHdoYXQgeW91IG1hc3Rl
ci1jbG9jay1yYXRlIGlzLApkb2luZyBhIDVNSHogc2hpZnQgaW4gdGhlIERTUCBkb2VzIG5vdCBt
YWtlIG11Y2ggc2Vuc2UgaWYgeW91cgpzYW1wbGUtcmF0ZSBhbmQgeW91ciBhbmFsb2cgYmFuZHdp
ZHRoIGFyZSBvbmx5IDUgTUh6LiBUaGVyZSBpcyBqdXN0IG5vIApzaWduYWwgYXQgeW91ciA1TUh6
IG9mZnNldCB5b3UgY291bGQgcG9zc2libHkgc2hpZnQgZG93biB0byBiYXNlLWJhbmQuCgpDaGVl
cnMsCkp1bGlhbgoKT24gMTIvOS8yMCAxMDo0MSBBTSwgU2FwdGFyc2hpIEhhenJhIHZpYSBVU1JQ
LXVzZXJzIHdyb3RlOgo+IEhpLAo+IAo+IEkgYW0gdHJ5aW5nIHRvIHJlY2VpdmUgb24gdHdvIGRp
ZmZlcmVudCBjZW50cmUgZnJlcXVlbmNpZXMgKDIuNDc1ZTkgYW5kIAo+IDIuNDhlOSkgdXNpbmcg
dGhlIHR3byByZWNlaXZlciBjaGFpbnMgb24gQjIxMC4gU2luY2UgdGhleSBhcmUgY2xvc2UgYnks
IAo+IEkgdGhvdWdodCDCoGNhbiByZWNlaXZlIHRoZW0gYnkgc2V0dGluZyB0aGUg4oCcZHNwX2Zy
ZXHigJ0gcGFyYW1ldGVyLgo+IAo+IENhc2UgMToKPiAKPiBTdWJkZXY6IEE6QSBvciBBOkIKPiBO
Y2hhbm5lbCA6IDEKPiBDZW50cmUgRnJlcXVlbmN5OiAyLjQ3NWU5Cj4gU2FtcGxpbmcgUmF0ZTog
NWU2Cj4gQlc6IDVlNgo+IAo+IElmIEkgdXNlIHRoZSBjb21tYW5kIHBvcnQgdGhlIFVTUlAgc291
cmNlIGJsb2NrIHRvIHBhc3MgYSBwbXQgZGljdGlvbmFyeToKPiAKPiBwbXQudG9fcG10KHvigJxs
b19mcmVx4oCdOjIuNDc1ZTksIOKAnGRzcF9mcmVx4oCdOiAtNWU2fSkKPiAKPiAKPiBJIGFtIGFi
bGUgdG8gcmVjZWl2ZSByYWRpbyBwYWNrZXRzIHNlbnQgYnkgbm9kZXMgb24gMi40OGU5IEh6Cj4g
Cj4gQ2FzZSAyOgo+IAo+IFN1YmRldjogQTpBIMKgQTpCCj4gTmNoYW5uZWwgOiAyCj4gU2FtcGxp
bmcgUmF0ZTogNWU2Cj4gQ2VudHJlIEZyZXF1ZW5jeSAxOiAyLjQ3NWU5Cj4gQ2VudHJlIEZyZXF1
ZW5jeSAyOiAyLjQ3NWU5Cj4gQlc6IDVlNgo+IAo+IEkgdXNlIHRoZSBwbXQgZGljdGlvbmFyeToK
PiAKPiBwbXQudG9fcG10KHvigJxjaGFu4oCdOjAsIOKAnGxvX2ZyZXHigJ06Mi40NzVlOSwg4oCc
ZHNwX2ZyZXHigJ06IC01ZTZ9KQo+IAo+IAo+IAo+IFdoZW4gSSBkbyB0aGlzIHNvbWV0aW1lcyBJ
IHJlY2VpdmUgZGF0YSBmcm9tIG5vZGVzwqB0cmFuc21pdHRpbmcgb24gCj4gMi40OGU5SHouIMKg
YW5kIHNvbWV0aW1lcyBvbiAyLjQ3NUh6LsKgVGhlIGJlaGF2aW91ciBiZWNvbWVzIGVudGlyZWx5
wqByYW5kb20uCj4gSSB3b3VsZCByZWFsbHkgYXBwcmVjaWF0ZSBhbnkgaGVscCBpbsKgZmlndXJp
bmcgb3V0IGhvdyB0byByZWNlaXZlIAo+IHNpbXVsdGFuZW91c2x5IG9uIHRoZXNlIHR3b8KgY2Vu
dHJlIGZyZXF1ZW5jaWVzLgo+IAo+IFRoYW5rcywKPiBTYXB0YXJzaGkKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMu
Y29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
