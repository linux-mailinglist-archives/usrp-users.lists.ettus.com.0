Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C45A40568
	for <lists+usrp-users@lfdr.de>; Sat, 22 Feb 2025 05:12:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 52D21385AD1
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 23:12:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740197564; bh=NXqjkAPaEQlyI6brRUSGipLbGZtP0Gqi8DAiNU1b/+c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LQsLI9aiwSnpUNtSm4BYcWterll3hFq9hC33SUx8cvEM3motf68MPuZGNARHJPUfQ
	 294dTHDSgmO6AD39wP2lJPvyOEKaakGElGig5givwKg0G6Md8EWoWm3dKRqknT8vYP
	 8LaOrfZElCtJSw2wYD7Xpuz8ywgWbLNWpU2gYtfZgVORIP71VciYmD/RZ+Lj7zC+tm
	 Vwcpyu5vSVCf6XHYOpahzlnpcYiSucnEAw8txddsJlG2jJInP/j4aTOMFmGYKZff3R
	 n3tCmpxpIUfCoY9ekBJvqce+2wzsN6qR66bhcA7G3sk3fqzf63zaE9+zDVcvUghxJV
	 RMgdI//sKGoCw==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 13B5E385604
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 23:11:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T44KmgK+";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7c0a26b1c67so317448085a.3
        for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 20:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740197513; x=1740802313; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8kbuTitpvu287E/L4/jH211VAzIt5G8pLzgA+08G4G0=;
        b=T44KmgK+qbKSLJYADS+xTc9akEj2n+YjpsP7nj/OB4hlKOORpWnk7dwk22fxXKdNnG
         DI7FjFRg7bUw9oAEIVY2Emrwg+e69WyWFNFKEW/+gfbL34I8RRZQeLCq9Pt6P2aXJReR
         /1H9qKy4rqT/KsY+8IqKUG3j5OlBVysY4I9jIBMpHap8uT2moGJ57rDHI6spfcHfN3Ma
         H8CE1Sohvuz4hiO1fh5gqfIr3MNsekW24qaC+a6sEBpLPov2oiXI4oMuOpDg79coHG4p
         qHBOpr4OQRqpDn2fp9B5dLTmTeW3h4BPc4Cuv+MiDkYnC30n2EaiVu+refh77Y5yR39y
         cOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740197513; x=1740802313;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8kbuTitpvu287E/L4/jH211VAzIt5G8pLzgA+08G4G0=;
        b=bLMbz0XOgH7D53YnkhYoHu/krX1bVuo2wKz4wYeEh5WVIAY9r9KJspo8hGFXQZqent
         R4IxzjQYpFEYde1miGTWeFRj6AZLgnC29reTr3/+I5eicIhmGf8lBpPVYv9db62lfcAL
         fmTYomOyVtapr76n2cs8xOzZeyFZlr9veYDOsyblf1b+knvf5IFArMLoH9uRsgq0L5N3
         DYFpGpNAGIi7tp4Jr8DNi8nSKEmuYZjdgQji0GQ2Cl+f7zkpbzfySjOWU8UdycGW9mUt
         lbg+/0rDB9l+Eh7SWY/2FRsXtXhZXuN0DSKRM1y9zSor7pVrbYpgfdRIIPYzXZfeKqmc
         xTXw==
X-Gm-Message-State: AOJu0YzojHHfAacDwadfvDsVDMJFHQkOGJBccBdk1nvBw5Fzvj4cIecX
	G6GW0zwWylP59+fHO55gQbmJy2iEqYa4JFtRE2KoXxunWUFbV8UYP2lOuLaO
X-Gm-Gg: ASbGncvmnSGeMZ1KqSlIU4QwrdOS3l1JRkFXCsdnLq5tFptXalHEL8kM2QPnxH2a5S+
	UAHwLk7cnUuEdLAn4INbs67zsHX27r2/BRxyNoGbqqHim1RV4K4lfni2SL5OqHzr8JxVgegneZ2
	tXlcKZq8Iz87TcMD8SmrL/CnJAStLMQ4G9klD3sU74QVKQ3iIZbKqezGqgwAKjI4EfoiLw7P+W4
	W6Uop1ZI5DN6eitYFjSMSyJsThfjYWTzRu3QZSiUxpQFA+/GzU2SBwVritsLRSaV0Kyv15qiRGg
	+O2gdAPnHrojLqM1bROJ7YiLoaunyI5ZIWed946isWASx5VbKi/c5KXpinMIaoo2VfozIRzDm+7
	ss/dJTfTZWIPU+U3Vht9JUbpK
