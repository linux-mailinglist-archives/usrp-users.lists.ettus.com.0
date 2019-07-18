Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0B86D627
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 22:59:11 +0200 (CEST)
Received: from [::1] (port=42732 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoDUc-0003OC-2n; Thu, 18 Jul 2019 16:59:10 -0400
Received: from mxin.vub.ac.be ([134.184.129.114]:20773)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Cedric.Hannotier@ulb.ac.be>)
 id 1hoDUW-00037e-RO
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 16:59:05 -0400
IronPort-SDR: 8SDHLbKsjqXYN2Wiy1KLMxWlCrwJNn4ulMN3AOUafFkrG21UKKJUIKNnaVr4ryOgXbjamzpHOf
 nkVrMZzKpuh1D6vEWQInGcxjX7O5q5XWA=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GZBwBs3DBd/y6BuIZmhQllIRKER4h?=
 =?us-ascii?q?7pDmBZwEIAQEBOgECAQGHMjgTAQMBAQUBAQEBBQICaYVIhXUECwEFVSECJgJ?=
 =?us-ascii?q?6hSWqfn8ziEohTIEPgQwoiEOFMoERh1yBBYI+glgEjEqeGQcCghuNVYYvI4I?=
 =?us-ascii?q?ting5iiynFCKBWE0gg0CCFQEBATQXjiNAgTYBAY1uAQE?=
X-IPAS-Result: =?us-ascii?q?A2GZBwBs3DBd/y6BuIZmhQllIRKER4h7pDmBZwEIAQEBO?=
 =?us-ascii?q?gECAQGHMjgTAQMBAQUBAQEBBQICaYVIhXUECwEFVSECJgJ6hSWqfn8ziEohT?=
 =?us-ascii?q?IEPgQwoiEOFMoERh1yBBYI+glgEjEqeGQcCghuNVYYvI4Iting5iiynFCKBW?=
 =?us-ascii?q?E0gg0CCFQEBATQXjiNAgTYBAY1uAQE?=
Received: from webmail.vub.ac.be (HELO webmail.ulb.ac.be) ([134.184.129.46])
 by smtp.vub.ac.be with ESMTP; 18 Jul 2019 22:58:23 +0200
MIME-Version: 1.0
Date: Thu, 18 Jul 2019 22:58:23 +0200
To: usrp-users@lists.ettus.com
Message-ID: <fa2116e1dbbe2b6fa62a181551995721@imapproxy.vub.ac.be>
X-Sender: Cedric.Hannotier@ulb.ac.be
User-Agent: Roundcube Webmail/0.9.5
Subject: [USRP-users] USRP X310 send period
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
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <Cedric.Hannotier@ulb.ac.be>
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

