Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 484036EE530
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 18:02:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CCED3848A5
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 12:02:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682438523; bh=JzXuLVe3M48Yf84r4BnAgXxlIg8cwWp8mv+y0UOUpGw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=H4Ugmxk9fkSfRTK75/WwSlx7oCVTQeS6rWttDthfTHFxqVLlx8y8R8JpuPRalxNFl
	 oPewbLTvygAkGPmzzie0ss0HUdIwvq0pXL+TRQVvBrvWO2NxjxlgCVH+kQ46opUr28
	 AfWEAjw4W0yJPtJFVXFAYHYNqoxASVToY1e2JCfNx7MlqxXu7478vP3XmOhdF8xQOG
	 4MaRLu6EENQs/u4UDcuujEZXfO5/uixRjVDnrOLJpLO1J+7/k6XT18LqxY10OygdqK
	 y6FVzx5BIJcfSWIQ2vf5YQt07syeRMLmesS1sscWezqsjOHOrftHKYhQyaBtqc0JnP
	 +WSQN2WtmjYuA==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id DFCBF384889
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 12:01:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SE7c6gWq";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-74da25049e0so519720985a.0
        for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 09:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682438480; x=1685030480;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bb/wM1zTkQWNoUBAFA9yIANV68LDM7e6lHRBXsGWk/s=;
        b=SE7c6gWqAKA8B2rpoISXLmBpVBaUFiaA37lx7Gk8vsQBAKFT7Qkh0rUhkd3LAbKGsR
         0kEEM7030DTwzeHWn4haRu6xLdWHpn32qtGuWTYBIrYfL6iuSDkeKO8Qe1IiOOS60YXF
         fzvbhWRRnxQuPTukXot7LktZtycAzkfylVNtng2+vzLFKrsrEj6hD5S+zo/A6kBPLKX3
         0k3y3WFwEgy5KmhyC0gHRFISaK+Q69PA9hk7QuIX9UjZ6aSf8LjTKoKXGaQiBPnmNpsx
         uy8W/FnClByMfNDk33c2cnwmS/ZKrmht6y914i9BOonmUIIIaXIwMCAMceah0KErTtYd
         LMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682438480; x=1685030480;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bb/wM1zTkQWNoUBAFA9yIANV68LDM7e6lHRBXsGWk/s=;
        b=HgxIYAb4T+AxK79RTXtPWSJXJo+Avg8QoErjofAaLc0B/TInbK+NDLwJ8B3Ck+AbhY
         6faafFfUiQ29YnhJb4F2hBAo5dtq5UzWpa5aeTiFyDjoPLdHbNBpjW+tVI/lHPTapVhk
         jHS5D7DWIjM6V2TcNZNPH4AUT6KtzDRYE366sgAmD9MDmV6RMu/xfhqNkUnU1mhp2Meo
         GHkmeGzod+CX0CoXVoggm1eeq+56n21iimYrNqrVVOjN3fF79myH+67NMLXvTXjx0Ym7
         7TFb1I6rPXRWPOnkbEgxPTqyDFwva/BCum3VPjUIt6896rFamjBJ+EIImVgDA3XhbtK6
         Aowg==
X-Gm-Message-State: AAQBX9c/Vn1W+IRMvJj1OinwHf6axWpnuAgylxBpEXm1RgreEYZ5p33K
	aN30iDkdwRyeHmCmP4saJKh5liYC79U=
X-Google-Smtp-Source: AKy350ZALSONhUXq/oD5BKOmQuyCLSZwKw1ZbR1Ou0c5NpVXGvgVkTMreJwkzi5T2cJLGU/yKet/ew==
X-Received: by 2002:ac8:5bd4:0:b0:3f0:842d:3c2a with SMTP id b20-20020ac85bd4000000b003f0842d3c2amr14933364qtb.20.1682438480042;
        Tue, 25 Apr 2023 09:01:20 -0700 (PDT)
Received: from [192.168.2.158] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id v9-20020a05622a188900b003ef467f4fe1sm4563123qtc.88.2023.04.25.09.01.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 09:01:19 -0700 (PDT)
Message-ID: <167fcd54-e6bc-9cba-8a14-f6bf40a6ceb0@gmail.com>
Date: Tue, 25 Apr 2023 12:01:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
 <20230425143440.1139F4D935@mail.futurelabusa.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20230425143440.1139F4D935@mail.futurelabusa.com>
