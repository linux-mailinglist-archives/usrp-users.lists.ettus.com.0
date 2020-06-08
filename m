Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA681F1A1A
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jun 2020 15:31:54 +0200 (CEST)
Received: from [::1] (port=57764 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jiHsV-0006iX-F6; Mon, 08 Jun 2020 09:31:51 -0400
Received: from secgw2.intern.tuwien.ac.at ([128.130.30.72]:60768)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <christian.spindelberger@tuwien.ac.at>)
 id 1jiHsR-0006Xq-6I
 for usrp-users@lists.ettus.com; Mon, 08 Jun 2020 09:31:47 -0400
Received: from totemomail (localhost [127.0.0.1])
 by secgw2.intern.tuwien.ac.at (8.14.7/8.14.7) with ESMTP id 058DV5qm026422
 for <usrp-users@lists.ettus.com>; Mon, 8 Jun 2020 15:31:05 +0200
Received: from localhost ([127.0.0.1])
 by totemomail.intern.tuwien.ac.at (Totemo SMTP Server) with SMTP ID 884
 for <usrp-users@lists.ettus.com>;
 Mon, 8 Jun 2020 15:31:05 +0200 (CEST)
Received: from edge13a.intern.tuwien.ac.at (edge13a.intern.tuwien.ac.at
 [IPv6:2001:629:1005:30::66])
 by secgw2.intern.tuwien.ac.at (8.14.7/8.14.7) with ESMTP id 058DV4uR026405
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Mon, 8 Jun 2020 15:31:05 +0200
Received: from mbx13b.intern.tuwien.ac.at (2001:629:1005:30::62) by
 edge13a.intern.tuwien.ac.at (2001:629:1005:30::66) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Mon, 8 Jun 2020 15:31:04 +0200
Received: from [128.131.85.216] (128.131.85.216) by mbx13b.intern.tuwien.ac.at
 (2001:629:1005:30::62) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 8 Jun 2020 15:31:04 +0200
To: <usrp-users@lists.ettus.com>
Message-ID: <6a634b94-5bf2-7131-dc41-48c39cdfef58@tuwien.ac.at>
Date: Mon, 8 Jun 2020 15:31:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Language: en-US
X-ClientProxiedBy: mbx13b.intern.tuwien.ac.at (2001:629:1005:30::62) To
 mbx13b.intern.tuwien.ac.at (2001:629:1005:30::62)
X-MIME-Autoconverted: from 8bit to quoted-printable by
 secgw2.intern.tuwien.ac.at id 058DV4uR026405
Subject: [USRP-users] Python API error
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
From: Christian Spindelberger via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christian Spindelberger <christian.spindelberger@tuwien.ac.at>
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

SGksCgpJIGhhdmUgYSBsaXR0bGUgcHJvYmxlbSB3aXRoIHRoZSBQeXRob24gQVBJLiBJIGluc3Rh
bGxlZCB0aGUgVUhEIDMuMTUgCmRyaXZlciBmcm9tIHNvdXJjZS4gV2hlbiBJIHdhbnQgdG8gdXRp
bGl6ZSB0aGUgdWhkLnVzcnAuTXVsdGlVU1JQKCkgCmNvbW1hbmQgaXQgb25seSB3b3JrcyBpZiBJ
IGxhdW5jaCBQeXRob24gYXMgbm9ybWFsIHVzZXIuIElmIEkgb3BlbiB0aGUgClB5dGhvbiBlbnZp
cm9ubWVudCB3aXRoIHN1ZG8gaXQgZG9lcyBub3Qgd29yayBhbnltb3JlIGFuZCBJIHJlY2VpdmUg
dGhlIApmb2xsb3dpbmcgZXJyb3I6CgpQeXRob24gMy42LjkgKGRlZmF1bHQsIEFwciAxOCAyMDIw
LCAwMTo1NjowNCkKW0dDQyA4LjQuMF0gb24gbGludXgKVHlwZSAiaGVscCIsICJjb3B5cmlnaHQi
LCAiY3JlZGl0cyIgb3IgImxpY2Vuc2UiIGZvciBtb3JlIGluZm9ybWF0aW9uLgogPj4+IGltcG9y
dCB1aGQKID4+PiB1aGQudXNycC5NdWx0aVVTUlAoKQpbSU5GT10gW1VIRF0gbGludXg7IEdOVSBD
KysgdmVyc2lvbiA3LjUuMDsgQm9vc3RfMTA2NTAxOyAKVUhEXzMuMTUuMC4wLTQ0LWc1YTlmOWVk
OQpbSU5GT10gW1gzMDBdIFgzMDAgaW5pdGlhbGl6YXRpb24gc2VxdWVuY2UuLi4KW0lORk9dIFtY
MzAwXSBNYXhpbXVtIGZyYW1lIHNpemU6IDE0NzIgYnl0ZXMuCltJTkZPXSBbWDMwMF0gUmFkaW8g
MXggY2xvY2s6IDIwMCBNSHoKW0lORk9dIFtHUFNdIEZvdW5kIGFuIGludGVybmFsIEdQU0RPOiBM
Q19YTywgRmlybXdhcmUgUmV2IDAuOTI5YgpUcmFjZWJhY2sgKG1vc3QgcmVjZW50IGNhbGwgbGFz
dCk6CiDCoCBGaWxlICI8c3RkaW4+IiwgbGluZSAxLCBpbiA8bW9kdWxlPgogwqAgRmlsZSAiL3Vz
ci9saWIvcHl0aG9uMy9kaXN0LXBhY2thZ2VzL3VoZC91c3JwLnB5IiwgbGluZSAyMCwgaW4gX19p
bml0X18KIMKgwqDCoCBzdXBlcihNdWx0aVVTUlAsIHNlbGYpLl9faW5pdF9fKGFyZ3MpClJ1bnRp
bWVFcnJvcjogQXNzZXJ0aW9uRXJyb3I6IEZhaWxlZCB0byBmaW5kIGEgdmFsaWQgWE1MIHBhdGgg
Zm9yIFJGTm9DIApibG9ja3MuClRyeSBzZXR0aW5nIHRoZSBlbnZpcm9tZW50IHZhcmlhYmxlIFVI
RF9SRk5PQ19ESVIgdG8gdGhlIGNvcnJlY3QgbG9jYXRpb24KCgpJIGhhdmUgcmVhZCBpbiBhIGZv
cm1lciBwb3N0IHRoYXQgdGhpcyBtaWdodCBoYXBwZW4gd2hlbiB0aGUgZHJpdmVyIGlzIAppbnN0
YWxsZWQgd2l0aCAibWFrZSBpbnN0YWxsIiwgYnV0IEkgYWxyZWFkeSByZWluc3RhbGxlZCB3aXRo
ICJzdWRvIG1ha2UgCmluc3RhbGwiIGFuZCB0aGUgc2FtZSBwcm9ibGVtIHJlbWFpbnMuCkRvZXMg
YW55b25lIGtub3cgd2h5IHRoaXMgaGFwcGVucz8KCgpUaGFuayB5b3UsCgpDaHJpc3RpYW4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0
dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
