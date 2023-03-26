Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4052A6C97FB
	for <lists+usrp-users@lfdr.de>; Sun, 26 Mar 2023 23:13:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4AF4384292
	for <lists+usrp-users@lfdr.de>; Sun, 26 Mar 2023 17:13:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679865230; bh=UJhE9YxRLOUAIdFPOLo+UltlHmwRpXdZqFzNypqtw9w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DO2XtJh9fDgdoEay89HjeB5oYF/rVzkAwz6Y+WOfzg6vxMuFTE3eawjkOVJ5zLP65
	 Zg35CXvivqjdUcxAVNcnHnRiUd8FG0RSrF7qjhCJ9E+qmAYr94v0G3d1bTBXCGcE/Y
	 V+WCzRRFm3QAgjvZdkoQZf5d9r1VaujCZ7dztWg7NNWf3VSa7jdzGhj5tneSaYa+Ns
	 mJzYjQB8vl2pnVLpVpBlPfFFhZVQgOhVB1CDw2inn+kzmqyZ3mFGAGYM7wP9ofpoqC
	 5fdpYGYKedP+VD28bVrOp0Rq+kV2yYSrqEyMHlcqQeqs2CfDnGqCI6e3MrFmitxAn/
	 /B8GZ4y7IHj3g==
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by mm2.emwd.com (Postfix) with ESMTPS id CEA89384292
	for <usrp-users@lists.ettus.com>; Sun, 26 Mar 2023 17:13:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mkpkyIWP";
	dkim-atps=neutral
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-545e907790fso19913077b3.3
        for <usrp-users@lists.ettus.com>; Sun, 26 Mar 2023 14:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679865224;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PaDYWAcKTmRRgQkQr/mGMNKoCpmKOTt3wDE1OUDke7c=;
        b=mkpkyIWP9bMraIHUJvj+1B7n+D2uFmI38HX6EJ2iIVwDRWqQLQuP91M8Gilt1VvAe1
         2t42pzVjJF/nuFL8Nw7CuiOSxCrwZd3hLj3AvFV/lIxhOjb0lnmkDPCLaLHdOeg2DzFU
         kNlaxgrGSouFZt/jrBEts3accBaKpzLaAStg6f+lcu/U0VgI20lffmH9xCWsr6r3zZth
         IuQSCbjxrDFutYH0SKKbGfn5RUS4VArD1y092InUJeMgk8ilDrDI+C8FgmwRNtLAoRtS
         O4NC/t9BL7mAnPqvYASCvaEflPfMxAZfIkPbzoU4Jb6Dj4/YxcwF+TXliVLzQ2+HJ+ZE
         tbnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679865224;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PaDYWAcKTmRRgQkQr/mGMNKoCpmKOTt3wDE1OUDke7c=;
        b=6pqS4vp3lywT6aPN//aaBfT5WWqgMbMFfejMLToiTG53QI/VmX75sGm40VxIT8bsuL
         pl/Oyr8epThwhm9L2DceRJ288IkIxsiN2QoO5gtXNU+EWDPSFmeykxwLg97OueSM9snp
         LqPHE/cN2+zlNiLMP5myFww+AQji3pEKHfHimMskTrTePUt4/eP1G/JsWnVDdkUpWJPO
         bSogBC66b4H8GuXUOyyNEHN5nbFj0zuHjTzxVnT6adZVdwTgvSlK1oT5xhizdbsJpOoG
         i+o2DujSgaXaqMLVOxGqRurjkc8t6FXOynnhl+HcHswJHqc1Pio5NgwUDpiUWgNSQTLt
         hS3g==
X-Gm-Message-State: AAQBX9cEZO2XuW1Gcpa5bUViA72Xcb1ZULmYTEBxDOwYw0fDAOCdeyv5
	p5XuEPlj0OInmLrdu4eGvbOwi9FzQ9E=
X-Google-Smtp-Source: AKy350ZvjcyQHx2y+cNNOvJKQ2GOGZHODJbHid3vAED8xvjz/GijPGSDncCQZR/Er767tY+MY7hcxA==
X-Received: by 2002:a81:6bc6:0:b0:538:77de:8efe with SMTP id g189-20020a816bc6000000b0053877de8efemr11050070ywc.47.1679865223962;
        Sun, 26 Mar 2023 14:13:43 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id i79-20020a816d52000000b00545a08184desm1648845ywc.110.2023.03.26.14.13.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 14:13:43 -0700 (PDT)
