Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 740592A85FD
	for <lists+usrp-users@lfdr.de>; Thu,  5 Nov 2020 19:18:05 +0100 (CET)
Received: from [::1] (port=45514 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kajpk-0002X5-Gb; Thu, 05 Nov 2020 13:18:04 -0500
Received: from mail-qt1-f173.google.com ([209.85.160.173]:37633)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kajpg-0002PR-Fs
 for usrp-users@lists.ettus.com; Thu, 05 Nov 2020 13:18:00 -0500
Received: by mail-qt1-f173.google.com with SMTP id n63so1769580qte.4
 for <usrp-users@lists.ettus.com>; Thu, 05 Nov 2020 10:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=wVvywEMExxZ8jPjoF4yqWc/pYOKE4rVWb2qHPoaDbxo=;
 b=khOJiO4o+jDvbXiUXGmq+0IEYsltwo3mQLQV3V/ZHpVLsZa+2uc3kzWcNolBvPAXas
 cRwTPJhOYEUQibu0oZnZdpGgAyMY/cnH8lqoEN0Xoc/KUM7ar4Umbalok6qWvLK283Ad
 q3HeWFSrr1XzajEY4bH7ci6GJ9sRCB99XEDOmHDbY3OmthIZ4rK3pO4ACPIm0sNFLaJq
 +gpHaUqQmKumJexwr4gtXVikFr4LlKXHQtK3wn/Rb8wd3ODgLXTH1s80U5PTfxPZHPGp
 JrZvVnWdF6xXjZidK+7N/EDAoYvm/gmo96XP4iv3pmetFwsN1KE0ZY6yXxQ7CKg1zvIg
 Q+EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=wVvywEMExxZ8jPjoF4yqWc/pYOKE4rVWb2qHPoaDbxo=;
 b=NAX34n4FztXkp3htwBPaDgs7dYl8s62J2zrpuVrdE80NWri5XYM7vy+zY5nbhZdkT3
 5wfnOvKrP1JclSOQRxHI1N95NwlP0EUpu5W66H0MqxSlc/alTxFkh321GDQjhlkP5ojm
 WVsO4faxjHE9G1xSZCnF8Ib3sN1QVF277QfnTH4lKIwrDisKqn8UECmIPKlwLgvngR4b
 C769GX63IrSER2jFU236yV3N9L01Agy3X53bcL9FyUlGj5pll7MlT+r6UNZXYtnCbJif
 IiU8RqE2aovSYp9IGzEfLc6D8/rPeyRK6xsTeAJujAqjpnkOEjRh2zln6TEKq33PQvEq
 gs4A==
X-Gm-Message-State: AOAM533C9oHhFf9NUdlIT/LC/DffFVjwaugiAmRNVCBaeitXv0VhnytO
 esttZQB5F2LpCq9381Ea0O4vaFrpeHUVRw==
X-Google-Smtp-Source: ABdhPJw1VZwNpQmazn96eZnUP6pe+UVoOn5d4UBFTJLsHFhnT0s4PbFYDGIIK2SjXzVlj60rfUicYg==
X-Received: by 2002:aed:2c44:: with SMTP id f62mr3065231qtd.214.1604600239833; 
 Thu, 05 Nov 2020 10:17:19 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id n7sm1336219qtp.93.2020.11.05.10.17.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Nov 2020 10:17:19 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 5 Nov 2020 13:17:18 -0500
Message-Id: <AFED7F6F-6C08-4D78-B399-7201B561195A@gmail.com>
References: <CA+ce6i3QLjnXtd27qzi87J_=R2NFTsOpkiXsUJQsedUhEVt0hw@mail.gmail.com>
Cc: Mark Koenig <mark.koenig@iubelttechnologies.com>,
 usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CA+ce6i3QLjnXtd27qzi87J_=R2NFTsOpkiXsUJQsedUhEVt0hw@mail.gmail.com>
To: Luke Whittlesey <luke.whittlesey@gmail.com>
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] uhd_cal_rx_iq_balance
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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

