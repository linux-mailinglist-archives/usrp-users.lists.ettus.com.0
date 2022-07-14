Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 823065757D4
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jul 2022 00:58:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B570383F79
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 18:58:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657839502; bh=RRnVQiAd0+4/67g6bytT6L1mWH47AuRG/qcjboLwZWk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LV11SqVkvDRDWxDsw2IGsK/C4IL6llJySv3KqICyxAfvLhivshVzwB70G55ZRXI0r
	 TGLGQor5Tlh9gWs8/ynmMbeFDqQLHzoyRObXFsggQoQHvt3cOWj+sEcpEmHPFbDnAz
	 0J48AQh/Rc2HUSG0NLeJtcFFy+4FzMlqf/D2GfS/Ugj3x2ua75swtuI4IThqwFjvIk
	 bJ7CsKC4FijfWQu1N3MetH6g+eb4YaBC9rLA+3j6eK9ViIyQ7m2trh1umNUg/iCv+m
	 k3Qx60A61FIeuWVgEqnnjUG0LOpo4MV2EUWZTvqPaYinwqtk9ZwbvAXR+AA18fSzwK
	 5IQyb6VsCD8/w==
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 09289383F03
	for <usrp-users@lists.ettus.com>; Thu, 14 Jul 2022 18:57:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="GeRqO/4V";
	dkim-atps=neutral
Received: by mail-wr1-f46.google.com with SMTP id bk26so4441298wrb.11
        for <usrp-users@lists.ettus.com>; Thu, 14 Jul 2022 15:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=S23R3GdtJLfGVjIcf9bmsmzddRc4B9remYo6H8ILauk=;
        b=GeRqO/4V320x2HXEWtLrzn/5Gccf2llcunMlQYiVphS6PKZoPpfv9/9MMPyOc8H99G
         pTduJZrB3e2FkXcPjNoX3KceAtNDQtp9gZKb7Q8faLPs74CwkrFVEMt6tBl+Dj+OvpIH
         jAGuT0zI4s5+2a+Y9Dpp9s8u1/qvB07dAb0r/4lkWDshkpNLdYinslg7C3I5OcX0SskB
         iQSf8L9C0CGFqGCTrEHFN7EL3ktE1tg3QoG075O9MMdCCVJm8+fxkmGQM7B1QbcDnZeB
         QAPiUX15XAMAOATE4V00aPz4QicddH98PPIotaQeejn7BNhIfJPiCoQzAI5JoQFNRgew
         4OLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=S23R3GdtJLfGVjIcf9bmsmzddRc4B9remYo6H8ILauk=;
        b=34n8rPBQ0H0D+ru0lKTYCUd4ndeLGmPS5K7N8muK/I7rsECx+Tcin9BK0Hnt7G26AV
         G4RlmOudTtYwyiAOPsWCZrHtvL7pKP3XlF9+Cztj24S6S7mWQE9XBpmFhoZsCK3BYBa9
         1GFmp9DmRES0AsL33Aw3EEnM/pA8Fap4SPn8qwd1DsI9KnC14m4QaJbGDia/gNrSEyuB
         RCdyEpLSZ3xEuAY07FYGeD/a6l8plAFm5XA6UM/EiRABOaqYZM84ubtpk/ufAMVkVzuN
         /4kjY/nYh9YEqCwgtah5yVBDP3MpY9GeS29d2vOTwzl/hgGLaJw7rloflGVwNEuLnDQt
         cY6w==
X-Gm-Message-State: AJIora/+0q/sKJvu3Uq2/v1hRJrnY86KLTgj36lBDE9bLLpvCJtIWUb9
	UMnpoojpyIjrMDOQ1cpyvsPRvsypVY4ZPTb/
X-Google-Smtp-Source: AGRyM1sXxdLoXzf7t93WIFYkqemRhCMMZLaa+EI+2GkfQV3GCf/i6nEy7cSCTNhrsWItS7fXe51Rvg==
X-Received: by 2002:adf:e6c9:0:b0:21d:7f65:f1e7 with SMTP id y9-20020adfe6c9000000b0021d7f65f1e7mr9896759wrm.151.1657839445728;
        Thu, 14 Jul 2022 15:57:25 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3879:c9fc::d8d? ([2001:9e8:3879:c9fc::d8d])
        by smtp.gmail.com with ESMTPSA id d3-20020adffd83000000b0021da61caa10sm2310787wrr.56.2022.07.14.15.57.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 15:57:24 -0700 (PDT)
Message-ID: <611a069c-01be-4886-2eb5-61dcddbf14b9@ettus.com>
Date: Fri, 15 Jul 2022 00:57:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR12MB387160D39097A5A043F6B443AF889@MN2PR12MB3871.namprd12.prod.outlook.com>
 <3c5ed3e4-8df8-e0b6-0d03-14e790e19c25@gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <3c5ed3e4-8df8-e0b6-0d03-14e790e19c25@gmail.com>
