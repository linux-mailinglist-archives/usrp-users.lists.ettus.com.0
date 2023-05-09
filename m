Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D8C6FCA8D
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 17:51:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A0FC38459F
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 11:51:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683647491; bh=OOQyU9VyA3/QDoTHf/H6x4SY9TidysGIXSnlytkS1zA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=B78HfX9PE1IWTmKvG2WUoIvK7NMdB5sGdKQa8q0W3famAxYPZuOeiqht/qhP45Gne
	 FaQZjS+Bkd9D2PZ7f2Zwz/jLImW+spdmuDuT5u520yR8k8j1PA7zebLB7swWL5aEy2
	 H1l3CRL58r5Jl5ePddUZ0A+Y0lbXe+gMqwpZaKhM+8S1cA2CXpI0rSao8HI4+CA/Wx
	 /WumKr+L0LTJVbuTkVLYoFXpjq5Brp7C/DEaDyEysNOSwdafzImjZxECtwlj8wj3o9
	 jXUlL1z0TieO+ml/Rc094ujPUYO+hfXVHEFmg48v+WPYYPDUS03OWlDxNAGaacekaI
	 mp2U0xGUdjGRQ==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id E4671384209
	for <usrp-users@lists.ettus.com>; Tue,  9 May 2023 11:50:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gH0ZxXjP";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-3ef3ce7085bso28580971cf.2
        for <usrp-users@lists.ettus.com>; Tue, 09 May 2023 08:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683647447; x=1686239447;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LKGqgdxwXioLqSI/eIXXeezqRhpefvKocxck6Bdgm+E=;
        b=gH0ZxXjP7QpIpm0yzWxp2eV35fneDJDpIbn5raJkPL9YoVRa/RVlSO0J/QzceJg8f2
         hCytkQwQ2c2lcWlNE7ieSEcJ+4BPIoItSR4ZgaaR5HLsCi+x6w+Jdy98ceaJ0dPMPyzq
         EMbJnRAmH6pXWBAWIel+gCAXR2oHRLDodmEbK/SJQp169jGBBLXibEXQN1yONYj1FA1B
         CxwnIWfNgnmySeLdNxFuAibIbpXdJHPH5T67iqKmI3UMycZHAF2NDXw6NIouI+aUKh0v
         fwc6wJfNuKosnXaFgWootrgGbBJVHQ1Pk485hfldYudmj3XANE01DSOnMRsY4ut5gevU
         fGJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683647447; x=1686239447;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LKGqgdxwXioLqSI/eIXXeezqRhpefvKocxck6Bdgm+E=;
        b=IbsxCXSScnTenc88SuDmI5e1u2IGE9rDwRpoqkTU5bQptaVF8TGRsav4q7K9jzTCQ0
         rfpbGssA1L2w9NbbmlhLURbG3dnTy2fxfDj5UyBY3RthMia9Wv+RLvrM552UOVH06fqA
         PaAZXg5R235cupOze0E5q+bobCHk5W+x27iVUYmjlr+uIT8BY75gkGtVv1q5jYnNVOnc
         GAtpyxjNTB2eJ6UVFOwwzkxhxZM3HDpBrFzlQKbz9Erhm5CfSS1OA9JOkVbLXZSLm4Cv
         /paRWsO13RwTC3nbuES6NaAOGmb9AGIqhzUIErbUOAju1CZhIlBbA0e0c2n0G8oxFHkM
         +A+w==
X-Gm-Message-State: AC+VfDxnOIQ/NFpB8ugmZtU4jKaFPhsLgyrdLvxK8lCGckmX1qsDhvzl
	i0aWLPMBzmYZHW5Y88WSYzWnBSZrGok=
X-Google-Smtp-Source: ACHHUZ4ENv7MplgG9adhqz/c592ygvXGb9XvXT2TkuakgVgXYVRsjMzZAPrNpUvv8SOwmkN5+1s2zQ==
X-Received: by 2002:ac8:58d2:0:b0:3f1:f848:7e49 with SMTP id u18-20020ac858d2000000b003f1f8487e49mr20338816qta.60.1683647447096;
        Tue, 09 May 2023 08:50:47 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id d1-20020a05620a166100b007577d3d1f65sm1561228qko.7.2023.05.09.08.50.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 08:50:46 -0700 (PDT)
