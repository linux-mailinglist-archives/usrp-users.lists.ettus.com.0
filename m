Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6B26F1002
	for <lists+usrp-users@lfdr.de>; Fri, 28 Apr 2023 03:30:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30C51380B8B
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 21:30:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682645438; bh=Bn/zfLVAzGTtGx3h/ZiprIBjs6SmYibCOrwXUoL5sS8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ZWp0RST6vA0hLnim5DbgYfqD6sm9/PSbRN8WzPM8PE5hpIq74eRUtRYU+6snYMKTb
	 M8uJYvWFbRD56X0T0J94oFLQEOhSlwkUwHFCVn/5K/H0JJyC7dCVaDN5QKI/Wb3Xto
	 jAh3mvFt4UU9ZwZLfJ+oHBva/ayI7WXBJZgCaglv0/6er7bNN8J2/aKvGF2pv+i6zm
	 2Z6hwz4lHli5JD3kzNaHcpiL7hDrZTMOTn1Eun7SG79+R+DQDYb916jyIf8sTcO5mh
	 h6UP2sO/KGogEJ3UOkKTzyV1xYY+7OHLIP9UcZGGDtST+1WAPkmIp7V56mjwqDY0Bp
	 uErwXUtrk0lKw==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 919F938003A
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 21:30:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lpbsRK6i";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-74e076b66f7so465445285a.3
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 18:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682645416; x=1685237416;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ssoWaercfkthblTf35xOjLbOH6jffmimRmXHDjrYmd4=;
        b=lpbsRK6ifgKK0OE00YG1jp7XWvIltxP4ZrnSDDI6ZRoe7+QVSxEW+viUuSYpBGCK+m
         f4aTkMqQbN1GSsLh9/0GJFcf78CKO8A66TxvWuQ1uc+SK0VrVy9451S4AazxhVidpUDc
         SveZWkFQwzOeHlQWwUuDwUdLU54tf+R05XMXBrhPJ9mdKW4juau9/kTRHymJfZH15CX4
         kkWmwbe7mSBwRHQkBA2zsWmG/Azt+Zd8eav/W6eJfjO+9wdPRHNaZAls8rqvRumEcsEU
         2qZHmcY5zZ4rnOgAHUnsv8cktXdYEN3hyJcnRU6TfMwKFkwa+RRbXSbzWMv3UuKbkgZW
         1raA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682645416; x=1685237416;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ssoWaercfkthblTf35xOjLbOH6jffmimRmXHDjrYmd4=;
        b=IGv83s3agmVEkCCfMTx22AL1dsT3Nj2lzvy0juztBozDI1dy6BsPa4ky2XrJ20s6Cu
         uGr5DGwrmU7myfsmIlN/7g3KrCkG4K+FUQ4UFk5tidjNUWuYcFyJpaa/rqzjcbl1Baln
         HUReDV6qBdFtvskw3j0pa+moxLcdHDapSMZ1sE6A8ezyzE2wASadOssq8LmQl23YTh03
         Th+qkA3ipU8T0FsleCbXwp0rdz3vmMyJmLsUUacjAvcJxxjjmcC7R+PlfvdXvdxWZryz
         bQYhn4KpduAQb4byfwYcr3h/GLRggYvXrlATgG5gdtOmwhEQhvCcVw5tBnFKBK2cRM5i
         kMCw==
X-Gm-Message-State: AC+VfDzdVxeNIlbD+F2miEffeUl/O8Ns5WUTqPA8NNDE9telsZ09PlvE
	JYUPlSbtWrDH+5l4cft38LA=
X-Google-Smtp-Source: ACHHUZ6K70yA+OBkLKHFCpUXxcpCmFokikhoFYGQNh5YA9PwYcrek2cE5R2DDf5tTUlQHMfaHLVXeA==
X-Received: by 2002:a05:6214:ca4:b0:5f1:6c0a:1df6 with SMTP id s4-20020a0562140ca400b005f16c0a1df6mr6588021qvs.37.1682645415949;
        Thu, 27 Apr 2023 18:30:15 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id b9-20020a0ccd09000000b005e5b2c560d0sm5998253qvm.7.2023.04.27.18.30.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 18:30:15 -0700 (PDT)
Message-ID: <deb40247-34a6-a7a7-af1d-306252c13e56@gmail.com>
Date: Thu, 27 Apr 2023 21:30:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: JORGE GONZALEZ ORELLANA <jorge.gonzalez.o@mail.pucv.cl>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAFFpLrECHikVQ-KE=y1Z4mVhs6y+prmqtBdR6WJcbuae5553Mg@mail.gmail.com>
 <a0f6365f-2c89-f12e-bc3b-92dfbee348ee@gmail.com>
 <CAFFpLrFBT+WhWKfxivM_a9RjW7g9WhDK2Hq9vJVMRXxZJWwSaw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFFpLrFBT+WhWKfxivM_a9RjW7g9WhDK2Hq9vJVMRXxZJWwSaw@mail.gmail.com>
Message-ID-Hash: 7WNSZ3KPCEYCAON4LZOC5ZDZISAW5WZV
X-Message-ID-Hash: 7WNSZ3KPCEYCAON4LZOC5ZDZISAW5WZV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: static ip on E312 not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7WNSZ3KPCEYCAON4LZOC5ZDZISAW5WZV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDQvMjAyMyAxNDoxMiwgSk9SR0UgR09OWkFMRVogT1JFTExBTkEgd3JvdGU6DQo+IGV0
aDAubmV0d29yayDCoHNmcDAubmV0d29yayDCoCDCoHNmcDBfMi5uZXR3b3JrIMKgc2ZwMS5uZXR3
b3JrIMKgIA0KPiDCoHNmcDFfMi5uZXR3b3JrDQo+IGludDAubmV0d29yayDCoHNmcDBfMS5uZXR3
b3JrIMKgc2ZwMF8zLm5ldHdvcmsgwqBzZnAxXzEubmV0d29yayANCj4gwqBzZnAxXzMubmV0d29y
aw0KPg0KSSBmb2xsb3dlZCB0aGUgZ3VpZGUgaGVyZToNCg0KaHR0cHM6Ly93aWtpLmFyY2hsaW51
eC5vcmcvdGl0bGUvc3lzdGVtZC1uZXR3b3JrZA0KDQpTaW5jZSB0aGUgRTMxeCBzZXJpZXMgdXNl
IHN5c3RlbWQtbmV0d29ya2QNCg0KVGhlIGNvbmZpZyBmaWxlcyBhcmUgdW5kZXIgL2RhdGEvbmV0
d29yaywgYnV0IG90aGVyIHRoYW4gdGhhdCwgaXQgDQpmb2xsb3dzIHN5c3RlbWQtbmV0d29ya2QN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