Message-ID: <bbb02fc3-03e3-4d18-f5e8-3e33d6c2b5eb@gmail.com>
Date: Sun, 26 Mar 2023 17:13:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <qecbsGrhB8MpcMuss7MlJTfzpx8JTtYPY1rpjwE8Zc@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <qecbsGrhB8MpcMuss7MlJTfzpx8JTtYPY1rpjwE8Zc@lists.ettus.com>
Message-ID-Hash: QWPVYK7WCI5KDP3H2PKEJZ2WKGYYU6RG
X-Message-ID-Hash: QWPVYK7WCI5KDP3H2PKEJZ2WKGYYU6RG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini i very high lo-leakage, image rejection and aggressive DC correction.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QWPVYK7WCI5KDP3H2PKEJZ2WKGYYU6RG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjYvMDMvMjAyMyAwMTozNywgc29yaW5nQGF5ZWNrYS5jb20gd3JvdGU6DQo+DQo+IEnCoGFt
IHdvcmtpbmcgd2l0aCBFdHR1cyBCMjA1IG1pbmkgaS7CoCBXZSBvcGVyYXRlIGl0IG9uIFVidW50
dcKgKyBDKysuDQo+IEkgaGF2ZSBhIGZldyBwcm9ibGVtcy4NCj4NCj4gQS4gSXQgc2VlbXMgdGhl
IERDIGNhbmNlbGxhdGlvbiBtZWNoYW5pc20gaXMgcXVpdGUgYWdncmVzc2l2ZS4gSXQgDQo+IGNy
ZWF0ZXMgYSBub3RjaCBhdCBEQy4gSSBjYW4gb3ZlcmNvbWUgaXQgYnkgdXNpbmcgbG9fb2Zmc2V0
IHBhcmFtZXRlciwgDQo+IGJ1dCBhcyBJIGFtIHRyeWluZyB0byBzYW1wbGUgYXQgdGhlIGxvd2Vz
dCBzeW1ib2wgcmF0ZSBwb3NzaWJsZSwgaXTigJlzIA0KPiBwcm9iYWJseSBub3QgYSB2ZXJ5IGdv
b2Qgb3B0aW9uLg0KPg0KWU91IGNhbiBhbHdheXMganVzdCBtb3ZlIHRoZSBMTyB0byB0aGUgZWRn
ZSBvZiB5b3VyIHBhc3NiYW5kLCB3aGVyZSANCnRoZXJlJ2xsIGJlIHJvbGwtb2ZmIGFueXdheS7C
oCBOb3Qgc3VyZSBJIHVuZGVyc3RhbmQgdGhpcw0KIMKgIGNvbW1lbnQuwqDCoCBUaGUgTE9fT0ZG
U0VUIGNhbiBiZSBjb25maWd1cmVkIGluIHRoZSBIQVJEV0FSRSwgc28gaXQgDQp3aWxsIGJlIG5l
YXJseS10cmFuc3BhcmVudCB0byB0aGUgcmVzdCBvZiB5b3VyIHByb2Nlc3NpbmcuDQoNCj4gQi5U
aGVyZSBpcyB2ZXJ5IGhpZ2ggTE8gbGVha2FnZSAtIGV2ZW4gd2hlbiB0aGUgc2lnbmFsIGlzIGF0
IGhpZ2ggcG93ZXIuDQo+IFRvIGRlbW9uc3RyYXRlIEkgdXNlIHRoZSBFdHR1cyBjb21tYW5kIHR4
X3dhdmVmb3JtcyB3aXRoIGEgd2F2ZWZvcm0gDQo+IHNldCB0byBTSU5FIGF0IDFNSHouDQo+IFJh
dGUgaXMgNS43NmU2DQo+IEdhaW4gaXMgNTAgZGINCj4gZnJlcSBpcyAxZTkuDQo+IFlvdSBjYW4g
c2VlIHRoZSBMTyBpcyAtMTBkYmMgYW5kIGFsc28gaW1hZ2UgYXQgLTQwIGRiYy4gQm90aCBhcmUg
bXVjaCANCj4gdG9vIGhpZ2guDQo+DQpBIGdhaW4gb2YgNTBkQiBvbiB0aGUgQjIwNSBpcyBhYm91
dCAzMmRCIGJlbG93IHRoZSBtYXhpbXVtIFJGIGdhaW4uwqDCoCANClRyeSB0d28gdGhpbmdzOg0K
DQogwqDCoCBMb3dlciB0aGUgYmFzZWJhbmQgYW1wbGl0dWRlIGEgYml0IHdoZW4gdXNpbmcgdHhf
d2F2ZWZvcm1zLS1wZXJoYXBzIDAuODUNCiDCoMKgIENyYW5rIHRoZSBSRiBnYWluIHVwIGEgYml0
LCB0aGF0IHNob3VsZCBpbXByb3ZlIHRoZSANCmNhcnJpZXItdG8tTE8tbGVha2FnZSByYXRpby4N
Cg0KQnV0LCBhbHNvLCBjb25zaWRlciBMTyBvZmZzZXQgaW4gdGhlIFRYIHBhdGggYXMgd2VsbC4N
Cg0KVGhlIGltYWdlIHBlcmZvcm1hbmNlIG1heSB3ZWxsIGltcHJvdmUgd2l0aCBhIG5vdC1zYXR1
cmF0ZWQgYmFzZWJhbmQuDQoNCg0KDQo+DQo+IEFueSBzdWdnZXN0aW9ucyBwbGVhc2U/DQo+DQo+
IFRoYW5rIHlvdSwNCj4NCj4gU29yaW4NCj4NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
