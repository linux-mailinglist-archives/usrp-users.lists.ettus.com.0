Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A5A949311
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 16:30:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 629A5383E28
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 10:30:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722954624; bh=OXncvGD047jV/oStahbS3/MtI1bWHbLR04CxfYwAm1U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eABEmHRbkUjoXxAV3IHKST7PDLzgcqw8Mah0O67ZoCXKzkKcw/p3lTJ3F9+9ffl+0
	 0S89LHyQd/jpreUPjsvPrkDDw4iKS+6m+v0aQvM3XcIrud3BJY7rVPQ5DftKO/qvCw
	 650K8i/kKG23lqKurlbds9/P8GHXXLl4vQMt3szg0JcHyrpaQUaSXj6Np5yfkdh4E/
	 aApIgELvunkjRZ+4PSOiha0IWdQTLMdQGZvYbmFgAiWM3IifTUDVCGwwPySSkbF+bf
	 V2GkUO8FtD8pTiC37OMjqRJzwpOCIJuH1jZD3D0ncqt9zih/DtgokpEZIrJXjE91Mv
	 /JDm1J7gS4FRg==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EEA53830EE
	for <usrp-users@lists.ettus.com>; Tue,  6 Aug 2024 10:30:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GDYzbDuh";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-451a0b04f6bso3777051cf.2
        for <usrp-users@lists.ettus.com>; Tue, 06 Aug 2024 07:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722954618; x=1723559418; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ozNuN22MAy3JrTJvRE0j6teD23B4/0WA3TDWPe2qP94=;
        b=GDYzbDuhTJ3Nyz2OG49xfJIElGPUrYADQChRQp+15dl3PAyR0E6O8AM+F9O2u2jjVC
         xd2Zpve8i5Hn2touOEcI7pdshs9DQf2otGyBW35NHgjgErBb17ap4uU1ot0v07iGbaFv
         4MFEbrAbsxH2+ygKWrTHr6pgksstcHh4WHGC5u3WBUU4x3oZEsp1c/Vu+Zj3BKekeCih
         M+tFSP2FOqOf9zQCkVv/Ofw1jxnnHn7k28ToPYi4kQ1a4y/A6aUFjAxxKENBBz/MjFjL
         JpuYsMVk9zq1n/EtSVHkEmo8QRpAqcDpybE9o3dvL/qehklCJM3bD/lj6peDPygq/KUr
         IJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722954618; x=1723559418;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ozNuN22MAy3JrTJvRE0j6teD23B4/0WA3TDWPe2qP94=;
        b=Y1XH2uNUFhrdQXNQ3jfmS3O0vGSCSp1T72afh1DCWojMBQowVbQZgnp2yqIcF/8cB6
         y+/DOQ4DahArJoFZKwKKGLPP3ap0q5dSZdxYkhO8nHdPewfG7ZalJVrdrq3T8gBGLNNF
         eR7Dh8w2aG3oXh9twm9XJcMKuYJ9lNqOkN7GIi101YiZiabJLT+qj1DSUHHdY5BFcOMh
         V8NfAFj0eZPtdWnYiVyNAXjamVgtEaGFhHTwzW1dVGGNeoOg3Dn+vcitaIkjDV6gSOlP
         iPC353OefynQNUExDfEUrC1r89RA1P67EZkIErwVf5W10VzVQ7D7ysSqm5f/pIGorcRY
         vmuQ==
X-Gm-Message-State: AOJu0Yx2y/OITFsr5x/HwLnCS+PvVOIQ7C6kqw62Mo6aqUCPRZy7iLKm
	EqSCYKaRXe1KsSfi+c0w9so129vBzUmtMd7xqfauqG/RkO+D+KRhxOh7nA==
X-Google-Smtp-Source: AGHT+IFT0we0yLZpyr3+wCoaI7KoDa82Hn9MCnVixUKQGhEgMH8N1ZxBcGLk1qexv/1WyE8cjAxgTw==
X-Received: by 2002:ac8:574b:0:b0:446:437f:4cc with SMTP id d75a77b69052e-45189276628mr167246231cf.11.1722954618230;
        Tue, 06 Aug 2024 07:30:18 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4518a6ee9c4sm38320761cf.53.2024.08.06.07.30.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Aug 2024 07:30:17 -0700 (PDT)
Message-ID: <5dcedd39-5b0d-4ba7-8627-817299665d80@gmail.com>
Date: Tue, 6 Aug 2024 10:30:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <7ff2a1b8f264d3f9d02e3d6fa60df7dc@mail.gmail.com>
 <CAHVeOW8UJErf8RMuajePLpiyVAnp5qEtyxDe1T9Fo+i27cHRJg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHVeOW8UJErf8RMuajePLpiyVAnp5qEtyxDe1T9Fo+i27cHRJg@mail.gmail.com>
