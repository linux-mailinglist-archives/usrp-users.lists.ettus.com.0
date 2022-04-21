Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3908950A366
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 16:54:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 24754384B83
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 10:54:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650552852; bh=AhseRd6BdWrfrlRH6xzU7vsvwfgVoUDrG0J3zeD8eW8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=NEOBzAPxoM4t9TWlipz417b7AU8OvcW0bQl2P8MUxaHM4gv3Ty0agbOpVK0JGRO3R
	 WXjfaOQci8p/l8pDNsjdWKan0ssRWrwNWoCiO9M/ceLO/HbIgMPb87OPNTiLj1/FrB
	 KiCM0CFdHkNgwBWM/l217H7+ih8LV55le7Gl1GDTUQ0deVlnJYjt5lGb0TZtcxRNqN
	 thp017SOpYNUZLsWyXXzZ+kV6DL3gE22creiFHfSEvSzSdE/aflRsqN15xMumX42gc
	 hqXON7jgIoyWCNJ3adst3yigsbGhQr7U74vVIOUutg54PVxKOlMAJb+XxQjm8HX8lD
	 AoKz1loVHmJ8g==
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 3233B384514
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 10:53:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Fo5zzU5J";
	dkim-atps=neutral
Received: by mail-wr1-f48.google.com with SMTP id p18so7058955wru.5
        for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 07:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=IxKgA10gu6paqbayj6NTuSubx9rP2N3ZNPBFkRoKdhI=;
        b=Fo5zzU5J339J0vxiJXexOYASiXEWM8Kzeqytw86MxJOgjxIG6Ar/HSY88Z4i+0nNax
         Svs01RSDvmktg4L90FbHfkOTX65+NIkZHW700KrjC5BtGwRo3CzeqyfN3xzeVhP/xoiu
         OnU3XOLFooJMbqSKeG2GYzeWFsiahzHoO2b1+mWfuf2DOJ8imY9s4JkJBX6vWKQXI2pj
         p3916UKKy4sSAI/RjOZk9qvKfGkcN8hOq/Ju5q/o+t01Q3yqQZqg4mcBmavRhjdVC3eW
         3SuMazWTO2ktNFlhsCHqrDqtFpW0xzEIgFuhD77yaNmjKd45wp3fyP81qdLtbF4U0apA
         FIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=IxKgA10gu6paqbayj6NTuSubx9rP2N3ZNPBFkRoKdhI=;
        b=y8EPIDxg6xwQiVMVCYjP/H1fWJOYlHTX/eJ45cVN1gUAVWaVodNKvgMwsB337QTRm+
         zwWdwCqGuqLdTCCOXI70s3dYmXUx89YXe9LyTG51j+zkXmkLOG36t/BfO2ykJ07WG3Xq
         vyjGLYt6CaVC84W0GNGzdvLjPOC3WTLPYdvV1i7DKpOu7CTuEGM9WGIojuEHFij00zRy
         sfNie/qXykHdQtgLnjQuv3btxKx9urSV9TlH8s4Qo/HTqXJaJCAtcQP1VQ/7ZUdgVnMy
         M9XsvWaQODYMpYTDUaLdAgO/jjgxxtNYFYN7F4OJKgFdMdcTuFYiqsGZEp7TNQg5Dtpg
         K9Fg==
X-Gm-Message-State: AOAM531F58QNRsFny+T+TaZzVXHu/ySO6vxjHKBaS8s0TptNnKKMMg9k
	XBQqpwRY8capYz2j8I7wrKKVxE4ShDZagaePmu4=
X-Google-Smtp-Source: ABdhPJw48XQCuuPyvJx8g9jdqTykkPb8lG8H7CgzEDwluu6/ZCzjNmUovyy0pka99o1NBINWSGChC3p4RCWhcXAiHnE=
X-Received: by 2002:a5d:5967:0:b0:207:9b63:b4bc with SMTP id
 e39-20020a5d5967000000b002079b63b4bcmr107006wri.264.1650552788968; Thu, 21
 Apr 2022 07:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
 <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com>
