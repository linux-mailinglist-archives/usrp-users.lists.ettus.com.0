Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB051437C00
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 19:34:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 948673848EB
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 13:34:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g3+Ds71/";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 97460384025
	for <USRP-users@lists.ettus.com>; Fri, 22 Oct 2021 13:33:14 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id bj31so5431572qkb.2
        for <USRP-users@lists.ettus.com>; Fri, 22 Oct 2021 10:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=4h/yEzs8MiM09+vxfww21nJVMSDoFor7o/BCUzvMWlc=;
        b=g3+Ds71/yy3L+BorHREkz8VNs2tufID+r3EpZvYNDOHb9/s5DThhmrkV+bN3DpwtWw
         YwJqvVY0k+Keu+jLH0WSn9BfxqEr167ihjE+p5sAB1X6NxdyzydkGc0eDYiygLoXlKLA
         nX35hyYGE5DCgBeebv/hWNrFzn/Cv+33zXmu/tWXEcyog0WHBRNdicz1I6Q89oW0atf5
         /tlP5VyFZIJELyGbtIe0qz+OzyBWkCoKv+FUXprvEl8WoR7tbpeKsjtFL0cLhwxoZHLh
         CyTlTnmSkcqhaZbRdooRLGUdZxoQw2K4GUl9wXqz7S/Zl/bfpciv8pO6AUeN/PdUeBCh
         Sg6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=4h/yEzs8MiM09+vxfww21nJVMSDoFor7o/BCUzvMWlc=;
        b=CuotLOdzjlKNt6NvyjiFf8gWvPyDV7hziyl/dYkrzvq1frL8+Vgd7Klr8E9FjqEvBh
         5cg1sj+AOP/cDimad5zYntP+MHnLktmvoSFD/jnAh+hsZG2wnKeWcYCJtvcP7mVJu5bX
         7gHVVvoduaHJgNcvHOwS3TR864uZq5dK+Y1CQuF3o7yYR5WiG29oXsYbGXn+Edk7ED/f
         lH8TkLPj5xshBwoubS8A12u73l5Va7FNkOwtp06z2XGa2NVgZ7rN+7bNFaSQh+cPnirK
         rgx5HZwHZ4gi/Xoe7G4jpkPy7ra225sv77bBV3nwoDkuOtFFjQNRJhVpKCD0UBCaRR6o
         Db8A==
X-Gm-Message-State: AOAM533NPvQ1M+OTUjcks8p5A2zFFmvg2CZBDa7C1tOelWwm0MrujLy0
	iNw3p+QDfB32iAS+EBhbDQW9SXQjSmw=
X-Google-Smtp-Source: ABdhPJwAoprK2LRRcSjkxGA4wDATZvUzySCbGw5ipATfxH57QTIt0YX8VUVPCEmlj+cOS1tA2gLxUQ==
X-Received: by 2002:a37:a745:: with SMTP id q66mr1148063qke.461.1634923994357;
        Fri, 22 Oct 2021 10:33:14 -0700 (PDT)
Received: from [192.168.2.251] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id s17sm4394301qkj.55.2021.10.22.10.33.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 10:33:14 -0700 (PDT)
To: isaac mario tupac davila <isacctd92@gmail.com>
References: <CAN+Y6vALVOHVGX+bT6EGDH6erEeSbK3mYMTABCRpEPFnQXdDSw@mail.gmail.com>
 <32778a04-eddc-32d4-7c93-23b24baa8669@gmail.com>
 <CAN+Y6vBOBQ=_7_cXtpu7vfAJmuo65-8Wi0aCPjU0hgUiEB0iOA@mail.gmail.com>
 <75f3809f-3c44-2e46-bbaa-bdf23b77c567@gmail.com>
 <CAN+Y6vA6o+OX48SEJUCpCtKua-R8gceQXuJu7o71ziJAAoLNXA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <b0b6c4c0-4d4e-08cc-c785-cb1682646da3@gmail.com>
Date: Fri, 22 Oct 2021 13:33:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAN+Y6vA6o+OX48SEJUCpCtKua-R8gceQXuJu7o71ziJAAoLNXA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 6EHYWUYJ3SLPBIOUBVA6G75ZBRKLVMX4
X-Message-ID-Hash: 6EHYWUYJ3SLPBIOUBVA6G75ZBRKLVMX4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: discuss-gnuradio@gnu.org, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Installing Images and firmware USRPN200/N210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6EHYWUYJ3SLPBIOUBVA6G75ZBRKLVMX4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMC0yMiAxMTozMyBhLm0uLCBpc2FhYyBtYXJpbyB0dXBhYyBkYXZpbGEgd3JvdGU6
DQo+IFVzaW5nIERldmljZTogU2luZ2xlIFVTUlA6DQo+IMKgIERldmljZTogVVNSUDIgLyBOLVNl
cmllcyBEZXZpY2UNCj4gwqAgTWJvYXJkIDA6IE4/Pz8NCj4gwqAgUlggQ2hhbm5lbDogMA0KPiDC
oCDCoCBSWCBEU1A6IDANCj4gwqAgwqAgUlggRGJvYXJkOiBBDQo+IMKgIMKgIFJYIFN1YmRldjog
QmFzaWNSWCAoQUIpDQo+IMKgIFRYIENoYW5uZWw6IDANCj4gwqAgwqAgVFggRFNQOiAwDQo+IMKg
IMKgIFRYIERib2FyZDogQQ0KPiDCoCDCoCBUWCBTdWJkZXY6IFVua25vd24gKDB4ZmZmZikgLSAw
DQoNCklmIHlvdSBsb29rIGhlcmU6DQoNClVzaW5nIERldmljZTogU2luZ2xlIFVTUlA6DQogwqAg
RGV2aWNlOiBVU1JQMiAvIE4tU2VyaWVzIERldmljZQ0KIMKgIE1ib2FyZCAwOiBOPz8/DQogwqAg
UlggQ2hhbm5lbDogMA0KIMKgIMKgIFJYIERTUDogMA0KIMKgIMKgIFJYIERib2FyZDogQQ0KIMKg
IMKgIFJYIFN1YmRldjogQmFzaWNSWCAoQUIpDQogwqAgVFggQ2hhbm5lbDogMA0KIMKgIMKgIFRY
IERTUDogMA0KIMKgIMKgIFRYIERib2FyZDogQQ0KIMKgIMKgIFRYIFN1YmRldjogVW5rbm93biAo
MHhmZmZmKSAtIDANCg0KWW91IGNhbiBzZWUgdGhhdCBpdCdzIHVuYWJsZSB0byBjbGVhcmx5IGlk
ZW50aWZ5IHdoYXQgdHlwZSBvZiBkZXZpY2UgDQp0aGlzIGlzLsKgIFRoaXMgaW1wbGllcyB0aGF0
IHRoZSBtb3RoZXJib2FyZCBFRVBST00gY29udGFpbnMgaW52YWxpZCBkYXRhLg0KDQpXaGF0IGhh
cHBlbnMgaWYgeW91Og0KDQovdXNyL2xpYi91aGQvdXRpbHMvdXNycF9idXJuX21iX2VlcHJvbSAt
LWFyZ3MgImFkZHI9MTkyLjE2OC4xMC4yIiAtLXJlYWQtYWxsDQoNCk9yIHN1YnN0aXR1dGUgd2hh
dGV2ZXIgSVAgYWRkcmVzcyB5b3VyIGRldmljZSBoYXMuDQoNCg0KDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
