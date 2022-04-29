Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E585149AA
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 14:39:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18D653847E5
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 08:39:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651235993; bh=nibV9SullUFkin/R6hfmhIZehAYu3Dn/lHGGduoRzCw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ojGGft3a+OIZwzEIxtUPr7XimyGX3CELvRoUkrV6pFRjl41/KqjVZ7KbcyAibFBNi
	 +T5RsSYs7dantEx71NuKmaeq3WVobiwGwINS4Jr6HQsmXoJ1HC7BBnpia+dmZClq4/
	 irPOgq8/PnnDW5dbH85dJxv3+i3KA1NopV8PyoUWXwnbVv72G7CU24GdOCVcdF6pvU
	 m6PgzFelARiGK2hJBISYVsLO60NV6zHnWlp2+nu778bJY1v6auh+QYx3YV9eYEP7qp
	 8cdXYv2WSlgVG/+GWW29T6xdRyHWyPvoW1o5P9Y4DMbofJ3eLTJL0EtZsdXGHvKxLN
	 Rl0IW8dIK2P4A==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 00B563847E0
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 08:38:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bvrTdGN9";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id b17so5211608qvf.12
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 05:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=+kGmaKCuBEmc5ga+kaKHdjkEwHgtZsMN8VqBvTaoxKM=;
        b=bvrTdGN9U3+SKZD7Hkq2DxEV2VcQQnYV2AmRlh6gbCPZu4KJSFHgx/FfmNxxclldpJ
         8w5WjJEm4JOxQAej8rN7TV7kb4CQgMlHJnru8tkD+TKRNi2v5I7cjYhXpTrzIbIDcbiW
         O4CHaYEo9RIpXubkhqVjg1Rl4bbylpY2G1o9XeZ3hCnGjGU+r5DYUmetOfmDQzluEzRi
         T6mEiT4morRcyS1MeLm/82o2MWdxF4BBT2z432DP1k8fF4d2F9g26oXKTmZ+LWuzrK0o
         eH0ym2LSBkySh/eMchaKYY3FMpH5yuBVBaei35ytaJbM/bVkma7boJ6d/radf7MUu0Gt
         Misg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+kGmaKCuBEmc5ga+kaKHdjkEwHgtZsMN8VqBvTaoxKM=;
        b=dLwyCn0SOL9/hfnEwew83NkHkSVI5R6bKL/6aQqllvXBKhZqwGeudB0TqBlsC6vLco
         alirbCb5Y5bZk/J1/DtVfcJkchaiwSh2/mmfFUCWUFwaPQKxwMy1lBJvaXBCf1I4AybN
         v1VllHSp3bfJfs9osaiO2d/AUl9F5PMrDZlW1AH+kiMLrpWt9lk3++KIOQF2kcF8V/KW
         j4CCK1iaz6TfXGVPSARRGgojVHkB9j/584Shms54jx+oG5anSkglQznufZKad6Oh2MA1
         rNGBc3zf7Y3Qeekq4zgol23MpDrRzUH8n4NbOLx/p5XrtrI+4MoD5FYCo7/AR90zO9Ld
         OXQA==
X-Gm-Message-State: AOAM532wmnHE4+cdzvcNCbIO3+r6oxZNPjTr1h2U25Zb2lP9z5pbNLKh
	8tOsmDpBjvaTzUeWovo3Svr6PZZlb2k=
X-Google-Smtp-Source: ABdhPJy+Y1wLiRm0Avs3OW4sg8NrNcA/eQsasIr3hIYd/Rm1jJxUye+DXKwJnh5wC6A/k9xUO/BJoQ==
X-Received: by 2002:a05:6214:19cc:b0:458:bd2:19a8 with SMTP id j12-20020a05621419cc00b004580bd219a8mr4360950qvc.98.1651235928284;
        Fri, 29 Apr 2022 05:38:48 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id h1-20020a05620a244100b0069f4fe763aasm1601244qkn.78.2022.04.29.05.38.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 05:38:47 -0700 (PDT)
Message-ID: <50feb07d-a18b-0a53-91e6-e86c5a032ecc@gmail.com>
Date: Fri, 29 Apr 2022 08:38:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAAxXO2GOytYDEsqbSZXCaM-OXRpUco7SDxeKBkq7e5Z3RHOYPA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2GOytYDEsqbSZXCaM-OXRpUco7SDxeKBkq7e5Z3RHOYPA@mail.gmail.com>
Message-ID-Hash: 3GUG45YWPW33TFPHMQGL4XAYA4FAAL2W
X-Message-ID-Hash: 3GUG45YWPW33TFPHMQGL4XAYA4FAAL2W
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transport properties
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3GUG45YWPW33TFPHMQGL4XAYA4FAAL2W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNC0yOSAwMzo1MCwgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+IEhpLA0KPg0KPiB1
aGRfdXNycF9wcm9iZSByZXBvcnRzIHRoYXQgSSBzaG91bGQgcmFpc2UgbXkgc2VuZF9mcmFtZV9z
aXplICYNCj4gcmVjdl9mcmFtZV9zaXplIGFyZ3VtZW50cy4NCj4gVVNSUCBNYW51YWwsIHRyYW5z
cG9ydCBub3RlcywgcmVwb3J0IHRvIGNoYW5nZSB0aGVtIGluIGRldmljZSBvcg0KPiBzdHJlYW0g
YXJndW1lbnRzLg0KPiBBbnlvbmUga25vd3MgaG93IHRvIGNoYW5nZSB0aGVzZSBzZXR0aW5ncyBp
biB0aGUgTklDPw0KPiBJIGhhdmUgYSAxMCBHYiBNTE5YIE5JQyBhbmQganVzdCB1cGdyYWRlZCBt
eSBVYnVudHUgZnJvbSAxNC4wNCB0bw0KPiAyMC4wNC4gSSBhbSBwcmV0dHkgc3VyZSBJIGhhZCBz
b21lIG9mIHRoZXNlIG9wdGltaXphdGlvbnMgaW4gdGhlIE5JQw0KPiB1c2luZyBldGh0b29sPyBB
bnlvbmUgcmVtZW1iZXJzIHdoYXQgdGhlc2Ugb3B0aW1pemF0aW9ucyB3ZXJlPw0KPg0KPiBUSUEN
Cj4gTmlrb3MNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQ0KVGhlc2UgYXJlIGRldmljZSBhcmd1bWVudHMgLS0gcGFydCBvZiBVSEQ6
DQoNCmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3RyYW5zcG9ydC5odG1sDQoN
Cg0KTm93LCBJTiBBRERJVElPTiwgdG8gYWN0dWFsbHkgc3VwcG9ydCB0aG9zZSwgeW91ciBOSUMg
bXVzdCBoYXZlIGl0cyBNVFUgDQpjaGFuZ2VkIHRvIHN1cHBvcnQgdGhlIGxhcmdlciBmcmFtZSBz
aXplcyAtLSB5b3UgY2FuIGp1c3QgdXNlIHRoZSANCk5ldHdvcmsgZGV2aWNlIG1hbmFnZXINCiDC
oCBpbiB0aGUgR1VJIHRvIGNoYW5nZSB0aGlzLsKgwqAgTm9ybWFsbHksIHRob3VnaCwgYSAxMEdC
IE5JQyB3aWxsIGhhdmUgYSANCmxhcmdlciBNVFUgYnkgZGVmYXVsdC4NCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
