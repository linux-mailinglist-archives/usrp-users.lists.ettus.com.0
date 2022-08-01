Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F75586C8A
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 16:05:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 836553809FB
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 10:05:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659362722; bh=ONSiejg6fKErzBqv8yCG+k1eIRr+rM9gKuOiDS4kjqA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dGSrZknWnta8zCaFjwfQEqK0ZBYvaR+zjeJc5sFoeCqkRkWLLqVwYnMFVNbyhb3zP
	 V4qaHXh6PnxckXll1gyspflVHgJMVnB0BbbLAA0BBgOrLJ7de3/w2ROAQjAxjRnCOj
	 H3VVPCdQqjhmSkb3S/N47FoAx1PcDmPxOyz88KAHMAsZmcaL8ia4O5Wkb9cXzuk2gF
	 +g4wGAy0OMkanqK1x1eNA4AqAFugmJr+f/VGaruyTECM3SYIEqjjE6A0rGaTzsIRnZ
	 ayMOlv39oGT6Kl2j4o6f2bHcrLiBd6Sh8WVFTAef1Deu8n9gGG9HmouReafC+HfSJH
	 DDSVnIA5lFf7w==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B52F38308E
	for <usrp-users@lists.ettus.com>; Mon,  1 Aug 2022 10:03:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QG2BqVuj";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id r21so8034634qtn.11
        for <usrp-users@lists.ettus.com>; Mon, 01 Aug 2022 07:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=R5Fkk8w8SZob1XKUUovv6xhlLi1OZTk8oNnTQVeSg0I=;
        b=QG2BqVujv/pKQgX7o7jTuxNP3tTsMuF/eyLa14xjcV7kAZcyJc3qqN/bo5Nmi2soo5
         BqsiRYSp1FMliPanLikXH+kVB6nwgFyhjxirHEWvm4ZwU8F2y8KWRvrhiyJR11eRyes7
         syjg4KPd9MX3paizkKMWJgWJm7ywESs6z8mrTBVip8unP+9X1Iakmacncz28F9rPJG+8
         SzghDy+M3gMi+Zl7O4lfCFdw6rT0wMsPV7Ru8O1JMBr9bICNV0T/mAILeCYhM62aftK7
         M7JwYAc3v9piLKOBfo2SedT0DHjh2C7jQimiaEbDD7xY2lQJkqwtJfGLzF+z8Zn1Js9B
         7u/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=R5Fkk8w8SZob1XKUUovv6xhlLi1OZTk8oNnTQVeSg0I=;
        b=Jq35PKV9/9pj4ufaUiaIEiHKeSVZ/CCITHIq/TThNBcbFjJAdUi+Ge1WjW7sdwV04A
         ENYcC59Irp0t/FV6pIcVbaUNDsku1tvrSNu6XWcD4e0qIPzVVpzSvWmMOHjrsYj3YNnX
         F/VWIU+dmhAAaDEc7rXstUfmoz50BSnBrte/CLWAKuYuinB0IMUGPIqowq8VA0oi7MUR
         cI3DS9vYdysBYD0GsvmHXxrHIS8etyorF2/22FDtdhNnT5fNkLtkbd7CcRSmnkghio+f
         4z4BFOPAFBaaJHb8lCnvYEWw2hvREkBLYimzKm2SB/aHohsuYWzNNEwniquI7riGHNaV
         QQcw==
X-Gm-Message-State: AJIora95b8MTAKYsmtfwRDmgoUsNqYNLplCmiprymfxFnBWuTbX6nPsK
	Cb/p2Im9DAvzc2IuT5rvMXamI0hpO/A=
X-Google-Smtp-Source: AGRyM1vUi1OV/xHrCSitGpmlx/Cs558daZxxRTAwkVF5g8ShmCuHTRE6aGnW0y0I00p8tLZSyaqjIg==
X-Received: by 2002:ac8:58ce:0:b0:31f:ced:2d73 with SMTP id u14-20020ac858ce000000b0031f0ced2d73mr13813847qta.371.1659362579692;
        Mon, 01 Aug 2022 07:02:59 -0700 (PDT)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id v7-20020a05620a440700b006b5fe4c333fsm8882904qkp.85.2022.08.01.07.02.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Aug 2022 07:02:59 -0700 (PDT)