Message-ID: <756d6dca-4cd6-cb5e-9d91-24ff02607ba7@gmail.com>
Date: Tue, 9 May 2023 11:50:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: usrp-users@lists.ettus.com
References: <CAKacFEkkeKv68MSZqrVKPPzn5QLx4UL6zjDq0zBdn-1Wvz44hQ@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAKacFEkkeKv68MSZqrVKPPzn5QLx4UL6zjDq0zBdn-1Wvz44hQ@mail.gmail.com>
Message-ID-Hash: BY2T4VUAOKZAZW7AHBEJUVO2V2BH5I6R
X-Message-ID-Hash: BY2T4VUAOKZAZW7AHBEJUVO2V2BH5I6R
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: time division duplexing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BY2T4VUAOKZAZW7AHBEJUVO2V2BH5I6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDkvMDUvMjAyMyAwNToyMCwgYWxpIHNpZGRpZyB3cm90ZToNCj4gRGVhciBhbGwsDQo+IEkg
YW0gdHJ5aW5nIHRvIGRlc2lnbiB0aW1lIGRpdmlzaW9uIGR1cGxleGluZyAoVEREKSB0cmFuc21p
c3Npb24gb24gDQo+IFVTUlAgQjIwMCBtaW5pIGFuZCBnbnVyYWRpbyAzLjEwLjUuMSAuIFRvIGFj
aGlldmUgdGhhdCwgSSB0cmllZCB0byB1c2UgDQo+IHRoZSBGdWxsLWR1cGxleCBtb2RlIGFuZCBz
dG9wcGluZyB0aGUgaW5hY3RpdmUgbW9kZSAoVHgvUngpIGJ5IA0KPiBtdWx0aXBseWluZyB3aXRo
IGNvbnN0YW50PTAuIEJ1dCwgc3RpbGwgdGhlIGNhcnJpZXIgYXBwZWFycyBvbiB0aGUgDQo+IHNw
ZWN0cnVtIGFuYWx5emVyLiBJIGhhdmUgcmVhZCBzb21lIHN0dWZmIGFib3V0IGJ1cnN0IHRyYW5z
bWlzc2lvbiBhbmQgDQo+IHRoZSBhYmlsaXR5IHRvIGVuYWJsZS9kaXNhYmxlIHRyYW5zbWlzc2lv
biB1c2luZyAidHhfc29iIiBhbmQgInR4X2VvYiIgDQo+ICwgYnV0IGRpZG4ndCBzdWNjZWVkIGlu
IHN0b3BwaW5nIFVTUlAgdHJhbnNtaXNzaW9uLg0KPiBBbnkgc3VnZ2VzdGlvbnMgZm9yIFRERCBk
ZXNpZ24gb3RoZXIgdGhhbiBGdWxsLWR1cGxleCBtb2RlPw0KPiBvciBzb21lIG1vcmUgaW5mb3Jt
YXRpb24gYWJvdXQgZW5hYmxlL2Rpc2FibGUgdHJhbnNtaXNzaW9uIG9yIGJ1cnN0IA0KPiB0cmFu
c21pc3Npb24/DQo+DQo+IEJlc3QgcmVnYXJkcywNCj4gQWxpIFNpZGRpZw0KPg0KV2hhdCB5b3Ug
YXJlIHNlZWluZyB3aXRoICJyZXNpZHVhbCBjYXJyaWVyIHdoZW4gSSdtIG5vdCBUWGluZyIgaXMg
dGhlIExPIA0KbGVha2FnZSBvZiB0aGUgbWl4ZXIuwqDCoCBBTEwgbWl4ZXJzIHByb2R1Y2UgTE8g
bGVha2FnZQ0KIMKgwqAgYXQgc29tZSBsZXZlbC0taW4gc3VwZXJoZXQgc3lzdGVtcywgdGhpcyBp
cyBhcnJhbmdlIHRvIGZhbGwgb3V0c2lkZSANCnRoZSBwYXNzYmFuZCBvZiB0aGUgZmluYWwgZmls
dGVycy7CoCBJbiBhIGRpcmVjdC1jb252ZXJzaW9uDQogwqDCoCBzY2hlbWUgKG5lYXJseSBBTEwg
U0RScyksIHRoaXMgTE8gbGVha2FnZSBhcHBlYXJzIHJpZ2h0IGluIHRoZSANCm1pZGRsZSBvZiB5
b3VyIHBhc3NiYW5kLg0KDQpZb3UgY2FuIHVzZSAib2Zmc2V0IHR1bmluZyIgdG8gbW92ZSB0aGUg
TE8gdG8geW91ciBiYW5kIGVkZ2Ugd2hlcmUgaXQgDQptYXkgYmUgbGVzcyBwcm9ibGVtYXRpYzoN
Cg0KaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfZ2VuZXJhbC5odG1sDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
