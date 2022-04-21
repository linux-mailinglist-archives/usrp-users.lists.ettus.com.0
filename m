Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D746B50A49D
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 17:46:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C205384C85
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 11:46:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650556000; bh=fudnsRgshqXz9id967cLhUV4hbRdR5jcWh/9qew3cc0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=NZZwHou0SWqJQqMhwXobXEL4JGDCdxWHf1UTGgT7KTZKyR7w8CDA29fUNJsT59Sxi
	 qtHagAUE4xkGdtmz7FB9Wog1ytif0tsUqOonJQkF/0LSnpr0IeE3/SgjDpFwh+o7KW
	 kN53jReVvptJIwXt8qOtj8SpvC2On6y/a54rg3NXaJBXO/o6dn8+/1cHQBilthtMm2
	 VioLTVuSR2sX+OHiJcIxVWzL1HWDJr6oN/VOv7nGBfhWiric1gNixrG5HpKE64M4pH
	 6k88Q7wzuCC8/PRxqKaOeW49XyvYeR0M2LZ731ioKL/PW1W1eGFW92ahHysFJvJpZz
	 3M8fF+qAPGvzg==
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 8905C384C5E
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 11:45:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HiwTv2+y";
	dkim-atps=neutral
Received: by mail-wr1-f54.google.com with SMTP id t6so3842910wra.4
        for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 08:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ot1Bghx1jHvJ29CC+mA1X/t2ORbyOxe9P0AYuDP1BY8=;
        b=HiwTv2+yjFX7jwaKySpi4qVRb8CKEA4XaugjgHSzg6DQwVnWECWcBkQyO0K0Mon4e0
         RwEXa1t5Wy6R7wWokhhq4fTdNtnV75U7m4OoErBkpSxwoPFY0NRKoMXbH7xSFO/XjotC
         rcvu2I+gxZPclDGgotgl7M2ZgRBmmVXQPco/qgrt+TTrb9GpGQAsSD35ULSykIp/ON2b
         HK3LbcLRnnfZ0RyRjfLyZd08OsPD3b7iGyDJuDvnUV4+mQ/Rndk2CmJ3wzUv8phTHmJ8
         urOIr1NfR0ZxRly3JmDn7ADkabWLXX7I5g9BPEMcIqujdnhiiz6D5GM7HRcvIZD/Z7xp
         ScPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ot1Bghx1jHvJ29CC+mA1X/t2ORbyOxe9P0AYuDP1BY8=;
        b=MUj9LG51sUTmCBWLnJJCgOtjjeV5dsO9n+j6yLgsuT9h7YclJFHk00i6lNIzajBP/X
         3uzTO9T3oppX68FFduGdmW8ceQTH2s20Anv7KCr6JFR5ZXQYIHo0+hUWLgnfKk7XBTge
         ywAKdZcAXky8Z7SRh1i922pTdiEGupx9l3UDHpnDSR2N/F7op/AJTta1llckO7DV9MDG
         Kr7iEwlP/26ovTJ0i9G6vFhONMUIlc5i23S9O01ZjkCm4oZLe+J1zs7pZqRS5WpAkNI5
         UOCRwEzw87GQoWTwaOhfyCkjXSwFoz/X2zWX1PozeSgNN2fI60zjeY4u2U/BHXnzFRVm
         eqfg==
X-Gm-Message-State: AOAM5320YBLmIXMawMauhi51blB21FLVUG8Jb9cg59ZhozA5txHNEv1A
	27GqG62h8CLPMdvXU2NldfhZm0zPRUORQolDJx8=
X-Google-Smtp-Source: ABdhPJzpOuT9DWvpaMBaspklXWWSlA0Rd1igO5IkNuUYbZqaOkEA3Gfcris6ndiqzYQiIvbrz3DLPhj1eRGKeGbcvoA=
X-Received: by 2002:adf:e0c5:0:b0:206:1ba3:26aa with SMTP id
 m5-20020adfe0c5000000b002061ba326aamr239542wri.645.1650555941335; Thu, 21 Apr
 2022 08:45:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
 <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com> <CAAxXO2GyFBEOVM3tiOdDaPkr8=97F9-XmhrVn9PYyzsZZCa+FA@mail.gmail.com>
 <c53f0375-befa-92d0-cb40-4e5a42af914a@gmail.com> <CAAxXO2FnhEtyPbrZ1dvVOBxLXPTEynNXYvLm3pNWEbdqkbcEWQ@mail.gmail.com>