Message-ID-Hash: GMLKBBDUGVGBRNFUXYABCAHBW24QFCQL
X-Message-ID-Hash: GMLKBBDUGVGBRNFUXYABCAHBW24QFCQL
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: weird usrp coredump
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GMLKBBDUGVGBRNFUXYABCAHBW24QFCQL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QnV0IHRoYXQgYXBwbGljYXRpb24gaXMgdGhlIFVTUlAgYmxvY2sgb2YgR05VIFJhZGlvLCBzbyB5
b3UncmUgYXQgbGVhc3Qgbm90IHRoZSBmaXJzdCB0byANCnVzZSBpdCA6KQ0KDQoNCldpbGQgc3Rh
YjoNCg0KU28sIHRoaXMgaXMgcnVuIG9uIHlvdXIgUEMsIHJpZ2h0OyBhcmUgeW91IHN1cmUgdGhh
dCB0aGUgR05VIFJhZGlvIHlvdSBydW4gd2FzIGJ1aWx0IA0KYWdhaW5zdCB0aGUgVUhEIHlvdSdy
ZSB1c2luZz8gKFRoaXMgaXMgYmFzaWNhbGx5IGFza2luZyBob3cgeW91IGluc3RhbGxlZCBib3Ro
IEdOVSBSYWRpbyANCmFuZCBVSEQpDQoNCg0KQmVzdCByZWdhcmRzLA0KDQpNYXJjdXMNCg0KDQpP
biAxNC4wNy4yMiAyMjoyMywgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPiBPbiAyMDIyLTA3LTE0
IDA4OjI1LCBKYXNvbiBNYXR1c2lhayB3cm90ZToNCj4+IFRyeWluZyB0byBydW4gYSBDKysgYmFz
ZWQgZmxvd2dyYXBoIGFuZCBvY2Nhc2lvbmFsbHkgZ2V0dGluZyBhIHNlZ2ZhdWx0L2NvcmVkdW1w
LsKgIA0KPj4gRmluYWxseSwgd2FzIGFibGUgdG8gY2FwdHVyZSB0aGUgc3RhY2sgdHJhY2UsIGFu
ZCBJIGFtIG5vdCBzdXJlIHdoYXQgdG8gbWFrZSBvZiBpdC7CoCBJIA0KPj4gLy90aGluay8vIHRo
YXQgdGhpcyBpcyBhbGwgVUhELCBhbmQgbm90IG15IGFwcCwgYnV0IEkgZmluZCB0aGF0IGhhcmQg
dG8gYmVsaWV2ZS7CoCBIZXJlIA0KPj4gaXMgdGhhdCBjb3JlIGR1bXAsIGFueSB0aG91Z2h0cyBv
biB3aGF0IGlzIGNhdXNpbmcgdGhpcyBhbmQgaWYgdGhlcmUgaXMgYW55IHdheSBmb3IgDQo+PiBt
b3JlIHRvIGdyYWNlZnVsbHkgcmVjb3ZlciBmcm9tIGl0P8KgIFRoaXMgd2FzIHVzaW5nIGEgc2lu
Z2xlIE4zMjAsIGdudXJhZGlvIHYzLjgsIGFuZCANCj4+IFVIRCA0LjEuMC41Lg0KPj4NCj4gSSBo
YXZlIG5vdCBoYWQgYW55IG90aGVyIHJlcG9ydHMuDQo+DQo+IE9uZSBvZiB0aGUgdGhpbmdzIGFi
b3V0IEMvQysrICh3aGljaCB5b3UgbGlrZWx5IGtub3cpIGlzIHRoYXQgaXQncyByZWxhdGl2ZWx5
IGVhc3kgZm9yIA0KPiBhbiBhcHBsaWNhdGlvbiB0byBjb3JydXB0IGhlYXAgb3Igc3RhY2sgdGhh
dCBzb21lIGxpYnJhcnkgcmVsaWVzIG9uLGFuZCB0aGVuIHNvbWV0aGluZyANCj4gaW5zaWRlDQo+
IMKgIHRoZSBsaWJyYXJ5IHRha2VzIGEgbGVmdCB0dXJuIHRoYXQgaXQgd291bGRuJ3Qgb3RoZXJ3
aXNlIHRha2UtLXRoaXMgY2FuIG1ha2UgaXQgDQo+ICphcHBlYXIqIHRoYXQgdGhlIGxpYnJhcnkg
aXMgdGhlIGN1bHByaXQsIGJ1dCBpdCBtYXkgd2VsbCBoYXZlIGJlZW4gdGhlIGNhbGxpbmcgDQo+
IGFwcGxpY2F0aW9uLCBvZnRlbg0KPiDCoCB0aG91c2FuZHMgb2YgaW5zdHJ1Y3Rpb25zIGFnby4u
Lg0KPg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20K
