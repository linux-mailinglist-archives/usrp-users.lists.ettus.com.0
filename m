Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E12247A4AB5
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 15:43:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 390A4385E7E
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 09:43:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695044604; bh=YUAOpFGLaj/lO46/9KrVcaTAMV6KfI9NfxXQ52xBfh0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kfnv1/wvK+y0FrJJ9hI8h4+tSnXWrIink3Wap2l6OuYqeu5d3b06nUcQF/QTinly9
	 zc2AKix/MRfEVUqHFmJnoYzvo/WpS4+It18h5xW0gIdfXdlEgwk3eU/UKZKuJnj6h4
	 QmPo5l0lBgeRZIvr0WexsEAjcFCb6ivLg10LZ6jGwMYlb6OuDRBp8jJ2tObEGeygDy
	 WjmIRnnI4Pw6biNsTamPyQnqy+ZKd/bp1rcl1xYvrWM7COBqvP4nXBOq6jjwPY1mfd
	 eonIVSdy/iLzVXycZPLqpONhen2G5ESEEZJBZedOKcPH3u1FNUX1KqHfwaA3BtPtAh
	 dTqDTecba9QXw==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 84D48385D29
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 09:43:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ELytKoY2";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-9a9d82d73f9so562613266b.3
        for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 06:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1695044588; x=1695649388; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I81aXMng4G4nNjRP+M/pXmHGQR4cnqrPeq5NVhXDd2g=;
        b=ELytKoY2JvPk7czFmhX0oGWnTnSC8Q28UfVeW7LuNc8V4db2s93DPJklTgci1xeohM
         xuUMUuI9PNJf7Kgqy7u+blvGQbgpcooZ3Jys+cp/szN1wx35gkD47VbRdAH3GXwlW3v3
         E8q7NEIbnNLT0Xcv16t06E3FIjw5WeOrEe0fzuKsqQFWh+2vg/7dNFJxz8DJZZyPvsSF
         ewaFguAxtAtdHo/zZ+FMxWY6JUeSiONo+v9EjY9qOhO0zYTkJEGv+rOlj8qM2PL5W/+j
         k0rrugkNVGWo9Ck3eyx7ZrsbTfZJYYiAkU1Sm2XzJUzVRScP0XdtJ++ClA3dYn1y5aAG
         wwfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695044588; x=1695649388;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I81aXMng4G4nNjRP+M/pXmHGQR4cnqrPeq5NVhXDd2g=;
        b=ar+H2QHyxwROBv1f/2TqpTaxQ3ThgbppNUD/NRwjQY9jw5fTDGtJW0XTTOdgZ0H2u7
         y0vTB0ziFJMQM69BTvS01AxO2g+CRDbCYLpAzoBen5IqfMVWiIeDoD+f1xS8kDr/o6WB
         hnzp7rGLHNCqcsFMKurnqtqjXy3sm5u3jMIkTdBv8ShoeePwqmf4kdJ3FSsaQ/YJxg1+
         YrxHoTcPdqxJ8NJIkhHzkrThCLY1sxToh+UZ6GbHc6kBpcYTj9WW/5Nns0V5e3XCpvJD
         QBeqkRuqwWhHq49wwDkanJTLNXEMWXElmmTzfpcQB0Gj2I2b9hvjUVUUUA+dMkqr7CYd
         j3QA==
X-Gm-Message-State: AOJu0YxhkdQl6aS4RvRtVoWpVOfb4ftoCcuqJwXqToVyj3fNXSeO3JDx
	HBYMABpxQKlln4dJFg2Q1ta+5JKbeeuMksEwq06+4A==
X-Google-Smtp-Source: AGHT+IG1S0ct2Uh+OXauvVEupVeSypRcFHnsUs7JZ2WdxHi8s1whXpT5tvD/62Zf3/Gc+dRRfM++eQ==
X-Received: by 2002:a17:906:10c9:b0:9a1:bfdc:2d5d with SMTP id v9-20020a17090610c900b009a1bfdc2d5dmr7794292ejv.41.1695044588139;
        Mon, 18 Sep 2023 06:43:08 -0700 (PDT)
