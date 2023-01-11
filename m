Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B478F666607
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 23:10:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79494384120
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 17:10:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673475034; bh=4fmyQ7P75pOjQ+YQQDnKb6KFV05EAdzW88K2NZSjDag=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ludx+G8G/Ueu4FpJvujOviMMBCRBC5ZfmuWfbKm6ncRAMO1dIQlqFeBUH+g2KgDSm
	 vfycqlQFOBsWM4AVP1DrziFXAhNfIb/bMLKk4rqY0ZX7hvhpq3uKyMXxgRzzLEt3oN
	 xWDBeqPLl3BBT+7RMKDbmuFM5wR87pHKvnISYyeld36U6DDLa5xdl1vyGTtBwRwFE9
	 5SicjlnqQT/ZRkdm1PGWmWr1wt3L+xyHFoDmPf+c9rHbq6NRSfmDP+SOKepuBwHKDD
	 0aZJqpwYohDTohlErzygRg4MOmZuND+Wqd6L9FwaliUqSHA7h0zgs+FJ5IQ2kMJyd9
	 GHcOi9iwkZoRw==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 739EC384033
	for <usrp-users@lists.ettus.com>; Wed, 11 Jan 2023 17:09:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ODzvFK87";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id g9so379151qtu.2
        for <usrp-users@lists.ettus.com>; Wed, 11 Jan 2023 14:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A0/8hCUXfYlf62qHbRJHmu/WbGU53c/0Si0UZAvYzCI=;
        b=ODzvFK87pvs86bt2mDoY9WiE8KsQnkBcx2gFyxC0X3TWXkKf4CbCDDtK1uzcmGPBsM
         h4cQG7NtdLVPm97HjYlnDNnpwYNBK77fuZUh6L2d44r+q9WfkIzq9PtPqiZ95LkxgH73
         pDQeiTAWEeRmKyDJwGyoOAISpdILvUi3GVpuco/llGkUfnGvpHdZOhOBEyjk0M436PIC
         84sIRvBcx7MWo/fPfhL7LVXYJIK303xbTZ0i6pqeD2HkSG+QPjkhZGrDD/yKCZjMFPtt
         t1EMgJqg4E4Lay3GeFbnaPjl8lfUltiG4c8xaCQbrcXwS+Btun2UzszGIcGYCdWxwrOu
         sZiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A0/8hCUXfYlf62qHbRJHmu/WbGU53c/0Si0UZAvYzCI=;
        b=F8m+9SoKz/pNmRz+LY2GwA2GFFufqEnQ+AlxZA2+RnzYgikFV2Ml9ilOK903BqK1nY
         VFtkbBdMzCIrGxnIEQWachPSPaJ68KVnI2gJvTdVvUIfcEd0gM5ITFS3l2z7XXdN61I7
         wI9gaaWUPcZljGCRHe+CkAK3tfKL6PDgM11Ij4XWuGAQpwcP7D4X2EAf63G3amn4Q/UZ
         Uxg/hwlp0XNhIkGxN5gL55fYZ/K5VoYcEsqBDk9IxedsH/aFHMVnTFJSmAOXcW/UGuou
         3aGf6S1/lcU0DB+lgmqMWQJT5R0PdqolXqdSF3G4tCtxywmKZxbJCmp+Efh5uVu2IpQh
         yQlQ==
X-Gm-Message-State: AFqh2kri07B4iqfUHC48TbxFZygP1lLG0ipXAhV0hqUd4krX3rV0lCgO
	047w0KgF1fKV+Z/ZGqMbTI7lnavjeaI=
X-Google-Smtp-Source: AMrXdXs8SmaKUC3emPyuYL+0l3Cez3iXHhq4Lp60Bws2vbZjyJsLeDhfETaCASfmxCej6h+LW/M5mA==
X-Received: by 2002:ac8:68b:0:b0:3a7:f091:bfe with SMTP id f11-20020ac8068b000000b003a7f0910bfemr11189843qth.7.1673474958457;
        Wed, 11 Jan 2023 14:09:18 -0800 (PST)
Received: from ?IPV6:2607:fb91:2d15:493e:3507:2885:93ac:a009? ([2607:fb91:2d15:493e:3507:2885:93ac:a009])
        by smtp.googlemail.com with ESMTPSA id d16-20020ac85350000000b003a689a5b177sm8169353qto.8.2023.01.11.14.09.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 14:09:18 -0800 (PST)
Message-ID: <a17d382e-83e2-cf53-21fe-d5f8a03192d6@gmail.com>
Date: Wed, 11 Jan 2023 17:09:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-CA
To: usrp-users@lists.ettus.com
References: <LTCaJgnaSprcXYj9GHoBEVHVIk8ttCpJsNE3YNX8@lists.ettus.com>
 <89b2c244-5a8f-3ba6-7760-7880b6acf0e5@ettus.com>
