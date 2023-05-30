Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3971171663F
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 17:09:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 431AE38460B
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 11:09:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685459381; bh=r/LRGE/G2R747li+ErAVlp+XoCtAFwQV0LsCOpEgSxI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BD1Jg3h5WlBC/lAtzh1YIRtHCKiQDPvh9sYRLhX53rXD82HDbDagDpViUEDT85eVW
	 DaaM+LyuVyn7trCojVA/sVJr4snQwmNyr1+CkVDywhled1NGXhIzI0PMYou5U74vI5
	 edsWoOr5QwZGpZdo7v7EjnG+CoLgZXh07OfMYWDECPhpP6aeIIsuVBUpAIDWYoXmb1
	 CaZBvj8o3Org7JYiT/3EpC4TkDW9Zw7wiFH+T2BuDS5uLGK+LigH0LAWioZnB4W4Ns
	 mtzLxGzEHFj0JWYeiEGPGg0vUM5c86Lbe9zkUrWWd8+CuZEXW/Dbp5CrCoZVcm1VyZ
	 Bsk6Csm3CIF+A==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 9ABA2380030
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 11:08:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XMSccDOC";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6261a8bbe5fso21075446d6.0
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 08:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685459320; x=1688051320;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1E2AAeDkUJHhzvLfgIVTqac0le1BKoU/KDqow78MZUM=;
        b=XMSccDOCJ4pIrTMpQyWnGfeQjrUxebujEz3toT33V8o2WgpDtjFt9zLPp+LFi/5kV8
         kTnML+5QcSCp5lS3rZ34AhmK8/oJJEl6wh/fFwKL9nzOQ60MwnbcdRG0eGFhbpxNlexs
         1PMXmSRAM9LVWMPUg+NFjNcJDp/echG5uI0jc20/aQhfZsh1LP1110CFwjq4RgGjRmxN
         5/X/sVxj5LcxuUKc7GD/jopoIMBco8FQzpWqHYFLj8yfAWgYeBbe9392ChDKkBc/TZRI
         kfwwF76mYvFID/vHX5nWgZgLxsSykwhQsbHwIvcnPZS1KfC84FQvhb6XegCsciv7klIC
         bgRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685459320; x=1688051320;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1E2AAeDkUJHhzvLfgIVTqac0le1BKoU/KDqow78MZUM=;
        b=FHWBQL8E0z1t3q9AQBDVjoVzoO0hGpJm9a4mdI4VoEAoK/DNOWJP9ww9NsJg3f4I+d
         KCbz3V4ktwHKFI3vbn7eFWqZQW/xmTSepGeCzNfZdi4H39sMUf5HDjtN23xfxA1QD2Tc
         2ijYjJ7hqZsEdxgFc8CyKpwvBpamVyMAgqD0wbiKE11V5aF1ju7nzFMs0r2yolizzZUe
         HsGiSaTbp+yjHBrzyVEKd7siYih+RBYd8CBEgyaIhpWLYgNCK5s2mF7OSryF6h67JBoc
         Nf+Ttn6gLzfVWrejU9uFxdFSl0KHyHAVOJmBCstNvSnanKijRvfOoO0fRgfL9dxR+MZo
         8mkA==
X-Gm-Message-State: AC+VfDznYwKgIicQpFs2rMZOKru/UbAwlB9WL9F11OfcZZU/GcIKAPmZ
	CR7mySbB9RpbRmFssoGjum0=
X-Google-Smtp-Source: ACHHUZ4fyYHSJieMf7cmhdxbfZ6t/Xq/bKAEIFaJdF8of7r5PDd6JcZXa1jBDBMvxShRATUPg5h9oA==
X-Received: by 2002:ad4:5be8:0:b0:625:aa49:ceac with SMTP id k8-20020ad45be8000000b00625aa49ceacmr2084853qvc.53.1685459319783;
        Tue, 30 May 2023 08:08:39 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id e7-20020ad450c7000000b00626234be222sm1874678qvq.57.2023.05.30.08.08.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 08:08:39 -0700 (PDT)
Message-ID: <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com>
Date: Tue, 30 May 2023 11:08:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Mena Ghebranious <mena@chaosinc.com>,
 Jonathon Pendlum <jonathon.pendlum@ettus.com>
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com>
 <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com>
 <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
 <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
