Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B650E2C303F
	for <lists+usrp-users@lfdr.de>; Tue, 24 Nov 2020 19:55:23 +0100 (CET)
Received: from [::1] (port=34592 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khdTE-0006FN-HL; Tue, 24 Nov 2020 13:55:20 -0500
Received: from mail-lj1-f178.google.com ([209.85.208.178]:40729)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <luke.whittlesey@gmail.com>)
 id 1khdTB-00061b-0C
 for usrp-users@lists.ettus.com; Tue, 24 Nov 2020 13:55:17 -0500
Received: by mail-lj1-f178.google.com with SMTP id y10so7781227ljc.7
 for <usrp-users@lists.ettus.com>; Tue, 24 Nov 2020 10:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kxRMgZJ2k8MpCh+gtUGHN0bLYhg0nan1JBUm67V5ves=;
 b=klSg/WoSACDa4UsN1aGeoXIMJXiTbjfxU2ljCW4EEl7ot63p9htZOrcE7axg7SM1/x
 gTP4MPhVzfJK//QeOp2IzQLUYqsHYFgldcdv9wGA93VGPeaI4WVLKB3Qyt3b606rNIHI
 yvk692oFH/M7zAFOY08kSu9C7ZLXdaRunJ+gJdjG5DMd3F1dm2XzTP56xvA5r+VfacGd
 xz1bt+APzsEeP+K04YwlLgx5EdzvFUZBm+m/FOfWiACt/O414BnajFymH5BIOWzC6OLB
 V/0wXWCtG/OyfsAn7qRhWALqgw5JBOdGTsmUI8qZGuEg2gakzb/qT4GOhT0CiNNyif05
 ubVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kxRMgZJ2k8MpCh+gtUGHN0bLYhg0nan1JBUm67V5ves=;
 b=jAze5clFeqpivyNqwtBIIuOooriILcwQU7oO9m2ISnkiF5Hlp9VrYcPyK8zTiaIEkg
 PmtJ0puh/NXrPrM0wVU+FdS/dF1I87bj4MSrXl/0MWRBmlB7JeBDIe1kiKPyuoeMdOYU
 ouWy2QL4gB4wDOl2kAsaZqeyvvJGbg6kmfXpk7vGucQVYnurji7GiWNwAIbWQf+7hNBa
 5GiQQd2PsmQ4GkRkjWPbC/2gB9urL8kDDdIAQFaWjdyH/ZIqA9SyX9zWXaRcu+4gKAtz
 LrsLX5nmARdQMdGJTLiISVH/YWcjmpcXZpbEtWs5FY+61ycAI/saMeh8Ujg0FX0zLZcN
 mY9g==
X-Gm-Message-State: AOAM530ZL1Tu9PsejAabKhDuCYPA2fkaUJj4evdauqUSAQ/nANCat0ob
 64sRe1fGQD7ZhXXbrv/ZEHLFUWpSGWtUbkgjUkU=
X-Google-Smtp-Source: ABdhPJylTxBVC+e1Rp0JK7a/omttaONE6e/QIzjvY4w7by0Dmg4X1bHgqOccParO1rbNDZDjndJWp5byuRQ+FJfsxZ8=
X-Received: by 2002:a05:651c:206:: with SMTP id
 y6mr2600545ljn.447.1606244075566; 
 Tue, 24 Nov 2020 10:54:35 -0800 (PST)
MIME-Version: 1.0
References: <CA+ce6i3cV306yPooJV_a3sv24u-71fC9HdtKf2yiFG9g-wxqRw@mail.gmail.com>
 <7BD0A8F0-BF72-4828-A45D-D17044793BE4@gmail.com>
 <CA+ce6i2BnwVJyPOO=tCqjnwEH9sSQ2c17aZSdB+L7p+0F7zUCQ@mail.gmail.com>
In-Reply-To: <CA+ce6i2BnwVJyPOO=tCqjnwEH9sSQ2c17aZSdB+L7p+0F7zUCQ@mail.gmail.com>
Date: Tue, 24 Nov 2020 13:47:34 -0500
Message-ID: <CA+ce6i3ka5am6USYVrzeh17K-vgXBJL5iB-rYz+382JobXi0dg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Carrier frequency jumps on E310
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
From: Luke Whittlesey via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Luke Whittlesey <luke.whittlesey@gmail.com>
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

