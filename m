Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E025718DD
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 13:49:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F9C03810FC
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 07:49:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657626569; bh=QvP0maZrQETgoM050m4ZqUZIeTup3a0+uBx6SWG0SC8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Jz96e++AEokfwUznKWaStjZwYxSf2pUXiVKa2psdDwmCv115PYKdR1perxBgU7VE5
	 40f4xmnWmNfu+9UJi+ck7V0dZqGm7vf2diyarr/yjzxMAcKrM9Jr5aUyAfZ+DN3E2J
	 Vkd+mspbwTPQT4MrErVnmOUqLqyFIMDfI7TIRMCv3s+EuIs8spGPSfC5C9/x8uy8Fh
	 dnr9cPjF/hw0PLAggM3EFDR0TNY7Klo+f74TD6+1om853+IlTcmt137ajaLLO8nxIx
	 F5D9/5NKYTU4PVmuHNaE9RH/ok2QoiHTEFaSKRWDxL3sxO0jDAdDde3ykBp6HrsId9
	 WVYa92Pkd7oNg==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id F27DF381328
	for <usrp-users@lists.ettus.com>; Tue, 12 Jul 2022 07:48:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XjeIWiMZ";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id l11so2350094qvu.13
        for <usrp-users@lists.ettus.com>; Tue, 12 Jul 2022 04:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=IQip4jivbgw0iNzUku+RgT+i1h/Wx91FZIPn5k61Iw8=;
        b=XjeIWiMZvUobJcqmqVU4Bru9XhrduT6Dya1OillvNaY7ah6Ri6tC2HBF3zryIAp/8k
         BgeO4N/rRPnf4ziGOcIuNVBxr7WADwdYk0ABD584TCTJO0Kh6FMCB+ptBaPyHQSN9Pk9
         jqQ5t++qi1o0OuZ8p2X+Eye7amYMt8Fw25Wd3rJ/Vk/IQuA8/5AwIxLiBsBBcpKmPcMO
         KujPcaTVMcR7TaNGR+4/6IqLLbBH3M4gJVyjCXxUgSnXQXVzx01O6s7Tau2w1FVOzDpY
         uotAbM9mpbNPty/B3v7qZD4xDV5z62btuPsVGW5I0Ui21+kXc2Rd+ugkmNxi7peoDF3A
         kgzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IQip4jivbgw0iNzUku+RgT+i1h/Wx91FZIPn5k61Iw8=;
        b=2xm61X3pbF7dVlXQI0NXM+M8WZu1ixVxYz4rPQdFp3MAgiGAzH1lkbdAOBpCXGnp12
         yWQwRwRfD1DKxXOX1KJsy3R1sisTjx9qR1MU4zNyotHZwPlFkZaWxfuyhL9DwmfoSYXw
         B4pxmu0yPr7xzvr/kIEVMWBuRswqwPKGcuhoS7lAWqQrXRvf+4UqKpc6ElE5i1hKVAay
         lc2+UqvWj8OFTsOKdblO9XfCLWDYQxuZg/i5mjSd3gOdqt+4Ua9ZnWi0BL2g9v+lgELk
         p6nykGRfKfFuMHaZrYkEf3R6ke/9UfhvP9HPI6FFnc8fONlxsLAwdQnFGimDRig+KLPh
         PB0g==
X-Gm-Message-State: AJIora+zym/TobVHFeGXDkKIN/O9+zgaObSBAQILDbZCWB9tkZrALlak
	JaHL2oVr2U5K8j4zr9aPZJRhNgpeKCw=
X-Google-Smtp-Source: AGRyM1sSOH9h9tbN46kR6k4DMoXaIwE4Em4vpzDaAHAUJiGmmPAlo0db1B824+7lPPI3X23h0Px5rg==
X-Received: by 2002:a05:6214:1c87:b0:46b:c547:543d with SMTP id ib7-20020a0562141c8700b0046bc547543dmr17229365qvb.52.1657626501147;
        Tue, 12 Jul 2022 04:48:21 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id x8-20020a05620a258800b006a793bde241sm8765389qko.63.2022.07.12.04.48.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 04:48:20 -0700 (PDT)
Message-ID: <35f4dfad-27cf-bac6-8793-8ad0ff773944@gmail.com>
Date: Tue, 12 Jul 2022 07:48:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <TYCP286MB0991EFFAC0D4E288F4EA3C97FD879@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
 <A5177C84-C60A-4614-A9F3-C71ED7A49489@gmail.com>
 <20220712110954.kuctc2ohvpec3bau@barbe>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20220712110954.kuctc2ohvpec3bau@barbe>
Message-ID-Hash: ALFCRIQTO7CRTNLF2I3HDLLULZSNFKOD
X-Message-ID-Hash: ALFCRIQTO7CRTNLF2I3HDLLULZSNFKOD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: fx3 is in state 5
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ALFCRIQTO7CRTNLF2I3HDLLULZSNFKOD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNy0xMiAwNzowOSwgQ8OpZHJpYyBIYW5ub3RpZXIgdmlhIFVTUlAtdXNlcnMgd3Jv
dGU6DQo+IEhpIE1hcmN1cywNCj4NCj4gT24gMjAyMi0wNy0xMSAxNToyOSAtMDQwMCwgTWFyY3Vz
IEQgTGVlY2ggd3JvdGU6DQo+PiBVbmZvcnR1bmF0ZWx5IHRoaXMgbGlrZWx5DQo+PiBNZWFucyB5
b3UgaGF2ZSBicm9rZW4gaGFyZHdhcmUuDQo+Pg0KPj4gSWYgaXQgd2FzIFB1cmNoYXNlZCBsZXNz
IHRoYW4gb25lIHllYXIgYWdvLCBzZW5kIGEgbm90ZSB0bw0KPj4gc3VwcG9ydEBldHR1cy5jb20g
Zm9yIHdhcnJhbnR5IHN1cHBvcnQuDQo+IFNvcnJ5IGlmIEkgYW0gbWlzdGFrZW4sDQo+IGJ1dCB0
aGUgRXR0dXMgIlRlcm1zIGFuZCBDb25kaXRpb25zIG9mIFNhbGUiIFsxXQ0KPiByZWRpcmVjdHMg
dG8gTkkgdGVybXMgWzJdIHdoaWNoLCBmcm9tIG15IHVuZGVyc3RhbmRpbmcsDQo+IHNlZW1zIHRv
IGJlIDMgeWVhcnMtd2FycmFudHkgaW4gc29tZSAoYWxsPykgY291bnRyaWVzLg0KPiBXaGF0IGFt
IEkgbWlzaW50ZXJwcmV0aW5nL21pc3Npbmc/DQo+DQo+IFsxXSBodHRwczovL3d3dy5ldHR1cy5j
b20vbGVnYWwvdGVybXMtYW5kLWNvbmRpdGlvbnMtb2Ytc2FsZS8NCj4gWzJdIGh0dHBzOi8vd3d3
Lm5pLmNvbS9ubC1iZS9hYm91dC1uaS9sZWdhbC90ZXJtcy1hbmQtY29uZGl0aW9ucy5odG1sDQo+
DQo+IFJlZ2FyZHMNCkl0IHNlZW1zIHRoYXQgdGhlcmUgd2FzIGEgcG9saWN5IGNoYW5nZSwgYW5k
IEkgIm1pc3NlZCB0aGUgbWVtbyIuDQoNCkphc29uOiBwbGVhc2UgZW5kIGEgbm90ZSB0byBzdXBw
b3J0QGV0dHVzLmNvbSBhbmQgYXNrIGZvciBhbiBSTUEgb24geW91ciANCmRldmljZS4NCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
