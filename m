Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6CC5B070D
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 16:35:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5FC6F3858CE
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 10:35:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662561318; bh=mM4NPWFsQs2AoehTZJgGWryDpWUO2lF7b3bN76ipeiw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=x6Isy0AeR6JoR5oF59vsE41nQzQmUOV1lUUMP4VUwZ+w7uvwGhO6oys1E/4jwaPeZ
	 DD4HPLnTlJ8TLFeZQ+s/gEo3kS95xRyfK9FZK34JCFl+QJn0N4C1ilUKkPgEQKs3R0
	 l+1Bsj9Lq73vWpDHhksw5qOFJQ+RxTfxUVm29IBjwHVKalwwMRJyXiS899yIDLRmnZ
	 ++rYezbrxM/+4zZYJ3JnWNQ7qnPaBqiSJW5Flp1HDbwZvconq4K1uIYHKY9VTzocv8
	 ymlIJ8FASqk7fI/5oSLehcxKTEh3912+x8fEYIPeGScshMFkxqtAUX3Ze+ZBLyYeWz
	 3na9zIWaw0XrQ==
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.158])
	by mm2.emwd.com (Postfix) with ESMTPS id 0DDBD3840EC
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 09:30:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="YrjCB3OO";
	dkim-atps=neutral
Received: (wp-smtpd smtp.tlen.pl 31630 invoked from network); 7 Sep 2022 15:30:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1662557435; bh=VKpXiO/Ip7kCi+GAz/pF+3Yv/NWPQpLsYOhL7Q/Wlss=;
          h=Subject:To:From;
          b=YrjCB3OOmC9XFf7+N+Ner5YD6GGqzJtQUh41DsXh2DMBIFqiECmz2W+Hm/Av+hWrt
           z0JJ2fYutqcpoRNH24cW1LsAaIhVIi556W4m4u0P57KRQQjLa2+WOqVBhAnAf/A9mv
           PGelg8RIToa9z8DgrWHfjzwdmV7BV0mqR6MT/HeY=
