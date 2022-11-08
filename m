Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB516216EE
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 15:40:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0FFD3813E4
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 09:40:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667918407; bh=1vIaDURtsIDwrBnX0hcLigqNo2UC3U8PwrE5C3opuhI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=00SWtjF2X2YQ7tA6LyedZoKvhUl7bYvuaHGNzu+Gk6c4YGLati3devCS5LmnqYUeT
	 pbq80m7KbP7CUHhqxaLX/Ks4qwt0KL2U1wQzyfzExa6B1odJxQMFvwkVlRNj/D8UZQ
	 AQPqki7+MrMcB72uoyvyVQwwwJ10xhbHQtTyqqEWOqjggjM+tm3r5Jhsb/ThjW17N0
	 1VPWJxFJhIBzS3NbAcZmsNln5D0AnUMCQva52fYFhMfSHtQuIGfSfNoWzA7e3M2fkO
	 6CekUoMNB9uC9MEj2snC2rto7aHz5dlb/Y3MC5WRTs27daUGavsK10DgBGPdHmCCK6
	 gOMm7Wpu+M7Nw==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id BB014380937
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 09:39:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="8WAySCEe";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id v17so22793747edc.8
        for <usrp-users@lists.ettus.com>; Tue, 08 Nov 2022 06:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E1QlpoV9KLvQdfD30z8k8OrsgHSa2gPNLOjCDwcIe5Y=;
        b=8WAySCEeINk8L/esj+j7bEj++kI+dHe2loz1mQY5c3eEAWwchP9fpglBdfNXdmB32n
         cMsU1UD4qoTj9RXsLGsXSsyGq9nLQO5MpY38cx1Lg/C5FKwt4UfFNSzz5pHfdSOPlgyP
         KocTbdoo6kY7uT1RNl3r0ni/UPggnoSJj2MMeZ7HB8tyaAxU0DlVO3zT0nj/YVBYFWPQ
         BSAKCFwUXjQCfZnzS9C1uO8puBokyf7cOZZBbpxMrc20/zR+sQem3Jdwpc4715gX3ppt
         +EEBlnvBwHlYJOwRdQDlZ72DrGcJFeOXRRr6+AxJyI4r7w4kS4iKD/mVPn1DeZ21jAyC
         sc1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E1QlpoV9KLvQdfD30z8k8OrsgHSa2gPNLOjCDwcIe5Y=;
        b=L3zQvsbGNilVLmaSxiYOoHGvRmzLBLA6eMyK+RlUpOZ2oDzCYWIMNI1TT8rVzib/nN
         ECMfp/ZaS7gIAEn+p2863/utq3pgFVpaer5+bKM6SMYsvjoEUCHay8IxQl4GHL9paO48
         sfRZVFgWkWAG02OaWnwYe+uSe7+c5pU/Xmwp4DboZkYg9omRSj4rLeaWbaHlEio/0QL1
         atdOF7PEYJD+ldDF8aWY3Zm4MetVm3ITnKCOn4Dui7BIIYE87e/BZ9tHtxv0tqSSeDLN
         ZEFSXwBPzX4Gm3nV9F1yp/J5zIRFyfUGAXXOGNTUDHRlvd68fIW971z7NzwaT8skudqc
         +Rlw==
X-Gm-Message-State: ACrzQf175u3LJzw9jD7iWX6w1Gaor8LlKphYVt+P70479o0oPad03P3P
	aaklgh2STvBmIM08lmizKI0WkIIj/8c9SKhF
X-Google-Smtp-Source: AMsMyM6xqtYFjo2uAi115TZ7MDLyFASsp8MrfkC5pQxXw07xIimNcMKgi0Zh+FQCvqkhmyTkLdeE/Q==
X-Received: by 2002:a05:6402:3546:b0:461:e63f:e870 with SMTP id f6-20020a056402354600b00461e63fe870mr54094459edd.405.1667918349424;
        Tue, 08 Nov 2022 06:39:09 -0800 (PST)
Received: from ?IPV6:2001:9e8:3843:4500:5bc8:3cc3:e10b:748e? ([2001:9e8:3843:4500:5bc8:3cc3:e10b:748e])
        by smtp.gmail.com with ESMTPSA id j2-20020a17090623e200b0078d957e65b6sm4689254ejg.23.2022.11.08.06.39.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 06:39:08 -0800 (PST)
Message-ID: <d184d963-5823-d7a2-5647-e356f18da2c6@ettus.com>
Date: Tue, 8 Nov 2022 15:39:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <gCLNgIlQBjAUGbws0FKp9VltkGQ8ONWE9hm1Zbajjc@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <gCLNgIlQBjAUGbws0FKp9VltkGQ8ONWE9hm1Zbajjc@lists.ettus.com>
Message-ID-Hash: ZL5NDUWBGZPQNIMJ2IZAXLRS4MPGR5VC
X-Message-ID-Hash: ZL5NDUWBGZPQNIMJ2IZAXLRS4MPGR5VC
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 undetectable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZL5NDUWBGZPQNIMJ2IZAXLRS4MPGR5VC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VG8gd2hpY2ggYWRkcmVzcyBhbmQgc3VibmV0IGRvIHlvdSBjb25maWd1cmUgaXQgaW4gdGhlIHV0
aWxpdHk/DQoNCkJlc3QgcmVnYXJkcywNCk1hcmN1cw0KDQpPbiAwOC4xMS4yMiAxNDozOSwgYWxp
Lm1haGJhc0BicnVuZWwuYWMudWsgd3JvdGU6DQoNCj4gRGVhciBNYXJjdXMsDQo+DQo+DQo+IFVQ
REFURQ0KPg0KPg0KPiBJIGp1c3QgZGlkIHdoYXQgeW91IHRvbGQgbWUuIGl0IGlzIGRldGVjdGVk
IHdoZW4gSSB1c2UgdGhlIHNhZmUgbW9kZS4gSSBjaGFuZ2VkIHRoZSBJUCANCj4gYWRkcmVzcyBi
eSB1c2luZyBOSS1VU1JQIENvbmZpZ3VyYXRpb24gVXRpbGl0eS4gQWx0aG91Z2ggaXQgdGVsbHMg
bWUgdGhhdCBJUCBoYXMgYmVlbiANCj4gdXBkYXRlZCwgSSBoYXZlIHRoZSBzYW1lIGlzc3VlIHdo
ZW4gSSBkb250IHVzZSB0aGUgc2FmZSBtb2RlLg0KPg0KPiBJdCBpcyBvbmx5IGRldGVjdGFibGUg
b24gdGhlIHNhZmUgbW9kZS4NCj4NCj4NCj4gYnkgdGhlIHdheSwgaXQgc2hvd3MgbWUg4oCYdXBk
YXRlIG5lZWRlZOKAmSBvbiB0aGUgaW1hZ2Ugc3RhdHVzIC0gSU4tVVNSUCBDb25maWd1cmF0aW9u
IA0KPiBVdGlsaXR5Lg0KPg0KPg0KPiBUaGFuayB5b3UgYWdhaW4NCj4NCj4NCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
