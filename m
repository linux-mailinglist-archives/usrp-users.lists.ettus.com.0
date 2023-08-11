Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2CC778F51
	for <lists+usrp-users@lfdr.de>; Fri, 11 Aug 2023 14:23:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2EB97383F56
	for <lists+usrp-users@lfdr.de>; Fri, 11 Aug 2023 08:23:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691756629; bh=0Zh3xfXinQpdag+MqVi2iNIyfhrx/AEa1nk+Qpb4hGk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GK54UACC3Qg70xbIisa2DzlKYFFuZT9lw2nfd41DQdRCduAxMDXY74e6pACGxftg7
	 RrHvt5b31rjbLfbUCB6/rNbD6eISLw6lS8MkUH8saIjtyJNgXEX++ALRb1YU4PqzLK
	 tJlRqtCI7F8xILARnjnL43WgPWAP2kuo+qQ3xwXZW5sNB26gK2lnDwMF8xNe96Weis
	 6WBOEv7eHixbFjeqxtk2Y5vpBC2hxAaFHWE4qpXwsBRtB1k0a10Eps3+PtdyoCTYvL
	 OGYJuH5hUApyaVoLjepc15U7HEx6AIV7pVQjjHJuOTC/T2EPNgwPk82YbBB/ehxh9b
	 dGBWbPFOMqMVQ==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 82DC3383D63
	for <usrp-users@lists.ettus.com>; Fri, 11 Aug 2023 08:23:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VCfLsunM";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-407ff54164dso12685501cf.2
        for <usrp-users@lists.ettus.com>; Fri, 11 Aug 2023 05:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691756583; x=1692361383;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oqhfLT1QSkA03JmI6sM1K2VS24zUIuHNjf9j/rTUhbI=;
        b=VCfLsunMYJBSo3nR1iNJL9uTl+8t7NaIOjYXOYPLUmDRLBV0jjgiMHEZZ4vAQ73xM0
         G3+hFqzLj2I1FCtaK9ul1wNDBwHbdUy9InDJagrocOD2fEul9oOuP7OzYoa28+Ckjtvz
         Kll5xJh+oV/CB9JtHX9wZ3FurqgdbNkqIi1KJec9ajcxElLjp8U22TFP4w/uqTC/2BtK
         FvRUHb5s/gyzBR5YfQklsjSwQUW6rAh01M6lA2ipKh+yrOsxrBWJjkUD4SaB+xLknOtp
         crJVWGn9rDysUTOwpIMudF97zLawRH7Zmp4lYBBZvGyBmpcSR+hQWNbP716qdkw/ELCX
         O/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691756583; x=1692361383;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oqhfLT1QSkA03JmI6sM1K2VS24zUIuHNjf9j/rTUhbI=;
        b=NGCU2hcesGcRk7H1MEnWYmpxBnyCT7T4fEDUixqcRGjxvZNA9UadySkCFIq6ECYvfK
         qP20ARJfxtIuZbUII39o/3wWvv/jg9s+uIjXd9ulKe+Oy4oCh3evJBqsCBmo/cs1+XpG
         1KpFerCmHSNaIUhH8WDxjtG9Ekpr1+3oI8L+IGOz+WJoKOFlu+DaT7GSSmop0sq368Rr
         P6KWJSiKpN0+DS2SRqnA9E1TjlOhxmbDK2DAFyaqsCmokA85Welcaay5dqjvPdL+EwfZ
         UDv323aw3f2CP8fx60i5kbys5D4dzq2NdchlLFDU2zaj2nAdGiIRqL6BmZ8Aooc9+uKs
         MvPA==
X-Gm-Message-State: AOJu0Yyw3/TBEBZNDJ4OgafElh2oLGXXnFUTHbytbg5LWjPlRktUjGCE
	F1aktEsEVQPnf0AhykUFPGizB+XtvC0=
X-Google-Smtp-Source: AGHT+IFe+oPhM0vF6i4Al4mc0DFDJjf5/Qap4UEvSIjw1ZGN1WEnvO55XX8BaYZJu9xQ7Ydu9fZPaw==
X-Received: by 2002:a05:622a:48a:b0:403:a91f:893d with SMTP id p10-20020a05622a048a00b00403a91f893dmr2162482qtx.26.1691756582836;
        Fri, 11 Aug 2023 05:23:02 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id k7-20020ac80747000000b0040378535dccsm1134709qth.43.2023.08.11.05.23.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Aug 2023 05:23:02 -0700 (PDT)
Message-ID: <c9eddb8a-a6b0-f821-c528-b23a6784ac32@gmail.com>
Date: Fri, 11 Aug 2023 08:23:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <R3KiwW3a8sqx9uF5CJk1fSWN7fcZ8o6mUwAJwLCqe4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <R3KiwW3a8sqx9uF5CJk1fSWN7fcZ8o6mUwAJwLCqe4@lists.ettus.com>
Message-ID-Hash: YFOT2BLPE4KTGQ3YML32UEUXAI3BKXMD
X-Message-ID-Hash: YFOT2BLPE4KTGQ3YML32UEUXAI3BKXMD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YFOT2BLPE4KTGQ3YML32UEUXAI3BKXMD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTEvMDgvMjAyMyAwMjo1MCwgZWRlbm1jbGF1Z2hsaW4xMjNAZ21haWwuY29tIHdyb3RlOg0K
Pg0KPiBIaSBNYXJjdXMsDQo+DQo+IEkgaG9wZSB5b3VyIGFyZSBkb2luZyBncmVhdCEgSSB3YXMg
d29uZGVyaW5nIGlmIHlvdSBnb3QgYSByZXNwb25zZSANCj4gZnJvbSB0aGUgcmVzcGVjdGl2ZSBn
cm91cHMgaW4gRXR0dXMvTkkgdGhhdCB5b3UgbWVudGlvbmVkPyBXaGF0IGhhdmUgDQo+IHRoZXkg
Z290IHRvIHNheT8NCj4NCj4NCj4gQ2hlZXJzLA0KPg0KPiBFZGVuLg0KPg0KRXR0dXMgUiZEIGFy
ZSBub3cgYXdhcmUgb2YgdGhlIGlzc3VlLCBidXQgSSBkb24ndCBleHBlY3QgYSBxdWljayANCnJl
c3BvbnNlLsKgIFlvdSBtYXkgYmUgYmVzdCwgYXQgdGhpcyBwb2ludCB0byByZXF1ZXN0IGFuIFJN
QQ0KIMKgIHRocm91Z2ggc3VwcG9ydEBldHR1cy5jb20NCg0KDQo+DQo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
