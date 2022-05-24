Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6BA531F94
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 02:09:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29C23384343
	for <lists+usrp-users@lfdr.de>; Mon, 23 May 2022 20:09:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653350980; bh=q+Z6yqyTenJ7wVks4iDTLBAwnuiIfOiXHAVO3iv8lJw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DUmVuU8CnwmX9R+OJTkPUcDi6OtJJxARGSaYQI5Wy8WOJMSGq2QZ1KhU6i0pXw9+f
	 VlhJ836LR2gGDHNyPFhTpoq+5drRIi/C0ZoI3F24DLXMVIJ95dkuNxVNKd2kVbKV3w
	 P2Tu3eFeScRtrLqgHyUO8lyAJROKYBrG5Cg5apaxHEfCggm5RA6VeW6ymWwObzKUFS
	 /sEY2hgqBm45+/Dai/cSxKE3MEqYbzahuuH/80UZIaqoygEDL53U1KbIAHfO5hSHb1
	 wGXc2oKYRvgNPajq8IwT5annsSjATbcX7jpceDUfNu1shMNzMFsvqgjgrLeO6KwFCP
	 veMBJeLJ0k35Q==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D53E384343
	for <usrp-users@lists.ettus.com>; Mon, 23 May 2022 20:08:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BItUsa3l";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id p123so3873168qke.5
        for <usrp-users@lists.ettus.com>; Mon, 23 May 2022 17:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=7H+cyYnQ41ssL9bFsVc2dlyJm2LM0EodLLZ2rIrQGAs=;
        b=BItUsa3lLKD+NcbciyngU/CA5DI5CyNmTh0SBXQNd37ekebwylB5vyy5Nw5GKH9ahz
         bq/FCtbssPK9vbDqFt08d/fSB+9HsEAQKGCugIDwSN+nHdhGFA3lgZ5bVa6nkfOQ+hC1
         nd08mBg/fppZOk+X3rrptsRylIuIV8dTjiw21ntc31T7oK5pySh/7hbDvn8O8oY0jbvU
         vsEMnyu2ZHT/G81d1eFXj9I3pVaimQXUza9l66mTqwhyOoz3+AC9nIuGNvi/Lu7o4WpK
         Q4NNZiJM1GiRPNDBaCsJc4oBFMJnIu8iagvmMmt+OKwNlbYxyb8HxYQZUk72P5R1sbAB
         JJ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7H+cyYnQ41ssL9bFsVc2dlyJm2LM0EodLLZ2rIrQGAs=;
        b=HAyTfQlwjUFzqeyFVUCb08LQyeUQCHnZtwQG9Yv1feDpzNpDC1RJ7ZhJ4kEyffYZDU
         VOD2il7W9YphstRcnziVZVxZARDFBxhNbJ+Aati65pRB3at9d0bsN1syL8Z5wSuvDF6m
         dkRyf1qhR9Z4astvXMIvpQ5meFM+CRQ6ZZTpc/53lRh9f7w6IsD1h74UGa7O5qJzV6KS
         PQImjGKuWkCg+iuRBg2dMIGRYYTKBO84Z/AfV7u/N2NlG6gi1cSsbRr5TrhQlqbLDhTD
         umd8ZRyS98VlQmdF74aH/Y+zKqSEDKMOCvnqPNiAqR867TbP3zFcodaed48KIGze12lt
         IzRw==
X-Gm-Message-State: AOAM532SUXnyIaOZRj5shFmRwrFMLLQYMEdDp7Jaw8tWwA8emlgM92MY
	FDQTFtM5aN2elKfNypPNa4QgteGMRss=
X-Google-Smtp-Source: ABdhPJyF7jJcMtrLvLX9chUQQABEcHW6n0JKoAc5Je14M5IctvALiJey23s4OzW3wrVvPEMWUfuTng==
X-Received: by 2002:a37:94c2:0:b0:6a3:6562:7077 with SMTP id w185-20020a3794c2000000b006a365627077mr7937679qkd.510.1653350914328;
        Mon, 23 May 2022 17:08:34 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id s1-20020a05620a16a100b0069fc13ce23csm4967389qkj.109.2022.05.23.17.08.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 17:08:33 -0700 (PDT)
Message-ID: <fcaec8dc-d2af-254a-22f0-90be8e09cd13@gmail.com>
Date: Mon, 23 May 2022 20:08:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <HvKzjIPrreuUfG44SMIycq2AdphCt6gpAlsXc8mg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <HvKzjIPrreuUfG44SMIycq2AdphCt6gpAlsXc8mg@lists.ettus.com>
Message-ID-Hash: XWE5PCDBDHAIJVCKX6NQFWXIDIONG5PJ
X-Message-ID-Hash: XWE5PCDBDHAIJVCKX6NQFWXIDIONG5PJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed command gain changes on TwinRX + X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XWE5PCDBDHAIJVCKX6NQFWXIDIONG5PJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0yMyAyMDowNSwgUmFnaGF2IFN1YmJhcmFtYW4gdmlhIFVTUlAtdXNlcnMgd3Jv
dGU6DQo+DQo+IEhpLA0KPg0KPiBJcyBpdCBwb3NzaWJsZSB0byBzZXQgdGhlIGdhaW5zIHVzaW5n
IHRpbWVkIGNvbW1hbmRzIG9uIHRoZSBUd2luUlggb24gDQo+IGFueSB2ZXJzaW9uIG9mIFVIRD8g
VGhpcyBpcyBwb3NzaWJsZSBvbiBvdGhlciBkYXVnaHRlcmNhcmRzIGxpa2UgdGhlIA0KPiBTQlgg
YW5kIENCWC4NCj4NCj4gQmVzdCwNCj4NCj4gUmFnaGF2DQo+DQo+DQo+DQpTaG91bGQgYmUgcG9z
c2libGUsIGFsdGhvdWdoIGl0IGRlcGVuZHMgYSBiaXQgb24gd2hhdCB5b3VyIHRvdGFsIA0KY29t
bWFuZC1kZXB0aCB3b3VsZCBiZSBmb3Igc2V0dGluZyBib3RoIGZyZXF1ZW5jeSBhbmQgZ2FpbiBh
dCB0aGUgc2FtZSB0aW1lLg0KIMKgIEVhY2ggcmVnaXN0ZXIgdHJhbnNhY3Rpb24gb2NjdXBpZXMg
YSAic2xvdCIgaW4gdGhlIHRpbWVkLWNvbW1hbmQgDQpxdWV1ZS7CoCBJIGRvbid0IGtub3cgb2Zm
IHRoZSB0b3Agb2YgbXkgaGVhZCBob3cgY29tcGxleCBnYWluLXNldHRpbmcgaXMNCiDCoCBvbiB0
aGUgVHdpblJYLCBzbyBpZiB5b3UncmUgc2V0dGluZyBnYWluIGFuZCBmcmVxdWVuY3kgYXQgdGhl
IHNhbWUgDQp0aW1lLCB5b3UgbWF5IHJ1biBvdXQgb2Ygc2xvdHMuDQoNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
