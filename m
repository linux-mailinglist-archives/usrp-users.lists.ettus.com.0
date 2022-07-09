Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A85856CAFB
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 20:02:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22D7D383E84
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 14:02:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657389747; bh=6dfWjhv/E1o3Wu/dIKtHy/mAZ7qZ2VsKmQSNgUEaBTk=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XBsoq2KbdaiV7WINMU7lhrCooJCNgZtJ2MdDRq19vhb2IBwqm80PHdc6kQ1cV2mZT
	 gxkcCp2YBctX0KHJGkNRnBsfP8vMcpFcP0cpmd2vVDqlybR7KZGmY51Ccnzt5o0UYP
	 HtVdYa+5FUQozHZR8OVznAFcyIJ2yutv2f8km2FYtgQmBWdOYAH47MksVNJamhtHd7
	 +IOk+l3j9VU0XzVaEK8kXTJq6ojBdhPCfGd1xKv2o+3M1etA2c2uUrMnbXjOAPNEGR
	 GH3jbk5bmqqxJaNSCw+pt9sPkDQgfDRHdDiw2Es0LxZHMJVQUZ7MWao+3SMBxvNwci
	 T/heg3IamJTlg==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 68437383E50
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 13:59:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RWG1mHbn";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id 23so2247871qtt.3
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 10:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qs3/cVRcyih5df/M1DklWqECHODgEwwcLzExTqgOrZU=;
        b=RWG1mHbng5er5dz1/h8qJ01LKikEB2qtDHbFFpx97fzjKGziIAQBzzDMhvzy2qNuUT
         iaWHWPcSK9mphwxKMIG18bvGZq/Yn+613fJ5Rp77X+CpskX269yfxGgzbBXJtR59d8xn
         bxMkQkIuAtymO0VusadSb32kYIYtBd/bipNhn6XToGfoummDJbzKhO+tyl9GVgQwolTH
         bn4Prp65o/OPZXXU0cXCh+HExL5JWflrRihdwQutTuJgY3rUirsWn+2QyoqowAlOdh+V
         4NmAF1ehV5G1AxNnVbfxnl89y+wS9iPDjbfy6Z0NYGICdOPn3c9Yh6XEUdww20sjSLw5
         TbCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qs3/cVRcyih5df/M1DklWqECHODgEwwcLzExTqgOrZU=;
        b=dq4YNNDizvzqmm/6QfoQ+LOUn6g1ihLrxkBSv8HpP+8mXejfUViZiKnnFtD18omthw
         X0W2+RFzbwBDLbfLsnOyeHeWK07rzMld8yPeECLcPpCa5tvyL0k3N94GQ+rEMkY3GQwW
         /iKSBd02DD/hjJL8sT2CMSMv3LCgL5GoLghkQihQ8cPJ3+TCi9cPr9K1xSTeTNte0jir
         Ob9Y1NfNgW1/W80LzFtKYHrJZ7HencYtYcnKqJ9GIRvkkoT6liOJF4xyNiQn3slmWIXW
         xOoUi4goDD87Ck2F5E2Lce8kcE5bngLOh2YiKrlDknfN++LwOSJtS9ApjRd5CnfUJb6p
         Bwvw==
X-Gm-Message-State: AJIora8dr34bSLqQKlc+9FeFrD5EyqbjFNbOLFDb6p1OHmOn9rTQiP+j
	0ml4QxJylmSG7K3Mrxhmj6Ot64Q1TpE=
X-Google-Smtp-Source: AGRyM1ve3LesKP/eASZxO83ldmmfw0kbJgQmHz/HONC7QvLkt3uq+FRmfo5Rf8nErqx8QxpxZfnlXA==
X-Received: by 2002:a05:6214:d62:b0:472:f9c3:c9be with SMTP id 2-20020a0562140d6200b00472f9c3c9bemr7728603qvs.70.1657389589779;
        Sat, 09 Jul 2022 10:59:49 -0700 (PDT)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id f11-20020ac859cb000000b0031e7b06edbasm1833137qtf.67.2022.07.09.10.59.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 10:59:49 -0700 (PDT)
Message-ID: <4d1cbfc5-957d-ee5c-4b16-70419ddca6e0@gmail.com>
Date: Sat, 9 Jul 2022 13:59:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Nikos Balkanas <nbalkanas@gmail.com>
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
 <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
 <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com>
 <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com>
 <CAA=S3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gmail.com>
 <3ea0b7a3-5b51-b9d0-40a1-c7387dea3b2f@gmail.com>
 <CAAxXO2HSPkfcAoXnLXUvarLGoAzgPUfr9SWaNP3Vp38gFmPmww@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2HSPkfcAoXnLXUvarLGoAzgPUfr9SWaNP3Vp38gFmPmww@mail.gmail.com>
