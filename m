Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 261CBA26144
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 18:21:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06642385513
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 12:21:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738603294; bh=WLryZGxwPFFxli6oysaF0MPYcq2Ly97N93Xi+6vtIkg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=S+63X6KliNmR0VZH3G0sVCxdUmHlXVt/brcq/bQpPS4p/fvgtRyZoimRo12pjgBhD
	 6w1emtqKlTlsUov0/048uMH6fYKZZlmai0rToOv1hQdwvNESuV8a9MPI2P8AWm65eT
	 6jcqoMKVJCZ8DzqPmjokNL1hOGduZpmWqEbLWjify0O7ga0895LTN12UR5kxqpTYV+
	 ty3O64gu0cTpgQph2cT3EW6uCwpomk2uIt8Opmk6irpcyGiq2ApASbpi3KSMUeAJ9/
	 qUjr7KVWtcbXJ7Dv8HzqH/ouxGHSvy3xrmjJHGQzHeIk23w4mCijLpdMtQr9BgH/j8
	 qewKEfUpE6Gvw==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id C7021384AC3
	for <usrp-users@lists.ettus.com>; Mon,  3 Feb 2025 12:21:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FBnwjzMh";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7b6f75f61f9so703366285a.0
        for <usrp-users@lists.ettus.com>; Mon, 03 Feb 2025 09:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738603281; x=1739208081; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WTfm/rIuGo5B1+cR0lEAdFpxtffEsv2okNBuGihe12o=;
        b=FBnwjzMhwRlXvPDkCrFp/F7E3evB6g19rgdqrdTCHLRX4ER7IowuklHpBnEiDdd2jk
         urqERUjuXAdvt2JjZQKc7eHjm64D9iM8hl1jfzh/xcAzZNYEo9vT2KD067x/C5C/FFf6
         5SLjd+edR3m4Yyh1YvTrwUp75UorTRtoHZoyGZyfNxlDmyLashvBBa/sjrbtyQM92E5X
         Qo1PU5o/PQuto+Hy2qE5l0Mw60/tHIVpramE3qhQ4cQ1zChzl0A04+aUUYC8CWLZsIUY
         8emGyuUEPHShxiJhf1p+8Xk6obfsvXzLguOEdBOrgpsjEv5Xe7Eh+voNEk6miQS6jAZx
         3p4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738603281; x=1739208081;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WTfm/rIuGo5B1+cR0lEAdFpxtffEsv2okNBuGihe12o=;
        b=AJgWRQQyXtAV4pk+yhdhadT5MgXf9FubBifbnVWWqVfXFFi8xKVSjYWY/x+BYFoC+e
         dYiAZdVL42YJAekWHronhSBPWlYWhUr4llMLGygEHoJ66X3lfWnxAtQIw8dcof4AakSL
         Kp6ydfaDQ5zleYgQG7mSjh9QC0JsOiBfPwzeyVfO46PyET77dHDMvd9gKydpRHmgXZgk
         DFY0uOCCxpq0E2TaSDQjLrolVQpqW+0t151BtIeLOhW6nd+2+ZY0r3QGpjPm3HPpXTW8
         C38GUXvTQUgvfQXd1hLN7p+5IpUHpuBOXVB+KOR7q8NSUlq4b03vRF46dczbsy8ZQxdx
         48zA==
X-Gm-Message-State: AOJu0Yyd6Cymh0tqC6A4vCzA9DvIhMWABlExo6l6gUeuc+Wp/N8wy2iM
	t4q4QVzbEqLh0weE89P/EVElhT+cD2zbHUSH4+/uA/o84QxCn5PLd94Vng==