Received: from user-5-173-156-204.play-internet.pl (HELO [192.168.2.104]) (perper@o2.pl@[5.173.156.204])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <usrp-users@lists.ettus.com>; 7 Sep 2022 15:30:35 +0200
Message-ID: <741c2fbc-dd07-c36d-54a7-f10e637ebe96@o2.pl>
Date: Wed, 7 Sep 2022 15:30:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN2P110MB17472B06A089D9138D6E8575B77A9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
From: Piotr Krysik <perper@o2.pl>
In-Reply-To: <BN2P110MB17472B06A089D9138D6E8575B77A9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
X-WP-MailID: 6d2b36b5f795f5d698d9af89d3bb96ea
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [YSNR]                               
Message-ID-Hash: JZATPX24QDH2ALV2MJQN2J3WU7JYBNML
X-Message-ID-Hash: JZATPX24QDH2ALV2MJQN2J3WU7JYBNML
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320: Periodic phase jumps w/ any external clock?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JZATPX24QDH2ALV2MJQN2J3WU7JYBNML/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgRGF2aWQsDQoNCkkndmUgc2VlbiBzb21ldGhpbmcgc2ltaWxhciBvbiBVU1JQIEIyMTAgd2hl
biBJIHRyaWVkIHRvIHVzZSBleHRlcm5hbCANCjEwTUh6IHJlZmVyZW5jZSBjbG9jayBhbmQgdGhl
cmUgd2FzIEdQU0RPIGluc2lkZSBvZiB0aGUgZGV2aWNlLiBUaGVyZSANCndhcyBsb25nZXIgdGlt
ZSBiZXR3ZWVuIHBoYXNlIGp1bXBzOg0KaHR0cHM6Ly9saXN0cy5ldHR1cy5jb20vZW1wYXRoeS9h
dHRhY2htZW50LzI3Nzk0OQ0KDQpMb29rIGF0IHRoZSAiUGhhc2UganVtcHMgaW4gVVNSUCBCMjEw
IHdpdGggR1BTRE8iIHRvcGljIGZyb20gMjAxNyBmb3IgDQptb3JlOiANCmh0dHBzOi8vbGlzdHMu
ZXR0dXMuY29tL2VtcGF0aHkvdGhyZWFkLzVONlJVVEtTRlBDTDNDNDdXUU1BQVpLVEQ2Rk1TV0FU
P2hhc2g9NlJNUE9QTFdQWlhTQktYTVVWN1lBUDVETEdENldHR00jNlJNUE9QTFdQWlhTQktYTVVW
N1lBUDVETEdENldHR00NCg0KUmVtb3ZpbmcgR1BTRE8gbW9kdWxlIHNvbHZlZCB0aGUgaXNzdWUg
Zm9yIG1lLiBEaXNhYmxpbmcgR1BTRE8gb24gRTMyMCANCm1pZ2h0IGJlIG11Y2ggaGFyZGVyIGFz
IGl0IGlzIGJ1aWx0LWluIHRvIHRoZSBkZXZpY2UuDQoNCkJlc3QgUmVnYXJkcywNClBpb3RyIEty
eXNpaw0KDQpXIGRuaXUgMDIuMDkuMjAyMiBvwqAxNzoyMSwgRGF2aWQgUmFlbWFuIHBpc3plOg0K
Pg0KPiBIaSBhbGwsDQo+DQo+IEknbSB3b3JraW5nIG9uIGEgcHJvamVjdCB0aGF0IGludm9sdmVz
IG1vZGVsaW5nIGFuIGluY29taW5nIHNpZ25hbCdzIA0KPiBwaGFzZSBhcyBhIHN0b2NoYXN0aWMg
cHJvY2VzcywgYW5kIEknbSBzZWVpbmcgYSB3ZWlyZCBwaGFzZSBhcnRpZmFjdCANCj4gb24gdGhl
IEUzMjAuIEl0IGxvb2tzIGxpa2UgYSBzbG93IHBlcmlvZGljIHBoYXNlIHBlcnR1cmJhdGlvbiDi
gJMgbXkgDQo+IGJlc3QgZ3Vlc3MgaXMgc29tZXRoaW5nIHB1bGxpbmcgYSBQTEwsIGJlY2F1c2Ug
aXQgYWx3YXlzIHJldHVybnMgYmFjayANCj4gdG8gYSBzZXR0bGVkIHN0YXRlLiBJdCBvY2N1cnMg
d2l0aCBhbnkgZXh0ZXJuYWwgY2xvY2ssIGJ1dCBub3Qgd2hlbiANCj4gdXNpbmcgdGhlIGludGVy
bmFsIGNsb2NrLiBJIGVpdGhlciBuZWVkIHRvIGZpbmQgYSB3YXkgdG8gY29ycmVjdCB0aGUgDQo+
IGJlaGF2aW9yLCBvciB0byB1bmRlcnN0YW5kIHRoZSByb290IGNhdXNlIHNvIEkgY2FuIGNvbmZp
ZGVudGx5IA0KPiBjb25zaWRlciBhIGRpZmZlcmVudCBVU1JQIHRoYXQgd29u4oCZdCBleGhpYml0
IHRoaXMgYmVoYXZpb3IuDQo+DQo+IEkgY29uZmlybWVkIHRoZSBzYW1lIGJlaGF2aW9yIG9uIDMg
ZGlmZmVyZW50IEUzMjAgcmFkaW9zLCBmaXJzdCB1c2luZyANCj4gYW4gZXh0ZXJuYWwgT0NYTyAo
M1ZwcCBiaXBvbGFyIHNpbmV3YXZlKSBhbmQgdGhlbiB1c2luZyBhIGJlbmNodG9wIA0KPiBmdW5j
dGlvbiBnZW5lcmF0b3IgdG8gY3JlYXRlIDEwTUh6IHNxdWFyZSBvciBzaW5ld2F2ZSBjbG9ja3Mu
IEluIGFsbCANCj4gY2FzZXMgd2l0aCBleHRlcm5hbCBjbG9jaywgdGhlIHBoYXNlIGFydGlmYWN0
IGNhbiBiZSBvYnNlcnZlZC4NCj4NCj4gSSBhbSB1c2luZyBvbmx5IFVIRCB1dGlsaXRpZXMsIHR3
byByYWRpb3MsIGFuZCBzaW1wbGUgb2ZmbGluZSANCj4gcHJvY2Vzc2luZyBvZiB0aGUgc2FtcGxl
czoNCj4NCj4gKDEpIENhYmxlIHJhZGlvIEEgKHRyYW5zbWl0dGVyLCBhbiBFMzIwKSB0byByYWRp
byBCIChyZWNlaXZlciwgYW55IA0KPiBVU1JQKSB3aXRoIDMwZEIgaW5saW5lIGF0dGVudWF0aW9u
LiBEZXRlcm1pbmUgYXBwcm9wcmlhdGUgZ2FpbnMgb24gDQo+IGJvdGggcmFkaW9zIHRvIGVuc3Vy
ZSB0aGUgcmVjZWl2ZXIgd2lsbCByZWNlaXZlIGEgcm9idXN0LCB1bnNhdHVyYXRlZCANCj4gc2ln
bmFsIGxldmVsLg0KPg0KPiAoMikgUmFkaW8gQSB1c2VzIFVIROKAmXMgdHhfd2F2ZWZvcm1zIHV0
aWxpdHkgdG8gc2VuZCBhIDE1MGtIeiBzaW5lIHdhdmUgDQo+IHdpdGggNDAwTUh6IGNhcnJpZXIg
ZnJlcXVlbmN5IGFuZCA1MDBrSHogc2FtcGxpbmcgcmF0ZSwgd2hlcmUgDQo+IHJlZmVyZW5jZSBj
bG9jayBjYW4gYmUgaW50ZXJuYWwgKG5vIHByb2JsZW0pIG9yIGV4dGVybmFsIChwcm9ibGVtKS4N
Cj4NCj4gKDMpIFJhZGlvIEIgdXNlcyBVSETigJlzIHJ4X3NhbXBsZXNfdG9fZmlsZSB1dGlsaXR5
IHRvIGNhcHR1cmUgMTAgDQo+IHNlY29uZHMgb2YgZGF0YSBhdCB0aGUgc2FtZSBmcmVxdWVuY3kg
YW5kIHNhbXBsaW5nIHJhdGUsIGFsd2F5cyB1c2luZyANCj4gaW50ZXJuYWwgY2xvY2suDQo+DQo+
IFRoaXMgaXMgcmVwZWF0ZWQgZm9yIHZhcmlvdXMgY2xvY2sgb3B0aW9ucyBvbiB0aGUgdHJhbnNt
aXR0ZXIsIA0KPiBldmVyeXRoaW5nIGVsc2UgaGVsZCBjb25zdGFudC4gSW4gYSB0aGVvcmV0aWNh
bGx5IGlkZWFsIHN5c3RlbSwgdGhlIA0KPiB1bndyYXBwZWQgcGhhc2Ugb2YgdGhlIHJlY2VpdmVk
IGJhc2ViYW5kIHNpbmV3YXZlIHNob3VsZCBiZSBhIGxpbmUsIA0KPiBidXQgaW4gcmVhbGl0eSBp
dCdsbCB3YW5kZXIgZHVlIHRvIGltcGVyZmVjdCBjbG9ja3MsIG5vaXNlLCBhbmQgb3RoZXIgDQo+
IHN5c3RlbXMgZWZmZWN0cy4gSSB3YW50IHRvIHNlZSB0aGUgd2FuZGVyLCBzbyBteSBwcm9jZXNz
aW5nIGlzOg0KPg0KPiAoMSkgQ29tcHV0ZSB0aGUgdW53cmFwcGVkIHBoYXNlIG92ZXIgdGhlIDEw
IHNlY29uZHMgb2YgdGhlIGNhcHR1cmVkIA0KPiBJL1Egc2FtcGxlcy4NCj4NCj4gKDIpIENvbXB1
dGUgdGhlIGJlc3QtZml0IGxpbmVhciB0cmVuZCBsaW5lIG9mIHRoZSB1bndyYXBwZWQgcGhhc2Us
IGFuZCANCj4gc3VidHJhY3QgaXQNCj4NCj4gKDMpIFBsb3QgdGhlIHVud3JhcHBlZCBwaGFzZSBy
ZXNpZHVhbHMNCj4NCj4gSGVyZSBhcmUgc29tZSBpbWFnZXMgc2hvd2luZyBpbnRlcm5hbCBjbG9j
aywgZXh0ZXJuYWwgT0NYTywgYW5kIA0KPiBleHRlcm5hbCBmdW5jdGlvbiBnZW5lcmF0b3Igc3F1
YXJlIHdhdmU6IDwgDQo+IGh0dHBzOi8vaW1hZ2VzaGFjay5jb20vYS91MVlXNy8xID4uIEZvciBh
bGwgdGhyZWUgY2FzZXMgSeKAmW0gc2hvd2luZyANCj4gdGhlIHVud3JhcHBlZCBwaGFzZSByZXNp
ZHVhbHMgb3ZlciB0aGUgZnVsbCAxMCBzZWNvbmRzLCBhbmQgdGhlbiBwbG90IA0KPiB6b29tZWQg
aW50byB0d28gc2Vjb25kcyB0byBzaG93IG1vcmUgZGV0YWlsLiBZb3UgY2FuIGNsZWFybHkgc2Vl
IHRoZSANCj4gcGVyaW9kaWMgcGhhc2UgaXNzdWVzIG9uIGJvdGggdGhlIGV4dGVybmFsIGNsb2Nr
IGNhc2VzLCBidXQgbm90IHRoZSANCj4gaW50ZXJuYWwgY2xvY2sgY2FzZS4NCj4NCj4gSXMgdGhp
cyBhIGtub3duIGlzc3VlPyBBbnkgc3BlY3VsYXRpb24gb24gd2hhdCBtaWdodCBjYXVzZSB0aGlz
IGVmZmVjdCANCj4gd2hlbiB1c2luZyBhbiBleHRlcm5hbCBjbG9jaz8gSSBjYW4ndCBmaWd1cmUg
b3V0IHdoYXQgdGhlIGludGVybmFsIA0KPiBUWENPIGRvZXMgdGhhdCBpcyBkaXN0aW5jdCBoZXJl
LS0gdGhleSBib3RoIGZlZWQgaW50byB0aGUgc2FtZSBBREY0MDAyIA0KPiBQTEwuIFRoZSBpbnRl
cm5hbCBjbG9jayBydW5zIGF0IDIwTUh6LCBidXQgSSB3YXMgYWJsZSB0byB0cnkgYW4gDQo+IGV4
dGVybmFsIGNsb2NrIGF0IHRoYXQgcmF0ZSAocmVxdWlyZWQgYSAyLWxpbmUgcGF0Y2ggdG8gVUhE
KSBhbmQgaXQgDQo+IGRpZG4ndCBtYWtlIGEgZGlmZmVyZW5jZS4gVGhlIG9ubHkgb3RoZXIgVVNS
UCBJIGhhdmUgb24gaGFuZCBpcyBhbiANCj4gTjMyMCwgYW5kIHRoaXMgaXNzdWUgZG9lcyBub3Qg
c2VlbSB0byBoYXBwZW4gb24gdGhhdCByYWRpbyBtb2RlbCB3aGVuIA0KPiBJIHVzZSB0aGUgc2Ft
ZSBPQ1hPLg0KPg0KPiBUaGFuayB5b3UsDQo+DQo+IC0tIA0KPg0KPiBEYXZpZCBSYWVtYW4NCj4N
Cj4gU3lub3B0aWMgRW5naW5lZXJpbmcNCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