Message-ID-Hash: Q77QB3NU3F4EAWSXY5PPBWEKKA3OYHXA
X-Message-ID-Hash: Q77QB3NU3F4EAWSXY5PPBWEKKA3OYHXA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sp <stackprogramer@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q77QB3NU3F4EAWSXY5PPBWEKKA3OYHXA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNy0wOSAxMzoyMiwgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+IEhpIHNwLA0KPg0K
PiBXaGVyZSBkaWQgeW91IGZpZ3VyZSBvdXQgdGhhdCBnbnVyYWRpbyBpcyBsaXR0bGUgZW5kaWFu
Pw0KPiBJIHNlYXJjaGVkIHRoZWlyIHNvdXJjZSBjb2RlLiBJbiBhIGZldyBwbGFjZXMgbGlrZSBw
bXRfc2VyaWFsaXplLmgNCj4gdGhleSB1c2UgYmlnIGVuZGlhbi4NCj4gSW4gd2F2ZmlsZS5jYyB0
aGV5IHVzZSBkaWZmZXJlbnQgY29kZSBmb3IgYmlnIG9yIGxpdHRsZSBlbmRpYW4uDQo+IGRlY2lk
ZWQgb24gICBnciBjb25maWd1cmF0aW9uLi4uR1JfSVNfQklHX0VORElBTg0KPiBJbiBvdGhlciBw
bGFjZXMgdGhleSBub3RlIHRoYXQgdGhleSBtYXkgYmUgd3JvbmcuLi5jcmMzMl9iYl9pbXBsLmNj
DQo+IFRoZXkgYWx3YXlzIHBhc3MgZW5kaWFubmVzcyB3aGVuIHJlcGFja2luZyBiaXRzDQo+DQo+
IFRvIGNoZWNrIGlmIHlvdSBoYXZlIGEgcHJvYmxlbSwgcnVuIHRoZSBjZmlsZSBvdXRwdXQgZnJv
bSBnbnVyYWRpbw0KPiB0aHJvdWdoIGEgc3BlY3RydW0gYW5hbHl6ZXIuDQo+IElmIHlvdSBnZXQg
YW4gImludmVydGVkIiBzcGVjdHJ1bSB5b3UgaGF2ZSBhIHByb2JsZW0uIEVsc2UgeW91IGFyZSBm
aW5lOikNCj4gSSBhbSBub3QgdXNpbmcgZ251cmFkaW8sIG9ubHkgdWhkIHdpdGggYW4gWC0zMDAu
IEkgYW0gd29ya2luZyBiaWcNCj4gZW5kaWFuIGFsbCB0aGUgd2F5IGFuZCBnci1mb3NwaG9yIGxv
b2tzIGZpbmU6KQ0KPiBJZiBnbnVyYWRpbyBnZXRzIGlucHV0IGRhdGEgZnJvbSBhIHVzcnAsIGlz
IGl0IHN0aWxsIGxpdHRsZSBlbmRpYW4/DQo+IFRoZXkgaGF2ZSBjb2RlIGZvciBzd2FwcGluZyBl
bmRpYW5lc3MsIGVuZGlhbl9zd2FwX2ltcGwuY2MsDQo+IGJ1dCBoYXZlbid0IHNlZW4gaXQgdXNl
ZCBhbnl3aGVyZSBpbiB0aGVpciBzb3VyY2VzOigNCj4NCj4gSFRIDQo+IE5pa29zDQo+DQo+DQpH
bnUgUmFkaW8gZm9yIHRoZSBtb3N0IHBhcnQgdXNlcyB3aGF0ZXZlciBpcyB0aGUgQ1BVLW5hdGl2
ZSBmb3JtYXQgb24gDQp0aGUgbWFjaGluZSBpdCdzIGV4ZWN1dGluZyBvbi7CoCBJdCBjYW5ub3Qg
YmUgb3RoZXJ3aXNlLCBleGNlcHQgYXQgdGhlIGVkZ2UsDQogwqAgb3Igd2hlbiBkYXRhIGFyZSBz
ZXJpYWxpemVkIGZvciB1c2UgaW4gdGhpbmdzIGxpa2UgbWVzc2FnZXMgYW5kIA0KbmV0d29yayBz
dGFja3MuIEJ1dCAqc2FtcGxlcyogYXJlIGFsd2F5cyByZXByZXNlbnRlZCBpbiB0aGUgbmF0aXZl
LUNQVSANCmZvcm1hdCBpbiBHbnUgUmFkaW8uDQogwqAgSWYgdGhpcyB3ZXJlIG5vdCB0aGUgY2Fz
ZSwgdGhlbiBuYXRpdmUgQ1BVIG9wZXJhdGlvbnMgY291bGQgbm90IHdvcmsgDQpvbiB0aGF0IGRh
dGEuwqDCoCBNT1NUIG1hY2hpbmVzIHRoZXNlIGRheXMgYXJlIGxpdHRsZS1lbmRpYW4gKHg4Niwg
ZXRjKS7CoMKgIA0KU29tZSB2ZXJzaW9ucyBvZg0KIMKgIEFSTSBoYXZlIGJlZW4gY29uZmlndXJh
YmxlIGZvciBiaWctZW5kaWFuLCBidXQgbW9zdCBleHRhbnQgDQppbXBsZW1lbnRhdGlvbnMgdXNl
IGxpdHRsZS1lbmRpYW4gZm9ybWF0Lg0KDQpUaGluZ3MgbGlrZSAiZmlsZSBzaW5rIiBzaW1wbHkg
d3JpdGUgb3V0IHRoZSBDUFUtbmF0aXZlIGZvcm1hdCBmb3IgDQp3aGF0ZXZlciB0aGUgZGF0YSB0
eXBlIGlzLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