In-Reply-To: <CAAxXO2FnhEtyPbrZ1dvVOBxLXPTEynNXYvLm3pNWEbdqkbcEWQ@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 21 Apr 2022 18:45:29 +0300
Message-ID: <CAAxXO2Gb4vbNA+Y4H-ynNER+cDA78pWwrv0KSTrYCzG39qErww@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: EOQ3JFRXJUD3MIM3CSM5UHDBDRMEGTM4
X-Message-ID-Hash: EOQ3JFRXJUD3MIM3CSM5UHDBDRMEGTM4
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD compilation in Ubuntu 20.04 (focal)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EOQ3JFRXJUD3MIM3CSM5UHDBDRMEGTM4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hhdCBkbyB0aGUgcmMxLCByYzIgbWVhbiBpbiB0aGUgdmVyc2lvbnM/DQoNCk9uIFRodSwgQXBy
IDIxLCAyMDIyIGF0IDY6MzkgUE0gTmlrb3MgQmFsa2FuYXMgPG5iYWxrYW5hc0BnbWFpbC5jb20+
IHdyb3RlOg0KPg0KPiBBYWFoIE9LLiBJIGFza2VkIGJlZm9yZSB3aGV0aGVyIHRoZXJlIHdhcyBh
IHJlYWR5IFVIRCB2ZXJzaW9uIGZvcg0KPiAyMC4wNCwgYnV0IG5vb25lIGFuc3dlcmVkLg0KPiBB
ZnRlciBJIHRyaWVkIDIwIG9mIHRoZW0sIEkgYXNzdW1lZCB0aGVyZSB3YXMgbm9uZTooDQo+IEkg
Y2hvc2UgMy45LjUgYXMgdGhlIG9sZGVzdCBzdGFibGUsIFVIRCByZWxlYXNlLg0KPiBJcyBVSEQg
My4xNS4wLjAgc3RhYmxlPyBjbWFrZSBzYXlzIGl0IGlzIHVuc3RhYmxlLCBkZXZlbG9wbWVudDoo
DQo+DQo+IE5pa29zDQo+DQo+IE9uIFRodSwgQXByIDIxLCAyMDIyIGF0IDY6MDAgUE0gTWFyY3Vz
IEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiAy
MDIyLTA0LTIxIDEwOjUyLCBOaWtvcyBCYWxrYW5hcyB3cm90ZToNCj4gPiA+IEhpLA0KPiA+ID4N
Cj4gPiA+IFNlZW1zIG5vIG9uZSBpcyBsb29raW5nIGludG8gVWJ1bnR1IDIwLjA0IGNvbXBpbGF0
aW9uLg0KPiA+ID4gTXkgWC0zMDAgaXMgZ2V0dGluZyBsb25lbHkuLi46KA0KPiA+ID4gSWYgdGhl
cmUgYXJlIG5vIG9iamVjdGlvbnMsIEkgY2FuIGxvb2sgaXQgdXAgbXlzZWxmLg0KPiA+ID4gSSB3
YXMgdGhpbmtpbmcgYWJvdXQgZml4aW5nIHJlbGVhc2VfMDAzXzAwOV8wMDUuDQo+ID4gPiBTZWVt
cyBzdGFibGUgYW5kIGhvcGVmdWxseSBuZWVkIHZlcnkgbGl0dGxlIHR3ZWFraW5nLg0KPiA+ID4g
U2luY2UgSSBkb24ndCBrbm93IHRoZSBjb2RlLCBJIGhvcGUgaXQncyBhbHJpZ2h0IHRvIGFzayBo
ZXJlLCBpZiBJDQo+ID4gPiBoYXZlIGFueSBxdWVzdGlvbnM6KQ0KPiA+ID4NCj4gPiA+IFRoZXNl
IGFyZSBhbGwgdGhlIGVycm9ycyBJIGZvdW5kIHdpdGggbWFrZSAtayAoNjAlIGNvbXBsZXRpb24p
Og0KPiA+ID4gL2hvbWUvbmlrb3Mvd29yay91aGQvaG9zdC9saWIvdHJhbnNwb3J0L3VkcF96ZXJv
X2NvcHkuY3BwOjE5MzoyOToNCj4gPiA+IGVycm9yOiDigJhjbGFzcyBib29zdDo6YXNpbzo6YmFz
aWNfZGF0YWdyYW1fc29ja2V0PGJvb3N0Ojphc2lvOjppcDo6dWRwPuKAmQ0KPiA+ID4gaGFzIG5v
IG1lbWJlciBuYW1lZCDigJhuYXRpdmXigJkNCj4gPiA+IC9ob21lL25pa29zL3dvcmsvdWhkL2hv
c3QvbGliL3RyYW5zcG9ydC90Y3BfemVyb19jb3B5LmNwcDoxNTc6Mjk6DQo+ID4gPiBlcnJvcjog
4oCYY2xhc3MgYm9vc3Q6OmFzaW86OmJhc2ljX3N0cmVhbV9zb2NrZXQ8Ym9vc3Q6OmFzaW86Omlw
Ojp0Y3A+4oCZDQo+ID4gPiBoYXMgbm8gbWVtYmVyIG5hbWVkIOKAmG5hdGl2ZeKAmQ0KPiA+ID4g
L2hvbWUvbmlrb3Mvd29yay91aGQvaG9zdC9saWIvdHJhbnNwb3J0L3VkcF9zaW1wbGUuY3BwOjU5
OjQ2OiBlcnJvcjoNCj4gPiA+IOKAmGNsYXNzIGJvb3N0Ojphc2lvOjpiYXNpY19kYXRhZ3JhbV9z
b2NrZXQ8Ym9vc3Q6OmFzaW86OmlwOjp1ZHA+4oCZIGhhcw0KPiA+ID4gbm8gbWVtYmVyIG5hbWVk
IOKAmG5hdGl2ZeKAmQ0KPiA+ID4gL2hvbWUvbmlrb3Mvd29yay91aGQvaG9zdC9saWIvdXNycC94
MzAwL3gzMDBfaW1wbC5jcHA6MTQ3NToxMTQ6IGVycm9yOg0KPiA+ID4gbm8gbWF0Y2hpbmcgZnVu
Y3Rpb24gZm9yIGNhbGwgdG8NCj4gPiA+IOKAmGJvb3N0OjpkYXRlX3RpbWU6OnN1YnNlY29uZF9k
dXJhdGlvbjxib29zdDo6cG9zaXhfdGltZTo6dGltZV9kdXJhdGlvbiwNCj4gPiA+IDEwMDA+Ojpz
dWJzZWNvbmRfZHVyYXRpb24oZG91YmxlKeKAmQ0KPiA+ID4gL3Vzci9pbmNsdWRlL2Jvb3N0L2Rh
dGVfdGltZS90aW1lX2R1cmF0aW9uLmhwcDoyODU6MTQ6IGVycm9yOiBubyB0eXBlDQo+ID4gPiBu
YW1lZCDigJh0eXBl4oCZIGluIOKAmHN0cnVjdCBib29zdDo6ZW5hYmxlX2lmPGJvb3N0Ojppc19p
bnRlZ3JhbDxkb3VibGU+LA0KPiA+ID4gdm9pZD7igJkNCj4gPiA+DQo+ID4gPiBUaGUgZmlyc3Qg
MyBJIHJlcGxhY2VkOg0KPiA+ID4gX3NvY2tldC0+bmF0aXZlKCkgLT4gX3NvY2tldC0+bmF0aXZl
X2hhbmRsZSgpICAgQ29tcGlsZXMgT0suDQo+ID4gPg0KPiA+ID4gVGhlIGxhc3QgMiBhcmUgZnJv
bSB0aGUgc2FtZSBwbGFjZSBpbiB4MzAwX2ltcGwuY3BwLiBUaGlzIGlzIGEgdGltZQ0KPiA+ID4g
bG9vcCBvZiAxIG1zLCB1bnRpbCB0aW1lb3V0LiBUaGUgY29kZSBpcyBwZXJmZWN0bHkNCj4gPiA+
IHNvdW5kIDoNCj4gPiA+IGJvb3N0OjpzeXN0ZW1fdGltZSB0aW1lb3V0X3RpbWUgPSBib29zdDo6
Z2V0X3N5c3RlbV90aW1lKCkgKw0KPiA+ID4gYm9vc3Q6OnBvc2l4X3RpbWU6Om1pbGxpc2Vjb25k
cyh0aW1lb3V0ICogMTAwMC4wKTsNCj4gPiA+DQo+ID4gPiBXaGF0IHRoaXMgaGFzIHRvIGRvIHdp
dGggc3Vic2Vjb25kX2R1cmF0aW9uPw0KPiA+ID4NCj4gPiA+ICBGcm9tIC91c3IvaW5jbHVkZS9i
b29zdC9kYXRlX3RpbWUvdGltZV9kdXJhdGlvbi5ocHA6IDI4NQ0KPiA+ID4gcHVibGljOg0KPiA+
ID4gICAgICAvLyBUaGUgYXJndW1lbnQgKHNzKSBtdXN0IGJlIGFuIGludGVncmFsIHR5cGUNCj4g
PiA+ICAgICAgdGVtcGxhdGUgPHR5cGVuYW1lIFQ+DQo+ID4gPiAgICAgIGV4cGxpY2l0IHN1YnNl
Y29uZF9kdXJhdGlvbihUIGNvbnN0JiBzcywNCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHR5cGVuYW1lDQo+ID4gPiBib29zdDo6ZW5hYmxlX2lmPGJvb3N0Ojppc19pbnRl
Z3JhbDxUPiwgdm9pZD46OnR5cGUqID0NCj4gPiA+IEJPT1NUX0RBVEVfVElNRV9OVUxMUFRSKSA6
DQo+ID4gPiAgICAgICAgYmFzZV9kdXJhdGlvbihpbXBsX3R5cGUodHJhaXRzX3R5cGU6OnRpY2tz
X3Blcl9zZWNvbmQgPj0NCj4gPiA+IGZyYWNfb2Zfc2Vjb25kID8gc3MgKiBhZGp1c3RtZW50X3Jh
dGlvIDogc3MgLyBhZGp1c3RtZW50X3JhdGlvKSkNCj4gPiA+DQo+ID4gPiBJIGNvdWxkIHJld3Jp
dGUgdGhlIHRpbWUgbG9vcCBpbiBDLCBvdXRzaWRlIGJvb3N0LCBidXQgZG9uJ3Qgd2FudCB0bw0K
PiA+ID4gYnJlYWsgc3RydWN0dXJlLiBBbnkgaWRlYXMgd2h5IGlzIHRoZSBjb21waWxlciBjb21w
bGFpbmluZz8NCj4gPiA+DQo+ID4gPiBUSUENCj4gPiA+IE5pa29zDQo+ID4gPg0KPiA+ID4NCj4g
PiBVYnVudHUgMjAuMDQgKmFscmVhZHkgcGFja2FnZXMqIFVIRC0zLjE1LjAuMCwgc28gZmlndXJp
bmcgb3V0IGhvdyB0bw0KPiA+IGNvbXBpbGUgYSBNVUNIIE9MREVSIHJlbGVhc2Ugb2YNCj4gPiAg
ICBVSEQgb24gMjAuMDQgd291bGQgcGVyaGFwcyBiZSB1c2VmdWwgZm9yIHBlb3BsZSB3aG8gcmVh
bGx5LCByZWFsbHkNCj4gPiBuZWVkIGEgTVVDSCBPTERFUiByZWxlYXNlIG9mIFVIRC4NCj4gPiAg
ICBCdXQgMy4xNS4wLjAgYWxyZWFkeSB3b3JrcyBvdXQgb2YgdGhlIGJveCBmcm9tIHRoZSBwYWNr
YWdlIHJlcG9zIGZvcg0KPiA+IFVidW50dSAyMC4wNC4NCj4gPg0KPiA+Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
