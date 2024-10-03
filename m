Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB1298E7AC
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 02:17:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51B72385986
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2024 20:17:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727914678; bh=S9xPX53llPMnQ3v/+IpuDqAiKY7zTBcK/aqSCMgJ3Q0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LNPu32ds29iJkpGcDQq6e01pZ9GBP6AwuFc4x20J3LIoAoq0tKK3ao2NWkkE4v3Z2
	 ZoV6Lcc5LyrNOu/aV7fzuGi8HCwfU4FBWhbt87reGuYHM209+7Uz22hZ5kpLj3TDSw
	 K+56qxITBGOqxIjBW/UFg21JGtwU3EIM0Un2sDUBmWhGqxzPJDNUDFjwMs059OKYTI
	 b8xP89bJoljAc0Ea5N069O845E/WQKNTHIxymMSHUjpL0x4I64fe8vZroGJ6CIPZRU
	 PMx2dDWjqGK/WZg24zrvmHDVwtOKOhmvfaeRYfcs6rwkxVaUYefWcJfU3/s1D4vTvu
	 1YB5KJZ2/9aAw==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B8DF385852
	for <usrp-users@lists.ettus.com>; Wed,  2 Oct 2024 20:16:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aqiRIz0o";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6cb27e974ceso2795166d6.1
        for <usrp-users@lists.ettus.com>; Wed, 02 Oct 2024 17:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727914615; x=1728519415; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MVDSr22WiEwoCDv0yty869aFFYZsCtczD9hG/C5p0nk=;
        b=aqiRIz0owbHIj4SbNjL+2IW6QtXcucUtk1icPdKH31y7PH6ugxAjdhva778WV0zhos
         JgZ5bpeqhY1FVI7cEy0Tcg3ZMKzvkYIfDTX0B0KZF7dwO4Pd7lQyPzsCygsB6vKHTB8P
         q3rh+z4F64SbRu+1Dygheae/8S8UuB5zMCW9N0CsrHPaj7/FtqbJpyGzo2NjMTcmwtW8
         WKf6iajX2o63wCwRPbhZSv/g/PK1R2xKnNvrgrFsIZYOBVg0aen94GsQngq97ywOSDKB
         QPSbZj1E2+OIEhheGe2c58zEIE1Smw8Y1QADcxe9kvdZ2FbZELj/AizFLHJijXAq4bhS
         pOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727914615; x=1728519415;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MVDSr22WiEwoCDv0yty869aFFYZsCtczD9hG/C5p0nk=;
        b=RX3fj7k/1nsXdsx76Gh5woMmJ2kLWG0nRAIMR05LuQ/IM1ftVhiWXoMyw6OzppfvXP
         em5sT4acbbSCJIzLx+BB1fWl/GfcQC5JqZEExk1EZbvyemd+9WmEvujbFt37RsszLsJN
         RlcfyzNuWpSESKGS5utphkiyoTUncWsIMm2PrYlSjKV7v1yN+b9ZbMhuMphWVEIJ0Oer
         LmmuSyV0oci7Gjvygb/G62ZU/2//CyNCdh5of0YhWETXDaP+F5FYUKHOB6pGbCe2QCmU
         J0Fz9GMMzUaKO6PUtq/UIBZL+n+S8Z6vtc5x+kFMYmWdgG3A+kSFU9intbBDHbgAAPpD
         +5eg==
X-Gm-Message-State: AOJu0YwDbs0LYu98VBhpYKlCfqB7KWAYT6UWFHgwRjxhDS8HcrXuTWhm
	tcIuW3ly/0yP4QAQf1rwsP6PcPLlk0R5dSzE9Dz/xMxU6S5+IICCTzdFdw==
X-Google-Smtp-Source: AGHT+IHjCoi9F8NYvl0kwC0rF/DiylXCze3xJTswi6OQHFpHjNP05+DppqdjBl83QHZ6+Ry+Ga66iA==
X-Received: by 2002:a05:6214:4610:b0:6cb:3839:2016 with SMTP id 6a1803df08f44-6cb81a0ee0dmr67163736d6.24.1727914615021;
        Wed, 02 Oct 2024 17:16:55 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6cb935d6286sm562596d6.46.2024.10.02.17.16.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2024 17:16:54 -0700 (PDT)