In-Reply-To: <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 21 Apr 2022 17:52:57 +0300
Message-ID: <CAAxXO2GyFBEOVM3tiOdDaPkr8=97F9-XmhrVn9PYyzsZZCa+FA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 3L3AWKJULF27CJHJ5USAIVHKPLNH7ET2
X-Message-ID-Hash: 3L3AWKJULF27CJHJ5USAIVHKPLNH7ET2
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD compilation in Ubuntu 20.04 (focal)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3L3AWKJULF27CJHJ5USAIVHKPLNH7ET2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNClNlZW1zIG5vIG9uZSBpcyBsb29raW5nIGludG8gVWJ1bnR1IDIwLjA0IGNvbXBpbGF0
aW9uLg0KTXkgWC0zMDAgaXMgZ2V0dGluZyBsb25lbHkuLi46KA0KSWYgdGhlcmUgYXJlIG5vIG9i
amVjdGlvbnMsIEkgY2FuIGxvb2sgaXQgdXAgbXlzZWxmLg0KSSB3YXMgdGhpbmtpbmcgYWJvdXQg
Zml4aW5nIHJlbGVhc2VfMDAzXzAwOV8wMDUuDQpTZWVtcyBzdGFibGUgYW5kIGhvcGVmdWxseSBu
ZWVkIHZlcnkgbGl0dGxlIHR3ZWFraW5nLg0KU2luY2UgSSBkb24ndCBrbm93IHRoZSBjb2RlLCBJ
IGhvcGUgaXQncyBhbHJpZ2h0IHRvIGFzayBoZXJlLCBpZiBJDQpoYXZlIGFueSBxdWVzdGlvbnM6
KQ0KDQpUaGVzZSBhcmUgYWxsIHRoZSBlcnJvcnMgSSBmb3VuZCB3aXRoIG1ha2UgLWsgKDYwJSBj
b21wbGV0aW9uKToNCi9ob21lL25pa29zL3dvcmsvdWhkL2hvc3QvbGliL3RyYW5zcG9ydC91ZHBf
emVyb19jb3B5LmNwcDoxOTM6Mjk6DQplcnJvcjog4oCYY2xhc3MgYm9vc3Q6OmFzaW86OmJhc2lj
X2RhdGFncmFtX3NvY2tldDxib29zdDo6YXNpbzo6aXA6OnVkcD7igJkNCmhhcyBubyBtZW1iZXIg
bmFtZWQg4oCYbmF0aXZl4oCZDQovaG9tZS9uaWtvcy93b3JrL3VoZC9ob3N0L2xpYi90cmFuc3Bv
cnQvdGNwX3plcm9fY29weS5jcHA6MTU3OjI5Og0KZXJyb3I6IOKAmGNsYXNzIGJvb3N0Ojphc2lv
OjpiYXNpY19zdHJlYW1fc29ja2V0PGJvb3N0Ojphc2lvOjppcDo6dGNwPuKAmQ0KaGFzIG5vIG1l
bWJlciBuYW1lZCDigJhuYXRpdmXigJkNCi9ob21lL25pa29zL3dvcmsvdWhkL2hvc3QvbGliL3Ry
YW5zcG9ydC91ZHBfc2ltcGxlLmNwcDo1OTo0NjogZXJyb3I6DQrigJhjbGFzcyBib29zdDo6YXNp
bzo6YmFzaWNfZGF0YWdyYW1fc29ja2V0PGJvb3N0Ojphc2lvOjppcDo6dWRwPuKAmSBoYXMNCm5v
IG1lbWJlciBuYW1lZCDigJhuYXRpdmXigJkNCi9ob21lL25pa29zL3dvcmsvdWhkL2hvc3QvbGli
L3VzcnAveDMwMC94MzAwX2ltcGwuY3BwOjE0NzU6MTE0OiBlcnJvcjoNCm5vIG1hdGNoaW5nIGZ1
bmN0aW9uIGZvciBjYWxsIHRvDQrigJhib29zdDo6ZGF0ZV90aW1lOjpzdWJzZWNvbmRfZHVyYXRp
b248Ym9vc3Q6OnBvc2l4X3RpbWU6OnRpbWVfZHVyYXRpb24sDQoxMDAwPjo6c3Vic2Vjb25kX2R1
cmF0aW9uKGRvdWJsZSnigJkNCi91c3IvaW5jbHVkZS9ib29zdC9kYXRlX3RpbWUvdGltZV9kdXJh
dGlvbi5ocHA6Mjg1OjE0OiBlcnJvcjogbm8gdHlwZQ0KbmFtZWQg4oCYdHlwZeKAmSBpbiDigJhz
dHJ1Y3QgYm9vc3Q6OmVuYWJsZV9pZjxib29zdDo6aXNfaW50ZWdyYWw8ZG91YmxlPiwNCnZvaWQ+
4oCZDQoNClRoZSBmaXJzdCAzIEkgcmVwbGFjZWQ6DQpfc29ja2V0LT5uYXRpdmUoKSAtPiBfc29j
a2V0LT5uYXRpdmVfaGFuZGxlKCkgICBDb21waWxlcyBPSy4NCg0KVGhlIGxhc3QgMiBhcmUgZnJv
bSB0aGUgc2FtZSBwbGFjZSBpbiB4MzAwX2ltcGwuY3BwLiBUaGlzIGlzIGEgdGltZQ0KbG9vcCBv
ZiAxIG1zLCB1bnRpbCB0aW1lb3V0LiBUaGUgY29kZSBpcyBwZXJmZWN0bHkNCnNvdW5kIDoNCmJv
b3N0OjpzeXN0ZW1fdGltZSB0aW1lb3V0X3RpbWUgPSBib29zdDo6Z2V0X3N5c3RlbV90aW1lKCkg
Kw0KYm9vc3Q6OnBvc2l4X3RpbWU6Om1pbGxpc2Vjb25kcyh0aW1lb3V0ICogMTAwMC4wKTsNCg0K
V2hhdCB0aGlzIGhhcyB0byBkbyB3aXRoIHN1YnNlY29uZF9kdXJhdGlvbj8NCg0KRnJvbSAvdXNy
L2luY2x1ZGUvYm9vc3QvZGF0ZV90aW1lL3RpbWVfZHVyYXRpb24uaHBwOiAyODUNCnB1YmxpYzoN
CiAgICAvLyBUaGUgYXJndW1lbnQgKHNzKSBtdXN0IGJlIGFuIGludGVncmFsIHR5cGUNCiAgICB0
ZW1wbGF0ZSA8dHlwZW5hbWUgVD4NCiAgICBleHBsaWNpdCBzdWJzZWNvbmRfZHVyYXRpb24oVCBj
b25zdCYgc3MsDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHR5cGVuYW1lDQpib29z
dDo6ZW5hYmxlX2lmPGJvb3N0Ojppc19pbnRlZ3JhbDxUPiwgdm9pZD46OnR5cGUqID0NCkJPT1NU
X0RBVEVfVElNRV9OVUxMUFRSKSA6DQogICAgICBiYXNlX2R1cmF0aW9uKGltcGxfdHlwZSh0cmFp
dHNfdHlwZTo6dGlja3NfcGVyX3NlY29uZCA+PQ0KZnJhY19vZl9zZWNvbmQgPyBzcyAqIGFkanVz
dG1lbnRfcmF0aW8gOiBzcyAvIGFkanVzdG1lbnRfcmF0aW8pKQ0KDQpJIGNvdWxkIHJld3JpdGUg
dGhlIHRpbWUgbG9vcCBpbiBDLCBvdXRzaWRlIGJvb3N0LCBidXQgZG9uJ3Qgd2FudCB0bw0KYnJl
YWsgc3RydWN0dXJlLiBBbnkgaWRlYXMgd2h5IGlzIHRoZSBjb21waWxlciBjb21wbGFpbmluZz8N
Cg0KVElBDQpOaWtvcw0KDQoNCg0KTmlrb3MNCg0KT24gV2VkLCBBcHIgMjAsIDIwMjIgYXQgNjow
NSBBTSBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiB3cm90ZToNCj4N
Cj4gT24gMjAyMi0wNC0xOSAyMjo0NSwgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+ID4gSGksDQo+
ID4NCj4gPiBJIHVzZWQgdG8gaGF2ZSBVYnVudHUgMTQuMDQgYW5kIGhhZCBubyBpc3N1ZXMgd2l0
aCB1aGQuIFJlY2VudGx5IGkgaGFkDQo+ID4gdG8gdXBncmFkZSB0byBVYnVudHUgMjAuMDQsIGFu
ZCBJIGNhbid0IGZpbmQgKmFueSogdWhkIHZlcnNpb24gdGhhdA0KPiA+IGNhbiBjb21waWxlIGlu
IGl0LiBJIGhhdmUgdHJpZWQgb3ZlciAyMCBmcm9tIGdpdCBmcm9tIDMuOS4wIHRvDQo+ID4gMy4x
MS41OigNCj4gPg0KPiA+IFdpdGggZWFybGllciByZWxlYXNlcyBsaWtlIDMuOS54IEkgZ2V0IGlu
dG8gYm9vc3QgcHJvYmxlbXMsIGFuZA0KPiA+IHNvbWV0aGluZyBsaWtlICJuYXRpdmUiIG5vdCBk
ZWZpbmVkLg0KPiA+IEluIG1vcmUgcmVjZW50IHJlbGVhc2VzIGxpa2UgMy4xMS54IEkgZ2V0Og0K
PiA+DQo+ID4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tDQo+ID4gL2hvbWUvbmlrb3Mvd29yay91aGQv
aG9zdC9saWIvdXNycC9jb3Jlcy9ncGlvX2F0cl8zMDAwLmNwcDo4Og0KPiA+IC9ob21lL25pa29z
L3dvcmsvdWhkL2hvc3QvbGliL3VzcnAvY29yZXMvZ3Bpb19hdHJfMzAwMC5ocHA6MjA6NDI6DQo+
ID4gZXJyb3I6IGV4cGVjdGVkIGNsYXNzLW5hbWUgYmVmb3JlIOKAmHvigJkgdG9rZW4NCj4gPiAg
ICAgMjAgfCBjbGFzcyBncGlvX2F0cl8zMDAwIDogYm9vc3Q6Om5vbmNvcHlhYmxlIHsNCj4gPiAg
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4NCj4gPiBt
YWtlWzJdOiAqKiogW2xpYi9DTWFrZUZpbGVzL3VoZC5kaXIvYnVpbGQubWFrZToxMjM3Og0KPiA+
IGxpYi9DTWFrZUZpbGVzL3VoZC5kaXIvdXNycC9jb3Jlcy9ncGlvX2F0cl8zMDAwLmNwcC5vXSBF
cnJvciAxDQo+ID4gbWFrZVsxXTogKioqIFtDTWFrZUZpbGVzL01ha2VmaWxlMjo2NTU6IGxpYi9D
TWFrZUZpbGVzL3VoZC5kaXIvYWxsXSBFcnJvciAyDQo+ID4gbWFrZTogKioqIFtNYWtlZmlsZTox
NjM6IGFsbF0gRXJyb3IgMg0KPiA+DQo+ID4gVGhpcyBzZWVtcyBsaWtlIGEgYysrIGlzc3VlLi4u
DQo+ID4NCj4gPiBJcyB0aGVyZSBhbnkgZ2l0IHJlbGVhc2UgdGhhdCBjb21waWxlcyBpbiBVYnVu
dHUgMjAuMDQ/DQo+ID4gSSBrbm93IHRoYXQgeW91IGxpc3QgaW4gc3VwcG9ydGVkIHZlcnNpb25z
LCBvbmx5IFVidW50dSAxNC4wNCAmIDE2LjA0LA0KPiA+IGJ1dCBJIHN1c3BlY3QgdGhpcyBpcyBv
dXRkYXRlZCwgc2luY2UgVWJ1bnR1IGRvZXNuJ3Qgc3VwcG9ydCB0aGVtIGFueQ0KPiA+IG1vcmUs
IGFuZCBpbiB1aGQgaW5zdGFsbGF0aW9uIHlvdSBkZXNjcmliZSAyMC4wNCBidWlsZCBpbnN0cnVj
dGlvbnMuDQo+ID4NCj4gPiBUSUENCj4gPiBOaWtvcw0KPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+IEZvciBVYnVudHUg
MjAuMDQsIHlvdSBjYW4ganVzdCBpbnN0YWxsIGl0IGZyb20gdGhlIHBhY2thZ2UgcmVwbyB1c2lu
Zw0KPiBBUFQtLW5vIG5lZWQgdG8gY29tcGlsZSBpdC4NCj4NCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
