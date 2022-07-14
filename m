Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7C35750C9
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 16:28:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CBBE383F85
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 10:28:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657808908; bh=x4UHzopcigeQZwm0w/BfJLe0enI1NG1bEeRCDGNlHiU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WxdhzIEyrb816jD13BL4LPW2th3mtjJh6+pngDJ7cNQ0bG+0hVaX67gJVR0RXZ7SS
	 Cw5oYspUloARU3OY5WskR1QdfG9CKBVRPTeFqBx9gl2rzMG1Cn7X0wd2EcWEzR+6d0
	 O10tD3m52qg2NGWZrf9cZ68YcnQ54KOKO4D1buzrDXOLBDiL9o4M9EvAwphKFmn8Vh
	 NXah7xs8fJK+igIZJhb+JvYNLWsJ25WCfPxWB4Uvl76VAlaceS7+elvmmXiXHs3NQZ
	 WhVNaq3nOiIdNC9XE1GMx5klE/XHthjBQr//08RQcDV45frO6AJEviKli0ZwCRyjQ7
	 10FjDk6jkXYYw==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 17ADC38107D;
	Thu, 14 Jul 2022 09:37:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ad9OXmEd";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id j22so3498318ejs.2;
        Thu, 14 Jul 2022 06:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/4BuMh+7JIX6DjLxwz47DpcFTvY3T7zwaO/i895sJpU=;
        b=ad9OXmEdQa5FjhWPrBG98YVYFtMjS/+BazSWRo6GENt+QSMx/6NkqJ9yhBksLqK1Zz
         GQF0sjgN53qvAP7kpb0dHxeeaWE5+zgmAyGELSNAjGefgEZ06HCvUprbG1JgjJ8lIfea
         fMG2PFp1p+ef0Xp7FKOS2mbO620cmFIT7EPmxC9NXAoomer33t/HFnAehq4RGtERfD8R
         zeI8n96wGtmSFVf8BRnZLJlY8OWbRH235q1QyiI+tyTlHw4brClUkfzOstthYH+R34pA
         r+19CmkH4rfgFgEjmRotRxKrQmjBzhywI72AOQHlgvsnDrauFCfmvL8uii8nY9iOHe1O
         f6Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/4BuMh+7JIX6DjLxwz47DpcFTvY3T7zwaO/i895sJpU=;
        b=iCSK8OnT/EtV7urO9S1EuOkVBFel3GcI7LWRtu97C0N+0g/BqrOW2mtA8uxrcXbVbq
         IXgvjVYkdamWcKj7SVd0kB+eKumv7Y9tvBh2cl71bsUxsmBCnm+97PEKHzFit6V8FmL7
         D8mqGkc9eEnbAi8iQLvPUzT6lozkQD3rOhLo6NmjMARASVR87NVnruhNW/SPRNZ/+OIg
         i2cR/TYXj+2WMP/HhlllzF2NdIiyQKRovlBXJVY8BSgE1xsDMTuwR8NOlLKD9Ng/QE1F
         Wu+OHcBP3W5IyYnBkI7DqRpCbrT44IG+DiYgjwZ9l6KRcVGp6L7w9lzKaYsNDSdWs6UI
         P6gg==
X-Gm-Message-State: AJIora9pSo1BHxGijJmugAJigCtvSkS8hYnl0ifjfF8rfKhGX4KUGy0N
	suegsehKZcPPG/07Ar6eQdSErHspAmBBa4YngXo=
X-Google-Smtp-Source: AGRyM1sWFIWz4kLHzTgpZMmeWO23BinM41LXovDJ9rM/JO9v+K/Ye59ZwaqhPXw2pm3cD43d5hbVsJMni4GBjeROcaI=
X-Received: by 2002:a17:906:8479:b0:72b:83cf:4cf3 with SMTP id
 hx25-20020a170906847900b0072b83cf4cf3mr8683790ejc.90.1657805865021; Thu, 14
 Jul 2022 06:37:45 -0700 (PDT)
MIME-Version: 1.0
References: <VI1PR04MB41449224096D758652637DBBC6899@VI1PR04MB4144.eurprd04.prod.outlook.com>
 <CAAxXO2HsH=j+EgPhSn0upzfGniqbeNTFdcPsCyK0QvPNOb+67g@mail.gmail.com>
