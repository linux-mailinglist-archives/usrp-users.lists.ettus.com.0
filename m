Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BDE51A16C
	for <lists+usrp-users@lfdr.de>; Wed,  4 May 2022 15:55:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B70438495B
	for <lists+usrp-users@lfdr.de>; Wed,  4 May 2022 09:55:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651672502; bh=PQlTv3M5Ja/qI219ydYfjwyCnkO3WiXcFFvDWhu3sJk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tbsMh7NvpWQKlV4J55ZCgyuAwI3SYk9rGdQ4MdLylRORZlK7bkJWT+P70MuFs+T//
	 /IHQ6WP5I/khN+BIYCtZsFYAhf8ZL9+2SZOnkbZ6tM/P9jv1d8cPAHdIZ+qOn1npI9
	 byjwpRqjwcOE3X8rvlwHSq8pUqLmI4q9WB49l3FDRSuVYpwsJRI2WiZdx2RdhU+Hyi
	 X1X87a+5kL6589AhMcSIQjtcvqdeDdVeNbamwjRbtykAhpesQAHd35OQX0QYmmDcQ9
	 kT5HEmzYu1JGD7K3/RFsQD6/vQVJiIMVNk5RraUq8gK+MD6DsaqzB5VJ3CO8r9d1pM
	 CiWr4rdeypIaA==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A214384851
	for <usrp-users@lists.ettus.com>; Wed,  4 May 2022 09:53:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ov7Ck3fo";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id a5so888534qvx.1
        for <usrp-users@lists.ettus.com>; Wed, 04 May 2022 06:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=rFvYoHQew00fbLKD7sS3jI1335FWlB86v9agSL/Fjy4=;
        b=ov7Ck3fo/ZLvHTCWxuVRBv5E/il0Ml7k8xZuVq2Y534wlpt4hZSLbiuJ1529Brg1Q4
         TEuDj1IUmfCJhJj+y+dcRtwxONMZzh72pfF3raJDqYI+HyglyaVjzZQr4/u3ncldPgw9
         XT88H/NI5QcALoRBJGrWgyoYsHi5FVU0a9ANYEx6uqNrfvhcQFjCIUeo8d5mCg0uiotQ
         9RcmCJkbzQV0dJt6+n/EsAbwL6EbBZymSbBDBq23EigbiUQWH2rtqe5u1BRoilas0xsE
         HGZh9n+vqc/YacZi2AC1u+5VXR4mLAV9l4i5Vibm3cJQQks2RqJX293b3b2K3YQYVzSQ
         UzWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rFvYoHQew00fbLKD7sS3jI1335FWlB86v9agSL/Fjy4=;
        b=3aLuhdBprbeWJJToN7VjNUbvO7BfXsoO7PRTyoMsXIlstxm1ighSjMEegePjd5cwnM
         LqEgPtwaHAold0Z7RP18kQ8FHHctndfKivkQTFLN6GtcsN0bmNtoXxN+jlBnSmfnlwWh
         barFB6nEOeED/vkqMmUfVIuuKm2Gjpt7VGS7iHW1EwhkmwbinwTVofYY/VBh3xzREOSr
         HFayYThoNOjd4hdT85z5AEmEb+/DsLLhlgqHV+YWp9FuMRR/vZ+OfzhNQa2XUDcBLy4Q
         eA47dqOkhTly35ay7Xild+iUXJaTJ8tdHCSlSfvnHgHlFELdr1hULo2PPWOAH1256r7c
         y3YA==
X-Gm-Message-State: AOAM533+eZDiWgWbicu4mm0bTtHgq66ePkH6Bp4oucGtKLm6nQnr55Rs
	md7EWa5Ew7RPOW4Jla/U45vnjnsWXtk=
X-Google-Smtp-Source: ABdhPJzH57NIpn9REn+p0UPyGsVlN6hgwqZNl/CrWvRbonjz0NWlgqtSiCPG2lhevqXLhU+2DvM9Hw==
X-Received: by 2002:a0c:aad7:0:b0:45a:9960:6097 with SMTP id g23-20020a0caad7000000b0045a99606097mr9265337qvb.55.1651672435498;
        Wed, 04 May 2022 06:53:55 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id d26-20020ac847da000000b002f39b99f66esm7682285qtr.8.2022.05.04.06.53.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 May 2022 06:53:55 -0700 (PDT)