X-Google-Smtp-Source: AGHT+IFBSam6seKvjX0M8jCy97W0ECXb5BeBrSXRX41bfTrY3OiX3AOx4xbr38/biim8DujR6YuC/A==
X-Received: by 2002:a05:620a:608c:b0:7c0:bb3f:e28b with SMTP id af79cd13be357-7c0ceef8b91mr851380385a.23.1740197512667;
        Fri, 21 Feb 2025 20:11:52 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c09feb13f3sm690675085a.2.2025.02.21.20.11.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 20:11:51 -0800 (PST)
Message-ID: <756c5135-0f06-4085-8bbb-ac5793b96e21@gmail.com>
Date: Fri, 21 Feb 2025 23:11:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
Message-ID-Hash: YG5UCXLWIE66VZDN5C6R6HSRBBBJZIMS
X-Message-ID-Hash: YG5UCXLWIE66VZDN5C6R6HSRBBBJZIMS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : GPIO in USRP B205Mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YG5UCXLWIE66VZDN5C6R6HSRBBBJZIMS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjEvMDIvMjAyNSAyMzowNSwga2F2aW5yYWpAYXRpbmRyaXlhLmNvLmluIHdyb3RlOg0KPiBI
aSwNCj4gwqDCoCBJbiBVU1JQIEIyMDVtaW5pLWkgSSBhbSBhYmxlIHRvIGFjY2VzcyB0aGUgR1BJ
TyBQaW4uIEkgaGF2ZSB0byANCj4gY3JlYXRlIGEgUHVsc2UgaW4gdGhlIEdQSU8gcGluLiBJIHdh
bnQgdG8gbWFrZSBoaWdoIHRoZSBncGlvIHBpbiBmb3IgDQo+IDFtaWNyb3NlY29uZCBhbmQgbG93
IGZvciA5OTltaWNyb3NlY29uZHMuIEhvdyB0byBhY2hpZXZlIHRoaXMgdGltaW5ncyANCj4gdGhy
b3VnaCBjb2RpbmcuIENhbiB5b3UgZ2l2ZSBtZSB0aGUgc29sdXRpb24gZm9yIHRoaXM/DQo+DQo+
IMKgwqAgSW4gY29kaW5nIGFmdGVyIG1ha2luZyBoaWdoIEkgYW0gZ2l2aW5nIHVzbGVlcCgxKSBm
dW5jdGlvbiBidXQgd2hlbiANCj4gSSBhbSBjaGVjayBpbiB0aGUgb3NjaWxsb3Njb3BlIGl0IGlz
IHNob3dpbmcgNjRtaWNyb3NlY29uZHMuIEhvdz8NCj4NCj4NCkJlY2F1c2UgYW4gYXBwbGljYXRp
b24tbGFuZCBwcm9ncmFtIGV4ZWN1dGluZyBvbiBhbiBvcmRpbmFyeSANCmdlbmVyYWwtcHVycG9z
ZSBvcGVyYXRpbmcgc3lzdGVtIGlzIHVubGlrZWx5IHRvIGJlIGFibGUgdG8NCiDCoCBhY2hpZXZl
IHJlcGVhdGFibGUsIDF1c2VjLXNjYWxlIHRpbWluZy7CoCBUaGlzIGhhcyBub3RoaW5nIHRvIGRv
LCBwZXIgDQpzZSwgd2l0aCBVSEQgb3IgVVNSUHMsIGJ1dCByYXRoZXIsIHRvIHVuZGVyc3RhbmRp
bmcNCiDCoCBob3cgYXBwbGljYXRpb25zIGV4ZWN1dGUgaW4gYSBnZW5lcmFsLXB1cnBvc2Ugb3Bl
cmF0aW5nIHN5c3RlbSB0aGF0IA0KaXNuJ3QgcnV0aGxlc3NseSBvcHRpbWl6ZWQgZm9yICJoYXJk
IiByZWFsLXRpbWUgdGFza3MuDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQo=
