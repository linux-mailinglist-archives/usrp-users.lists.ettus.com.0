Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2642B50A47B
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 17:40:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 387BC384C6B
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 11:40:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650555640; bh=5e7lkDSk1kTL7EpnlkUTlRvxKALlYJVs1TscBynCyt4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WuMPRo8n8kbeTQ4EAEJHZAuhurzkQ4OjaRwyZQToqZKeUnKVGbb36EQ2i142wZLwS
	 tkhhE+Zur1LKA05XypR59b0MsyBdAVi4x0oESj7LmnIweVFhgwPHdDWX4YIfAr7smB
	 D5tps8P/YkmBZo6B33r4HqjO/fuPb8yygO6EZseu+GEqSKyU0FMK8DdOgIiuCUhmRI
	 6rich/9y5K84cpLKLLNA8406idm0yjuXNu+cFhAtQ3Gw44AO7sTN8obT9kElj7go47
	 mcngnoe4qW0vlsOkacv23f7G0GbNFPb1kW/prNc1grtXVXjAx5yDlLLflQ4GsiZApR
	 PJzCPKVbHt1Qg==
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mm2.emwd.com (Postfix) with ESMTPS id E5B54384C54
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 11:39:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kp8eJbU7";
	dkim-atps=neutral
Received: by mail-wr1-f48.google.com with SMTP id h25so1222712wrc.13
        for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 08:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=re/2wA3UnxXK6NdBJewmvot8MPeY2/wZPL6If34GOew=;
        b=Kp8eJbU7Lt7cJb+ZxUkosX8UjGUYrWri4QC4gOvs5+Zj6WF8RAFdM7pTqw7whatCXH
         nw8DxfvhnjBbDxZgV5+h61S0F7mYa9scl0d28LAv0adT7CoXbxwj1cbqMWFeRrmG2/+7
         /XceBPQXWgrk8/nOZkE9VDTmGbYxjU+EzQsmCU08Vwz9IZtGAsSmXjgMbOTCvXW44EDi
         KxjvtTkr2T17AaDG6eC/JjGuZ2MUR+cI+C9m9Xsc9HJn/mNTkHMuNT1JbC7/9HKSWijt
         jmRdHOlqo/a0WXKUrRKJPiYeeOQrKP7RCBc5ZfpxX91yJJQuJYsaQp9z122GLPVHRphU
         268Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=re/2wA3UnxXK6NdBJewmvot8MPeY2/wZPL6If34GOew=;
        b=c26wqmQfkQuZ1Ir8QGjsVUQkBH1l4/TQLcymZdKc1fOqsPz3lTmdBvuf3sIxrETCxA
         kaQV4h8jigrIlpvLGx4whQJVipHGLBAk0U8fxbyG7zYFK+Vdfa8ZciQ98Q5fZDzRMunl
         TyNj1NMTVp/OAvomUczMlOOVAAYID9Yb9skIPPyDvYftpZbjbAiddSw7OXPpNixUXYou
         AHE2ZTviaN7hK64iAtNro3wafOYu6ewa+xm71cirqB2HFbrkCKBBzwkqvdI/t41nAJSx
         lwCkU/aMNxuqTxSYeomID691KFHx72eYHF1O4748FyLeQN6X472viO6gWO/xbNEajFF1
         z9aQ==
X-Gm-Message-State: AOAM532CicDZVC6ouHqHD0GFbFzpCyM8yAem3M31D8tT+MyUSLyDSXEM
	MdwYMUbE/nkevZ0/qE7AfBmib6vKMee+XK1dcbM=
X-Google-Smtp-Source: ABdhPJzhSzEQSuMvfE1ljvjfo8+e6/sO3STTb2Lnlhi3rpHQPHF+t6AbPPclmhFeYOulmLEMxIodX0mxIlDY3Y8UoUc=
X-Received: by 2002:a05:6000:2a6:b0:20a:7732:1fdc with SMTP id
 l6-20020a05600002a600b0020a77321fdcmr278691wry.256.1650555574837; Thu, 21 Apr
 2022 08:39:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
 <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com> <CAAxXO2GyFBEOVM3tiOdDaPkr8=97F9-XmhrVn9PYyzsZZCa+FA@mail.gmail.com>
 <c53f0375-befa-92d0-cb40-4e5a42af914a@gmail.com>