Message-ID: <3becaee4-64b1-8f21-f753-604afccacea9@gmail.com>
Date: Wed, 4 May 2022 09:53:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <35179a1b-c803-a381-2ea1-afc1a2a3e592@olifantasia.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <35179a1b-c803-a381-2ea1-afc1a2a3e592@olifantasia.com>
Message-ID-Hash: FUTNOJCBDXMKEUUVB4QXOHYNXMQVS4XM
X-Message-ID-Hash: FUTNOJCBDXMKEUUVB4QXOHYNXMQVS4XM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: data corruption problems with high speed dual channel capturing on USRP E320 over 10 gbit ethernet
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FUTNOJCBDXMKEUUVB4QXOHYNXMQVS4XM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0wNCAwODo0MywgTWFydGluIHdyb3RlOg0KPiBIaSwNCj4NCj4gSSBoYXZlIGRh
dGEgY29ycnVwdGlvbiBwcm9ibGVtcyB3aXRoIGhpZ2ggc3BlZWQgZHVhbCBjaGFubmVsIGNhcHR1
cmluZyANCj4gb24gVVNSUCBFMzIwIG92ZXIgMTAgZ2JpdCBldGhlcm5ldC4NCj4NCj4gTWVkaXVt
IHJhdGUsIGR1YWwgY2hhbm5lbCzCoCBldmVyeXRoaW5nIHNlZW1zIGZpbmUuDQo+IEhpZ2ggc3Bl
ZWQsIHNpbmdsZSBjaGFubmVsLCBldmVyeXRoaW5nIGFsc28gc2VlbXMgZmluZS4NCj4gSGlnaCBz
cGVlZCwgZHVhbCBjaGFubmVsIGNhcHR1cmluZy4gUHJvYmxlbXMuIEhpZ2ggYW1vdW50IG9mIHJh
bmRvbSANCj4gaGlnaCB2YWx1ZXMgaW4gZGF0YXN0cmVhbSBldmVuIHdpdGggbG93IGdhaW4gYW5k
IGxvdyBzaWduYWwgbGV2ZWwpDQo+DQo+IEkgZG8gbm90IHNlZW0gdG8gZ2V0IFUgb3IgTyAoVW5k
ZXJydW4sIE92ZXJydW4pIGVycm9ycw0KPg0KPg0KPiBJIHdhcyB1bmRlciB0aGUgaW1wcmVzc2lv
biB0aGF0IHdpdGggRTMyMCB5b3Ugc2hvdWxkIGJlIGFibGUgdG8gDQo+IGNhcHR1cmUgZHVhbCBj
aGFubmVsIDU2IE1zcHMgc2lnbmFscy4gSWYgdGhhdCBpcyBub3QgZmVhc2FibGUgdGhlbiB3ZSAN
Cj4gaGF2ZSBhIHNlcmlvdXMgcHJvYmxlbS4NCj4gSSBhbHNvIGRvIG5vdCBzZWUgYW55IGVycm9y
IG1lc3NhZ2VzLg0KPiBXZSB0ZXN0ZWQgb24gdHdvIGRpZmZlcmVudCBFMzIwxZsgb24gdHdvIGRp
ZmZlcmVudCBob3N0LVBDJ3MuIFNhbWUgcmVzdWx0Lg0KPg0KPg0KPiBEbyB5b3UgYWxzbyBoYXZl
IHRoZXNlIHByb2JsZW1zPw0KPg0KPiBEbyB5b3UgaGF2ZSB0aXBzIG9uIGhvdyB0byBzb2x2ZSBv
ciBjaGVjayB3aGF0IHRoZSBpc3N1ZSBpcz8NCj4NCj4gVGhhbmtzIGluIGFkdmFuY2UuDQo+DQo+
IFBsZWFzZSBzZWUgYmVsb3cgZm9yIGRldGFpbHMNCj4NCj4NCj4gV2hlbiBjYXB0dXJlZCB3aXRo
IHVoZF9yeF9jZmlsZSBvciBvdXIgb3duIGNhcHR1cmUgc2NyaXB0cy4NCj4gVGhlIG91dHB1dCBk
YXRhIHNob3dzIHJhbmRvbSB2ZXJ5IGhpZ2gsIHVzdWFsbGUgZXZlbiBmdWxsIHNjYWxlIHZhbHVl
cyANCj4gZXZlbiBpZiB0aGUgaW5wdXQgc2lnbmFsIGlzIHNtYWxsIGFuZCBnYWluIGxvdy4NCj4g
V2l0aCBpbnQgMTYgb3V0cHV0IHZhbHVlcyBhcmUgYmV0d2VlbiAzMjc2OCBhbmQgLTMyNzY3LiBX
aXRoIGNvbXBsZXggDQo+IGZsb2F0IGZyb20gLTEuMCB0byAxLjANCj4NCj4gVGhlIGNhcHR1cmUg
aXMgZG9uZSBmcm9tIGEgaG9zdC1wYyB1c2luZyB0aGUgRTMyMCBhcyByZW1vdGUgY2FwdHVyZSAN
Cj4gZGV2aWNlIG92ZXIgMTAgR2JpdCBldGhlcm5ldC4NCj4NCj4gVGhlIFVTUlAgRTMyMCBpcyBy
dW5uaW5nIFVIRCA0LjAuMC4wDQo+IHJvb3RAbmktZTMyMC0zMjFEMDlDOn4jIHVoZF9jb25maWdf
aW5mbyAtLXZlcnNpb24NCj4gVUhEIDQuMC4wLjAtMC1nOTBjZTYwNjINCj4NCj4gVGhlIGhvc3Qg
cGMgaXMgYWxzbyBydW5uaW5nIHVoZF80LjAuMC4wOg0KPiBubGR1ZG9rMUBub2lzZWdhdGU6fiQg
dWhkX2NvbmZpZ19pbmZvIC0tdmVyc2lvbg0KPiBVSEQgNC4wLjAuMC0xMzMtZzdlYzA0ODg2DQo+
DQo+DQo+IGR1YWwgY2hhbm5lbCBoaWdoIHNwZWVkIHRlc3Qgd2l0aCBjb21wbGV4IGludDE2IChj
b21wbGV4IHNob3J0KQ0KPiB3cm9uZyB2YWx1ZXMgaW4gYm90aCBjaGFubmVscy4gV2hhdGV2ZXIg
dGhlIGdhaW4uIHZhbHVlcyBnbyBmcm9tIA0KPiAtMzI3NjcgdG8gMzI3NjgNCj4gdWhkX3J4X2Nm
aWxlIC1hIG1hc3Rlcl9jbG9ja19yYXRlPTU2ZTYgLWMgMCwxIC1nIDQ0LjAgLXIgNTZlNsKgIC1m
IA0KPiAxMDUuMGU2IC1OIDU2ZTYgLXMgdG1wX2NzaG9ydF81Nk1fZzQ0LnJhdw0KPiB1aGRfcnhf
Y2ZpbGUgLWEgbWFzdGVyX2Nsb2NrX3JhdGU9NTZlNiAtYyAwLDEgLWfCoCAwLjAgLXIgNTZlNsKg
IC1mIA0KPiAxMDUuMGU2IC1OIDU2ZTYgLXMgdG1wX2NzaG9ydF81Nk1fZzAucmF3DQo+DQo+IFNh
bWUgcmVzdWx0IHdpdGggY29tcGxleCBmbG9hdDMyIG91dHB1dCwgdmFsdWVzIGZvIGZyb20gLTEu
MCB0byArMS4wIA0KPiB3aGF0ZXJ2ZXIgdGhlIGdhaW4uDQo+IHVoZF9yeF9jZmlsZSAtYSBtYXN0
ZXJfY2xvY2tfcmF0ZT01NmU2IC1jIDAsMSAtZyA0NC4wIC1yIDU2ZTbCoCAtZiANCj4gMTA1LjBl
NiAtTiA1NmU2IHRtcF9jZmxvYXRfNTZNX2c0NC5yYXcNCj4gdWhkX3J4X2NmaWxlIC1hIG1hc3Rl
cl9jbG9ja19yYXRlPTU2ZTYgLWMgMCwxIC1nwqAgMC4wIC1yIDU2ZTbCoCAtZiANCj4gMTA1LjBl
NiAtTiA1NmU2IHRtcF9jZmxvYXRfNTZNX2cwLnJhdw0KPg0KPg0KPiBTYW1lIHRlc3QgYXQgbWVk
aXVtIGRhdGFyYXRlLiBWYWx1ZXMgYXJlIE9LLiBjb21wbGV4IGZsb2F0IG9yIGNvbXBsZXggDQo+
IHNob3J0IG91dHB1dC4gTm90ZQ0KPiB1aGRfcnhfY2ZpbGUgLWEgbWFzdGVyX2Nsb2NrX3JhdGU9
MTZlNiAtYyAwLDEgLWcgNDQuMCAtciAxNmU2wqAgLWYgDQo+IDEwNS4wZTYgLU4gMTZlNiAtcyB0
bXBfY3Nob3J0XzE2TS5yYXcNCj4gdWhkX3J4X2NmaWxlIC1hIG1hc3Rlcl9jbG9ja19yYXRlPTE2
ZTYgLWMgMCwxIC1nIDQ0LjAgLXIgMTZlNsKgIC1mIA0KPiAxMDUuMGU2IC1OIDE2ZTYgdG1wX2Nm
bG9hdF8xNk0ucmF3DQo+DQo+IFNpbmdsZSBjaGFubmVsIHRlc3QgYXQgaGlnaCByYXRlIGFsc28g
c2VlbXMgT0sgd2l0aCBlYXRoZXIgY29tcGxleCANCj4gaW50MTYgb3IgY29tcGxleCBmbG9hdDMy
IG91dHB1dCB2YWx1ZXMuDQo+IE5vdGUgdGhhdCB3aXRoIGNvbXBsZXggZmxvYXQgb3V0cHV0IHRo
ZSBzYW1lIHdyaXRlc3BlZWTCoCB0byB0aGUgc3NkIGlzIA0KPiBuZWVkZWQgYXMgd2l0aCBkdWFs
IGNoYW5uZWwgYW5kIGNvbXBsZXggaW50MTYgb3V0cHV0LiBTbyBpdCBkb2VzIG5vdCANCj4gc2Vl
bSB0byBiZSBhIHNsb3cgZGlzayBpc3N1ZS4gV291bGQgYWxzbyBub3QgYmUgdmVyeSBsaWtlbHkg
c2luY2Ugd2UgDQo+IGFyZSBzdG9yaW5nIG9ubHkgMSBzZWNvbmQgb2YgZGF0YSB3aGljaCBzaG91
bGQgZml0IGluIGxpbnV4IGRpc2sgd3JpdGUgDQo+IGJ1ZmZlci4NCj4gdWhkX3J4X2NmaWxlIC1h
IG1hc3Rlcl9jbG9ja19yYXRlPTU2ZTYgLWcgNDQuMCAtciA1NmU2wqAgLWYgMTA1LjBlNiAtTiAN
Cj4gNTZlNiAtcyB0bXBfY3Nob3J0XzU2TV9nNDRfc2luZ2xlLnJhdw0KPiB1aGRfcnhfY2ZpbGUg
LWEgbWFzdGVyX2Nsb2NrX3JhdGU9NTZlNiAtZyA0NC4wIC1yIDU2ZTbCoCAtZiAxMDUuMGU2IC1O
IA0KPiA1NmU2IHRtcF9jZmxvYXRfNTZNX2c0NF9zaW5nbGUucmF3DQo+DQo+DQo+IFlvdSBjYW4g
bG9vayBhdCBjb21wbGV4IGZsb2F0IG91dHB1dCBkYXRhIHdpdGggZ3ItcGxvdF9pcSBhbmQgZ3Jf
cGxvdF9mZnQNCj4gY29tcGxleCBzaG9ydCBkYXRhIGNhbiBiZSBjb252ZXJ0ZWQgdG8gY29tcGxl
eCBmbG9hdCB3aXRoIG91ciBvd24gDQo+IGxpdHRsZSBjb252ZXJzaW9uIHNjcmlwdC4NCj4gY3No
b3J0X3RvX2NmbG9hdC5weSAtaSBpbnB1dGZpbGVuYW1lLnJhdyAtbyBvdXRwdXRmaWxlbmFtZS5y
YXcNCj4gKEkgY2FuIHNlbmQgdGhlIGNvbnZlcnNpb24gc2NyaXB0IGlmIHlvdSBuZWVkIGl0LiBJ
dCBpcyBqdXN0IGEgZmlsZSANCj4gc291cmNlLCBpbnRlcmxlYXZlZCBzaG9ydCB0byBjb21wbGV4
IGJsb2NrIGFuZCBmaWxlIHNpbmspDQo+DQo+DQo+IEV4YW1wbGU6DQo+IHVoZF9yeF9jZmlsZSAt
YSBtYXN0ZXJfY2xvY2tfcmF0ZT01NmU2IC1jIDAsMSAtZ8KgIDAuMCAtciA1NmU2wqAgLWYgDQo+
IDEwNS4wZTYgLU4gNTZlNiAtcyB0bXBfY3Nob3J0XzU2TV9nMC5yYXcNCj4gI2ZpcnN0IGNoYW5u
ZWwNCj4gY3Nob3J0X3RvX2NmbG9hdC5weSAtaSB0bXBfY3Nob3J0XzU2TV9nMC4wLnJhdyAtbyAN
Cj4gdG1wX2NzaG9ydF81Nk1fZzBfY29udmVydGVkX3RvX2NmbG9hdC4wLnJhdw0KPiAjc2Vjb25k
IGNoYW5uZWwNCj4gY3Nob3J0X3RvX2NmbG9hdC5weSAtaSB0bXBfY3Nob3J0XzU2TV9nMC4xLnJh
dyAtbyANCj4gdG1wX2NzaG9ydF81Nk1fZzBfY29udmVydGVkX3RvX2NmbG9hdC4xLnJhdw0KPg0K
PiAjc2hvdyBkYXRhDQo+IGdyLXBsb3RfaXEgLVIgNTZlNiB0bXBfY3Nob3J0XzU2TV9nMF9jb252
ZXJ0ZWRfdG9fY2Zsb2F0LjAucmF3DQo+IGdyLXBsb3RfaXEgLVIgNTZlNiB0bXBfY3Nob3J0XzU2
TV9nMF9jb252ZXJ0ZWRfdG9fY2Zsb2F0LjEucmF3DQo+DQo+DQo+IEJlc3QgcmVnYXJkcywNCj4N
Cj4gTWFydGluIER1ZG9rIHZhbiBIZWVsDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+DQpNYXJ0aW46DQoNCkkndmUgZm9yd2FyZGVkIHlvdXIgbm90
ZSB0byBFdHR1cyBSJkQuDQoNCkJ1dCBpbiB0aGUgbWVhbnRpbWUsIGFyZSB5b3UgcnVubmluZyB0
aGUgbGF0ZXN0IFVIRD8NCg0KV2hhdCBoYXBwZW5zIGlmIHlvdSByZWR1Y2UgdGhlIHNhbXBsZSBy
YXRlICJhIGxpdHRsZSIgLS0gbGlrZSBkb3duIHRvIA0KNTJNc3BzPw0KDQpJIGtub3cgdGhhdCBv
biBvdGhlciBwbGF0Zm9ybXMgdGhhdCB1c2UgdGhlIEFEOTM2MSAoYXMgdGhlIEUzMjAgZG9lcykg
DQp0aGF0IHRoZSBtYXhpbXVtIHN1cHBvcnRlZCByYXRlIGZvciBkdWFsLWNoYW5uZWwgaXMgMzJN
c3BzLCBidXQgdGhhdCBtYXkgDQpqdXN0IGJlIGJlY2F1c2Ugb2YgdGhlDQogwqAgdHlwZSBvZiBj
bG9ja2luZytkYXRhIGludGVyZmFjZSB1c2VkIG9uIHRob3NlIHBsYXRmb3Jtcy0tdGhlIEFEOTM2
MSANCnN1cHBvcnRzIGEgY291cGxlIG9mIGRpZmZlcmVudCBpbnRlcmZhY2UgcmVnaW1lcy4uLg0K
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