Message-ID-Hash: WSK35E33PT3MXE6JNC4MYEOHBZMYCVQF
X-Message-ID-Hash: WSK35E33PT3MXE6JNC4MYEOHBZMYCVQF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Invalid permissions to write images destination on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WSK35E33PT3MXE6JNC4MYEOHBZMYCVQF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMDgvMjAyNCAxMDoxMywgQ2hyaXMgR29ybWFuIHdyb3RlOg0KPiBIaSBTY290dCwNCj4N
Cj4gSSBiZWxpZXZlIHRoZSBwcm9ibGVtIHlvdSdyZSBleHBlcmllbmNpbmcgaXMgbGludXggbm90
IGFsbG93aW5nIHlvdSB0bw0KPiB3cml0ZSB0byB0aGUgL3Vzci9sb2NhbCBkaXJlY3Rvcnkgc3Ry
dWN0dXJlIGFzIGl0IGlzIG5vdCBvd25lZCBieSB5b3VyDQo+IHVzZXIuICBJIHRoaW5rIHlvdSBo
YXZlIGEgY291cGxlIG9mIGNob2ljZXMgdG8gZG93bmxvYWQgdGhlIGltYWdlcy4NCj4gVGhlIGZp
cnN0IGlzIHRvIGluc3RhbGwgdGhlbSBpbnRvIHRoZSBkZWZhdWx0IGRpcmVjdG9yeSB3aXRoIHN1
ZG8sDQo+IHdoaWNoIEkgd291bGRuJ3QgcmVjb21tZW5kLCB0aGUgc2Vjb25kIGlzIGluc3RhbGxp
bmcgdGhlIHBhY2thZ2VzIGludG8NCj4gYSBkaWZmZXJlbnQgZGlyZWN0b3J5IHdpdGggdGhlIC1p
IHN3aXRjaCB0byB1aGRfaW1hZ2VzX2Rvd25sb2FkZXIucHkuDQo+IFBlcmhhcHMgcnVuIHRoZSBm
b2xsb3dpbmcgY29tbWFuZHMNCj4NCj4gY2Qgfi8NCj4gbWtkaXIgdWhkX2ltYWdlcw0KPiAvdXNy
L2xvY2FsL2xpYi91aGQvdXRpbHMvdWhkX2ltYWdlc19kb3dubG9hZGVyLnB5IC1pIH4vdWhkX2lt
YWdlcw0KPg0KPiBUaGF0IHNob3VsZCBnZXQgeW91IHRoZSBkb3dubG9hZCBpbWFnZXMgSSB0aGlu
ay4NCj4NCj4gSG9wZSB0aGlzIGhlbHBzLA0KPg0KPiBDaHJpcw0KVGhpcyB3aWxsIGNvbWUgd2l0
aCB0aGUgYWRkZWQgImJvbnVzIiB0aGF0IHRvb2xzIHRoYXQgZXhwZWN0IHRoZSBpbWFnZXMgDQp0
byBiZSBpbiAidGhlIHN0YW5kYXJkIGxvY2F0aW9uIiB3aWxsDQogwqAgYmUgdW5hYmxlIHRvIGZp
bmQgdGhlbSB1bmxlc3MgeW91IHNldCB0aGUgYXBwcm9wcmlhdGUgZW52aXJvbm1lbnQgDQp2YXJp
YWJsZXMgdG8gdGVsbCB0aGUgdG9vbHMgd2hlcmUgdG8gZmluZCB0aGVtLg0KDQpUaGVyZSdzIG5v
dGhpbmcgd3Jvbmcgd2l0aCBpbnN0YWxsaW5nIA0KZmlsZXMtdGhhdC1hcmUtY29uY2VwdHVhbGx5
LXN5c3RlbS1maWxlcyBpbiB0aGUgc3RhbmRhcmQgInN5c3RlbSBmaWxlIiANCnBsYWNlcywNCiDC
oCB1c2luZyBzdWRvLg0KDQpUaGlzIHdob2xlIHRoaW5nIGlzIGJhc2ljYWxseSAibGl2aW5nIGFu
ZCB3b3JraW5nIGFzIGEgZGV2IG9uIA0KPFVuaXgtZmFtaWx5LU9TPiIuwqAgSWYgdGhhdCBpcyB0
byBiZSB0aGUgcGxhdGZvcm0gb2YgY2hvaWNlDQogwqAgaW4gdGhpcyBjYXNlLCB0aGVuIGl0IHdv
dWxkIGJlIHByb2R1Y3RpdmUgdG8gbGVhcm4gaG93IHRvIGxpdmUgYW5kIA0Kd29yayBvbiB0aGUg
T1MsIGluY2x1ZGluZyBsZWFybmluZyB3aGF0IGZpbGUNCiDCoCBwZXJtaXNzaW9ucyBhcmUsIGFu
ZCBob3cgdG8gbGl2ZSB3aXRoIHRoZW0gYW5kIHVzZSB0aGVtIGFwcHJvcHJpYXRlbHkuDQoNCkp1
c3QgbXkgJDAuMDIsIGhhdmluZyBiZWVuIGEgIlVuaXgtZmFtaWx5LU9TIiBndXkgc2luY2UgSSB3
YXMgYSANCnRlZW5hZ2VyLS0taW4gMTk3OS4NCg0KDQo+DQo+IE9uIFR1ZSwgQXVnIDYsIDIwMjQg
YXQgNDoxNuKAr0FNIERyLiBTY290dCBCZXN0IHZpYSBVU1JQLXVzZXJzDQo+IDx1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6DQo+PiBEZWFyIFVTUlAtVXNlcnMgR3JvdXAsDQo+Pg0K
Pj4NCj4+DQo+PiBJIGluc3RhbGxlZCBVSEQgNC43IG9uIGFuIFVidW50dSBNaW5pUEMgZm9sbG93
aW5nIHRoZSBvbmxpbmUgaW5zdHJ1Y3Rpb25zLiAgSXQgc2VlbXMgdG8gYmUgd29ya2luZyBPSywg
c28gSSB0cmllZCB1cGRhdGluZyB0aGUgZmlybXdhcmUgZm9yIGFuIE4yMDAgdGhhdCBJIHBpY2tl
ZCB1cCBhcyBhIHRlc3QgdmVoaWNsZSBmb3IgbXkgc2V0IG9mIG5ldyBOMzIwcy4gIEkgcmFuIGlu
dG8gYSBidWcgdGhhdCBJIGhhdmUgbm90IGZvdW5kIGFuIGFuc3dlciB0bywgYXMgc2VlbiBpbiB0
aGUgZm9sbG93aW5nIFRlcm1pbmFsIHNjcmlwdCB3aXRoIFVIRCBjb21tYW5kcyBzaG93biBpbiBC
T0xEIFRZUEU6DQo+Pg0KPj4NCj4+DQo+PiBkcnNjb3R0QFVidW50dTp+L3dvcmthcmVhL3VoZC9o
b3N0L3V0aWxzJCB1aGRfZmluZF9kZXZpY2VzDQo+Pg0KPj4gW0lORk9dIFtVSERdIGxpbnV4OyBH
TlUgQysrIHZlcnNpb24gMTEuNC4wOyBCb29zdF8xMDc0MDA7IFVIRF80LjcuMC4wLTAtZ2E1ZWQx
ODcyDQo+Pg0KPj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0NCj4+DQo+PiAtLSBVSEQgRGV2aWNlIDANCj4+DQo+PiAtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPj4NCj4+IERldmljZSBBZGRyZXNzOg0K
Pj4NCj4+ICAgICAgc2VyaWFsOiBFMlIxNlRFVU4NCj4+DQo+PiAgICAgIGFkZHI6IDE5Mi4xNjgu
MTAuMg0KPj4NCj4+ICAgICAgbmFtZToNCj4+DQo+PiAgICAgIHR5cGU6IHVzcnAyDQo+Pg0KPj4N
Cj4+DQo+Pg0KPj4NCj4+IGRyc2NvdHRAVWJ1bnR1On4vd29ya2FyZWEvdWhkL2hvc3QvdXRpbHMk
IHVoZF91c3JwX3Byb2JlDQo+Pg0KPj4gW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNp
b24gMTEuNC4wOyBCb29zdF8xMDc0MDA7IFVIRF80LjcuMC4wLTAtZ2E1ZWQxODcyDQo+Pg0KPj4g
W0lORk9dIFtVU1JQMl0gT3BlbmluZyBhIFVTUlAyL04tU2VyaWVzIGRldmljZS4uLg0KPj4NCj4+
IEVycm9yOiBSdW50aW1lRXJyb3I6DQo+Pg0KPj4gUGxlYXNlIHVwZGF0ZSB0aGUgZmlybXdhcmUg
YW5kIEZQR0EgaW1hZ2VzIGZvciB5b3VyIGRldmljZS4NCj4+DQo+PiBTZWUgdGhlIGFwcGxpY2F0
aW9uIG5vdGVzIGZvciBVU1JQMi9OLVNlcmllcyBmb3IgaW5zdHJ1Y3Rpb25zLg0KPj4NCj4+IEV4
cGVjdGVkIEZQR0EgY29tcGF0aWJpbGl0eSBudW1iZXIgMTEsIGJ1dCBnb3QgOToNCj4+DQo+PiBU
aGUgRlBHQSBidWlsZCBpcyBub3QgY29tcGF0aWJsZSB3aXRoIHRoZSBob3N0IGNvZGUgYnVpbGQu
DQo+Pg0KPj4gUGxlYXNlIHJ1bjoNCj4+DQo+Pg0KPj4NCj4+ICIvdXNyL2xvY2FsL2xpYi91aGQv
dXRpbHMvdWhkX2ltYWdlc19kb3dubG9hZGVyLnB5Ig0KPj4NCj4+ICIvdXNyL2xvY2FsL2Jpbi91
aGRfaW1hZ2VfbG9hZGVyIiBcDQo+Pg0KPj4gICAgICAtLWFyZ3M9InR5cGU9dXNycDIsYWRkcj0x
OTIuMTY4LjEwLjIiDQo+Pg0KPj4NCj4+DQo+PiBkcnNjb3R0QFVidW50dTp+L3dvcmthcmVhL3Vo
ZC9ob3N0L3V0aWxzJCAvdXNyL2xvY2FsL2xpYi91aGQvdXRpbHMvdWhkX2ltYWdlc19kb3dubG9h
ZGVyLnB5DQo+Pg0KPj4gW0lORk9dIFVzaW5nIGJhc2UgVVJMOiBodHRwczovL2ZpbGVzLmV0dHVz
LmNvbS9iaW5hcmllcy9jYWNoZS8NCj4+DQo+PiBbSU5GT10gSW1hZ2VzIGRlc3RpbmF0aW9uOiAv
dXNyL2xvY2FsL3NoYXJlL3VoZC9pbWFnZXMNCj4+DQo+PiBbRVJST1JdIEludmFsaWQgcGVybWlz
c2lvbnMgdG8gd3JpdGUgaW1hZ2VzIGRlc3RpbmF0aW9uDQo+Pg0KPj4gZHJzY290dEBVYnVudHU6
fi93b3JrYXJlYS91aGQvaG9zdC91dGlscyQNCj4+DQo+Pg0KPj4NCj4+IFVIRCBvbiBVYnVudHUg
aXMgYWJsZSB0byBmaW5kIHRoZSBOMjAwLCBhbmQgaXMgYWJsZSB0byBwcm9iZSB0aGUgTjIwMCB3
aXRoIHRoZSBzZWNvbmQgVUhEIGNvbW1hbmQuICBIb3dldmVyLCB0aGUgdGhpcmQgY29tbWFuZCBp
cyAvdXNyL2xvY2FsL2xpYi91aGQvdXRpbHMvdWhkX2ltYWdlc19kb3dubG9hZGVyLnB5LCB3aGlj
aCBwcm9kdWNlcyB0aGUgZm9sbG93aW5nIEVSUk9SIE1FU1NBR0UgLSBJbnZhbGlkIHBlcm1pc3Np
b25zIHRvIHdyaXRlIGltYWdlcyBkZXN0aW5hdGlvbi4gIFRoZSBOMjAwIHdhcyBub3QgYm9vdGVk
IGluIFNBRkUgTU9ERSwgc28gaXQgc2hvdWxkIGJlIGF2YWlsYWJsZSBmb3IgZmlybXdhcmUgdXBk
YXRlcy4NCj4+DQo+Pg0KPj4NCj4+IEkgaGF2ZSBiZWVuIHVuYWJsZSB0byBsb2NhdGUgYW55IGlu
Zm9ybWF0aW9uIG9ubGluZSBmb3IgaG93IHRvIGVsaW1pbmF0ZSB0aGlzIHByb2JsZW0gc28gSSBj
YW4gd3JpdGUgZmlybXdhcmUgdXBkYXRlcyB0byB0aGUgTjIwMC4gIElzIGEgZG9jdW1lbnQgYXZh
aWxhYmxlIGZvciBmaXhpbmcgdGhpcyBwcm9ibGVtPyAgSWYgbm90LCBjYW4geW91IHRlbGwgbWUg
aG93IHRvIGZpeCB0aGlzIGZpcm13YXJlIHVwZGF0ZSBwcm9ibGVtIG9uIHRoZSBOMjAwPw0KPj4N
Cj4+DQo+Pg0KPj4gVGhhbmtzIGluIGFkdmFuY2UgZm9yIHlvdXIgYXNzaXN0YW5jZSB3aXRoIGZp
eGluZyB0aGlzIHByb2JsZW0uDQo+Pg0KPj4NCj4+DQo+PiBSZXNwZWN0ZnVsbHksDQo+Pg0KPj4N
Cj4+DQo+PiBTY290dA0KPj4NCj4+DQo+Pg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
