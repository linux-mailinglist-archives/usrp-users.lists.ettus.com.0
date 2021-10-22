Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3AB437EDA
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 21:52:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68019384F90
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 15:52:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kLQ40haV";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 54AC9384936
	for <USRP-users@lists.ettus.com>; Fri, 22 Oct 2021 15:51:47 -0400 (EDT)
Received: by mail-qk1-f179.google.com with SMTP id r15so5636000qkp.8
        for <USRP-users@lists.ettus.com>; Fri, 22 Oct 2021 12:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=8FgqGMsndibVhRSBCopcktegHqQ2I5UcRXodrZv8a/I=;
        b=kLQ40haV9GfCIZ3g3REppUYQg1zxiFH6EXr7V1ExsIu3U8/SheBCCWjQ8D69Us4ygx
         UT+2mkXgnAQbCi+v2pMP8Iqtl8KNAWh7gvw00mN8eYE7chHQdNN6kpBuD9eM6wI9kVfv
         NR3gY7JmAmpa071YYEa5xJwpil71MCRgnsjyKZqqD0FI//N/eZh4OB7JnooWrmALJUb2
         hRiovN5AKIFLNu012iMWkFjSUB1O5DX7NGxgfhNoeeG8dP9wW/g5GKsjEyL82zr/g0Bd
         2MLAlhnDKYmoC7JNyCkWgcs8OHT9pfuWmtri7xOBrSrPaEZNY+VgEqXukIITKCfAHrih
         mMRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=8FgqGMsndibVhRSBCopcktegHqQ2I5UcRXodrZv8a/I=;
        b=JBMxbhZHDVRSzfi0vz+vZoLU41SXNgBrquwW0py6p+prN/hFXIi0xGoZFY3igvwrSs
         M9FlcxaILZfdvxp6PaX1ZSGmOQoeYrAHhIlujgP0ed/Gl8lkHidQiC8ZMfSUxfooDWDp
         Q8i0ypFCvIuMQB0BI8oaWKfn4dbFa+bTK3c/6qfmhYYN5iyOCHUO63zWUuEseV1oOkhP
         3xl1BFdyCN03NybQF7VL5bLKYOBRmdCtRCBKMKCSZQx1oGVJK9W+6F5McIgMHUiGsZ2l
         28rs6frZ5Bvy3GgV4pcEtTxDjqx7nCUWQOlJBISL2RCwTFx8bq3RnDrmxSlPTLnkTxik
         lIgQ==
X-Gm-Message-State: AOAM531P5TMNEMth1+WoUs/BD6CTE8F0N/95WI3VQKSmTowvh0xS9mUo
	8DgirfDJjzXndCfGbjr2slJ2P7DdW70=
X-Google-Smtp-Source: ABdhPJyux/nkBy7z4V2RbC0nkvgdwJHfT06ZzIagQyMCP4T/fGjzPBP4MlnOowRxGY+/h+GvznoAKA==
X-Received: by 2002:a37:68c4:: with SMTP id d187mr1798074qkc.36.1634932306522;
        Fri, 22 Oct 2021 12:51:46 -0700 (PDT)
Received: from [192.168.2.251] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id t19sm4481310qtn.26.2021.10.22.12.51.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 12:51:46 -0700 (PDT)
To: isaac mario tupac davila <isacctd92@gmail.com>
References: <CAN+Y6vALVOHVGX+bT6EGDH6erEeSbK3mYMTABCRpEPFnQXdDSw@mail.gmail.com>
 <32778a04-eddc-32d4-7c93-23b24baa8669@gmail.com>
 <CAN+Y6vBOBQ=_7_cXtpu7vfAJmuo65-8Wi0aCPjU0hgUiEB0iOA@mail.gmail.com>
 <75f3809f-3c44-2e46-bbaa-bdf23b77c567@gmail.com>
 <CAN+Y6vA6o+OX48SEJUCpCtKua-R8gceQXuJu7o71ziJAAoLNXA@mail.gmail.com>
 <b0b6c4c0-4d4e-08cc-c785-cb1682646da3@gmail.com>
 <CAN+Y6vBJONWL7Sc3Su+y0u2nM4E4X7pBL8n6w5wiTRq5SDyWNQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <71dd07eb-ac55-4c6a-0a14-e928654ad43c@gmail.com>
