Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C86949437
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 17:08:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68048383C77
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 11:08:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722956927; bh=ivPT8FDfkUg8jRVdIMJ2cN4CpCKR7TUVb6sqhkWO3Bs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BV5Hmn0gbX00zEAXSSNOvIJ0Usl/f5BtgmvfmCAfHiM6FbOGAu26ASOkNkP2QTuBH
	 c5yGJhcNcms9zeAqPq1gKTwFenDUPfYmyHy/3vqdxQkInGRLlsPGorEteqCI0gjby3
	 nEQyribc9fqsAHCFWZetOSLuSwBchOKX/n+iB6FqXgAxbhuwn628quz8j3UVM1JP3b
	 mdVpmo5/i1ORorc1MYFTDMVmFpKRhOj+VW6+DWR4dDe43cR5JCQXnZFsAFB0+8OuX0
	 2VyqPk//yNdjo6Quphy8qU5f6kggWR+POIuaTCoAGSU6bWGFnTSzZCcpmXgsU3GhTZ
	 7PIp5tLPlzIxg==
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 58069383A70
	for <usrp-users@lists.ettus.com>; Tue,  6 Aug 2024 11:08:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="H4H67oHU";
	dkim-atps=neutral
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-65f7bd30546so7534617b3.1
        for <usrp-users@lists.ettus.com>; Tue, 06 Aug 2024 08:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722956919; x=1723561719; darn=lists.ettus.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r4hu08uZjY8do0xABtofTPSt/9eN1DH6+pmv7H+IR28=;
        b=H4H67oHUwIPhtEe2ouZJ7bRuFpUNFcPyVyGldCWDzry80g0iURUymbJPWNT6s5dIpu
         vgZcohF4JQAXRTossLJSEjDRcSDNjuUPjhOrLDu8xAC60CN0c8O9Loa+gso5TmWZrTSh
         o39yXDKs92M6imUs7Tm2rH4eOA2IzXJE44Wem76C/pbxcuAt66i2YpdZAo+F/ewXpRDK
         LGFDfBDgu/XrI38mRQTzmtzHOySJZ2kB8yWjbEUfVyH1dF0nPeQa+KiE2cs0aLt0gch6
         t5ZTDuYw5kbIMBr6xbJQsWz7Mj15+tBVSIRGyo3P9UHuwFnM8fVs9VICv0iHb+PzaKLC
         hjEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722956919; x=1723561719;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r4hu08uZjY8do0xABtofTPSt/9eN1DH6+pmv7H+IR28=;
        b=k8YBZS4D4Syagq/8iHiV9CYU6enKTyl8w8eNeilwCKaoMuklv6dQ1Ii/B6C0T2RPyO
         Uvi0Q75wOcD8G+iUSHQIjROMLzvVLry0XKeEkdSVB7w7QaWcVKpLd2m5ZOrTskJiUOGO
         fEw+Rbvcnj/oncCf48dL1wN9JJE08tJT9qk0l1Bs22MALgtXBygST70lk/16vqc1Tv2P
         hs/GN/CLMEHXVqT+utK6tgq8zNxtwdvMP2J51a3ZafX491Y0bExxdYyIdWgC/1Ef0Zgc
         zcIhX9GZUsOhufs1HoGuodxq/I4mxdc0TfK16Lbh7HXV0yBMy9aB0DMcU7UnCvA1Zw3I
         J7IA==
X-Gm-Message-State: AOJu0YxNQQCTsAanf0zx5zCgsoDc7FWKJmwPrpywEL/TsXEFsdy+clCp
	PO7aDySjqMPFEe1QnEHhx/BRWVCqHzxRvAzaox9ZPwT7+rZLm/BPocLvhPTBAaUxnbGx5RZTY4+
	OhO/J98o7zNSiqmJI6sGDH1AM39g9rBTG
X-Google-Smtp-Source: AGHT+IEjSnl7SayWS55YoDv9h7NYi4Zw1d/jqc6Q2xcY8pfh3Z9OPSHyHi061+n4i6ZprIqeI7wtC0+ARv6o7pOfmwU=
X-Received: by 2002:a05:690c:d8b:b0:62f:206e:c056 with SMTP id
 00721157ae682-696c567d7ffmr15856517b3.5.1722956919441; Tue, 06 Aug 2024
 08:08:39 -0700 (PDT)