X-Gm-Gg: ASbGncurQghRTr6K+ZR5gWoCkB44sY5/Gt78GI61/dZYiI/+uX8Aio+O987/ULx4ek6
	VKJ/JIJd5ID2n0qwkEa4nG35X+nKn4Qx9jzIsKNGoDO4jlRVLoA7y9aTPZ0SRG5QMwNQWa0j2rI
	urOtskZFqMX9dEWePIVG0QO+VUmhHaAkG8DclMOr5u4UklNWwNwcM63CEon1FzSNN8UuUfx1LsC
	PQoAyrYdoWahZpD3gaqDq6ZI+pyBO1vnhWN6qjbdkbgMNSP2kV7LrtwYAxyKxTvGUCbSLwxHGQ5
	nUoh1kt6OKg/Bce89Ase/+v84A==
X-Google-Smtp-Source: AGHT+IGlQ2LmAT2HwpgDvATVeF2wPa565KuY3DwkPTM/2R140Z/3y5QrwKB+sGMtWh6a6jjDICwtrw==
X-Received: by 2002:a05:620a:3908:b0:7b6:ebb8:14e8 with SMTP id af79cd13be357-7bffcd062ddmr3157158285a.29.1738603280557;
        Mon, 03 Feb 2025 09:21:20 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c00a8bb957sm545866985a.14.2025.02.03.09.21.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 09:21:20 -0800 (PST)
