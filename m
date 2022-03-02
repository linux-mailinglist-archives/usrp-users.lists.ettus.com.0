Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 740724CA8DB
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 16:13:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 621FC384901
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 10:13:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GyLTURQz";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id AA3EC3843BC
	for <usrp-users@lists.ettus.com>; Wed,  2 Mar 2022 10:12:39 -0500 (EST)
Received: by mail-qk1-f170.google.com with SMTP id b13so1454202qkj.12
        for <usrp-users@lists.ettus.com>; Wed, 02 Mar 2022 07:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=W63QsPoczouWZKKMGqEeQaOvmV1n0KHn51MNmGgvqLs=;
        b=GyLTURQzI2Uh5EK8cJlVh5tVjScWVyDmQZ89oXBP2Avhvu1LgIopsROQRcRykDaiSx
         +k97eMr80rGdcDr+xpP2vMotde6FT/PxMr82/loqG+YTicNhCDWQV6Q1EJm25nFdnCi+
         bvXN/lrqSX5U53ot96FMj0VB87Qd6Snr7smTuO5auLjMP9TbBGT2ZhLlvH6xkX2vv/O5
         1A6JOcZmdI9edvUnQ02z50Ui9YGibFHhP0or9x73R+8LsH9OoNBbLhP1a9PeBFlIxVd3
         7ASC4o86XQxfhfaXWcJDev8D2kNxGd6OFFARwGspnDeLNasdBaY8oXH0Da+3y0T8Hes+
         q4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=W63QsPoczouWZKKMGqEeQaOvmV1n0KHn51MNmGgvqLs=;
        b=LWODjwDL8MbJjRfF7/UdXaKtNHkhIeqExrghZINh1m7vRbOSyVWxmV4nK91UgjaKV+
         E1p+rIwWu9isEjA7xl3bEixhOL9Xf7v09bl+Almg+PFDqFJUVdKh6B4E7TKRSK8yUYqC
         zHuyel3Zp6gyWCXk2+AW8MyK3vwNZY99BjRumgJJ87NKKxYuRSz9czgJIqa2SYrBMJgZ
         fLHr6+lRmOCw4YYxyaKgy6M/wJz3AvqOY6F4RMyFpcuQ5YMoryat6tjVPqtXLvuSibkC
         ecxIF/2hJc1f4Xn+PDkXM3HdVM7ZaFmUYRbHz7PCZ45vU1qqVeeX4fA34K/P+X2dB2Vt
         3i1w==
X-Gm-Message-State: AOAM533zEha4c+vzudBPwfAsnZa7DDCCZbBCr6B3CM9nfJBc3MsgGbSH
	CJ+fRAhLgSLIOidMECREb+L6k0qLCCJjSw==
X-Google-Smtp-Source: ABdhPJyZHf1z5UOFqOtHbGBNT6WKX+ZOlR7rx13UjvSaybud9wcF28UzUngPVmit1PgfZxZM251HBw==
X-Received: by 2002:a37:4c3:0:b0:649:714a:54b5 with SMTP id 186-20020a3704c3000000b00649714a54b5mr15854361qke.386.1646233958689;
        Wed, 02 Mar 2022 07:12:38 -0800 (PST)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id s25-20020a05620a031900b006493cefc496sm8167663qkm.127.2022.03.02.07.12.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Mar 2022 07:12:38 -0800 (PST)
Message-ID: <8e7f0f90-c109-7aa5-85a3-5859d5a046ca@gmail.com>
Date: Wed, 2 Mar 2022 10:12:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN6PR16MB170007FD7537DF2A793E2D27B9039@BN6PR16MB1700.namprd16.prod.outlook.com>
 <c0d9dae1-5467-b4af-d4c9-889599f2f1c8@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <c0d9dae1-5467-b4af-d4c9-889599f2f1c8@ettus.com>
Message-ID-Hash: 3FBIM3C2PVP23CESMSN2UURCW3O5VXFV
X-Message-ID-Hash: 3FBIM3C2PVP23CESMSN2UURCW3O5VXFV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: single flow utilising multiple receivers with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3FBIM3C2PVP23CESMSN2UURCW3O5VXFV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0wMiAwNTo0NSwgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IEhpIEpQLA0KPg0K
PiBxdWljayByZW1hcms6IEFyZSB5b3UgKnN1cmUqIHlvdSB3YW50IDIwMCBNUy9zIGZyb20gKmJv
dGgqIGNoYW5uZWxzPyANCj4gVGhlIGZyb250ZW5kIGJhbmR3aWR0aCBwZXIgQ2hhbm5lbCBpcyA4
MCBNSHosIHNvIHRoYXQgMTAwIE1IeiB3b3VsZCANCj4gc3VmZmljZS4NCj4NCj4gQmVzdCByZWdh
cmRzLA0KPiBNYXJjdXMNCklOIGFkZGl0aW9uIHRoZSBhZGRyTiBzeW50YXggaXMgdXNlZCB0byBp
ZGVudGlmeSAqbXVsdGlwbGUgVVNSUCBkZXZpY2VzKi4NCg0KVGhlIHN5bnRheCB5b3Ugd2FudCB1
c2VzIHRoZSAic2Vjb25kX2FkZHIiIGFyZ3VtZW50LCBpbnN0ZWFkOg0KDQpodHRwczovL2ZpbGVz
LmV0dHVzLmNvbS9tYW51YWwvcGFnZV91c3JwX3gzeDAuaHRtbCN4M3gwX3VzYWdlX2RldmljZV9h
cmdzDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20K
