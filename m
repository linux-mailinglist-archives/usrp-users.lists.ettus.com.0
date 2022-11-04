Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D50BE619C15
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 16:50:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9313C3840EB
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 11:50:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667577001; bh=PU30IogYPJwr6lQ2Eop2LJunU/7rd4XkbR4jITIjtxM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pEEe3iTTmPdQzo1F+ipC9kHSqElTbcAKTKNsrD0XwSWTvOW2+/F2caWwFDZzwIa4h
	 4XWoq6FurBlawCj8YluFzbcpZANWCfbUmzowSaGeZAdFsKU8bnTASYvm8LTuUzTtn6
	 rSgFokX/DPc75FcEQHzaViTkSVgcH2JoTXZJsFGJ1ip1fVW34Tm4N4VVoY0JgwEQyG
	 RvGwHi17b3tMTNh6vxtXzRbADe2qjaWeik/Pf0MPj8p6wVVyrq+SnpxKY5eUJB/CUV
	 hWhZ0rUVpw1yvBWpz2H3PykPzJDsOi1+io9s/7oFHPTZmvJuA9267IlylnpU8IoLTR
	 uQJ2pjBho1DCg==
Received: from smtp2.emailarray.com (smtp.emailarray.com [69.28.212.198])
	by mm2.emwd.com (Postfix) with ESMTPS id 14B27380950
	for <usrp-users@lists.ettus.com>; Fri,  4 Nov 2022 11:48:51 -0400 (EDT)
Received: (qmail 74342 invoked by uid 89); 4 Nov 2022 15:48:50 -0000
Received: from unknown (HELO ?192.168.223.172?) (cGhpbGlwQGJhbGlzdGVyLm9yZ0AxNzIuMTAyLjE1LjE2Ng==) (POLARISLOCAL)  
  by smtp2.emailarray.com with SMTP; 4 Nov 2022 15:48:50 -0000
Message-ID: <888a07c0-ccc5-4a57-885a-9ff43c915520@balister.org>
Date: Fri, 4 Nov 2022 09:48:44 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <CANsNear2pq3y6SP31Z=Y0Qk=aLhS-4qRqBg1g8W6Lk+0nwM_sw@mail.gmail.com>
 <CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmail.com>
 <6110af43-326b-6dcd-e1bb-11ad590f1b8b@gmail.com>
From: Philip Balister <philip@balister.org>
In-Reply-To: <6110af43-326b-6dcd-e1bb-11ad590f1b8b@gmail.com>
Message-ID-Hash: SIV4L3UBZCGORBENY3YFXMJXMIEQJUWI
X-Message-ID-Hash: SIV4L3UBZCGORBENY3YFXMJXMIEQJUWI
X-MailFrom: philip@balister.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 GnuRadio upgrade?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SIV4L3UBZCGORBENY3YFXMJXMIEQJUWI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

