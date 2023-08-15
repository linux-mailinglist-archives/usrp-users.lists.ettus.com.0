Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3785F77CF92
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 17:50:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44CB2384B02
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 11:50:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692114640; bh=gNyX8Nb72EVm0XKz9gPMlE7vMV0oyBRl8jlQ9WGHPFM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oLiXc89ZSozpCtTLtTUswSKTtH+TC8qT8hiAFvuNYskHtiL2AoLtzbIpKK4lPh2Ap
	 vP7K5o5rRdVtWMxMH6je2iKBYIGfpggSiRVbTMo9xYzI+m+SDxZIqBZCJuvW02z01h
	 bgx3Yy0cIc5RErMD0gIWMK/HsH8QgbrFwhyOFax3VSdc4+IBFZNuSNgEta8R1dNgwS
	 7pf4p7zJKALi8hh00JrdgJBK555S0kB9fkQawDzXvxCiz3GiIutEX3K+FhMk3jgA1d
	 witfGwzei+vKVkXGCL6rjsfbbh/v+gd2A0AsRk6hxLJ+DzwBx/XRP+n/wdDiIAAbDv
	 2BXyta1b05SVw==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id C8FC4384A61
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 11:50:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aSYwARTN";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-76d1c58ace6so286144285a.1
        for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 08:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692114627; x=1692719427;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uJqeCHXmTRVt52JDsSTXqnjO/h+OSLbrSYZevVfqMos=;
        b=aSYwARTNOdBFyWwmrmUvsIhIrvJXBnLoBqopQ/TutimA0v6Umvsvuc+sC2EM9Lp40m
         Cs/FcxgL0HsOlVU68RSuNP48ti6Ij1LdnZM3+W+KfRuOoIvRqQ+Puyu6zRqR93GR5gwe
         yTpTU5jng5eaoJ1vkUEXMnIG4QWcE+DZYb6d/Ws/6WqofXRECVpLTFqmJoKzMUv3ZIav
         2meajgXq35ZCKm1mgjRkpliOrvt4tRR3bUHKna2Y5NsEW6qDTSFou+GCmVZh9FKC130z
         I3Hh4DMkOWh9fKgoyYyMP3Tj5uKL/mkA+9KmkuhFu6nPHYWX5l8m03EA2g3KUIFLaHeb
         ISLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692114627; x=1692719427;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uJqeCHXmTRVt52JDsSTXqnjO/h+OSLbrSYZevVfqMos=;
        b=TAH/y9ffSjXHOZp/1Ui81BpVDcUNBz+j5kYnVF8q3gcehVzWDKOqce1W6AaBzfjo/B
         tG7Nev+F9AdkEx6kTJGdaOlgndcqhBliICqzeMqYxE6oObNziwi+F4XZ84kRny5LQFDC
         6oha+4Y48KecxLLNnr+woNE7X3XiprWhbsCvVJ34MfMl7caVz+p3TImQoehdhnMy78Xj
         5TgE9c5Ix1yk6f+GkTS9wBwb449tKgVswmFlUk5juezXKex5sDs0WU5gdy+qpIOCwNRR
         8zgEv/aw5mkXH4rXq8if/QzkiVsqirzncCaUsBd7Qjgf8hgd8yOHOXtOhmM+S9C+7UyT
         qtjg==
X-Gm-Message-State: AOJu0Yzp1dubvBK2hDFTLZ7mpRQ40e3dzx7O7y0ZLsJeosdOu5kqTOVq
	fdm/NrKuZTRrf1rGedP5Wrc8C4wbSMQ=
X-Google-Smtp-Source: AGHT+IGfEKi2L5NERmYZbx/xAio/5h77H6NHSQUOvLlCIEYybzFhk9/vtPlnFXJXQwKHmbDVTrqtFg==
X-Received: by 2002:a05:6214:3006:b0:63d:753:fc4 with SMTP id ke6-20020a056214300600b0063d07530fc4mr2138171qvb.4.1692114626971;
        Tue, 15 Aug 2023 08:50:26 -0700 (PDT)
