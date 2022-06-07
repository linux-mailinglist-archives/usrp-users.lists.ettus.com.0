Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DC753F319
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 02:54:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2671B384105
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 20:54:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654563269; bh=2J92cjOVcSgKfojM0VpiYUhhAjtTXmJTHqAiIFMQ8fM=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LV1N74ADGzYQ0RIcg95Z8zztiXSMenF721v81FmkO/72KhNDFxkH+mybVedswznqK
	 OUmjjwvDWleWtHDapWB1XrPvrk3ynm7CLDISDq5MOexexZpbPEoEXgxH6m5pPe4Hk1
	 nOXWrwzWnz9rcMSOcpzj6GlhQxkSAhHQexhMXpcq0t0k6z0883lEImN9/sDYdrtKdA
	 WE1aU8VXTVue1tQB/izslQqeaBBKppexEuPfYukTj8yr948D0gXErbLnW0cQ/IWUHB
	 ZSL1UrkwdviD87PdY20HK0CleWeVb7/CieEgYt32pIzgJQVAIiL6xjE99CBIAFBKmt
	 ReYUc5JqEnP0A==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 077A7383DB6
	for <USRP-users@lists.ettus.com>; Mon,  6 Jun 2022 20:53:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RhiabiyK";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id n197so5110494qke.1
        for <USRP-users@lists.ettus.com>; Mon, 06 Jun 2022 17:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=qoH98sntK5sNCO85T+j/GAH5scNnq/UsddaYeqhxzGk=;
        b=RhiabiyKcLI3n97J6P+e/lHS0ELq1MH9QnqGu37H+D8iVWKTo4A/0Z+VDu2cNQ2Vgp
         MyLX+3vwyO8aNzp1JcTt7O9DzpRa8RdyThilU30f6hN2QM6lt28Jg1C2JMAtxkFM/cCC
         0aDggxDZjiyQmbYanzuI/bYW1VADTcjz//6uAf51OVhr261GVolcP6YCKzTYxA0Qjj81
         IElZn3X+9Cwqd2oCJGfHEVSItJq47CHV+xiq/HydAM0feTr9jKLaKF6IrUM7eLdgfTMi
         dWiih1Xlo5QBDQuq8sDwoYXgckwq4Kv6LOWoZ0rnccpgCTqjrZ6w5heYETYP5e/qd4fK
         ab8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=qoH98sntK5sNCO85T+j/GAH5scNnq/UsddaYeqhxzGk=;
        b=xN3QzIdRB155QD+BJSYWw5YFQGi2YBi62AIFDqJDIARxHYyjCDEHT0FCQdudwyl6lp
         dxrYXU6b+AlnUDs0b1f8+tGiMHOrwuH7vKCOYj4VNyW10+dtQ18OcPsdD7ccFfqaibOT
         OA3d3YvlKr1GVWxu+/SVBDbPArNJ92C1ebjORhXG9Ol3DFtwx5BBQ3uTC19pwIVpyilP
         hQ9c9E6lsLV/Wv5ZR4nZnBodLSolvnZfBKVtJViMMiHttq1to0jbELGNmMk00oZhdnAl
         C+X0i30XWoG/UN4cv4bMWR806mZaIf10zD0h7bBnEUJI7CLEm/Qlj6xVueGEhohxHwqV
         bnDw==
X-Gm-Message-State: AOAM532B8Ik4butTQnud+JbOqj9hmAWfAPYcRWuD9OQi2l90J53e67qh
	vzXMvdK2hKaFl9kiIFDj1i+P3h/s6NrwgQ==
X-Google-Smtp-Source: ABdhPJwIvGF0JWV9XX9GG7KcYeIOScFErUuCWLPqqBOL6a4RBiCucyNxAEgpFd1CiOAeMaATV4N38w==
X-Received: by 2002:a05:620a:1a98:b0:6a5:cdb:a918 with SMTP id bl24-20020a05620a1a9800b006a50cdba918mr17883639qkb.532.1654563207520;
        Mon, 06 Jun 2022 17:53:27 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id y123-20020a379681000000b006a648cdd3dasm12597063qkd.48.2022.06.06.17.53.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 17:53:27 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 6 Jun 2022 20:53:26 -0400
