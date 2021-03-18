Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DDF340514
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 13:04:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7CEBC3837AA
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 08:04:11 -0400 (EDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 56BDE38378C
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 08:04:00 -0400 (EDT)
Received: by mail-wr1-f43.google.com with SMTP id o16so5260512wrn.0
        for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 05:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=URCS/C/SRjsr4jQTwccf2Z3hfw7V0JUIP1+CI8MlJk4=;
        b=JyZq9JhNo5mNvPzL0wTJuCW3YjlFRjUaDZWEOAqhUbNC/xP0Fk0nTSnXRHsZKmnAUI
         pnPkLTlIbyZSeKCqu8l09SaBVPOKR2y2tosBCXXGFEcHe9d+CZFskbWDOdXMRCV+Op8M
         Mc8SgNo9ZR9cgC69q3GckN+QMDt7WXKfdTHV1cfAPRopElUF+8KO1WU2jllnyQ3f/SCE
         BgUssJlsCloaDlhFJ73w5J0GU+I2dXf7DUvpjCFowJCXf9GHt34NYoDbaBOpNAMCr9V7
         5MGnL63dZTJERecFUf9B3j72fBU6Jj9AU3qV8hA+0x/nBIGfzFxf6MTooSo00Flqry3L
         G7wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=URCS/C/SRjsr4jQTwccf2Z3hfw7V0JUIP1+CI8MlJk4=;
        b=a7+hcFO0WXrzaQcgl4m5ohEdltiasRrhTWQb8hn9+lSwWpVPj//GD1Q9c43a1C8QvW
         pzRaC9BcpJ1//SYOrjrnPw8ROo4ljSKMKnaRQLR8Yx4PbEE6URR6655ivEBJBGc4hlE2
         qIC5cZC4vFeDjgjUlHDL8f++425F5cL8hCZMUHzj7fj1kGsOnJK4yiVW0CQaxdSdswHZ
         n15I0JwQ5VwwZ1sk+VmesWnq7OxCSg2rnL7Ltt3/xypY7+A6s5qVSjiQzSu9BP4ZyX3A
         1jdw43wtIU54DE96OzOgqSPi4+UROmWN6e0XWeHty2hYjPsVhL+mo8KaFUGfrFtmWYE9
         Mktw==
X-Gm-Message-State: AOAM532a4G+FGR19paC5ZZZGjo9FYnhfU0ZleKqmb8ext2WnsOQmsWlB
	7jcPtCfuFn8wkyfY9gqjaAE/VpTwbkgKMM+y
X-Google-Smtp-Source: ABdhPJx+FFTIKwNl7hipZFbMf5dyS0LG26GzhAln8FUbY2M0X3dYiHqprWCcqMKfhL+AVCJZg0RW9g==
X-Received: by 2002:adf:b1c9:: with SMTP id r9mr9579721wra.51.1616069039230;
        Thu, 18 Mar 2021 05:03:59 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
        by smtp.gmail.com with ESMTPSA id j16sm7150491wmi.2.2021.03.18.05.03.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 05:03:58 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <e29bc7e556334d1f9b5af4128ab9a9cf@campus.tu-berlin.de>
 <aefaa146fef24a4694d98132d439863b@campus.tu-berlin.de>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <17f1b1b7-3fae-ebed-3d65-c1e04e35fc53@ettus.com>
Date: Thu, 18 Mar 2021 13:03:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <aefaa146fef24a4694d98132d439863b@campus.tu-berlin.de>
Content-Language: en-US
Message-ID-Hash: CYQABACQHWEGVMY66DBQ76OHSEHMM7O5
X-Message-ID-Hash: CYQABACQHWEGVMY66DBQ76OHSEHMM7O5
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users]  Re: =?eucgb2312_cn?q?=B4=F0=B8=B4=3A_rfnoc_error_at_building_graph_and_setting_sample_rate?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CYQABACQHWEGVMY66DBQ76OHSEHMM7O5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzLCBidXQgd2l0aCBjb25zdHJhaW50cywgc2luY2UgdGhleSBib3RoIGhhdmUgdG8gYmUgZGVy
aXZlZCBmcm9tIHRoZSBzYW1lIHJhZGlvIGNsb2NrLg0KQW55d2F5cywgdGhhdCdzIGluIHRoZSBl
bmQganVzdCBhIHBhcmFtZXRlcml6YXRpb24gb2YgdGhlIERVQyBhbmQgRENDIQ0KDQpESVNDTEFJ
TUVSOiBBbnkgYXR0YWNoZWQgQ29kZSBpcyBwcm92aWRlZCBBcyBJcy4gSXQgaGFzIG5vdCBiZWVu
IHRlc3RlZCBvciB2YWxpZGF0ZWQgYXMgYSBwcm9kdWN0LCBmb3IgdXNlIGluIGEgZGVwbG95ZWQg
YXBwbGljYXRpb24gb3Igc3lzdGVtLCBvciBmb3IgdXNlIGluIGhhemFyZG91cyBlbnZpcm9ubWVu
dHMuIFlvdSBhc3N1bWUgYWxsIHJpc2tzIGZvciB1c2Ugb2YgdGhlIENvZGUuIFVzZSBvZiB0aGUg
Q29kZSBpcyBzdWJqZWN0IHRvIHRlcm1zIG9mIHRoZSBsaWNlbnNlcyB0byB0aGUgVUhEIG9yIFJG
Tm9DIGNvZGUgd2l0aCB3aGljaCB0aGUgQ29kZSBpcyB1c2VkLiBTdGFuZGFyZCBsaWNlbnNlcyB0
byBVSEQgYW5kIFJGTm9DIGNhbiBiZSBmb3VuZCBhdCBodHRwczovL3d3dy5ldHR1cy5jb20vc2Ry
LXNvZnR3YXJlL2xpY2Vuc2VzLy4NCg0KTkkgd2lsbCBvbmx5IHBlcmZvcm0gc2VydmljZXMgYmFz
ZWQgb24gaXRzIHVuZGVyc3RhbmRpbmcgYW5kIGNvbmRpdGlvbiB0aGF0IHRoZSBnb29kcyBvciBz
ZXJ2aWNlcyAoaSkgYXJlIG5vdCBmb3IgdGhlIHVzZSBpbiB0aGUgcHJvZHVjdGlvbiBvciBkZXZl
bG9wbWVudCBvZiBhbnkgaXRlbSBwcm9kdWNlZCwgcHVyY2hhc2VkLCBvciBvcmRlcmVkIGJ5IGFu
eSBlbnRpdHkgd2l0aCBhIGZvb3Rub3RlIDEgZGVzaWduYXRpb24gaW4gdGhlIGxpY2Vuc2UgcmVx
dWlyZW1lbnQgY29sdW1uIG9mIFN1cHBsZW1lbnQgTm8uIDQgdG8gUGFydCA3NDQsIFUuUy4gRXhw
b3J0IEFkbWluaXN0cmF0aW9uIFJlZ3VsYXRpb25zIGFuZCAoaWkpIHN1Y2ggYSBjb21wYW55IGlz
IG5vdCBhIHBhcnR5IHRvIHRoZSB0cmFuc2FjdGlvbi4gIElmIG91ciB1bmRlcnN0YW5kaW5nIGlz
IGluY29ycmVjdCwgcGxlYXNlIG5vdGlmeSB1cyBpbW1lZGlhdGVseSBiZWNhdXNlIGEgc3BlY2lm
aWMgYXV0aG9yaXphdGlvbiBtYXkgYmUgcmVxdWlyZWQgZnJvbSB0aGUgVS5TLiBDb21tZXJjZSBE
ZXBhcnRtZW50IGJlZm9yZSB0aGUgdHJhbnNhY3Rpb24gbWF5IHByb2NlZWQgZnVydGhlci4NCg0K
T24gMTguMDMuMjEgMTI6MjMsIENoYW5nLCBLYWl4aW4gd3JvdGU6DQo+DQo+IEJ0dywgaXMgaXQg
cG9zc2libGUgdG8gc2V0IHVwIHJ4X3JhdGUgYW5kIHR4X3JhdGUgc2VwYXJhdGVseSBhcyB3aXRo
IHVoZCB3ZSBoYXZlDQo+IHVzcnAtPnNldF9yeF9yYXRlKCkgYW5kIHVzcnAtPnNldF90eF9yYXRl
KCk/DQo+DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAq5Y+R5Lu25Lq6
OiogQ2hhbmcsIEthaXhpbg0KPiAq5Y+R6YCB5pe26Ze0OiogMjAyMeW5tDPmnIgxOOaXpSAxMTo0
NzozNw0KPiAq5pS25Lu25Lq6OiogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gKuS4u+mi
mDoqIHJmbm9jIGVycm9yIGF0IGJ1aWxkaW5nIGdyYXBoIGFuZCBzZXR0aW5nIHNhbXBsZSByYXRl
DQo+IMKgDQo+DQo+IERlYXIgbWFkYW0gYW5kIHNpciBmcm9tIEV0dHVzIHRlYW0sDQo+DQo+DQo+
IEkgYW0gdXNpbmcgWDMxMCB3aXRoIDIgQ0JYMTIwIGFuZCBVSEQgbWFpbiBicmFuY2ggZm9yIHJm
bm9jIHdpdGh8ZnBnYSBpbWFnZQ0KPiB1c3JwX3gzMTBfZnBnYV9YRy5iaXR8LiBNeSBnb2FsIGlz
IHRvIGJ1aWxkIGEgbG9vcGJhY2sgZnJvbSB0eCBwb3J0IHRvIHJ4IHBvcnQsIGJ1dCBJDQo+IGhh
dmUgc29tZSBwcm9ibGVtIHRvIGJ1aWxkIGEgZ3JhcGguDQo+DQo+DQo+IEZvciBleGFtcGxlIHRv
IHNlbmQgZnJvbSBSRi1BIFR4L1J4IHBvcnQgdG8gUkYtQSBSeDIgcG9ydCwgSSB1c2VkIHBhcmFt
ZXRlcg0KPg0KPiDCoMKgwqAgLS10eC1ibG9ja2lkPScwL1JhZGlvIzAnIC0tdHgtY2hhbj0wIC0t
cngtYmxvY2tpZD0nMC9SYWRpbyMxJyAtLXJ4LWNoYW49MCINCj4NCj4gSSB0cmllZCB0byBjb25u
ZWN0Og0KPg0KPiDCoMKgwqAgdHhfc3RyZWFtID09PiAwL0RVQyMwOjAgPT0+IDAvUmFkaW8jMDow
DQo+DQo+IMKgwqDCoCAwL1JhZGlvIzA6MSA9PT7CoDAvRERDIzA6MSA9PT4gcnhfc3RyZWFtDQo+
DQo+IFRoZSAwL1NFUCBpcyBub3QgYSBibG9jayBzbyBJIHVzZSBzdHJlYW1lciBvbiBpdHMgcG9z
aXRpb24gaW4gY2hhaW4NCj4NCj4gQnV0IEkgZ290IGFuIGVycm9yOg0KPiDCoMKgwqAgW0VSUk9S
XSBbUkZOT0M6OkdSQVBIOjpERVRBSUxdIE5vZGUgMC9SYWRpbyMwY2Fubm90IGhhbmRsZSBpdHMg
Y3VycmVudCB0b3BvbG9neSENCj4gKDFpbnB1dHMsIDEgb3V0cHV0cykNCj4gwqDCoMKgIEVycm9y
OiBSdW50aW1lRXJyb3I6IEdyYXBoIHRvcG9sb2d5IGlzIG5vdCB2YWxpZCENCj4NCj4gSSBzZWUg
dGhlIGRlZmF1bHQgcGFyYW1ldGVycw0KPg0KPiDCoMKgwqAgLS10eC1ibG9ja2lkPScwL1JhZGlv
IzAnIC0tdHgtY2hhbj0wIC0tcngtYmxvY2tpZD0nMC9SYWRpbyMxJyAtLXJ4LWNoYW49MCINCj4N
Cj4gaW4gcmZub2NfcmFkaW9fbG9vcGJhY2sgc2VlbXMgdG8gYnVpbGQgYSBjaGFpbiBsaWtlIHRo
aXM6DQo+IMKgwqDCoCAwL1JhZGlvIzE6MD09PjAvRERDIzE6MD09PjAvU0VQIzI6MA0KPiDCoMKg
wqAgMC9TRVAjMDowPT0+MC9EVUMjMDowPT0+MC9SYWRpbyMwOjANCj4gwqDCoMKgIDAvRERDIzE6
MD09PjAvRFVDIzA6MA0KPg0KPiBJIGRvbid0IHVuZGVyc3RhbmQgd2h5IGFyZcKgIDAvRERDIzE6
MCBhbmQgMC9EVUMjMDowIGNvbm5lY3RlZC4NCj4NCj4gQWxzbyBJIGdldCBhbiBlcnJvciBhdCBz
ZXR0aW5nIHJhdGU6DQo+IMKgwqDCoCBbV0FSTklOR10gWzAvUmFkaW8jMV0gUmVxdWVzdGluZyBp
bnZhbGlkIHNhbXBsaW5nIHJhdGUgZnJvbSBkZXZpY2U6IDEwIE1Iei4gQWN0dWFsDQo+IHJhdGUg
aXM6IDIwMCBNSHouDQo+DQo+DQo+IGJ5IHVzaW5nOg0KPg0KPiDCoMKgwqDCoCB1aGQ6OnJmbm9j
OjpyYWRpb19jb250cm9sOjpzcHRyIHJhZGlvX2N0cmwgPQ0KPiBncmFwaC0+Z2V0X2Jsb2NrPHVo
ZDo6cmZub2M6OnJhZGlvX2NvbnRyb2w+KHJhZGlvX2N0cmxfaWQpDQo+DQo+IMKgwqDCoMKgIHJh
ZGlvX2N0cmwtPnNldF9yYXRlKHJ4X3JhdGUpDQo+DQo+DQo+IENvdWxkIHlvdSBwbGVhc2UgZ2l2
ZSBtZSBzb21lIGFkdmljZT8NCj4NCj4NCj4gVGhhbmtzIGluIGFkdmFuY2UNCj4NCj4NCj4gS2Fz
aW0NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
