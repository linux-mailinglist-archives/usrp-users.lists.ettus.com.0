Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A17229B583C
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2024 01:08:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A29973865C6
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 20:08:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730246933; bh=yEz618yZ8cgRQyk0bQ3cA+FFlx4McjXaq4QBeWo5qV0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=u3QUHmlUclylFe2d6BdDWCM6hPP58qzIk2vKpOozCVQqGWrVPCSdyiHzgTiCEy/I0
	 7mlGn2GBNTz1nYamNEA83Z+urU91fWJKHAUftDEHwuj17JC1X1IF5SwthYsUu05/12
	 BavSGQS4zw6NkWU+j0ubcFZl9jXfvqaxcvHrztZ/vpVHS7E4fp0zkaEuJx62U2XVy/
	 PWtbimE4eAdYdUxi8d8cC6MNGHyeIS//yULFkE8aIK/43IoOqpDJniQv+TfPtDHr9E
	 yYNlQFhhSlWPAg7Z9aNMIHa7RfM7KSW4ra1NW2Xnudfdz2YWsxIbb0uUKiN4gNAz2y
	 pQfVkhkNDSlvA==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id F200B3864D4
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 20:08:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iv+oleo+";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6cbf347dc66so38378086d6.3
        for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 17:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730246918; x=1730851718; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sJ5h4qKhbyo/zyWQPPlHJH9d4klDgTQjYDDeWc0MeGw=;
        b=iv+oleo+OHl/baTPFVtmUboxKYF8FuS02MiqiE5P1nWEk7e/SHjF4WMbzPsbTRD9NX
         XwEUXop4B0R0FgzHIqfAdowhEO2qMVCd/BBYO/l2fP3CtHB8J0eH/aZAIzG2HDcocr+/
         1c584kHZedncqVZC7n/Igcp7kOOZBxzFmbYPJro/913rFMzhSBAr6ZgT5EFbreilB7Mv
         MXPa+RRELyhqveXYDqSEtt7yxWqTT+deh4NZpnpjShfiM/gMHLgf1voUHzRFuBq8G/1F
         6vRDCgpyaGNMmRc9rpTCsrdeDlP7I1k4HIW14f5ivM8LXS6mqKHKf2mNeuyH23x2rRaN
         KW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730246918; x=1730851718;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sJ5h4qKhbyo/zyWQPPlHJH9d4klDgTQjYDDeWc0MeGw=;
        b=szxGvnVNdQs8e66LkVQxumPCdGGcXAw6yahVaToTEXrG2ACC2HHn0+umQUH0W3UKdB
         YOE+xi71DirgaCNM4XiZEMrorR+xvReE/3b1N8jSq5ob18YLunoT4+/yR8JnZozpzzpN
         AfPKfHdbipNhvbHkElhFRGDWdCKxtDUF0brhJoIuzjHjPbKOx2N8OfnsFW9x+EPNpNO0
         S2pIvQDSduAFQmYXvbWBAPaclOgNlyL0z96F8HizL5k0A07nIG0Z6JS+bRsR/pnhnfpN
         AnEkVJIeZBEalietdHTi8GTQgJjGqRI5cTXvvg8lCq7tTqw60H+yHS6imH7uqsYaKseu
         hGxg==
X-Gm-Message-State: AOJu0YyLHyRty9xKaMjEKhb+IalPDWx5m61l8ux0+AKJqaW9U2JKdYmw
	TU/x134V4R9jYJ8OpGTe95Wbw6Cs+rDKviPuhkSeYHuCCsfY4h0ztJq1Cw==
X-Google-Smtp-Source: AGHT+IHgqhePTL+24BT/PY2G3hDDIgOOu8PgbcPz7l3BVcrYpxYIS/qs3oDO72JRHPuJgpQp1A82aQ==
X-Received: by 2002:a05:6214:5a0b:b0:6cc:2d3c:6472 with SMTP id 6a1803df08f44-6d1856b4898mr180314696d6.14.1730246918136;
        Tue, 29 Oct 2024 17:08:38 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d179a2cab3sm46323476d6.104.2024.10.29.17.08.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 17:08:37 -0700 (PDT)