Message-ID: <215f5161-4d55-4bf9-8464-36e13d89d0b6@gmail.com>
Date: Mon, 3 Feb 2025 12:21:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ZgUmbnaR9VqIOfl145BdjqZXduIXj4uuLIBLvBbos@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ZgUmbnaR9VqIOfl145BdjqZXduIXj4uuLIBLvBbos@lists.ettus.com>
Message-ID-Hash: URQU3L33G2BN22R5P5WWYF6EORZQU3VJ
X-Message-ID-Hash: URQU3L33G2BN22R5P5WWYF6EORZQU3VJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 not seen by uhd_find_devices command
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/URQU3L33G2BN22R5P5WWYF6EORZQU3VJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMDIvMjAyNSAxMDozNywgcGlnYXRvaW1kZWFmcmFuY2VzY29AZ21haWwuY29tIHdyb3Rl
Og0KPg0KPiBIZWxsbywNCj4NCj4gSSBoYXZlIGEgVVNSUCBCMjEwIHdoaWNoIGNhbm5vdCBiZSBp
ZGVudGlmaWVkIHVoZF9maW5kX2RldmljZXMgb24gb25lIA0KPiBtYWNoaW5lIGJ1dCBub3Qgb24g
YW5vdGhlci4gQm90aCBoYXZlIGluc3RhbGxlZCB0aGUgc2FtZSBVSEQgdmVyc2lvbjoNCj4NCj4g
LU1hY2hpbmUgaWRlbnRpZnlpbmcgdGhlIEIyMTA6DQo+DQo+IOKAlOKAlOKAlOKAlOKAlOKAlOKA
lOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKA
lOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlC0NCj4NCj4gdGltQHNydi1wd3MtMDE6fiQg
dWhkX2ZpbmRfZGV2aWNlcw0KPg0KPiBbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lv
biA5LjQuMDsgQm9vc3RfMTA3MTAwOyANCj4gVUhEXzQuNC4wLkhFQUQtMC1nNWZhYzI0NmINCj4N
Cj4gW0lORk9dIFtCMjAwXSBMb2FkaW5nIGZpcm13YXJlIGltYWdlOiANCj4gL3Vzci9sb2NhbC9z
aGFyZS91aGQvaW1hZ2VzL3VzcnBfYjIwMF9mdy5oZXguLi4NCj4NCj4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4gLS0gVUhEIERldmljZSAw
DQo+DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQo+DQo+IERldmljZSBBZGRyZXNzOg0KPg0KPiBzZXJpYWw6IDMxNzIyQTQNCj4NCj4gbmFtZTog
TXlCMjEwDQo+DQo+IHByb2R1Y3Q6IEIyMTANCj4NCj4gdHlwZTogYjIwMA0KPg0KPiAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAtLSBVSEQg
RGV2aWNlIDENCj4NCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0NCj4NCj4gRGV2aWNlIEFkZHJlc3M6DQo+DQo+IHNlcmlhbDogMzQzNzIxQw0KPg0K
PiBhZGRyOiAxOTIuMTY4LjIwLjINCj4NCj4gY2xhaW1lZDogRmFsc2UNCj4NCj4gZnBnYTogWEcN
Cj4NCj4gbWdtdF9hZGRyOiAxOTIuMTY4LjEwLjINCj4NCj4gbWdtdF9hZGRyOiAxOTIuMTY4LjIw
LjINCj4NCj4gbmFtZTogbmktbjN4eC0zNDM3MjFDDQo+DQo+IHByb2R1Y3Q6IG4zMTANCj4NCj4g
dHlwZTogbjN4eA0KPg0KPiDigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTi
gJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTi
gJTigJTigJTigJTigJTigJTigJTigJQNCj4NCj4gTWFjaGluZSBub3QgaWRlbnRpZnlpbmcgdGhl
IEIyMTA6DQo+DQo+DQo+IHRpbUBzcnYtcHdzLTA1Oi91c3IvbG9jYWwvc2hhcmUvdWhkL2ltYWdl
cyQgdWhkX2ZpbmRfZGV2aWNlcw0KPg0KPiBbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVy
c2lvbiA5LjQuMDsgQm9vc3RfMTA3MTAwOyANCj4gVUhEXzQuNC4wLkhFQUQtMC1nNWZhYzI0NmIN
Cj4NCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0N
Cj4NCj4gLS0gVUhEIERldmljZSAwDQo+DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+IERldmljZSBBZGRyZXNzOg0KPg0KPiBzZXJpYWw6
IDMyQjFBMzMNCj4NCj4gYWRkcjogMTkyLjE2OC4yMC4yDQo+DQo+IGNsYWltZWQ6IEZhbHNlDQo+
DQo+IGZwZ2E6IFhHDQo+DQo+IG1nbXRfYWRkcjogMTkyLjE2OC4xMC4yDQo+DQo+IG1nbXRfYWRk
cjogMTkyLjE2OC4yMC4yDQo+DQo+IG5hbWU6IG5pLW4zeHgtMzJCMUEzMw0KPg0KPiBwcm9kdWN0
OiBuMzEwDQo+DQo+IHR5cGU6IG4zeHgNCj4NCj4g4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU
4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU
4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCUDQo+DQo+DQo+IEZp
cnN0LCBvbiBib3RoIG1hY2hpbmUgSSBjb3VsZCBub3Qgc3VjY2VlZCBpbiByZWNvbmdpbnNpbmcg
dGhlIEIyMTAuIA0KPiBUaGUgbWFjaGluZSBub3cgd29ya2luZyBzdWdnZXN0ZWQgbWUgdG8gcnVu
IHRoZSBDTUQg4oCcc3VkbyANCj4gL3Vzci9sb2NhbC9saWIvdWhkL3V0aWxzL3VoZF9pbWFnZXNf
ZG93bmxvYWRlci5weeKAnCwgZml4aW5nIHRoZSBpc3N1ZS4gDQo+IFRoZSBzYW1lIGxpbmUgZG9l
cyBub3Qgd29yayBvbiB0aGUgb3RoZXIgbWFjaGluZS4gQ2FuIGFueW9uZSBoZWxwIG1lIA0KPiB3
aXRoIHRoaXM/DQo+DQo+IFRoYW5rIHlvdSwNCj4NCj4gRnJhbmNlc2NvDQo+DQpXaGF0IGRvZXMg
ImxzdXNiIiBzaG93IG9uIHRoZSBtYWNoaW5lIHRoYXQgY2Fubm90IGZpbmQgeW91ciBCMjEwPw0K
DQpHZW5lcmFsbHksIHRoZSBpbnN0YWxsZXIgd2lsbCBpbnN0YWxsICJ1aGRfaW1hZ2VzX2Rvd25s
b2FkZXIiIGluIHRoZSANCnNhbWUgZGlyZWN0b3J5IGFzICJ1aGRfZmluZF9kZXZpY2VzIi4NCg0K
DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