Received: from [192.168.2.193] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id s14-20020a0cdc0e000000b0063f822dae2csm1991972qvk.54.2023.08.15.08.50.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 08:50:26 -0700 (PDT)
Message-ID: <3291f4c6-0b70-71d8-1986-fc0822d33bc5@gmail.com>
Date: Tue, 15 Aug 2023 11:50:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CADDf8danBBvZkGBxyWGu+8Gk=OVugkVc5=erFR3b4ZJ4regZwA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CADDf8danBBvZkGBxyWGu+8Gk=OVugkVc5=erFR3b4ZJ4regZwA@mail.gmail.com>
Message-ID-Hash: KU257C3DGME34BM6DCV63HY6AEAASRPN
X-Message-ID-Hash: KU257C3DGME34BM6DCV63HY6AEAASRPN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: phase maintenance in a USRP loop
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KU257C3DGME34BM6DCV63HY6AEAASRPN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTUvMDgvMjAyMyAwNTo0MywgQWxpIEcuIERlemZ1bGkgd3JvdGU6DQo+IEhpIGFsbCwNCj4N
Cj4gSSBoYXZlIHR3byB0cmFuc2NlaXZlcnMgQSBhbmQgQiBlYWNoIG9uZSBpcyBjb25uZWN0ZWQg
YnkgY2FibGVzIHRvIGEgDQo+IFVTUlAgQjIwMG1pbmkgKFRYL1JYIGZvciBzZW5kIGFuZCBSWDIg
Zm9yIHJlY2VpdmUpDQo+DQo+IFVzaW5nIEdOVSBSYWRpbywgZm9yIGVhY2ggaXRlcmF0aW9uLCB0
cmFuc2NlaXZlciBBIHN0YXJ0cyB0byBzZW5kIGEgDQo+IGJ1cnN0IG9mIFJDLWZpbHRlcmVkLCBC
UFNLLW1vZHVsYXRlZCBQTiBzZXF1ZW5jZS4NCj4gU2lkZSBCIHdhaXRzIGZvciB0aGUgYnVyc3Qg
YW5kIGFzIHNvb24gYXMgaXQgZ2V0cyB0aGF0IChieSANCj4gY29ycmVsYXRpb24pLCBkZXRlY3Rz
IHRoZQ0KPiBwaGFzZSByYW1wIChiZWNhdXNlIG9mIHRoZSBjYXJyaWVyIGZyZXF1ZW5jeSBvZmZz
ZXQgKENGTykpIG9uIHRoZSBQTiANCj4gc3ltYm9scw0KPiBhbmQgbWFrZXMgYSBuZXcgYnVyc3Qg
d2l0aCB0aGUgc2FtZSBwaGFzZSByYW1wLCBhbmQgc2VuZHMgaXRzIGJ1cnN0IA0KPiBiYWNrIHRv
IHNpZGUgQS4NCj4gVGhlbiBJIG9ic2VydmUgdGhlIHBoYXNlIG9mIHRoZSByZWNlaXZlZCBzeW1i
b2xzIGF0IEEuDQo+DQo+IEFzIGZhciBhcyB0aGVyZSBpcyBubyBzYW1wbGUgbG9zcy9pbnNlcnRp
b24sIEkgc3VwcG9zZSB0aGUgcGhhc2UgDQo+IGNvbnRpbnVpdHkgaXMgaGVsZCBhbmQNCj4gc2hv
dWxkIHJlY2VpdmUgYSBjb25zdGFudCBwaGFzZSBvbiB0aGUgcmVjZWl2ZWQgc3ltYm9scyBhdCBB
IHdob3NlIA0KPiB2YWx1ZSBkZXBlbmRzDQo+IG9uIHRoZSBkZWxheSBiZXR3ZWVuIEEgYW5kIEIg
d2hpY2ggaXMgZml4ZWQuDQo+DQo+IEkgb2JzZXJ2ZSB0aGVzZSBpc3N1ZXM6DQo+IDEtIGluIHNv
bWUgaXRlcmF0aW9ucywgdGhlIHJlY2VpdmVkIHBoYXNlIGF0IEEgaXMgbm90IGZpeGVkLg0KPiAy
LSBpbiBzb21lIGl0ZXJhdGlvbnMsIHRoZSByZWNlaXZlZCBwaGFzZSBhdCBBIGlzIGZpeGVkIGJ1
dCBkb2VzIG5vdCANCj4gZXF1YWwgb3RoZXIgaXRlcmF0aW9ucy4NCj4NCj4gV291bGQgYmUgZ3Jh
dGVmdWwgaWYgYW55b25lIGNvdWxkIGhlbHAgbWUgd2l0aCB0aGlzLg0KPiBUaGFua3MhDQo+DQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20NCllvdSBoYXZlbid0IG5vdGVkIHdoZXRoZXIgdGhlIHR3byBVU1JQcyBhcmUgc3luY3Job25p
emVkIG9yIG5vdC4NCg0KVHdvIHJhZGlvcyB0aGF0IGFyZSBub3Qgc3luY2hyb25pemVkIHRvIGEg
Y29tbW9uIGNsb2NrIHdpbGwgTk9UIGhhdmUgDQptdXR1YWwgcGhhc2UtY29oZXJlbmNlIG92ZXIg
YW55DQogwqAgbm9uLXRyaXZpYWwgaW50ZXJ2YWwuDQoNCkFyZSB5b3UgcnVubmluZyBSWCBjb250
aW51b3VzbHksIG9yIHN0YXJ0aW5nL3N0b3BwaW5nIHN0cmVhbXM/DQoNCg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
