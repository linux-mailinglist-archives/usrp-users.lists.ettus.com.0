Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C37645B8E83
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 20:03:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F908383AF8
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 14:03:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663178602; bh=7QYH8ca3/lcU6wSLZWG511q4CuSz238ShsZVjXekWDg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=V5MCMxCp5IZeZTGBbDMzUXqQ8xdVK6tHbeQ+hyaV08QpZroiZkU335krpxApg+0Af
	 LoSE7I9Vzj6ciioiT6iu8OsGye3lA2RotPPQoILsY+DpTpokZ3hAvATciSa584wkR4
	 hA5Y/YBCaEVFBlnRExGc+0Hnxt+ooZ6/afDJZ8nCh9ApQXZRpWjgwzSbBa5o6oLo6a
	 uvBgr7NvnH5rDhRwSziAz1SalGDFKtJsz/vMZS+9wU6IxvHvUVyYZOpyWkmjxcsZHf
	 5BmpFadk8sjYiplUGLh6R550vxsQkllXqczi9PdAkZT4OJEWnUHIdgTujRm4+owIbD
	 m/5ErDTvl+oyA==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id B503D383D7E
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 14:01:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i4K51Qvw";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id s9so9241060qkg.4
        for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 11:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=TqE2rDF3CIlfhlkKst7WUtd6QvUTO1+uVic4EsJkIew=;
        b=i4K51QvwN3G4a7l6Aewb+KR0OjmdCE24ttsAkvKhzneFLdaY/5xxklQfANFN28xPzx
         PsznYZy1WpO0L1pNumLIuIf7I/BPV7FInFDc9A0IEV3gECi2GZbhKYTkweVjwnm5+mJm
         0iGe8PXOwoPhu5s2hyAZYbUk43m7bT4NEKWXbmGPq/Bxqr6OV+S/2q4VShvP00Et3ppD
         hWgc+MqX+yIT4riCqJbRD9q/OmDgKgNT2Ijo8kntitsgS66OeiUodzHGQ5XkzP2Vm9qz
         88tEn9uiwBlE29VGneQcNzcNJ8yFo6xE/NWf9IjD2yzndr7F8bd8BXZqF/UdffCPYy0E
         pkwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=TqE2rDF3CIlfhlkKst7WUtd6QvUTO1+uVic4EsJkIew=;
        b=B7BxFFwEL2WMPYsGv6IItTK5TLsPxtYyH0Ctb7cl+TBEXJsUGpsQywS4bOiVkbLfr3
         yDug7hOSXQ95X3DHlyaNvFV0o2Pd4sFSzq42MfVi/+vVsPlfKf6bFzKG76/MzrWqIA3+
         Rui/zvPjkw6b0mZ2nHeZyAeNr77b0AXa6L8jzXpw2dl48itHJz/cJVfQabTszDZu3Rks
         LgJ8t3X+hwyLC+rdP7wolWCYp7id0TPkIn0gGaHjAbZL8hpvMUPoIfpNxJHMwBL8pA61
         AyWX9YAV9rlegzbnJUE6oxkl5MfbqXMkBL4mgVMJs98JDywDz1AASdYz+yRqr1i56i6R
         aGUQ==
X-Gm-Message-State: ACgBeo1uwU0+6UEBTSf+4hyQshpbejBp7ezsMwfZ91choOT/0hvROpwz
	B7Uy5GhDUZKRid8WbmxBxKPsi+zHtPk=
X-Google-Smtp-Source: AA6agR74V0PzfW0GrotYPw7Sp6gxqcx/XnCdLVUEuvpDQSR9B5RUJWOgcFoJP06qBoyVtUKDnRw40A==
X-Received: by 2002:a05:620a:4046:b0:6ba:f6f2:138b with SMTP id i6-20020a05620a404600b006baf6f2138bmr27882348qko.629.1663178494843;
        Wed, 14 Sep 2022 11:01:34 -0700 (PDT)
