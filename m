Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3DD50A392
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 17:01:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B093384B4D
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 11:01:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650553273; bh=6WQRvX/uZW33sSzDWZ2FreS8dcy61msFKq618ppe8EI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yRrk25EW463wehcJy0EDncti/bwnWXVPlRczIRFFXjSLS0PQgWiYWxfJRV0ZAoMEx
	 U4ZTJJPtj2f1nrKngEsUGwZ+1JOi93NF4MLbGtJvCUJJEJohy6RzENPCM9UNsQRj2T
	 kb5M5apyX0oJmX4/oyXZ+4z7MfZwP/+iT+9Mndz1AStnAVjZ4l09+KQYhpqKPo4Rc5
	 Cf+IK4Yd7c3OYfzMIlXHaBNCvupxU74lexO7z4igHoQMQSfA6KkmgYriX0CW0wFQBj
	 fGV7lPgAyEnZQKeYT8O3PBAMU3/l2a342+5jKRPYCq8dfirQMefBk/db0a4cJq4L5s
	 LtsnV22GnxDoA==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 3AC1F3849AA
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 11:00:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DVxiEJ/R";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id b68so3719973qkc.4
        for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 08:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LKBSqp2c283dQo7o5As2r0gVofFt3a4pTvk4vWZeaPs=;
        b=DVxiEJ/RUUxCPxF3Zz6W7jpZeKLfykm4oIkOJ2nlEtLTcKChbdIdd3Znhbfl+98yiS
         AUXtJGGV+in2ASg4gRRHy4p57UG1mLRHDl6g2UCkzZ3dbtGfsu+Fnf8kscAkZahdI4GZ
         r8Rn/4gjXK4Hk+FaVG7letZ1x04S9g4BAVWtytGQgU26NjMmwT12gNqCwxpfxvb2NEKR
         pMqP3vo+NtM/lrl8P2Hwj606GB+YuDQyNqy5Z3qd9C/W9XIc0htJUl3jeu3dZyiBnyTs
         TyQcP5/HC3LFG5d74vH/DHPaqfz5tFuyngJqPHfP2lPjYyqKKJlIBzDemA5ohLGk8lGb
         QXag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LKBSqp2c283dQo7o5As2r0gVofFt3a4pTvk4vWZeaPs=;
        b=Qr1faRTdSjfnm0xUgFP5uWQiq1wQrpGIWLsTZ7PAoILKpr0zhCKKiq3uoPKEGE2jHf
         CFxPRXT9wFEZeiSh9noQiksm85fdLjDsV/tZ4zmi/U2xcTtvtBbzlHzoXCaEGuD4S7QB
         Pt41al9mMPy3TB/l8CDIlRPdgMEiEnLqdwFJlD4AGN+vgCe0OH93rUZVkJabTVyacgfA
         ulwRC/ajD6vkEDfa34CPLM+/0PpO1SLlBTyeMYV+5EUOfX/H3Ch4E4EqyaS+qsbqpRDb
         XvLllm/5fFcnih42KIjXRSA5L508jeOm//imOY77KMJ5HiIqy/AEKjTD12buIh8NJeVJ
         6txw==
X-Gm-Message-State: AOAM532DFVnTdHQLHmYXK44aAqDEOU0S/hl7oeF0ssNreHkykGjXIP9w
	TT5OcANlvQwhDKiT17Bd7QjE0jz9tno=
X-Google-Smtp-Source: ABdhPJw6pF9Eh7ZK0WO7zcDPGaWgnzUbDkyVHO/mTcna6LAeZUSCDwa7J4t1DYkKhpbwaS1GxQqDVw==
X-Received: by 2002:a05:620a:4689:b0:69e:a989:5f4b with SMTP id bq9-20020a05620a468900b0069ea9895f4bmr10617891qkb.452.1650553208617;
        Thu, 21 Apr 2022 08:00:08 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id o4-20020ae9f504000000b0069e75e7387fsm2898265qkg.43.2022.04.21.08.00.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 08:00:08 -0700 (PDT)
Message-ID: <c53f0375-befa-92d0-cb40-4e5a42af914a@gmail.com>
Date: Thu, 21 Apr 2022 11:00:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Nikos Balkanas <nbalkanas@gmail.com>
References: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
 <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com>
 <CAAxXO2GyFBEOVM3tiOdDaPkr8=97F9-XmhrVn9PYyzsZZCa+FA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2GyFBEOVM3tiOdDaPkr8=97F9-XmhrVn9PYyzsZZCa+FA@mail.gmail.com>