THVrZS4gTm8gaXQgZG9lcyBub3QuIAoKVGhlIEFEOTM2eCBmYW1pbHkgaGFzIGJ1aWx0LWluIGFs
d2F5cyBvbiBJL1EgY29ycmVjdGlvbiBsb2dpYy4gCgoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBP
biBOb3YgNSwgMjAyMCwgYXQgMToxNSBQTSwgTHVrZSBXaGl0dGxlc2V5IDxsdWtlLndoaXR0bGVz
ZXlAZ21haWwuY29tPiB3cm90ZToKPiAKPiDvu79Eb2VzIHRoaXMgSVEgY2FsaWJyYXRpb24gZnVu
Y3Rpb24gYXBwbHkgdG8gdGhlIEUzMTAsIG9yIGFueSBvZiB0aGUKPiBBRDkzNnggYmFzZWQgU0RS
cz8KPiAKPj4gT24gVGh1LCBOb3YgNSwgMjAyMCBhdCAxMTo1NyBBTSBNYXJjdXMgRCBMZWVjaCB2
aWEgVVNSUC11c2Vycwo+PiA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+PiAK
Pj4gVGhlIFZhbCByb3V0aW5lcyB1c2UgdGhlIHNlcmlhbCBudW1iZXIgb2YgdGhlIGRhdWdodGVy
IGNhcmQgdG8gaW5kZXggaW50byB0aGUgZGF0YWJhc2UuIEl0IHNob3VsZG7igJl0IG1hdHRlciB3
aGVyZSB0aGUgY2FyZCBpcyBtb3ZlZC4KPj4gCj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4gCj4+
IE9uIE5vdiA1LCAyMDIwLCBhdCAxMDowNiBBTSwgTWFyayBLb2VuaWcgdmlhIFVTUlAtdXNlcnMg
PHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPj4gCj4+IO+7vwo+PiAKPj4gSGVs
bG8sCj4+IAo+PiAKPj4gCj4+IEkgaGF2ZSBzb21lIHF1ZXN0aW9ucyByZWdhcmRpbmcgdGhlIFJ4
IGlxIGJhbGFuY2UgZnVuY3Rpb24uICBBZnRlciBydW5uaW5nIHRoaXMgc2NyaXB0IG9uIGEgcGFy
dGljdWxhciByYWRpbyAoeDMxMCBvciBOMjEwKSB3aXRoIGEgVUJYIGl0IHNhdmVzIHRoZSByZXN1
bHRzIG9uIHRoZSBtYWNoaW5lIGluIHdoaWNoIGl0IHdhcyByYW4gb24sIGNvcnJlY3Q/ICBJZiBJ
IG5lZWQgdG8gbW92ZSB0aGUgVUJYIHRvIGFub3RoZXIgcmFkaW8gKFgzMTAgb3IgTjIxMCksIGJ1
dCB0aGUgbmV3IHJhZGlvIHdpdGggdGhlIFVCWCB3aWxsIGJlIG9uIHRoZSBzYW1lIG1hY2hpbmUs
IGRvIEkgbmVlZCB0byByZXJ1biB0aGUgSVEgYmFsYW5jZSBzY3JpcHQ/Cj4+IAo+PiAKPj4gCj4+
IElzIHRoZXJlIGEgc2NlbmFyaW8gSSB3b3VsZG7igJl0IHdhbnQgdG8gYWx3YXlzIGJlIGFwcGx5
aW5nIHRoZSBJUSBiYWxhbmNlIGNvcnJlY3Rpb25zPwo+PiAKPj4gCj4+IAo+PiBUaGFua3MKPj4g
Cj4+IAo+PiAKPj4gTWFyawo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4gVVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KPj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZv
L3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+PiBV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxt
YW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9s
aXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
