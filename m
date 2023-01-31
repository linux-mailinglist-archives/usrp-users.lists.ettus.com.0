Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 986096832C8
	for <lists+usrp-users@lfdr.de>; Tue, 31 Jan 2023 17:34:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14315383DA2
	for <lists+usrp-users@lfdr.de>; Tue, 31 Jan 2023 11:34:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675182878; bh=kREZUIfhGUIzy2+SJ2h23mvpX4DfBMtlBJWTHuHK17A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gtIX6GAnfhG/RqSM507jSNugp27DPJiwwfWkbru+1/t0HN6JDwbSnLj/xt9BVo5WQ
	 WH78ZNOTCIDyWyUpz6iJlGJe7gS7CKNEAyGcThEmJ4uoyqki4WiBoIKB+PmvlBFh7B
	 fYBnCly0Z8oknTTqh9XGrFxcUxgyMHmuc7o0sh1jLaUpKEolGA41x+B7FLHID3X0vP
	 yHUCEj2/K+3PGnDKD1Ndqi06tbc4tf26LCv3S65wIiTyXvUtBo323l6FWdkrWPbO8i
	 isUhdWeFDhy1CbxdqoHeO/BJ1JvhkWZLNEr4v9YfpEgld3GIv+FNt6kjUM6V/zee6k
	 lYn0aUA/cj0bg==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A3867383CFF
	for <usrp-users@lists.ettus.com>; Tue, 31 Jan 2023 11:34:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cT0709IC";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id v17so3958573qto.3
        for <usrp-users@lists.ettus.com>; Tue, 31 Jan 2023 08:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hq23Bq/PUNvnwg0JsKxcQf8CX9s4itpvDuwtHOGUNUM=;
        b=cT0709IC24OMORkLUnn+9+iOwi1wIMqekdhB1Vq2tg8Rjs8IxtJro88BvNMyjl5UWq
         n8UvPrSQXvUfktY7wgOWyLX16GWNBDNAQLIMRQYlbxzxdpw3YJ1dPL4V+dTFmFQl7Y+w
         re/F/wC+r0/Vr7hLOsD0us1LsEt3HXkcLo+EB6cny/1XF8t70vP0LkQFbZgaT867/umN
         XRYRXNiETDuLyDLvEPbnJ2pBkUBE5A56vkOwNcMajLDi4oVcZe8gPINQZi6to7Um6/9P
         TjYuaDEJpty4WizU5CjeIGUJzuZKM/ORh4gxGGarirXQkz7M7jAOwt/vXmDp77XVzAUi
         EgfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hq23Bq/PUNvnwg0JsKxcQf8CX9s4itpvDuwtHOGUNUM=;
        b=4WLE7fb/NQlHlBn4vMRastVcQyx8IEegkyVkN6Tf+torRypGShpc/yP3B30FHL/+ZW
         Cjdn8WE4A8Kcylal3GKnqzDh1ccP06X1U0QPY/kysBbIBudUnWQt3p25zHINR4WbU/zE
         8xR/9ueK0jNan1G9oR//pys9WaQkQY90utU1Iq8ucxPxzCPKNbmknyBCKUy9Ss2Ga7BN
         4g9n4ynS1LM7H5kj26TuT7BMhtoaBsxwXsqMX3RlgAhxizBDVndbCmAlSPw6n/O1eSWy
         RsGLUQXPb58yxhYPPf8vFSRGqf+tYJ5tjTdM0y6kK2MLvsnp68hiBmofZBV2tBGJCS7F
         AkhQ==
X-Gm-Message-State: AO0yUKU/kv6K5OyJPeAEeybpkGjD0EycbbwqVwsZiD5V2X3qbTWgVcu1
	JLal18uRXn5wpUnl59axBZU=
X-Google-Smtp-Source: AK7set8Xbh0eULm7oOlW15VyX5wS/bp9QUdqPPHvqSRVAr+fIBfd36SslCOgehFoWdvxWWuq+7QXTw==
X-Received: by 2002:ac8:5710:0:b0:3b9:a652:4ca0 with SMTP id 16-20020ac85710000000b003b9a6524ca0mr5457975qtw.13.1675182869906;
        Tue, 31 Jan 2023 08:34:29 -0800 (PST)
Received: from [192.168.2.175] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id r13-20020ae9d60d000000b007246f005d8bsm2456528qkk.116.2023.01.31.08.34.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 08:34:29 -0800 (PST)
Message-ID: <bd51d497-3d1e-11d2-dc1a-257624384156@gmail.com>
Date: Tue, 31 Jan 2023 11:34:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: DAVID ABEL <dave_abel@bigpond.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <2e1b9d2c.edb5d.18600b67c54.Webtop.89@bigpond.com>
 <02a6562d-20c6-e318-9dda-500e72bc2609@gmail.com>
 <178e23df.107e3f.186078c00d6.Webtop.89@bigpond.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <178e23df.107e3f.186078c00d6.Webtop.89@bigpond.com>
