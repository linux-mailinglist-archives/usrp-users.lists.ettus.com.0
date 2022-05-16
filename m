Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E465286A0
	for <lists+usrp-users@lfdr.de>; Mon, 16 May 2022 16:12:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CD473850B3
	for <lists+usrp-users@lfdr.de>; Mon, 16 May 2022 10:12:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652710332; bh=bT7Rv4+00Sc24RCrkRe56cnUeGQxypPXi2SsVOqnkA0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=P3Q1VrFmgaHEnMKE0Gl6dJ+tNiM9GY1tuZc9MnvPATS3gmSkxyxKCKcovIQE1DRLd
	 1gr/z71/eSrmrD3JNxwy+vnwzsQ08hVPSOAK2yUHgnL68FyBhX9r1DhnLZYpNzi3Zj
	 jCKd1MFbO77yFiqlBmAJPPZyX4e0EroiB8v3JmoD9qYj52BVA/eGGKCcV1yKyqVpFE
	 K3l9Dqt/dDqelzLInOK2Dd7GRNaaiR7+550NmnFDLT0XfbZMRKuHKw3NNNpXIVNbsK
	 wywKzzz24HqlYkhQfIkYLG6wcLDdIfxLu6U8kkcPxs6NCHieuHQBParWuSkfFRmguH
	 N7j/wyzroNaWQ==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id EDE22385298
	for <usrp-users@lists.ettus.com>; Mon, 16 May 2022 10:10:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qHWM/jiH";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id ej7so120949qvb.13
        for <usrp-users@lists.ettus.com>; Mon, 16 May 2022 07:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=hAaH8o2Rf21QlMl6gAZIx6TzxT2G2u1G4bOhP7ZFfO0=;
        b=qHWM/jiHe97RbrVaBSZVEdruHchhf391hdbj1nPLyU70L9CXTv3MbyZtZM0uXXzZv9
         RjxPWsAMbowRfZnf+6XuGQd9AQVoc+X5+VK9fao6YCExT1k9RuNuXN/HuXcAx3Z/nRnv
         MJIJs0nApyKD0QUdZPt2UsilKO9sTGDtzK8WFSfDsgOJaT4ncBBeVmJlTr2fcDKKXbGN
         5qlXOp3mVrXUFcOBVs3PzURoKpUrw4x3K0ysltTm5+rW8UjbQ8Pc59+QN9Py125p1n//
         IaRBaeFuJFKlfy8mZUJQtySkO0Qw/PyG0aNppU5G94VvYRzxJwfp/GqURwGai0Bn8Nra
         IaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hAaH8o2Rf21QlMl6gAZIx6TzxT2G2u1G4bOhP7ZFfO0=;
        b=AS5p0nuY9kNdlULBCKOWI52in7ZpkZJK7tN55Lxr8+Kh6czqsMvToA0PCUzp49Qjyn
         LtytVDhxW/fvCHRt0Uas82nOfGkIfxHsa/w4pbXVXSHn0J7ZznmYSNtgAMKg/pMNPwU/
         9pou4KjocHTc+ei6h9WKv+FZE1MPjqfwmsgIIdWI8t6XMI5LyRTfeC0AB0SWb9Ug9nAL
         f9vFlY614gf7XJBmY9ZD/LIRV8YtND5mMP8MEkJ/382qzci6eUEF67BeDbTrWFfObO+g
         ha53fWKXBUQcxpor6UyR4JmSunCMRxBEMCtvIkgHwU7otenWvw+mKAQsn6ckCkzrfWYA
         Xr8A==
X-Gm-Message-State: AOAM530MJD8uzeZw2/jDYyxClakmQDHcDL8GEoNg9N4l0Dk4FxAJobBf
	JRuGztXLzT7rvxKsS80ARgEdAeH+Fk8=
X-Google-Smtp-Source: ABdhPJwBGahBJQ7C/32GIkpcNpRPmXDXoR25nJjGQH6BvEqske/6+z9gSDujFlLAC+zzQDq9lhRXXw==
X-Received: by 2002:a05:6214:2504:b0:461:d310:c18e with SMTP id gf4-20020a056214250400b00461d310c18emr2206401qvb.98.1652710233969;
        Mon, 16 May 2022 07:10:33 -0700 (PDT)
