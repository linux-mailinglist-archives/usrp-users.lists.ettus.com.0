Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA140320D20
	for <lists+usrp-users@lfdr.de>; Sun, 21 Feb 2021 20:19:15 +0100 (CET)
Received: from [::1] (port=47836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lDuG7-0007Ou-SI; Sun, 21 Feb 2021 14:19:11 -0500
Received: from mail-qv1-f49.google.com ([209.85.219.49]:36208)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lDuG4-0007Ko-5E
 for usrp-users@lists.ettus.com; Sun, 21 Feb 2021 14:19:08 -0500
Received: by mail-qv1-f49.google.com with SMTP id e9so5151217qvy.3
 for <usrp-users@lists.ettus.com>; Sun, 21 Feb 2021 11:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=5tcOGbJvsFkycwbt7McMzoCt62mYIy5P1f8Xa4olnQ8=;
 b=M0DmbxUuK2pkcVrcEZTmOKiGpaBzySN2Kv3uSWz9hYZrVGde93A5O367nngKxfOMgk
 fUVprQ5Gza9GCNE7J3WiWA4oyX9J6P//UeJHFIIV+gnc2RX2qjoGs1bviJ0FUOmaMTV2
 Oey1CzaH9PkYiFLaUAv40DHzW0vwbTGZzFoigeLE5HRiBX/2mjdtBAlT4TVYv36qs5Ot
 VtkU0k4yjitVS0JV7E862ZPX+dtv/gaLl1GGpfhA11bTc1M2aUnTgXZhZ16ewb1rNqlH
 3dyBrzjCuEr4WZgZQTJzkZPcoPNHhFpdw9QqYQ3LQeFvc36KiUkfF11TBqTqrsjr4/vE
 L4ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=5tcOGbJvsFkycwbt7McMzoCt62mYIy5P1f8Xa4olnQ8=;
 b=b9Ez/5xGxotyYrZH2ifgT4vyVa+3jD7i4EvyO/3W/YQ3k4cyYoM+eoTuM04Eug2d0B
 RfMgN8n9OtiAdGidH6hp2CbXKo5jBksqSRYGXyBCfRkn92n0L1JP99hqXuTxF9yBJf5e
 kYMhVkkX0Ds5H0efPGtNxD3F7u34/qzQxuZfU07vOPBOfTOBESGg0fXV4s9mnNLBbyLD
 djGdWNflOf1UB6TwvpZ7qtcrOU9XfNCQV2lTykQgQHqLqywGiPY1VVxxF2zCzCsGBXMP
 OeoRZpgCHyCgR5Kb0pkh2om5RAQXpOrAgWG1JGJBJe6GNPG2AiWFj+EtYn0aPvK8ILah
 XF1A==
X-Gm-Message-State: AOAM533JzUKyfg1V+t+Nq0lVMu+omQzPIbw4/qodOO2jL1ALGRzbiuBi
 MexwAkIwCqR36SddFYdd3E905wNG03g=
X-Google-Smtp-Source: ABdhPJzGZmiClvYW3uS75r9KiqBxpUmO/1YwuZycIaIiUqPpUL7sDQ3clmbb3z04gMPtWpfINOdMxg==
X-Received: by 2002:ad4:5894:: with SMTP id dz20mr10222278qvb.26.1613935107208; 
 Sun, 21 Feb 2021 11:18:27 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.gmail.com with ESMTPSA id 199sm11201513qkj.9.2021.02.21.11.18.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 21 Feb 2021 11:18:26 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Sun, 21 Feb 2021 14:18:25 -0500
Message-Id: <94E6C926-AB01-4383-BCC7-C194C1BB46D2@gmail.com>
References: <2e91003a-1e73-93e3-38fe-9e036bd70158@ant.uni-bremen.de>
Cc: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <2e91003a-1e73-93e3-38fe-9e036bd70158@ant.uni-bremen.de>
To: Johannes Demel <demel@ant.uni-bremen.de>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] GPSDO fails to lock
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

