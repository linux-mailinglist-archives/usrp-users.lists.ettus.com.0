Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D516ED955
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 02:27:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E01D38489D
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 20:27:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682382432; bh=JrVNKUtBu6bEVeEGT0IZxwvped9SSDAVUA03CL8ygB4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zfArhI4xQvRK9PLfuiQEN4hRIuuwRw9rkVEfrvlYZpsnlPwIzCUXH5xsttX6rvLH8
	 B/xJsuvQ3gQ2+wTA5fjTKjYiok2CGpGRphH5LkSR+xfwQM7gr5mjyGp14TDB8JRRMp
	 pB4xg4Hv5hKbTqFIgiRK2evXCxQEXfbackBsrsWjjhh61s1d4WCMUcv8Y/FamVt6Xl
	 Bi3nkWcvZJaNOmyX8mbgLJSTm0iAKNZZ9dUF7DCIAGEM7tQMTqdx0zUWWX2Vw5rvLA
	 mCay3ohHhWTPOLm+JONGdklg9b4BL04GMKUwD4NZWLyyK8u6BBQXtFpr+7ptu2fkct
	 lq8++dnh0fViw==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 4DB95384876
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 20:26:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HyiOtoSk";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-5ef465a52e8so51197126d6.0
        for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 17:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682382394; x=1684974394;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GI/hhGVzg9hn5PYWdv/pgDeKch+aT54XpyRsp9evSMI=;
        b=HyiOtoSkcOT2PYZbBRinZugpJRK5BicLg7miVM9n/UR06wpcOdINZYMPkoTg5ECsys
         CviOOx2VxOEI4/O6RAtimpVlgov7KQ2EDNj44P9+f2t0sMplOGye2Tx9DI8vNozP4sVZ
         OWRIKFEz9mD5NY5d2Qxi1DTo5rg0unE64GhYuGrG3njfwd9C3glSpaBuv9lzKt06RoTV
         dL4o+UbF4xoJHmQz/vXkClgmpO8dPSr8U2kIeI/xtR1sNgdvqZpWOfugMowFkesnEine
         MVBeyv+g9Xtzccn9SuxFalxDPyb9SMzsJGEmZyMSoI53J2xNLckTSVcbi/3XvUgqSI36
         UQxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682382394; x=1684974394;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GI/hhGVzg9hn5PYWdv/pgDeKch+aT54XpyRsp9evSMI=;
        b=AY4bQ5WbZrJVLK8rBeRBfdzKpXk+RqFSskUyDe5Cqzq3r4sy02BepZcdX1ca44Y5ei
         i/3MPN/BYD7vsS1B6+A0x35nDXzLk6jxuDvK2rqooqiB/jYOcOH97KxLscHj6aGj/lwK
         lTQ5MdmOnBRQGZi0HTgcfyjHHKTUccAZhNURxzLPR0lNe3xHwoSOF9vi+EfL3HJAZFAD
         DG7hxaz+MHpdNy9inCLz+iCdxGaEG4crMDxIY7Hd/cVO0TxsmiR97GJWGl6XFUYxHgq+
         e8Qxoer7SCPGJlsmyoVJ9cU7N3dXukdJlNIVgcow1+0kpuEFvXvxK5MDgEunoksLf3hx
         8QqA==
X-Gm-Message-State: AAQBX9d7tSiyAe+CMnYPpjO3y44tJNWlpJohrYJjmXb6pCYu+wF3VfA9
	kgC0pS6DkBbAosE6lailREuP5ccHP9E=
X-Google-Smtp-Source: AKy350bVohSI6JecJmFgpct8nol3SaGFO5XpwElRlBXkDQL9F5FP+24QZvaLWEMjvoVK6OaaBYN6Ng==
X-Received: by 2002:a05:6214:76e:b0:615:53c3:f338 with SMTP id f14-20020a056214076e00b0061553c3f338mr8827898qvz.40.1682382394574;
        Mon, 24 Apr 2023 17:26:34 -0700 (PDT)
