Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6116F7429E8
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 17:51:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A396380A36
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 11:51:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688053869; bh=lMBH4qq/iGu1d6HScgSnZG+1QW6+cVyPnAqX1GueCt0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0Vvh8ZG8ZFZf6U5A7FHthHnyFuC/eucDlaXgWyvVtEFL9gt2h2WjrPHYjYOcBvfuT
	 LeSrryMOh1+MBPdmLW/1N+SfOs5TgBH1wgkfIMHgTRValhzAl1tdeUG3f3lvI4b3Tj
	 znjsyDWxXvuEQus/nplokniTZOQs7R+oB3yEqKuUsBNn1gi0J9iF8cOSNqcixqJDaa
	 BSzDotYUE7jSU2BmIQGTo+po1v72MAkkuhBK3KS9c44TWPdlyVd4vqX9TVWv9lL5dy
	 AbWVtcDj9KN25ROwfLu8Xcr1zgm9xsu+qW8iMqaLYkjAP8EM3jdMoDuJCovUrWBHiF
	 qm3PATJ7Xf1vg==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id DCCE1383FDA
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 11:50:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W4p3JY3q";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-635de6776bdso6635796d6.2
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 08:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688053845; x=1690645845;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mMy6KJIlS5MIYfF9CgGxysiBAPcKCCaWg216VWDVRJI=;
        b=W4p3JY3q7vlgXx0Txppn9POcCLwfagzj84OgifwUOpgT20vyvcXDAAv+VCwkxmjoab
         t9DJJEqJr8batl8wLljxoMyJWSIUSFG0tn6ceOURx3JGcOLF8t5iF6pRXLKhecgbnQiW
         9EPRbfXIVxCfTWdwOkNZ+508iST4/THH9+fdXMEmCpZrS3fg8taI4OQ6VcPjialugXnW
         a2mAIXx4qnl4YddrCTpRsNuddhRCdkCrKCkac80nl6pNVAsgP+wgmaCIedWq+w+MSM2g
         XGRO9x8DXvs+AMwFKAs0VM0vWINX+YEl5ZpZXLw4m0BXFb8eY2pLXHTpFKsTAVCX4xgJ
         fKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688053845; x=1690645845;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mMy6KJIlS5MIYfF9CgGxysiBAPcKCCaWg216VWDVRJI=;
        b=R5QpwzvQRoXfr78zpAawmkK4FXjY6ORyhOlKVRRPi0LWOh0P479lBTByesCd6Y45hp
         ZvFVzkNPdn2NFgMdTcuovnWmfbkWsYdzCH/aZZjYdApzEf1+YjBeuxzX07HW9xXYym0C
         q2w+h/cZBniFAlL9xAySI5daWorAw58iwkCWJJXqoteITxBxUHXPI0ZHQb1Zk8GB/ZIJ
         RBJ/kJYBy3GK9f+Q3CMLUiWcdxABVlseh48FtHLif7W4i45XAUjuDZgYIvJVA+TogZUK
         +SYNMibW1uPxsbtKJkoK+PTItT/A5X6oac7JO1+Y2KQcZaFKl7O1FncerSu5hMIhnjbd
         ruhA==
X-Gm-Message-State: ABy/qLb21o4/XaiQ0qGrz+ii5X3tuEupbKF4Nh0faRxJ6/2NfQjgV+e+
	8/fNXdExPt6kdfdBcseTOqkkX7OIWh4=
X-Google-Smtp-Source: APBJJlEeO5+NdJtC0cUenN2MIqPNQbVY7Jm0+w9QUljbEnvzv9jkqxp5O4ryfz2Vmx1WFOVPy4KFlQ==
X-Received: by 2002:ad4:5deb:0:b0:626:1227:1584 with SMTP id jn11-20020ad45deb000000b0062612271584mr89490qvb.15.1688053845025;
        Thu, 29 Jun 2023 08:50:45 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id pe34-20020a05620a852200b007623c96430csm4907300qkn.111.2023.06.29.08.50.44
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jun 2023 08:50:44 -0700 (PDT)
Message-ID: <e4210d55-383f-d271-0788-4dedf32b71bf@gmail.com>
Date: Thu, 29 Jun 2023 11:50:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <WXHjHmlp4y5BTh3cU627bTbOIl10COd07qvjWWHJSI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <WXHjHmlp4y5BTh3cU627bTbOIl10COd07qvjWWHJSI@lists.ettus.com>
Message-ID-Hash: 3TE3ZZFMODRR3TGMVAY6OGHMG6NCNOOY
X-Message-ID-Hash: 3TE3ZZFMODRR3TGMVAY6OGHMG6NCNOOY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3TE3ZZFMODRR3TGMVAY6OGHMG6NCNOOY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMDYvMjAyMyAxMTo0NCwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBJbiBt
eSBleHBlcmllbmNlLCBnZXR0aW5nIFVIRCB0byBydW4gb24gVWJ1bnR1IDIyIGlzIGEgaHVnZSBo
YXNzbGUuIElmIA0KPiB5b3UgY2FuLCBJIHJlY29tbWVuZCBkb3duZ3JhZGluZyB0byAyMC4wNChi
dXQgbm8gbG93ZXIpIGFuZCBpdCBzaG91bGQgDQo+IGluc3RhbGwgZmFpcmx5IGVhc2lseS4NCj4N
Cj4NCkkgYnVpbHQgVUhEIDQuNC4wLjAgb24gMjIuMDQganVzdCB0aGUgb3RoZXIgbmlnaHQsIGFu
ZCBpbnN0YWxsZWQgaXQgDQphbG9uZ3NpZGUgdGhlIHZlcnNpb24gdGhhdCBjb21lcyB3aXRoIFVi
dW50dSAyMi4wNA0KIMKgIChVSEQgNC4xLjAuNSkuwqAgSSBoYXZlbid0IHRlc3RlZCBpdCBleHRl
bnNpdmVseSAoYmVjYXVzZSB0aGUgaXNzdWUgDQp3YXMgYWJvdXQgYnVpbGRpbmcgaXQpLg0KDQpO
b3csIEknbSBub3QgYW4gUkZOT0MgZ3V5LCBzbyBJIGRpZG4ndCBleGVyY2lzZSBhbnkgb2YgdGhh
dCBzdHVmZi4uLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