Message-ID-Hash: D3EXAUVO5XBGW5M2TW34SEEVLHMQZ5VA
X-Message-ID-Hash: D3EXAUVO5XBGW5M2TW34SEEVLHMQZ5VA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200mini spurs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D3EXAUVO5XBGW5M2TW34SEEVLHMQZ5VA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMzEvMDEvMjAyMyAwNjoxNywgREFWSUQgQUJFTCB3cm90ZToNCj4NCj4gTmVpdGhlciB0aGUg
c3B1ciBhbXBsaXR1ZGUgKGluIGRCYykgbm9yIHRoZSBvZmZzZXQgYXJlIGFmZmVjdGVkIGJ5IHRo
ZSANCj4gYmFzZWJhbmQgYW1wbGl0dWRlIG5vciBieSB0aGUgY2FycmllciBhbXBsaXR1ZGUuLg0K
Pg0KPiBUaGUgQUQ5MzY0IHNwZWNzIGRvIGluY2x1ZGUgY2FycmllciBsZWFrYWdlIG9mIC01MCBk
QmMuwqAgVGhlIG9mZnNldCANCj4gKHRocm91Z2ggdWhkLnR1bmVfcmVxdWVzdChmcmVxLCAxNTAw
MDAwMCkpIHBsYWNlcyB0aGlzIGxlYWthZ2Ugd2VsbCANCj4gYXdheSBmcm9tIHRoZSBjYXJyaWVy
LsKgIFRoaXMgdHJpY2sgaXMgZWZmZWN0aXZlIGFzIHJlbW92aW5nIHRoZSBvZmZzZXQgDQo+IHNo
b3dzIHVwIHRoZSBsZWFrYWdlIGNsb3NlIHRvIHRoZSBjYXJyaWVyLiBJIGNhbid0IHNlZSBhbnl0
aGluZyBpbiB0aGUgDQo+IHNwZWNzIHN1Z2dlc3RpbmcgdGhlIHNwdXJzIEkgYW0gc2VlaW5nLg0K
T25lIG90aGVyIHRlc3QtLWRvZXMgdGhlIGJhc2ViYW5kIGZyZXF1ZW5jeSBtYXR0ZXI/DQoNCg0K
Pg0KPiBUaGFua3MNCj4NCj4gRGF2ZSBBYmVsDQo+DQo+DQo+IC0tLS0tLSBPcmlnaW5hbCBNZXNz
YWdlIC0tLS0tLQ0KPiBGcm9tOiAiTWFyY3VzIEQuIExlZWNoIiA8cGF0Y2h2b25icmF1bkBnbWFp
bC5jb20+DQo+IFRvOiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBTZW50OiBNb25kYXks
IDMwIEphbiwgMjAyMyBBdCAyOjM4IFBNDQo+IFN1YmplY3Q6IFtVU1JQLXVzZXJzXSBSZTogQjIw
MG1pbmkgc3B1cnMNCj4NCj4gT24gMjkvMDEvMjAyMyAyMjoyNiwgREFWSUQgQUJFTCB3cm90ZToN
Cj4+IEkgaGF2ZSBhIEIyMDBtaW5pLsKgIEFzIGEgdGVzdCBvZiBzcGVjdHJhbCBwdXJpdHksIEkg
Z2VuZXJhdGVkIGEgQ1cgDQo+PiBzaWduYWwgYXQgMTc1LjAwMjUgTUh6IHVzaW5nIEdudXJhZGlv
LCBJIHNlZSBzcHVycyBhdCArLy0gMTMyLjUga0h6LCANCj4+IGF0IC01MCBkQmM7IHdpdGggb2Zm
c2V0cyBvZiAyNjUga0h6wqAgYXQgLTYwIGRCYzsgYW5kIGFub3RoZXIgYXQgNzAyLjUgDQo+PiBL
aHphdCAtNjAgZEJjLg0KPj4NCj4+IElzIHRoaXMgZXhwZWN0ZWQgYmVoYXZpb3IgZm9yIHRoZSBC
MjAwIG1pbmksIHBsZWFzZT8NCj4+DQo+PiBTb21lIGZ1cnRoZXIgZGV0YWlsOiB0aGUgR251cmFk
aW8gZmxvd2dyYXBoIGlzIGEgc2lnbmFsIHNvdXJjZSANCj4+IGdlbmVyYXRpbmcgYSBzaW5lIHdh
dmVmb3JtIGF0IDI1MDAgSHosIGZvbGxvd2VkIGJ5IGEgbG93cGFzcyBmaWx0ZXIuwqAgDQo+PiBU
aGUgVVNSUCBzaW5rIGhhcyBhIGZyZXF1ZW5jeSBvZiAxNzUgTUh6IHdpdGggYW4gTE8gb2Zmc2V0
IG9mIDE1IA0KPj4gTUh6LsKgIFNhbXBsZSByYXRlIGlzIDM4NCBrSHouwqAgVGhlIHNwdXJzIGFy
ZSBwcmVzZW50IG9uIG90aGVyIGNhcnJpZXIgDQo+PiBmcmVxdWVuY2llcyB3aXRoIHRoZSBzYW1l
IG9mZnNldHMuDQo+Pg0KPj4gVGhhbmtzDQo+Pg0KPj4gRGF2ZSBBYmVsIFZLMURKQQ0KPj4NCj4+
DQo+IFRoYXQncyBhbG1vc3QgY2VydGFpbmx5ICJpbiBzcGVjIiBmb3IgdGhlIEFEOTM2MyBjaGlw
IHRoYXQgZG9lcyBhbGwgDQo+IHRoZSAiaGVhdnkgbGlmdGluZyIgb24gdGhlIFJGIHNpZGUgb2Yg
dGhpbmdzLg0KPg0KPiBEb2VzIHRoZSBiYXNlYmFuZCBhbXBsaXR1ZGUgYWZmZWN0IHlvdXIgb2Jz
ZXJ2ZWQgc3B1ciBwZXJmb3JtYW5jZT8gDQo+IFRoYXQgaXMsIGlmIHlvdXIgc2lnbmFsIHNvdXJj
ZSBoYXMgYW4NCj4gwqAgYW1wbGl0dWRlIHRoYXQgaXMgc29tZXdoYXQtbGVzcyB0aGFuIDEuMCAo
bGlrZSAwLjg1KSBkbyB0aGUgc3B1cnMgDQo+IHJlZHVjZSBjb3JyZXNwb25kaW5nbHk/DQo+DQo+
DQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
DQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
DQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20NCj4NCj4NCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20K
