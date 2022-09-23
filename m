Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FF45E81AA
	for <lists+usrp-users@lfdr.de>; Fri, 23 Sep 2022 20:18:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C1C33841C3
	for <lists+usrp-users@lfdr.de>; Fri, 23 Sep 2022 14:18:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663957113; bh=8oiZPXSCZ1OHfCT6a1dzKweZVBblJVoOeNfuVNF4c3Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=C/gRPI8z6bJkoqhXnvPhf3FzjOALM88OoSEnVCYwtzEYMl+iH2jOV0SGLYJTnPMCe
	 ldUrwuvNuZRBotpuTa237ECKYBtNMRwqlnap+MDfjH3vpH1FCnEBbolavr4NEadyDH
	 ebFB4QZlCs725d58frnq3Ksx/aQpH6P1pk8b1ZMM+JyzkkL7Y9PzOfPncl+x/6dWo/
	 qYva1gf4bl1WPG4g6c4ZS0GH1dphlknxkU8LKjFfnzUquwPBGZ8UPMAoZFWDCqI8Kq
	 A4Bg+hPGW9zNkCfrSFZkE72CXlDtVrYEFfF6Ic1MnniWY/ldWuUltwqQdXWYguBVwk
	 38bAaoI5lGCxA==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id BA252384102
	for <usrp-users@lists.ettus.com>; Fri, 23 Sep 2022 14:16:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KAyYySDP";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id g12so586700qts.1
        for <usrp-users@lists.ettus.com>; Fri, 23 Sep 2022 11:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=2gCKiOTP9EQb6MA19osXSn3tTYhdmlqqA8W7Dk7nWdM=;
        b=KAyYySDPy3MPvfFYRXAOep97fxVimZsQgHF8LnG9rTUQxCf63JG3nEJOK7kjklCbKx
         tAjYU/us7DvAk3V4h0mxAe2brhhVbZxkEE+R3p3EYiYMhBaENaIuL4Widsn4rv3ATHn/
         xkUPF9Ye1YdtimaYfUhhaUo8LnTM6o0UKXD4y52RA2JwLlVWeoXC1oMQHbDijc5BX7Y8
         KkJcIjsQhYqV2VUAbFjaCCp9gb+nc2qspiiKs+toesxMhuZjM2YleErLbkx18lOzkwpU
         UxY79RTIAd+grvB+ybhNBrntNjNPB2uRqi6a4SUT26QsrvdfmmNEPt0t33H5uefy5fSa
         fgHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=2gCKiOTP9EQb6MA19osXSn3tTYhdmlqqA8W7Dk7nWdM=;
        b=zHvqmlU5Fdai4CKxc+tpNCxjhpw5uwuLZ5fvAnFgp6dug8qkLp8Qh8R+b7S0ikO83Y
         5ZA1qHo783YI86iLJueCqObx1gzPKDPEDO9ssgQLO6gPP0o+kyleAYB27Md+Kh2NAzfa
         HKBurip9WEYfr1xomSLgzow4mo1StGbWeTxKICvM8V5t2WOWpuvl5kavKJlSZ1kOznkj
         oRDIDvnf8b81VkIlWoY9xBJIJW/omhOGhAKEG4FRJx57VoNAx6AzBbBr5TjHnYQgF7L8
         1/bnN+GtLXNSiFcLf+4PrNuidI31wJYP8Rjl8Nk74WqeyO1hluHhJvSIEjHQCVbhfRDF
         vgsw==
X-Gm-Message-State: ACrzQf3VTzx6x6Ixs8woUjOhGYP7nscEOih/I43ZChpGewu+wQgyiG9I
	T1RiDv9ZY5wqCn2lJq4QXkA1Sm/42zI=
X-Google-Smtp-Source: AMsMyM7NZVvsAQwrEXqqvJ/CpNboP6Uf+sSHaEmInhex1jFWpqBT010brlI9HGn2Q17qoqpH4QJRcA==
X-Received: by 2002:ac8:5c45:0:b0:35c:cd2c:c8f8 with SMTP id j5-20020ac85c45000000b0035ccd2cc8f8mr8308873qtj.105.1663957010004;
        Fri, 23 Sep 2022 11:16:50 -0700 (PDT)
Received: from [192.168.2.195] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id bv12-20020a05622a0a0c00b0035d0daff6fasm4786205qtb.91.2022.09.23.11.16.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 11:16:49 -0700 (PDT)
Message-ID: <fc5fc6fa-d33f-9958-7e58-2fe637175680@gmail.com>
Date: Fri, 23 Sep 2022 14:16:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519@SN4PR0501MB3919.namprd05.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519@SN4PR0501MB3919.namprd05.prod.outlook.com>
Message-ID-Hash: DKHGJS2GZJMKZ6ZZO5IEVSAZHOFV2RNM
X-Message-ID-Hash: DKHGJS2GZJMKZ6ZZO5IEVSAZHOFV2RNM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DKHGJS2GZJMKZ6ZZO5IEVSAZHOFV2RNM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOS0yMyAxMzozNiwgQXZpbGEsIEpvc2UgQSB3cm90ZToNCj4gSSBoYXZlIG5vdGlj
ZWFibGUgbG8gbGVha2FnZSB3aGVuIHJ1bm5pbmcgdGhlIGNwcCByZm5vYyByZXBsYXkgc2FtcGxl
cyANCj4gZnJvbSBmaWxlLiBTbyBJIHJhbiB0aGUgY2FsaWJyYXRpb24gZnVuY3Rpb25zIGJ1dCBp
dCBkb2Vzbid0IHNlZW0gdG8gDQo+IGJlIHVzaW5nIHRoZSBjcmVhdGVkIGZpbGVzIHNpbmNlIEkg
ZGlkIG5vdCBub3RpY2UgYSBkaWZmZXJlbmNlLiBJcyANCj4gdGhlcmUgYSBmdW5jdGlvbiBjYWxs
IG9yIHNldHRpbmcgaW4gY3BwIEkgbmVlZCB0byBhZGQ/IEkgdGhvdWdodCBpdCANCj4gd291bGQg
YmUgYXV0b21hdGljLiBVc2luZyB1aGQgNC4yIHdpdGggWDMxMC4NCj4NCldoaWNoIGRhdWdodGVy
Y2FyZHMgYXJlIHlvdSB1c2luZz8NCg0KSSdsbCBub3RlIHRoYXQgbW9zdCBvZiB0aGUgREMtb2Zm
c2V0IGNvbXBlbnNhdGlvbiBpcyBkb25lIGluIGEgDQpkYXVnaHRlcmNhcmQtaW5kZXBlbmRlbnQg
d2F5IGFuZCBkb2Vzbid0IHJlbHkgb24gdGhlDQogwqAgQ0FMIGZ1bmN0aW9ucyBhcyBmYXIgYXMg
SSBrbm93LS10aGVyZSdzIGEgY29udGludW91cyAiREMgb2Zmc2V0IA0KcmVtb3ZhbCIgZnVuY3Rp
b24gaW4gdGhlIEZQR0EuDQoNCldoZW4geW91IHNheSAibm90aWNlYWJsZSIgd2hhdCBpcyB0aGUg
bWFnbml0dWRlIHdlJ3JlIHRhbGtpbmcgYWJvdXQ/DQoNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