Message-ID: <f2cfcd17-eaa6-46c0-9243-e56c848d3a4c@gmail.com>
Date: Wed, 2 Oct 2024 20:16:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <b1YtrmPd3RxWXd1CWtUiBdoSKO9c3EXoVd33KLw83U@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <b1YtrmPd3RxWXd1CWtUiBdoSKO9c3EXoVd33KLw83U@lists.ettus.com>
Message-ID-Hash: UZXOTZHG5I6MBGP7CG2EXHUD6X47R4QJ
X-Message-ID-Hash: UZXOTZHG5I6MBGP7CG2EXHUD6X47R4QJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UZXOTZHG5I6MBGP7CG2EXHUD6X47R4QJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDIvMTAvMjAyNCAyMDowOCwgbXJ1YW5lLS0tIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPg0K
PiBIaSBNYXJjdXMhDQo+DQo+IEhhaGFoYcKgIEkgdGhvcm91Z2hseSBlbmpveWVkIHRoZSByYW50
IcKgIMKgIEkgdGhpbmsgeW91IGFyZSBjb3JyZWN0IA0KPiBhYm91dCBNYWtlIGFuZCBpdHMgdmFy
aWF0aW9ucy7CoCDCoEluZGlzcGVuc2FibGUgc2VlbXMgYW4gdW5kZXJzdGF0ZW1lbnQgDQo+IGZv
ciBzb21ldGhpbmcgdGhhdCBpcyBzbyBwZXJ2YXNpdmUgaW4gc29mdHdhcmUgZGV2ZWxvcG1lbnQu
wqAgwqBBcyBJIA0KPiBtZW50aW9uZWQsIEkgYW0gcHJpbWFyaWx5IGFuIEZQR0EgZGV2ZWxvcGVy
LsKgIMKgQXQgc29tZSBwb2ludCwgd2hlbiB0aGUgDQo+IFp5bnEgYW5kIFp5bnFNUCBTb0NzIHdl
cmUgcmVsZWFzZWQsIHRoZSBzb2Z0d2FyZSBjb21tdW5pdHkgc2VlbWVkIHRvIA0KPiAoaW5pdGlh
bGx5LCBhdCBsZWFzdCkgc2NhdHRlciB3aGVuIHRoZXkgc2F3ICJGUEdBIiBpbiB0aGUgbmFtZSwg
YW5kIEkgDQo+IGZvdW5kIG15c2VsZiBpbmFkdmVydGVudGx5ICJ2b2x1bi10b2xkIiB0byBiZSBy
ZXNwb25zaWJsZSBmb3IgYnVpbGRpbmcgDQo+IExpbnV4IHJlbGVhc2VzIHdpdGggY3VzdG9tIGRy
aXZlcnMgZm9yIG15IGhhcmR3YXJlLiA6LSnCoCBJdCB3YXMgDQo+IGhvcnJpZnlpbmchIDotKQ0K
Pg0KPiBZb3UgZG9uJ3Qgc2VlIE1ha2UgaW52b2x2ZWQgaW4gRlBHQSBidWlsZHMgYXMgZnJlcXVl
bnRseSBhcyB5b3UnZCANCj4gZXhwZWN0LCBjb25zaWRlcmluZyB0aGUgcG9wdWxhcml0eSBvZiBT
b0NzIHRoZXNlIGRheXMuIMKgQXMgYSANCj4gc2VsZi1wcm9jbGFpbWVkICJDcnVzdHkgT2xkIEhh
cmR3YXJlIEd1eSIsIEknbSBub3QgcGVybWl0dGVkIHRvIA0KPiBhY3R1YWxseSBzYXkgb3V0IGxv
dWQgdGhhdCBJIHRoaW5rIE1ha2UgaXMgYSBnb29kIGFkZGl0aW9uIHRvIHRoZSBGUEdBIA0KPiBk
ZXZlbG9wbWVudCBmbG93Li4uIDstKcKgIC4uLmJ1dCBJIGhhdmUgdG8gYWRtaXQgdGhhdCBJJ3Zl
IGJlZW4gDQo+IHBsZWFzYW50bHkgc3VycHJpc2VkIGJ5IGhvdyBlYXNpbHkgYWxsIGFzcGVjdHMg
b2YgYSBidWlsZCBjYW4gYmUgDQo+IGF1dG9tYXRlZCwgb25jZSB0aGUgaW5pdGlhbCBzZXR1cCBp
cyBkb25lLg0KPg0KPiBJIHRoaW5rIHdoYXQga2VlcHMgbWUgZnJvbSBqdW1waW5nIGluIGNvbXBs
ZXRlbHksIGlzIHRoYXQgbWFueSBhc3BlY3RzIA0KPiBvZiBGUEdBIGRldmVsb3BtZW50IGFyZSBz
dGlsbCB2ZXJ5IG11Y2ggZ3JvdW5kZWQgaW4gSGFyZHdhcmUgDQo+IERldmVsb3BtZW50IHByaW5j
aXBsZXMgYW5kIHRlY2huaXF1ZXMsIHByb2Nlc3NlcyBpbiB3aGljaCBhIEdVSSBpcyANCj4gc3Vw
cmVtZWx5IGhlbHBmdWwuwqAgwqBBdCB0aGUgZW5kIG9mIHRoZSBkYXksIEkgc3RpbGwgbmVlZCB0
byBzZWUgYSANCj4gc2NoZW1hdGljLCBibG9jayBkaWFncmFtLCBvciB3YXZlLWZvcm1zLiDCoFRv
IHRoYXQgZW5kLCBob3dldmVyLCB3aXRoIA0KPiB0aGUgeDQxMCBVSEQgYnVpbGQsIEkgd2FzIGlt
cHJlc3NlZCBieSBob3cgc3RyYWlnaHQtZm9yd2FyZCBpdCB3YXMgdG8gDQo+IG1vZGlmeSB0aGUg
TWFrZSBmaWxlcyBhbmQgYnVpbGQgVGNsIHNjcmlwdHMgdG8gY3JlYXRlIHRoZSBwcm9qZWN0LCAN
Cj4gYnVpbGQgdGhlIElQLCBhbmQgb3BlbiBpdCBpbiB0aGUgR1VJIGZvciBtZSB0byBpbnNwZWN0
IGFuZCBjb250aW51ZSBpbiANCj4gbXkgbm9ybWFsIEZQR0EtZGV2IGZsb3cuDQo+DQo+IEhhaGFo
YcKgIMKgSSB0cmllZCB0byBrZWVwIHRoaXMgc2hvcnQsIGJ1dCBJIGFwcGFyZW50bHkgcmVwbHkg
dG8gcmFudHMgDQo+IHdpdGguLi5tb3JlIHJhbnRpbmcuwqAgwqA6LSkNCj4NCj4gVGhhbmtzIGZv
ciB0aGUgcmVwbHkhDQo+DQo+IE1pa2UNCj4NCkkgd2lsbCBvYnNlcnZlIHRoYXQgbWFueSBvZiB0
aGUgZG9jdHJpbmVzIHdoaWNoIHB1cmVseS1zb2Z0d2FyZSBwZW9wbGUgDQp0YWtlIGZvciBncmFu
dGVkLCBsaWtlIGFic3RyYWN0aW9uIGFuZCBtb2R1bGFyaXR5LCB0ZW5kDQogwqAgdG8gYmUgZW50
aXJlbHktYWJzZW50IGZyb20gdGhlIHB1cmVseS1oYXJkd2FyZSBtaW5kc2V0LsKgIFRoZXJlJ3Mg
Z29vZCANCnJlYXNvbnMgZm9yIHRoaXMuwqDCoCBTb2Z0d2FyZSBwZW9wbGUgd2FudCB0byBhYnN0
cmFjdCBhd2F5DQogwqAgZnJvbSB0aGUgaW1wbGVtZW50YXRpb24gZGV0YWlscywgd2hlcmVzIHN0
cmljdGx5IGhhcmR3YXJlIHBlb3BsZSwgDQpqdXN0IHdhbnQgdG8gaW1wbGVtZW50IHRoZSBkZXRh
aWxzLsKgwqAgRlBHQSAic3R1ZmYiIGlzIGluIHRoZQ0KIMKgIGFldGhlcmlhbCByZWFsbSB0aGF0
IGV4aXN0cyBiZXR3ZWVuIHRoZSB0d28uLi4NCg0KTWFrZSBlbWVyZ2VkIGZyb20gdGhlIG5lY2Vz
c2l0aWVzIG9mIG1hbmFnaW5nIG1vZHVsYXIgc29mdHdhcmUsIHdoaWNoIA0KbmVjZXNzYXJpbHkg
bWVhbnQgYSBmbG90aWxsYSBvZiBzb3VyY2UgZmlsZXMsIGV0Yy4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
