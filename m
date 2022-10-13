Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4F25FDB51
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 15:44:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F258380A71
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 09:44:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665668661; bh=4HchPdrGx5i4Rha6atMX78E8LHH0747bxIWFGN3+M5c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mmWnKyhwczZBjrdxB20Q2E1RaiNzAqf5c7ikmEw775S/vlH+C0UXJfUP/pyEDOXKv
	 qrMFJzFm2T51fdb9i3H0vVnDsvu15Oqy96aeQ4BlIdv6bh9NmwOEY61lfB6dsHzFgt
	 qxrcP5WtxVq3RL/E2Cu7CAMYZEPB/1chTY7pVVDnyYiOkETcLuldr8drhBEMtjR0G8
	 SZkiWvONcwlIJbIjWs+hqNQA5fS4498JteOlm4hRJf9WLJBNiuYRnbeD4aw0EjmTBQ
	 7pwjxu0v2wIWaAmJjuW0CTdPAgJwN0nmZT3SRBQo0GbLy5ONM3Esq+gxgtZ51CdSdc
	 AHNVG9foGsVaQ==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 743EF383D9D
	for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 09:43:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="H5IVB/32";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id de14so1288109qvb.5
        for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 06:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QVhLkXlS34Oe/wxDcxNJlGuFY5vdQzZDxSGdjvODJJU=;
        b=H5IVB/32ZPgrchubqtmlu+8D0V0EJcLn5K54OXRL9eirLxRJHpM+r7FrabmWPSJAc8
         b2Ti7Z95HawqavtMzmrM29yPz7qdaY3cD7+zhsU/m/SVCzHE85XncX2LpkZXCJ/oMltc
         nCB7GWiv7hnnWVHBk49LSilWS2P+YlNJIbpV8Q5iEq07DWMstktB9YCG1hziQoQ744gS
         W9sA5ekk9tgoUp+z72HtapfshE1GWFzg7cttxIs5ySWDOnkYi/M6juvKvUmsAfj0qAIW
         v6G9qp3nzt0v7LVKBpbpN0mLFMJEoLINMwhQhnkBNcTBtLlNIbilFDlcN+bVeemx8t7+
         mJCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QVhLkXlS34Oe/wxDcxNJlGuFY5vdQzZDxSGdjvODJJU=;
        b=tIWAOdIKjWtfaEamGMht7bItyg83+Bs+cUPlOYZZ7z7OVRfBS2M7oodTR0fcSvMBBS
         MBFu+vOyfi55kTP58OhbhJV759tPPF39Q2v9b5/nzU3wX8Yt/g8OWlquH4OebZi6F/3C
         OzzjwltrM1iPdy3lNXm70XU3fK7BvLdY4+4ltPTCP1iluLK4pOK16ZA1dg0OC+ikbL42
         sy7nPztosOjUPGTB9osVwsrx8s0Vh2BKT8D9ehhdQfaUdOhy+JWLHELbf1EyFSgAsZ9j
         dpYtSCy1PlVOUw7a5akA6xyPTJq5NBt1EG/XH9OTPzOOYofFYduL/L57yJFoUp6EjBTc
         oOuQ==
X-Gm-Message-State: ACrzQf2j2MefceuZ7uFy3AFkjmoLomM5sMVppqiBzvGjy1cL0OSCu3lA
	TO37NDM/npFvVMzn/oWpRY9VaaAzJVQ=
X-Google-Smtp-Source: AMsMyM7MpGD4471ohp4mTIsYoSkuSyglR3RUw2dHNBm6KuVpA7FtSnyIZY+/y7GzG1MAA68gOUd9ZA==
X-Received: by 2002:a05:6214:d6b:b0:4b1:c4de:5b3e with SMTP id 11-20020a0562140d6b00b004b1c4de5b3emr27866333qvs.128.1665668609643;
        Thu, 13 Oct 2022 06:43:29 -0700 (PDT)
Received: from [192.168.2.186] (bras-base-smflon1825w-grc-09-174-93-2-50.dsl.bell.ca. [174.93.2.50])
        by smtp.googlemail.com with ESMTPSA id y9-20020a37f609000000b006cea2984c9bsm9055447qkj.100.2022.10.13.06.43.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 06:43:28 -0700 (PDT)
Message-ID: <60771baa-588b-7c7e-e642-c13f449310e7@gmail.com>
Date: Thu, 13 Oct 2022 09:43:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <QzuK2hVi5lZhI9sSwIOdI5nIaOC03TmgussiB9WS3s@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <QzuK2hVi5lZhI9sSwIOdI5nIaOC03TmgussiB9WS3s@lists.ettus.com>
Message-ID-Hash: 7DAFYXAUINXBBR7JWCRPBZRYXA4WFLHG
X-Message-ID-Hash: 7DAFYXAUINXBBR7JWCRPBZRYXA4WFLHG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD_IMAGE_LOADER load another .bit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7DAFYXAUINXBBR7JWCRPBZRYXA4WFLHG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0xMC0xMyAwOTowNCwgYWRyaTk2cm9sbEBnbWFpbC5jb20gd3JvdGU6DQo+DQo+IEhh
cmR3YXJlOiBlMzIwDQo+DQo+IENvbW1hbmQ6IHVoZF9pbWFnZV9sb2FkZXIgLS1hcmdzICJ0eXBl
PWUzeHgsbWdtdF9hZGRyPWlwLGZwZ2E9MUciIA0KPiAtLWZwZ2EtcGF0aCB1c3JwX2UzMjBfZnBn
YV8xRy5iaXQNCj4NCj4gQW5kIHllcywgaSByZXN0YXJ0ZWQuDQo+DQo+DQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCkxvb2tpbmcg
aGVyZToNCg0KVXBkYXRpbmdfdGhlX0ZQR0FfSW1hZ2UNCg0KSSdkIHNheSBETyBOT1Qgc3BlY2lm
eSBmcGdhPSBpbiB0aGUgZGV2aWNlIGFyZ3MsIGFuZCBtYWtlIHN1cmUgeW91ciANCi0tZnBnYS1w
YXRowqAgaXMgYW4gYWJzb2x1dGUgcGF0aCwgb3RoZXJ3aXNlLCBpdCBtYXkNCiDCoCBqdXN0IHNl
YXJjaCBmb3IgdGhlIGdpdmVuIC5iaXQgZmlsZSBpbiB0aGUgZGVmYXVsdCBzeXN0ZW0td2lkZSBk
aXJlY3RvcnkuDQoNCkFsc28sIGFwcGFyZW50bHkgd2l0aCBFMzIwLCByZXN0YXJ0aW5nIGlzIG5v
dCBuZWNlc3NhcnkgKEkgZG9uJ3QgaGF2ZSBhbiANCkUzMjAgbXlzZWxmLCBzbyBqdXN0IGFzc3Vt
ZWQgInRoZSB1c3VhbCIpLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
