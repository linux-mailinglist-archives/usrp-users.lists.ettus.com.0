Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6B150AD5B
	for <lists+usrp-users@lfdr.de>; Fri, 22 Apr 2022 03:44:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50072384CAD
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 21:44:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650591857; bh=28YITNPG2x9lHW9VfIGdLvzxM2ysIScAmoIy1dronVk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BfVoANPnhkYQYUNtx9B2fZkgDJ7BFdq6+SNa1WRQgTdP8Un+i29XHxFrgBgUwTKSz
	 k3hY9YGFyAVglk1U5tbdlte9ejw8oiUTVayJI8iieqSgr0xnqqBWwN+t0QVWoE5Zp9
	 50mQEcL/0cF+lrtEvym6H6bVoj6Mz9P5BE/gKAx5eEXXbpUchE/QFE9va/WnoBKChN
	 +3X4hz+l1wR7u8iwgSc9vfkLe+hl3F+2EpNWoW5YI8qHZEiOrEaTrflVXDcrs3Sx6W
	 B/z2dZtKaZmQoet3fHTolwfa0bgm52YMFwX2xvFRjiPXCUbpAC4uWd1ixhfqf/33j0
	 JdbQINVpZCrng==
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 112A5384C5E
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 21:43:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CKVum4Cm";
	dkim-atps=neutral
Received: by mail-wm1-f46.google.com with SMTP id n126-20020a1c2784000000b0038e8af3e788so4521867wmn.1
        for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 18:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=hOXcL5oOzJg+4QDfOuhz5+UTKNQriemaz8+/NRuGuA4=;
        b=CKVum4CmKSFqBc1GakK4ZC1ZBvhWStFodWpptdRulB7+kJIWWWtBy/K5WTms3BzdDi
         JrTk0fbYpc4L6N9SXtEYIRGz7Ttlg5vDxUBygkbeL74o83eIYR8PW28NcwX6wS6IQTfF
         K5PbMCx4gLJVTFEESv2yEA6r03bekr3luSRcSCFEx9prnfBEMTw8KweEvwkeqNOnea65
         dtqKlUuiIMm5HVp27y0t13BeXAcyHJi5D9eAqWmZYKnH4Qz0IEgBkRdWgdoCEmreEHvC
         m9GEmsKgUiMSsasKJMqn1//rOlT83LghYbG8UDJ21wQO+jC6lh8L2E+Tmd4bJFQsaohi
         flIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=hOXcL5oOzJg+4QDfOuhz5+UTKNQriemaz8+/NRuGuA4=;
        b=DgELRkGckbNvd7S0VRLULleciTSs4nyI/z2WfjeVtS4rKn72StvwR19bWDHxSYKmSn
         tPT56FbyizZl6POWIXKRUVvTpEytr3680OHOqJAFTZFjlucZ7Uo9jZy0MmtmZMIqI8hr
         cIBnoAprZi4mRZ8b1Q2Pu4DU7sy/RQ9+VnsochfCBPhnZtdyhRDO+0Fi4alR/9OYV6rk
         3RU9AZL+6P4sEaIqGrXneCnCHJ/n39zeELH5A7+ttP0y28cL7y/v7bJ26xZHMVbKiPLv
         5/gWZFW8YfCH11+me7VlJvMfAvt0pZOg/MqZOir2k13zL1ENjsZr5y8uZZTO4Ez3PWXN
         qhNA==
X-Gm-Message-State: AOAM533OHge54egHqGC0eAy0PjesWZAfQAbUtJgfOxwbN+zYMuflBL0f
	CxaCCCH0PQk57pjBgEhs9h7HaBF9KlVseZhy7iE=
X-Google-Smtp-Source: ABdhPJyb7iiXeEOxb7v3mUl9bAp+mf3gSOpzomJrwNYWoS0LS9j1sf+HCXkLfZCrXLMm/ZcxzkT7PqaB2rKiULuDrZ0=
X-Received: by 2002:a1c:f415:0:b0:37f:ab4d:1df2 with SMTP id
 z21-20020a1cf415000000b0037fab4d1df2mr10680590wma.75.1650591797893; Thu, 21
 Apr 2022 18:43:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
 <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com> <CAAxXO2HO2BvWV+hOafqg=+HG=ApAfgJEGtSgYbQvS4VXtfcxMQ@mail.gmail.com>
 <a724873a-926d-f01c-11b1-049560fe10b6@gmail.com>