MIME-Version: 1.0
References: <7ff2a1b8f264d3f9d02e3d6fa60df7dc@mail.gmail.com>
 <CAHVeOW8UJErf8RMuajePLpiyVAnp5qEtyxDe1T9Fo+i27cHRJg@mail.gmail.com> <5dcedd39-5b0d-4ba7-8627-817299665d80@gmail.com>
In-Reply-To: <5dcedd39-5b0d-4ba7-8627-817299665d80@gmail.com>
From: Chris Gorman <chrisjohgorman@gmail.com>
Date: Tue, 6 Aug 2024 11:08:28 -0400
Message-ID: <CAHVeOW8O1F75N9EpuzjOw2J-FncKoAUatp=5sq_Qddg7iKUKKw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: AMD6SNFDCFHVDK343BFDXNS5IUXUGURY
X-Message-ID-Hash: AMD6SNFDCFHVDK343BFDXNS5IUXUGURY
X-MailFrom: chrisjohgorman@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Invalid permissions to write images destination on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AMD6SNFDCFHVDK343BFDXNS5IUXUGURY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IE1hcmN1cywNCg0KSSBzdGFuZCBjb3JyZWN0ZWQuDQoNClRoZSBjb21tYW5kIHNo
b3VsZCBiZQ0KDQpzdWRvIC91c3IvbG9jYWwvbGliL3VoZC91dGlscy91aGRfaW1hZ2VzX2Rvd25s
b2FkZXIucHkNCg0KVGhpcyBzaG91bGQgcHV0IHlvdXIgZmlsZXMgaW4gdGhlIGNvcnJlY3QgbG9j
YXRpb24gZm9yIHRoZSBvdGhlcg0KcHJvZ3JhbXMgdG8gZmluZC4NCg0KSG9wZSB0aGlzIGhlbHBz
Lg0KDQpDaHJpcw0KDQpPbiBUdWUsIEF1ZyA2LCAyMDI0IGF0IDEwOjMx4oCvQU0gTWFyY3VzIEQu
IExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDA2LzA4LzIw
MjQgMTA6MTMsIENocmlzIEdvcm1hbiB3cm90ZToNCj4gPiBIaSBTY290dCwNCj4gPg0KPiA+IEkg
YmVsaWV2ZSB0aGUgcHJvYmxlbSB5b3UncmUgZXhwZXJpZW5jaW5nIGlzIGxpbnV4IG5vdCBhbGxv
d2luZyB5b3UgdG8NCj4gPiB3cml0ZSB0byB0aGUgL3Vzci9sb2NhbCBkaXJlY3Rvcnkgc3RydWN0
dXJlIGFzIGl0IGlzIG5vdCBvd25lZCBieSB5b3VyDQo+ID4gdXNlci4gIEkgdGhpbmsgeW91IGhh
dmUgYSBjb3VwbGUgb2YgY2hvaWNlcyB0byBkb3dubG9hZCB0aGUgaW1hZ2VzLg0KPiA+IFRoZSBm
aXJzdCBpcyB0byBpbnN0YWxsIHRoZW0gaW50byB0aGUgZGVmYXVsdCBkaXJlY3Rvcnkgd2l0aCBz
dWRvLA0KPiA+IHdoaWNoIEkgd291bGRuJ3QgcmVjb21tZW5kLCB0aGUgc2Vjb25kIGlzIGluc3Rh
bGxpbmcgdGhlIHBhY2thZ2VzIGludG8NCj4gPiBhIGRpZmZlcmVudCBkaXJlY3Rvcnkgd2l0aCB0
aGUgLWkgc3dpdGNoIHRvIHVoZF9pbWFnZXNfZG93bmxvYWRlci5weS4NCj4gPiBQZXJoYXBzIHJ1
biB0aGUgZm9sbG93aW5nIGNvbW1hbmRzDQo+ID4NCj4gPiBjZCB+Lw0KPiA+IG1rZGlyIHVoZF9p
bWFnZXMNCj4gPiAvdXNyL2xvY2FsL2xpYi91aGQvdXRpbHMvdWhkX2ltYWdlc19kb3dubG9hZGVy
LnB5IC1pIH4vdWhkX2ltYWdlcw0KPiA+DQo+ID4gVGhhdCBzaG91bGQgZ2V0IHlvdSB0aGUgZG93
bmxvYWQgaW1hZ2VzIEkgdGhpbmsuDQo+ID4NCj4gPiBIb3BlIHRoaXMgaGVscHMsDQo+ID4NCj4g
PiBDaHJpcw0KPiBUaGlzIHdpbGwgY29tZSB3aXRoIHRoZSBhZGRlZCAiYm9udXMiIHRoYXQgdG9v
bHMgdGhhdCBleHBlY3QgdGhlIGltYWdlcw0KPiB0byBiZSBpbiAidGhlIHN0YW5kYXJkIGxvY2F0
aW9uIiB3aWxsDQo+ICAgIGJlIHVuYWJsZSB0byBmaW5kIHRoZW0gdW5sZXNzIHlvdSBzZXQgdGhl
IGFwcHJvcHJpYXRlIGVudmlyb25tZW50DQo+IHZhcmlhYmxlcyB0byB0ZWxsIHRoZSB0b29scyB3
aGVyZSB0byBmaW5kIHRoZW0uDQo+DQo+IFRoZXJlJ3Mgbm90aGluZyB3cm9uZyB3aXRoIGluc3Rh
bGxpbmcNCj4gZmlsZXMtdGhhdC1hcmUtY29uY2VwdHVhbGx5LXN5c3RlbS1maWxlcyBpbiB0aGUg
c3RhbmRhcmQgInN5c3RlbSBmaWxlIg0KPiBwbGFjZXMsDQo+ICAgIHVzaW5nIHN1ZG8uDQo+DQo+
IFRoaXMgd2hvbGUgdGhpbmcgaXMgYmFzaWNhbGx5ICJsaXZpbmcgYW5kIHdvcmtpbmcgYXMgYSBk
ZXYgb24NCj4gPFVuaXgtZmFtaWx5LU9TPiIuICBJZiB0aGF0IGlzIHRvIGJlIHRoZSBwbGF0Zm9y
bSBvZiBjaG9pY2UNCj4gICAgaW4gdGhpcyBjYXNlLCB0aGVuIGl0IHdvdWxkIGJlIHByb2R1Y3Rp
dmUgdG8gbGVhcm4gaG93IHRvIGxpdmUgYW5kDQo+IHdvcmsgb24gdGhlIE9TLCBpbmNsdWRpbmcg
bGVhcm5pbmcgd2hhdCBmaWxlDQo+ICAgIHBlcm1pc3Npb25zIGFyZSwgYW5kIGhvdyB0byBsaXZl
IHdpdGggdGhlbSBhbmQgdXNlIHRoZW0gYXBwcm9wcmlhdGVseS4NCj4NCj4gSnVzdCBteSAkMC4w
MiwgaGF2aW5nIGJlZW4gYSAiVW5peC1mYW1pbHktT1MiIGd1eSBzaW5jZSBJIHdhcyBhDQo+IHRl
ZW5hZ2VyLS0taW4gMTk3OS4NCj4NCj4NCj4gPg0KPiA+IE9uIFR1ZSwgQXVnIDYsIDIwMjQgYXQg
NDoxNuKAr0FNIERyLiBTY290dCBCZXN0IHZpYSBVU1JQLXVzZXJzDQo+ID4gPHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tPiB3cm90ZToNCj4gPj4gRGVhciBVU1JQLVVzZXJzIEdyb3VwLA0KPiA+
Pg0KPiA+Pg0KPiA+Pg0KPiA+PiBJIGluc3RhbGxlZCBVSEQgNC43IG9uIGFuIFVidW50dSBNaW5p
UEMgZm9sbG93aW5nIHRoZSBvbmxpbmUgaW5zdHJ1Y3Rpb25zLiAgSXQgc2VlbXMgdG8gYmUgd29y
a2luZyBPSywgc28gSSB0cmllZCB1cGRhdGluZyB0aGUgZmlybXdhcmUgZm9yIGFuIE4yMDAgdGhh
dCBJIHBpY2tlZCB1cCBhcyBhIHRlc3QgdmVoaWNsZSBmb3IgbXkgc2V0IG9mIG5ldyBOMzIwcy4g
IEkgcmFuIGludG8gYSBidWcgdGhhdCBJIGhhdmUgbm90IGZvdW5kIGFuIGFuc3dlciB0bywgYXMg
c2VlbiBpbiB0aGUgZm9sbG93aW5nIFRlcm1pbmFsIHNjcmlwdCB3aXRoIFVIRCBjb21tYW5kcyBz
aG93biBpbiBCT0xEIFRZUEU6DQo+ID4+DQo+ID4+DQo+ID4+DQo+ID4+IGRyc2NvdHRAVWJ1bnR1
On4vd29ya2FyZWEvdWhkL2hvc3QvdXRpbHMkIHVoZF9maW5kX2RldmljZXMNCj4gPj4NCj4gPj4g
W0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gMTEuNC4wOyBCb29zdF8xMDc0MDA7
IFVIRF80LjcuMC4wLTAtZ2E1ZWQxODcyDQo+ID4+DQo+ID4+IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4+DQo+ID4+IC0tIFVIRCBEZXZpY2Ug
MA0KPiA+Pg0KPiA+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQ0KPiA+Pg0KPiA+PiBEZXZpY2UgQWRkcmVzczoNCj4gPj4NCj4gPj4gICAgICBzZXJp
YWw6IEUyUjE2VEVVTg0KPiA+Pg0KPiA+PiAgICAgIGFkZHI6IDE5Mi4xNjguMTAuMg0KPiA+Pg0K
PiA+PiAgICAgIG5hbWU6DQo+ID4+DQo+ID4+ICAgICAgdHlwZTogdXNycDINCj4gPj4NCj4gPj4N
Cj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4gZHJzY290dEBVYnVudHU6fi93b3JrYXJlYS91aGQvaG9z
dC91dGlscyQgdWhkX3VzcnBfcHJvYmUNCj4gPj4NCj4gPj4gW0lORk9dIFtVSERdIGxpbnV4OyBH
TlUgQysrIHZlcnNpb24gMTEuNC4wOyBCb29zdF8xMDc0MDA7IFVIRF80LjcuMC4wLTAtZ2E1ZWQx
ODcyDQo+ID4+DQo+ID4+IFtJTkZPXSBbVVNSUDJdIE9wZW5pbmcgYSBVU1JQMi9OLVNlcmllcyBk
ZXZpY2UuLi4NCj4gPj4NCj4gPj4gRXJyb3I6IFJ1bnRpbWVFcnJvcjoNCj4gPj4NCj4gPj4gUGxl
YXNlIHVwZGF0ZSB0aGUgZmlybXdhcmUgYW5kIEZQR0EgaW1hZ2VzIGZvciB5b3VyIGRldmljZS4N
Cj4gPj4NCj4gPj4gU2VlIHRoZSBhcHBsaWNhdGlvbiBub3RlcyBmb3IgVVNSUDIvTi1TZXJpZXMg
Zm9yIGluc3RydWN0aW9ucy4NCj4gPj4NCj4gPj4gRXhwZWN0ZWQgRlBHQSBjb21wYXRpYmlsaXR5
IG51bWJlciAxMSwgYnV0IGdvdCA5Og0KPiA+Pg0KPiA+PiBUaGUgRlBHQSBidWlsZCBpcyBub3Qg
Y29tcGF0aWJsZSB3aXRoIHRoZSBob3N0IGNvZGUgYnVpbGQuDQo+ID4+DQo+ID4+IFBsZWFzZSBy
dW46DQo+ID4+DQo+ID4+DQo+ID4+DQo+ID4+ICIvdXNyL2xvY2FsL2xpYi91aGQvdXRpbHMvdWhk
X2ltYWdlc19kb3dubG9hZGVyLnB5Ig0KPiA+Pg0KPiA+PiAiL3Vzci9sb2NhbC9iaW4vdWhkX2lt
YWdlX2xvYWRlciIgXA0KPiA+Pg0KPiA+PiAgICAgIC0tYXJncz0idHlwZT11c3JwMixhZGRyPTE5
Mi4xNjguMTAuMiINCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4gZHJzY290dEBVYnVudHU6fi93b3Jr
YXJlYS91aGQvaG9zdC91dGlscyQgL3Vzci9sb2NhbC9saWIvdWhkL3V0aWxzL3VoZF9pbWFnZXNf
ZG93bmxvYWRlci5weQ0KPiA+Pg0KPiA+PiBbSU5GT10gVXNpbmcgYmFzZSBVUkw6IGh0dHBzOi8v
ZmlsZXMuZXR0dXMuY29tL2JpbmFyaWVzL2NhY2hlLw0KPiA+Pg0KPiA+PiBbSU5GT10gSW1hZ2Vz
IGRlc3RpbmF0aW9uOiAvdXNyL2xvY2FsL3NoYXJlL3VoZC9pbWFnZXMNCj4gPj4NCj4gPj4gW0VS
Uk9SXSBJbnZhbGlkIHBlcm1pc3Npb25zIHRvIHdyaXRlIGltYWdlcyBkZXN0aW5hdGlvbg0KPiA+
Pg0KPiA+PiBkcnNjb3R0QFVidW50dTp+L3dvcmthcmVhL3VoZC9ob3N0L3V0aWxzJA0KPiA+Pg0K
PiA+Pg0KPiA+Pg0KPiA+PiBVSEQgb24gVWJ1bnR1IGlzIGFibGUgdG8gZmluZCB0aGUgTjIwMCwg
YW5kIGlzIGFibGUgdG8gcHJvYmUgdGhlIE4yMDAgd2l0aCB0aGUgc2Vjb25kIFVIRCBjb21tYW5k
LiAgSG93ZXZlciwgdGhlIHRoaXJkIGNvbW1hbmQgaXMgL3Vzci9sb2NhbC9saWIvdWhkL3V0aWxz
L3VoZF9pbWFnZXNfZG93bmxvYWRlci5weSwgd2hpY2ggcHJvZHVjZXMgdGhlIGZvbGxvd2luZyBF
UlJPUiBNRVNTQUdFIC0gSW52YWxpZCBwZXJtaXNzaW9ucyB0byB3cml0ZSBpbWFnZXMgZGVzdGlu
YXRpb24uICBUaGUgTjIwMCB3YXMgbm90IGJvb3RlZCBpbiBTQUZFIE1PREUsIHNvIGl0IHNob3Vs
ZCBiZSBhdmFpbGFibGUgZm9yIGZpcm13YXJlIHVwZGF0ZXMuDQo+ID4+DQo+ID4+DQo+ID4+DQo+
ID4+IEkgaGF2ZSBiZWVuIHVuYWJsZSB0byBsb2NhdGUgYW55IGluZm9ybWF0aW9uIG9ubGluZSBm
b3IgaG93IHRvIGVsaW1pbmF0ZSB0aGlzIHByb2JsZW0gc28gSSBjYW4gd3JpdGUgZmlybXdhcmUg
dXBkYXRlcyB0byB0aGUgTjIwMC4gIElzIGEgZG9jdW1lbnQgYXZhaWxhYmxlIGZvciBmaXhpbmcg
dGhpcyBwcm9ibGVtPyAgSWYgbm90LCBjYW4geW91IHRlbGwgbWUgaG93IHRvIGZpeCB0aGlzIGZp
cm13YXJlIHVwZGF0ZSBwcm9ibGVtIG9uIHRoZSBOMjAwPw0KPiA+Pg0KPiA+Pg0KPiA+Pg0KPiA+
PiBUaGFua3MgaW4gYWR2YW5jZSBmb3IgeW91ciBhc3Npc3RhbmNlIHdpdGggZml4aW5nIHRoaXMg
cHJvYmxlbS4NCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4gUmVzcGVjdGZ1bGx5LA0KPiA+Pg0KPiA+
Pg0KPiA+Pg0KPiA+PiBTY290dA0KPiA+Pg0KPiA+Pg0KPiA+Pg0KPiA+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+PiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiA+PiBUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+ID4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiA+IFRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20N
Cj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
