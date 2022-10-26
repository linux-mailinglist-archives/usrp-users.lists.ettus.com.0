Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCC060D859
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 02:12:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 258D8383BD3
	for <lists+usrp-users@lfdr.de>; Tue, 25 Oct 2022 20:12:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666743120; bh=Gu1o9xUc9RyLjCxZbf3o7EioFWQG8SZfW/S1AVMIURk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DDZKu2GEdYMCPKXN7pM1Vt5s88qRKMFOi3chSVyyEY5Zqy+3WYnJninoDPVppAcEd
	 vpDDjg02EsBibO8cEjbVEm1Nt83d1HVqliHX8AsKRwRpnFIAR5ehUbQ6J/B5QoPDoP
	 D8Kx8r+ViIYHSRMJ+OZR8VVWb4B56Z89xsFOGwopBrv3qDKr63YWDT+lQRiZbNRYJ/
	 i/2snoQKJno4REGyo3XYThl2N+p3N3EjKXVjNzt1k/ytN69XmAaf+0kRXGeLOvl0aP
	 1ZcAezGaATboWjb7ySY93J6zdzJg6ta9Bv9c79jb7SsgebAHzxXvLG8QFkcAQ+iFWW
	 jZnJplCCsvzyg==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id C22F63837DB
	for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 20:10:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PzVdex1W";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id 8so9466266qka.1
        for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 17:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LEhwWYLHRfxF4Qxn0SOsMnVZxw39TWqCSUbyZqWKEvM=;
        b=PzVdex1WkGBgQoeTulHWr042mQNsJTYWrshazmbHqsIycTguNtOFHcJSpdAtY3y1Ik
         z075QhDsOxo1VT1wjPxirnKui+rSm213fT+KrKgPevcbEC8xSAkuRHjTDomPtzmak2yv
         0leylGZe4ycjuxvqNcP+JZe3ebYkzLLMVt7QEm8tBI2oBnBovVKuWnT+OhQuw/FgQifw
         PMPO2c+m4dFJYQzW5VQKnrGNwoeTFMvnvHLS388vGuvlHqnPn94CJQnnk/b7QegETuJe
         VaFI4/CmcNmujqP6KKLbIa4Cn/rgr3AENBplnrQZBQrv7YGYiT3ejFEKWgW1qBLOAJ4e
         +3Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LEhwWYLHRfxF4Qxn0SOsMnVZxw39TWqCSUbyZqWKEvM=;
        b=tjd5iOkedKfDdBHZZcIn6SuAH39l9uQG3+b4Die9iM9BiKwylyGGOrsIHd3DyA+oId
         gqzfrz5NX+oJdCZkUs3/VjLg9LPHZZw1RDSj28EBorOpxH76vDY6h9r1zw5raLIRZWMv
         NP7ZEggp7Jj1GhP7iIyrDt4TcJLU6vzp9wV5H17g+EG9AYm2k5MkIgxygjOjRBj9UU+Y
         TWbK1IpnCmAttTQuj2ny/LhZ1fYmTp0NGNJUkSQgfgIf14Ay+kO88ifvT9gXTYT9ck46
         c2QSbwzgUdmU5Mk+u2RDrmQ4pzpaD7p+uWIcbDDcGqsZoVBAZnCcOb3jKdc/Gs3bntnB
         pjOQ==
X-Gm-Message-State: ACrzQf225Wa5x5i2gn2bCM9vVsTvxACnUnU5Sx8qs1QA462RMftW3EV6
	3kFDU5vP42odo+i2TzP3u8F2g9NjUDY=
X-Google-Smtp-Source: AMsMyM5wHESXghsyAqSBhi3d4HFE0ju+Rn+2NoOicWt3DlRHKjbTX6TJdGlyx06EeDcmxYOMZYaoww==
X-Received: by 2002:a05:620a:6011:b0:6ee:b2c1:686b with SMTP id dw17-20020a05620a601100b006eeb2c1686bmr28669678qkb.492.1666743022043;
        Tue, 25 Oct 2022 17:10:22 -0700 (PDT)