Message-ID-Hash: 3OUMWHC36DVPTIEPROPPYLTI55PCCCBM
X-Message-ID-Hash: 3OUMWHC36DVPTIEPROPPYLTI55PCCCBM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3OUMWHC36DVPTIEPROPPYLTI55PCCCBM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDQvMjAyMyAxMDozNCwgSmltIFNjaGF0em1hbiB3cm90ZToNCj4gV2UgaGF2ZSBiZWVu
IHdvcmtpbmcgd2l0aCBOMzEwIGFuZCBOMzIxIHJhZGlvcy4gSXQgc2VlbXMgdmVyeSBkaWZmaWN1
bHQgdG8gZ2V0IGxvbmcgdGVybSBjb250aW51b3VzIG9wZXJhdGlvbiB3aXRob3V0IHVuZGVyLXJ1
bnMgZXZlbiBhdCB0aGUgc2VlbWluZ2x5IHZlcnkgbG93IGRhdGEgcmF0ZSBvZiAxMi41IE1zcHMu
DQpJcyB0aGlzIGZvciBhIHNpbmdsZSBjaGFubmVsLCBvciBtdWx0aXBsZSBjaGFubmVscz8NCg0K
DQo+DQo+IEN1cnJlbnRseSB3ZSBhcmUgdHJ5aW5nIHZhcmlvdXMgZmlybXdhcmUgdmVyc2lvbnMs
IGNoYW5naW5nIGJ1ZmZlciBzaXplcywgZXRjLiwgYnV0IHNvIGZhciBub3RoaW5nIGhhcyBnb3R0
ZW4gdGhlIHJhZGlvcyB0byB3b3JrIGNvbnNpc3RlbnRseSBmb3Igc2V2ZXJhbCBob3VycyB3aXRo
b3V0IHVuZGVyLXJ1bnMuIE9uZSBydW4gbWlnaHQgZ28gZm9yIDMgaG91cnMgd2l0aG91dCBmYWls
dXJlLiBUaGUgbmV4dCBhdHRlbXB0IHVuZGVyLXJ1bnMgYWZ0ZXIgMTAgbWludXRlcy4gSXQgaXMg
dmVyeSBlcnJhdGljLiBPdXIgbmV4dCBhdHRlbXB0IHdpbGwgYmUgdG8gaW1wbGVtZW50IGFuIGlu
cHV0IEZJRk8uDQo+DQo+IFRoZSBjb25maWd1cmF0aW9ucyBoYXZlIGRpcmVjdCBjb25uZWN0aW9u
cyBiZXR3ZWVuIGEgZmFzdCBob3N0IChVYnVudHUgd2l0aCB1bm5lY2Vzc2FyeSBzZXJ2aWNlcyBp
bmNsdWRpbmcgTmV0d29yayBNYW5hZ2VyIGRpc2FibGVkIG9yIHJlbW92ZWQpLCBhbmQgdGhlIHJh
ZGlvIHdpdGggMTAgR2JpdCBhbmQgZnJhbWUgc2l6ZSBvZiA5MDAwLiBXaXRob3V0IHVzaW5nIGp1
bWJvIGZyYW1lcyB0aGUgYmVoYXZpb3Igd2FzIGZhciB3b3JzZS4NCj4NCj4gQW55IG90aGVyIGlk
ZWFzPz8NCj4NCj4gVGhhbmtzLQ0KPiBKaW0NCj4NCj4NCj4NCj4gQXQgMDg6MjIgQU0gNC8yNS8y
MDIzLCBoNTdqYWZhcmlAZ21haWwuY29tIHdyb3RlOg0KPg0KPj4gSGksDQo+Pg0KPj4gSSBhbG1v
c3QgZm9sbG93IHRoZSBsaW5rIHRvIHR1bmUgYWxsIHRoZSBwYXJhbWV0ZXJzIHNldHRpbmcgZXhj
ZXB0IGluc3RhbGxpbmcgRFBESywgYnV0IGZvciBtb3JlIHRoYW4gMjBNIHNhbXBsZSByYXRlIEkg
c2VlIMOi4oKsxZNVw6LigqzCnSB1bmRlcmZsb3cuIElzIGl0IG5vcm1hbD8gY2FuIGl0IGJlZW4g
c29sdmVkIHRvIGFjaGlldmUgbW9yZSB0aGFuIDIwTSBzYW1wbGUgcmF0ZSB3aXRob3V0IGluc3Rh
bGxpbmcgRFBESz8gdGhhbmsgeW91Lg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
