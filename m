Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BAA64D55E
	for <lists+usrp-users@lfdr.de>; Thu, 15 Dec 2022 03:56:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC2C2384381
	for <lists+usrp-users@lfdr.de>; Wed, 14 Dec 2022 21:56:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671072974; bh=GICpk/uaiZmZ5A8dQcaMFV5seGVOuvBDz8kOJ1QEvGg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ENy6xCVphVrelHINCqXNo6d7Wfeyg+eY8+1Pdxco2NSBh3ZjjT3SeC5TT7f3ZOVyF
	 cpX13bBk5Jwm58VkdR1OYCnjV+w+pP7pB8B5gPERMLxkVjbi5rK/JuL3PqW30R5GO3
	 y/u+rWNpt5RjTo5NWWwCTIiSZohQ0mrLX4kQYVLRY7li1qdaYr6w3htx+b3OmKLDFW
	 6tT3ZhQr04tRiuUVPRTdkKphcFmEsDxysiTnBSUiFuY2csmlFgeI+p/rmQW63k9IQf
	 +xNATc6tDOdlci4MS4FBIEpt+jy00Od6JLjjlgnD1D6/Di3EDo4C1SwC+DYKSUAair
	 IyEWCdvz6MEHg==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D8C338434F
	for <usrp-users@lists.ettus.com>; Wed, 14 Dec 2022 21:55:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BNj+NNqk";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id c14so1131804qvq.0
        for <usrp-users@lists.ettus.com>; Wed, 14 Dec 2022 18:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0YAJlN2gbAzCMNZzOY06PTCh7AjM2HC36GKintRcd3Y=;
        b=BNj+NNqkIa+cCbr5DlPqjSdJu+YKfVcVfyitiUSP/yvr5+97Cb4ZR+5pWinD51GmrD
         f7LjVM+CIwp4Yjl3PTe4x7oeSukxo3MtbXnR2g9ryH+dhxv3Kyj2R5+P02nXeHIIWK3G
         XzTyppVV8vk9+jJcrO4IHKL6yZ/cuZbvWm/78iFnc5De/0kFuhYY9HdSrab4ftuyS4PX
         1kVDnOxI2YbVKvQJzk78lv1NdlQUz6aiFNwNQtga2k7/PkKYNroKHyywZQMfyhW1+Gg1
         1o78u36ozO9IE1dvISXrv6ol384o9yjG+hl94OpL/7wWq4ucF6B550G8d6UdfWBYUSuY
         sMNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0YAJlN2gbAzCMNZzOY06PTCh7AjM2HC36GKintRcd3Y=;
        b=vi4zYF/kQji6AONs4sazhQVQ+O9b0mIo6xdUMxgU8SR7deK6YYgLgkKdmQuMg3xOIM
         oUfVmUaXQpsAFwTuY/uKCP81rj/FazWZ9BoXsq3ZAgTw0JRyA2H+Ogr+iuRBXXlsFA2T
         VeOFgI6O5+gDfFP9Y0yl+T8qsRFe1JZQze996Mla5YniAb9XtCrGZ26RMgTQpW1+7oEs
         gKiz5DzMzx5sdbWd9zhlM6ksDEPaE6PYzrUpl9rrdpicJH5qzrYipAgjS8z1GtJlqgoi
         tYKqDll7Pn4GAqXUKe/XkcBuixWFXt0t1dUnJxmiRr1mPSV6IAMZnX6mtyMS6U6XHhjV
         eVKA==
X-Gm-Message-State: ANoB5pktheRdXabjs2zU/buEXcHQ9or0/TE7aPK5v6Om/dhiiNsuZagF
	vxwqX+BClbHVZldXwhDM99izVFUaIqugIA==
X-Google-Smtp-Source: AA0mqf43bUUjoBBhX4IJw+PQAm1heWxGUKpSThSQHXQ5aWv6CwZDLc5bllcxRyzCNxNObX46yAkHCw==
X-Received: by 2002:a0c:fe49:0:b0:4c6:5908:84d4 with SMTP id u9-20020a0cfe49000000b004c6590884d4mr32642460qvs.3.1671072926703;
        Wed, 14 Dec 2022 18:55:26 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id t15-20020a05620a450f00b006f9ddaaf01esm11509753qkp.102.2022.12.14.18.55.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 18:55:26 -0800 (PST)
Message-ID: <b4fcb4c3-c6ac-1e8f-fe0b-4eed403c00c5@gmail.com>
Date: Wed, 14 Dec 2022 21:55:25 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAGHsMd_-K-COEnELpOJpHoDU9m9itjkDAS1Jp3iuLgJN_DeWDA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAGHsMd_-K-COEnELpOJpHoDU9m9itjkDAS1Jp3iuLgJN_DeWDA@mail.gmail.com>
Message-ID-Hash: 5TWCCE74T6JEPCIQMIMQEKQG4MS4B6EQ
X-Message-ID-Hash: 5TWCCE74T6JEPCIQMIMQEKQG4MS4B6EQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accidental Power-Down During Flashing of X310 FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5TWCCE74T6JEPCIQMIMQEKQG4MS4B6EQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTQvMTIvMjAyMiAyMTozNywg6JaE55Sw5oKg5qi5IHdyb3RlOg0KPiBIZWxsbyBldmVyeW9u
ZSwNCj4NCj4gSSBhY2NpZGVudGFsbHkgdHVybmVkIG9mZiBVU1JQIFgzMTAgd2hpbGUgdXBkYXRp
bmcgdGhlIEZQR0EgaW1hZ2Ugb2YgDQo+IHRoZSBVU1JQIFgzMTAgdXNpbmcgdGhlIHByb2NlZHVy
ZSBpbiB0aGUgbGluayBiZWxvdy4NCj4gQWZ0ZXIgdGhhdCwgd2hlbiBJIHR1cm5lZCBvbiB0aGUg
WDMxMCwgdGhlcmUgd2FzIG5vIHJlc3BvbnNlIHRvIHRoZSANCj4gInVzcnBfZmluZF9kZXZpY2Vz
IiBjb21tYW5kLCBhbmQgdGhlIG5ldHdvcmsgaW50ZXJmYWNlIG9uIHRoZSBQQyBzaWRlIA0KPiBj
b3VsZCBub3QgcmVjb2duaXplIHRoZSBYMzEwLg0KPiBIb3cgY2FuIEkgc29sdmUgdGhpcyBwcm9i
bGVtPw0KPiBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV91c3JwX3gzeDAuaHRt
bCN4M3gwX2dldHRpbmdfc3RhcnRlZF9mcGdhX3VwZGF0ZQ0KPg0KPiBUaGFuayB5b3UgaW4gYWR2
YW5jZS4NCj4NCj4gWXVraSBTdXN1a2lkYQ0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpUaGUgcHJvY2VkdXJlIGlzIGRlc2Ny
aWJlZCBoZXJlOg0KDQpodHRwczovL2tiLmV0dHVzLmNvbS9YMzAwL1gzMTBfRGV2aWNlX1JlY292
ZXJ5DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20K