Received: from ?IPV6:2001:9e8:384a:af00:10fc:1619:bea3:90d1? ([2001:9e8:384a:af00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id p5-20020a1709061b4500b0099bcf9c2ec6sm6435741ejg.75.2023.09.18.06.43.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 06:43:07 -0700 (PDT)
Message-ID: <866e2727-f39a-d114-874c-d7a07096af13@ettus.com>
Date: Mon, 18 Sep 2023 15:43:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0MTgCvKTtAE5aKjw693syOEp3UF20nZx5XqjlriCZQ@lists.ettus.com>
 <f90f3d5c-8735-5871-8ad4-3f67ff82bbb6@ettus.com>
 <67f923c4-0fdb-e5df-df4b-9005cf555a08@gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <67f923c4-0fdb-e5df-df4b-9005cf555a08@gmail.com>
Message-ID-Hash: BSXDROTMP3KWBU3RBYHL7LI4FA6K6BPZ
X-Message-ID-Hash: BSXDROTMP3KWBU3RBYHL7LI4FA6K6BPZ
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Bypassing_U807_and_U805_=28SKY13335=E2=88=92381LF=29?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BSXDROTMP3KWBU3RBYHL7LI4FA6K6BPZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGV5IE1hcmN1cywNCg0KID4gSSB0aGluayBJJ20gbWlzc2luZyBzb21lIGNvbnRleHQgaGVyZS7C
oMKgIFdoYXQgaXMgdGhlIGdvYWw/DQoNCkkgd2FzIHdvbmRlcmluZyB0aGF0IGFzIHdlbGwsIGJ1
dCBJIGxlYXB0IHRvIGNvbmNsdXNpb25zOyBvciwgY2FsbCBpdCByZXF1aXJlbWVudHMgDQplbmdp
bmVlcmluZyB3aXRoIGluY29tcGxldGUgaW5mb3JtYXRpb24gaWYgeW91IHdpbGwgOkQNCg0KT8Sf
dXpoYW4gc2FpZCB0aGF0IHRoZSBzd2l0Y2ggVTgwNSwgd2hpY2ggc3BlYy13aXNlIG9ubHkgaGFz
IDwgMjcgZEIgaXNvbGF0aW9uLCB3YXNuJ3QgDQppc29sYXRpbmcgZW5vdWdoIGZvciB0aGVpciBw
dXJwb3Nlcy4gQW5kIHRoYXQncyB3aHkgdGhleSB3YW50ZWQgdG8gYnlwYXNzIGl0LiBXaGF0IEkg
YWRkZWQgDQphcyBpbnRlcnByZXRhdGlvbiBpcyBvZiBjb3Vyc2UgdGhhdCB0aGV5IHdhbnRlZCB0
byByZW1vdmUgdGhlIElDIGZyb20gdGhlIHNpZ25hbCBjaGFpbiDigJMgDQpvdGhlcndpc2UgdGhl
cmUgY291bGRuJ3QgYmUgYW55IGlzb2xhdGlvbiBnYWluLg0KDQpUaGVuIEkgZnVydGhlciBpbnRl
cnByZXRlZCB0aGV5IGFjdHVhbGx5IGNhcmVkIGFib3V0IFJYL1RYIGlzb2xhdGlvbiBpbiBmdWxs
LWR1cGxleCANCm9wZXJhdGlvbnMgKGJlY2F1c2UgdGhhdCdzIHdoYXQgdGhleSd2ZSBiZWVuIHdv
cmtpbmcgb24gaW4gcHVibGljIG9uIHRoaXMgbGlzdCBhbmQvb3IgDQpkaXNjdXNzLWdudXJhZGlv
KS4gTm93LCB0aGUgdGhpbmcgaXMgdGhhdCB0aGVyZSdzICp0d28qIHN3aXRjaGVzIGJldHdlZW4g
dGhlIFRYMSBzaWduYWwgDQphbmQgdGhlIFJYMSBpbnB1dCwgVTgwNSBhbmQgVTgwNywgYW5kIHRo
ZWlyIGlzb2xhdGlvbiBvZiBjb3Vyc2UgYWRkcyB1cC4gQW5kIFJYL1RYIA0KaXNvbGF0aW9uIGlz
IGhlbmNlIHRoZSAiY29tbW9uIHBvcnQtPmRpc2FibGVkIHN3aXRjaGFibGUgcG9ydCIgaXNvbGF0
aW9uIG9mIFU4MDUsIGFuZCB0aGUgDQoiZGlzYWJsZWQgc3dpdGNoYWJsZSBwb3J0LT5jb21tb24g
cG9ydCIgaXNvbGF0aW9uIG9mIFU4MDcgY29tYmluZWQsIHNvLCBhcyB5b3Ugc2FpZCwgDQpwcmV0
dHkgbXVjaCB3aXRoaW4gd2hhdCB0aGUgcmVzdCBvZiB0aGUgYm9hcmQgY2FuIGRvLg0KDQpJIGRv
bid0IGFjdHVhbGx5IGtub3cgd2hhdCBUWC9SWCBpc29sYXRpb24gaXMgcG9zc2libGUgb24gdGhl
IEFEOTM2MTsgaWYgSSdkIGhhdmUgdG8gdGFrZSANCmEgZ3Vlc3MgZnJvbSB0aGUgUlggRVZNIGZp
Z3VyZXMgaW4gdGhlIHByZXNlbmNlIG9mIGNsb3NlLWJ5IGJsb2NrZXJzLCBpdCB3b3VsZCBpbmRl
ZWQgYmUgDQppbiB0aGUgcmFuZ2Ugb2YgMsOXMjQgZEIuDQoNCkJlc3QsDQpNYXJjdXMNCg0KT24g
MTguMDkuMjMgMTU6MTMsIE1hcmN1cyBELiBMZWVjaCB3cm90ZToNCj4gT24gMTgvMDkvMjAyMyAw
NjoxMSwgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+PiBIaSBPxJ91emhhbiwNCj4+DQo+PiB3ZSBv
ZiBjb3Vyc2UgaGF2ZW4ndCBydW4gYW55IG1hdGNoaW5nIHRlc3RzIG9uIHdoYXQgaGFwcGVucyBp
biB0aGF0IGJ5cGFzcyBtb2RlOyBpdCANCj4+IHdvdWxkIHN0aWxsIHNlZW0gdG8gbWUgdGhhdCBp
ZiB5b3UgYnlwYXNzIFU4MDUsIHlvdSdkIHdhbnQgdG8gcmVtb3ZlIHRoZSBpbi0gYW5kIG91dHB1
dCANCj4+IGNhcGFjaXRvcnMsIGluZGVlZC4gSSdkIHN0cm9uZ2x5IGFkdmlzZSBhZ2FpbnN0IGRv
aW5nIHRoaXMgbW9kaWZpY2F0aW9uLCBmb3IgdGhlIA0KPj4gZm9sbG93aW5nIHRlY2huaWNhbCBy
ZWFzb246DQo+Pg0KPj4gMjQgdG8gMjcgZEIgaXNvbGF0aW9uIGlzIGluZGVlZCB3aGF0IHRoZSBk
YXRhc2hlZXQgb2YgdGhlIFNLWTEzMzM1LTM4MUxGIHNheXMsIGJ1dCANCj4+IGRvbid0IGZvcmdl
dCB0aGF0IHlvdSBoYXZlIGFub3RoZXIgMjQgdG8gMjcgZEIgb2YgaXNvbGF0aW9uIGJldHdlZW4g
VFggYW5kIFJYIGluIFU4MDcsIA0KPj4gYWRkaW5nIHVwIHRvIDQ4IHRvIDU0IGRCIG9mIGlzb2xh
dGlvbi4gVGhhdCdzIGluIHRoZSBzYW1lIGJhbGxwYXJrIGFzIGNyb3NzdGFsayB0aHJvdWdoIA0K
Pj4gdGhlIGJvYXJkLCBwb3dlciBzdXBwbHksIGFkamFjZW50IHRyYWNlcyBldGMuIFRoZSBCMnh4
IHdhcyBkZXNpZ25lZCBieSBSRiBlbmdpbmVlcnMgd2hvIA0KPj4ga2luZCBvZiBrbmV3IHdoYXQg
dGhleSB3ZXJlIGRvaW5nIDpEDQo+Pg0KPj4gU28sIGRvbid0IGV4cGVjdCB0byB3aW4gbXVjaCBi
eSByZW1vdmluZyBVODA1LiBFc3BlY2lhbGx5IHBhaXJlZCB3aXRoIHRoZSBmYWN0IHRoYXQgd2Ug
DQo+PiBoYXZlIG5vIGNoYXJhY3Rlcml6YXRpb24gb2YgbWF0Y2hpbmcgaW4gdGhlIGJ5cGFzc2Vk
IG1vZGUsIEknZCBhc3N1bWUgeW91IHJlYWxseSB3b24ndCANCj4+IGVuZCB3aXRoIGEgY2xlYW5l
ciBSWCwgYnV0IGp1c3QgbW9yZSBwcm9ibGVtcw0KPj4NCj4+IEJlc3QsDQo+PiBNYXJjdXMNCj4+
DQo+PiBPbiAxOC4wOS4yMyAwODoxMSwgb3V6YW5fdHNAaG90bWFpbC5jb20gd3JvdGU6DQo+Pj4N
Cj4+PiBIZWxsbywgaW4gbXkgY2FzZSwgdGhlIGZ1bmN0aW9uIHBlcmZvcm1lZCBieSB0aGUgIlNL
WTEzMzM14oiSMzgxTEYiIElDIHN3aXRjaCBpcyBub3QgDQo+Pj4gd29ya2luZyBmb3IgbWUuIEFu
ZCBhcyBmYXIgYXMgSSBjYW4gc2VlLCB0aGUgaXNvbGF0aW9uIG9mIHRoaXMgY29tcG9uZW50IGlz
IGxvdyANCj4+PiAoMjRkQi0yN2RCKS4gVGhlIGNhcmQgSSBoYXZlIGlzIEIyMDAuIFNjaGVtYXRp
YyBCMjEwIGdpdmVuIGluIHRoZSBsaW5rIA0KPj4+ICJodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9z
Y2hlbWF0aWNzL2IyMDAvYjIxMC5wZGYiLiBJIHdhbnQgdG8gYnlwYXNzIHRoaXMgY29tcG9uZW50
LiANCj4+PiBBcyBmYXIgYXMgSSBjYW4gc2VlLCB0aGVyZSBhcmUgcGFkcyBmb3IgdGhpcyBvbiB0
aGUgY2FyZC4gSSB0aGluayBpdCBpcyBieXBhc3NlZCBieSANCj4+PiBhY3RpdmF0aW5nIEM4NDcg
YW5kIEM4NDkgaW4gdGhlIHJlbGV2YW50IHBhcnQgb2YgdGhlIEIyMTAgc2NoZW1hdGljIHRoYXQg
SSBzZW50IHlvdSBpbiANCj4+PiBhdHRhY2htZW50Lg0KPj4+DQo+Pj4NCj4+Pg0KPj4+IFRoZSBt
YWluIHF1ZXN0aW9uIEkgd2FudCB0byBhc2sgaXMsIHNob3VsZCBJIGNvbm5lY3QgdGhlIDIyMHBG
IGNhcGFjaXR5IHNlZW4gaW4gQzgxMCANCj4+PiB0byBDODQ3LCBhbmQgdGhlIDQ3MHBGIGNhcGFj
aXR5IHNlZW4gaW4gQzgxNCB0byBDODQ5PyBPciBzaG91bGQgSSBzaG9ydCBjaXJjdWl0IGRpcmVj
dGx5Pw0KPj4+DQo+Pj4NCj4+Pg0KPj4+IEkgYW0gYXdhcmUgb2YgYWxsIHRoZSByaXNrcy4gSSds
bCBiZSBoYXBweSBpZiB5b3UgY2FuIGhlbHAgbWUuIEhhdmUgYSBuaWNlIGRheS4NCj4+Pg0KPj4+
DQo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+
PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
Pj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20NCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQ0KPg0KPg0KPiBJRiB0aGUgZ29hbCBpcyByZWFsbHkgcmVhbGx5
IGhpZ2ggVFgvUlggaXNvbGF0aW9uLCB5b3UncmUgbm90IGdvaW5nIHRvIGFjaGlldmUgdGhhdCB3
aXRoIA0KPiB0aGlzIGRlc2lnbi7CoCBTaW5jZSB0aGUgVFggYW5kIFJYIHNpZ25hbHMNCj4gwqAg
Z28gdGhyb3VnaCB0aGUgQUQ5MzYxIFJGIGNoaXAsIHdoaWNoIGlzIHRpbnksIHZlcnkgaGlnaCBp
c29sYXRpb24gd2lsbCBuZXZlciBiZSBhY2hpZXZlZC4NCj4NCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