Message-ID: <1d76991d-dc80-17a8-ed6a-b00533613b2a@gmail.com>
Date: Mon, 1 Aug 2022 10:02:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DGTT1gkdzjUFIP5Jril9sRDzclNJARs6DBQLGzpsgoM@lists.ettus.com>
 <20220801090014.ekedafqill4f5lvp@barbe>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20220801090014.ekedafqill4f5lvp@barbe>
Message-ID-Hash: KCTCF6ONAQ6X2XHVRKKAK6SMZD5TJO6S
X-Message-ID-Hash: KCTCF6ONAQ6X2XHVRKKAK6SMZD5TJO6S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Sample Rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KCTCF6ONAQ6X2XHVRKKAK6SMZD5TJO6S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0wMSAwNTowMCwgQ8OpZHJpYyBIYW5ub3RpZXIgdmlhIFVTUlAtdXNlcnMgd3Jv
dGU6DQo+DQo+IElzIGl0IGluIG5ldHdvcmsgbW9kZSAoZGVza3RvcCBydW5zIFVIRCBjb2RlKSBv
cg0KPiBlbWJlZGRlZCBtb2RlIChkZXNrdG9wIC0+IFNTSCB0byB0aGUgTjMxMCBlbWJlZGRlZCBP
UyAtPiBVSEQgY29kZSk/DQo+DQo+IElmIGl0IHRoaXMgaW4gbmV0d29yayBtb2RlLCB0aGVuIGl0
IGNhbid0IHdvcmsuDQo+IDEgY2hhbm5lbCBhdCA0MSBNc3BzIGlzIGFsbW9zdCAxLjMgR2JwcyAo
NDEgKiAxNiAqIDIpIHRyYW5zZmVyIHJhdGUNCj4gb3ZlciB5b3VyIDFHYkUgaW50ZXJmYWNlLg0K
PiBGdXJ0aGVybW9yZSwgYnkgc3BlY2lmeWluZyB0aGUgcnggYW5kIHR4IHJhdGUsDQo+IHlvdSBz
dGFydCB0aGUgYmVuY2htYXJrIGluIGZ1bGwtZHVwbGV4IChpLmUgVHggKyBSeCksDQo+IGRvdWJs
aW5nIHRoZSByZXF1aXJlZCB0cmFuc2ZlciByYXRlLg0KPiBFaXRoZXIgd2F5LCB5b3VyIG5ldHdv
cmsgaXMgbm90IGNhcGFibGUgb2YgaGFuZGxpbmcgdGhhdCB0cmFuc2ZlciByYXRlLA0KPiB5b3Ug
bmVlZCB0byBzZXR1cCBhIDEwR2JFIG5ldHdvcmsuDQoxR2lnIGV0aGVybmV0IGlzIGZ1bGwtZHVw
bGV4LCBzbyB0aGF0IGFzcGVjdCBpc24ndCBhIHByb2JsZW0uwqDCoCBCdXQgDQppbmRlZWQsIHRo
ZSBtb3N0IHlvdSBjYW4NCiDCoCBnZW5lcmFsbHkgIm1vdmUiIG92ZXIgMUdpR2Ugd2l0aCBVU1JQ
cyBpcyBhcHByb3hpbWF0ZWx5IDI1TXNwcy4NCg0KPg0KPiBJIGRvbid0IGtub3cgdGhlIGxpbWl0
YXRpb24gb2YgdGhlIE4zMTAgZW1iZWRkZWQgQVJNIHRvIGhhdmUgYW4gb3Bpbmlvbg0KPiBpbiBl
bWJlZGRlZCBtb2RlLg0KTm90IGEgY2hhbmNlIHRoYXQgaXQgY291bGQgc3VwcG9ydCBhbnl0aGlu
ZyBtb3JlIHRoYW4gYWJvdXQgMTBNc3BzIGF0IA0KdGhlIG91dHNpZGUuDQoNCg0KPg0KPiBSZWdh
cmRzDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
