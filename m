Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CDA782CC0
	for <lists+usrp-users@lfdr.de>; Mon, 21 Aug 2023 16:54:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E8EF380A5D
	for <lists+usrp-users@lfdr.de>; Mon, 21 Aug 2023 10:54:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692629672; bh=tOCO4uQKhOJj6Vn19Vm8jyJ6AbdMRN9lblrnyfGjTn4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wgVhnZOQxH4e6TT2TfJzq9FosOA2FdlzZcZL1BYuYDZSen3WLb+M7GRMBlvFSCmWG
	 kfgPSm53tm/PBdPDN38etDDM1sOkHXUQc/nlF/3sGYPU77mesw/Q5bWEPrLZ5l5/6c
	 TZREKwUmqW5NsDWWlOaZrft1UxxghWBjZ+mU96FqTWis0ApP4DQDdA9JKdZkRX3fOm
	 dq7CQPgMQzI0GJlCJG5kUDXa3wrS2iIcdG7uEuOliNby81eq007ee0pMk+0FB+IPSe
	 VPpofOtGZCo0iaZtogA7IBWTkyWwqGlN56re+k3YFbgPD3mGMoWorQck7JbTN4pCDO
	 EmSDX54hbRq/w==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 98936380A5D
	for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 10:53:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GLqnm0AS";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-649c6ea6e72so21709576d6.2
        for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 07:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692629639; x=1693234439;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s5F7rHjQ6PBLtSOn4NlZbUyqdLFHdJGsG5xujCCwttE=;
        b=GLqnm0ASK23X71aGz6+vhywM0RNHR5VptfwTWqCywDT+rmFoO3tjQqMXFXUlvYrsOM
         BoG6YyX5vfbeR/vtqSd1hIRhvd9Ggfi9motiH3w65mPAXxOzc2ntmD53+HmLzBnZSCxK
         NUfnafYJvoKwGtZ9njw8WbB2XvUHmbj6tssyFq7F/oPWxqOb6CbQNIjMzIpih0xFRbR+
         7BrgTcWHFMnfYMISGu4msD1j7LZacYpYf2S0J0cEY0824jloHGAuSgdUVRvM5UP9eIXt
         stNMsQ49zD7JvKTOaWLNfQIv4S1rqHb7+etSHrkq1I82aIg5qxzkyWcGftUSim04Arql
         FSTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692629639; x=1693234439;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s5F7rHjQ6PBLtSOn4NlZbUyqdLFHdJGsG5xujCCwttE=;
        b=HxI23Zv7XWHOZ5hrQWtvm+AWE1czrBIzIAMBKDmLKq0ADr0g30Pm2Gw+YbA5i5++4a
         DXrgFadaPWJRqGsNGSavWd2OpN03wGmSZT83PYJiyZi1ifglJAuZWSuH0Zu3o4YiXi6e
         Rfkym67dBh3jDIBW7cV9UHNuoSBb7ct/SoO1vi2AI0ZKHKUaVYfk42xuY2IYE0bhRyxX
         6OlizhyNGLw8bc63GO8HhX/anpXbC+7OuEFPP9Kf0Xw20te7n5a0IHRCsAryAPzgaxxx
         ehGKjsjSW92A0FYyxQwbtm8HGCsvQzqMkVHePkVs+w9v55Bupg/tnpC7J3pzF17xygWW
         ZPCg==
X-Gm-Message-State: AOJu0YxJJPci7jhV+bHNlCsDH6EOqwojV4OhCFh7xcwthwY3Z8Dd1TWa
	Vzfa6XkG/jXkgLHPgY6vukvwgLT/Z10=
X-Google-Smtp-Source: AGHT+IEk5+IdLBjZ7cOoIwKxhhAiGxzsg+Fw5ZA3H/kBFhPn8ZHVj1WkMQ7miJfETSvNJoeGUm7Cig==
X-Received: by 2002:a0c:f1c3:0:b0:64f:4472:2773 with SMTP id u3-20020a0cf1c3000000b0064f44722773mr1824168qvl.7.1692629638795;
        Mon, 21 Aug 2023 07:53:58 -0700 (PDT)
Received: from [192.168.2.174] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id t25-20020a0cb719000000b0064a7e9ca8b2sm2959539qvd.105.2023.08.21.07.53.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 07:53:58 -0700 (PDT)
Message-ID: <2bfda6d3-da35-7cff-93f5-4d94deabffd0@gmail.com>
Date: Mon, 21 Aug 2023 10:53:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <a5fd0eff-8338-455f-a77f-418e660c9b9e@Spark>
 <1ed2d997-4b06-44a7-93ad-9c7e7641fe32@Spark>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1ed2d997-4b06-44a7-93ad-9c7e7641fe32@Spark>
Message-ID-Hash: CYGPOUFAZ723IDQGCLC5AUWEJ5YPYQDQ
X-Message-ID-Hash: CYGPOUFAZ723IDQGCLC5AUWEJ5YPYQDQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 and PCIe connection
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CYGPOUFAZ723IDQGCLC5AUWEJ5YPYQDQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjEvMDgvMjAyMyAwNzoyOSwgLiBBRVJNQU4gVFVFUlhVTiB3cm90ZToNCj4gSGkgVVNSUCB1
c2VyLA0KPg0KPiBJIGFtIHVzaW5nIFVTUlAgeDQxMCwgYW5kIHdvbmRlcmluZyBpcyB0aGVyZSBw
b3NzaWJsZSB0byB1c2UgUENJZSBmb3IgDQo+IHN0cmVhbWluZyBkYXRhIGluc3RlYWQgb2Ygc2Zw
Kz8NCj4gSWYgcG9zc2libGUsIGlzIHRoZXJlIGFueW9uZSBrbm93IGhvdyB0byBjb25uZWN0IGRl
dmljZSB0byB0aGUgaG9zdCANCj4gYW5kIHdoYXQgc2hvdWxkIGJlIHRoZSDigJxhcmdz4oCdIGZv
ciBVU1JQPw0KPg0KPiBCZXN0IHJlZ2FyZHMuDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCk15IGd1ZXNzLCBiYXNlZCBvbiBj
dXJzb3J5IGluc3BlY3Rpb24sIGlzIHRoYXQgdGhlIFBDSWUgaW50ZXJmYWNlcyBkb24ndCANCnll
dCBoYXZlIHNvZnR3YXJlIHN1cHBvcnQuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
