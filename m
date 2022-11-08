Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C996219AB
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 17:41:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF419381421
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 11:41:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667925704; bh=50+um1tFUkXBnOYiDQzgv+lSu/luUC+cmxP67EZxfFE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GSeVNK2k39OCnVLbLK5Rwj/0ANMTkqUro6Mx44Cw5ZXcqt3se1GW2Gb4hhq8NbPLz
	 WVdLF+0wewfJb9uhr/S26kK9blZnjtYG4yqmI4ffaXwm+kl4B/eFsd11ZhF6GvrJHd
	 Y32XozobuMNecCZJ5cAQhea5RU+auIQbjJ1wsX+y5s7H/pSadHjTsEkSNzg5HToBK1
	 4swJaEjQn6nAs8bXfWq0Do7ZEXsZ9Yu/mny/v7FSAqYEumMUYmTBr4BanXSq4FeEQG
	 Y9GZbHnw30ebEh6KNfuOjgWCyTlm5nNfs7/vr8+YUv2Z2FmFO8PNAmr+7ZlnkyMsQV
	 q8ElgoGK+lvOg==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id A57883809AC
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 11:39:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HBqlWUYr";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id e15so10587339qvo.4
        for <usrp-users@lists.ettus.com>; Tue, 08 Nov 2022 08:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dn2W/RvQ0ESnL9tkDyMuloW3XgSSoUUxznnqFNI4pVA=;
        b=HBqlWUYrKGfmhw8OuG+wkHsrWPDKMbgpEjbNywidcm1bxxw+loIJX/g7rtbjm0c6ah
         D4dMutQs/h6Gd5ygv18M4RB71kyJZHDblkqpSjdCApleW28u4zk/mFGpnlsYUn4vhopG
         J22cJtdEvO/bZptsW3t9M3EKAjXOdt4lYERJZAPCDLrsAxf4F0CpCEp4/FjLCLGzpWKO
         PzJ8npGsrCGJBOpPZfQmY0LknWTXkU8fuyVTn1gNbOsrG0ZPKg/dvDbqerfXjBk+KDxi
         s0Z1hbRitEVlq7zlnBVkLK3znfWAzyA+TdAuKFapn9JLAVTry2vcDJWtIZwWxnPlKpvw
         +tXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dn2W/RvQ0ESnL9tkDyMuloW3XgSSoUUxznnqFNI4pVA=;
        b=mBLWe22V5oQmkQFN43woc6YS+rupcy7A/FAfIyREsNhYEIEW8XwKLGj5srC4pbKYRt
         ntgRqqdJevr0kbR1SxzATN1VpX6CHVU3FvD5jfjLU3hlG/XYTbki8Zv/9GirsNcCAqpE
         HsFzR/2HeJ0zVfcdngjosfsCOerUFHAMgNfXrxC03VtD2MatHAui/hL+3rLKwziXxg+k
         G4yc0lzntmKztmZqlDAQ9ZAFAqD4xafLqplSS5LByT1lL4zMedBlxdA0wpDO7YDZFgBK
         uR1fALcXdzqAKWhQdmY9Yget1/enCemakoFPJqy5k4guBmhqsxJMAeCViIREd2v6Bs8K
         MJWw==
X-Gm-Message-State: ACrzQf2CN3jERDGvLi7jPJKP1DweUyl2JdypRU+0GBIloJ8HAkhGJthn
	TzMt6lxfdGJPq5t1M+5dwxrFf4eEQvQ=
X-Google-Smtp-Source: AMsMyM5HnuMsoNQeukb3mNQ2XAqTgmz45R01+82UBdmoh4lqOZe9wzsOjw6vLOUSkogZSX0TTvtt+A==
X-Received: by 2002:a05:6214:20e2:b0:4bb:7aa5:bf0a with SMTP id 2-20020a05621420e200b004bb7aa5bf0amr50178022qvk.112.1667925594959;
        Tue, 08 Nov 2022 08:39:54 -0800 (PST)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id br37-20020a05620a462500b006cf19068261sm9461843qkb.116.2022.11.08.08.39.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 08:39:54 -0800 (PST)
Message-ID: <dcdb09bf-11f0-872e-393f-51aaf14243e1@gmail.com>
Date: Tue, 8 Nov 2022 11:39:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DF5jmD1I9zqPP2n31ZGDJgYDSgmQtJYtmZ7IPfuow@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DF5jmD1I9zqPP2n31ZGDJgYDSgmQtJYtmZ7IPfuow@lists.ettus.com>
Message-ID-Hash: JLKLGDPZI4QENREFJCVSOFURMCN6SN52
X-Message-ID-Hash: JLKLGDPZI4QENREFJCVSOFURMCN6SN52
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Custom FPGA image "version" register
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JLKLGDPZI4QENREFJCVSOFURMCN6SN52/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDgvMTEvMjAyMiAxMTowMSwgcmkyODg1NkBtaXQuZWR1IHdyb3RlOg0KPg0KPiBJIHVzZSBh
IG1vZGlmaWVkIEZQR0EgaW1hZ2Ugb24gYSBmZXcgeDMxMHMuIElzIHRoZXJlIGEgY29udmVuaWVu
dCANCj4gbWVjaGFuaXNtIGZvciB3cml0aW5nIHNvbWUga2luZCBvZiB2ZXJzaW9uaW5nIHRvIGEg
cmVnaXN0ZXIgb24gdGhlIEZQR0E/DQo+DQo+IFRoZSBzcGVjaWZpYyBwcm9ibGVtIEnigJltIHRy
eWluZyB0byBzb2x2ZSBpcyBJIGhhdmUgYSBsb3Qgb2YgVVNSUHMsIGFuZCANCj4gSSB3b3VsZCBs
aWtlIG15IGFwcGxpY2F0aW9uIHRvIHJlcG9ydCB3aGVuIG9uZSBvZiB0aGUgcmFkaW9zIGl0IA0K
PiBjb25uZWN0cyB0byBpcyBzdGlsbCBvbiB0aGUgYmFzZSBpbWFnZS4gTXkgYXBwbGljYXRpb24g
aXMgY29tcGF0aWJsZSANCj4gd2l0aCBib3RoIGltYWdlcywgYnV0IGdldHMgYmV0dGVyIHBlcmZv
cm1hbmNlIHdpdGggbXkgY3VzdG9tIGltYWdlLiBJIA0KPiBydW4gaW50byB0aGUgaXNzdWUgd2hl
cmUgSSBkb27igJl0IGtub3cgd2hlbiBJIGdldCBkZWdyYWRlZCBwZXJmb3JtYW5jZSANCj4gYmVj
YXVzZSBzb21lYm9keSBlbHNlIHJlZmxhc2hlZCBpdCwgb3IgaWYgdGhlcmUgd2FzIGEgcmVncmVz
c2lvbiBpbiANCj4gdGhlIGFwcGxpY2F0aW9uIGNvZGUgaXRzZWxmLg0KPg0KPg0KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpZb3Ug
Y291bGQgdGFrZSBhIGxvb2sgYXQgdGhlICJ1aGRfdXNycF9wcm9iZSIgY29kZSAtLSBzaW5jZSBp
dCBkaXNwbGF5cyANCnRoZSBGUEdBIHJldiBudW1iZXIuDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