From: Ryan Volz <ryan.volz@gmail.com>
In-Reply-To: <89b2c244-5a8f-3ba6-7760-7880b6acf0e5@ettus.com>
Message-ID-Hash: ORNTJTMCXLVFPXVL3KYG3RP24OU3CVZW
X-Message-ID-Hash: ORNTJTMCXLVFPXVL3KYG3RP24OU3CVZW
X-MailFrom: ryan.volz@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Channel out of range
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ORNTJTMCXLVFPXVL3KYG3RP24OU3CVZW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDEvOS8yMyA3OjMxIEFNLCBNYXJjdXMgTcO8bGxlciB3cm90ZToNCj4gSGksDQo+
IA0KPiBjYW4geW91IHNoYXJlIHRoZSBvdXRwdXRzIG9mDQo+IA0KPiB3aGljaCBzaA0KPiB3aGlj
aCBiZW5jaG1hcmtfcmF0ZQ0KPiB3aGljaCB1aGRfZmluZF9kZXZpY2VzDQo+IA0KPiB3aXRoIHVz
PyBDb3VsZCB5b3UgYWxzbyB0cnkgdG8gc2VhcmNoIGZvciBhbnkgImxpYnVoZC5kbGwiIG9uIHlv
dXIgDQo+IHN5c3RlbSwgYW5kIHZlcmlmeSB0aGF0IG9ubHkgdGhlcmUncyBvbmx5IHRoZSBvbmUg
dGhhdCB5b3UgZXhwZWN0IHRvIGJlIA0KPiB0aGVyZT8NCj4gDQo+IFRoZSBwZXJzb24gYWN0dWFs
bHkgaW4gY2hhcmdlIG9mIG1haW50YWluaW5nIHRoZSBVSEQgcGFja2FnZSBmb3IgDQo+IGFuYWNv
bmRhIHdhcyBwcmV0dHkgY2VydGFpbiB0aGF0IHRoZSBidWlsZCBvZiB0aGUgVUhEIGxpYnJhcnkg
dXNlZCB3aGVuIA0KPiB5b3UgcnVuIGBiZW5jaG1hcmtfcmF0ZWAgaXMgbm90IHRoZSBvbmUgZnJv
bSB0aGUgYW5hY29uZGEgcmVwbzsgc28sIHRoZSANCj4gcHJvYmxlbSBwZXJzaXN0cyB0aGF0IGZv
ciBzb21lIHJlYXNvbiwgYSB3cm9uZyBVSEQgbGlicmFyeSBiZWluZyBsb2FkZWQgDQo+IGluc3Rl
YWQgb2YgdGhlIG9uZSB0aGF0IHlvdXIgYnVpbGQgb3IgYW5hY29uZGEncyBidWlsZC4NCg0KSSBq
dXN0IGZpcmVkIHVwIG15IFZNIGFuZCBjaGVja2VkIG15IHJhZGlvY29uZGEgZW52aXJvbm1lbnQg
d2l0aCBVSEQgDQo0LjMsIGFuZCBpdCBkb2VzIGFjdHVhbGx5IGlkZW50aWZ5IGl0c2VsZiB3aXRo
IHRoZSBsaW5lDQoNCiAgIFtJTkZPXSBbVUhEXSBXaW4zMjsgTWljcm9zb2Z0IFZpc3VhbCBDKysg
dmVyc2lvbiAxNC4yOyBCb29zdF8xMDc4MDA7IA0KVUhEXzQuMy4wLjAtcmVsZWFzZQ0KDQppbmNs
dWRpbmcgdGhlICJXaW4zMiIuIFNvIEkgdGFrZSBpdCBiYWNrOiBpdCBpcyByZWFzb25hYmxlIHRv
IGNvbmNsdWRlIA0KdGhhdCB0aGlzIGlzIG5vdCBhIGNhc2Ugb2YgbWl4ZWQgaW5zdGFsbGF0aW9u
cy4NCg0KVGhhdCdzIGFzIGZhciBhcyBJIGNhbiB0YWtlIGl0LCB1bmZvcnR1bmF0ZWx5LCBzaW5j
ZSBydW5uaW5nIA0KYGJlbmNobWFya19yYXRlYCB3aXRoIG15IEIyMDBtaW5pIHdvcmtzIGFzIGV4
cGVjdGVkLg0KDQpDaGVlcnMsDQpSeWFuDQoNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gTWFyY3Vz
DQo+IA0KPiBESVNDTEFJTUVSOiBBbnkgYXR0YWNoZWQgQ29kZSBpcyBwcm92aWRlZCBBcyBJcy4g
SXQgaGFzIG5vdCBiZWVuIHRlc3RlZCANCj4gb3IgdmFsaWRhdGVkIGFzIGEgcHJvZHVjdCwgZm9y
IHVzZSBpbiBhIGRlcGxveWVkIGFwcGxpY2F0aW9uIG9yIHN5c3RlbSwgDQo+IG9yIGZvciB1c2Ug
aW4gaGF6YXJkb3VzIGVudmlyb25tZW50cy4gWW91IGFzc3VtZSBhbGwgcmlza3MgZm9yIHVzZSBv
ZiANCj4gdGhlIENvZGUuIFVzZSBvZiB0aGUgQ29kZSBpcyBzdWJqZWN0IHRvIHRlcm1zIG9mIHRo
ZSBsaWNlbnNlcyB0byB0aGUgVUhEIA0KPiBvciBSRk5vQyBjb2RlIHdpdGggd2hpY2ggdGhlIENv
ZGUgaXMgdXNlZC4gU3RhbmRhcmQgbGljZW5zZXMgdG8gVUhEIGFuZCANCj4gUkZOb0MgY2FuIGJl
IGZvdW5kIGF0IGh0dHBzOi8vd3d3LmV0dHVzLmNvbS9zZHItc29mdHdhcmUvbGljZW5zZXMvLg0K
PiANCj4gTkkgd2lsbCBvbmx5IHBlcmZvcm0gc2VydmljZXMgYmFzZWQgb24gaXRzIHVuZGVyc3Rh
bmRpbmcgYW5kIGNvbmRpdGlvbiANCj4gdGhhdCB0aGUgZ29vZHMgb3Igc2VydmljZXMgKGkpIGFy
ZSBub3QgZm9yIHRoZSB1c2UgaW4gdGhlIHByb2R1Y3Rpb24gb3IgDQo+IGRldmVsb3BtZW50IG9m
IGFueSBpdGVtIHByb2R1Y2VkLCBwdXJjaGFzZWQsIG9yIG9yZGVyZWQgYnkgYW55IGVudGl0eSAN
Cj4gd2l0aCBhIGZvb3Rub3RlIDEgZGVzaWduYXRpb24gaW4gdGhlIGxpY2Vuc2UgcmVxdWlyZW1l
bnQgY29sdW1uIG9mIA0KPiBTdXBwbGVtZW50IE5vLiA0IHRvIFBhcnQgNzQ0LCBVLlMuIEV4cG9y
dCBBZG1pbmlzdHJhdGlvbiBSZWd1bGF0aW9ucyBhbmQgDQo+IChpaSkgc3VjaCBhIGNvbXBhbnkg
aXMgbm90IGEgcGFydHkgdG8gdGhlIHRyYW5zYWN0aW9uLsKgIElmIG91ciANCj4gdW5kZXJzdGFu
ZGluZyBpcyBpbmNvcnJlY3QsIHBsZWFzZSBub3RpZnkgdXMgaW1tZWRpYXRlbHkgYmVjYXVzZSBh
IA0KPiBzcGVjaWZpYyBhdXRob3JpemF0aW9uIG1heSBiZSByZXF1aXJlZCBmcm9tIHRoZSBVLlMu
IENvbW1lcmNlIERlcGFydG1lbnQgDQo+IGJlZm9yZSB0aGUgdHJhbnNhY3Rpb24gbWF5IHByb2Nl
ZWQgZnVydGhlci4NCj4gDQo+IE9uIDA5LjAxLjIzIDA4OjE5LCBoZW5yeS5wb3dlbGwueHhAZ21h
aWwuY29tIHdyb3RlOg0KPj4NCj4+IEhlbGxvLCBhZ2Fpbi4NCj4+DQo+PiBNeSBzeXN0ZW0gaXMg
NjRiaXQgYW5kIEkgbWFkZSB1aGQgaW5zdGFsbGF0aW9uIGFnYWluIHdpdGhvdXQgYW5hY29uZGEg
DQo+PiBjb21wbHlpbmcgd2l0aCDigJxCdWlsZGluZyBhbmQgSW5zdGFsbGluZyBVSEQgZnJvbSBz
b3VyY2XigJ0gZnJvbSBoZXJlOiANCj4+IGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9w
YWdlX2J1aWxkX2d1aWRlLmh0bWwNCj4+DQo+PiBTbywgd2hlbiBpIHRyeSB1aGRfZmluZF9kZXZp
Y2VzLCBpdCB3b3JrcyBubyBwcm9ibGVtLg0KPj4NCj4+IEJ1dCB3aGVuIHRyeSDigJxiZW5jaG1h
cmtfcmF0ZSAtLXR4X3JhdGU9NmU2IC0tcnhfcmF0ZT02ZTbigJ0sIGdhdmUgbWUgDQo+PiB0aGlz
IGVycm9yOiBFcnJvcjogTG9va3VwRXJyb3I6IEluZGV4RXJyb3I6IG11bHRpX3VzcnA6IFJYIGNo
YW5uZWwgDQo+PiAxNzY4MjAzMTUxMzc3IG91dCBvZiByYW5nZSBmb3IgY29uZmlndXJlZCBSWCBm
cm9udGVuZHMuDQo+Pg0KPj4gVGhlIHByb2JsZW0gaXMgc2FtZS4NCj4+DQo+Pg0KPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