Received: from [192.168.2.158] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id y19-20020a05620a44d300b0074db94ed42fsm3955960qkp.116.2023.04.24.17.26.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 17:26:34 -0700 (PDT)
Message-ID: <88329dc7-5b70-b6c5-40e4-d07a2ff1902a@gmail.com>
Date: Mon, 24 Apr 2023 20:26:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <4tQxPRwaGjZ4RqB6APYFnpkIi8joiy06zJs1yCJzc@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <4tQxPRwaGjZ4RqB6APYFnpkIi8joiy06zJs1yCJzc@lists.ettus.com>
Message-ID-Hash: EWKRVN63JP6GYNWURMAEKJSZFPDWJI7V
X-Message-ID-Hash: EWKRVN63JP6GYNWURMAEKJSZFPDWJI7V
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Multicast support on x300/x310 with UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EWKRVN63JP6GYNWURMAEKJSZFPDWJI7V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjQvMDQvMjAyMyAyMDoxNywgbnJpZWRlbEBzZXJyYW5vc3lzdGVtcy5jb20gd3JvdGU6DQo+
DQo+IFRoYW5rIHlvdSwgTWFyY3VzLiBUaGUgc3Vic2NyaXB0aW9uIHRvIHRoZSBtdWx0aWNhc3Qg
VURQIHNob3VsZCBub3QgYmUgDQo+IGFuIGlzc3VlLCB3ZeKAmXJlIExpbnV4LWJhc2VkIGFuZCB0
aGUgSVAgc3RhY2sgd2lsbCB0YWtlIGNhcmUgb2YgdGhlIA0KPiBJR01QIGZ1bmN0aW9ucy4NCj4N
Cj4gTXkgY29uY2VybiBpcyBpZiB0aGVyZSBpcyBzb21ldGhpbmcgd2l0aGluIFVIRCB0aGF0IHdv
dWxkIHByZXZlbnQgdXMgDQo+IGZyb20gdXNpbmcgYSBtdWx0aWNhc3QgZGVzdGluYXRpb24gSVAg
YWRkcmVzcy4gT2J2aW91c2x5IGZsb3cgY29udHJvbCANCj4gaXMgbm90IGdvaW5nIHRvIHdvcmsg
d2l0aCBtdWx0aWNhc3QsIGJ1dCBJ4oCZbSBob3BpbmcgZXZlcnl0aGluZyBlbHNlIGlzIE9LLg0K
Pg0KSSB0aGluayBpdCB3b3VsZCBkZXBlbmQgb24gaG93ICJrbm93bGVkZ2VhYmxlIiB0aGUgKHZl
cnkgdmVyeSB0aGluKSANCklQL1VEUCBzdGFjayBpcyBvbiB0aGUgWDMxMC0taXQncyBhbGwgZG9u
ZSBpbiB0aGUgRlBHQSwgc28NCiDCoCBpdCdzIG5vdCBsaWtlbHkgdG8gY2FyZSBtdWNoIHdoYXQg
SVAgYWRkcmVzcyB5b3UgZ2l2ZSBpdC4gQWx0aG91Z2gsIA0KdGhpbmtpbmcgYWJvdXQgaXQsIGl0
IG1heSBub3QgYmUgInNtYXJ0IiBlbm91Z2ggdG8NCiDCoCBzZW5kIHRoZSBtdWx0aS1jYXN0IHBh
Y2tldHMgYXMgZXRoZXJuZXQgbXVsdGljYXN0cy7CoCBMaWtlIEkgc2FpZCwgdGhlIA0KSVAgc3Rh
Y2sgb24gdGhlc2UgZGV2aWNlcyBpcyB2ZXJ5IHZlcnkgInRoaW4iLg0KDQpJZiBpdCB3ZXJlIG15
IHByb2JsZW0sIEknZCBkZXNpZ25hdGUgYSBob3N0IHRvIHJlY2VpdmUgYWxsIHRoZSB0cmFmZmlj
IA0KaW4gdGhlIHVzdWFsIGZhc2hpb24sIGFuZCBtdWx0aS1jYXN0IGl0IG91dHdhcmRzIHRvDQog
wqAgdGhlIG90aGVyIHBhcnRpY2lwYW50cy4NCg0KDQo+IFlvdXIgcG9pbnQgYWJvdXQgZGVjb2Rp
bmcgdGhlIENIRFIgcGFja2V0cyBpcyB3ZWxsIHRha2VuLg0KPg0KPiBUaGFua3MsDQo+DQo+IE5l
YWwNCj4NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