Received: from [192.168.2.158] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id m15-20020a05620a24cf00b006ce515196a7sm2550946qkn.8.2022.09.14.11.01.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Sep 2022 11:01:34 -0700 (PDT)
Message-ID: <9a12aae3-2957-ec1d-aedd-9bf822e2b868@gmail.com>
Date: Wed, 14 Sep 2022 14:01:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <162880885644.11274.2887363906677329405@mm2.emwd.com>
 <CAMZrk7Qi=SmLpX8B-n3Jo=EbDB5+=Eb4jOWQ+AM9Bn76V5Ayjw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAMZrk7Qi=SmLpX8B-n3Jo=EbDB5+=Eb4jOWQ+AM9Bn76V5Ayjw@mail.gmail.com>
Message-ID-Hash: 5OS3CL3NU3BMQGNAQCDF3SWG7Z7ELW2S
X-Message-ID-Hash: 5OS3CL3NU3BMQGNAQCDF3SWG7Z7ELW2S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to learn FPGA digital design of the SDR
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5OS3CL3NU3BMQGNAQCDF3SWG7Z7ELW2S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0wOS0wOCAwMjowMywgTW9zdGFmYSBTaGFiYW5pIHdyb3RlOg0KPiBIaSwNCj4NCj4g
SSBob3BlIHRoaXMgaXMgdGhlIGNvcnJlY3Qgd2F5IHRvIHN0YXJ0IGEgdGhyZWFkIGFuZCBhc2sg
YSBxdWVzdGlvbi4NCj4gSSBoYXZlIGEgQjIwMCBib2FyZCBhbmQgSSdkIGxpa2UgdG8gbGVhcm4g
aG93IHRvIGRlc2lnbiB0aGUgRERDLCBVREMsDQo+IGRlY2ltYXRpbmcgYW5kIGludGVycG9sYXRp
b24uIHdoYXQncyB0aGUgYmVzdCB3YXk/IElzIHRoZXJlIGFuIG9wZW4NCj4gc291cmNlIHByb2pl
Y3QgdGFyZ2V0aW5nIEIyMDAgdGhhdCBpbmNsdWRlcyBGUEdBIGxvZ2ljIGRlc2lnbj8NCj4NCj4g
S2luZCBSZWdhcmRzLA0KPiBNb3N0YWZhDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NClRoZSBzb3VyY2UgY29kZSBmb3IgdGhlIFVT
UlAgRlBHQXMgaXPCoCBmcmVlbHktYXZhaWxhYmxlLg0KDQpUaGVyZSdzIGEgYml0IG9mIG92ZXJ2
aWV3IGhlcmU6DQoNCmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9tZF9mcGdhLmh0bWwN
Cg0KaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfaW1hZ2VzLmh0bWwNCg0KU2lu
Y2UgdGhlIGRldmljZXMgYWxyZWFkeSBoYXZlIEREQyBhbmQgRFVDIGFuZCB2YXJpb3VzIG90aGVy
IA0KYml0cy1hbmQtcGllY2VzIHRoYXQgYXJlIG5lY2Vzc2FyeSBmb3IgbW9zdA0KIMKgIFNEUiBz
aWduYWwgZmxvd3MsIHlvdSBkb24ndCBuZWVkIHRvIGltcGxlbWVudCB0aGVtIHlvdXJzZWxmLsKg
IFRoZSANCnNvdXJjZSBjb2RlIGNhbiBiZSB1c2VmdWwgZm9yIGZpZ3VyaW5nIG91dA0KIMKgIGhv
dyB0aGV5IHdvcmssIGJ1dCBvbmx5IGlmIHlvdSdyZSBpbnRpbWF0ZWx5IGZhbWlsaWFyIHdpdGgg
DQpEU1Atb24tRlBHQSBkZXNpZ24gcGFyYWRpZ21zIGFuZCB0b29saW5nIGFscmVhZHkuDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
