Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E86530EC2
	for <lists+usrp-users@lfdr.de>; Mon, 23 May 2022 14:59:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE8D6384754
	for <lists+usrp-users@lfdr.de>; Mon, 23 May 2022 08:59:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653310756; bh=2D8PN1ojeduGKuQdBvojrEOGQFgxlAKPpiKssdKBZew=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hWMbjwdvtYzbFO+VwgtWuPAWTqzoCmyczrtA35Hb4XqLc7WuBSjmAJS8/PEkdAiXm
	 AMdN3w3rnPz7f1bwv8WhRMKVkTE0vC99to3B/HTH+rWMvx8/vUN9w9gJTKaaZaDIo/
	 lZpUBmf+7RXwXd4irSl6iLyDel/Nh1OtZZ5OL71cokQqJFkwhGlUWHNMRAzQWVm7xu
	 u13TVhV3NLhpjO7kTpxmnfXq1NoNU+uZixf/zejfSvVyZjU5QkVi/plG/5KijTK1qk
	 tCH+Ugu/gVNZAwWDDoP/Aj/nHCDLUixgvBPc1Y6apQWNjyL5PgD8AEe6uvj4y8BaZV
	 2zA2S+pob4hjA==
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 55CDA3844D2
	for <usrp-users@lists.ettus.com>; Mon, 23 May 2022 08:58:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gmeogtpk";
	dkim-atps=neutral
Received: by mail-qk1-f178.google.com with SMTP id 135so10157317qkm.4
        for <usrp-users@lists.ettus.com>; Mon, 23 May 2022 05:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=nz9D1bhNe+r1cTrL8pSSuNVwCaSQvOj9BZiQIv7m+PE=;
        b=gmeogtpkFEJuF3CUQZtmpcq9PhVgbTZnw3qM1CY63Yrdfc1FTX1gnnutn+FWNwBtaQ
         CKH3E+NLEsoz8cFX2nx0qBMONqe/SDdVKqsnebaoyOmNJj+7Kc/jYyKpt2SNMzwxDgLb
         prLVQ2V80xuoCdH5Lo6cKb4F1daIkqzmd6md8/Ae/wnEJeahkV1NZzedzcWVUXwfuykB
         1rTXH2So21FYvKc+n1lae7z+e3NA6khDBlxHhevuIlkKYSZlIKErSkzdZhSzcraSBH5S
         au1+nL70DAuUYsU8yNYlY2/hB8JzMdhirg5Uvp5544+9ZXkAeORAd4jQ2oV2CE7wpJ3O
         L7kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nz9D1bhNe+r1cTrL8pSSuNVwCaSQvOj9BZiQIv7m+PE=;
        b=iSa+At4Slsi7MCNcDOgd/+f434f2TSvtmttDWHnSv4XzDTKGC1k4vSmUJslNeJ/LQy
         2ZXOmiEb6D432a9H+e/kH0pDmV7u21WNiG6Qf6y4gsRTOXiav9J8xvoLCnlqyKEHhvxy
         zMhzo8CdtD0gwVMEJCAqe//O+n/Bjn/y4hNA/QJe7kHZrBZYxiJiwHTetigRjWoqXhDJ
         /0L3DWgh9LGILHlg/aePAlttJrZMo4QyP4DbxV41vaENYInwAehHzjeURa1aA0uadHDV
         Zip3Y82tT0KADlPcusybYbXcRxalAP/5JwNAQgPWWDF3aPPpGN2qXGljPE5JlsRQRRij
         O6rg==
X-Gm-Message-State: AOAM532ancohgFT2/R+9MW14Il2kFt5LKcx+GQp0xbVbVwFoU2ehY5zl
	tMwjuiCHtQ7JsW85fQpyobEYoiUZGMA=
X-Google-Smtp-Source: ABdhPJyxKL1CxGxZY7A3DpTThI9fmXHG+OviJ/v0AqtDDPPUlsDancsp8hgGIlDnfnVPZVssrTmmVA==
X-Received: by 2002:a37:6d5:0:b0:6a0:5e23:7c93 with SMTP id 204-20020a3706d5000000b006a05e237c93mr11800368qkg.721.1653310694581;
        Mon, 23 May 2022 05:58:14 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id l7-20020ac80787000000b002f39b99f670sm4231192qth.10.2022.05.23.05.58.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 05:58:14 -0700 (PDT)
Message-ID: <1395205c-8b1e-e393-d44b-54c872350047@gmail.com>
Date: Mon, 23 May 2022 08:58:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHqKquxY=JJN+foCxXd013ONd7gBxxO40FZ=AEFyKE_btJETAg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHqKquxY=JJN+foCxXd013ONd7gBxxO40FZ=AEFyKE_btJETAg@mail.gmail.com>
Message-ID-Hash: Q4S2O23L224G23DS2XWHCI7N5S2POXC4
X-Message-ID-Hash: Q4S2O23L224G23DS2XWHCI7N5S2POXC4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: install usrp n210 packages
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q4S2O23L224G23DS2XWHCI7N5S2POXC4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0yMyAwODo1NSwgcm91YmEgemVpdG91biB3cm90ZToNCj4gSGVsbG8gVVNSUCBT
dXBwb3J0DQo+DQo+IEkgaG9wZcKgdGhpcyBlbWFpbCBmaW5kcyB5b3Ugd2VsbA0KPg0KPiBJcyBp
dCBwb3NzaWJsZcKgdG8gaW5zdGFsbCBVU1JQIE4yMTAgcGFja2FnZXMgb24gYW4gb2Ryb2lkPyBp
ZiBzbywgDQo+IHBsZWFzZSBjb3VsZCB5b3Ugc3VwcG9ydCBtZSB3aXRowqB0aGUgbmVlZGVkIHN0
ZXBzLg0KPg0KPiBSZWdhcmRzLA0KPiBSb3ViYSBaZWl0b3VuDQo+DQpGaW5kIGFuZCBpbnN0YWxs
IGEgcmVjZW50IFVidW50dSBpbWFnZSBmb3IgdGhlIE9kcm9pZCwgdGhlbiB1c2UgImFwdCIgdG8g
DQppbnN0YWxsIHRoZSB1aGQgYW5kIHVoZC1ob3N0IHBhY2thZ2VzLg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