RXZlcnkgR1BTIGltcGxlbWVudGF0aW9uIGlzIGRpZmZlcmVudC4gCgpJdCBtYXkgYmUgdGhlIGNh
c2UgdGhhdCBoaWdoZXIgU05SIGlzIHJlcXVpcmVkIGZvciB0aW1pbmcgcmVjZWl2ZXJzIGNvbXBh
cmVkIHRvIHBvc2l0aW9uIHJlY2VpdmVycy4gCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEZl
YiAyMSwgMjAyMSwgYXQgMTA6MTMgQU0sIEpvaGFubmVzIERlbWVsIDxkZW1lbEBhbnQudW5pLWJy
ZW1lbi5kZT4gd3JvdGU6Cj4gCj4g77u/U3VyZS4gR2VuZXJhbGx5IEkgd291bGRuJ3QgZXhwZWN0
IEdQUyB0byB3b3JrIGluIGEgYnVpbGRpbmcuIFRob3VnaCwgc2luY2Ugd2UgaGF2ZSBhdCBsZWFz
dCAzIGRpZmZlcmVudCBzeXN0ZW1zIChwaG9uZSwgUlBpIC93IEdQUy1zaGllbGQsIExURSBlTm9k
ZUIpIHRoYXQgd29yayB0aGVyZSwgSSBhc3N1bWVkIHRoYXQgdGhlIEdQU0RPIHdvdWxkIGRvIHNv
IGFzIHdlbGwuCj4gCj4+IE9uIDIxLjAyLjIxIDE0OjIzLCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6
Cj4+PiBPbiAwMi8yMS8yMDIxIDA3OjE1IEFNLCBKb2hhbm5lcyBEZW1lbCB3cm90ZToKPj4+IFRo
YW5rcyBmb3IgeW91ciBoaW50cy4gVGhlIGFudGVubmFlIGFuZCBkZXZpY2VzIGFyZSBpbmRvb3Jz
LiBJcyB0aGVyZSBhIGRpZmZlcmVuY2UgaWYgdGhlIGRldmljZSByZWNlaXZlcyBhIHNpZ25hbCBh
bmQgbG9ja2luZyBvbnRvIHRoYXQgc2lnbmFsPyBlLmcuIHRoZSBkZXZpY2VzIGRldGVybWluZXMg
dGhlIHNpZ25hbCB0b28gZGlzdG9ydGVkIHRvIGxvY2s/Cj4+IGh0dHBzOi8vaXRzdGlsbHdvcmtz
LmNvbS9kb2VzbnQtZ3BzLXdvcmstaW5zaWRlLWJ1aWxkaW5nLTE4NjU5Lmh0bWwKPj4+IAo+Pj4g
T24gMTkuMDIuMjEgMTY6MzIsIE1hcmN1cyBELiBMZWVjaCB3cm90ZToKPj4+PiBPbiAwMi8xOS8y
MDIxIDA5OjQ4IEFNLCBSb2IgS29zc2xlciB3cm90ZToKPj4+Pj4gV2hlbiBJIGZpcnN0IHN0YXJ0
ZWQgdXNpbmcgVUhEIDQuMCB3aXRoIHRoZSBOMzEwICh0aGlzIHBhc3Qgc3VtbWVyKSwgSQo+Pj4+
PiBub3RpY2VkIHdoYXQgSSB0aG91Z2h0IHdhcyBhIGRlZ3JhZGF0aW9uIGluIHRoZSBkZXZpY2Un
cyBhYmlsaXR5IHRvCj4+Pj4+IGxvY2suIEkgd2FzIGNvbXBhcmluZyBvbmUgTjMxMCBydW5uaW5n
IFVIRCAzLjE1IHRvIGFub3RoZXIgcnVubmluZyBVSEQKPj4+Pj4gNC4wLiAgQm90aCBzeXN0ZW1z
IHdlcmUgbG9jYXRlZCBhIGZldyBmZWV0IGFwYXJ0IGZyb20gZWFjaCBvdGhlciB3aXRoCj4+Pj4+
IHRoZSBzYW1lIG1vZGVsIGFudGVubmEgc28gdGhleSBzaG91bGQgaGF2ZSBwcm9kdWNlZCBzaW1p
bGFyIHJlc3VsdHMsCj4+Pj4+IGJ1dCBpdCBzZWVtZWQgdGhhdCB0aGUgMy4xNSBzeXN0ZW0gYWNo
aWV2ZWQgbG9jayBtb3JlIGVhc2lseS4gSW4gYW55Cj4+Pj4+IGNhc2UsIEkgbmV2ZXIgc3BlbnQg
dGhlIHRpbWUgdG8gInByb3ZlIHRoZSBjYXNlIiBhbmQgdGhlbiBnb3QKPj4+Pj4gZGlzdHJhY3Rl
ZCBvbiBhbm90aGVyIGlzc3VlIGFuZCBuZXZlciByZXR1cm5lZCB0byBpdC4gTm90IHN1cmUgaWYg
dGhpcwo+Pj4+PiBpcyByZWxldmFudCBpbiB0aGlzIGRpc2N1c3Npb24sIGJ1dCBJIHRob3VnaHQg
SSB3b3VsZCBtZW50aW9uIGl0Lgo+Pj4+PiBSb2IKPj4+PiBUaGUgTjMxMCB1c2VzIG9uZSBvZiB0
aGVzZSBtb2R1bGVzOgo+Pj4+IAo+Pj4+IGh0dHA6Ly93d3cuamFja3Nvbi1sYWJzLmNvbS9pbmRl
eC5waHAvcHJvZHVjdHMvbHRlX2xpdGUKPj4+PiAKPj4+PiBQcmV0dHkgc3VyZSB0aGF0IFVIRDQu
MC9VSEQzLjE1IHdvdWxkbid0IGFmZmVjdCB0aGUgb3BlcmF0aW9uIG9mIHRoYXQgbW9kdWxlLCBi
dXQsIHlvdSBuZXZlciBrbm93Lgo+Pj4+IAo+Pj4+IAo+Pj4+PiAKPj4+Pj4gT24gRnJpLCBGZWIg
MTksIDIwMjEgYXQgOToxMiBBTSBNYXJjdXMgRCBMZWVjaCB2aWEgVVNSUC11c2Vycwo+Pj4+PiA8
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+Pj4+Pj4gQXJlIHRoZSBhbnRlbm5h
ZSBzaXR1YXRlZCBvdXRkb29ycz8KPj4+Pj4+IAo+Pj4+Pj4gSXQgY2FuIHRha2UgYWxtb3N0IGFu
IGhvdXIgdG8gYWNoaWV2ZSBsb2NrIGZyb20gYSBjb2xkIHN0YXJ0Lgo+Pj4+Pj4gCj4+Pj4+PiBT
ZW50IGZyb20gbXkgaVBob25lCj4+Pj4+PiAKPj4+Pj4+PiBPbiBGZWIgMTksIDIwMjEsIGF0IDQ6
MTQgQU0sIEpvaGFubmVzIERlbWVsIDxkZW1lbEBhbnQudW5pLWJyZW1lbi5kZT4gd3JvdGU6Cj4+
Pj4+Pj4gCj4+Pj4+Pj4g77u/RWFjaCBVU1JQIGhhcyBpdHMgb3duIEdQUyBhbnRlbm5hLiBPbmUg
b2YgdGhvc2UgeW91IGJ1eSBhdCBldHR1cy5jb20gYXMgYSByZWNvbW1lbmRlZCBhY2Nlc3Nvcnku
Cj4+Pj4+Pj4gCj4+Pj4+Pj4+IE9uIDE4LjAyLjIxIDE1OjA1LCBNYXJjdXMgRCBMZWVjaCB3cm90
ZToKPj4+Pj4+Pj4gSG93IGFyZSB5b3UgZGVsaXZlcmluZyB0aGUgR1BTIGFudGVubmEgc2lnbmFs
IHRvIHRoZSBVU1JQcz8gIFZpYSBhIHNwbGl0dGVyPyBEb2VzIHRoYXQgc3BsaXR0ZXIgcHJvdmlk
ZSBEQyBwYXNzLXRocm91Z2g/Cj4+Pj4+Pj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4+Pj4+Pj4+
PiBPbiBGZWIgMTgsIDIwMjEsIGF0IDc6MDcgQU0sIEpvaGFubmVzIERlbWVsIHZpYSBVU1JQLXVz
ZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4+Pj4+Pj4+PiDvu79KdXN0
IGEgcXVpY2sgZm9sbG93LXVwLiBUaGUgQjIxMCBmaW5hbGx5IGdvdCBhIEdQUyBsb2NrLiAoSSBo
YWQgdG8gd2FpdCBmb3IgfjJoKS4gVGhvdWdoLCBhbGwgTjMxMHMgc3RpbGwgZG9uJ3QuCj4+Pj4+
Pj4+PiAKPj4+Pj4+Pj4+PiBPbiAxOC4wMi4yMSAxMDoxMiwgSm9oYW5uZXMgRGVtZWwgdmlhIFVT
UlAtdXNlcnMgd3JvdGU6Cj4+Pj4+Pj4+Pj4gSGkgYWxsLAo+Pj4+Pj4+Pj4+IEkgaGF2ZSBzb21l
IE4zMTBzIGFuZCBhIEIyMTAgdGhhdCBJIHRyeSB0byBzeW5jIHdpdGggYSBHUFNETy4gQWxsIG9m
IHRoZW0gcmVjb2duaXplIHRoZWlyIEdQU0RPcyBidXQgZmFpbCB0byBsb2NrLgo+Pj4+Pj4+Pj4+
IE15IHBob25lIGNhbiBzZWUgfjcgU2F0ZWxsaXRlcy4gV2UgaGF2ZSBhIFJQaSB3aXRoIGEgR1BT
IG1vZHVsZSB0aGF0IGxvY2tzIHRvIEdQUyBpbiB0aGUgc2FtZSBoYWxsLiBXZSBzd2l0Y2hlZCBh
bnRlbm5hcyBidXQgc3RpbGwsIHdlIGNhbid0IHN5bmMgYW55IG9mIHRoZSBVU1JQcyB0byBHUFMu
Cj4+Pj4+Pj4+Pj4gSSB0cmllZDoKPj4+Pj4+Pj4+PiBgYGAKPj4+Pj4+Pj4+PiBsaWIvdWhkL3V0
aWxzL3F1ZXJ5X2dwc2RvX3NlbnNvcnMKPj4+Pj4+Pj4+PiBgYGAKPj4+Pj4+Pj4+PiBhbmQKPj4+
Pj4+Pj4+PiBgYGAKPj4+Pj4+Pj4+PiBsaWIvdWhkL2V4YW1wbGVzL3N5bmNfdG9fZ3BzCj4+Pj4+
Pj4+Pj4gYGBgCj4+Pj4+Pj4+Pj4gYnV0IGV2ZW4gYWZ0ZXIgYSBkYXksIHRoZXkgYWx3YXlzIHJl
dHVybiAiR1BTIGRvZXMgbm90IGhhdmUgbG9jayIgYW5kICJXQVJOSU5HOiAgR1BTIG5vdCBsb2Nr
ZWQgLSB0aW1lIHdpbGwgbm90IGJlIGFjY3VyYXRlIHVudGlsIGxvY2tlZCIuCj4+Pj4+Pj4+Pj4g
YGdwc21vbmAgb24gdGhlIE4zMTBzIHJlcG9ydHMgMCBTYXRlbGxpdGVzLiBCdXQgaXQgaGFzIGEg
bGlzdCBvZiBzYXRlbGxpdGVzLgo+Pj4+Pj4+Pj4+IFNpbmNlIHdlIGhhdmUgc2V2ZXJhbCBkZXZp
Y2VzIGluIHRoYXQgcm9vbSB0aGF0IGFyZSBhYmxlIHRvIGFjcXVpcmUgYSBsb2NrIGJ1dCBub25l
IG9mIG91ciBVU1JQcyB3aXRoIHRoZWlyIEdQU0RPcywgSSB3b25kZXIgd2hhdCBpcyBnb2luZyBv
bi4gRG8gdGhleSBuZWVkIGEgdmVyeSBzdHJvbmcgc2lnbmFsPwo+Pj4+Pj4+Pj4+IENoZWVycwo+
Pj4+Pj4+Pj4+IEpvaGFubmVzCj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+
Pj4+Pj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+Pj4+Pj4+PiBodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPj4+
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+
PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+Pj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KPj4+Pj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQo+Pj4+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
