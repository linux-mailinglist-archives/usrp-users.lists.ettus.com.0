Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB15259365
	for <lists+usrp-users@lfdr.de>; Tue,  1 Sep 2020 17:25:50 +0200 (CEST)
Received: from [::1] (port=33282 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kD8AP-0005xy-Am; Tue, 01 Sep 2020 11:25:49 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:42815)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kD8AK-0005r9-Mk
 for USRP-users@lists.ettus.com; Tue, 01 Sep 2020 11:25:44 -0400
Received: by mail-qt1-f169.google.com with SMTP id 60so1166231qtc.9
 for <USRP-users@lists.ettus.com>; Tue, 01 Sep 2020 08:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=/YOd/XwW6xLFeZ7QxVqSF8ktiVASPMzVB1KoZSotff4=;
 b=TET4ZYu0gn0oNrnjOMWV/H43VcTvAtQe4GdY81QMUrzaJESw8eaP/p8Fpqvwsv6tFW
 Hnr1HnaMPVQwQAZ3hCrCb7SgfDbFw+fjtgbEAOtAXV0DNJ5YEm01ls5Hmmz8LoEOvpOl
 1E/mulD3757guFL0AUL9PuqFLrYigSp1aY2d09NoMNyC75WVUH+NAPU1XQKotGGqt3zL
 eBZsRIy0SlWVpvZ4u8SZ47V+uQHn7JyKLAwrWKEO95BmzethePu6GB0TGx8h0z0buzg0
 RnfaY6lWEH/mZxjWSTqB4UwlMdAN51cctjUktqp0O6/poEVJFTXvH8yMk3odlygKqAFJ
 0MFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=/YOd/XwW6xLFeZ7QxVqSF8ktiVASPMzVB1KoZSotff4=;
 b=ov/JO72H0DsdaI/nErIne93pRhlaz/+nUR3INVYlGMdEWf+YS6C/AzYTV0QUzhMwUC
 rSynFLaHydOGWy8IKXPU2lHwm4OSi/Xaz6lzgJYz0MZ6DLtZS9ER5lI8G0Fz3sXoo8Uz
 JIT6qhxSbHIrtRwtzHb5o+8dfJBFGZS5Gn1YojmiH1/s/7vqt3ZB+srRgDFeXJ9/y0cG
 JcUtlWlxL+DEuuCKh6JOqWE+1BKb6Rhs4UgweqC2ldf96OrdxSWtDFlrwiD4AbFAq/Q6
 o3ita1keCbuQ4X7Hq3jI8++jlRRCMLpZoO0iyA1Ct2QD7hlW9sx+uI1001RwWYdwZ6pw
 9Eog==
X-Gm-Message-State: AOAM5329G0N6yshaox1ZgIviJhSgt8bbVZP5z3sN3C/J1/x9nZIvgNtt
 ZebIdGhNSkGfZhNreMpw/jsqVlWt790=
X-Google-Smtp-Source: ABdhPJzaYF5fTIh7GQvHGdXLCcM0QU39gkmW/Ws0xwAovQrrs20iUMa5Y/zj6LdBWwEGt65X+7VFxQ==
X-Received: by 2002:ac8:140b:: with SMTP id k11mr2336016qtj.287.1598973904037; 
 Tue, 01 Sep 2020 08:25:04 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.gmail.com with ESMTPSA id t20sm1263603qke.79.2020.09.01.08.25.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Sep 2020 08:25:03 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 1 Sep 2020 11:25:02 -0400
Message-Id: <75B13EC1-5F7C-4E97-9614-26221D8E5C20@gmail.com>
References: <CAM+cdhJvnNTRtukiKPx9OhGQAqeFOTBz+Vp3yc1ye4CYV44+OQ@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAM+cdhJvnNTRtukiKPx9OhGQAqeFOTBz+Vp3yc1ye4CYV44+OQ@mail.gmail.com>
To: Christopher.Flood@colorado.edu
X-Mailer: iPhone Mail (17G80)
Subject: Re: [USRP-users] External Oscillator with Ettus N310
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

