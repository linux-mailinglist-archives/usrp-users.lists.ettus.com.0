Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A5740D1BB
	for <lists+usrp-users@lfdr.de>; Thu, 16 Sep 2021 04:44:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 208B538439D
	for <lists+usrp-users@lfdr.de>; Wed, 15 Sep 2021 22:44:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WHOw8rIl";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 0845A384413
	for <usrp-users@lists.ettus.com>; Wed, 15 Sep 2021 22:43:31 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id 73so823227qki.4
        for <usrp-users@lists.ettus.com>; Wed, 15 Sep 2021 19:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=YPvamhfD5jHxd5WecRKTXeNzwaPxgV2vMF1z5+ATwoI=;
        b=WHOw8rIlaz5g0Tl1GNR6gfzkb7VXiWr/32T4FQh3NX5LkegdfxkuU2n0GpQAM5HR3A
         39WEMGKkz7spVhDzD5wwgzisJgOiBYX7bC8jQI74bbXCz7JDxCAhi1jLQoUB8AZQEdwI
         hUHZinIuU/N70+/luBHEGAN//FnoGvf7mcAx274dg7myJKuFe+/rVHqc2oCMCniYlmr0
         K9VB5Eqd4qXP/FYaSvrWF962EkXuaQeAq3uMYs6VlgmTTt9czpYVqzGouhONesYXCvp8
         y+hfWs2KbKiZyF3xVRyt26cdHf382nAZQCNB1kM2rf+qOfYT1zSqVOEqIXMAJdzBiq/T
         R+VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=YPvamhfD5jHxd5WecRKTXeNzwaPxgV2vMF1z5+ATwoI=;
        b=PFog63rtl4nJJUTK2aiWsn4GE/9iD2zcYqANBrmQLmyk50qWloAAiSoHqF+8rCOJZz
         ah+ZxQmU/+zY+shqHtffj5ErCAzDgmcqfMSnrmdytJkUFItHB+CgCUwBnN5u8h8IR8u2
         51TV/2q0YagW2kDyNlHW8yLY+TQIckHh8eDlkRQo+eqOD5IKjDLWjBD/yhRkBUP9TUIM
         0TGzKMdaqaL2ARPXFAdSKau813wlF/ToxQ1EIJ00IdUKLnjr4553LGkiWQtiCmOlHTu4
         rdR3BJ+4hMQhndp/c/sGREilTduBqF40/1H65zM4xRaGbH353nEFEutI3uZ5JuXl0/li
         KsyA==
X-Gm-Message-State: AOAM532Nt0/5qP1OQteuzi74dQD1JoRTvCPJvrEXrk6DBy5Fxgx/bUBI
	1PBT9d4SEJddIeStjaedKDFk16wirPmw5A==
X-Google-Smtp-Source: ABdhPJxSi2obGKiL8TyE1JeD46NJXlm6E+tNI80/Uw0jG1oDXnJpYBFbScdv+iRioLcWMfy0uZ66lg==
X-Received: by 2002:a05:620a:66d:: with SMTP id a13mr3189136qkh.102.1631760211272;
        Wed, 15 Sep 2021 19:43:31 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id l11sm1143151qtv.88.2021.09.15.19.43.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 19:43:30 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAGeA34FfBj2wDCkFLCvLWSVumS3K4rSX9qP3itriP_uf+Lu=FA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <961c0d70-9bc2-0843-bf44-5c20412e77b6@gmail.com>
Date: Wed, 15 Sep 2021 22:43:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAGeA34FfBj2wDCkFLCvLWSVumS3K4rSX9qP3itriP_uf+Lu=FA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 3VC5GUM3NFBZQWGHTJNO6WZL3P3DQ36G
X-Message-ID-Hash: 3VC5GUM3NFBZQWGHTJNO6WZL3P3DQ36G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP Signal Range
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3VC5GUM3NFBZQWGHTJNO6WZL3P3DQ36G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0wOS0xNSAxMDozOCBwLm0uLCBTaGFtaWwgUHJlbWF0dW5nYSB3cm90ZToNCj4gSGVs
bG8gQ29tbXVuaXR5LA0KPg0KPiBJbiBteSBPQUkgc2V0dXAgSSBhbSB1c2luZyBVU1JQIE4zMTAg
YXMgbXkgZ05CIGFuZCBVU1JQIEIyMTAgYXMgbXkgVUUuDQo+IENhbiBhbnlvbmUgaGF2aW5nIGV4
cGVyaWVuY2XCoHdpdGggdGhlc2UgZGV2aWNlcyBsZXQgbWUga25vdyBhYm91dCB0aGUgDQo+IHJh
bmdlcyAoY2VsbCByYWRpdXMpIHdlIGNhbiB0cmFuc21pdCBhbmQgcmVjZWl2ZSB0aGUgc2lnbmFs
cz8NCj4NCj4gVGhhbmtzIGFuZCBSZWdhcmRzLA0KPiBTaGFtaWwNCj4NCk5laXRoZXIgZGV2aWNl
IHByb2R1Y2VzIG1vcmUgdGhhbiBhIGZldyBkQm0gb3V0cHV0IHBvd2VyIGF0IG1vc3QuIFNvIHRo
ZSANCmdlbmVyYWwgYW5zd2VyIHdvdWxkIGJlICJub3QgdmVyeSBmYXIiLCBidXQgdGhlIHNwZWNp
ZmljIGFuc3dlciB3b3VsZA0KIMKgIGJlICJpdCBkZXBlbmRzIG9uIGEgbG90IG9mIGZhY3RvcnMg
dGhhdCBhcmUgaGFyZCB0byBwcmVkaWN0LiINCg0KSSdkIHNheSB0YWtlIHNvbWUgbWVhc3VyZW1l
bnRzICppbiB5b3VyIHRhcmdldCBlbnZpcm9ubWVudCouCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
