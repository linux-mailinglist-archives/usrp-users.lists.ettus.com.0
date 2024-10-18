Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C459A42A0
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 17:39:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 37D193858B4
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 11:39:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729265943; bh=xpPzQ9b1S/GQqXK5HPpHPeaep0U96IFqE2smA9XBKoc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ZqB/8RL4vfqnKt8msjc/znLtzShdu/HpgxY2o+zCZeVYfUIRjn8dTCkXYRSqmsNJW
	 q4Ow6qZ2Iqbckx5sQiTdoDp321D625YcAjjaXJEvHhN2ylZqCgESPS87AQH/D1+Lo/
	 QayZMepq3ysTxUKSxEvBt/t6gWzKSRXwShmYJwZPZbIgD3yY7F2oMIa5X1e74i7ouw
	 T7tNk4+eweizJt4eBKlDACIQ9CtCbz/aAaGmJEAYW3rr7Fcn7kgwLxfk5ilbeqHs3o
	 pwbezU9XfHvG3xVDcR+QG6dqOCCUb2Ft8BLGlskMsetufpyvQo4nLewxUgw6PYerSi
	 YVsCiSFAOUOsA==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id F11C238579D
	for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2024 11:38:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gbXVnKNr";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4606347c791so17359361cf.2
        for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2024 08:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729265924; x=1729870724; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K/Atr3MACybOIuFpgDRM8Yf+odtcjFRlkYYr8MW28Wc=;
        b=gbXVnKNr4moytp31xHRSkKlFYs3xq1kcGrAd8J9CwOBoeNb7qbVlFF6hkIlZrdgZyY
         XB/u+dZbejflT20pU297pqVrdGzkccnBrv3motn17kfNR8GgjXNSAm+ZTwQdxLWlzXie
         3InGJ+7W2o1OsS/Aytr6EwA5KPBNcZGwO2LKWxqGqVx4WsTGNFF/5vcqI6gL2NGCaE+A
         fZGwR5r1MmnFsR1KRvFeUoyc35uJbQXSio36ukqRYMXOitxe2jtSRpquwBB47svt1Bg5
         DlJ589xtqsQi2LuaPLMgDWmZ00shxB1xpyyTruxshCS0dNl4tR5N1bBuIB3zZ2aOJWuM
         lcgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729265924; x=1729870724;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K/Atr3MACybOIuFpgDRM8Yf+odtcjFRlkYYr8MW28Wc=;
        b=ZaLagbtJuW+PAuMSg0Mm4BG1HUdVN4OjdzipnMR64Eo9t/FW2W1xeGoTH6YbAQy4o8
         OL7yzGoOPOmK4+8ErRrPpSl5PPkWxm3KYVcOhHY1UDMuRzrK6yKGGUINsqHVb1RFZ1jH
         cBW9VqCk5SKIr2+rR5ufSn0b7ONed6HTp1IxsT5/Lq6vo1QBEPKM8BBBb9uTRD1TPpx9
         9LBv/w+eZil/z1EBmlpiOZbpAsbXUtA3B6jy11daxeAWmdGCpXU0HF0t/UF2YfxklREK
         6KWRks72P/ciHixM8DGo2jnWPCJgU52dv3OmvHziWpVcdc//e0hUkoMTaveBWGAbXIL8
         y+8A==
X-Gm-Message-State: AOJu0YygNjGG7xJgrfHQ/gJzu/tXtC8gw8oXpv9MHD/mrGQQ1PvrrBlR
	QID5aqAPqDrZ0EAsDeVCeidSv5vTtvZCZore55DCB0ZxD7gFaREJ/kShtw==
X-Google-Smtp-Source: AGHT+IHa91DSl7q/VNrwZvd2TYPAwGmLXFijxdIKd9CTkucJdC1Li43HW8PHHf/SCXoq9S3X6t3Byw==
X-Received: by 2002:a05:622a:4cf:b0:460:a7c7:26ee with SMTP id d75a77b69052e-460aebadee0mr37400631cf.0.1729265924014;
        Fri, 18 Oct 2024 08:38:44 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-460ae973cedsm8385371cf.37.2024.10.18.08.38.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2024 08:38:43 -0700 (PDT)
