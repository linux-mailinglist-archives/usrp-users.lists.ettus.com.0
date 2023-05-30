Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B8C7169BF
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 18:35:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3661438466F
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 12:35:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685464555; bh=SuKybErUY2rwMLFG8SilZZgpMdHij2VTyoMkPQl3Iho=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=x9ReqBsPSEb4tu6jZDgWoF7ccaWdc7jMMxbNdsPuD+2QWtn4a0YqN7l6y/WCrMLmR
	 Y0itWqY+Jri1cIwTEtqPDMkifyVu4C7mCSEir9rfssFYYxgSn2v2SO1bw8CubcVLPB
	 5W7DiDGJ3R8bZTWq8tHePqWUQzyGYpaG305ZsQEXUOlDlqokdXt5SzfIymJPBQkWxB
	 6/i0AZg6m3b6d683KIdSS1uzISwm52XcC7c52lX8ZwriUyf6DUU+h2ut/Cihyx3fHv
	 Y0IO6EfWqowOYI5T8xrIKuKFEAR9KOopjvw2yNVCCOSGaGsOH58fx+ljxZghD3/Fdw
	 MozZjf1h/599Q==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 92B76380E39
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 12:34:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G04KDKUD";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-3f6b2af4558so22888941cf.1
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 09:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685464489; x=1688056489;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rzzhxhq5XsxTGsz6sefkYjzZv6aNrz5L3OENo7Q2JjM=;
        b=G04KDKUD/Dnl12tD/NeTIQlnpVIlsA3dnzABZ1GPt7wB87AjTJT8uepNtscYIp2L0E
         EroqVBvL1k6A7+adHDvr7cgTnVP28kXsemCKscE0kMJKHpbQ9kp0KekwjcVDnPyIHrqt
         m7pDM1EBcrEgD1SRdAIcO7VIRvZy30Qi6anBoX8aqBdRGR7sxpmYkzFzQUHJOqP5vLMx
         C5cjEuYkv7uDdglqsgGsspKRuQ6zXszCy02vF4Mel/EXBhzy5SR3cAcO54R4XX/YWWcB
         y2LDaBphDYB7ll2d7yCsYZFgvKuaFfm61JGJ1tcMLHDkbOUN9dIU0cIqndWQTYn79/V1
         qmaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685464489; x=1688056489;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rzzhxhq5XsxTGsz6sefkYjzZv6aNrz5L3OENo7Q2JjM=;
        b=BD5jVtHEpIxnFjdiEb9V4eGLaOkHOYIacy8+xGwDNphviUZ3d4olj5wkyupdTt+vrF
         R3FlVwP9ZWsnarGstB8TCrrl/JciRC/JX3fPMNBXLdLXhuwPRmEu55C+D8yVU+sjjLYR
         7zWW0GBXKQ9EnqPDOl4XumwWC+HF3WWPPhCcgC0O4tPehtvoEskeLoJL8IcZMGBUXJI5
         2Keg70UH229TH9DXyb80X+SW+080T6twgYb/3IJk9nQcaXn4sPWrV+wmNCcIQIbob70M
         67I5xtGUP3CXJF9NEGpPbtRxNHNDmqX05I5f3RHMLfkQe7RbgsTzBi15T0UPp5L+Lvt+
         E8Gg==
X-Gm-Message-State: AC+VfDz74quMUyFdV5Kgium1c0JlsOnKpNM/r/PR5TdUIBt2ETUp7Nwi
	lQqf2oYXYnvEORbZgjU747Tm/NKXbf78Ew==
X-Google-Smtp-Source: ACHHUZ75tK9U1VUWH7QfIsM7JxMa0Ky38kJhP9f4A4HaUhYx05UfXBTUzyRTY/9weAOZ0U61joZFGA==
X-Received: by 2002:ac8:5708:0:b0:3f2:19dd:979a with SMTP id 8-20020ac85708000000b003f219dd979amr2409705qtw.23.1685464489458;
        Tue, 30 May 2023 09:34:49 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id br5-20020a05622a1e0500b003ef5dc13bbbsm4822678qtb.85.2023.05.30.09.34.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 09:34:49 -0700 (PDT)
