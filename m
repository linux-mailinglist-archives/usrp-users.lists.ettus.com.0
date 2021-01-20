Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3ED82FDB4B
	for <lists+usrp-users@lfdr.de>; Wed, 20 Jan 2021 22:16:35 +0100 (CET)
Received: from [::1] (port=41030 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2Kq8-0001sY-Au; Wed, 20 Jan 2021 16:16:32 -0500
Received: from ipagstaticip-421a922e-324a-97b6-1704-fd34d91ed440.sdsl.bell.ca
 ([142.112.76.142]:60028 helo=mail.discreteintegration.ca)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <dominic.schaub@discreteintegration.ca>)
 id 1l2Kq4-0001lD-Td
 for usrp-users@lists.ettus.com; Wed, 20 Jan 2021 16:16:28 -0500
Received: from [192.168.7.3] (unknown [192.168.7.3])
 by mail.discreteintegration.ca (Postfix) with ESMTPS id 312677E0046
 for <usrp-users@lists.ettus.com>; Wed, 20 Jan 2021 16:15:48 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.discreteintegration.ca 312677E0046
To: usrp-users@lists.ettus.com
Message-ID: <8fa5f879-0438-325e-f003-53bde14464f0@discreteintegration.ca>
Date: Wed, 20 Jan 2021 16:15:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] RFNoC/GNURadio with USRP-2974
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
From: Dominic Schaub via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dominic Schaub <dominic.schaub@discreteintegration.ca>
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

SGksCgpXZSBqdXN0IHJlY2VpdmVkIGEgVVNSUC0yOTc0IGFuZCB3b3VsZCBsaWtlIHRvIHN0YXJ0
IHdvcmtpbmcgd2l0aCAKUkZOb0MvR05VUmFkaW8gKHJhdGhlciB0aGFuIExhYlZpZXcpLsKgIEkg
d2FzIGhvcGluZyB0aGF0IHNvbWVib2R5IGNvdWxkIApkaXJlY3QgbWUgdG8gYSByZWZlcmVuY2Ug
Zm9yIGNvbmZpZ3VyaW5nIHRoaXMgU0RSIGZvciBSRk5vQy9HTlVSYWRpby4gClRoZXJlJ3MgYSBs
b3Qgb2YgbWF0ZXJpYWwgdGhhdCBjb3ZlcnMgbm9uLWVtYmVkZGVkIFVTUlBzLCBidXQgbXkgCnVu
ZGVyc3RhbmRpbmcgaXMgdGhhdCB0aGVyZSBhcmUgc29tZSBhZGRpdGlvbmFsIGNvbmZpZ3VyYXRp
b24gc3RlcHMgCnJlcXVpcmVkIGZvciB0aGlzIG1vZGVsLgoKQW55IGhlbHAgd291bGQgYmUgZ3Jl
YXRseSBhcHByZWNpYXRlZC4KCkRvbWluaWMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20K