In-Reply-To: <a724873a-926d-f01c-11b1-049560fe10b6@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 22 Apr 2022 04:43:06 +0300
Message-ID: <CAAxXO2Fwk-gR=wHVpWwC3qsN2dOYAeLuOUY7a5UBkA3UcV1p=A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: PDHTH4WZ262R54ZA32V3Z2TXRSNUQ5MQ
X-Message-ID-Hash: PDHTH4WZ262R54ZA32V3Z2TXRSNUQ5MQ
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD compilation in Ubuntu 20.04 (focal)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PDHTH4WZ262R54ZA32V3Z2TXRSNUQ5MQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

bnAuIEkgd2FzIHdvbmRlcmluZyB3aGF0IHRoYXQgbWFpbCB3YXMgYWxsIGFib3V0Lg0KTm93IGF0
IGxlYXN0IGkga25vdzstKQ0KDQpOaWtvcw0KDQpPbiBGcmksIEFwciAyMiwgMjAyMiBhdCAyOjE4
IEFNIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPg0K
PiBPbiAyMDIyLTA0LTIxIDE5OjEzLCBOaWtvcyBCYWxrYW5hcyB3cm90ZToNCj4gPiBZb3UgY2Fu
IGNoZWNrIGJhY2sgeW91ciBhbnN3ZXIuDQo+ID4geW91IGFuc3dlcmVkIHRvIG1lLCBidXQgdGhl
cmUgd2FzIG5vdGhpbmcgaW4geW91ciBtYWlsOigNCj4gPg0KPiA+IEJSDQo+ID4gTmlrb3MNCj4g
V2VsbCwgSSBhcG9sb2dpemUuICBJJ20gZ29pbmcgdG8gYmxhbWUgdGhlIGNhdCwgYmVjYXVzZSBo
ZSdzIHVuYWJsZSB0bw0KPiBkZWZlbmQgaGltc2VsZiBpbiBzdWNoIG1hdHRlcnMsIGFuZCBkb2Vz
IG9jY2FzaW9uYWxseSBiYXQgYXQgbXkga2V5Ym9hcmQNCj4gd2hpbGUgSSdtDQo+ICAgIGRvaW5n
IHRoaW5ncyB3aXRoIHRoZSBjb21wdXRlci4gICAgSSBkbyByZW1lbWJlciB0eXBpbmcgYSByZXBs
eSBpbg0KPiB3aGljaCBJIGluZGljYXRlZCB0aGF0IDMuMTUgaXMgcGFja2FnZWQgd2l0aCBVYnVu
dHUgMjAuMDQsIDIxLjA0LCAyMS4xMC4NCj4NCj4NCj4gPg0KPiA+IE9uIFdlZCwgQXByIDIwLCAy
MDIyIGF0IDY6MDUgQU0gTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4g
d3JvdGU6DQo+ID4+IE9uIDIwMjItMDQtMTkgMjI6NDUsIE5pa29zIEJhbGthbmFzIHdyb3RlOg0K
PiA+Pj4gSGksDQo+ID4+Pg0KPiA+Pj4gSSB1c2VkIHRvIGhhdmUgVWJ1bnR1IDE0LjA0IGFuZCBo
YWQgbm8gaXNzdWVzIHdpdGggdWhkLiBSZWNlbnRseSBpIGhhZA0KPiA+Pj4gdG8gdXBncmFkZSB0
byBVYnVudHUgMjAuMDQsIGFuZCBJIGNhbid0IGZpbmQgKmFueSogdWhkIHZlcnNpb24gdGhhdA0K
PiA+Pj4gY2FuIGNvbXBpbGUgaW4gaXQuIEkgaGF2ZSB0cmllZCBvdmVyIDIwIGZyb20gZ2l0IGZy
b20gMy45LjAgdG8NCj4gPj4+IDMuMTEuNTooDQo+ID4+Pg0KPiA+Pj4gV2l0aCBlYXJsaWVyIHJl
bGVhc2VzIGxpa2UgMy45LnggSSBnZXQgaW50byBib29zdCBwcm9ibGVtcywgYW5kDQo+ID4+PiBz
b21ldGhpbmcgbGlrZSAibmF0aXZlIiBub3QgZGVmaW5lZC4NCj4gPj4+IEluIG1vcmUgcmVjZW50
IHJlbGVhc2VzIGxpa2UgMy4xMS54IEkgZ2V0Og0KPiA+Pj4NCj4gPj4+IEluIGZpbGUgaW5jbHVk
ZWQgZnJvbQ0KPiA+Pj4gL2hvbWUvbmlrb3Mvd29yay91aGQvaG9zdC9saWIvdXNycC9jb3Jlcy9n
cGlvX2F0cl8zMDAwLmNwcDo4Og0KPiA+Pj4gL2hvbWUvbmlrb3Mvd29yay91aGQvaG9zdC9saWIv
dXNycC9jb3Jlcy9ncGlvX2F0cl8zMDAwLmhwcDoyMDo0MjoNCj4gPj4+IGVycm9yOiBleHBlY3Rl
ZCBjbGFzcy1uYW1lIGJlZm9yZSDigJh74oCZIHRva2VuDQo+ID4+PiAgICAgIDIwIHwgY2xhc3Mg
Z3Bpb19hdHJfMzAwMCA6IGJvb3N0Ojpub25jb3B5YWJsZSB7DQo+ID4+PiAgICAgICAgIHwgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeDQo+ID4+PiBtYWtlWzJdOiAq
KiogW2xpYi9DTWFrZUZpbGVzL3VoZC5kaXIvYnVpbGQubWFrZToxMjM3Og0KPiA+Pj4gbGliL0NN
YWtlRmlsZXMvdWhkLmRpci91c3JwL2NvcmVzL2dwaW9fYXRyXzMwMDAuY3BwLm9dIEVycm9yIDEN
Cj4gPj4+IG1ha2VbMV06ICoqKiBbQ01ha2VGaWxlcy9NYWtlZmlsZTI6NjU1OiBsaWIvQ01ha2VG
aWxlcy91aGQuZGlyL2FsbF0gRXJyb3IgMg0KPiA+Pj4gbWFrZTogKioqIFtNYWtlZmlsZToxNjM6
IGFsbF0gRXJyb3IgMg0KPiA+Pj4NCj4gPj4+IFRoaXMgc2VlbXMgbGlrZSBhIGMrKyBpc3N1ZS4u
Lg0KPiA+Pj4NCj4gPj4+IElzIHRoZXJlIGFueSBnaXQgcmVsZWFzZSB0aGF0IGNvbXBpbGVzIGlu
IFVidW50dSAyMC4wND8NCj4gPj4+IEkga25vdyB0aGF0IHlvdSBsaXN0IGluIHN1cHBvcnRlZCB2
ZXJzaW9ucywgb25seSBVYnVudHUgMTQuMDQgJiAxNi4wNCwNCj4gPj4+IGJ1dCBJIHN1c3BlY3Qg
dGhpcyBpcyBvdXRkYXRlZCwgc2luY2UgVWJ1bnR1IGRvZXNuJ3Qgc3VwcG9ydCB0aGVtIGFueQ0K
PiA+Pj4gbW9yZSwgYW5kIGluIHVoZCBpbnN0YWxsYXRpb24geW91IGRlc2NyaWJlIDIwLjA0IGJ1
aWxkIGluc3RydWN0aW9ucy4NCj4gPj4+DQo+ID4+PiBUSUENCj4gPj4+IE5pa29zDQo+ID4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+Pj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gPj4+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20NCj4gPj4gRm9yIFVidW50dSAyMC4wNCwgeW91IGNhbiBqdXN0IGluc3RhbGwgaXQg
ZnJvbSB0aGUgcGFja2FnZSByZXBvIHVzaW5nDQo+ID4+IEFQVC0tbm8gbmVlZCB0byBjb21waWxl
IGl0Lg0KPiA+Pg0KPiA+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiA+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQ0KPiA+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