Message-ID: <92632e3c-80d1-54b5-d068-ffed81abbc24@gmail.com>
Date: Tue, 30 May 2023 12:34:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com>
 <CAFche=gYq5ctyMW7_GVrCzhr8WxcjQz3ydNkV6geHAUS72K=bQ@mail.gmail.com>
 <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM>
 <f77e6d5b-6a4b-beb2-80cf-2f69992bf4c9@o2.pl>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <f77e6d5b-6a4b-beb2-80cf-2f69992bf4c9@o2.pl>
Message-ID-Hash: NIEKGMUWZ7BZBBUXGWVFO7LD4ZFPY4UH
X-Message-ID-Hash: NIEKGMUWZ7BZBBUXGWVFO7LD4ZFPY4UH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 not powering on
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NIEKGMUWZ7BZBBUXGWVFO7LD4ZFPY4UH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMzAvMDUvMjAyMyAxMjowMywgUGlvdHIgS3J5c2lrIHdyb3RlOg0KPiBIZWxsbw0KPg0KPiBJ
J3ZlIGdvdCBhIHNpbWlsYXIgaXNzdWU6IGNvbXBsZXRlbHkgbmV3IFVTUlAgWDQxMCB0aGF0IGRv
ZXNuJ3QgcmVhY3QgDQo+IHRvIHBvd2VyIGJ1dHRvbi4NCj4gTW9yZSBzcGVjaWZpY2FsbHksIHRo
ZXJlIGlzIGEgbGl0dGxlIHNpZ24gb2YgbGlmZSAtIGl0IGNvbnN0YW50bHkgDQo+IHByaW50cyBz
b21ldGhpbmcgbGlrZSB0aGlzIG9uIFVBUlQgdGhhdCBJIHN1cHBvc2UgaXMgYSBwb3J0IG9mIFNU
TTMyIA0KPiBtaWNyb2NvbnRyb2xsZXI6DQo+IMKgLS0tIFVBUlQgaW5pdGlhbGl6ZWQgYWZ0ZXIg
cmVib290IC0tLQ0KPiBbUmVzZXQgY2F1c2U6IHJlc2V0LXBpbiBwb3dlci1vbl0NCj4gW0ltYWdl
OiBSTywgdGl0YW5pdW1fdjAuMC4xMzgyMS0yYmE5NzRiMmQgMjAyMS0wNy0xNSAxMTowNToxMCAN
Cj4gQGRjNmE5ZjBjZjhkN10NCj4gWzAuMDDvv70NCj4NCj4gLS0tIFVBUlQgaW5pdGlhbGl6ZWQg
YWZ0ZXIgcmVib290IC0tLQ0KPiBbUmVzZXQgY2F1c2U6IHJlc2V0LXBpbiBwb3dlci1vbl0NCj4g
W0ltYWdlOiBSTywgdGl0YW5pdW1fdjAuMC4xMzgyMS0yYmE5NzRiMmQgMjAyMS0wNy0xNSAxMTow
NToxMCANCj4gQGRjNmE5ZjBjZjhkN10NCj4gWzAuMDDvv70NCj4NCj4gLi4uDQo+DQo+IERvIHlv
dSBoYXZlIGFueSBpZGVhcyBob3cgdG8gc29sdmUgdGhlIGlzc3VlIG90aGVyIHRoYW4gcmV0dXJu
aW5nIHRoZSANCj4gZGV2aWNlPw0KPg0KPiAtLSANCj4gQmVzdCBSZWdhcmRzLA0KPiBQaW90ciBL
cnlzaWsNCj4NCkFyZSB5b3UgYWJsZSB0byBtZWFzdXJlIHRoZSB2b2x0YWdlIG9mIHRoZSBwb3dl
ciBzdXBwbHk/DQoNCg0KPg0KPiBXIGRuaXUgMTkuMDUuMjAyMyBvwqAxNTo0MSwgQXJqYW4gRmV0
YSB2aWEgVVNSUC11c2VycyBwaXN6ZToNCj4+DQo+PiBIaSBXYWRlLA0KPj4NCj4+IENvaW5jaWRl
bnRhbGx5IEkganVzdCBtZWFzdXJlZCB0aGUgb3V0cHV0IHZvbHRhZ2Ugb2YgdGhlIHBvd2VyIHN1
cHBseSANCj4+IGFuZCBmb3VuZCB0aGF0IHRoZSB0aHJlZSBvZiB0aGVtIHdvYmJsZSBhcm91bmQg
OCB0byA5IHZvbHRzLiBUaGV3IA0KPj4gcG9pbnQgaXMgdGhhdCBJIGhhdmUgdHdvIG9mIHRoZW0g
YW5kIHRoZXkgZG8gdGhlIHNhbWUgdGhpbmcsIHdoaWNoIA0KPj4gcmFpc2VzIHRoZSBzdXNwaWNp
b24gaXQgaXMgbm90IGEgY29pbmNpZGVuY2UuDQo+Pg0KPj4gSSBndWVzcyBJIHNob3VsZCBjaGVj
ayB0aGF0IHRoZSBBQyBwb3dlciBzb3VyY2UgaXMgbm90IHBsYXlpbmcgYSBiYWQgDQo+PiBqb2tl
IG9uIG1lLg0KPj4NCj4+IFRoYW5rIHlvdSwNCj4+DQo+PiBBcmphbg0KPj4NCj4+ICpBcmphbiBG
RVRBKg0KPj4gU0RSIEVuZ2luZWVyDQo+Pg0KPj4gPGh0dHA6Ly93d3cucmhlYWdyb3VwLmNvbS8+
DQo+Pg0KPj4gKlJIRUEgR1JPVVAqDQo+Pg0KPj4gMiwgUnVlIGTigJlBcmxvbiwgTC04Mzk5IFdp
bmRob2YNCj4+DQo+PiBPZmZpY2U6wqArMzIgKDAp4oCmfCBNb2JpbGU6ICszOSAzMjg3MDcxMDQy
DQo+Pg0KPj4gd3d3LnJoZWFncm91cC5jb20gDQo+PiA8aHR0cDovL3Quc2lkZWtpY2tvcGVuNTQu
Y29tL2UxdC9jLzUvZjE4ZFFoYjBTN2xDOGRETVBiVzJuMHg2bDJCOW5NSlc3dDVYWWcyQnB5UkZX
OHFTdHB4M015N3hQVzJCVzR6YjU2ZFRUNmY1X1gtcmcwMj90PWh0dHAlM0ElMkYlMkZ3d3cucmhl
YWdyb3VwLmNvbSUyRiZzaT02MjUxNjcxODc2NTM0MjcyJnBpPTg0ZDhkNmY1LTNmZDEtNDk2Mi05
YmZkLTdiMmIyMjViNjMwNj4NCj4+DQo+PiAqRnJvbToqV2FkZSBGaWZlIDx3YWRlLmZpZmVAZXR0
dXMuY29tPg0KPj4gKlNlbnQ6KiAxOSBNYXkgMjAyMyAxNTozNQ0KPj4gKlRvOiogQXJqYW4gRmV0
YSA8YS5mZXRhQHJoZWFncm91cC5jb20+DQo+PiAqQ2M6KiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQ0KPj4gKlN1YmplY3Q6KiBSZTogW1VTUlAtdXNlcnNdIFJlOiBYNDEwIG5vdCBwb3dlcmlu
ZyBvbg0KPj4NCj4+DQo+Pg0KPj4NCj4+IFlvdSBkb24ndCBvZnRlbiBnZXQgZW1haWwgZnJvbSB3
YWRlLmZpZmVAZXR0dXMuY29tLiBMZWFybiB3aHkgdGhpcyBpcyANCj4+IGltcG9ydGFudCA8aHR0
cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNlbmRlcklkZW50aWZpY2F0aW9uPg0KPj4NCj4+DQo+Pg0K
Pj4gKkNhdXRpb246KlRoaXMgZW1haWwgd2FzIHNlbnQgZnJvbSBhbiBleHRlcm5hbCBzb3VyY2Us
IGRvIG5vdCBjbGljayANCj4+IGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSBy
ZWNvZ25pemUgdGhlIHNlbmRlciBlbWFpbCANCj4+IGFkZHJlc3MgYW5kIGtub3cgdGhlIGNvbnRl
bnQgaXMgc2FmZS4NCj4+DQo+PiBIaSBBcmphbiwNCj4+DQo+PiBJIGhhdmUgbm90IGhlYXJkIG9m
IHRoaXMgYmVmb3JlLiBJdCBzaG91bGQgYmUgYXMgc2ltcGxlIGFzIGNvbm5lY3RpbmcgDQo+PiBh
biBhcHByb3ByaWF0ZSBBQyBjYWJsZSB0byB0aGUgWDQxMCBwb3dlciBzdXBwbHkgYnJpY2ssIHBs
dWdnaW5nIHRoZSANCj4+IEFDIGNhYmxlIGludG8gdGhlIHdhbGwsIHRoZW4gcGx1Z2dpbmcgdGhl
IDYtcGluIHBvd2VyIGNhYmxlIGludG8gdGhlIA0KPj4gWDQxMCBhbmQgcHJlc3NpbmcgdGhlIHBv
d2VyIGJ1dHRvbi4gSWYgeW91IGhhdmVuJ3QgYWxyZWFkeSwgdHJ5IA0KPj4gZGlzY29ubmVjdGlu
ZyBldmVyeXRoaW5nIGZyb20gdGhlIFg0MTAgaXRzZWxmIGV4Y2VwdCB0aGUgcG93ZXIgY2FibGUg
DQo+PiBhbmQgcG93ZXJpbmcgaXQgb24uIEFsc28gdHJ5IGRpZmZlcmVudCBBQyBjYWJsZXMgKHRo
ZSBvbmUgdGhhdCANCj4+IGNvbm5lY3RzIHRoZSBwb3dlciBzdXBwbHkgYnJpY2sgdG8gdGhlIHdh
bGwgc29ja2V0KS4gSWYgeW91IGhhdmUgYSANCj4+IHZvbHRhZ2UgbWV0ZXIgeW91IGNvdWxkIGFs
c28gbWVhc3VyZSB0aGUgdm9sdGFnZSBvbiB0aGUgcG93ZXIgDQo+PiBzdXBwbGllcyB0byBjb25m
aXJtIHRoZXkncmUgT0suIEkgc3VnZ2VzdCB5b3UgY29udGFjdCANCj4+IHN1cHBvcnRAZXR0dXMu
Y29tIGlmIHlvdSBjYW4ndCBnZXQgaXQgdG8gd29yay4NCj4+DQo+PiBXYWRlDQo+Pg0KPj4gT24g
RnJpLCBNYXkgMTksIDIwMjMgYXQgMjo1NeKAr0FNIEFyamFuIEZldGEgdmlhIFVTUlAtdXNlcnMg
DQo+PiA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOg0KPj4NCj4+IMKgwqDCoCBT
b3JyeSwgbm8gcXVlc3Rpb24gaW4gdGhlIG1lc3NhZ2UgOikuDQo+Pg0KPj4gwqDCoMKgIEhhZCBh
bnlvbmUgaGFkIHRoaXMga2luZCBvZiBpc3N1ZSBiZWZvcmU/DQo+Pg0KPj4gwqDCoMKgIFRoYW5r
cywNCj4+DQo+PiDCoMKgwqAgQXJqYW4NCj4+DQo+PiDCoMKgwqAgX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+IMKgwqDCoCBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gwqDCoMKgIFRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20N
Cj4+DQo+Pg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
