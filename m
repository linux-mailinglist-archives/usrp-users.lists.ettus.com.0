Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 821CD6C39A
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 01:46:27 +0200 (CEST)
Received: from [::1] (port=50160 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hntcv-0003hE-HA; Wed, 17 Jul 2019 19:46:25 -0400
Received: from mail-wm1-f41.google.com ([209.85.128.41]:50371)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1hntcs-0003dB-Na
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 19:46:22 -0400
Received: by mail-wm1-f41.google.com with SMTP id v15so23755817wml.0
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 16:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=OddcGiACPDMfQHAqUGM9siF8bgyvuQamT32flkCo3M8=;
 b=irVhC0zwYZhj5wz0k+Vi+fZeddYFe+VoWZ5AyIhH49GufpXmC+BtIg52uaVJBU2pf4
 LSgjRW75JNF4LdeIIv6iaFK74XE9f5RAEcVmz0qdEqgo1/WQ2iHpfTh7x9wfmlgBjlwK
 QKbiSKrgTLVU29CFpzMj2fD/AYl89oW38JI0WYzUpfvRMkUchY7OseqpO8eVf1U//76t
 lC+8Pn2rKZqU8snctPP4fbq8XPXyz9FuNBjoaGaGDAJlpUP1qfQrMP0SdpUY9cx+kCyL
 aEs7F6ZIIFaB5P7GeayQWytrELum/Wf3HEvGURrLvLnscLgQ6PSD3JketXGBOK/Q/6xY
 Gyuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=OddcGiACPDMfQHAqUGM9siF8bgyvuQamT32flkCo3M8=;
 b=XTFongkDHZX/gr+OqgLWPa3w2udJFGF9Po5yWSY8eTXGVCj+rwdh4XgQ18KkOJevxU
 1QSTmrfrOKsYXBUR/uLP63S5fj5e/K/aagWtEqNjrBw4MX1yTXKAl9ugFHcc6npVjcSS
 IhIIhK4W0MLnryJyVIBnPxM1NPBZciL3ejH48AcraZRadtBKpEEJI5a7YnUeysgXuzTh
 pjBfl+Kv3bZA++fPI8N0HdRbfjT3XVCC/QQAhyu2Q/wQPAM7s876EffuOO2vgXatOoAU
 ksKiefY/OFZxel7xWf4fx55OpiHjGeS0hdAB7VetN9wNo0jZ+TCfIIBgxfhOo5+lQGrP
 ROwg==
X-Gm-Message-State: APjAAAV5mV8gYzD08jOxe56IDYk1kTjj9EU2HMg7pAC6frCm5lmYaA5v
 wt2TKSK4CWtQ721b5B1E+b8myeFo
X-Google-Smtp-Source: APXvYqzI2xiCzROHwTEmwfOyvLcdJRvwSggd4ofFT6cGvKS7h/QFsBHIh+iB8LGnUloBtb7N6oZTGg==
X-Received: by 2002:a1c:343:: with SMTP id 64mr33898218wmd.116.1563407141664; 
 Wed, 17 Jul 2019 16:45:41 -0700 (PDT)
Received: from workhorse.lan
 (HSI-KBW-046-005-003-059.hsi8.kabel-badenwuerttemberg.de. [46.5.3.59])
 by smtp.googlemail.com with ESMTPSA id a81sm24659097wmh.3.2019.07.17.16.45.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 16:45:40 -0700 (PDT)
Message-ID: <20dd2d80f266c2b083576a709ab56c6dc8e2373a.camel@ettus.com>
To: Saeid Hashemi <saeidh@gmail.com>, Marcus D Leech <patchvonbraun@gmail.com>
Date: Thu, 18 Jul 2019 01:45:40 +0200
In-Reply-To: <CANQ3h38RWzTzdOmqxTDHUYy-VrskWTNqspyyywwiQLWVWT8kog@mail.gmail.com>
References: <CANQ3h38pXPO0OYEEYQ=NjKmbvnepaKJJiVHUyGAqtHntYMM3rA@mail.gmail.com>
 <CANQ3h38XTqxTTqKqCc376Q2gAygR4QAiX1V6CrJg8YOM-jm5gA@mail.gmail.com>
 <5D250B39.5030201@gmail.com>
 <CANQ3h39ULfW=PdioX9rnneZgWQGCNzUzcE7MXOzzwpEa_9_2cw@mail.gmail.com>
 <389840B8-0CD7-4044-BE7B-E685C34E0D26@gmail.com>
 <CANQ3h38RWzTzdOmqxTDHUYy-VrskWTNqspyyywwiQLWVWT8kog@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Command uhd_fft throwing seg fault (core dumped)
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

Tm8uIFlvdSdkIG5lZWQgdG8gcmVidWlsZCBpdCBmcm9tIHNvdXJjZS4KCk9uIFdlZCwgMjAxOS0w
Ny0xNyBhdCAxNjoyNyAtMDQwMCwgU2FlaWQgSGFzaGVtaSB2aWEgVVNSUC11c2VycyB3cm90ZToK
PiBDYW4gSSBtb2RpZnkgaXQgdG8gbGluayBhZ2FpbnN0IHRoZSBjdXJyZW50IHZlcnNpb24/Cj4g
Cj4gT24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgNToxOCBQTSBNYXJjdXMgRCBMZWVjaCA8Cj4gcGF0
Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gWWVzIHNvIGl04oCZcyB2ZXJ5IGxpa2Vs
eSBhIGNvbXBhdGliaWxpdHkgaXNzdWUuIAo+ID4gCj4gPiBZb3VyIEdOVVJhZGlvIGluc3RhbGwg
d291bGQgaGF2ZSBpbnN0YWxsZWQgdWhkX2ZmdCBhbmQgbGlrZWx5Cj4gPiBsaW5rZWQgYWdhaW5z
dCBhIGRpZmZlcmVudCBVSEQgdmVyc2lvbgo+ID4gCj4gPiAKPiA+IFNlbnQgZnJvbSBteSBpUGhv
bmUKPiA+IAo+ID4gT24gSnVsIDE2LCAyMDE5LCBhdCA0OjMwIFBNLCBTYWVpZCBIYXNoZW1pIDxz
YWVpZGhAZ21haWwuY29tPiAKPiA+IHdyb3RlOgo+ID4gCj4gPiA+IEhpIE1hcmN1cywKPiA+ID4g
SSBhcHByZWNpYXRlIHlvdXIgcmVwbHksCj4gPiA+IAo+ID4gPiBJIGRpZCBzb21lIGRpZ2dpbmcs
IGFuZCBpdCBzZWVtcyBJIG9ubHkgaGF2ZSB0aGlzIGluc3RhbmNlIG9mIFVIRAo+ID4gPiBpbnN0
YWxsZWQuIEhvdyB3b3VsZCBJIHRyb3VibGVzaG9vdCB0aGlzPwo+ID4gPiBXb3VsZCB0aGUgYmVz
dCBzb2x1dGlvbiBiZSB0byBzaW1wbHkgcmVpbnN0YWxsPwo+ID4gPiAKPiA+ID4gTXkgc2V0dXAg
aXMgdGhhdCBJIGluc3RhbGxlZCBPcGVuIEFpciBJbnRlcmZhY2UsIGFuZCBVSEQgaGFzIGJlZW4K
PiA+ID4gaW5zdGFsbGVkIGF1dG9tYXRpY2FsbHkgYnkgdGhhdC4KPiA+ID4gVGhlIG90aGVyIGNv
bW1hbmRzIHdvcmssIHN1Y2ggYXMgdWhkX3VzcnBfcHJvYmUsIGFzIHdlbGwgYXMgT3Blbgo+ID4g
PiBBaXIgSW50ZXJmYWNlJ3MgcmFkaW8gc29mdHdhcmUsIHNvZnRtb2RlbSBVRSBhbmQgZU5CLgo+
ID4gPiAKPiA+ID4gUmVnYXJkcywKPiA+ID4gU2FlaWQKPiA+ID4gCj4gPiA+IE9uIFR1ZSwgSnVs
IDksIDIwMTkgYXQgNTo0NyBQTSBNYXJjdXMgRC4gTGVlY2ggdmlhIFVTUlAtdXNlcnMgPAo+ID4g
PiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4gPiA+ID4gT24gMDcvMDkvMjAx
OSAwNDo0MSBQTSwgU2FlaWQgSGFzaGVtaSB2aWEgVVNSUC11c2VycyB3cm90ZToKPiA+ID4gPiA+
IFRvIGluY2x1ZGUgY29udGV4dCwgdGhlIHVoZF9jb25maWdfaW5mbyBjb21tYW5kIHNob3dzIHRo
ZQo+ID4gPiA+ID4gZm9sbG93aW5nOgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBsaW51eDsgR05VIEMr
KyB2ZXJzaW9uIDQuOC40OyBCb29zdF8xMDU0MDA7Cj4gPiA+ID4gPiBVSERfMDAzLjAxMC4wMDIu
MDAwLXJlbGVhc2UKPiA+ID4gPiA+IAo+ID4gPiA+ID4gQW5kIHVuYW1lIC1hOgo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBMaW51eCBudWMwMyAzLjE5LjAtNjEtbG93bGF0ZW5jeSAjNjl+MTQuMDQuMS1V
YnVudHUgU01QCj4gPiA+ID4gPiBQUkVFTVBUIFRodSBKdW4gOSAxMDoxNTowMCBVVEMgMjAxNiB4
ODZfNjQgeDg2XzY0IHg4Nl82NAo+ID4gPiA+ID4gR05VL0xpbnV4Cj4gPiA+ID4gPiAKPiA+ID4g
PiA+IFRoZSBjb21tYW5kIGxpbmUgb3V0cHV0IGZyb20gdWhkX2ZmdCBvbmx5IHNob3dzIHRoZQo+
ID4gPiA+ID4gZm9sbG93aW5nOgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTZWdtZW50YXRpb24gZmF1
bHQgKGNvcmUgZHVtcGVkKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiAgTXkgZ3Vlc3Mg
aXMgdGhhdCB5b3VyIHVoZF9mZnQgd2FzIGxpbmtlZCBhZ2FpbnN0IGEgZGlmZmVyZW50Cj4gPiA+
ID4gdmVyc2lvbiBvZiB0aGUgVUhEIGxpYnJhcnkgdGhhbiB5b3UgY3VycmVudGx5IGhhdmUgb24g
eW91cgo+ID4gPiA+IHN5c3RlbS4KPiA+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiA+IE9uIFR1ZSwg
SnVsIDksIDIwMTkgYXQgNDoxMCBQTSBTYWVpZCBIYXNoZW1pIDwKPiA+ID4gPiA+IHNhZWlkaEBn
bWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiBIaSBhbGwsCj4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiBSdW5uaW5nIHRoZSBjb21tYW5kICJ1aGRfZmZ0IiBoYXMgYmVlbiBnaXZpbmcgdGhpcyBy
ZXN1bHQKPiA+ID4gPiA+ID4gZm9yIG1lLCB3b3VsZCBhbnlvbmUgaGF2ZSBhIHJlY29tbWVuZGF0
aW9uIG9uIGhvdyB0byBmaXgKPiA+ID4gPiA+ID4gdGhlIGlzc3VlPwo+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gVGhhbmtzIGFuZCByZWdhcmRzLAo+ID4gPiA+ID4gPiBTYWVpZAo+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiA+ID4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QKPiA+ID4gPiA+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gPiA+ID4gPiBodHRwOi8v
bGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5j
b20KPiA+ID4gPiAgCj4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiA+ID4gPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+ID4gPiA+IFVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gPiA+ID4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWls
bWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNv
bS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