RGVhciBhbGwsCgpJIHdvdWxkIGxpa2UgdG8gcGVyaW9kaWNhbGx5IHNlbmQgYSBmcmFtZSB3aXRo
IGFuIFVTUlAgWDMxMCAoZnJhbWUgCmxlbmd0aDogMzIwIHNhbXBsZXMsIHJhdGU6IDIwIE1TL3Ms
IHBlcmlvZDogMS01MDAgbXMpLiBIb3dldmVyLCBJIApzdHJ1Z2dsZSB0byBmaW5kIHRoZSBiZXN0
IHdheSB0byBpbXBsZW1lbnQgaXQuIFdoYXQgSSBoYXZlIHRyaWVkIHNvIGZhcjoKCiAgMS4gQXBw
ZW5kIHplcm9zIHRvIHRoZSBmcmFtZSB0byByZWFjaCB0aGUgZXhwZWN0ZWQgcGVyaW9kLiBIb3dl
dmVyLCAKdGhpcyBjb25zdW1lcyB0b28gbXVjaCBiYW5kd2lkdGggZHVlIHRvIHRoZSB6ZXJvcy4K
CiAgMi4gVXNlIHR4X3N0cmVhbWVyLT5zZW5kKCkgd2l0aCBhIHR4X21ldGFkYXRhX3QudGltZV9z
cGVjIGFuZCAKdHhfc3RyZWFtZXItPnJlY3ZfYXN5bmNfbXNnKCkuIFVzaW5nIHRoYXQsIG9ubHkg
dGhlIGZyYW1lIGlzIHNlbnQsIApzYXZpbmcgbW9zdCBvZiB0aGUgYmFuZHdpZHRoLiBIb3dldmVy
LCB3aXRoIHNtYWxsIHBlcmlvZHMsIGl0IHRlbmRzIHRvIApwcmludCBzb21lICdMJy4KCiAgMy4g
QnVmZmVyIGEgYmF0Y2ggb2Ygc2VuZCByZXF1ZXN0IG9uIHRoZSBVU1JQLCB0aGVuIHdhaXQgYSBz
cGVjaWZpYyAKdGltZSAodXNpbmcgZWcuIHJlY3ZfYXN5bmNfbXNnKCkgdW50aWwgdGhlIHJldHVy
bmVkIG1ldGFkYXRhIGNvbnRhaW5zIAp0aGUgcGVudWx0aW1hdGUgdGltZV9zcGVjIChJIGV4cGVj
dCB0aGF0IHRoZSB0aW1lX3NwZWMgcmV0dXJuZWQgaXMgdGhlIApvbmUgc3BlY2lmaWVkIGluIHRo
ZSBzZW5kIG1ldGFkYXRhKSkgYW5kIHJlZG8uIFRoZSBpc3N1ZSBpcyB0aGF0IEkgd2FzIApub3Qg
YWJsZSB0byBmaW5kIHRoZSBidWZmZXIgc2l6ZSAoaXMgaXQgcmVsYXRlZCB0byB0aGUgCnR4X3N0
cmVhbWVyLT5nZXRfbWF4X251bV9zYW1wcygpPykuIEkgd291bGQgbGlrZSB0byBmaWxsIHRoZSBi
dWZmZXIgCndpdGhvdXQgb3ZlcmZsb3cuCgpJIHdhcyBob3BpbmcgdGhhdCBJIGNvdWxkIHNhdmUg
dGhlIGZyYW1lIGluIGFuIFVTUlAncyBtZW1vcnksIGFuZCB0aGVuIAphc2sgaXQgdG8gcGVyaW9k
aWNhbGx5IHNlbmQgdGhlIGZyYW1lIHdpdGggYSBzcGVjaWZpYyBwZXJpb2QuIElzIGl0IApwb3Nz
aWJsZT8KCkhlcmUgaXMgYW4gZXhhbXBsZSBvZiAoMik6Cgp0ZW1wbGF0ZSA8dHlwZW5hbWUgc2Ft
cF90eXBlPgp2b2lkIHNlbmRfZnJvbV9maWxlKGNvbnN0IHVoZDo6dXNycDo6bXVsdGlfdXNycDo6
c3B0ciAmdXNycCwKICAgICAgICAgICAgICAgICAgICAgdWhkOjp0eF9zdHJlYW1lcjo6c3B0ciB0
eF9zdHJlYW0sIGNvbnN0IHN0ZDo6c3RyaW5nJiAKZmlsZSwKICAgICAgICAgICAgICAgICAgICAg
Y29uc3QgZG91YmxlIHBlcmlvZCkKewpzaXplX3QgZGF0YV9zaXplID0gZ2V0X2ZpbGVfc2l6ZTxz
YW1wX3R5cGU+KGZpbGUpOwpzdGQ6Omlmc3RyZWFtIGluZmlsZShmaWxlLCBzdGQ6Omlmc3RyZWFt
OjpiaW5hcnkpOwpzdGQ6OnZlY3RvcjxzYW1wX3R5cGU+IGJ1ZmYoZGF0YV9zaXplKTsKaW5maWxl
LnJlYWQocmVpbnRlcnByZXRfY2FzdDxjaGFyKj4oYnVmZi5kYXRhKCkpLCAKKHN0ZDo6c3RyZWFt
c2l6ZSkoYnVmZi5zaXplKCkqc2l6ZW9mKHNhbXBfdHlwZSkpKTsKaW5maWxlLmNsb3NlKCk7CnNp
emVfdCBudW1fdHhfc2FtcHMgPSBidWZmLnNpemUoKTsKc3RkOjpjb3V0IDw8IGZpbGUgPDwgIiAi
IDw8IGJ1ZmZbMF0gPDwgIiAiIDw8IG51bV90eF9zYW1wcyA8PCBzdGQ6OmVuZGw7Cgp1aGQ6OnR4
X21ldGFkYXRhX3QgbWQ7Cm1kLnN0YXJ0X29mX2J1cnN0ID0gdHJ1ZTsKbWQuZW5kX29mX2J1cnN0
ICAgPSB0cnVlOwptZC5oYXNfdGltZV9zcGVjICA9IHRydWU7Cm1kLnRpbWVfc3BlYyAgICA9IHVz
cnAtPmdldF90aW1lX2xhc3RfcHBzKCkrNS47CmRvdWJsZSB0aW1lb3V0ID0gbWQudGltZV9zcGVj
LmdldF9yZWFsX3NlY3MoKTsKdWhkOjphc3luY19tZXRhZGF0YV90IG1kX3N0YXR1czsKCndoaWxl
IChub3Qgc3RvcF9zaWduYWxfY2FsbGVkKSB7Cgl0eF9zdHJlYW0tPnNlbmQoJmJ1ZmYuZnJvbnQo
KSwgbnVtX3R4X3NhbXBzLCBtZCk7CglpZiAodHhfc3RyZWFtLT5yZWN2X2FzeW5jX21zZyhtZF9z
dGF0dXMsIHRpbWVvdXQpKSB7CgkJaWYgKG1kX3N0YXR1cy5ldmVudF9jb2RlICE9IAp1aGQ6OmFz
eW5jX21ldGFkYXRhX3Q6OmV2ZW50X2NvZGVfdDo6RVZFTlRfQ09ERV9CVVJTVF9BQ0spIHsKCQkJ
c3RkOjpjZXJyIDw8ICJFcnJvcjogIiA8PCBtZF9zdGF0dXMuZXZlbnRfY29kZSA8PCBzdGQ6OmVu
ZGw7CgkJCWV4aXQoRVhJVF9GQUlMVVJFKTsKCQl9Cgl9IGVsc2UgewoJCXN0ZDo6Y2VyciA8PCAi
dGltZW91dCBiZWZvcmUgc2VudCIgPDwgc3RkOjplbmRsOwoJCWV4aXQoRVhJVF9GQUlMVVJFKTsK
CX0KCgl0aW1lb3V0ID0gMC4xOwoJbWQudGltZV9zcGVjICs9IHBlcmlvZDsKfQp9CgoKCkJlc3Qg
UmVnYXJkcywKQ8OpZHJpYwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlz
dHMuZXR0dXMuY29tCg==
