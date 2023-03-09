Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F976B1986
	for <lists+usrp-users@lfdr.de>; Thu,  9 Mar 2023 03:46:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95A1E384B9F
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 21:46:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678329961; bh=BQ5YalC1b3Lez5crka2bLRSqcc4fipERtH7JDP9q6K8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pSHvt5kCuqOBEqQsvOruBjJ74g9/PhwM9KrYIwiBVYFDxfbabUkLNl7monA0UgPVP
	 yO5wq7LB9yyWQYLocTft83c7hjPrBFnObAjAbxMKNerJMEucTzC8dRByuoQRhfISt4
	 Aj1yjKZ6KzpNrviSlZqS4CuBvVfkh8RWmpHFdfY031w8+WIM2/LQtc+Csf6Brbg6hr
	 6cXCuS1h2DIACq3Nf4SfTBAl63CfFHr8H+tvJNC7QVCWo/VqTMj7/0/VH4w6xj9Een
	 yvCBslx3SEjLMRuFadl2mM5V+Ue8YhJfq/gnFT/DNE/FPCr0kaiHEyxG9HYCm653as
	 Ee2OrcRQNpwKw==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A063384B9F
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 21:45:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VHsy67Dq";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id cf14so618538qtb.10
        for <usrp-users@lists.ettus.com>; Wed, 08 Mar 2023 18:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678329956;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iyMF424XPlnVTM7LZU1BgKvXdT6rugFielJ2e9xvGGQ=;
        b=VHsy67Dqx9uohXtdoVXHeJV+v2kLxN6VU8qF6pHTl1XF4VwB4eVjoyZW/DOgrITQLt
         t3ROq34hc200cAPZfafeq57beVZhWIwTHXjxykQr6VjYjA0f3wl0U77lkE5wDZl0XBp6
         tteUfw3s8a9ShrnjeyTghsnU1vRTKxPqmYt9thR2u9QZ+13GV57UUCUkQkT3ORuwZuZr
         lcltUBAMfpoc1D6lHvnJn7IsuA08FGvQICHuNHWQ+uX7hcMOQYyKB5LmHKb+RRjVC5uY
         fp9pFvnDTP9qFnh4L6q5ydNmUaPnotiBOinHNf68NnqCSGsbr8ype00LHoIWFz6CrGl0
         XI0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678329956;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iyMF424XPlnVTM7LZU1BgKvXdT6rugFielJ2e9xvGGQ=;
        b=ubHQlwHFE+lOY7Lupw3c4ZmndqOXqWdGeaVeCHlqkRQLpe1c6A6AU9cloCw2fJWubb
         ZxpxR93plRmGh6unhrlbKKQ47c+bnfZ5lw0f0MystpX05iALhK/my2d1ltObypi3tUhn
         9rYQqO6aWCYvhHAjFTSgc8rpDpCi1pYv05NV3eYLU4HuC8cvqxUBGlJvlxgT3o89rgi2
         IWD2rqFjtgHZDvlxrJ8MwLeGLAi8qe/GloIOa/KHNrKEsdN0jI4/EhugJ50ayJs4xBRF
         iDVT7UvXybRlFOJbfOncmwwaZtRAXqxDkQH6iBtcoH/fCRObW2cVY3UuvzTIS6DwhNva
         7tsw==
X-Gm-Message-State: AO0yUKXpupn3SteyWDpLEBcwObbJUaOxKM5YNTH2+dr8bYKEAcZ2LOAy
	DoffroJ0ckjVzL5KDwDwGYqPd41diAg=
X-Google-Smtp-Source: AK7set+k1xoa45Tdw6zrwyXi6IMppOeLWrEf6CbBbNWwKQCxmdOLC3dUx4lTWuniHi4y9RFPdM4Zmw==
X-Received: by 2002:a05:622a:296:b0:3b8:2ce4:3e9 with SMTP id z22-20020a05622a029600b003b82ce403e9mr3538074qtw.32.1678329956789;
        Wed, 08 Mar 2023 18:45:56 -0800 (PST)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id x8-20020ac87008000000b003b868cdc689sm12802864qtm.5.2023.03.08.18.45.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 18:45:56 -0800 (PST)
Message-ID: <98701453-8708-6854-ff74-15152dcf2e21@gmail.com>
Date: Wed, 8 Mar 2023 21:45:55 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <EofJYHnPQkFzDmTjdBf6o6OmQfDxMmNJuUIX9Wtvk8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <EofJYHnPQkFzDmTjdBf6o6OmQfDxMmNJuUIX9Wtvk8@lists.ettus.com>
Message-ID-Hash: H2MH7CFQQEVU2H5U5FCMAV337BK73TRH
X-Message-ID-Hash: H2MH7CFQQEVU2H5U5FCMAV337BK73TRH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tx/RX vs RX2 Ettus N320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H2MH7CFQQEVU2H5U5FCMAV337BK73TRH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDgvMDMvMjAyMyAyMTo0MSwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4gSSBhbSBhIGxpdHRsZSBjb25mdXNlZCBhYm91dCB0aGUgbmFtaW5nIHJlZ2FyZGlu
ZyB0aGUgVFgvUlggcG9ydHMgb24gDQo+IHRoZSBFdHR1cyBOMzIxL04zMjAuIElmIEkgc3BlY2lm
eSBhIGNoYW5uZWwoaS5lIGNoYW5uZWwgMCkgZm9yIA0KPiByZWNlaXZlLCBkb2VzIHRoYXQgbWVh
biBSWDIgd2lsbCBiZSBhY3RpdmUsIG9yIHdpbGwgVFgvUlggcG9ydCBiZSANCj4gYWN0aXZlbHkg
cmVjZWl2aW5nPyBBbmQgaWYgVFgvUlggY2FuIHJlY2lldmUsIGRvZXMgdGhhdCBtZWFuIHRoZSAN
Cj4gTjMyMC9OMzIxIGhhcyB1cCB0byA0IFJYIGNoYW5uZWxzPw0KPg0KPg0KPiBUaGFua3MNCj4N
Cj4gSm9lDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20NCkFueSBnaXZlbiBSWCBjaGFubmVsIGNhbiBlaXRoZXIgYmUgY29u
bmVjdGVkIHRvIHRoZSBjb3JyZXNwb25kaW5nIFJYMiANCipPUiogVFgvUlggcG9ydC7CoMKgwqAg
QSBUWCBjaGFubmVsIGNhbiBvbmx5IGV2ZXINCiDCoCBiZSBjb25uZWN0ZWQgdG8gaXRzIGNvcnJl
c3BvbmRpbmcgUlgvVFggcG9ydC4NCg0KSXQncyBqdXN0IGFuIGFudGVubmEgc3dpdGNoIGZvciBh
IHJlY2VpdmUgY2hhbm5lbC7CoMKgIEZvciBoYWxmLWR1cGxleCANCmNvbW11bmljYXRpb25zIHRl
Y2huaXF1ZXMgaXQncyBvZnRlbiB0aGUgY2FzZSB0aGF0IGENCiDCoCBzaW5nbGUgYW50ZW5uYSBp
cyB1c2VkIGFuZCBhbHRlcm5hdGVzIGJldHdlZW4gVFggYW5kIFJYIHdoZW4gcmVxdWlyZWQuDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
