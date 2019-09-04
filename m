Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC53A96B3
	for <lists+usrp-users@lfdr.de>; Thu,  5 Sep 2019 00:48:14 +0200 (CEST)
Received: from [::1] (port=58908 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5e4P-0008QR-6b; Wed, 04 Sep 2019 18:48:09 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:35938)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i5e4L-0008Ku-IY
 for usrp-users@lists.ettus.com; Wed, 04 Sep 2019 18:48:05 -0400
Received: by mail-qk1-f177.google.com with SMTP id s18so295345qkj.3
 for <usrp-users@lists.ettus.com>; Wed, 04 Sep 2019 15:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Cv1VaCR0WiIB212+uLOsJ98xNBfV3+hV+WmrTZAqvZo=;
 b=ODvr/lIcwCRbQD8uwYA6heXfDnuA/pVTJ/gh21R+KlSj1Tc5fQB6TUbr+3oq03RJCa
 KzCAEhC+nNsPYh6CtBCDoN0yAZLnqeBJOVAuwV95fUwNfnxK+Ggb51Mn7MwDOJ7z8mun
 O1apKqjB7pbBRbY5nE8uEyP+QHV1qMSfgULcUVqE+b8MEScx/5qYVI7kPhW/ESTwesj3
 OasVsmELct7ieITXI5ZGbjYgro81aUUsqHQJ2rdc8/twYpZz83jwurkTlUIGIe4TqolV
 PFS0+1zCt2Ibu+LNZ7aQPlF4RXCuAZDpHPeRR95bEtRPovzc34WDaxCIXg1JLVhotXM4
 1Hrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Cv1VaCR0WiIB212+uLOsJ98xNBfV3+hV+WmrTZAqvZo=;
 b=gFZ0gkEVubJWm4UgFxxGkdbd/omVv4qLvLxT+wWMPmNFmL5L7lNgG0aj6qOWEWhRzY
 3hqjIBQhMadVrgtLuoePU//kWTM4xDeWgabfbTEBVHf8WdDofl4Oq4McwlCOg9VlRTOw
 O/hv963a1zPm/qXQ75qRCHxwQZst06oKk/ictskeZS6HwFKe5VxJphrX+BOgEs+yuxFu
 p4YhLnSVWw9xZuecL/Mvi/M7X9FBpjkY7BKtkY7jt64QXeY6/20ZwfJwzAS+RX/xAdCj
 yGS8puC151LNlBjMK3wixNLFFAJdsk3h6X3qJ1nkCXCe0GK7FpgmQ5QJrN6OXbjV0w4q
 6hEg==
X-Gm-Message-State: APjAAAUX0hOA8lq58HOQkGEVpC+OK8FtvSRo2CPg5yviBaH3xuC+S8WO
 yDU4FtOlz0w0i2O/tt72N9FEJ1lI
X-Google-Smtp-Source: APXvYqxNVvwiZbbE3TanUVvBcdkJGCEGVUPb+zypxytPLs8pHBSx3cYDrUuuiPGvJXQjHFkfEfALZA==
X-Received: by 2002:a37:4c14:: with SMTP id z20mr9866qka.296.1567637244901;
 Wed, 04 Sep 2019 15:47:24 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id 43sm194054qts.47.2019.09.04.15.47.24
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 15:47:24 -0700 (PDT)
Message-ID: <5D703EFB.5000302@gmail.com>
Date: Wed, 04 Sep 2019 18:47:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <4f5d8fc2bf9ab0410a972bbbacd07b3a@imapproxy.vub.ac.be>
 <5D6FEF3A.4000706@gmail.com>
 <23692c4607f91d8f0e0f5933bf539182@imapproxy.vub.ac.be>
In-Reply-To: <23692c4607f91d8f0e0f5933bf539182@imapproxy.vub.ac.be>
Subject: Re: [USRP-users] time_now and daughterboard synchronization
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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

