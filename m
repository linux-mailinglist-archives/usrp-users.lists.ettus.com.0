Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B6D6B838
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 10:31:09 +0200 (CEST)
Received: from [::1] (port=52416 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnfL0-0007sB-UU; Wed, 17 Jul 2019 04:30:58 -0400
Received: from mxin.vub.ac.be ([134.184.129.114]:26903)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Florence.Barras@ulb.ac.be>)
 id 1hnfKw-0007nR-51
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 04:30:54 -0400
IronPort-SDR: BM/l0Qlpc3RkvAsF6VolgLpecU1zAvVs64oT3Q5krI016SuTxywtjXcziOvcgheaZMJEfEYDFu
 Nj/OHThzkxNiew7+ZE+tTtWkbn91pVoPg=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GmCQAb3C5d/y6BuIZmHgEZBgaBVwG?=
 =?us-ascii?q?CbWUhEoRGiHuKPgacLwEIAQEBOgECAQGHKjgTAQMBAQUBAQEBBQICaYVIQgE?=
 =?us-ascii?q?QAYUhDwEFVSECJgJ6hREUrQKBMohGIROBSIEMKAGIQoQrgQeBEYd4aYI+glg?=
 =?us-ascii?q?EnF2OBgcCghuBbZIXI4Iting5iiynFCI+gRptgldpghUBAQGObkCBNgEBgRe?=
 =?us-ascii?q?MFwEB?=
X-IPAS-Result: =?us-ascii?q?A2GmCQAb3C5d/y6BuIZmHgEZBgaBVwGCbWUhEoRGiHuKP?=
 =?us-ascii?q?gacLwEIAQEBOgECAQGHKjgTAQMBAQUBAQEBBQICaYVIQgEQAYUhDwEFVSECJ?=
 =?us-ascii?q?gJ6hREUrQKBMohGIROBSIEMKAGIQoQrgQeBEYd4aYI+glgEnF2OBgcCghuBb?=
 =?us-ascii?q?ZIXI4Iting5iiynFCI+gRptgldpghUBAQGObkCBNgEBgReMFwEB?=
Received: from webmail.vub.ac.be (HELO webmail.ulb.ac.be) ([134.184.129.46])
 by smtp.vub.ac.be with ESMTP; 17 Jul 2019 10:30:12 +0200
MIME-Version: 1.0
Date: Wed, 17 Jul 2019 10:30:12 +0200
To: usrp-users@lists.ettus.com
Message-ID: <44f90a92be1f0497740e277ed07faa1e@imapproxy.vub.ac.be>
X-Sender: Florence.Barras@ulb.ac.be
User-Agent: Roundcube Webmail/0.9.5
Subject: [USRP-users] custom block and data rate in x310
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
From: fbarras via USRP-users <usrp-users@lists.ettus.com>
Reply-To: fbarras <Florence.Barras@ulb.ac.be>
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

SGkgYWxsLAoKSSBkZXZlbG9wZWQgYSBjdXN0b20gY29ycmVsYXRpb24gbW9kdWxlIGluIFZlcmls
b2cgYW5kIEkgd291bGQgbGlrZSB0byAKaW5zZXJ0IGl0IGluIHRoZSB1c3JwIHgzMTAgZnBnYSBp
bWFnZS4gTXkgZ29hbCBpcyB0byBzZW5kIGHCoCBzaWduYWwgCih3aXRoIGEgdXNycCBiMjA1IG1p
bmkpIGF0IGEgc2FtcGxpbmcgcmF0ZSBvZiAxTSBhbmQgdG8gcmVjZWl2ZSBpdCB3aXRoIAp0aGUg
dXNycCB4MzEwLiBJbnNpZGUgdGhlIGZwZ2EsIG15IGJsb2NrIHdpbGwgbG9vayBmb3IgYSBjZXJ0
YWluIApzZXF1ZW5jZSBpbnNpZGUgdGhlIHJlY2VpdmVkIHNpZ25hbC4KCk15IGJsb2NrIGlzIHdv
cmtpbmcgd2l0aCBhIDIwME0gY2xvY2sgYW5kIGNhbiBzdXBwb3J0IGRhdGEgcmF0ZSB1cCB0byAK
Mk0uCiBGcm9tIHdoYXQgSSd2ZSByZWFkLCBpdCBzZWVtcyB0aGF0IHRoZSBhZGMgb2YgdGhlIHgz
MTAgaXMgd29ya2luZyBhdCAKMjAwTSBhbmQgdGhhdCB0aGlzIGNhbid0IGJlIGNoYW5nZWQuIFNv
IG15IG1vZHVsZSBzaG91bGQgYmUgcGxhY2VkIGFmdGVyIAp0aGUgZGRjIGNoYWluLiBCdXQgdGhp
cyByaXNlcyBhIGZldyBxdWVzdGlvbnM6CgoxKSBXaGVyZSBleGFjdGx5IGluIHRoZSBjb2RlIGlz
IHRoZSBkZGMgY2hhaW4gaW5zdGFudGlhdGVkICo/IFNob3VsZCBJIApkbyBpdCBteXNlbGYgPwoK
MikgSXMgaXQgcG9zc2libGUgdG8gaGF2ZSBhIGRlY2ltYXRpb24gcmF0ZSBvZiAyMDAgb3Igc2hv
dWxkIGl0IGJlIGEgCnBvd2VyIG9mIDIgPwoKMykgSG93IGlzIHRoZSBkZWNpbWF0aW9uIHJhdGUg
Y29udHJvbGxlZCA/IEZyb20gd2hhdCBJIHVuZGVyc3RhbmQgaXQncyAKZnJvbSB0aGUgc2FtcGxp
bmcgcmF0ZSBwYXJhbWV0ZXIgaW4gR251UmFkaW8uIEFtIEkgcmlnaHQgPwoKVGhhbmtzICEKCiog
Rm9yIHNvbWUgcmVhc29ucywgSSdtIHdvcmtpbmcgd2l0aCB1aGTCoCAzLjEwLjMKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20v
bWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