Message-Id: <9FD32434-722E-4B79-8BE9-D009BF88E87B@gmail.com>
References: <PH1P110MB16655B5C9FE3A2DF4EE550F3B7A29@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB16655B5C9FE3A2DF4EE550F3B7A29@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
To: David Raeman <david@synopticengineering.com>
X-Mailer: iPhone Mail (19F77)
Message-ID-Hash: EZJXYRYGTP4B5ZLPXPT2JYP2D4JY3JWE
X-Message-ID-Hash: EZJXYRYGTP4B5ZLPXPT2JYP2D4JY3JWE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jon Beniston <jon@beniston.com>, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EZJXYRYGTP4B5ZLPXPT2JYP2D4JY3JWE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmUgY291bGQgYWxzbyBiZSBGUEdBIGNvbnN0cmFpbnRzIHRoYXQgbWFrZSB0aGUgY2xvY2sg
YXJjaGl0ZWN0dXJlIG9uIHRoZSBFMzIwIG5lY2Vzc2FyeS4gDQoNClNlbnQgZnJvbSBteSBpUGhv
bmUNCg0KPiBPbiBKdW4gNiwgMjAyMiwgYXQgNzo1NyBQTSwgRGF2aWQgUmFlbWFuIDxkYXZpZEBz
eW5vcHRpY2VuZ2luZWVyaW5nLmNvbT4gd3JvdGU6DQo+IA0KPiDvu79IaSBKb24sIEkgZGlkIHNv
bWUgcG9raW5nIGFyb3VuZCBpbiB0aGUgY29kZSwgYW5kIEkgZG9uJ3QgYmVsaWV2ZSB0aGUgRTMy
MCBzdXBwb3J0cyB0aGF0IGZlYXR1cmUuIE9uIEIyeHggcmFkaW9zLCBpZiB5b3UgZG9uJ3Qgc3Bl
Y2lmeSBhbiBleHBsaWNpdCBtYXN0ZXIgY2xvY2sgcmF0ZSBpdCBoYXMgbG9naWMgdG8gZGV0ZXJt
aW5lIGFuIGlkZWFsIHJhdGUgYmFzZWQgb24gdGhlIHNhbXBsaW5nIHJhdGUsIGFuZCBpdCBleHBv
c2VzIGFuIGF1dG9fdGlja19yYXRlIHByb3BlcnR5IHRvIHRvZ2dsZSB0aGF0IGJlaGF2aW9yIGZy
b20gdGhlIGFwcGxpY2F0aW9uLiBDb252ZXJzZWx5LCBvbiB0aGUgRTMyMCByYWRpbyBpZiB5b3Ug
ZG9uJ3Qgc3BlY2lmeSBhbiBleHBsaWNpdCBtYXN0ZXIgY2xvY2sgcmF0ZSBpdCBhbHdheXMgdXNl
cyBhIGZpeGVkIHZhbHVlIG9mIDE2IE1IeiwgYW5kIHRoZSBpbXBsZW1lbnRhdGlvbiBoYXMgbm8g
bG9naWMgdGhhdCBJIHNlZSB0byBwZXJmb3JtIHRoZSBkeW5hbWljIHRpY2sgcmF0ZSBjYWxjdWxh
dGlvbnMuDQo+IA0KPiBTaW5jZSB0aGUgQjJ4eCBhbmQgRTMyMCByYWRpb3MgYXJlIGJvdGggYmFz
ZWQgb24gdGhlIEFEOTM2MSBSRklDLCB0aGVvcmV0aWNhbGx5IEkgdGhpbmsgdGhlIGxvZ2ljIGNv
dWxkIGJlIHBsYWNlZCBzb21ld2hlcmUgc3VjaCB0aGF0IHRoZSBFMzIwIGFuZCBCMnh4IHJhZGlv
cyBjb3VsZCBib3RoIHByb3ZpZGUgdGhlIGZlYXR1cmUuIEhvd2V2ZXIsIHRoZSBpbXBsZW1lbnRh
dGlvbnMgYXJlIHByZXR0eSBkaXZlcmdlZCAtIHRoZSBFMzIwIGlzIGJhc2VkIG9uIHRoZSBuZXdl
ciBNUE0gY29kZSBhcmNoaXRlY3R1cmUgYW5kIHRoZSBCMnh4IGlzIG5vdC4NCj4gDQo+IFNob3J0
IHN0b3J5IGlzIHRoZSBFMzIwIGRvZXNuJ3Qgc2VlbSB0byBzdXBwb3J0IHRoaXMsIGJ1dCBJIHRo
aW5rIGl0J3MganVzdCBhIG1hdHRlciBvZiBtaXNzaW5nIGJpdHMgaW4gdGhlIHNvZnR3YXJlLg0K
PiANCj4gQmVzdCwNCj4gLURhdmlkDQo+IA0KPiANCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+PiBGcm9tOiBKb24gQmVuaXN0b24gPGpvbkBiZW5pc3Rvbi5jb20+DQo+PiBTZW50OiBN
b25kYXksIEp1bmUgNiwgMjAyMiA2OjQ2IFBNDQo+PiBUbzogJ01hcmN1cyBELiBMZWVjaCcgPHBh
dGNodm9uYnJhdW5AZ21haWwuY29tPjsgdXNycC0NCj4+IHVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
Pj4gU3ViamVjdDogW1VTUlAtdXNlcnNdIFJlOiBFMzIwIEF1dG9tYXRpYyBtYXN0ZXIgY2xvY2sN
Cj4+IA0KPj4gSGkgTWFyY3VzLA0KPj4gDQo+Pj4+IElmIEkganVzdCB0cnkgdG8gcmUtbWFrZSB0
aGUgZGV2aWNlLCBJIGdldCBhbiBleGNlcHRpb24uIEVnOg0KPj4+PiANCj4+Pj4gICAgICAgICAg
ICAgICAgbV9kZXYgPSB1aGQ6OnVzcnA6Om11bHRpX3VzcnA6Om1ha2UoZGV2aWNlX2FyZ3MpOw0K
Pj4+PiAgICAgICAgICAgICAgIG1fZGV2LT5zZXRfbWFzdGVyX2Nsb2NrX3JhdGUoNjEuNDRlNik7
DQo+Pj4+ICAgICAgICAgICAgIC8vIEhvdyB0byByZXN0YXJ0IGEgc2Vzc2lvbiBoZXJlPw0KPj4+
PiAgICAgICAgICAgICAgICAgbV9kZXYgPSB1aGQ6OnVzcnA6Om11bHRpX3VzcnA6Om1ha2UoZGV2
aWNlX2FyZ3MpOw0KPj4+PiANCj4+Pj4gLi4uDQo+PiANCj4+PiBIb3dldmVyLCB0aGVyZSBpcyBh
IHNldF9tYXN0ZXJfY2xvY2tfcmF0ZSgpIEFQSSBjYWxsOg0KPj4+IA0KPj4+IGh0dHBzOi8vZmls
ZXMuZXR0dXMuY29tL21hbnVhbC9jbGFzc3VoZF8xXzF1c3JwXzFfMW11bHRpX191c3JwLmh0bWwj
YQ0KPj4gOTkNCj4+PiAyNTRhYmZhNTI1OWI3MGEwMjBlNjY3ZWVlNjE5YjkNCj4+IA0KPj4gWWVz
LCB0aGF0J3Mgd2hhdCBJJ20gY2FsbGluZyBhYm92ZS4NCj4+IA0KPj4+IFdoYXQgdGhlIGNvbnNl
cXVlbmNlcyBhcmUgZm9yIGNoYW5naW5nIHRoaXMgd2l0aGluIGEgc2Vzc2lvbg0KPj4+IGlzIG5l
Y2Vzc2FyaWx5IGRldmljZSBkZXBlbmRlbnQuICAgSWYgSSB3ZXJlIGdvaW5nIHRvIGRvIHRoaXMs
IEknZCB0ZWFyIGRvd24NCj4+IHRoZSBzdHJlYW1lcnMsIHNldCB0aGUNCj4+PiAgbWFzdGVyX2Ns
b2NrIHRvIHRoZSBuZXcgcmF0ZSwgYW5kIHRoZW4gcmUtY3JlYXRlIHRoZSBzdHJlYW1lcnMuDQo+
PiANCj4+IFRoZSBwcm9ibGVtIGlzLCB0aGF0IG1ldGhvZCBkb2Vzbid0IGFwcGVhciB0byBzdXBw
b3J0IGFuICJhdXRvbWF0aWMiIHJhdGUsDQo+PiB1bmxlc3MgSSdtIG1pc3Npbmcgc29tZXRoaW5n
Lg0KPj4gDQo+PiBUaGFua3MsDQo+PiBKb24NCj4+IA0KPj4gDQo+PiANCj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSBUbyB1bnN1YnNjcmliZSBzZW5k
IGFuDQo+PiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