Message-ID-Hash: EFK3CCTHINUK553IZZ23WI6VDZVWA67L
X-Message-ID-Hash: EFK3CCTHINUK553IZZ23WI6VDZVWA67L
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD compilation in Ubuntu 20.04 (focal)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EFK3CCTHINUK553IZZ23WI6VDZVWA67L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNC0yMSAxMDo1MiwgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+IEhpLA0KPg0KPiBT
ZWVtcyBubyBvbmUgaXMgbG9va2luZyBpbnRvIFVidW50dSAyMC4wNCBjb21waWxhdGlvbi4NCj4g
TXkgWC0zMDAgaXMgZ2V0dGluZyBsb25lbHkuLi46KA0KPiBJZiB0aGVyZSBhcmUgbm8gb2JqZWN0
aW9ucywgSSBjYW4gbG9vayBpdCB1cCBteXNlbGYuDQo+IEkgd2FzIHRoaW5raW5nIGFib3V0IGZp
eGluZyByZWxlYXNlXzAwM18wMDlfMDA1Lg0KPiBTZWVtcyBzdGFibGUgYW5kIGhvcGVmdWxseSBu
ZWVkIHZlcnkgbGl0dGxlIHR3ZWFraW5nLg0KPiBTaW5jZSBJIGRvbid0IGtub3cgdGhlIGNvZGUs
IEkgaG9wZSBpdCdzIGFscmlnaHQgdG8gYXNrIGhlcmUsIGlmIEkNCj4gaGF2ZSBhbnkgcXVlc3Rp
b25zOikNCj4NCj4gVGhlc2UgYXJlIGFsbCB0aGUgZXJyb3JzIEkgZm91bmQgd2l0aCBtYWtlIC1r
ICg2MCUgY29tcGxldGlvbik6DQo+IC9ob21lL25pa29zL3dvcmsvdWhkL2hvc3QvbGliL3RyYW5z
cG9ydC91ZHBfemVyb19jb3B5LmNwcDoxOTM6Mjk6DQo+IGVycm9yOiDigJhjbGFzcyBib29zdDo6
YXNpbzo6YmFzaWNfZGF0YWdyYW1fc29ja2V0PGJvb3N0Ojphc2lvOjppcDo6dWRwPuKAmQ0KPiBo
YXMgbm8gbWVtYmVyIG5hbWVkIOKAmG5hdGl2ZeKAmQ0KPiAvaG9tZS9uaWtvcy93b3JrL3VoZC9o
b3N0L2xpYi90cmFuc3BvcnQvdGNwX3plcm9fY29weS5jcHA6MTU3OjI5Og0KPiBlcnJvcjog4oCY
Y2xhc3MgYm9vc3Q6OmFzaW86OmJhc2ljX3N0cmVhbV9zb2NrZXQ8Ym9vc3Q6OmFzaW86OmlwOjp0
Y3A+4oCZDQo+IGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYbmF0aXZl4oCZDQo+IC9ob21lL25pa29z
L3dvcmsvdWhkL2hvc3QvbGliL3RyYW5zcG9ydC91ZHBfc2ltcGxlLmNwcDo1OTo0NjogZXJyb3I6
DQo+IOKAmGNsYXNzIGJvb3N0Ojphc2lvOjpiYXNpY19kYXRhZ3JhbV9zb2NrZXQ8Ym9vc3Q6OmFz
aW86OmlwOjp1ZHA+4oCZIGhhcw0KPiBubyBtZW1iZXIgbmFtZWQg4oCYbmF0aXZl4oCZDQo+IC9o
b21lL25pa29zL3dvcmsvdWhkL2hvc3QvbGliL3VzcnAveDMwMC94MzAwX2ltcGwuY3BwOjE0NzU6
MTE0OiBlcnJvcjoNCj4gbm8gbWF0Y2hpbmcgZnVuY3Rpb24gZm9yIGNhbGwgdG8NCj4g4oCYYm9v
c3Q6OmRhdGVfdGltZTo6c3Vic2Vjb25kX2R1cmF0aW9uPGJvb3N0Ojpwb3NpeF90aW1lOjp0aW1l
X2R1cmF0aW9uLA0KPiAxMDAwPjo6c3Vic2Vjb25kX2R1cmF0aW9uKGRvdWJsZSnigJkNCj4gL3Vz
ci9pbmNsdWRlL2Jvb3N0L2RhdGVfdGltZS90aW1lX2R1cmF0aW9uLmhwcDoyODU6MTQ6IGVycm9y
OiBubyB0eXBlDQo+IG5hbWVkIOKAmHR5cGXigJkgaW4g4oCYc3RydWN0IGJvb3N0OjplbmFibGVf
aWY8Ym9vc3Q6OmlzX2ludGVncmFsPGRvdWJsZT4sDQo+IHZvaWQ+4oCZDQo+DQo+IFRoZSBmaXJz
dCAzIEkgcmVwbGFjZWQ6DQo+IF9zb2NrZXQtPm5hdGl2ZSgpIC0+IF9zb2NrZXQtPm5hdGl2ZV9o
YW5kbGUoKSAgIENvbXBpbGVzIE9LLg0KPg0KPiBUaGUgbGFzdCAyIGFyZSBmcm9tIHRoZSBzYW1l
IHBsYWNlIGluIHgzMDBfaW1wbC5jcHAuIFRoaXMgaXMgYSB0aW1lDQo+IGxvb3Agb2YgMSBtcywg
dW50aWwgdGltZW91dC4gVGhlIGNvZGUgaXMgcGVyZmVjdGx5DQo+IHNvdW5kIDoNCj4gYm9vc3Q6
OnN5c3RlbV90aW1lIHRpbWVvdXRfdGltZSA9IGJvb3N0OjpnZXRfc3lzdGVtX3RpbWUoKSArDQo+
IGJvb3N0Ojpwb3NpeF90aW1lOjptaWxsaXNlY29uZHModGltZW91dCAqIDEwMDAuMCk7DQo+DQo+
IFdoYXQgdGhpcyBoYXMgdG8gZG8gd2l0aCBzdWJzZWNvbmRfZHVyYXRpb24/DQo+DQo+ICBGcm9t
IC91c3IvaW5jbHVkZS9ib29zdC9kYXRlX3RpbWUvdGltZV9kdXJhdGlvbi5ocHA6IDI4NQ0KPiBw
dWJsaWM6DQo+ICAgICAgLy8gVGhlIGFyZ3VtZW50IChzcykgbXVzdCBiZSBhbiBpbnRlZ3JhbCB0
eXBlDQo+ICAgICAgdGVtcGxhdGUgPHR5cGVuYW1lIFQ+DQo+ICAgICAgZXhwbGljaXQgc3Vic2Vj
b25kX2R1cmF0aW9uKFQgY29uc3QmIHNzLA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB0eXBlbmFtZQ0KPiBib29zdDo6ZW5hYmxlX2lmPGJvb3N0Ojppc19pbnRlZ3JhbDxUPiwg
dm9pZD46OnR5cGUqID0NCj4gQk9PU1RfREFURV9USU1FX05VTExQVFIpIDoNCj4gICAgICAgIGJh
c2VfZHVyYXRpb24oaW1wbF90eXBlKHRyYWl0c190eXBlOjp0aWNrc19wZXJfc2Vjb25kID49DQo+
IGZyYWNfb2Zfc2Vjb25kID8gc3MgKiBhZGp1c3RtZW50X3JhdGlvIDogc3MgLyBhZGp1c3RtZW50
X3JhdGlvKSkNCj4NCj4gSSBjb3VsZCByZXdyaXRlIHRoZSB0aW1lIGxvb3AgaW4gQywgb3V0c2lk
ZSBib29zdCwgYnV0IGRvbid0IHdhbnQgdG8NCj4gYnJlYWsgc3RydWN0dXJlLiBBbnkgaWRlYXMg
d2h5IGlzIHRoZSBjb21waWxlciBjb21wbGFpbmluZz8NCj4NCj4gVElBDQo+IE5pa29zDQo+DQo+
DQpVYnVudHUgMjAuMDQgKmFscmVhZHkgcGFja2FnZXMqIFVIRC0zLjE1LjAuMCwgc28gZmlndXJp
bmcgb3V0IGhvdyB0byANCmNvbXBpbGUgYSBNVUNIIE9MREVSIHJlbGVhc2Ugb2YNCiDCoCBVSEQg
b24gMjAuMDQgd291bGQgcGVyaGFwcyBiZSB1c2VmdWwgZm9yIHBlb3BsZSB3aG8gcmVhbGx5LCBy
ZWFsbHkgDQpuZWVkIGEgTVVDSCBPTERFUiByZWxlYXNlIG9mIFVIRC4NCiDCoCBCdXQgMy4xNS4w
LjAgYWxyZWFkeSB3b3JrcyBvdXQgb2YgdGhlIGJveCBmcm9tIHRoZSBwYWNrYWdlIHJlcG9zIGZv
ciANClVidW50dSAyMC4wNC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