SSdtIHNlZWluZyB0aGlzIG9uIHR3byBFMzEwcyB0aGF0IGFyZSBhIGZldyB5ZWFycyBvbGQuIEkg
anVzdCBzd2FwcGVkCnRoZSBzZCBjYXJkIGludG8gYSBicmFuZC1uZXcgRTMxMCBhbmQgSSBhbSBO
T1Qgc2VlaW5nIHRoZSBmcmVxdWVuY3kKanVtcHMuIFNvLCBzYW1lIGV4YWN0IHNvZnR3YXJlLCBi
dXQgZGlmZmVyZW50IGFnZWQgRTMxMHMuIElzIHRoZXJlCnBvc3NpYmx5IGEgZGlmZmVyZW5jZSBp
biBoYXJkd2FyZSBsZWFkaW5nIHRvIHRoaXM/CgpPbiBUdWUsIE5vdiAyNCwgMjAyMCBhdCAxOjA0
IFBNIEx1a2UgV2hpdHRsZXNleQo8bHVrZS53aGl0dGxlc2V5QGdtYWlsLmNvbT4gd3JvdGU6Cj4K
PiBJIHdvdWxkIHNheSB0aGV5IGFyZSBwcm9wb3J0aW9uYWwgdG8gZnJlcXVlbmN5LiBBdHRhY2hl
ZCBpcyB3aGF0IGl0Cj4gbG9va3MgbGlrZSBhdCA1R0h6LiBUaGVyZSBhcmUganVtcHMgb2YgNDAw
SHogYW5kIDIyMEh6Lgo+Cj4gT24gVHVlLCBOb3YgMjQsIDIwMjAgYXQgMTE6NTAgQU0gTWFyY3Vz
IEQgTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBUcnkgYXQg
bG93ZXIgYW5kIGhpZ2hlciBmcmVxdWVuY2llc+KAlGFyZSB0aGUganVtcHMgdGhlIHNhbWUgb3Ig
cHJvcG9ydGlvbmFsIHRvIGZyZXF1ZW5jeT8KPiA+Cj4gPiBTZW50IGZyb20gbXkgaVBob25lCj4g
Pgo+ID4gPiBPbiBOb3YgMjQsIDIwMjAsIGF0IDExOjI3IEFNLCBMdWtlIFdoaXR0bGVzZXkgdmlh
IFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPiA+ID4KPiA+
ID4g77u/T24gdGhlIEUzMTAgSSdtIHNlZWluZyBkaXNjcmV0ZSBqdW1wcyBpbiB0aGUgY2Fycmll
ci4gVGhlIGNhcnJpZXIgd2lsbAo+ID4gPiBpbnRlcm1pdHRlbnRseSBqdW1wIGFyb3VuZCBpbiBz
dGVwcyBvZiBhYm91dCA1MEh6LiBTb21ldGltZXMgaXQgd2lsbAo+ID4gPiBqdW1wIGJ5IGFib3V0
IDIwMEh6LiBJJ3ZlIGF0dGFjaGVkIGEgd2F0ZXJmYWxsIGRpc3BsYXksIGJ1dCBJIGRvbid0Cj4g
PiA+IGtub3cgaWYgYXR0YWNobWVudHMgd2lsbCBtYWtlIGl0IHRocm91Z2guCj4gPiA+Cj4gPiA+
IE15IHNldHVwIGlzOgo+ID4gPiBFMzEwIFNHMwo+ID4gPiBVSEQzLjExIHVzaW5nIHRoZSBDLWFw
aQo+ID4gPiBUaW1pbmcgUmVmZXJlbmNlIGlzICJpbnRlcm5hbCIKPiA+ID4gQ2VudGVyIEZyZXF1
ZW5jeSAxR0h6Cj4gPiA+IEkvUSBzaWduYWwgaXMgYSBzdHJlYW0gb2YgMSwwLi4uIGZvciBhIENX
IGF0IHRoZSBjYXJyaWVyCj4gPiA+Cj4gPiA+IEkgY2FuIHNlZSB0aGUgc2FtZSB0aGluZyB3aGVu
IEkgc2V0IHRoZSB0aW1lc291cmNlIHRvICJncHNkbyIsIGJ1dCBJCj4gPiA+IHdvdWxkbid0IGV4
cGVjdCBpdCB3aGVuIEkgc2V0IGl0IHRvICJpbnRlcm5hbCIuIE15IGd1dCBzYXlzIHRoYXQgdGhp
cwo+ID4gPiBpcyBiZWluZyBjYXVzZWQgYnkgc29tZSB0aW1lc291cmNlIGNvcnJlY3Rpb24gbG9v
cC4gSWYgdGhpcyBpcyB0aGUKPiA+ID4gY2FzZSBpcyB0aGVyZSBhIHdheSB0byBkaXNhYmxlIHRo
aXM/Cj4gPiA+Cj4gPiA+IFRoYW5rIHlvdQo+ID4gPiA8ZTMxMC1sby1mcmVxdWVuY3ktc2hpZnRz
Mi5wbmc+Cj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPiA+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gPiA+IFVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tCj4gPiA+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91
c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
