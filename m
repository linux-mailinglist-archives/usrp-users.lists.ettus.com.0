Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BECD3511CC0
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 20:04:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E74DF3846E6
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 14:04:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651082676; bh=SS+ix75mzpiznLs72IHP+6Msb+fmcOruaSBBs5Bsl8k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bIgOxup6uArq94tTQySWDITLM5ZnUtnc5WJJz9NCS66a4f5UKE2TJtvFwOK6aeesb
	 Yx/1w0hp0ctRFy8qpvByWBnsS6cF85aMN8jdSHz0JnQ9BxfhSdWmLvW23AGsCPF8L2
	 zCZtUfZCDNUH6Ryy/jsUEPppCy5Xz5uG5gunjMgHPQh4bS/KjGldgrJ9ZFuo0d4hzU
	 37Khs061S6pPLFsNNjG4q479tu1wJ5tlop4aSnIQRpv1dRzvOvU/OCxsUJjRBUyg4V
	 LD2YjVzhY7Ydd9JUhChedJ8umzenyGLvRum/eqFznrNZNKjTp3etIDXIwDQGhqdsmk
	 Rp675NtwN+UJg==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id E02BA384670
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 14:03:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cxnjuvhN";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id t16so1722247qtr.9
        for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 11:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=AL1WJPoJb8rAN2E6QEC5HNCweeuZc3BZ7OGehayK6HY=;
        b=cxnjuvhNehbAbZaNbPt7cicl1WFlWBE88O1ThexO/YdZsaWg8pbqbId3Ae/Guc7SzR
         lfP7MpFJt5POj2nLT7TZelwjPBaYfhepv5y4a/WEb1j/SsYAD5UThevPi0pH9WNUHFWl
         yvSFOCa7hY5QPS8MhsSmdM03wqI+ddzNQMOXOUHu5XmRxxCmFQlFVLA1MAcEk+hvunWG
         BBfVmjBQVoZwwuXpa7eDzxmc56zf23lmoxnwCx6+/np5BrUi1tV14ckhOc3/u0rjlWuZ
         gOwB2j66MoZoRj87rGnUpvvUnOpH7JRTDEqR+SVAbaH68tm/txVzuScROXYKH2TbK56K
         bgJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AL1WJPoJb8rAN2E6QEC5HNCweeuZc3BZ7OGehayK6HY=;
        b=2hiXhcqcuHzwv6bZe9gY10FHPysiL/Hwq4Pmz+coJsOIuSov6OI9B3JArIqq5AGylu
         O5xvFpQVxAwUTNIJ8DpYTP8Bkm2drJCBIb6OD99vt0uTRbW+TsEiHH251EqXXxGreAsZ
         bFlwXSkWl22eai/J1aRHQBTgjkD2+3M/ZGVPnjXRMe6GxX5iczk+JFV1O8BLLof//FHm
         ivjA7RcFAZdfSrPZtJ32Ih7rJnsuIUyTIBumb5IVqRlM1U+iA1tWggFylKTUWzge84CA
         LTAHfrUHg9fKwjMi8LCihr4ZwQGPLCM1gggVSYdiK9YNP8gEeKQJ2yWkAHN0Giv6yugY
         GJ8A==
X-Gm-Message-State: AOAM531qYcSnsWZCtopGZKKto9v7Oy2F4KYTBflIYNQ+3obXDYSpbG6s
	dv2Wxp9cBI4Rxq/v3wolG4k=
X-Google-Smtp-Source: ABdhPJweJGhDYUskqvfVjE2QUxD1rHa8kD0MihLAQdQjXK9MDn1Jxe/kUb3zeCQWSvJnEq8+jhrINw==
X-Received: by 2002:a05:622a:11c3:b0:2f1:f39e:5072 with SMTP id n3-20020a05622a11c300b002f1f39e5072mr20481980qtk.489.1651082596881;
        Wed, 27 Apr 2022 11:03:16 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id z8-20020ac87f88000000b002e1cecad0e4sm10273427qtj.33.2022.04.27.11.03.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 11:03:16 -0700 (PDT)
Message-ID: <a28a0150-9e4d-4b49-d5fe-dc32065ea62b@gmail.com>
Date: Wed, 27 Apr 2022 14:03:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Arash Jafari <arash.jafari.telecom@gmail.com>, usrp-users@lists.ettus.com
References: <CANzM3hzZTO6wDcketH+6iXLyr6wFO0vZF8=YwGxoozbZhz0Vpw@mail.gmail.com>
 <01dc4628-97ff-f1d5-81e6-538bb06e80b8@gmail.com>
 <CANzM3hzTUXtT=-pnSdbXf-FfAJhLxVgU60BaB6-ZP3PUpz1TBw@mail.gmail.com>
 <fc08b2fd-86ce-ae60-0ff7-27f45b3f0752@gmail.com>
 <CANzM3hzEPUtXqqf-FvynCxJEbujBb_yiR4trxhF5-aU6=M1RBg@mail.gmail.com>
 <66069968-236e-a309-13dc-14577c2fa095@gmail.com>
 <CANzM3hxCfMTOGuAoZELo1Un6tsLOBNoA8YMLd11m_dQkjHBEyA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANzM3hxCfMTOGuAoZELo1Un6tsLOBNoA8YMLd11m_dQkjHBEyA@mail.gmail.com>
Message-ID-Hash: AMYOKRAJNJYB763TQQ64EC7PFSHHU3HE
X-Message-ID-Hash: AMYOKRAJNJYB763TQQ64EC7PFSHHU3HE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-B200-Digital Down Conversion
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AMYOKRAJNJYB763TQQ64EC7PFSHHU3HE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNC0yNyAxMzo0MywgQXJhc2ggSmFmYXJpIHdyb3RlOg0KPiBIZWxsb8KgTWFyY3Vz
LA0KPg0KPiBZb3UgY2FuIGNvbnNpZGVyIEEgYW5kIEMgcG9pbnRzLg0KPg0KPiBLaW5kwqByZWdh
cmRzDQo+DQo+IEFyYXNoDQpPSywgc28gd2hhdCBpcyBpdCB5b3Ugd2FudCB0byBhY2NvbXBsaXNo
IHRoYXQgdGhlIHN0YW5kYXJkIHNldHVwIGRvZXNuJ3QgDQphY2NvbXBsaXNoPw0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