Received: from [192.168.2.173] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id i8-20020a05620a248800b006bb0f9b89cfsm3001578qkn.87.2022.10.25.17.10.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 17:10:21 -0700 (PDT)
Message-ID: <c530bd1a-e46c-cc59-f121-7a8e1d90db58@gmail.com>
Date: Tue, 25 Oct 2022 20:10:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
Message-ID-Hash: 6I2PRHXXT2UD34YWOTR7QTYQQAR5BW6G
X-Message-ID-Hash: 6I2PRHXXT2UD34YWOTR7QTYQQAR5BW6G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX Channel Isolation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6I2PRHXXT2UD34YWOTR7QTYQQAR5BW6G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0xMC0yNSAxODoxNSwgQnJpYW4gUGFkYWxpbm8gd3JvdGU6DQo+IEkgaGF2ZSBhbiBh
cHBsaWNhdGlvbiB3aGVyZSBJIGFtIHVzaW5nIGJvdGggY2hhbm5lbHMgb2YgdGhlIFR3aW5SWCAN
Cj4gd2l0aG91dCB1c2luZyBMTyBzaGFyaW5nLsKgIEkgYW0gdXNpbmcgY2hhbm5lbCAwIGFzIGEg
c2luZ2xlIGZyZXF1ZW5jeSANCj4gY2hhbm5lbCwgYW5kIEkgYW0gdXNpbmcgY2hhbm5lbCAxIHRv
IHR1bmUgdG8gZGlmZmVyZW50IGZyZXF1ZW5jaWVzLg0KPg0KPiBJIGFtIG5vdGljaW5nIHRoYXQg
c29tZSB0cmFuc2llbnRzIGhhcHBlbiBvbiBjaGFubmVsIDAgLSB0aGUgZml4ZWQgDQo+IGZyZXF1
ZW5jeSBjaGFubmVsIC0gYXMgSSBhbSBjaGFuZ2luZyBjaGFubmVsIDEuIFRoaXMgaGFwcGVucyB3
aXRoIGV2ZW4gDQo+IHRlcm1pbmF0ZWQgaW5wdXRzIG9uIGJvdGggY2hhbm5lbHMuwqAgSSBhbHNv
IG5vdGljZSB0aGF0IGlmIEkgY2hhbmdlIA0KPiB0aGUgcmF0ZSBhdCB3aGljaCBJIGFtIGNoYW5n
aW5nIGNoYW5uZWwgMSwgdGhlIHNwZWN0cnVtLCBvbiBhdmVyYWdlLCANCj4gaXMgbXVjaCBjbGVh
bmVyIGJ1dCB0aGUgdHJhbnNpZW50cyBzdGF5IHRoZXJlIGZyb20gYSAibWF4IGhvbGQiIA0KPiBw
ZXJzcGVjdGl2ZS7CoCBTbyBvbmNlIHRoZSBMTyBoYXMgc2V0dGxlZCwgdGhpbmdzIGRvbid0IHNl
ZW0gdG8gYmUgYXMgDQo+IG5vaXN5Lg0KPg0KPiBNeSBzZXR1cCBkb2VzIG5vdCBpbnN0YWxsIHRo
ZSBMTyBzaGFyaW5nIGNhYmxlcywgc28gdGhvc2UgTU1DWCANCj4gY29ubmVjdG9ycyBhcmUgbGVm
dCBmbG9hdGluZy9vcGVuLg0KPg0KPiBNeSBxdWVzdGlvbiBpcyBpZiBFdHR1cyBoYXMgc2VlbiB0
aGlzIG9yIGtub3dzIGFib3V0IHRoaXM/IEFzIEkgc3RhdGVkIA0KPiBwcmV2aW91c2x5LCBJIGRv
bid0IG5lZWQgdGhlIExPIHNoYXJpbmcgZmVhdHVyZSBvZiB0aGUgVHdpblJYIGFuZCBJIGFtIA0K
PiB3b3JyaWVkIHRoYXQgY29uc3RhbnRseSByZXR1bmluZ8KgdGhlIFBMTHMgbWlnaHQgYmUgY2F1
c2luZyB0aGUgbm9pc2UgDQo+IGFuZCBkaXN0cmlidXRpbmcgaXQgdG8gdGhlIGZpeGVkIGZyZXF1
ZW5jeSBjaGFubmVsP8KgIElmIHRoYXQgaXMgdGhlIA0KPiBjYXNlLCBhcmUgdGhlcmUgc29tZSBy
ZXNpc3RvcnMgb3IgbW9kaWZpY2F0aW9ucyBJIG1pZ2h0IGJlIGFibGUgdG8gDQo+IG1ha2UgdG8g
dGhlIFR3aW5SWCB0aGF0IGNvdWxkIHJlbW92ZSB0aGlzIGFzIGEgc291cmNlIG9mIG5vaXNlIGtu
b3dpbmcgDQo+IEkgbmV2ZXIgd2FudCB0byBwZXJmb3JtIHRoZSBMTyBzaGFyaW5nP8KgIElmIEkg
ZGlkbid0IGNvbm5lY3QgdGhlIE1NQ1ggDQo+IExPIHNoYXJpbmcgcG9ydHMsIGFtIEkgYWxyZWFk
eSByZW1vdmluZyB0aGlzIGFzIGEgcG9zc2libGUgbm9pc2Ugc291cmNlPw0KPg0KPiBMYXN0bHks
IGEgdGhvdWdodCBpcyB0aGF0IHRoZSBub2lzZSBtaWdodCBiZSBjb21pbmcgZnJvbSBkaWdpdGFs
IA0KPiBzd2l0Y2hpbmcgbm9pc2UgdG8gcmVwcm9ncmFtIHRoZSBMT3MuwqAgSG93IGZlYXNpYmxl
IGlzIHRoaXM/DQo+DQo+IFRoYW5rcywNCj4gQnJpYW4NCj4NCj4NCkkgd29uZGVyIGlmIHRoaXMg
aXMgYSByYWRpYXRpdmUgY291cGxpbmcgdGhpbmc/wqAgTGlrZSB0aGUgc3ludGhlc2l6ZXIgDQpm
b3IgdGhlIG90aGVyIGNoYW5uZWwgYnJpZWZseSBzd2VlcHMgYWNyb3NzIHRoZSBzdGFibGUgdHVu
ZWQNCiDCoCBmcmVxdWVuY3kgb24gdGhlIG90aGVyIGNoYW5uZWwsIGFuZCBhIHNtYWxsIGFtb3Vu
dCBvZiBlbmVyZ3kgaXMgDQpib3VuY2luZyBhcm91bmQgaW5zaWRlIHRoZSBib3ggYW5kIGNvdXBs
ZXMgdG8gdGhlIGlucHV0Lg0KIMKgIFRoZSBUd2luUnggaGFzIGFuIGludGVybmFsIGhlYXRzaW5r
L3NoaWVsZCwgYW5kIEkgd291bGQgZXhwZWN0IHZlcnkgDQpmZXcgaW5zdGFuY2VzIHdoZXJlIHRo
YXQgc2hpZWxkIGlzICJ3YXZlZ3VpZGluZyIuDQoNCkl0IGlzIGFic29sdXRlbHkgdGhlIGNhc2Ug
dGhhdCB3aXRoIG1vZGVybiBlbGVjdHJvbmljcyB3aXRoIGxvdHMgb2YgDQpoaWdoLXNwZWVkIGRp
Z2l0YWwgbG9naWMsIGl0J3MgbmVhcmx5IGltcG9zc2libGUgdG8gbWFrZQ0KIMKgIGFsbCB5b3Vy
IHNwdXJzIGdvIGF3YXkuwqAgVGhpcyBpcyBjb21wb3VuZGVkIGJ5IHRoZSBmYWN0IHRoYXQgDQpm
cm9udC1lbmRzIGluIHJlY2VpdmVycyBoYXZlIGJlY29tZSBhYm91dCAxMGRCIG1vcmUNCiDCoCBz
ZW5zaXRpdmUgaW4gdGVybXMgb2YgYXZlcmFnZSBub2lzZSBmaWd1cmUgb3ZlciB0aGUgbGFzdCBk
ZWNhZGUgb3IgDQp0d28uwqDCoCBTbyBpbnRlcm5hbCAic3B1cnMiIHRoYXQgd291bGQgcHJldmlv
dXNseSBuZXZlcg0KIMKgIGJlIHNlZW4gYXJlIG5vdyBzaG93aW5nIHVwIHdlbGwgYWJvdmUgdGhl
IG5vaXNlIGZsb29yLg0KDQpNeSBvd24gYXBwcm9hY2ggdG8gaW50ZXJuYWwgc3B1cnMgaXMgdG8g
bWFrZSBzdXJlIHRoZSBvdXRzaWRlLXdvcmxkIA0Kc2lnbmFsIGlzIHN0cm9uZyBlbm91Z2ggdG8g
b3ZlcndoZWxtIHRoZW0uwqAgVGhpcw0KIMKgIGlzbid0IGFsd2F5cyBwcmFjdGljYWwsIG9mIGNv
dXJzZS4NCg0KSSBoYXZlIGFuIFgzMTAgSSBjYW4gZG8gc29tZSBleHBlcmltZW50cyB3aXRoIGFs
c28uwqAgQnV0IEkgd29uJ3QgYmUgYWJsZSANCnRvIGdldCB0byBpdCB1bnRpbCBlbmQgb2YgdGhl
IHdlZWsgb3IgbWF5YmUgZXZlbg0KIMKgIG5leHQgd2Vlay4NCg0KDQoNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
