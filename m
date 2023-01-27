Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA3267EE30
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 20:35:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07D3C38445F
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 14:35:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674848154; bh=6mdve25Aiq4xHAA/rQjgSxYPu3R7bgMzjwGPobZAv+A=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=mPKwZpb1kOLrYJvdOkDs2c8dmQDIpJdQlGuQArtW5fCqozNNUwo+eXDMJCLwOoWy5
	 bqHZLhhZ3c4WgEzqGBj/lydTSeGPEzYeORB5KpWT1YVjKDckWclnoctu++W0JdaZVO
	 13K876Z1U335H43FOTJVNJ4fnxsMrHjj7tZxQ7BXArn8gGTZptaore1o/bsa9u5kXG
	 1f5u1If7JKA73Z/CgmaYlLRqIp/5lx2KqdMC+2O8jNOL0hIX/kwLpy8S4Bjv/6Egb/
	 irxljRT1lx4FlWAeRIKFgUcPsKrOdizMprk1fKspdcbMKIgIsNVSkx57zq8y7BIczN
	 G79sNal4NfJjw==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 2E3903842EE
	for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 14:35:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gIRUBwGr";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id ll10so3445338qvb.6
        for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 11:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lsu0VHq5rVES7c2M5LbukJ+2euuMTL0+DLZywqolNfs=;
        b=gIRUBwGr3pcoTdAOk4DgPs+uAl6GMQWk7vKwphtbf1a8ddHED/Kt9tL9pLApLndE6v
         3++tiTT1ppCRx9h0X5Ryawt0stmd5+oT3u+LTe1AtLhNZ6DlB/Hq833q2JuFEx0bo7Hr
         5IqSG6Xy+eMfGLS2gocFPmgFo+4sI8/0n4XSDLR879SME/I/XGVK127kdVwbuTATVK19
         nz5Ca4OYlSHxd2/xI9UeQ/sTGP/LlmF38VzfQ5GMCytGt8fUfvq6MOUAox9pJb/dy69Z
         OFt3iTw0EqRUkx63v8AEBnxDI46CYqpKc/egrFcXst7GQDjAKLSUIbWymXV9dGz12Zvu
         jicw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lsu0VHq5rVES7c2M5LbukJ+2euuMTL0+DLZywqolNfs=;
        b=B19IBlZa4pUALGGDCk0tBJIw29mfD+fnI+hAcmOmO4J/Y65Tr1wFZbKd660i2oBAKx
         9pABEj7SU2AoPgwBS3whvqDkX28OQ241u4CS1HQYOX9pAEAmjGsFt/JU2Mz78sQOKdqq
         /lIqNZxnjTRV5DxDO7H+QxYOn0VTlu2WDpLWGXsYgXOWDv2TL5bJxl3OMvxkldIMJHIE
         XkBzpzvv3TPuLH2kafZbEDMrT71SM576WVgv6I3SnHpuxU1Y5HEdSbBKPjj4hNHD8L/l
         YsUi5n1OuDboOs5ALdjAiIWbkWI+lCGuAxe0JWu86MHyP803ZEKb6Rh3uubVOYNith/v
         J3NQ==
X-Gm-Message-State: AFqh2kqCTl4gL2ez+vxjjpUyVdOZx2I+8imnhqxZ0H6+cDGYdhz9A+Pm
	WS8MsBIWGPp/C83cu/85sLk=
X-Google-Smtp-Source: AMrXdXt8cn8/E+YBvTBlzE85EG5gr2KONZNLbQpo6U6JyjyBVMA3WJxg1KAZrMYsdpKP8/QwqVwydQ==
X-Received: by 2002:a05:6214:802:b0:4c7:595c:9940 with SMTP id df2-20020a056214080200b004c7595c9940mr58840174qvb.51.1674848146468;
        Fri, 27 Jan 2023 11:35:46 -0800 (PST)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id oq37-20020a05620a612500b0070d11191e91sm3397569qkn.44.2023.01.27.11.35.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 11:35:46 -0800 (PST)
Message-ID: <4ebd03bb-6baf-1e11-861f-f8b19979b8f4@gmail.com>
Date: Fri, 27 Jan 2023 14:35:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Mark-Jan Bastian <markjan@xs4all.nl>
References: <Y9Lxt1qeGzi9rym+@vm01308.protagio.nl>
 <b276bfdb-c59e-bb9f-92b1-c7ab94ad67da@gmail.com>
 <Y9NmFYlarlrd8xE/@vm01308.protagio.nl>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Y9NmFYlarlrd8xE/@vm01308.protagio.nl>
Message-ID-Hash: CGV4JLDVKHRC4OVPDASWAO4ALGS5H4QJ
X-Message-ID-Hash: CGV4JLDVKHRC4OVPDASWAO4ALGS5H4QJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UBX-160 LO filtering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CGV4JLDVKHRC4OVPDASWAO4ALGS5H4QJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDEvMjAyMyAwMDo1MCwgTWFyay1KYW4gQmFzdGlhbiB3cm90ZToNCj4NCj4gV2hlbiBn
ZW5lcmF0aW5nIGEgY29tcGxleCArNzQgTUh6IGFuZCAtNzMgTUh6IHNpbmV3YXZlIHNpZ25hbCBh
bmQgYWRkaW5nIHRoZW0sDQo+IEkgc2VlIDEgTUh6IHNwdXIgYWJvdXQgLTMwIGRCIEAgLTc0IE1I
eiwgaXJyZXNwZWN0aXZlIG9mIExPIGZyZXF1ZW5jeS4gVGh1cyB0aGUNCj4gc3B1ciBtaWdodCBj
YXVzZWQgYnkgKHJlbWFpbmluZykgbm9ubGluZWFyaXR5IGluIHRoZSBtaXhlciBvciB0aGUgc3Vi
c2VxdWVudCBzdGFnZXMuDQo+DQo+IEkgd291bGQgbGlrZSB0byBjb250cm9sIHRoZSAtMzAgZEIg
c3B1ciB0byBhIGxvd2VyIHZhbHVlLCBvciBhdCBsZWFzdCBmaW5kIG91dA0KPiB3aGF0IHRoZSBz
b3VyY2Ugb2YgdGhpcyBzcHVyIGlzLg0KPiBOZXh0IHRoaW5nIGNvdWxkIGJlIHRoZSBEQUMsIHdo
aWNoIHN1cHBvcnRzIHJhdGVzIHVwIHRvIDE2MDAgTVNQUywgYnV0IGlzIG9ubHkgdXNlZCBhdA0K
PiAyMDAgTVNQUy4gUGVyaGFwcyB0aGVyZSBpcyBhIHdheSB0byBtb2RpZnkgdGhlIHdhdmVmb3Jt
IGluIHRoaXMgc3RlcCwgc2ltaWxhciBpbg0KPiB0aGUgd2F5IGRpZ2l0YWwgcHJlZGlzdG9ydGlv
biBjYW4gaGVscCBpbXByb3ZlIHNwZWN0cmFsIG91dHB1dCBwdXJpdHk/DQo+DQo+IE1hcmstSmFu
DQo+DQo+DQpEb2VzIGl0IG1hdHRlciB3aGF0IHlvdXIgYmFzZWJhbmQgbWFnbml0dWRlIGlzP8Kg
IFdoYXQgYWJvdXQgUkYgZ2FpbiBzZXR0aW5nPw0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
