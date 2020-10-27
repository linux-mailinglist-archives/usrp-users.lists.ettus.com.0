Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B02529AA56
	for <lists+usrp-users@lfdr.de>; Tue, 27 Oct 2020 12:12:48 +0100 (CET)
Received: from [::1] (port=49960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXMuF-0001Rg-38; Tue, 27 Oct 2020 07:12:47 -0400
Received: from smtp2.eurecom.fr ([193.55.113.211]:64070)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <cedric.roux@eurecom.fr>) id 1kXMu9-0001L5-TA
 for usrp-users@lists.ettus.com; Tue, 27 Oct 2020 07:12:41 -0400
X-IronPort-AV: E=Sophos;i="5.77,423,1596492000"; 
   d="scan'208";a="954768"
Received: from waha.eurecom.fr (HELO smtps.eurecom.fr) ([10.3.2.236])
 by drago2i.eurecom.fr with ESMTP; 27 Oct 2020 12:12:02 +0100
Received: from [172.24.10.173] (unknown [172.24.10.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtps.eurecom.fr (Postfix) with ESMTPSA id AA8EF4C6;
 Tue, 27 Oct 2020 12:11:59 +0100 (CET)
To: Ashutosh Singh <ashutoshsingh7589@gmail.com>,
 "openair5g-nr@lists.eurecom.fr OAI" <openair5g-nr@lists.eurecom.fr>,
 openair5g-user <openair5g-user@lists.eurecom.fr>, usrp-users@lists.ettus.com
References: <CAO38sJ6Omr0v6U=XeudGapGd=LPsdCNHd_Sx3krM1M+a7d_drQ@mail.gmail.com>
Message-ID: <72aa443a-bcd1-7e0c-c141-0b2e35a6e2f6@eurecom.fr>
Date: Tue, 27 Oct 2020 12:12:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAO38sJ6Omr0v6U=XeudGapGd=LPsdCNHd_Sx3krM1M+a7d_drQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Check on missed samples in USRP B210 on USB mode
 vs power supply mode
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
From: Cedric Roux via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cedric Roux <cedric.roux@eurecom.fr>
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

SGkgQXNodXRvc2gsCgp3aGVuIHlvdSBoYXZlIG1pc3NlZCBzYW1wbGVzIHlvdSBzZWUgc29tZSBV
VVUgYW5kIExMTEwgcHJpbnRlZCBieSB1aGQKbGlicmFyeS4gVGhlcmUgaXMgbm8gb3B0aW9uIGZv
ciB0aGUgc29mdG1vZGVtLCB0aGlzIGlzIGRvbmUgYnkKdGhlIHVoZCBsaWJyYXJ5LgoKUmVnYXJk
cywKQ8OpZHJpYy4KCk9uIDIwMjAtMTAtMjcgMTI6MDMsIEFzaHV0b3NoIFNpbmdoIHdyb3RlOgo+
IEhpIGFsbCAsCj4gSG93IHRvIGNoZWNrIHdoZXRoZXIgc2FtcGxlcyBhcmUgbWlzc2VkIGFuZCBo
b3cgbWFuecKgIHdoaWxlIG9wZXJhdGluZyAKPiBVU1JQIEIyMTAgb24gVVNCMy4wIG9yIHdpdGgg
YWRkZWQgZXh0ZXJuYWwgcG93ZXIgc3VwcGx5Pwo+IAo+IElzIHRoZXJlIGFueSBvcHRpb24gb2Yg
aXQgd2hpbGUgcnVubmluZyBsdGVzb2Z0bW9kZW3CoGJpbmFyeT8KPiAKPiAKPiBUaGFua3MKPiBB
c2h1dG9zaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDov
L2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMu
Y29tCg==