Date: Fri, 22 Oct 2021 15:51:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAN+Y6vBJONWL7Sc3Su+y0u2nM4E4X7pBL8n6w5wiTRq5SDyWNQ@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: WSUQSJPLK5S3I2JGZ6UNMTFHCYLFPSEN
X-Message-ID-Hash: WSUQSJPLK5S3I2JGZ6UNMTFHCYLFPSEN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: discuss-gnuradio@gnu.org, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Installing Images and firmware USRPN200/N210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WSUQSJPLK5S3I2JGZ6UNMTFHCYLFPSEN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMC0yMiAyOjUzIHAubS4sIGlzYWFjIG1hcmlvIHR1cGFjIGRhdmlsYSB3cm90ZToN
Cj4gSGkhDQo+DQo+IFRoaXMgaXMgd2hhdCBhcHBlYXJzOg0KPg0KPiBpdHVwYWNAaXR1cGFjOi91
c3IvbG9jYWwvbGliL3VoZC91dGlscyQgLi91c3JwX2J1cm5fbWJfZWVwcm9tIC0tYXJncyANCj4g
ImFkZHI9MTkyLjE2OC4xMC4zIiAtLXJlYWQtYWxsDQo+IENyZWF0aW5nIFVTUlAgZGV2aWNlIGZy
b20gYWRkcmVzczogYWRkcj0xOTIuMTY4LjEwLjMNCj4gW0lORk9dIFtVSERdIGxpbnV4OyBHTlUg
QysrIHZlcnNpb24gNy40LjA7IEJvb3N0XzEwNjUwMTsgDQo+IFVIRF8zLjE0LjAuSEVBRC0wLWc2
ODc1ZDA2MQ0KPiBbSU5GT10gW1VTUlAyXSBPcGVuaW5nIGEgVVNSUDIvTi1TZXJpZXMgZGV2aWNl
Li4uDQo+IFtJTkZPXSBbVVNSUDJdIEN1cnJlbnQgcmVjdiBmcmFtZSBzaXplOiAxNDcyIGJ5dGVz
DQo+IFtJTkZPXSBbVVNSUDJdIEN1cnJlbnQgc2VuZCBmcmFtZSBzaXplOiAxNDcyIGJ5dGVzDQo+
IFtXQVJOSU5HXSBbVVNSUDJdIFVuYWJsZSB0byBpZGVudGlmeSBkZXZpY2UgLSBhc3N1bWluZyBV
U1JQMi9OLVNlcmllcyANCj4gZGV2aWNlDQo+IFtXQVJOSU5HXSBbVUhEXSBVbmFibGUgdG8gc2V0
IHRoZSB0aHJlYWQgcHJpb3JpdHkuIFBlcmZvcm1hbmNlIG1heSBiZSANCj4gbmVnYXRpdmVseSBh
ZmZlY3RlZC4NCj4gUGxlYXNlIHNlZSB0aGUgZ2VuZXJhbCBhcHBsaWNhdGlvbiBub3RlcyBpbiB0
aGUgbWFudWFsIGZvciBpbnN0cnVjdGlvbnMuDQo+IEVudmlyb25tZW50RXJyb3I6IE9TRXJyb3I6
IGVycm9yIGluIHB0aHJlYWRfc2V0c2NoZWRwYXJhbQ0KPg0KPiBGZXRjaGluZyBjdXJyZW50IHNl
dHRpbmdzIGZyb20gRUVQUk9NLi4uDQo+IMKgIMKgIEVFUFJPTSBbImhhcmR3YXJlIl0gaXMgIiIN
Cj4gwqAgwqAgRUVQUk9NIFsicmV2aXNpb24iXSBpcyAiIg0KPiDCoCDCoCBFRVBST00gWyJwcm9k
dWN0Il0gaXMgIiINCj4gwqAgwqAgRUVQUk9NIFsibWFjLWFkZHIiXSBpcyAiMDA6MDA6MDA6MDA6
NDA6MDAiDQo+IMKgIMKgIEVFUFJPTSBbImlwLWFkZHIiXSBpcyAiMTkyLjE2OC4xMC4zIg0KPiDC
oCDCoCBFRVBST00gWyJzdWJuZXQiXSBpcyAiMC4wLjAuMTA0Ig0KPiDCoCDCoCBFRVBST00gWyJn
YXRld2F5Il0gaXMgIjI1NS4yNTUuMjU1LjI1NSINCj4gwqAgwqAgRUVQUk9NIFsiZ3BzZG8iXSBp
cyAibm9uZSINCj4gwqAgwqAgRUVQUk9NIFsic2VyaWFsIl0gaXMgIjAiDQo+IMKgIMKgIEVFUFJP
TSBbIm5hbWUiXSBpcyAiIg0KPg0KPiBQb3dlci1jeWNsZSB0aGUgVVNSUCBkZXZpY2UgZm9yIHRo
ZSBjaGFuZ2VzIHRvIHRha2UgZWZmZWN0Lg0KPg0KT0ssIHNvIHRoZSBFRVBST00gb24geW91ciBt
b3RoZXJib2FyZCBoYXMgYmVlbiBtb3N0bHkgZXJhc2VkLsKgIFRoaXMgaXMgDQplaXRoZXIgYmVj
YXVzZSBpdCB3YXMgcmVwbGFjZWQgYnkgc29tZW9uZSAoYnJva2VuIGhhcmR3YXJlKSwgb3Igc29t
ZW9uZSANCih5b3U/PykgaGFkDQogwqAgcHJldmlvdXNseSB1c2VkIHVzcnBfYnVybl9tYl9lZXBy
b20gb24gaXQgaW4gYSBjYXJlbGVzcyB3YXkuwqAgVGhlIA0KIk1BQy1BRERSIiBmb3IgZXhhbXBs
ZSBzaG91bGQgTk9UIGJlIHdoYXQgaXQgaXMtLXRoYXQgcHJlZml4IGlzIE5PVCANCmFzc2lnbmVk
IHRvDQogwqAgTmF0aW9uYWwgSW5zdHJ1bWVudHMuDQoNCg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