In-Reply-To: <c53f0375-befa-92d0-cb40-4e5a42af914a@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 21 Apr 2022 18:39:23 +0300
Message-ID: <CAAxXO2FnhEtyPbrZ1dvVOBxLXPTEynNXYvLm3pNWEbdqkbcEWQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: Q4JHENDDQ6JK5ITQLTD3IWSXTYSVEGJZ
X-Message-ID-Hash: Q4JHENDDQ6JK5ITQLTD3IWSXTYSVEGJZ
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD compilation in Ubuntu 20.04 (focal)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q4JHENDDQ6JK5ITQLTD3IWSXTYSVEGJZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWFhaCBPSy4gSSBhc2tlZCBiZWZvcmUgd2hldGhlciB0aGVyZSB3YXMgYSByZWFkeSBVSEQgdmVy
c2lvbiBmb3INCjIwLjA0LCBidXQgbm9vbmUgYW5zd2VyZWQuDQpBZnRlciBJIHRyaWVkIDIwIG9m
IHRoZW0sIEkgYXNzdW1lZCB0aGVyZSB3YXMgbm9uZTooDQpJIGNob3NlIDMuOS41IGFzIHRoZSBv
bGRlc3Qgc3RhYmxlLCBVSEQgcmVsZWFzZS4NCklzIFVIRCAzLjE1LjAuMCBzdGFibGU/IGNtYWtl
IHNheXMgaXQgaXMgdW5zdGFibGUsIGRldmVsb3BtZW50OigNCg0KTmlrb3MNCg0KT24gVGh1LCBB
cHIgMjEsIDIwMjIgYXQgNjowMCBQTSBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21h
aWwuY29tPiB3cm90ZToNCj4NCj4gT24gMjAyMi0wNC0yMSAxMDo1MiwgTmlrb3MgQmFsa2FuYXMg
d3JvdGU6DQo+ID4gSGksDQo+ID4NCj4gPiBTZWVtcyBubyBvbmUgaXMgbG9va2luZyBpbnRvIFVi
dW50dSAyMC4wNCBjb21waWxhdGlvbi4NCj4gPiBNeSBYLTMwMCBpcyBnZXR0aW5nIGxvbmVseS4u
LjooDQo+ID4gSWYgdGhlcmUgYXJlIG5vIG9iamVjdGlvbnMsIEkgY2FuIGxvb2sgaXQgdXAgbXlz
ZWxmLg0KPiA+IEkgd2FzIHRoaW5raW5nIGFib3V0IGZpeGluZyByZWxlYXNlXzAwM18wMDlfMDA1
Lg0KPiA+IFNlZW1zIHN0YWJsZSBhbmQgaG9wZWZ1bGx5IG5lZWQgdmVyeSBsaXR0bGUgdHdlYWtp
bmcuDQo+ID4gU2luY2UgSSBkb24ndCBrbm93IHRoZSBjb2RlLCBJIGhvcGUgaXQncyBhbHJpZ2h0
IHRvIGFzayBoZXJlLCBpZiBJDQo+ID4gaGF2ZSBhbnkgcXVlc3Rpb25zOikNCj4gPg0KPiA+IFRo
ZXNlIGFyZSBhbGwgdGhlIGVycm9ycyBJIGZvdW5kIHdpdGggbWFrZSAtayAoNjAlIGNvbXBsZXRp
b24pOg0KPiA+IC9ob21lL25pa29zL3dvcmsvdWhkL2hvc3QvbGliL3RyYW5zcG9ydC91ZHBfemVy
b19jb3B5LmNwcDoxOTM6Mjk6DQo+ID4gZXJyb3I6IOKAmGNsYXNzIGJvb3N0Ojphc2lvOjpiYXNp
Y19kYXRhZ3JhbV9zb2NrZXQ8Ym9vc3Q6OmFzaW86OmlwOjp1ZHA+4oCZDQo+ID4gaGFzIG5vIG1l
bWJlciBuYW1lZCDigJhuYXRpdmXigJkNCj4gPiAvaG9tZS9uaWtvcy93b3JrL3VoZC9ob3N0L2xp
Yi90cmFuc3BvcnQvdGNwX3plcm9fY29weS5jcHA6MTU3OjI5Og0KPiA+IGVycm9yOiDigJhjbGFz
cyBib29zdDo6YXNpbzo6YmFzaWNfc3RyZWFtX3NvY2tldDxib29zdDo6YXNpbzo6aXA6OnRjcD7i
gJkNCj4gPiBoYXMgbm8gbWVtYmVyIG5hbWVkIOKAmG5hdGl2ZeKAmQ0KPiA+IC9ob21lL25pa29z
L3dvcmsvdWhkL2hvc3QvbGliL3RyYW5zcG9ydC91ZHBfc2ltcGxlLmNwcDo1OTo0NjogZXJyb3I6
DQo+ID4g4oCYY2xhc3MgYm9vc3Q6OmFzaW86OmJhc2ljX2RhdGFncmFtX3NvY2tldDxib29zdDo6
YXNpbzo6aXA6OnVkcD7igJkgaGFzDQo+ID4gbm8gbWVtYmVyIG5hbWVkIOKAmG5hdGl2ZeKAmQ0K
PiA+IC9ob21lL25pa29zL3dvcmsvdWhkL2hvc3QvbGliL3VzcnAveDMwMC94MzAwX2ltcGwuY3Bw
OjE0NzU6MTE0OiBlcnJvcjoNCj4gPiBubyBtYXRjaGluZyBmdW5jdGlvbiBmb3IgY2FsbCB0bw0K
PiA+IOKAmGJvb3N0OjpkYXRlX3RpbWU6OnN1YnNlY29uZF9kdXJhdGlvbjxib29zdDo6cG9zaXhf
dGltZTo6dGltZV9kdXJhdGlvbiwNCj4gPiAxMDAwPjo6c3Vic2Vjb25kX2R1cmF0aW9uKGRvdWJs
ZSnigJkNCj4gPiAvdXNyL2luY2x1ZGUvYm9vc3QvZGF0ZV90aW1lL3RpbWVfZHVyYXRpb24uaHBw
OjI4NToxNDogZXJyb3I6IG5vIHR5cGUNCj4gPiBuYW1lZCDigJh0eXBl4oCZIGluIOKAmHN0cnVj
dCBib29zdDo6ZW5hYmxlX2lmPGJvb3N0Ojppc19pbnRlZ3JhbDxkb3VibGU+LA0KPiA+IHZvaWQ+
4oCZDQo+ID4NCj4gPiBUaGUgZmlyc3QgMyBJIHJlcGxhY2VkOg0KPiA+IF9zb2NrZXQtPm5hdGl2
ZSgpIC0+IF9zb2NrZXQtPm5hdGl2ZV9oYW5kbGUoKSAgIENvbXBpbGVzIE9LLg0KPiA+DQo+ID4g
VGhlIGxhc3QgMiBhcmUgZnJvbSB0aGUgc2FtZSBwbGFjZSBpbiB4MzAwX2ltcGwuY3BwLiBUaGlz
IGlzIGEgdGltZQ0KPiA+IGxvb3Agb2YgMSBtcywgdW50aWwgdGltZW91dC4gVGhlIGNvZGUgaXMg
cGVyZmVjdGx5DQo+ID4gc291bmQgOg0KPiA+IGJvb3N0OjpzeXN0ZW1fdGltZSB0aW1lb3V0X3Rp
bWUgPSBib29zdDo6Z2V0X3N5c3RlbV90aW1lKCkgKw0KPiA+IGJvb3N0Ojpwb3NpeF90aW1lOjpt
aWxsaXNlY29uZHModGltZW91dCAqIDEwMDAuMCk7DQo+ID4NCj4gPiBXaGF0IHRoaXMgaGFzIHRv
IGRvIHdpdGggc3Vic2Vjb25kX2R1cmF0aW9uPw0KPiA+DQo+ID4gIEZyb20gL3Vzci9pbmNsdWRl
L2Jvb3N0L2RhdGVfdGltZS90aW1lX2R1cmF0aW9uLmhwcDogMjg1DQo+ID4gcHVibGljOg0KPiA+
ICAgICAgLy8gVGhlIGFyZ3VtZW50IChzcykgbXVzdCBiZSBhbiBpbnRlZ3JhbCB0eXBlDQo+ID4g
ICAgICB0ZW1wbGF0ZSA8dHlwZW5hbWUgVD4NCj4gPiAgICAgIGV4cGxpY2l0IHN1YnNlY29uZF9k
dXJhdGlvbihUIGNvbnN0JiBzcywNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB0eXBlbmFtZQ0KPiA+IGJvb3N0OjplbmFibGVfaWY8Ym9vc3Q6OmlzX2ludGVncmFsPFQ+LCB2
b2lkPjo6dHlwZSogPQ0KPiA+IEJPT1NUX0RBVEVfVElNRV9OVUxMUFRSKSA6DQo+ID4gICAgICAg
IGJhc2VfZHVyYXRpb24oaW1wbF90eXBlKHRyYWl0c190eXBlOjp0aWNrc19wZXJfc2Vjb25kID49
DQo+ID4gZnJhY19vZl9zZWNvbmQgPyBzcyAqIGFkanVzdG1lbnRfcmF0aW8gOiBzcyAvIGFkanVz
dG1lbnRfcmF0aW8pKQ0KPiA+DQo+ID4gSSBjb3VsZCByZXdyaXRlIHRoZSB0aW1lIGxvb3AgaW4g
Qywgb3V0c2lkZSBib29zdCwgYnV0IGRvbid0IHdhbnQgdG8NCj4gPiBicmVhayBzdHJ1Y3R1cmUu
IEFueSBpZGVhcyB3aHkgaXMgdGhlIGNvbXBpbGVyIGNvbXBsYWluaW5nPw0KPiA+DQo+ID4gVElB
DQo+ID4gTmlrb3MNCj4gPg0KPiA+DQo+IFVidW50dSAyMC4wNCAqYWxyZWFkeSBwYWNrYWdlcyog
VUhELTMuMTUuMC4wLCBzbyBmaWd1cmluZyBvdXQgaG93IHRvDQo+IGNvbXBpbGUgYSBNVUNIIE9M
REVSIHJlbGVhc2Ugb2YNCj4gICAgVUhEIG9uIDIwLjA0IHdvdWxkIHBlcmhhcHMgYmUgdXNlZnVs
IGZvciBwZW9wbGUgd2hvIHJlYWxseSwgcmVhbGx5DQo+IG5lZWQgYSBNVUNIIE9MREVSIHJlbGVh
c2Ugb2YgVUhELg0KPiAgICBCdXQgMy4xNS4wLjAgYWxyZWFkeSB3b3JrcyBvdXQgb2YgdGhlIGJv
eCBmcm9tIHRoZSBwYWNrYWdlIHJlcG9zIGZvcg0KPiBVYnVudHUgMjAuMDQuDQo+DQo+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
