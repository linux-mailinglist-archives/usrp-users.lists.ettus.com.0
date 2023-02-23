Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 637956A124F
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 22:51:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56686384157
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 16:51:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677189110; bh=OjwQQsrkv2xu17g8GeOz/j48je27PwkRg37ikhdu7iI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YKymHy+0iFdlstTFCpK8/Zbn+uznXzezbH4a0I6UW01K+S5rSM/eHWKeT+zTrJh+C
	 R9+mrIPoC8y5jUmAFeLToamYSP4V6fnc7J48hHr04XBsG5reLreK55s7Mt77HpdeXL
	 L9PPknx0btJUi8GNtg7gfYAYL1aAeA/MJzRxFNi1TbJxV6Z5lF9dkkeSApYW4D2Kp0
	 YoykLq5Tpm3s5CQ9iX711BW7iaa4ClmM2iq6zygrTJjwpcLcR262ovnCNL+mU3EeTp
	 sLpAICT0R/tr0EYrS41b1E+hNLIqVk5LKATYp3lrksWzSX3HE5oypwTLAjmvJ41mvg
	 2Wsshx4jpmtNg==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 4818F384157
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 16:51:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eL+3IrZr";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id b6so6444553qtb.1
        for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 13:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U4YI7IZW/CbDWYDELnljKckHQj5gYdo+WJrwkN4CSt8=;
        b=eL+3IrZr9In9uzTuqx7rdacmDcTWYijSQG2XWp/X4QSxJPckWH3Kwd6B6rBkUpyt6K
         sVEsXEN/n0iW14S5HUK9VJ11W6rOkUBu4xLZw6bBjhIQxZzjcCs/8Lc2cCsjoMuhAiNO
         IVCVqe2gs7K7slINSpMDYvi7DKwTD6XRmX+D2YDaOyFQSuapTvFM5l2sRKljsRNnFhhs
         rZrG5peeAThndxXxsVpfI2FCM6rj+dkxlrQPmQPDLB/dy/xf1jq2Mh8IN8DAfR8pmvtL
         CJipMz+jhJY14i7ps6q2kqwOEoJpkyL/7Z/1Bt1wCh3VEnQQ2KjcEYGFEu1C3r/JjVA2
         8s2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U4YI7IZW/CbDWYDELnljKckHQj5gYdo+WJrwkN4CSt8=;
        b=QYNZdMPLMAPD8GcYAsmRS1aLUGyXNYM//q0aOK5VQzhTjfEi0xcm0pJQYzHnBsW0Be
         CbNXdT8NIHpB9w0ZxMBkH7/anqi4PcXOjXyhSMYOOn9mvoVxSoiwmu5y39UK2QZgSiWQ
         OItohPxBKdtC8q6Mft0lXBzMeenGgJO0t5eUgoN94rDAqqmkEoHhz6K03aLYDGzc1WhZ
         Q/GoNON/N/vX2b/9a8OrGzocflfVQX7uxgxUPBdot2n38U8cOuE5V3/vH099IrZOwfx3
         Q0rldkf6JxIrNDNJxfWBkmZdjWVuRv4Eqqt3c67zD5I1aAwZ0ebrWllLyY6DEOlvWJri
         p1SQ==
X-Gm-Message-State: AO0yUKW5p9+Bb9iLuipV5P8EgrZBM2fXBMyMm59B+bi/Bmn30nDIrOSC
	bjKMbNZNSsPuL2f/BbhryAqaXKcIby8=
X-Google-Smtp-Source: AK7set/g3KSZNGcWBym583cMxOoHSQ8aN79/O5EQ9R4gtHRG9FlKPMRC2Wg/l/754oCZ7tK7VqrA8g==
X-Received: by 2002:ac8:580a:0:b0:3b8:73c:15e6 with SMTP id g10-20020ac8580a000000b003b8073c15e6mr10218999qtg.18.1677189104451;
        Thu, 23 Feb 2023 13:51:44 -0800 (PST)