Message-ID: <65e81dae-d51e-44b5-89bc-0e5fcacfb266@gmail.com>
Date: Tue, 29 Oct 2024 20:08:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Y5q2nxvU9OHuGJo8kTMWfFNdBCvA12VovZjddhOAec@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Y5q2nxvU9OHuGJo8kTMWfFNdBCvA12VovZjddhOAec@lists.ettus.com>
Message-ID-Hash: BETSC7DM22FE2P2UZBHTNILA5IV5TQ64
X-Message-ID-Hash: BETSC7DM22FE2P2UZBHTNILA5IV5TQ64
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Drop packets and sequence errors during X410 DPDK benchmark test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BETSC7DM22FE2P2UZBHTNILA5IV5TQ64/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMTAvMjAyNCAxOTozOCwgZGhwYW5jaGFhaUBnbWFpbC5jb20gd3JvdGU6DQo+DQo+IEhp
LA0KPg0KPiBJ4oCZbSB0cnlpbmcgdG8gY29uZHVjdCB0aGUgVUhEIGJlbmNobWFyayB0ZXN0IHVz
aW5nIERQREsgb24gWDQxMCByYWRpby4gDQo+IEnigJltIHVzaW5nIHRoZSBOSSBEdWFsIDEwMCBH
aWdhYml0IEV0aGVybmV0IFBDSWUgTklDIGNhcmQsIHVzaW5nIHRoZSANCj4gTWVsbGFub3ggZHJp
dmVycywgYW5kIGhhdmUgdGhlIFVDXzIwMCBmcGdhIGltYWdlIGxvYWRlZCBvbiB0aGUgcmFkaW8u
IA0KPiBIb3dldmVyLCBJIGtlZXAgZXhwZXJpZW5jaW5nIHBhY2tldCBkcm9wcyBhbmQgc2VxdWVu
Y2UgZXJyb3JzIHdoZW4gSSANCj4gZG8gdGhhdC4gQW55IGlkZWEgd2h5IHRoYXTigJlzIGhhcHBl
bmluZz8NCj4NCj4gL3Vzci9sb2NhbC9saWIvdWhkL2V4YW1wbGVzJCBzdWRvIC4vYmVuY2htYXJr
X3JhdGUgLS1hcmdzIA0KPiAidHlwZT14NHh4LHByb2R1Y3Q9eDQxMCxhZGRyPTE5Mi4xNjguMjAu
MyxtZ210X2FkZHI9MTkyLjE2OC4xLjMsdXNlX2RwZGs9MSIgDQo+IC0tcHJpb3JpdHkgImhpZ2gi
IC0tbXVsdGlfc3RyZWFtZXIgLS1yeF9yYXRlIDI0NS43NmU2IC0tcnhfc3ViZGV2IA0KPiAiQjox
IiAtLXR4X3JhdGUgMjQ1Ljc2ZTYgLS10eF9zdWJkZXYgIkI6MCINCj4NCj4gW0lORk9dIFtVSERd
IGxpbnV4OyBHTlUgQysrIHZlcnNpb24gMTEuNC4wOyBCb29zdF8xMDc0MDA7IERQREtfMjEuMTE7
IA0KPiBVSERfNC43LjAuSEVBRC0wLWdhNWVkMTg3Mg0KPg0KPiBFQUw6IERldGVjdGVkIENQVSBs
Y29yZXM6IDMyDQo+DQo+IEVBTDogRGV0ZWN0ZWQgTlVNQSBub2RlczogMQ0KPg0KPiBFQUw6IERl
dGVjdGVkIHNoYXJlZCBsaW5rYWdlIG9mIERQREsNCj4NCj4gRUFMOiBNdWx0aS1wcm9jZXNzIHNv
Y2tldCAvdmFyL3J1bi9kcGRrL3J0ZS9tcF9zb2NrZXQNCj4NCj4gRUFMOiBTZWxlY3RlZCBJT1ZB
IG1vZGUgJ1ZBJw0KPg0KPiBFQUw6IE5vIGF2YWlsYWJsZSAxMDQ4NTc2IGtCIGh1Z2VwYWdlcyBy
ZXBvcnRlZA0KPg0KPiBFQUw6IFByb2JlIFBDSSBkcml2ZXI6IG1seDVfcGNpICgxNWIzOjEwMTcp
IGRldmljZTogMDAwMDowMTowMC4wIA0KPiAoc29ja2V0IDApDQo+DQo+IEVBTDogUHJvYmUgUENJ
IGRyaXZlcjogbWx4NV9wY2kgKDE1YjM6MTAxNykgZGV2aWNlOiAwMDAwOjAxOjAwLjEgDQo+IChz
b2NrZXQgMCkNCj4NCj4gVEVMRU1FVFJZOiBObyBsZWdhY3kgY2FsbGJhY2tzLCBsZWdhY3kgc29j
a2V0IG5vdCBjcmVhdGVkDQo+DQo+IFswMDowMDowMC4wMDAxMDldIENyZWF0aW5nIHRoZSB1c3Jw
IGRldmljZSB3aXRoOiANCj4gdHlwZT14NHh4LHByb2R1Y3Q9eDQxMCxhZGRyPTE5Mi4xNjguMjAu
MyxtZ210X2FkZHI9MTkyLjE2OC4xLjMsdXNlX2RwZGs9MS4uLg0KPg0KPiBbSU5GT10gW01QTURd
IEluaXRpYWxpemluZyAxIGRldmljZShzKSBpbiBwYXJhbGxlbCB3aXRoIGFyZ3M6IA0KPiBtZ210
X2FkZHI9MTkyLjE2OC4xLjMsdHlwZT14NHh4LHByb2R1Y3Q9eDQxMCxzZXJpYWw9MzI4QUZENyxu
YW1lPW5pLXg0eHgtMzI4QUZENyxmcGdhPVVDXzIwMCxjbGFpbWVkPUZhbHNlLGFkZHI9MTkyLjE2
OC4yMC4zLHVzZV9kcGRrPTENCj4NCj4gW0lORk9dIFtNUE0uUGVyaXBoTWFuYWdlcl0gaW5pdCgp
IGNhbGxlZCB3aXRoIGRldmljZSBhcmdzIA0KPiBgZnBnYT1VQ18yMDAsbWdtdF9hZGRyPTE5Mi4x
NjguMS4zLG5hbWU9bmkteDR4eC0zMjhBRkQ3LHByb2R1Y3Q9eDQxMCx1c2VfZHBkaz0xLGNsb2Nr
X3NvdXJjZT1pbnRlcm5hbCx0aW1lX3NvdXJjZT1pbnRlcm5hbCxpbml0aWFsaXppbmc9VHJ1ZScu
DQo+DQo+IFVzaW5nIERldmljZTogU2luZ2xlIFVTUlA6DQo+DQo+IERldmljZTogWDQwMC1TZXJp
ZXMgRGV2aWNlDQo+DQo+IE1ib2FyZCAwOiB4NDEwDQo+DQo+IFJYIENoYW5uZWw6IDANCj4NCj4g
UlggRFNQOiAwDQo+DQo+IFJYIERib2FyZDogQg0KPg0KPiBSWCBTdWJkZXY6IDENCj4NCj4gVFgg
Q2hhbm5lbDogMA0KPg0KPiBUWCBEU1A6IDANCj4NCj4gVFggRGJvYXJkOiBCDQo+DQo+IFRYIFN1
YmRldjogMA0KPg0KPiBbMDA6MDA6MDEuOTcwMTUzNzU0XSBTZXR0aW5nIGRldmljZSB0aW1lc3Rh
bXAgdG8gMC4uLg0KPg0KPiBbMDA6MDA6MDEuOTcxMjQ4NTA5XSBUZXN0aW5nIHJlY2VpdmUgcmF0
ZSAyNDUuNzYwMDAwIE1zcHMgb24gMSBjaGFubmVscw0KPg0KPiBTZXR0aW5nIFRYIHNwYiB0byAx
OTkyDQo+DQo+IFswMDowMDowMS45NzIxNDcyNzZdIFRlc3RpbmcgdHJhbnNtaXQgcmF0ZSAyNDUu
NzYwMDAwIE1zcHMgb24gMSBjaGFubmVscw0KPg0KPiBVW0QwMDowMDowMi41MDIwNzQwODRdIERl
dGVjdGVkIFJ4IHNlcXVlbmNlIGVycm9yLg0KPg0KPiBVW0QwMDowMDowMy41MDE4NjYwNjNdIERl
dGVjdGVkIFJ4IHNlcXVlbmNlIGVycm9yLg0KPg0KPiBVW0QwMDowMDowNC41MDE5NjU5NzNdIERl
dGVjdGVkIFJ4IHNlcXVlbmNlIGVycm9yLg0KPg0KPiBVW0QwMDowMDowNS41MDE5MDU3MDVdIERl
dGVjdGVkIFJ4IHNlcXVlbmNlIGVycm9yLg0KPg0KPiBVW0QwMDowMDowNi41MDE1MzM5NTZdIERl
dGVjdGVkIFJ4IHNlcXVlbmNlIGVycm9yLg0KPg0KPiBVW0QwMDowMDowNy41MDE1NjcwMjBdIERl
dGVjdGVkIFJ4IHNlcXVlbmNlIGVycm9yLg0KPg0KPiBVW0QwMDowMDowOC41MDE1NTQzMzFdIERl
dGVjdGVkIFJ4IHNlcXVlbmNlIGVycm9yLg0KPg0KPiBVW0QwMDowMDowOS41MDE2MTAyNjddIERl
dGVjdGVkIFJ4IHNlcXVlbmNlIGVycm9yLg0KPg0KPiBVW0QwMDowMDoxMC41MDE5NzE0NzFdIERl
dGVjdGVkIFJ4IHNlcXVlbmNlIGVycm9yLg0KPg0KPiBVW0QwMDowMDoxMS41MDE5MzEzMDFdIERl
dGVjdGVkIFJ4IHNlcXVlbmNlIGVycm9yLg0KPg0KPiBbMDA6MDA6MTEuOTczMTU1MjUwXSBCZW5j
aG1hcmsgY29tcGxldGUuDQo+DQo+IEJlbmNobWFyayByYXRlIHN1bW1hcnk6DQo+DQo+IE51bSBy
ZWNlaXZlZCBzYW1wbGVzOiAyMzQ0MzMwNDc4DQo+DQo+IE51bSBkcm9wcGVkIHNhbXBsZXM6IDEx
MzIwOTEyOA0KPg0KPiBOdW0gb3ZlcnJ1bnMgZGV0ZWN0ZWQ6IDANCj4NCj4gTnVtIHRyYW5zbWl0
dGVkIHNhbXBsZXM6IDIzMzU0OTI1MTINCj4NCj4gTnVtIHNlcXVlbmNlIGVycm9ycyAoVHgpOiAw
DQo+DQo+IE51bSBzZXF1ZW5jZSBlcnJvcnMgKFJ4KTogMTANCj4NCj4gTnVtIHVuZGVycnVucyBk
ZXRlY3RlZDogMTANCj4NCj4gTnVtIGxhdGUgY29tbWFuZHM6IDANCj4NCj4gTnVtIHRpbWVvdXRz
IChUeCk6IDANCj4NCj4gTnVtIHRpbWVvdXRzIChSeCk6IDANCj4NCj4gRG9uZSENCj4NCj4NCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQ0KSSBkb24ndCB0aGluayAibXVsdGlfc3RyZWFtZXIiIGlzIGdvaW5nIHRvIGRvIGFueXRoaW5n
IGZvciB5b3UgaGVyZSwgDQpzaW5jZSB5b3UncmUgb25seSBjb25maWd1cmluZyBhIHNpbmdsZSBj
aGFubmVsIGluIGVhY2ggZGlyZWN0aW9uLg0KIMKgIEkgKlRISU5LKiBtdWx0aV9zdHJlYW1lciB3
aWxsIGhhdmUgWkVSTyBlZmZlY3QsIGJ1dCB5b3UgY291bGQgdHJ5IA0KYWdhaW4gd2l0aG91dCBp
dC4NCg0KRG9pbmcgdGhlIG1hdGgsIHlvdXIgc3lzdGVtIGlzIHRyeWluZyB0byBtb3ZlIGFib3V0
IDJHYnl0ZS9zZWNvbmQgDQppbnRvL291dC1vZiB0aGF0IE5JQywgYW5kIGl0IG1heSBiZSBydW5u
aW5nIG91dCBvZg0KIMKgIGJ1cyBiYW5kd2lkdGggYW5kL29yIENQVS4NCg0KSSBhc3N1bWUgdGhh
dCB5b3UndmUgY29uZmlndXJlZCB5b3VyIENQVSBmb3IgIlBlcmZvcm1hbmNlIiBtb2RlPw0KDQpJ
RiB5b3UgY3V0IHRoZSBzYW1wbGUtcmF0ZSBpbiBoYWxmLCBkbyB5b3Ugc3RpbGwgc2VlIHRoaXMg
cHJvYmxlbT8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQo=
