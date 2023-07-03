Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 919AF746020
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 17:52:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E619C3844FD
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 11:52:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688399528; bh=983RONzE2Rc0o9PkY4yhB8hp1rF93G2XUWIx26yZl/0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=osYkav94W7H/X95bCz1OsfYD2uoGlWqLn+F6ou0As/7os4tb9uXeVubGfWwH/eRYx
	 W6UooAmdfnOWTImDEn4PTfRMT/S/KgNNQPWxxRtG1EFYf8h4QRHUTMCkECuWzkYvMK
	 Y7RBHpEbqOniJ15kRn0rVqksroXFBRJSdx159C0C+Dd5z1rANOQBiRgLjZqrF50VOu
	 USPkxuh1pJds7bLxUFwZmtfJ11kzHYhhXcML4SBnPp733nvkxT4N28Urz1K+EAa1+f
	 0zVWoy2otdiuaWTCee5hRIzunSTQJpZDVybNtqK9juhYWfJL24PnvilRcD4V10+AJg
	 4R/k4JAccj8Qw==
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 10020383059
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 11:51:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="E3ShXhZz";
	dkim-atps=neutral
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-78701841ccbso1546525241.2
        for <usrp-users@lists.ettus.com>; Mon, 03 Jul 2023 08:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688399502; x=1690991502;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dIpacBchViHw+9NO1/1R2zRFxyutjuzPx/6vJna/4CY=;
        b=E3ShXhZz2/FtTPf7AlIz86vQsH6WVv8tvoHrJzS7wPiGq9oiXw4JVko7O65JTZkp1Z
         4zy2Cbsgt5HSnbgpvdBv98eSmgRSvKpL4PShejvBSi0/IfY/EUUakGU+ST3LruQSxuzn
         6cAk1nHqOA6fbGoxSj3fgmrSOhS3qscwwR7fhD3gOpPU084eQwr3vzwlucLH2nSCLl/E
         uzggOGnIMVLfDlLwvFEHrmkbTm9kypWv/z0YzaYY8CjIw8fcT7yWwy+/el8ezQ7bv8dS
         tMM7fU6ugGhrRSynVRhTP02KLz9nao1jQHsbLOEkln4ZSFw0yzzIxwU8sVieQCc58fle
         ztLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688399502; x=1690991502;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dIpacBchViHw+9NO1/1R2zRFxyutjuzPx/6vJna/4CY=;
        b=LkvdHZQcno5N5/fN9171ZAgEC/mzDaoGizYTxYfHeJpXF8pYei71o/0ko1wKjAVMal
         HYcx4t3g+TP9EnaFjLcMeMnZdSJDToP0N7ZyJhXejcKoMgOIhzv9PQ98Y03piefZp7QK
         fhLxiymQg0bCBQ6rh8c4TDrwPJxVoD0yVZCdEpeo2COeU8TAu4URnpVSAyHGYVF8aGbO
         XMd8A4uPw5iLdoLoAsI+2638pAjhE0HOiytEVJBRaLLZutb+tZEqOAv0xjSsxw3jHhu6
         dfYwbTEgPJflLs22FIHMAwYQtZz2nlBkqjSEzjYHUjyeE+8EHhiCiKfKzKWoO03M9k6q
         lx2w==
X-Gm-Message-State: ABy/qLYbgKMVptdYoCRjU1oeOTOdusxJ85lsoVu36GifTcBLfelS7hob
	29eOK1yBn96mhleCoHNsDPz+tNOmrh4=
X-Google-Smtp-Source: APBJJlFbYlGgH/3BmVcSDLDDfn2IT0rlqyDXjoELUI+wkawCZbQaDtK5LVrpGJGSjaHeDWgmiubiwg==
X-Received: by 2002:a67:ec10:0:b0:443:6397:2505 with SMTP id d16-20020a67ec10000000b0044363972505mr5011542vso.19.1688399502282;
        Mon, 03 Jul 2023 08:51:42 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id v9-20020a0cf909000000b00636047c276csm6241882qvn.126.2023.07.03.08.51.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 08:51:42 -0700 (PDT)
Message-ID: <56c8674d-c52e-d7cb-35d8-cb719a368a51@gmail.com>
Date: Mon, 3 Jul 2023 11:51:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <dbbFgDx8BivXcC3oBO9Colf4By4sxTlVYq9a1S6EPU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <dbbFgDx8BivXcC3oBO9Colf4By4sxTlVYq9a1S6EPU@lists.ettus.com>
Message-ID-Hash: UFDCEEYJU2Q3MA4R3ZGPU6Z4LGEE75B4
X-Message-ID-Hash: UFDCEEYJU2Q3MA4R3ZGPU6Z4LGEE75B4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding time differences in rx_time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UFDCEEYJU2Q3MA4R3ZGPU6Z4LGEE75B4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMDcvMjAyMyAxMToyOCwgam51bmV6QGN1ZC51dmlnby5lcyB3cm90ZToNCj4NCj4gTm93
IEkgdW5kZXJzdGFuZCwgTWFyY3VzLg0KPg0KPiBUaGVyZSBpcyBzb21lIHdheSB0byBpbXByb3Zl
IHRoZSBzeW5jaHJvbml6YXRpb24gc2NoZW1lIGJldHdlZW4gDQo+IGRldmljZXM/IFRoZSBtdWx0
aWRldmljZSBhcHByb2FjaCBjYW4gYmUgdXNlZCB3aXRoIHR3byBjb21wbGV0bHkgDQo+IGRpZmZl
cmVudCBVU1JQIGRldmljZXM/DQo+DQo+DQpZb3UgbWlnaHQgYmUgYWJsZSB0byB0YWtlIGFkdmFu
dGFnZSBvZiAiY29kZSBzbmlwcGV0cyIgaW4gR1IzLjEwIGFuZCBuZXdlci4NCg0KU2V0IHlvdXIg
U3luYyBvcHRpb25zIHRvICJkb24ndCBzeW5jIiwgYW5kIHRoZW4gaW5zZXJ0IHNvbWUgY29kZSB0
aGF0Og0KDQogwqDCoCBvIFdhaXRzIGZvciBhIFBQUyBwdWxzZSAoYmFzaWNhbGx5LCB3YWl0aW5n
IGZvciBnZXRfdGltZV9sYXN0X3BwcygpIA0KdG8gY2hhbmdlKQ0KIMKgwqAgbyBUaGVuIGlzc3Vl
IGEgInNldF90aW1lX25leHRfcHBzKCkiIHRvIGVhY2ggb2YgeW91ciAoc2VwYXJhdGUpIGRldmlj
ZXMNCg0KTW9yZSBoZWxwIG9uIHRoaXMgaXMgcHJvYmFibHkgYXZhaWxhYmxlIG9uIHRoZSBkaXNj
dXNzLWdudXJhZGlvIG1haWxpbmcgbGlzdA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