Received: from [192.168.2.154] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id w14-20020a05620a424e00b00742325daecasm4533676qko.67.2023.02.23.13.51.44
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 13:51:44 -0800 (PST)
Message-ID: <810377ee-8be2-988a-1057-f6ba28247fa2@gmail.com>
Date: Thu, 23 Feb 2023 16:51:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CA+7S2fZSj5YnqsVR8BifcXzdq=m+G5ns3roq6usMkZDoXF4DcQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+7S2fZSj5YnqsVR8BifcXzdq=m+G5ns3roq6usMkZDoXF4DcQ@mail.gmail.com>
Message-ID-Hash: CZBKWVIFUPTDUFM6M3THZSAOXIOYZ3GZ
X-Message-ID-Hash: CZBKWVIFUPTDUFM6M3THZSAOXIOYZ3GZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B200 basic tone sampling in GNU radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CZBKWVIFUPTDUFM6M3THZSAOXIOYZ3GZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjMvMDIvMjAyMyAxNjozOSwgTWF4aW0gQmVsb3RzZXJrb3Zza3kgd3JvdGU6DQo+IEhpLiBJ
J20gZG9pbmcgaW5pdGlhbCB2ZXJpZmljYXRpb24gb2YgYSBCMjAwLiBBIHNpbmUgd2F2ZSBhdCAx
MDBNSHogaXMgDQo+IGZlZCBpbnRvIGZyb250IGVuZC4gVGhlIHJlY2VpdmVyIGlzIGNvbmZpZ3Vy
ZWQgdG8gdXNlIGl0cyBxdWFkcmF0dXJlIA0KPiBkb3duY29udmVydGVyIHRvIGJyaW5nIHRoZSB3
YXZlIGRvd24gdG8gMTAwa0h6LCB3aGljaCBpcyB0aGVuIHNhbXBsZWQgDQo+IGJ5IGEgR1IgIlVT
UlAgU291cmNlIiBjb21wb25lbnQgYW5kIGRpc3BsYXllZCBpbiBhICJGcmVxdWVuY3kgU2luayIg
DQo+IEdVSS4gSSBub3RpY2UgdGhlIGZvbGxvd2luZyB1bmV4cGxhaW5lZCBiZWhhdmlvcjogYXMg
bG9uZyBhcyBJIHNldCB0aGUgDQo+IFNhbXBsaW5nIFJhdGUgcGFyYW1ldGVyIG9mIHRoZSByYWRp
byB0byBhbnl0aGluZyA+IG9yIGVxdWFsIHRvIDIwMCBrSHogDQo+IChpLmUuIG1vcmUgdGhhbiB0
d2ljZSB0aGUgZnJlcXVlbmN5wqBvZiB0aGUgYW5hbG9nIHRvbmUgSSdtIHRyeWluZyB0byANCj4g
c2FtcGxlKSBJIHNlZSB0aGUgdG9uZSBpbiB0aGUgRkZUIG91dHB1dCB3aGVyZSBJIGV4cGVjdCBp
dCB0byBiZTsgDQo+IGhvd2V2ZXIsIGFueSBzYW1wbGluZyBmcmVxdWVuY3kgbGVzcyB0aGFuIHRo
YXQsIGFuZCBJIGdldCBubyBvdXRwdXQgYXQgDQo+IGFsbC4gRm9yIGV4YW1wbGUsIHdpdGggdGhl
IDEwMGtIeiB0b25lIGluIG15IGV4cGVyaW1lbnQsIHNldHRpbmcgdGhlIA0KPiBzYW1wbGluZyBy
YXRlIHRvIDEwMGtIeiBzaG91bGQgcmVzdWx0IGluIGEgc3BlY3RyYWwgbGluZSBuZWFyIERDLCAN
Cj4gaG93ZXZlciwgbm8gb3V0cHV0IGlzIG9ic2VydmVkLiBJdCBpcyBhbG1vc3QgYXMgaWYgdGhl
cmUgaXMgc29tZXRoaW5nIA0KPiBnb2luZyBvbiBiZWhpbmQgdGhlIHNjZW5lcyB0aGF0IGRvZXNu
J3QgYWxsb3cgZm9yIGFsaWFzaW5nIHRvIGhhcHBlbiwgDQo+IGVpdGhlciBpbiB0aGUgc3RvY2sg
RlBHQSBkZXNpZ24gb3Igc29tZSBvdGhlciBibG9jayBleHRlcm5hbCB0byB0aGUgDQo+IEZQR0Eu
IENhbiBhbnlvbmUgY29tbWVudD8gSSBqdXN0IHdhbnQgdG8gY29uZHVjdCBhIHZlcnkgYmFzaWMg
c2FuaXR5IA0KPiBjaGVjayBvZiB0aGUgcmVjZWl2ZWQgZG93bi1jb252ZXJzaW9uIGFuZCBzYW1w
bGluZy4gSXMgdGhlcmUgYSANCj4gZnVuY3Rpb25hbCBkZXNjcmlwdGlvbiBvZiB0aGUgZGlnaXRh
bCBhbmQgYW5hbG9nIHByb2Nlc3NpbmcgY2hhaW4gdGhhdCANCj4gQjIwMCBjb21lcyBmcm9tIHRo
ZSBmYWN0b3J5IHdpdGg/IFRoYW5rcw0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpNb3N0IG9mIHRoZSBzaWduYWwgcHJv
Y2Vzc2luZyBpbiBhIEIyMDAgaXMgZG9uZSBieSB0aGUgQUQ5MzYxIFJGIA0KZnJvbnQtZW5kIGNo
aXAuwqDCoMKgIFRoZXJlIGlzIHN0aWxsIGEgRERDIGluIHRoZSBGUEdBLCB0byBoYW5kbGUNCiDC
oCBjYXNlcyB3aGVyZSB0aGUgQUQ5MzYxIGNhbid0IGRvIGFsbCB0aGUgam9iLsKgwqDCoCBJZiB5
b3UgYXNrIGZvciANCjEwMGtzcHMgKHF1aXRlIGxvdyBmb3IgdGhlIEIyMDApLCB0aGUgam9iIG9m
IGRlbGl2ZXJpbmcgdGhhdA0KIMKgIGJhbmR3aWR0aCB0byB0aGUgaG9zdCB3aWxsIGJlIHNoYXJl
ZCBiZXR3ZWVuIHRoZSBBRDkzNjEgYW5kIHRoZSBEREMgDQppbiB0aGUgRlBHQS7CoMKgwqAgVGhl
IGNvbWJpbmVkIGZpbHRlciByb2xsLW9mZiBvZiB0aG9zZQ0KIMKgIGlzIGdvaW5nIHRvIGJlIHF1
aXRlIGFnZ3Jlc3NpdmUtLXRoaXMgaXMgcHJldHR5IG5vcm1hbCBmb3IgU0RScy4NCg0KVGhlIGRh
dGFzaGVldHMgZm9yIHRoZSBBRDkzNjEgYXJlIGF2YWlsYWJsZSBmcmVlbHksIGFzIGlzIHRoZSBz
b3VyY2UgDQpjb2RlIGZvciBhbGwgb2YgVUhEIGFuZCB0aGUgZmlybXdhcmUgYW5kIEZQR0EgZm9y
DQogwqAgdGhlIEIyeHggc2VyaWVzLg0KDQoNCkhlcmUncyB0aGUgYmFzaWMgc3VtbWFyeSBvZiB3
aGF0IGhhcHBlbnM6DQoNCiDCoMKgwqAgVGhlIEFEOTM2MSBjaGlwIGFycmFuZ2VzIHRvIGRlbGl2
ZXIgYSBjb21wbGV4LWJhc2ViYW5kIChaZXJvSUYpIA0Kc2FtcGxlIHN0cmVhbSB0byB0aGUgRlBH
QSBhdCBzb21lIHNhbXBsZS1yYXRlDQogwqDCoMKgICh0aGF0IGlzIG9mdGVuIHNvbWUgbXVsdGlw
bGUgb2YgdGhlIHRhcmdldCBzYW1wbGUgcmF0ZSkuwqDCoCBUaGUgRlBHQSANCnRoZW4gdXNlcyBp
dHMgRERDIGltcGxlbWVudGF0aW9uIHRvIGJyaW5nIHRoZQ0KIMKgwqDCoCBzaWduYWwgZG93biB0
byB0aGUgbG93ZXIgc2FtcGxlIHJhdGUsIGFuZCBQQVJUIE9GIFRIQVQgUFJPQ0VTUyANCmluaGVy
ZW50bHkgaW52b2x2ZXMgZmlsdGVyaW5nLsKgIFRoYXQgaXMgdGhlbg0KIMKgwqDCoCBkZWxpdmVy
ZWQgdG8gdGhlIGhvc3QgYXMgYSBjb21wbGV4IGJhc2ViYW5kIHNpZ25hbC7CoMKgIFVIRCBoYXMg
Y29kZSANCnRoYXQga25vd3MgaG93IHRvIGNvbmZpZ3VyZSB0aGUgQUQ5MzYxDQogwqDCoMKgIGFu
ZCBGUEdBIGVsZW1lbnRzIHRvIGRlbGl2ZXIgd2hhdCB5b3UgYXNrZWQgZm9yLS1pbmNsdWRpbmcg
DQprbm93bGVkZ2Ugb2Ygd2hhdCB0aGUgbWluaW11bSB0dW5pbmcgZ3JhbnVsYXJpdHkNCiDCoMKg
wqAgb2YgdGhlIEFEOTM2MSBpcywgc28gdGhhdCBpdCBjYW4gdGVsbCB0aGUgRERDIHRvIHJvdGF0
ZSB0aGUgc2lnbmFsIA0KZG93biB0byBiYXNlYmFuZCBmaXJzdCBpZiBuZWNlc3NhcnkuDQoNClRo
ZXJlIGFyZSBmbG91cmlzaGVzIGFuZCBudWFuY2VzIG9mIGNvdXJzZS0tdGhlcmUncyBhbmFsb2cg
Z2FpbiBibG9ja3MgDQppbnZvbHZlZCwgcXVhZHJhdHVyZSBJL1EgYmFsYW5jaW5nIGFsZ29yaXRo
bXMgaW4NCiDCoCB0aGUgQUQ5MzYxLCBldGMuwqAgVGhlIGluc2lkZSBvZiB0aGUgQUQ5MzYxIGlz
IGl0c2VsZiBxdWl0ZSBjb21wbGV4LCANCmFuZCBJIHRoaW5rIHlvdSdkIG5lZWQgdG8gZ2V0IHRo
ZSAiZGV2ZWxvcGVyIGRvY3MiDQogwqAgdG8gZ2V0IGFsbCB0aGUgaW5mb3JtYXRpb24gb24gaG93
IGl0IHdvcmtzLS1idXQgSSB0aGluayB0aGF0J3MgZnJlZSANCmFuZCBlYXN5IHRvIGdldC4NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