Received: from [192.168.2.172] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id a18-20020ac844b2000000b002f39b99f6b6sm6141506qto.80.2022.05.16.07.10.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 May 2022 07:10:33 -0700 (PDT)
Message-ID: <3bc7c4f4-eb0e-6273-e1ca-bd474272a996@gmail.com>
Date: Mon, 16 May 2022 10:10:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CABfZwceh1KzO9770-48_wod=D-aAqCuvA5HO+L4shJnbebdnOQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CABfZwceh1KzO9770-48_wod=D-aAqCuvA5HO+L4shJnbebdnOQ@mail.gmail.com>
Message-ID-Hash: GUHJB5JYXG2UMYTSN5HUQWARJ5JPWC7G
X-Message-ID-Hash: GUHJB5JYXG2UMYTSN5HUQWARJ5JPWC7G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Does X410 support phase-aligned and phase-corent?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GUHJB5JYXG2UMYTSN5HUQWARJ5JPWC7G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0xNiAwNDoxNywgTWlraW8gRnVrdXNoaW1hIHdyb3RlOg0KPiBIaSBhbGwsDQo+
IEknbSBjb25zaWRlcmluZyB0byBwdXJjaGFzZSBhIFVTUlAgWDQxMCBmb3Igb25lIG9mIHJlc2Vh
cmNoIHByb2plY3RzLiANCj4gdGhlIG9iamVjdGl2ZSBvZiB0aGlzIHByb2plY3QgaXMgTUlNTyBv
cGVyYXRpb24sIEkgaGF2ZSBzb21lIHF1ZXN0aW9ucy4NCj4NCj4gUTEuDQo+IERvZXMgZWFjaCBj
aGFubmVsIG9uIFg0MTAgc3VwcG9ydCBwaGFzZS1hbGlnbmVkIGFuZCBwaGFzZS1jb3JlbnQgDQo+
IG9wZXJhdGlvbj8NCkl0IGlzbid0IG1lYW5pbmdmdWwgdG8gY29uc2lkZXIgcGhhc2UtY29oZXJl
bmNlIGFuZCBwaGFzZS1hbGlnbm1lbnQgb24gYSANCnNpbmdsZSBjaGFubmVsLiBUaGUgcGhhc2Ut
Y29oZXJlbmNlIGFuZCBhbGlnbm1lbnQgaXMgYWx3YXlzIHdpdGggcmVzcGVjdCANCnRvIG90aGVy
IGNoYW5uZWxzLg0KDQo+DQo+IFEyLg0KPiBEb2VzIGVhY2ggY2hhbm5lbCBvbiBtdWx0aSBYNDEw
cyBzdXBwb3J0IHBoYXNlLWFsaWduZWQgYW5kIA0KPiBwaGFzZS1jb3JlbnQgb3BlcmF0aW9uPw0K
Pg0KPiBRMy4NCj4gV2hhdCBpcyAiTGltaXRlZCBwZXJmb3JtYW5jZSI/DQo+DQo+IFszXSBMaW1p
dGVkIHBlcmZvcm1hbmNlIGZvdXItY2hhbm5lbCBwaGFzZS1jb2hlcmVudCBvcGVyYXRpb24gd2l0
aGluIGEgDQo+IHNpbmdsZSByYWRpbyBpcyB1bmRlciBpbnZlc3RpZ2F0aW9uDQpJJ20gbm90IHN1
cmUgd2hhdCAibGltaXRlZCBwZXJmb3JtYW5jZSIgbWVhbnMsIG5vciB3aGF0IHRoZSBzY2hlZHVs
ZSBmb3IgDQp0aGF0IGlzLCBidXQgSSBrbm93IHRoYXQgaW7CoCBpbml0aWFsIHJlbGVhc2UsIHRo
ZSBYNDEwIGRvZXMgTk9UIHN1cHBvcnQNCiDCoCBtdXR1YWwgcGhhc2UtY29oZXJlbmNlIGV2ZW4g
d2l0aGluIGEgc2luZ2xlIHJhZGlvLg0KDQoNCj4NCj4gaHR0cHM6Ly93d3cuZXR0dXMuY29tL2Fs
bC1wcm9kdWN0cy91c3JwLXg0MTAvDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