In-Reply-To: <CAAxXO2HsH=j+EgPhSn0upzfGniqbeNTFdcPsCyK0QvPNOb+67g@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 14 Jul 2022 16:37:33 +0300
Message-ID: <CAAxXO2GH6VbjhG6GCW=K7GmVHuhE_36SAp75uA51+anBaoS5GQ@mail.gmail.com>
To: =?UTF-8?B?TWFydGEgQnJracSH?= <Marta.Brkic.00@fesb.hr>
Message-ID-Hash: MWRFMBAQO6OXXZPGFDBXT2GYHD2FJAZY
X-Message-ID-Hash: MWRFMBAQO6OXXZPGFDBXT2GYHD2FJAZY
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "usrp-users-request@lists.ettus.com" <usrp-users-request@lists.ettus.com>, =?UTF-8?Q?Katarina_Rado=C5=A1?= <krados@fesb.hr>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with collecting GNSS signals by using GNSS-SDR and USRP N210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MWRFMBAQO6OXXZPGFDBXT2GYHD2FJAZY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Li4ub3IgeW91ciBsb2Nrcy4gQXJlIHlvdSBsb2NraW5nIHlvdXIgcmVhZGVyPw0KV2hhdCBleGFj
dGx5IGFyZSB5b3UgbG9ja2luZz8NCg0KTmlrb3MNCg0KT24gVGh1LCBKdWwgMTQsIDIwMjIgYXQg
NDoyOCBQTSBOaWtvcyBCYWxrYW5hcyA8bmJhbGthbmFzQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+
IEhpLA0KPg0KPiBUbyBzZXQgdGhyZWFkIHByaW9yaXR5LCB5b3UgbmVlZCB0byBhZGQgeW91ciB1
c2VyIHRvIGdyb3VwIHVzcnAuLi4NCj4gIkQiIG1lYW5zIGRyb3BwZWQgcGFja2FnZXMuIFlvdSBh
cmUgbm90IHJlYWRpbmcgZmFzdCBlbm91Z2guDQo+IFNpbmNlIHlvdXIgbGFzdCBydW4gd2FzIGFs
c28gYXQgNCBNaHogd2l0aG91dCBhbnkgIkQicywgaXQgc2VlbXMgeW91cg0KPiBwcm9ibGVtIGlz
IHdpdGggeW91ciBoYXJkIGRpc2sgSS9PLi4uDQo+DQo+IEhUSA0KPiBOaWtvcw0KPg0KPiBPbiBX
ZWQsIEp1bCAxMywgMjAyMiBhdCAxOjM5IFBNIE1hcnRhIEJya2nEhyA8TWFydGEuQnJraWMuMDBA
ZmVzYi5ocj4gd3JvdGU6DQo+ID4NCj4gPiBIaSwNCj4gPg0KPiA+IHdlIGhhdmUgcHJvYmxlbSB3
aXRoIGNvbGxlY3RpbmcgR05TUyBzaWduYWxzIGZvciBHTlNTIHNwb29maW5nIGJ5IHVzaW5nIFVT
UlAgTjIxMCAoZGF1Z2h0ZXJib2FyZCBVQlgtNDApLCBhY3RpdmUgR05TUyBhbnRlbm5hIChHUFNH
bG9uYXNzLTM2LU4tR0EpIGFuZCBHTlNTLVNEUi4NCj4gPiBGaXJzdGx5LCB3ZSBmb2xsb3dlZCBh
bGwgc3RlcHMgZnJvbSBHTlNTLVNEUiBjb25maWd1cmF0aW9uIHBhZ2UgYW5kIHdlIHN1Y2Nlc3Nm
dWxseSBnb3QgdGhlIHBvc2l0aW9uIGZpeGVzIHdpdGggZG93bmxvYWRlZCBmaWxlIG9mIHJhdyBz
aWduYWwgc2FtcGxlcyBhcyBhdCB0aGUgbGluay4NCj4gPiBBZnRlcndhcmRzLCB3ZSB0cmllZCB0
byBnZXQgdGhlIHBvc2l0aW9uIGZpeGVzIHdpdGggYWN0aXZlIEdOU1MgYW50ZW5uYSBidXQgdW5z
dWNjZXNzZnVsbHkuIFdlIHNldCBhbGwgdGhlIHBhcmFtZXRlcnMgYXMgYXQgdGhlIGluc3RydWN0
aW9ucyBhdCB0aGUgbGluayBhbmQgcmFuICdteV9HUFNfcmVjZWl2ZXIuY29uZicgZmlsZS4gQXMg
dGhlIHJlc3VsdCwgd2UgZ290IHByaW50ZWQgJ0QnIChwbGVhc2Ugc2VlIHNjcmVlbnNob3RzIDEg
YW5kIDIgYXR0YWNoZWQpLiBXZSB0cmllZCB0byBzb2x2ZSB0aGlzIHByb2JsZW0gYnkgZm9sbG93
aW5nIHRoZSBpbnN0cnVjdGlvbnMgYXQgRVRUVVMgcGFnZSBidXQgbm90aGluZyB3b3JrZWQgaW4g
b3VyIGNhc2UuDQo+ID4NCj4gPiBUaGVuLCB3ZSB0cmllZCB0byBzZXQgdGhlIHNhbXBsaW5nIGZy
ZXF1ZW5jeSB0byAyTUh6IGFuZCB0aGVyZSB3YXMgbm8gcHJpbnRlZCAnRCcgYWZ0ZXIgcnVubmlu
ZyB0aGUgY29uZiBmaWxlLiBIb3dldmVyLCB3ZSBkaWRuJ3QgZ2V0IHRoZSBwb3NpdGlvbiBmaXhl
cyBhbmQgd2Ugb25seSBnb3QgJ0xvc3Mgb2YgbG9jayBpbiBjaGFubmVsJyAoc2NyZWVuc2hvdCAz
KS4gIFdlIHNlYXJjaGVkIGZvciB0aGUgc29sdXRpb24gYW5kIHdlIHdvbmRlciBpZiBtaXNzZWQg
c29tZXRoaW5nIG9yIHdlIGRvIG5vdCBoYXZlIGFsbCBuZWNlc3NhcnkgZXF1aXBtZW50ICh3ZSBz
YXcgdGhhdCBiaWFzLXRlZSBpcyBuZWVkZWQgZm9yIHNvbWUgZGF1Z2h0ZXJib2FyZHMpLg0KPiA+
DQo+ID4gV2Ugd291bGQgYmUgdGhhbmtmdWwgaWYgeW91IGNvdWxkIGhlbHAgdXMgd2l0aCBvdXIg
cHJvYmxlbS4NCj4gPg0KPiA+IFRoYW5rIHlvdSBpbiBhZHZhbmNlIGFuZCBiZXN0IHJlZ2FyZHMs
DQo+ID4gS2F0YXJpbmEgUmFkb8WhIGFuZCBNYXJ0YSBCcmtpxIcNCj4gPg0KPiA+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gPiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