V2hhdCBhcmUgdGhlIG91dHB1dCBwYXJhbWV0ZXJzIG9mIHlvdXIgUmIgcmVmZXJlbmNlPyBTaWdu
YWwgYW1wbGl0dWRlIGFuZCBzaGFwZSwgZXRjLiAKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24g
U2VwIDEsIDIwMjAsIGF0IDExOjE4IEFNLCBDaHJpc3RvcGhlciBGbG9vZCB2aWEgVVNSUC11c2Vy
cyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+IAo+IO+7vwo+ICAgSGkgYWxs
LAo+IAo+IFNvcnJ5IGlmIHRoaXMgaXMgY29taW5nIHRocm91Z2ggdHdpY2UgLSBJIHNlbnQgaXQg
b25jZSBiZWZvcmUgSSBzdWJzY3JpYmVkIHRvIHRoZSBsaXN0LCBidXQgZGlkbid0IGtub3cgaWYg
aXQgd2VudCB0aHJvdWdoIG9yIG5vdCEgKEkgZGlkbid0IHNlZSBpdCBpbiB0aGUgYXJjaGl2ZXMu
Li4pCj4gCj4gLS0tLS0tLQo+IAo+IEknbSBoYXZpbmcgc29tZSB0cm91YmxlIHVzaW5nIGFuIGV4
dGVybmFsIHJlZmVyZW5jZSB3aXRoIHRoZSBFdHR1cyBOMzEwLiBUaGUgcmVmZXJlbmNlIEkgYW0g
dXNpbmcgaXMgYSBGUzcyNSBSdWJpZGl1bSBGcmVxdWVuY3kgU3RhbmRhcmQuCj4gCj4gVG8gdGVz
dCB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSBpbnRlcm5hbCBjbG9jayBhbmQgdGhlIGV4dGVy
bmFsIHJlZmVyZW5jZSwgSSB0cmFuc21pdHRlZCBhIDEwTUh6IHNpZ25hbCBmcm9tIHRoZSBFdHR1
cyBOMzEwIHdpdGggYW5kIHdpdGhvdXQgdGhlIGV4dGVybmFsIHJlZmVyZW5jZS4gVXNpbmcganVz
dCB0aGUgaW50ZXJuYWwgY2xvY2sgb2YgdGhlIFNEUiwgdGhlIDEwTUh6IHNpZ25hbCBzbG93bHkg
d2FuZGVycyB3aXRoIHJlc3BlY3QgdG8gdGhlIDEwTUh6IHNpZ25hbCBmcm9tIHRoZSBSdWJpZGl1
bSBGcmVxdWVuY3kgU3RhbmRhcmQgYXMgc2VlbiBvbiBhbiBvc2NpbGxvc2NvcGUuIFRoaXMgaXMg
dG8gYmUgZXhwZWN0ZWQgc2luY2UgdGhlIHN0YWJpbGl0eSBvZiB0aGUgaW50ZXJuYWwgY2xvY2sg
aW4gdGhlIFNEUiBpcyB3b3JzZSB0aGFuIHRoZSBSdWJpZGl1bSBGcmVxdWVuY3kgU3RhbmRhcmQu
Cj4gCj4gSG93ZXZlciwgd2hlbiBJIGNvbm5lY3QgdGhlIDEwTUh6IHNpZ25hbCBmcm9tIHRoZSBS
dWJpZGl1bSB0byB0aGUgZXh0ZXJuYWwgcmVmZXJlbmNlIG9mIHRoZSBOMzEwIGFuZCB0ZWxsIHRo
ZSBOMzEwIHRvIHVzZSB0aGUgZXh0ZXJuYWwgcmVmZXJlbmNlLCB0aGUgMTBNSHogc2lnbmFsIHRo
YXQgdGhlIE4zMTAgZ2VuZXJhdGVzIHdhbmRlcnMgbXVjaCBmYXN0ZXIgd2l0aCByZXNwZWN0IHRv
IHRoZSAxME1IeiBzaWduYWwgZnJvbSB0aGUgUnViaWRpdW0uIFRoaXMgaXMgb3Bwb3NpdGUgb2Yg
d2hhdCBJIGJlbGlldmUgc2hvdWxkIGhhcHBlbiwgYXNzdW1pbmcgdGhlIE4zMTAgaXMgdHJ1bHkg
dXNpbmcgdGhlIGV4dGVybmFsIHJlZmVyZW5jZSBzaWduYWwuIAo+IAo+IEhhdmUgYW55IG9mIHlv
dSBleHBlcmllbmNlZCB0aGlzIG9yIGhhdmUgYW55IHRpcHMgYXMgdG8gd2hhdCBtaWdodCBiZSBn
b2luZyBvbj8KPiAKPiBUaGFua3MhCj4gCj4gLUNocmlzIAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
