Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 982A915CEB7
	for <lists+usrp-users@lfdr.de>; Fri, 14 Feb 2020 00:40:46 +0100 (CET)
Received: from [::1] (port=34758 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2O62-0004tb-N4; Thu, 13 Feb 2020 18:40:38 -0500
Received: from dash.upc.es ([147.83.2.50]:46434)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <adria.amezaga@upc.edu>)
 id 1j2O5y-0004ma-V0
 for usrp-users@lists.ettus.com; Thu, 13 Feb 2020 18:40:35 -0500
Received: from ackerman2.upc.es (ackerman2.upc.es [147.83.2.244])
 by dash.upc.es (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id 01DNdr8p059951
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Fri, 14 Feb 2020 00:39:53 +0100
Received: from [192.168.1.130] (static.masmovil.com [93.176.152.51] (may be
 forged)) (authenticated bits=0)
 by ackerman2.upc.es (8.14.4/8.14.4) with ESMTP id 01DNdFtJ029118
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
 for <usrp-users@lists.ettus.com>; Fri, 14 Feb 2020 00:39:52 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <920c3ec0-af6b-8585-a2bc-84e35450e085@upc.edu>
Date: Fri, 14 Feb 2020 00:39:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: ACL matched, not delayed by milter-greylist-4.3.9 (dash.upc.es
 [147.83.2.50]); Fri, 14 Feb 2020 00:39:53 +0100 (CET)
X-Greylist: Default is to whitelist mail, not delayed by milter-greylist-4.4.3
 (ackerman2.upc.es [147.83.2.244]); Fri, 14 Feb 2020 00:39:53 +0100 (CET)
X-Scanned-By: MIMEDefang 2.70 on 147.83.2.244
X-Virus-Scanned: clamav-milter 0.100.3 at dash
X-Virus-Status: Clean
Subject: [USRP-users] Using DDC/DUC frequency in RFNoC
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
From: Adria via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Adria <adria.amezaga@upc.edu>
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

RGVhciBhbGwsCgpJJ20gdHJ5aW5nIHRvIHR1bmUgdGhlIG91dHB1dCBhbmQgaW5wdXQgZnJlcXVl
bmN5IG9mIGFuIFgzMTAgKyBVQlgtMTYwLiAKSSBpbnN0YW50aWF0ZSB0aGUgcmFkaW8gYmxvY2sg
YW5kIHRoZSBEREMgYW5kIERVQyBibG9ja3MgYW5kIGNvbm5lY3QgdGhlbS4KClRoZSBUWCBjaGFp
biBpcyBsaWtlIHRoaXM6IFtTaWduYWwgZ2VuZXJhdG9yXSAtPiBbRFVDXSAtPiBbUmFkaW8gYmxv
Y2tdLgoKTXkgaW50ZW50aW9uIGlzIHRvIHVzZSB0aGUgRFVDIG9ubHkgZm9yIGZyZXF1ZW5jeSB0
dW5pbmcsIHNpbmNlIEkgc2V0IAp0aGUgVUJYIHN5bnRoZXNpemVycyB0byBJbnRlZ2VyLU4gbW9k
ZS4KClRoZSBmYWN0IGlzIHRoYXQgY29uZmlndXJlIHRoZSBEVUMgZnJlcXVlbmN5IGJ5IHNldHRp
bmcgdGhlICJmcmVxIiAKcGFyYW1ldGVyIHVzaW5nIHRoZSBzZXRfcGFyYW0gY2FsbCBoYXMgbm8g
ZWZmZWN0LgoKVHJ5aW5nIHRvIHNldCB0aGUgRFVDIGZyZXF1ZW5jeSB1c2luZyB0dW5lX3JlcXVl
c3QgdGhyb3VnaCB0aGUgZHNwX2ZyZXEgCnBhcmFtZXRlciBoYXMgbm8gZWZmZWN0IGVpdGhlci4K
Ck15IG90aGVyIHF1ZXN0aW9uIGlzIGFib3V0IHRoZSBJbnRlZ2VyLU4gdHVuaW5nLiBJcyB0aGVy
ZSBhIHdheSB0byBzZXQgCnRoZSBpbnRlZ2VyIG1vZGUgd2l0aG91dCB1c2luZyB0aGUgdHVuZV9y
ZXF1ZXN0IG9iamVjdD8gSSBleHBlY3RlZCB0byBiZSAKYWJsZSB0byBkbyB0aGF0IHVzaW5nIHJh
ZGlvX2N0cmwuCgpJIGFtIHN1cmUgSSdtIG1pc3Npbmcgc29tZXRoaW5nIGJ1dCBJIGRvbid0IGtu
b3cgd2hlcmUgZWxzZSB0byBsb29rLCBzbyAKYW55IGhlbHAgd291bGQgYmUgYXBwcmVjaWF0ZWQu
CgpJJ20gdXNpbmcgVUhEIDMuMTQuCgpUaGFua3MhCgoKQWRyacOgIEFtw6l6YWdhCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