Message-ID-Hash: EJBCPNWBTQJEJMJDYN6CZSWJ4ZRL6LRO
X-Message-ID-Hash: EJBCPNWBTQJEJMJDYN6CZSWJ4ZRL6LRO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Wabeke <LWabeke@csir.co.za>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EJBCPNWBTQJEJMJDYN6CZSWJ4ZRL6LRO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMzAvMDUvMjAyMyAxMTowMiwgTWVuYSBHaGVicmFuaW91cyB3cm90ZToNCj4gSGkgTWFyY3Vz
LA0KPg0KPiBJIHRvb2sgYSBjbG9zZXIgbG9vayBhdCB0aGUgZW5kIG9mIG15IHRyYW5zbWlzc2lv
bjsgd2hhdCBvcmlnaW5hbGx5IA0KPiBhcHBlYXJlZCB0byBiZSBhIGxhY2sgb2Ygc3ltbWV0cnnC
oGJldHdlZW4gdGhlIHN0YXJ0IGFuZCBlbmQgZGVsYXlzIGlzIA0KPiBhY3R1YWxseSBhIGN1dG9m
ZiBvZiAzMSBzYW1wbGVzIGF0IHRoZSBlbmQgb2YgdGhlIHRyYW5zbWlzc2lvbsKgLSBpbiANCj4g
b3RoZXIgd29yZHMsIEknbSBtaXNzaW5nIHRoZSAzMSBzYW1wbGVzIGF0IHRoZSBlbmQgb2YgdGhl
IFRYIHRoYXQgSSANCj4gcHV0IGludG8gdGhlIFRYIHN0cmVhbWVyLg0KPg0KPiBMb29raW5nIGlu
dG8gdGhlIEZQR0EgbG9naWMsIEkgYmVsaWV2ZSB0aGVyZSBpcyBhY3R1YWxseSBhIGJ1ZyBpbiB0
aGUgDQo+IG1vc3QgcmVjZW50IGltcGxlbWVudGF0aW9uIC0gdGhlIHRyYW5zbWlzc2lvbiBzdHJv
YmUgdGhhdCBjb250cm9scyB0aGUgDQo+IFRYIG91dHB1dCBpcyBiYXNlZCBvbiB0aGUgVFggc3Rh
dGUgbWFjaGluZSBpbiB0aGUgcmFkaW8gVFggY29yZSBibG9jaywgDQo+IHdobydzIHRpbWluZyBk
b2VzIG5vdCB0YWtlIGludG8gYWNjb3VudCB0aGUgZ3JvdXAgZGVsYXkgb2YgdGhlIERVQyANCj4g
ZmlsdGVyLsKgIFJlZ2FyZGxlc3Mgb2Ygd2hldGhlciBvciBub3Qgd2UgYXJlIHVzaW5nwqBBVFIg
dG8gY29udHJvbCANCj4gR1BJT3MsIHRoZSB0cmFuc21pc3Npb24gZ2V0cyBjdXQgb2ZmIGFuZCB0
aGUgbGFzdCBzZXQgb2Ygc2FtcGxlc8KgIGRvIA0KPiBub3QgYXBwZWFyIGF0IHRoZSBUWCBvdXRw
dXQgKHRoZSBudW1iZXIgb2Ygc2FtcGxlcyBtaXNzaW5nIGlzIGVxdWFsIHRvIA0KPiB0aGUgZ3Jv
dXAgZGVsYXkgLyBsYXRlbmN5IG9mIHRoZSBmaWx0ZXIgZm9yIGEgZ2l2ZW4gc2FtcGxlIHJhdGUu
KQ0KPg0KPiBBcyBhIHRlbXBvcmFyeSB3b3JrYXJvdW5kLCB3ZSBjb3VsZCB6ZXJvIHBhZCB0aGUg
ZW5kIG9mIG91ciBUWCANCj4gd2F2ZWZvcm1zLCBidXQgc29tZSBvZiB0aGUgd2F2ZWZvcm1zIHdl
IHdhbnQgdG8gcnVuIGhhdmUgdGlnaHQgUFJGcyANCj4gYW5kIHRoaXMgd2lsbCBoZWF2aWx5IGxp
bWl0IHRoZSByYXRlIGF0IHdoaWNoIHdlIGNvdWxkIHJ1biB0aGVtLg0KPg0KSSBkb24ndCByZWNh
bGwgdGhlcmUgKmV2ZXIqIGJlaW5nIGEgdGltZSB3aGVuIHRoZSBUWCBzdGF0ZSBtYWNoaW5lIA0K
ImtuZXciIHRoZSBzdGF0ZSBhbmQgZGVwdGggb2YgdGhlIERVQyBmaWx0ZXJzLCB3aGljaCBpcyB3
aHkNCiDCoCBuZWFybHktZXZlcnlvbmUgemVyby1wYWRzIHRoZWlyIGJ1cnN0cy7CoMKgIFRoaXMg
aGFzIGJlZW4gYSAidGhpbmciIA0Kd2l0aCByYWRpbyBoYXJkd2FyZSBhdCB2YXJpb3VzIHRpbWVz
IHNjYWxlcyBvdmVyIHRoZSBkZWNhZGVzDQogwqAgZm9yIHN5c3RlbXMgdHJhbnNtaXR0aW5nIGRp
Z2l0YWwgZGF0YS4NCg0KSSdtIHByZXR0eSBzdXJlIHRoYXQgUiZEIHdvdWxkIGNvbnNpZGVyIHRo
aXMgYmVoYXZpb3IgImRlc2lnbiBpbnRlbnQiLsKgIA0KUGFydGlhbGx5IGJlY2F1c2UgIml0J3Mg
YWx3YXlzIGJlZW4gZG9uZSB0aGF0IHdheSIsIGFuZA0KIMKgIHBhcnRpYWxseSBiZWNhdXNlICJm
aXhpbmciIGl0IHdvdWxkIGJlIGNoYWxsZW5naW5nIChpdCB3b3VsZCByZXF1aXJlIA0KcmUtYXJj
aGl0ZWN0aW5nIHBhcnRzIG9mIHRoZSBGUEdBIGNoYWluIGNvbnNpZGVyYWJseSwgSSB0aGluayku
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
