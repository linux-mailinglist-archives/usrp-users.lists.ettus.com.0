Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A4051497E
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 14:36:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8310384815
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 08:36:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651235786; bh=Jug0xs/LR3SUVAOIcSWwBMghWfGUko+ZvzRfJ9kee+o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LjzncHA6c3yy/goFOL2trUwndccs+TmKqiLICRvogNTsHUNAujMdQV1Jt0Or0EGSp
	 Q4oiebnJ6tw83aONrryfHRSY3iF+VJCb670YB1kwa+R+9kqF3bzX3/nYu/4mCquaqt
	 1SzJu2HRR0zRwew3Yu4Fqlf47DyuDvz0LT1MTNS8oVhMz/Vdq4fc2geZl4rlyYR6ns
	 3dqPOiykuxR4yq3OlG8FAvK9oQM/LHn+PivIlwgJ2J2wNY4xjKB+ainJ48nAFo2KCD
	 g152neee4rao7V9cPj9NDqe7mVdTeAnfACmIrVTPVV7a130Q/8Wotv4sWHJZJETUlm
	 IPELWpFDGuo7g==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id F291F384901
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 08:35:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Luc7sh8t";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id fu47so5541134qtb.5
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 05:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=FSJV28FdFSBEzFQHH9SouKa1zbE7Jk7KTabsmBdFmts=;
        b=Luc7sh8twEp43qCDRnlCo/bVJlMVYgHMV8rV3CLNuWkTtM1mIHySYQLkzOOLTICQXp
         FRDFG8/lzXu+3PkP+IZvqs+2H4BxSGqshm4mch8KxwpwX2CdvwClUg1XU+XPRQkAUN3y
         LTrqNa2v+eEpVjbxHl8N/LXhoQKCxtB7xQdm5E2PkKPp/iUbd8p3pmGYsmRuRCKczbDi
         nZrznGfCPEfekGBIb8ROEbWCQbyXovwM06qjCiYk5GDWVYd4yweJXfrKjJl/pQg6UY/t
         HjqMR6nbBJpwBEIJ1dHOvxYA6QRsegsFH4SyuU+OO5hYW61zgwAOA7sm5vvR/E7rv+ch
         At+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FSJV28FdFSBEzFQHH9SouKa1zbE7Jk7KTabsmBdFmts=;
        b=I2ebRYe3hS2HucR8QYgkGm1/NgsFUAY06mjZP2sgQcR8adECtNT8UXaNbwOiuDpPAu
         C3rL1K8C6OjD3BljW9SMKKDQUiMly0ifcjJkN0oIbk9Dub9BhXBi89Hoqok+2bNO3WI2
         2xwYd0P476J01HlCKewPKSD5jvPZS+b9QU57xkpsVu3FasTs0ntGgMNuh/FFXBu9t2vz
         WwqETfpUb0Rg/7WQSJn/ElLsRAXYB8c830/xTI0E4uZX8x/q70gwiGsxOB6lzYtrbdmu
         ywPzP5/3Wc3B3UO/KYsZgs5PpT285rwFt7pPqgnX+ZGiBtHG7LFPgQPVxRzH5R4OXlDI
         vJmA==
X-Gm-Message-State: AOAM533VDB7zPSqOgfTzqOJbzL5+cgde4z1F0/tmXl9LaA1soneQzXN9
	HcpL9pq0kgjuLdUemuz1+EhuYoGbXg4=
X-Google-Smtp-Source: ABdhPJx3TYzdkXWmkUmRoIBF9sUO9RQfivuln5txd3XgxnfepG/LQLcjb8mICalQmwWZX7PuG15OWA==
X-Received: by 2002:ac8:5d8a:0:b0:2f3:5f35:abfe with SMTP id d10-20020ac85d8a000000b002f35f35abfemr22769817qtx.517.1651235722245;
        Fri, 29 Apr 2022 05:35:22 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id p12-20020a05622a00cc00b002ebdd6ef303sm1835486qtw.43.2022.04.29.05.35.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 05:35:21 -0700 (PDT)
Message-ID: <c2bd2001-0e9b-401e-c84b-29b8e9692f1e@gmail.com>
Date: Fri, 29 Apr 2022 08:35:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFPzw1=vVh+cuxa5LvE7XD4HD-+sNbewsK6XsRf4PogtnThwjQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFPzw1=vVh+cuxa5LvE7XD4HD-+sNbewsK6XsRf4PogtnThwjQ@mail.gmail.com>
Message-ID-Hash: ZDKJWLQP3XMZRXDWAPBGX6MMY3MODSJE
X-Message-ID-Hash: ZDKJWLQP3XMZRXDWAPBGX6MMY3MODSJE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 laptop conexion
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZDKJWLQP3XMZRXDWAPBGX6MMY3MODSJE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNC0yOSAwNToyOCwgQW5hYmVsIEFsbW9kb3ZhciB3cm90ZToNCj4gR29vZCBtb3Ju
aW5nLA0KPiBJIHdvdWxkIGxpa2UgdG8gY29ubmVjdCB0d28gVVNSUCB4MzEwIGNhcmRzIHRvIGEg
SFAgWmJvb2sgMTUgRzMgDQo+IGxhcHRvcCwgd2hpY2ggaGFzIG9ubHkgb25lIFJKNDUgcG9ydC4g
SSBuZWVkIGl0IHRvIG9wZXJhdGUgYXQgbWF4aW11bSANCj4gc3BlZWQgKDIwME1TL3MpLCB3aXRo
IHR3byAxMEdCIGV0aGVybmV0IHBvcnRzLCBidXQgSSBjYW4ndCBmaW5kIGEgd2F5IA0KPiB0byBk
byBpdCwgaXMgdGhpcyBjb25maWd1cmF0aW9uIHBvc3NpYmxlLCB3aGF0IHdvdWxkIGJlIHRoZSBy
aWdodCANCj4gb3B0aW9uIHRvIGNvbm5lY3QgdGhlIHR3byB4MzEwIHRvIHRoZSBsYXB0b3AgYW5k
IHdoYXQgd291bGQgYmUgaXRzIA0KPiBtYXhpbXVtIHNwZWVkPw0KPiBUaGFua3MgaW4gYWR2YW5j
ZS4NCj4gUmVnYXJkcywNCj4gQW5hYmVsDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NClRoYXQgbGFwdG9wIGhhcyBhIFRodW5k
ZXJib2x0IDMgcG9ydCwgYW5kIHRoZXJlIGFyZSBUaHVuZGVyYm9sdCAzIDEwR2lnIA0KYWRhcHRl
cnMgb24gdGhlIG1hcmtldCwgYnV0IG15IHN1c3BpY2lvbiBpcyB0aGF0IHRoZXJlJ3MgdmVyeSBs
aXR0bGUgDQpleHBlcmllbmNlIHdpdGggdGhlbQ0KIMKgIGluIHRoaXMgYXBwbGljYXRpb24uDQoN
ClF1aXRlIGFwYXJ0IGZyb20gdGhhdCwgaXQncyB1bmxpa2VseSB0aGF0IHlvdXIgbGFwdG9wIGhh
cyBlbm91Z2ggQ1BVIA0KaG9yc2Vwb3dlciBhbmQgbWVtb3J5IGJhbmR3aWR0aCB0byBzdXBwb3J0
IHR3byBzdHJlYW1zIGF0IDIwME1zcHMtLWV2ZW4gDQpqdXN0IHJlY29yZGluZyB0byBtZW1vcnku
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