T24gMDkvMDQvMjAxOSAwNjo0NCBQTSwgQ8OpZHJpYyBIYW5ub3RpZXIgdmlhIFVTUlAtdXNlcnMg
d3JvdGU6Cj4gT24gMjAxOS0wOS0wNCAxOTowNywgTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVz
ZXJzIHdyb3RlOgo+IExlIDA0LjA5LjIwMTkgMTk6MDcsIE1hcmN1cyBELiBMZWVjaCB2aWEgVVNS
UC11c2VycyBhIMOpY3JpdCA6Cj4+IFRoZSAic2V0X3RpbWVfbm93KCkiIG9wZXJhdGlvbiBpcyB1
bnN5bmNocm9uaXplZC0taXQgc2ltcGx5IHRyYW5zZmVycwo+PiB0aGUgaG9zdCB0aW1lIHRvIHRo
ZSBkZXZpY2Uocykgd2l0aG91dCBhbnkgaGFyZHdhcmUgc3luY2hyb25pemF0aW9uCj4+ICAgcHVs
c2UuICBTaW5jZSBpdCBuZWNlc3NhcmlseSBoYXMgdG8gc2VuZCBtdWx0aXBsZSBjb21tYW5kcyBh
Y3Jvc3MKPj4gdGhlIGhvc3QtdG8tZGV2aWNlIGludGVyZmFjZSwgYW5kIHRoZSBkZXZpY2Ugc2V0
cyBpdHMgY2xvY2sKPj4gaW1tZWRpYXRlbHkKPj4gICB0byB3aGF0ZXZlciB2YWx1ZSBpcyBwcm92
aWRlZCwgYW5kIHRoZSBjbG9jayBjb250aW51ZXMgdG8gcnVuLCB0aGVuCj4+IHR3byBvciBtb3Jl
IGRldmljZXMgd2lsbCBub3QgdGlnaHRseSBhZ3JlZSBvbiB0aGUgdGltZSB3aGVuIHVzaW5nCj4+
ICAgdGhpcyBtZXRob2QuCj4KPiBUaGUgaXNzdWUgaXMgdGhhdCB0aGVyZSBpcyBvbmx5IG9uZSBk
ZXZpY2UuIFdpdGggInNldF90aW1lX25vdygpIiwgdHdvIAo+IGRhdWdodGVyYm9hcmRzIG9uIHRo
ZSBzYW1lIGRldmljZSAoc2FtZSBtb3RoZXJib2FyZCkgYmVoYXZlIGFzIAo+IHVuc3luY2hyb25p
emVkLgpUaGF0J3MgYmVjYXVzZSwgZm9yIHdlaXJkIGludGVybmFsIHJlYXNvbnMsIHRoZXJlIGFy
ZSBhY3R1YWxseSBUV08gCnRpbWUtb2YtZGF5IGNsb2NrcyBvbiBYMzEwIGFuZCBCMjEwLS1vbmUg
cGVyICJzaWRlIi4gIEkgZG9uJ3QgcmVtZW1iZXIKICAgd2hldGhlciB0aGVyZSAgYXJlIHR3byBj
b21tYW5kcyBzZW50IGZyb20gdGhlIGhvc3Qgc2lkZSwgb3IgYSBzaW5nbGUgCmNvbW1hbmQsIHRo
YXQgaXMgYWN0ZWQtdXBvbiBzZXJpYWxseSB3aXRoaW4gdGhlIEZQR0EuICBXaXRoIGEKICAgMVBQ
UyBzeW5jaHJvbml6YXRpb24sIHRoZSAxUFBTIGNhdXNlcyBhIHBhcmFsbGVsIGxvYWQgb2YgdGhl
IGRlc2lyZWQgCnRpbWUgdmFsdWUgaW50byB0aGUgdGltZS1vZi1kYXkgY2xvY2tzIG9uIHRoZSBt
b3RoZXJib2FyZC4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tCg==