UmFuZG9tIGdpdCBsaW5rcyB0aGF0IG1pZ2h0IGhlbHA6DQoNCmh0dHBzOi8vZ2l0aHViLmNvbS9i
YWxpc3Rlci9zZHItYnVpbGQvdHJlZS9kdW5mZWxsLWV0dHVzDQoNClRoaXMgd2lsbCBidWlsZCBh
IGZpbGUgc3lzdGVtIGJhc2VkIG9mIGEgWW9jdG8gUHJvamVjdCBicmFuY2ggdGhhdCBpcyANCnN0
aWxsIHN1cHBvcnRlZC4gSXQgZG9lcyBhIGEgZ2NjIHZlcnNpb24gdGhhdCBjYXVzZXMgZmZ0dyBm
YWlsdXJlcyANCnRob3VnaC4gVGhpcyBoYXNuJ3QgYmVlbiB1cGRhdGVkIGluIGEgY291cGxlIG9m
IHllYXJzLCBzbyBpdCBkb2VzIG5lZWQgDQp1cGRhdGluZyB0byBjb2xsZWN0IGJ1ZyBhbmQgc2Vj
dXJpdHkgZml4ZXMuDQoNCmh0dHBzOi8vZ2l0aHViLmNvbS9iYWxpc3Rlci9tZXRhLXNkci90cmVl
L2R1bmZlbGwtMy4xMA0KDQpDb250YWlucyB3b3JrIHRvIGdldCBnbnVyYWRpby0zLjEwIGJ1aWxk
aW5nIGFnYWluc3QgdGhlIFlQIER1bmZlbGwgDQpicmFuY2guIFN0aWxsIG5lZWRzIHNvbWUgY2xl
YW51cC4gQWxzbyBJIG5lZWQgdG8gYnJlYWsgb3V0IGEgbGF5ZXIgdG8gDQp1cGRhdGUgdGhlIGdj
YyB2ZXJzaW9uIHNvIGZmdHcgd29ya3MuIFRoaXMgYWN0dWFsbHkgaGFwcGVuLCBidXQgaXMgYSAN
CnNwYXJlIHRpbWUgdGFzayA6KQ0KDQpBbGwgb2YgdGhlIGFib3ZlIGxpa2VseSBuZWVkIHVoZCBy
ZWNpcGUgdXBkYXRlcy4NCg0KU28sIGJhc2ljYWxseSB0aGUgcGllY2VzIGFyZSBhdmFpbGFibGUg
dG8gcHV0IGdudXJhZGlvLTMuMTAgb24gdGhlIEUzWFggDQpzZXJpZXMgYXJlIGtub3duLCB0aGV5
IGp1c3QgbmVlZCBzb21lb25lIHRvIGRvIHRoZSB3b3JrIHRvIG1ha2UgaXQgaGFwcGVuLg0KDQpQ
aGlsaXANCg0KT24gMTEvMi8yMiAxOTowNSwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPiBPbiAw
Mi8xMS8yMDIyIDE2OjM5LCBSaWNoIEdvcHN0ZWluIHdyb3RlOg0KPj4gSSB0cmllZCBmb2xsb3dp
bmcgdGhlIGluc3RydWN0aW9ucyBpbiBoZXJlOiANCj4+IGh0dHBzOi8va2IuZXR0dXMuY29tL1Nv
ZnR3YXJlX0RldmVsb3BtZW50X29uX3RoZV9FM3h4X1VTUlBfLV9CdWlsZGluZ19SRk5vQ19VSERf
L19HTlVfUmFkaW9fL19nci1ldHR1c19mcm9tX1NvdXJjZQ0KPj4gdG8gY3Jvc3MgY29tcGlsZSBH
bnVSYWRpbyBvbiBteSBVYnVudHUgYm94LCBidXQgdGhlIGNtYWtlIGZhaWxlZCANCj4+IGJlY2F1
c2XCoHRoZSBPRSBlbnZpcm9ubWVudCB3YXMgZnJvbSAyMDE2IGFuZCBoYWQgb2xkIGxpYnJhcnkg
dmVyc2lvbnMuDQo+Pg0KPj4gSSBjb3VsZCByZWFsbHkgdXNlIHNvbWUgc3VnZ2VzdGlvbnMgb24g
aG93IHRvIGdldCBhIG1vcmUgbW9kZXJuIA0KPj4gR251UmFkaW8gKDMuOSspIG9uIHRoZSBFMzEw
Lg0KPj4NCj4+IFRoYW5rcy4NCj4+IFJpY2gNCj4gSGVyZSdzIGEgZGlyZWN0IGxpbmsgdG8gdGhl
IGltYWdlczoNCj4gDQo+IGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL2JpbmFyaWVzL2NhY2hlL2Uz
eHgvbWV0YS1ldHR1cy12NC4zLjAuMC8NCj4gDQo+IA0KPiBUaGF0IGltYWdlIGluY2x1ZGVzIEdS
IDMuOC4zDQo+IA0KPiANCj4+DQo+PiBPbiBUdWUsIE9jdCAyNSwgMjAyMiBhdCAyOjMyIFBNIFJp
Y2ggR29wc3RlaW4gPHJpY2hAb3Vyb3duZG9tYWluLmNvbT4gDQo+PiB3cm90ZToNCj4+DQo+PiAg
ICAgSSdkIGxpa2UgdG8gcnVuIEdSIDMuOSBvciBsYXRlciBvbiB0aGUgRTMxMC7CoCBJcyB0aGVy
ZSBhDQo+PiAgICAgZG9jdW1lbnRlZCBwcm9jZXNzIHRvIHVwZ3JhZGUgR1Igb24gdGhlIEUzMTA/
DQo+Pg0KPj4gICAgIFRoYW5rcy4NCj4+ICAgICBSaWNoDQo+Pg0KPj4NCj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLXVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4gDQo+IA0K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
