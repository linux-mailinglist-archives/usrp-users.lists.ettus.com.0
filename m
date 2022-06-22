Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDA5554C25
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 16:05:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B810E38405D
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 10:05:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655906755; bh=82bS2d+dAiPs1W/DtirkOqmDgnW9NarV49EQXuwmD7M=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yd8q5c2FFsgnjtdnooXTo8EdJf7KRb1KaLgVV2eNyQ4VK6fqZUy6fhRwXFM+qIlcZ
	 D26Shb43ECkln6YChp38P2eWF1ASZ+LF/TsU/8vMpqYZMz3e5Jkzx93tjRSI0HEzr7
	 fe6poVI9lSEDnhkiWlBS2M7dtIb0KuhsVWUrVVKxLO2dkDvAq1aKJJqk3vTb2O5q/Y
	 4XITGLXmgj2pPr+KpOIUNLj7DJZuYGOeD5wItnYee1SGehPGYCdHs9VjOOSXQI+5NO
	 1qAnkhlKguCrnDCPI6Pj2a/GdQFvLBd7T9qvMFzoc354IROxJplU7ktQM/eJnBImFa
	 RVJ+l0zvWFcWg==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 58DDC383FC7
	for <usrp-users@lists.ettus.com>; Wed, 22 Jun 2022 10:04:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a9CMR+c9";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id p21so618492qki.7
        for <usrp-users@lists.ettus.com>; Wed, 22 Jun 2022 07:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=iqKj4sPAFCARuHpOdWASfzfU21LgiCn8sS2zT9ezi68=;
        b=a9CMR+c9O4jhVnHkw8peHiz9mYXDPJtFVyUEJ60op+z7MUq2xFBAkw9At8Beud6cI0
         NQLjdhbFbpM69dfY4B3N/OHZ3JhB9Ty3v4OlzJtQ85qVeo1Ttd+HncwCfPkHsgsTHgp4
         hzRfjfHxal/ush+K6690lRwmdY/blRdIl42uTrHpOZy5QwvYSmfBCN8RDn6eom04ttHo
         QItqlyY99FLHz/j+UrNuqxr8cNXFYx3nlr2c3G08OjhnZLbp/dVrQ4fm7qhETEQL4OQg
         rpwGdGROeh6YHdW1JSb4jaM9gvtvqifB/GoIqiBvXRJViMeBfNlR0lmKhWkf7x+BmcW0
         RLHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=iqKj4sPAFCARuHpOdWASfzfU21LgiCn8sS2zT9ezi68=;
        b=e+UrPUSyzhqZ8AEVoklFH484/1b8LyL1JcbmoH9gGMgrT4lQYhYRdZcbcPtvMyDHvA
         bHPSW30wCRsAn6/q+bAlUc5C7/8Mye6eREReBg4L3Vz30CqrlgSUOUZOoQ3ddxIP/O9S
         bGxL3prD6k1Gd3LvMN7qDHj4jxfpeOAyuUb6xo4+AxVxFOF2paTARptKCw6A/vXwgE8G
         SGS+SbYVnFRCmR5UfJM1Q6zWpoylx/FVmk69+mruj3jokrAxmtDCZUvEP9cX6XxrUj6M
         Wp0GpiRSR58c+62nQdPC+qfZTJs+K1AZK24zHkjQfc+SKmLutbl5BAvTb+703NHLi482
         ar+w==
X-Gm-Message-State: AJIora+5iKTXuTUcpknIsCJ222kmUoym/f6RR0fbIHFWKcWWZ4CoWJcC
	gjRDVGImjcMl1WJVmS/qu8k=
X-Google-Smtp-Source: AGRyM1u08EehzngW34WzY/q+QQNwhwjI7V+mw5o5clWeMVaoVF9vpR4wlCBztGwXf6Q40Dx9tnbXJQ==
X-Received: by 2002:a05:620a:4505:b0:6a6:f875:a609 with SMTP id t5-20020a05620a450500b006a6f875a609mr2413936qkp.710.1655906698387;
        Wed, 22 Jun 2022 07:04:58 -0700 (PDT)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id h8-20020ac85148000000b003117ee89a51sm4383510qtn.70.2022.06.22.07.04.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 07:04:57 -0700 (PDT)
