Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2322A508C
	for <lists+usrp-users@lfdr.de>; Tue,  3 Nov 2020 20:55:34 +0100 (CET)
Received: from [::1] (port=55016 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ka2Ox-0001Pz-UK; Tue, 03 Nov 2020 14:55:31 -0500
Received: from smtp74.ord1c.emailsrvr.com ([108.166.43.74]:58597)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jasonr@3db-labs.com>) id 1ka2Ot-0001Il-M1
 for usrp-users@lists.ettus.com; Tue, 03 Nov 2020 14:55:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=3db-labs.com;
 s=20191115-upmk6iau; t=1604433287;
 bh=bMvuNuYh7USTLNdmHHMBMM+tHxj/APCNHpAlsnpPuY4=;
 h=Subject:To:From:Date:From;
 b=leQaBJ/ckIgNMEtYGED0MQ/TRGqZ8OaoN4n1Nmh+W+JAnw6vCqovVVJTpL+5O+wvL
 6djMA6dQ7pqEJQ/DF2bD5d52EEnSVLZZjalSfocYQ0VZMRv5AS72cwZaNWNgrj5BCn
 9S0X2BX+3xguYaRYLvUsDgDp7A50AGEvsNWjc0VE=
X-Auth-ID: jasonr@3db-labs.com
Received: by smtp10.relay.ord1c.emailsrvr.com (Authenticated sender:
 jasonr-AT-3db-labs.com) with ESMTPSA id 06350400BC
 for <usrp-users@lists.ettus.com>; Tue,  3 Nov 2020 14:54:46 -0500 (EST)
To: usrp-users@lists.ettus.com
References: <d37f331e-e5a0-6d4b-160a-b98c6cfbacdb@3db-labs.com>
 <5F87464B.4010002@gmail.com>
Message-ID: <bfb4009a-e427-c9e0-8e1f-6e23b0d0f31b@3db-labs.com>
Date: Tue, 3 Nov 2020 14:54:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5F87464B.4010002@gmail.com>
Content-Language: en-US
X-Classification-ID: 1c601420-c255-44eb-afd2-4bc212aef6f7-1-1
Subject: Re: [USRP-users] N320 inverted spectrum when tuned below 450 MHz
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
From: Jason Roehm via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Roehm <jasonr@3db-labs.com>
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

Ck9uIDEwLzE0LzIwIDI6NDEgUE0sIE1hcmN1cyBELiBMZWVjaCB2aWEgVVNSUC11c2VycyB3cm90
ZToKPiBPbiAxMC8xNC8yMDIwIDAxOjI4IFBNLCBKYXNvbiBSb2VobSB2aWEgVVNSUC11c2VycyB3
cm90ZToKPj4gSSBoYXZlIGFuIE4zMjAgdGhhdCBJJ20gdHJ5aW5nIG91dCBmb3IgdGhlIGZpcnN0
IHRpbWUuIEknbSB1c2luZyBVSEQgCj4+IDQuMC4wLCBhbmQgSSBsb2FkZWQgdGhlIGNvcnJlc3Bv
bmRpbmcgcm9vdCBmaWxlc3lzdGVtIGRhdGEgZm9yIHRoYXQgCj4+IHJlbGVhc2UgdG8gdGhlIE4z
MjAuIEkgZmluZCB0aGF0IHdoZW4gdGhlIHJlY2VpdmVyIGlzIHR1bmVkIHRvIAo+PiBmcmVxdWVu
Y2llcyBiZWxvdyA0NTAgTUh6LCB0aGUgc3BlY3RydW0gaXMgaW52ZXJ0ZWQuIFdoZW4geW91IHR1
bmUgdG8gCj4+IDQ1MCBNSHogb3IgYWJvdmUsIHRoZSBzcGVjdHJ1bSBpcyB1cHJpZ2h0IGFzIGV4
cGVjdGVkLiBTZWUgdGhlIAo+PiBhdHRhY2hlZCBzY3JlZW5zaG90cyBmb3IgZXhhbXBsZSBzcGVj
dHJhbCBwbG90cy4KPj4KPj4gVGhlcmUgYXJlIHNldmVyYWwgQVRTQyBzaWduYWxzIHZpc2libGUg
aW4gdGhlIHNwZWN0cnVtLiBJIHNpbXBseSB1c2VkIAo+PiBhbiBpbmRvb3IgYW50ZW5uYSwgc28g
dGhlcmUgaXMgYSBsb3Qgb2YgbXVsdGlwYXRoIG9uIHRoZSBzaWduYWxzIAo+PiBjYXVzaW5nIHRo
ZWlyIHNwZWN0cmEgdG8gYmUgdmVyeSBub24tZmxhdCwgYnV0IHRoZSB0ZWxsdGFsZSBzaWduIG9m
IAo+PiBzcGVjdHJhbCBpbnZlcnNpb24gaGVyZSBpcyB3aGVyZSB0aGUgcGlsb3QgdG9uZSBpcyBh
cHBlYXJpbmcgb24gZWFjaCAKPj4gb25lLiBJbiB0aGUgZmlyc3QgcGxvdCwgdHVuZWQgdG8gNDQw
IE1IeiwgdGhleSBhcHBlYXIgb24gdGhlIHJpZ2h0IG9mIAo+PiBlYWNoIHNpZ25hbDsgdGhpcyBp
cyBub3Qgd2hlcmUgdGhleSBzaG91bGQgYmUuIFdoZW4geW91IHR1bmUgdG8gNDUwIAo+PiBNSHos
IHRoZSBsb2NhdGlvbiBvZiB0aGUgc2lnbmFscyBmbGlwIHRvIHRoZSByaWdodCBoYWxmIG9mIHRo
ZSBwbG90LCAKPj4gYW5kIHRoZSBwaWxvdCB0b25lIGlzIG9uIHRoZSBsZWZ0LCB3aGVyZSB0aGV5
IGJlbG9uZy4KPj4KPj4gSXMgdGhpcyBhIGtub3duIGlzc3VlPwo+Pgo+PiBUaGFuayB5b3UuCj4+
Cj4+IEphc29uCj4gSSdtIGRpc2N1c3NpbmcgdGhpcyB3aXRoIFImRCByaWdodCBub3cuwqAgSXQn
cyAqY29uY2VpdmFibGUqLCBiZWNhdXNlIAo+IHRoZXJlJ3MgYW4gZXh0cmEgbWl4ZXIgc3RhZ2Ug
aW4gdGhlIGJlbG93LTQ1MC1taHogcGF0aHdheSwgYW5kIHRoYXQKPiDCoCBtaXhlciBzdGFnZSB1
c2VzICJoaWdoIHNpZGUiIExPIGluamVjdGlvbiwgd2hpY2ggd291bGQgcHJvZHVjZSBhbiAKPiBp
bnZlcnRlZCBzcGVjdHJ1bSwgYnV0IHRoZSBGUEdBIHdvdWxkICJrbm93IiB0aGlzIGFuZCBpbnZl
cnQgaXQgYmFjay4uLgo+Ck1hcmN1cywKCkRpZCB5b3UgZXZlciBnZXQgYW55IHJlc29sdXRpb24g
b24gdGhpcyBpc3N1ZT8KCkphc29uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tCg==
