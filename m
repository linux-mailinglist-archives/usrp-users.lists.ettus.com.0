Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE03A320EA6
	for <lists+usrp-users@lfdr.de>; Mon, 22 Feb 2021 01:11:27 +0100 (CET)
Received: from [::1] (port=49964 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lDyow-0007yD-N3; Sun, 21 Feb 2021 19:11:26 -0500
Received: from mail-qt1-f178.google.com ([209.85.160.178]:40193)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lDyot-0007jK-0n
 for usrp-users@lists.ettus.com; Sun, 21 Feb 2021 19:11:23 -0500
Received: by mail-qt1-f178.google.com with SMTP id f17so8145342qth.7
 for <usrp-users@lists.ettus.com>; Sun, 21 Feb 2021 16:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=+3Ks/y251nHNI4pT3+xWHNvPir0U64z9ALN1+0qskG4=;
 b=hGAi/PQCwPIoW06d3jh9lzUlxc0x8fjaU3hpVDxZlZnAAZG9No+jKRg/AT1T+CcCyr
 KD86lJIlSlOG6UQ+0BvD7pS3S1zO0P/uou0W9Dh+Vtx0GIDm5lQ9f0+cLT/rhAzr3Kto
 pdL6A3ynJEBvuhGE08sKhiqpMevVvF38aNHjpjTNk+p3bnvgWze1/HACamUSUbXDvTkR
 G/D346GpxDEyaJY7o3K9l2vTHP1K0W4zToRTUn+6uwYNUbjkkyGJpgqzYfSZ88Bq/Fgt
 C+f/pWkdowDioI5coXFwmonDwteYt/jad+6uw+AavU0J7OI2xD9g8z2l8+FaZqtQo6eK
 dLRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=+3Ks/y251nHNI4pT3+xWHNvPir0U64z9ALN1+0qskG4=;
 b=Z85EaxP6kYOOVcCdCkaV77gsF80MPHjTUmIAKJgkh1A2bunr8059CaehWtwexlbff/
 oKd22v9hsjZiwR7gGzCOhkxDRZIEF+u/RR1Y7XKXoVq9t/7dJCj8g1wE7XzM0KljsQjr
 oJtbaPJSEz0q6OxYoCJtIs72opdPYlkQcjMO1v60GszeZ0xEHo0EtCbwiO3FWGDBDKea
 P1tpmKNGfRARgDgtRVM5iMaogA8C544OiCvelaWg1TTbcIqwRh27ahELZtRagO0MUhPK
 lzdcXK16Z8e6tLpPWYT1bfa/51Amx/K+dQUhS+R4Z99faWtJ1FXum+pcRO/DeJSQWSza
 hphg==
X-Gm-Message-State: AOAM530lWziNQDWmIozXVC1TqKhKunPuV3my3/LoIl0gRlhcNWisrOX9
 3A84GpK2zSvPzCeohfZqrstFIo0kAPA=
X-Google-Smtp-Source: ABdhPJyRHGswraoAvNCeVxISnUgOLVI0b4oDVa64bygKhFFVRXbVjKLgeVIUn3pvpwUHPAtDgHQtxw==
X-Received: by 2002:ac8:358e:: with SMTP id k14mr17890986qtb.319.1613952642215; 
 Sun, 21 Feb 2021 16:10:42 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.googlemail.com with ESMTPSA id y2sm11145514qkj.56.2021.02.21.16.10.41
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 21 Feb 2021 16:10:41 -0800 (PST)
Message-ID: <6032F681.6090004@gmail.com>
Date: Sun, 21 Feb 2021 19:10:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CA+EePfQ=qcn=P7hT9+dze2oEj0Ya08mKRP-tJW6CteNcrHUAkg@mail.gmail.com>
 <60302634.1080503@gmail.com>
 <CA+EePfQTw05tDFN6YenQMKCtt3WM2JvYCBvzbfUBabzLGx0fBA@mail.gmail.com>
In-Reply-To: <CA+EePfQTw05tDFN6YenQMKCtt3WM2JvYCBvzbfUBabzLGx0fBA@mail.gmail.com>
Subject: Re: [USRP-users] Problem with tx_waveform reference lock
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

T24gMDIvMjEvMjAyMSAwNzowMCBQTSwgR3VpbGxlcm1vIEdhbmNpbyB2aWEgVVNSUC11c2VycyB3
cm90ZToKPiBEZWFyIE1hcmN1cywKPgo+IFRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgYW5z
d2VyLAo+IHRoZSByZWZlcmVuY2UgdGhhdCBJIHVzZSBjb21lcyBmcm9tIGEgMTBNSHogR1BTRFNP
LCB0aGF0IEkgYWxzbyB1c2UKPiB3aXRoIG90aGVyIGV0dHVzIGJvYXJkcyB3aXRob3V0IGFueSBw
cm9ibGVtIGFzIHJlY2VpdmVycy4KPiBJIGRpZCBzb21lIHRlc3RzIHVzaW5nIHRoZSBQeXRob24g
QVBJcyBhbmQgdGhlIHJlZmVyZW5jZSBzZW5zb3Igc2hvd3MKPiBhIGxvY2tlZCBzdGF0ZSwgdGhl
biBJIGFkZCBhIDUgc2Vjb25kcyBkZWxheSBvbiB0aGUgdHhfd2F2ZWZvcm0uY3BwCj4gcmlnaHQg
YWZ0ZXIgc2V0dGluZyB0aGUgcmVmZXJlbmNlIHZhbHVlLCBhbmQgdGhlIHJlZmVyZW5jZSBub3cg
YXBwZWFycwo+IGxvY2tlZC4uCj4KPiBDb2RlOgo+IGlmICh2bS5jb3VudCgicmVmIikpIHsKPiAg
ICAgICAgICB1c3JwLT5zZXRfY2xvY2tfc291cmNlKHJlZik7Cj4gICAgICB9Cj4gICB1c2xlZXAo
MTAwMDAwMCo1KTsKPgo+IEFuZCB0aGUgcmVzdWx0IGlzLi4uOgo+IFNldHRpbmcgZGV2aWNlIHRp
bWVzdGFtcCB0byAwLi4uCj4gQ2hlY2tpbmcgVFg6IExPOiBsb2NrZWQgLi4uCj4gQ2hlY2tpbmcg
VFg6IFJlZjogbG9ja2VkIC4uLgo+IFByZXNzIEN0cmwgKyBDIHRvIHN0b3Agc3RyZWFtaW5nLi4u
Cj4KPiB3aXRob3V0IHRoZSA1IHNlY29uZCBkZWxheSAsIEkgZ290Ogo+Cj4gU2V0dGluZyBkZXZp
Y2UgdGltZXN0YW1wIHRvIDAuLi4KPiBDaGVja2luZyBUWDogTE86IGxvY2tlZCAuLi4KPiBDaGVj
a2luZyBUWDogUmVmOiB1bmxvY2tlZCAuLi4KPiBFcnJvcjogQXNzZXJ0aW9uRXJyb3I6IHJlZl9s
b2NrZWQudG9fYm9vbCgpCj4gICAgaW4gaW50IF9tYWluKGludCwgY2hhcioqKQo+ICAgIGF0IC9o
b21lL3VzZXIvdWhkL2hvc3QvZXhhbXBsZXMvdHhfd2F2ZWZvcm1zLmNwcDoyODYKPgo+Cj4gVGhh
bmtzIGFnYWluICEhCj4KPiBBbGwgdGhlIGJlc3QuCkFoLCBzbyB0aGlzIGlzIGp1c3QgdGhlIHR4
X3dhdmVmb3JtcyBjb2RlIGJlaW5nIGEgYml0IHRvbyBoYXN0eSB0byBjaGVjayAKZm9yIHJlZl9s
b2NrZWQgYWZ0ZXIgc2V0dGluZyB0aGUgcmVmZXJlbmNlLiAgSSdtIGd1ZXNzaW5nIHRoYXQgYSBm
ZXcKICAgaHVuZHJlZCBtaWxsaXNlY29uZHMgd291bGQgYmUgZW50aXJlbHkgYWRlcXVhdGUgaW4g
YWxsIGNhc2VzLi4uCgo+Cj4gRWwgdmllLCAxOSBmZWIgMjAyMSBhIGxhcyAxNzo1OCwgTWFyY3Vz
IEQuIExlZWNoIHZpYSBVU1JQLXVzZXJzCj4gKDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4p
IGVzY3JpYmnDszoKPj4gT24gMDIvMTkvMjAyMSAxMjozMSBQTSwgR3VpbGxlcm1vIEdhbmNpbyB2
aWEgVVNSUC11c2VycyB3cm90ZToKPj4+IERlYXIgYWxsLAo+Pj4KPj4+IEknbSB1c2luZyBhIEIy
MDUgYXMgYSBDVyBzaWduYWwgZ2VuZXJhdG9yIHdpdGggdGhlIGV4YW1wbGUKPj4+IHR4X3dhdmVm
b3JtLCBpbiBnZW5lcmFsIGl0IHdvcmtzIG9rLCBidXQgaWYgSSB0cnkgdG8gdXNlIGEgMTBNSHoK
Pj4+IGV4dGVybmFsIHJlZmVyZW5jZSAob3B0aW9uIC0tcmVmIGV4dGVybmFsKSBJIGdvdCB0aGUg
ZXJyb3IsIHNhbWUgaXNzdWUKPj4+IGlmIEkgcmVwbGFjZSB0aGUgMTBNSHogd2l0aCBhIFBQUywg
KC0tcHBzIGV4dGVybmFsKSwgcG93ZXIgbGV2ZWxzIGFyZQo+Pj4gb2suCj4+Pgo+Pj4KPj4+IENo
ZWNraW5nIFRYOiBSZWY6IHVubG9ja2VkIC4uLgo+Pj4gRXJyb3I6IEFzc2VydGlvbkVycm9yOiBy
ZWZfbG9ja2VkLnRvX2Jvb2woKQo+Pj4gICAgIGluIGludCBfbWFpbihpbnQsIGNoYXIqKikKPj4+
ICAgICBhdCAvaG9tZS9nZ2FuY2lvL3VoZC9ob3N0L2V4YW1wbGVzL3R4X3dhdmVmb3Jtcy5jcHA6
Mjg1Cj4+Pgo+Pj4gVGhpcyBpcyB3aXRoIGEgZnJlc2ggaW5zdGFsbAo+Pj4gW0lORk9dIFtVSERd
IGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNy41LjA7IEJvb3N0XzEwNjUwMTsKPj4+IFVIRF80LjAu
MC4wLTkzLWczYjljZWQ4Zgo+Pj4KPj4+IEFueSBpZGVhIG9uIHRoaXM/IFRoYW5rIHlvdSB2ZXJ5
IG11Y2ghCj4+Pgo+Pj4gQ2hlZXJzLgo+Pj4KPj4+Cj4+IFlvdSBzaG91bGQgcHJvYmFibHkgY2hl
Y2sgdGhlIHF1YWxpdHkgb2YgeW91ciAxME1IeiBzaWduYWwgZ29pbmcgaW50bwo+PiB0aGUgQjIx
MC4gSSd2ZSB1c2VkIGFsbCBraW5kcyBvZiBleHRlcm5hbCAxME1IeiByZWZlcmVuY2VzIGZvciBC
MjEwCj4+ICAgICBhbmQgaXQgaGFzIG5ldmVyIGNvbXBsYWluZWQuICAgMTBNSHogT0NYTyB3aXRo
IGEgVFRMIGJ1ZmZlci4gUnViaWRpdW0KPj4gY2xvY2sgd2l0aCBhIFRUTCBidWZmZXIuICAgIE9j
dG9jbG9jay1HLiAgTmV2ZXIgaGFkIGEgcHJvYmxlbS4KPj4KPj4gQ2hlY2sgd2hhdCB5b3VyIDEw
TUh6IHNpZ25hbCBsb29rcyBsaWtlIGludG8gYSA1ME9obSB0ZXJtaW5hdGlvbiBvbiBhCj4+IGdv
b2QgcXVhbGl0eSBvc2NpbGxvc2NvcGUuICBEb2VzIGl0IGxvb2sgcmVhc29uYWJseSBwdXJlLCBv
ciBhcmUgdGhlcmUKPj4gICAgIHVud2FudGVkIHJpbmdpbmcgYXJ0aWZhY3RzPwo+Pgo+PiBJZiB5
b3UncmUgZHJpdmluZyB0aGUgcmVmZXJlbmNlIGlucHV0ICJ0b28gaGFyZCIsIHlvdSBtYXkgYmUg
Y3JlYXRpbmcKPj4gdW53YW50ZWQgc3B1cnMgdGhhdCBjb25mdXNlIHRoZSByZWZlcmVuY2UgUExM
LiAgTWFrZSBzdXJlIHRoZSBsZXZlbAo+PiAgICAgaXMgbm90IHRvbyAibG91ZCIuCj4+Cj4+Cj4+
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+IGh0
dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0
dHVzLmNvbQo+Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20K