Message-ID: <5fd92252-5239-c013-0e42-5ff6a74db4e5@gmail.com>
Date: Wed, 22 Jun 2022 10:04:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Berkay SAYGILI <zuhasdasn@gmail.com>
References: <d636bd419e2548878b27baeacbca4b39@gmv.com>
 <6cc298a5-c5c6-27e4-f5d6-b23a2975e372@gmail.com>
 <CAB__hTQY491Q0xiYWY75hTpbEV3u744uYMr9EK3xk-R-Lzy+RQ@mail.gmail.com>
 <1e81a40f9ccc4a15be101a63c926b8f7@gmv.com>
 <836ea247-5c8d-c5cd-86d9-78372ef7f99e@gmail.com>
 <CAB__hTTPKrcry6NmiP8sLuH1TGsu1tq3q=3Rh+DE1mBXmw3zRw@mail.gmail.com>
 <fd555cbc7d2c4498bd1fa48ee720af7d@gmv.com>
 <f2e476e2-20c7-5f0d-18ff-fb14ba86d223@gmail.com>
 <7ac64ef957f2477ea403b0b03739ce8c@gmv.com>
 <a925d2f2-aa2b-4e2a-318c-248c2c101178@gmail.com>
 <053b1b73b720470b846a73d8f79c5f72@gmv.com>
 <CAB__hTQGyfjs=1r3cffcfac8=TN-DTRqTUL2WD8KQXXx062FGw@mail.gmail.com>
 <CAA7+tqSZ2KtkP1Kmu=a2Q4Rvk=hbdqJaeAEA_dYz2p1xG0bUVg@mail.gmail.com>
 <CAGNhwTP07=GSHcfkgczAActtxLqjQe66g9c_YAJoiQ+anio5Rg@mail.gmail.com>
 <9595e8fe-e16f-2f57-81f0-bdc6967f9b9a@gmail.com>
 <CAA7+tqRdwco1ENUZV+W9b3a_vvskcVFuD25CM6XC_J3VNLMeog@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA7+tqRdwco1ENUZV+W9b3a_vvskcVFuD25CM6XC_J3VNLMeog@mail.gmail.com>
Message-ID-Hash: YEM2WZNDN5YMUYTEW3W63R4Q26J2HVY6
X-Message-ID-Hash: YEM2WZNDN5YMUYTEW3W63R4Q26J2HVY6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YEM2WZNDN5YMUYTEW3W63R4Q26J2HVY6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNi0yMiAwOTowNSwgQmVya2F5IFNBWUdJTEkgd3JvdGU6DQo+DQo+IE5vdywgSSBz
ZWUgdGhhdCBEUERLIHdvcmtzIGZpbmUgd2l0aCBnaXZlbiBVSEQgZXhhbXBsZXMuIEJ1dCwgaXQg
DQo+IGZhaWxlZCB3aXRoIEdudXJhZGlvLiBDYW4gd2Ugc2F5IHRoYXQgR251cmFkaW8gaXMgdGhl
IGJvdHRsZW5lY2s/IG9yIA0KPiBhbSBJIGRvaW5nIHNvbWV0aGluZyB3cm9uZz8gSGFzIGFueW9u
ZSBtYWRlIHRoZSBncmFwaCBpbiB0aGUgc2Vjb25kIA0KPiB0ZXN0IHdvcms/IEJ5IHRoZSB3YXks
IGl0IGlzIG11Y2ggd29yc2Ugd2hlbiB0cmFuc21pdHRpbmcgd2l0aCANCj4gR251cmFkaW8gYXQg
ZnVsbCBiYW5kd2lkdGggd2l0aCBvciB3aXRob3V0IERQREsuDQo+DQo+IFRvIGNvbXBhcmUgSW50
ZWwgYW5kIE1lbGxhbm94IE5JQ3MsIEludGVsIHdhcyBkcm9wcGluZyBzYW1wbGVzIHdpdGggDQo+
IEdudXJhZGlvIHdpdGggdmVyeSBsb3cgc2FtcGxlIHJhdGVzLCBNZWxsYW5veCBzdGFydGVkIGRy
b3BwaW5nIHNhbXBsZXMgDQo+IGFmdGVyIDEwMCBNU1BTIHdpdGggYm90aCBjaGFubmVscyB1c2Vk
LiBCdXQsIEkgd2FzIHVzaW5nIERQREsgMTguMTEsIA0KPiBhbmQgVUhEIDQuMCB3aXRoIHRoZSBJ
bnRlbCBOSUMsIHNvIHRoYXQgbWlnaHQgYmUgdGhlIGNhc2UuDQo+DQo+DQo+IEJlc3QgcmVnYXJk
cw0KPg0KPiBCZXJrYXkgU0FZR0lMSQ0KPg0KWW91IGFyZSwgdG8gYSBjZXJ0YWluIGV4dGVudCBj
b21wYXJpbmcgYXBwbGVzIGFuZCBvcmFuZ2VzLsKgIFRoZSANCiJiZW5jaG1hcmtfcmF0ZSIgZXhh
bXBsZSBuZXZlciBhY3R1YWxseSAqRE9FUyogYW55dGhpbmcgd2l0aCB0aGUgc2FtcGxlcy4NCg0K
WW91ciBHbnUgUmFkaW8gZXhhbXBsZSB3cml0ZXMgdGhlbSB0byBhIGZpbGUuwqDCoCBUaGlzIGlz
IE1VQ0ggbW9yZSBleHBlbnNpdmUuDQoNCkluICpnZW5lcmFsKiB0aGUgY29zdC1wZXItc2FtcGxl
IGZvciB5b3VyIHR5cGljYWwgR251IFJhZGlvIGFwcGxpY2F0aW9uIA0Kd2lsbCBiZSBjb25zaWRl
cmFibHkgaGlnaGVyIHRoYW4gcnVubmluZyBzaW1wbGUgVUhEICJuYXRpdmUiIGJlbmNobWFyayAN
CnByb2dyYW1zLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
