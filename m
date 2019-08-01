Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9947DE93
	for <lists+usrp-users@lfdr.de>; Thu,  1 Aug 2019 17:15:07 +0200 (CEST)
Received: from [::1] (port=39358 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htCnJ-00009f-Dk; Thu, 01 Aug 2019 11:15:05 -0400
Received: from dash.upc.es ([147.83.2.50]:46873)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <adria.amezaga@upc.edu>)
 id 1htCnF-0008T9-22
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 11:15:01 -0400
Received: from ackerman2.upc.es (ackerman2.upc.es [147.83.2.244])
 by dash.upc.es (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id x71FEJH9018146
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Thu, 1 Aug 2019 17:14:19 +0200
Received: from [192.168.2.4] (185-160-170-114.ipv4.xta.cat [185.160.170.114]
 (may be forged)) (authenticated bits=0)
 by ackerman2.upc.es (8.14.4/8.14.4) with ESMTP id x71FE1vV016437
 (version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO)
 for <usrp-users@lists.ettus.com>; Thu, 1 Aug 2019 17:14:19 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Organization: UPC Barcelona Tech
Message-ID: <3cbccc55-709d-89d0-a637-8e765ca87905@upc.edu>
Date: Thu, 1 Aug 2019 17:14:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: ACL matched, not delayed by milter-greylist-4.3.9 (dash.upc.es
 [147.83.2.50]); Thu, 01 Aug 2019 17:14:19 +0200 (CEST)
X-Greylist: Default is to whitelist mail, not delayed by milter-greylist-4.4.3
 (ackerman2.upc.es [147.83.2.244]); Thu, 01 Aug 2019 17:14:19 +0200 (CEST)
X-Scanned-By: MIMEDefang 2.70 on 147.83.2.244
X-Virus-Scanned: clamav-milter 0.100.2 at dash
X-Virus-Status: Clean
Subject: [USRP-users] [X310] RFNoC block tready is deasserted unexpectedly
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
From: =?utf-8?q?Adri=C3=A0_Am=C3=A9zaga_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?QWRyacOgIEFtw6l6YWdh?= <adria.amezaga@upc.edu>
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

SGVsbG8gYWxsLAoKSSBoYXZlIGFuIGFwcGxpY2F0aW9uIHdoZXJlIHR3byBSRk5vQyBzaWduYWwg
Z2VuZXJhdG9ycyB0cmFuc21pdCBzYW1wbGVzIAp0byB0d28gVFggcmFkaW9zIGF0IGZ1bGwgMjAw
TVNQUyByYXRlLgoKSSBuZWVkIHRoZXNlIHNhbXBsZXMgdG8gYmUgY29udGlndW91c2x5IHRyYW5z
bWl0dGVkIGluIHRpbWUuCgpJdCBpcyBteSB1bmRlcnN0YW5kaW5nIHRoYXQgdGhlIFJGTm9DIGNy
b3NzYmFyIGNhbiBoYW5kbGUgYm90aCBzdHJlYW1zLsKgIApIb3dldmVyLCBhZnRlciBzb21lIHRl
c3RzIGFuZCBkZWJ1Z2dpbmcgd2l0aCBDaGlwU2NvcGUgSSBoYXZlIHNlZW4gdGhhdCAKdGhlIEFY
SSB3cmFwcGVyIHNfYXhpc19kYXRhX3RyZWFkecKgIHNpZ25hbCBnb2VzIGxvdyBmb3Igc29tZSB0
aW1lIGF0IApzb21lIHBvaW50IGJlZm9yZSBzYW1wbGUgZ2VuZXJhdGlvbiBoYXMgZW5kZWQuIFRo
ZSBtb21lbnQgd2hlbiB0cmVhZHkgCmdvZXMgbG93IGRlcGVuZHMgb24gdGhlIHBhY2tldCBzaXpl
LgoKSSBjYW5ub3Qgc2VlIHdoeSB0aGUgVFggc3RyZWFtIGlzIGJhY2stcHJlc3N1cmluZywgc28g
SSdtIG9idmlvdXNseSAKbWlzc2luZyBzb21ldGhpbmcuIEFueSBjbGFyaWZpY2F0aW9uIHdvdWxk
IGJlIGFwcHJlY2lhdGVkLgoKVGhhbmtzIGluIGFkdmFuY2UhCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
