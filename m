Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8C3422AED
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 16:21:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 24B2F3841AC
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 10:21:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RvlyNJS+";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 21A47384150
	for <usrp-users@lists.ettus.com>; Tue,  5 Oct 2021 10:18:25 -0400 (EDT)
Received: by mail-qk1-f173.google.com with SMTP id 138so1624607qko.10
        for <usrp-users@lists.ettus.com>; Tue, 05 Oct 2021 07:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=KlBFFJDnLGGCBf6GaeYC8X8G0/zA4Nph4MCHc3VPQV8=;
        b=RvlyNJS+Fi82kG5LCnxc1/GhqgSabU5I7Jn2c7s7GkbQs3n3cJ83DIodN8lOhtzdW5
         VYDOD+3TkrYGxpzxqe4OhpJKaOGlAZ79V8tHctHKjUVfHRqFFeTVBY0eWzcuB7fQ8DUr
         MoUC9g0Kk7qHoePZxL2zqIAtJeVjFUJVS49OQce8pTEGktHeVg2O0J2p1zF9HP83zkBS
         rQ3jOUA2YDSam/p78JOeIEe2BlY0qK2Wfxrfv08bfjPOi0243pw5mZF2EmDCLKJEOO2G
         j9Z/e+6woB5iZrnBYT9TGY4N7I1N+3/rva140V2AUG8GuTzFQeL3RRUuL4F9yqR/JVvb
         eugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=KlBFFJDnLGGCBf6GaeYC8X8G0/zA4Nph4MCHc3VPQV8=;
        b=xxYBjv0ImHyemRMBOMQvHJavJoDRHaSb+kM6djc+5BLBP9760dfKclY0WCU57dC7U/
         vOKKH2CIZ0BT2JpeTukkz1ys43XbuhOxq5f0b9LHmZbeOTsVJHYsaGLb4ib98xwPzIxc
         3LmfsVkjFPUv0v4HN/LPamQ/e94/9zpGK3fG5LhOY72vTDMtr8dTkTyMaZuzbcIl6LjC
         hIij4IfvCD4Fr/fzqTU0Hr+ByynGkPjDXNNhZj53uLFJ9T4xipv2dQ8g0ocDCZrD5wH3
         mhmSUFaDIqlRQQnFfoB79QetQLPvhPChnjGD9O+v433zUaJjwLkA5otgP4S4XEkdg1Mo
         Rc1g==
X-Gm-Message-State: AOAM530Mt1nfpWbjriPuIAhs82lwhZurWD2WBpHQ6qc/tHhvUArM5X26
	cSPxXXRf8Xm3Jk37n1iMxkEbRln0EpI=
X-Google-Smtp-Source: ABdhPJwo8O6lrzZ4BNfhOafDPs9AdXI0q12LaCuQNEPHFkFsU2YYKzgSEFjfhpk1fq2G56d6QCTDmQ==
X-Received: by 2002:a37:b983:: with SMTP id j125mr1087937qkf.236.1633443505364;
        Tue, 05 Oct 2021 07:18:25 -0700 (PDT)
Received: from [192.168.2.251] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id r196sm9482837qka.119.2021.10.05.07.18.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 07:18:24 -0700 (PDT)
To: rouba zeitoun <roubazeitoun@gmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAHqKquxikMusGTodb+hEMtUwpdxAu=QXSvgFtSNWU4DsUkZiRg@mail.gmail.com>
 <9b016ef8-2417-c5b5-05d2-9ff57f859651@gmail.com>
 <CAHqKquzk42hw-hng32CsumPLbhOF2z=KTKtAZ7=u_z7SG+TKBQ@mail.gmail.com>
 <28473d50-9f0e-3fe2-776b-d7ebdddee1cc@gmail.com>
 <CAHqKquwnGY1afzpmo4kWZnyXxGrrKLY23zUkAH=wEcQ6tjtetg@mail.gmail.com>
 <287a52ab-a082-2e5b-01ef-cbda8f40b6e0@gmail.com>
 <CAHqKquw4eJj6tO5k2e+gJdWfzRNeQaAE6AATP-eCqfNq5M86Bg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <55e5a97e-aac4-a660-05ee-41be3d2933a9@gmail.com>
Date: Tue, 5 Oct 2021 10:18:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAHqKquw4eJj6tO5k2e+gJdWfzRNeQaAE6AATP-eCqfNq5M86Bg@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: W6742FGAD4B4PZ4TEGMHMRFG3HETKE6J
X-Message-ID-Hash: W6742FGAD4B4PZ4TEGMHMRFG3HETKE6J
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W6742FGAD4B4PZ4TEGMHMRFG3HETKE6J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMC0wNSAzOjUxIGEubS4sIHJvdWJhIHplaXRvdW4gd3JvdGU6DQo+IEdvb2QgbW9y
bmluZyBzaXIsDQo+DQo+IFRoZSBvdXRwdXQgb2YgInVoZF91c3JwX3Byb2JlIC0tYXJncyB0eXBl
PWIyMDAiIGlzOg0KPg0KPiBbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiA3LjUu
MDsgQm9vc3RfMTA2NTAxOyANCj4gVUhEXzQuMi4wLmdpdC03Ny1nOTE5MDQzZjMNCj4gW0lORk9d
IFtCMjAwXSBMb2FkaW5nIGZpcm13YXJlIGltYWdlOiANCj4gL3Vzci9sb2NhbC9zaGFyZS91aGQv
aW1hZ2VzL3VzcnBfYjIwMF9mdy5oZXguLi4NCj4gW0lORk9dIFtCMjAwXSBEZXRlY3RlZCBEZXZp
Y2U6IEIyMTANCj4gW0lORk9dIFtCMjAwXSBMb2FkaW5nIEZQR0EgaW1hZ2U6IA0KPiAvdXNyL2xv
Y2FsL3NoYXJlL3VoZC9pbWFnZXMvdXNycF9iMjEwX2ZwZ2EuYmluLi4uDQo+IEVycm9yOiBSdW50
aW1lRXJyb3I6IGZ4MyBpcyBpbiBzdGF0ZSA1DQo+DQo+IFNob3VsZCBJIHRyeSBhbm90aGVyIFVT
QiBjYWJsZT8gb3IgdGhhdCBkb2Vzbid0IG1hdHRlcj8NCj4NCj4gSGF2ZSBhIG5pY2UgZGF5IQ0K
Pg0KPg0KWWVzLCBwbGVhc2UgdHJ5IGEgZGlmZmVyZW50IGNhYmxlLS10aGUgb25lIHRoYXQgY2Ft
ZSB3aXRoIGl0IHdvdWxkIGJlIA0KaWRlYWwsIGJ1dCBhIGdvb2QtcXVhbGl0eSBVU0IzIGNhYmxl
IHdpdGggdGhlIGFwcHJvcHJpYXRlDQogwqAgY29ubmVjdG9ycyB3aWxsIGFsc28gd29yay4NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