Message-ID: <3ab26169-4f96-41f6-96f0-ab3eb2e3e054@gmail.com>
Date: Fri, 18 Oct 2024 11:38:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw@lists.ettus.com>
Message-ID-Hash: HNKCHT72BF7ZR5PIE2GANWCLLE45DCBX
X-Message-ID-Hash: HNKCHT72BF7ZR5PIE2GANWCLLE45DCBX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ADC saturation problem in USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HNKCHT72BF7ZR5PIE2GANWCLLE45DCBX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMTAvMjAyNCAxMTozNSwgamUuYW1naGFyQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGVs
bG8sDQo+DQo+IEkgYW0gY3VycmVudGx5IGZhY2luZyBhbiBpc3N1ZSB3aXRoIEFEQyBzYXR1cmF0
aW9uIG9uIGEgVVNSUCBYMzEwIA0KPiBlcXVpcHBlZCB3aXRoIGEgVUJYIGRhdWdodGVyYm9hcmQu
IFdlIGFyZSBjb25kdWN0aW5nIG1lYXN1cmVtZW50cyANCj4gdXNpbmcgYW4gTFRFIHNpZ25hbCBh
bmQgYSBzaW51c29pZGFsIGlucHV0IHNpZ25hbCwgYnV0IGl0IHNlZW1zIHRoYXQgDQo+IHRoZSBB
REMgaXMgc2F0dXJhdGluZywgbGVhZGluZyB0byBhIGxvc3Mgb2YgZHluYW1pYyByYW5nZSBpbiBv
dXIgDQo+IG1lYXN1cmVtZW50cy4NCj4NCj4gVGVzdCBjb250ZXh0Og0KPiBXZSBhcmUgdHJhbnNt
aXR0aW5nICh1c2luZyBhIGdlbmVyYXRvcikgYW4gTFRFIHNpZ25hbCB3aXRoIGEgcG93ZXIgb2Yg
DQo+IC01MCBkQm0gYXQgYSBjZW50ZXIgZnJlcXVlbmN5IG9mIDE4MTUgTUh6LiBUaGVuLCB3ZSBh
ZGQgYSBzaW51c29pZGFsIA0KPiBzaWduYWwgYXQgMTg2NSBNSHogd2l0aCBhIHBvd2VyIG9mIC0z
MCBkQm0uIFRoaXMgc2Vjb25kLCBtb3JlIHBvd2VyZnVsIA0KPiBzaWduYWwgc2VlbXMgdG8gYmUg
Y2F1c2luZyB0aGUgQURDIHRvIHNhdHVyYXRlLCBldmVuIHRob3VnaCB3ZSBkb27igJl0IA0KPiBz
ZWUgaXQgZGlyZWN0bHkgaW4gdGhlIElRIHNhbXBsZXMgZHVlIHRvIHRoZSBkaWdpdGFsIGZpbHRl
cmluZyBhcHBsaWVkIA0KPiBkb3duc3RyZWFtLg0KPg0KPiBQcm9ibGVtOg0KPiBXZSBzdXNwZWN0
IHRoYXQgdGhlIEFEQyBzYXR1cmF0aW9uIG9jY3VycyBiZWZvcmUgSVEgY29udmVyc2lvbiBhbmQg
aXMgDQo+IHRoZXJlZm9yZSBtYXNrZWQgYnkgdGhlIGRpZ2l0YWwgZmlsdGVycy4gVGhpcyByZXN1
bHRzIGluIGEgbG9zcyBvZiANCj4gZHluYW1pYyByYW5nZSBpbiBvdXIgbWVhc3VyZW1lbnRzLCBh
bmQgd2UgZmVlbCB0aGF0IGFkanVzdGluZyB0aGUgZ2FpbiANCj4gYmFzZWQgb24gdGhlIElRIHNh
bXBsZXMgbWF5IG5vdCBiZSByZWxpYWJsZS4NCj4NCj4gUXVlc3Rpb246DQo+IEhvdyBjYW4gdGhp
cyBBREMgc2F0dXJhdGlvbiBiZSBkZXRlY3RlZCB1cHN0cmVhbSBvZiB0aGUgSVEgcHJvY2Vzc2lu
Zz8gDQo+IEFyZSB0aGVyZSB0b29scyBvciBtZXRob2RzIHRvIGRpcmVjdGx5IG1vbml0b3IgdGhl
IHNhbXBsZSB2YWx1ZXMgYXQgDQo+IHRoZSBvdXRwdXQgb2YgdGhlIEFEQyBpbiB0aGUgVVNSUCAo
YmVmb3JlIGRpZ2l0YWwgZmlsdGVyaW5nKSB0byANCj4gcHJldmVudCBzYXR1cmF0aW9uPw0KPiBE
byB5b3UgaGF2ZSBhbnkgYWR2aWNlIGZvciBpbXBsZW1lbnRpbmcgYW4gYXV0b21hdGljIGdhaW4g
Y29udHJvbGxlciANCj4gKEFHQykgYmFzZWQgb24gcmVsaWFibGUgc2F0dXJhdGlvbiBpbmRpY2F0
b3JzPw0KPiBXZSB3b3VsZCBhcHByZWNpYXRlIGFueSBzdWdnZXN0aW9ucyBvciBleHBlcmllbmNl
cyBpbiByZXNvbHZpbmcgdGhpcyANCj4gaXNzdWUuIElmIHlvdSBoYXZlIGVuY291bnRlcmVkIGEg
c2ltaWxhciBwcm9ibGVtIG9yIGhhdmUgaWRlYXMgb24gaG93IA0KPiB0byBhZGRyZXNzIGl0LCB3
ZSB3b3VsZCBiZSBoYXBweSB0byBoZWFyIHlvdXIgcmVjb21tZW5kYXRpb25zLg0KPg0KPiBUaGFu
ayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIGhlbHAhDQo+DQo+DQpBIC0zMGRCbSBzaWduYWwgYXBw
bGllZCBhdCB0aGUgYW50ZW5uYSBpbnB1dHMsIGFuZCB0aGVuIGFtcGxpZmllZCANCmdyZWF0bHkg
YnkgdGhlIGFtcGxpZmllci9taXhlci9nYWluLWNoYWluIGFoZWFkIG9mIHRoZSBBREMNCiDCoCB3
b3VsZCB2ZXJ5LWxpa2VseSBzYXR1cmF0ZSB0aGUgQURDLsKgwqAgQSAtMzBkQm0gc2lnbmFsIGZy
b20gYW4gIm92ZXIgDQp0aGUgYWlyIiBhbnRlbm5hIGlzIG9uZSB0aGF0IGlzIHRodW5kZXJpbmds
eSBsb3VkIGluDQogwqAgdGhlIHJlYWwgd29ybGQuwqAgSXQgd291bGQgbm90IHN1cnByaXNlIG1l
IHRvIGZpbmQgdGhhdCBnYWluIGVsZW1lbnRzIA0KYWhlYWQgb2YgdGhlIEFEQyBhcmUgKmFsc28q
IGJlY29taW5nIG5vbi1saW5lYXIuDQoNClR1cm4geW91ciBnYWluIGRvd24uDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
