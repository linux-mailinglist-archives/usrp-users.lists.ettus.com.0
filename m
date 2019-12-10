Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8511182C6
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2019 09:49:59 +0100 (CET)
Received: from [::1] (port=57632 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iebDM-0001pA-G1; Tue, 10 Dec 2019 03:49:52 -0500
Received: from smtp.eurecom.fr ([193.55.113.210]:2090)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <cedric.roux@eurecom.fr>) id 1iebDH-0001ku-St
 for usrp-users@lists.ettus.com; Tue, 10 Dec 2019 03:49:47 -0500
X-IronPort-AV: E=Sophos;i="5.69,299,1571695200"; d="scan'208";a="11570481"
Received: from waha.eurecom.fr (HELO smtps.eurecom.fr) ([10.3.2.236])
 by drago1i.eurecom.fr with ESMTP; 10 Dec 2019 09:49:06 +0100
Received: from [172.24.10.173] (unknown [172.24.10.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtps.eurecom.fr (Postfix) with ESMTPSA id BA479B4D;
 Tue, 10 Dec 2019 09:49:05 +0100 (CET)
To: Saeid Hashemi <saeidh@gmail.com>
References: <CANQ3h38Ld+PabG4QosHwhyhg4=BYWBC+uEyhZDrTUstaxNAT7g@mail.gmail.com>
 <2d9189fb-9713-f432-e827-c28336f68db4@ihf.tu-bs.de>
 <CANQ3h38SDVKKH0gSmtZ5k2KruMPT_xQvmzVs1Dywi2YcDx0n=Q@mail.gmail.com>
Message-ID: <f4cc9ffe-ca34-48d4-423e-beae073b880b@eurecom.fr>
Date: Tue, 10 Dec 2019 09:49:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CANQ3h38SDVKKH0gSmtZ5k2KruMPT_xQvmzVs1Dywi2YcDx0n=Q@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Libuhd issues - "uhd_find_devices: error while
 loading shared libraries"
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
From: Cedric Roux via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cedric Roux <cedric.roux@eurecom.fr>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

RGVhciBTYWVpZCwKCmEgYml0IE9ULCBidXQsCgpPbiAyMDE5LTEyLTEwIDAwOjA2LCBTYWVpZCBI
YXNoZW1pIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+IEFuZCBub3cgVUhEIHRvb2xzIHdvcmssIGFs
c28gd2l0aGluIHRoZSBMVEUgc29mdHdhcmUsIGJ1dCB0aGV5IHdvbid0IAo+IGZpbmQgbXkgQjIx
MCBzYXlpbmc6Cj4gCj4gW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNC44LjQ7
IEJvb3N0XzEwNTQwMDsgCj4gVUhEXzMuMTQuMS4xLXJlbGVhc2UKPiBFcnJvcjogTG9va3VwRXJy
b3I6IEtleUVycm9yOiBObyBkZXZpY2VzIGZvdW5kIGZvciAtLS0tLT4KPiBFbXB0eSBEZXZpY2Ug
QWRkcmVzcwoKaWYgaXQncyBvcGVuYWlyaW50ZXJmYWNlLCB0aGVuIGNoZWNrIHlvdXIgY29uZiBm
aWxlLgpGb3IgYjIxMCB5b3UgbXVzdCByZW1vdmUgdGhlIGxpbmUgc3RhcnRpbmcgd2l0aAoic2Ry
X2FkZHJzID0gIi4KClNvcnJ5IGZvciB0aGUgbm9pc2UgZXZlcnlvbmUuCgpSZWdhcmRzLApDw6lk
cmljLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xp
c3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29t
Cg==
