Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7572D5ABE96
	for <lists+usrp-users@lfdr.de>; Sat,  3 Sep 2022 12:49:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E94333847E8
	for <lists+usrp-users@lfdr.de>; Sat,  3 Sep 2022 06:49:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662202176; bh=OGGLXlMsxVGQMsJbGsyJSQeEzkNJOjxZ2/fKCJnw25o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BJF2XjTT5K/62Q7uVrSuSS/HpT+XVrhWtSfxMvbMIPmAayGYps7dDnpkYsM93w4uJ
	 rbavjlX6Qihlq49XSQ8k+/uVx5zYoleef1TpxIwYrYRGQSoAnk1x3lq1YoUxdL7I08
	 1ujnaroPc3WN2RRiz84Xm/isACjSsG09bsJUcCVH5V24wnJTpBeIjzAQ+/WrG0V+Cs
	 zXZXLM4nhugQL75kuqi7J1h1Kw2Fxz5g1lqYCzeejY0QA6jlFYkg5Mt/ppY9vwULOC
	 su1jivZLCkrdDY+eA1oHkkYSrX4OWHxP7JAiPggqrxgK9/cdSuUqvK76zPcWFqPF/w
	 cKKCm/NVAIMNQ==
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 1B046385AC4
	for <usrp-users@lists.ettus.com>; Sat,  3 Sep 2022 06:48:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Sx6yidsk";
	dkim-atps=neutral
Received: by mail-wr1-f46.google.com with SMTP id bp20so4721127wrb.9
        for <usrp-users@lists.ettus.com>; Sat, 03 Sep 2022 03:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=uQIDI8BdqXukGvP8Ywz4xL2FuNltJrV7nsr5knP/M8g=;
        b=Sx6yidskdQf5TJkrU7xfQh/mlxubenMuu1dUJVZJsBr5Nclvz/A2KiBXB9xrGgmScn
         DLmtzFWEjDY3gHmmFTGTraKRW/4TtcqLHiuT5yX8p68fJT556qNdOvtedhYITpbE0lXA
         X+xMNj8g6RtJt/IppVZA2E1VPU6uqHaCv8wfjWEZEb2eevUYZcSiSdPB+P2Z6LyqL5Tk
         d8ksKzKegMaWdJ5Kj9nKhRSBHMeKzmXircssKMv9o9Tj3FBdEfeenkNsQKs5Dengz7Wq
         96RTKAi9b6P/9ArUoFKCs8xDZfZOeDtndXozXiBsS2OlUh+p76y9kE8Taz1spEvYSCHw
         i1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=uQIDI8BdqXukGvP8Ywz4xL2FuNltJrV7nsr5knP/M8g=;
        b=J+IemUw8BMsyAJD+4QSSpYkBxq2AEYvjw3ka+GKtQS3rlr72lZtbwIIPoILilV+p7m
         vs6UjQPmK1B++IWZicv3vxmVqPsiV4lZP3GTAc4ORA/6F3ui3jD3W8EB0Q+cae3idFBO
         enbI9o1NLrpzxCpMdPieL3VELkIShvkKtYUwiOq8euuZYuaiqg+klqpAXrPTQAITlVlp
         2vE+ZEf/nAzDppTvvAW5AgYCIbEEoV64ju1MocXF27ile43AM0zCEoElFP8T68Umptpl
         UrEll/2OxipYpAfzC+AkeBuoRP3dkeqCJavzuT2AnSvxFPBM368napvAwMqwLC6fvhge
         COKA==
X-Gm-Message-State: ACgBeo1/k4we9kZ62YbraAIXOg9VZxvZtgzW2QZ82EbLEU8GPkJHmS94
	eN9Ds+FHtN8+LZeWGVD7uyrAJLsvXD/0Xpv3
X-Google-Smtp-Source: AA6agR47WgyO/qEABgwJNxwY8i/rQvmsoRwSU2D2OAFRkucJ1jaTwH0aEijZmQitF3tdvKKoMi1qcQ==
X-Received: by 2002:a05:6000:144a:b0:220:7181:9283 with SMTP id v10-20020a056000144a00b0022071819283mr18848003wrx.158.1662202121739;
        Sat, 03 Sep 2022 03:48:41 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3840:8000:5bc8:3cc3:e10b:748e? ([2001:9e8:3840:8000:5bc8:3cc3:e10b:748e])
        by smtp.gmail.com with ESMTPSA id ay19-20020a05600c1e1300b003a682354f63sm12389341wmb.11.2022.09.03.03.48.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Sep 2022 03:48:41 -0700 (PDT)
Message-ID: <8715ed08-fce7-390d-ef16-6a390104eb7c@ettus.com>
Date: Sat, 3 Sep 2022 12:48:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <01a901d8beeb$e0240a80$a06c1f80$@googlemail.com>
 <61fb1c43-53b8-232b-1546-b4daf5331c76@gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <61fb1c43-53b8-232b-1546-b4daf5331c76@gmail.com>
Message-ID-Hash: PTTDZR43YBGLT4K3AWG576P2OCLETFY2
X-Message-ID-Hash: PTTDZR43YBGLT4K3AWG576P2OCLETFY2
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 2.5G Ethernet
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PTTDZR43YBGLT4K3AWG576P2OCLETFY2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

U2Vjb25kaW5nIHRoYXQuDQoNCk5vdywgYXJtY2hhaXIgbmV0d29yayBzdGFuZGFyZGlzdCBoZXJl
LCBidXQgaWYgSSByZW1lbWJlciBjb3JyZWN0bHksIDIuNSBHYi9zIEV0aGVybmV0IGlzIA0KYSBy
ZWR1Y2VkLXJhdGUgMTAgR0Jhc2UtVCAoc28sIHByZXR0eSBtdWNoIElFRUU4MDIuM2FuLTIwMDYs
IHdpdGggcmVkdWNlZCBjbG9ja3MpLiBJJ20gbm90IA0Kc3VyZSB3aGV0aGVyIHRoZXJlJ3MgYW55
IG90aGVyIGluY29tcGF0aWJpbGl0eSBiZXR3ZWVuIDgwMi4zYW4tMjAwNiBhbmQgODAyLjNiei4g
QnV0IA0KaG9uZXN0bHksIHRoZSAxMCBHQmFzZS1UIElQIGNvcmUgaXMgdXNlZCBpbiB4MzAwX3Nm
cHBfaW9fY29yZS52LCBpdCdzIHdyYXBwZWQgaW4gdGhlIA0Kb21pbm91c2x5LW5hbWVkIHhnZV9t
YXhfd3JhcHBlci52LCBzbyBnbyBhaGVhZCBhbmQganVzdCBkcm9wLWluIHJlcGxhY2UgaXQsIGlm
IGl0IGNhbiB3b3JrIA0KYXQgdGhlIHNhbWUgMTU2LjI1IE1IeiBzeW1ib2wgY2xvY2sgdGhhdC4g
RG9uJ3Qga25vdyB3aGV0aGVyIHRoYXQgd29ya3Mgb3V0LW9mLXRoZS1ib3gsIA0KYnV0IGFzIGxv
bmcgYXMgeW91IG5ldmVyIHJlbW92ZSB0aGUgY2hpbmNoIC8gUENJZSBhc2ljIGludGVyZmFjZSwg
eW91IGNhbiBhbHdheXMgbG9hZCBhIA0Kd29ya2luZyBGUEdBIGltYWdlIHZpYSB0aGUgSlRBRyBp
bnRlcmZhY2UsIHNvIHN0YWtlcyBhcmUgcXVpdGUgbG93Lg0KDQpDaGVlcnMsDQoNCk1hcmN1cyAo
dGhlIG90aGVyISkNCg0KT24gMDIuMDkuMjIgMjA6MDcsIE1hcmN1cyBELiBMZWVjaCB3cm90ZToN
Cg0KPiBPbiAyMDIyLTA5LTAyIDEyOjQ4LCBNYXR0aGlhcyBTY2hyYW1sIHdyb3RlOg0KPj4NCj4+
IEhpIGFsbCwNCj4+DQo+PiBJ4oCZbSBjdXJyZW50bHkgd29uZGVyaW5nLCBpZiBpdCBpcyBwb3Nz
aWJsZSB0byB1c2UgMi41RyBldGhlcm5ldCB3aXRoIGFuIFVTUlAgWDMxMC4NCj4+DQo+PiBCYWNr
Z3JvdW5kOg0KPj4NCj4+IEkgb3duIGEgYnJhbmQgbmV3IHNtYWxsIGJ1dCBwb3dlcmZ1bCBjb21w
dXRlci4gVGhlIFBDSWUgc2xvdCBpcyBvY2N1cGllZCBieSBhIEdQVSBhbmQgDQo+PiB0aGVyZSBp
cyBubyBUaHVuZGVyYm9sdCBwb3J0LiBTbyB0aGVyZSBpcyBubyBjaGFuY2UgZm9yIDEwRyBldGhl
cm5ldC4NCj4+DQo+PiBIb3dldmVyLCB0aGUgY29tcHV0ZXIgaGFzIGEgMi41RyBldGhlcm5ldCBw
b3J0Lg0KPj4NCj4+IFRoZSBYaWxpbnggSVAgdXNlZCBmb3IgMUcgZXRoZXJuZXQgaW4gdGhlIFVT
UlBzIGFsc28gc3VwcG9ydHMgMi41Ry4gSW4gdGhlb3J5LCB0aGlzIA0KPj4gc2hvdWxkIGJlIHN1
ZmZpY2llbnQgZm9yIDJ4IDMwLjcyIE1TcHMgd2hpY2ggd291bGQgYmUgYSBncmVhdCBpbXByb3Zl
bWVudCBjb21wYXJlZCB0byANCj4+IHRoZSAyNSBNU3BzIG92ZXIgMUcgZXRoZXJuZXQuDQo+Pg0K
Pj4gSXMgaXQgcG9zc2libGUgdG8gbW9kaWZ5IHRoZSBGUEdBIGltYWdlIHRvIHN1cHBvcnQgMi41
RyBldGhlcm5ldD8NCj4+DQo+PiBIYXMgYW55Ym9keSBhbHJlYWR5IGRvbmUgdGhpcyBtb2RpZmlj
YXRpb24/DQo+Pg0KPj4gS2luZCByZWdhcmRzDQo+Pg0KPj4gTWF0dGhpYXMNCj4+DQo+Pg0KPiBU
aGUgUEhZIGltcGxlbWVudGF0aW9uLCBhcyBJIHJlY2FsbCwgaXMgZml4ZWQtcmF0ZS7CoMKgIEl0
J3MgYWxtb3N0LWNlcnRhaW5seSBwb3NzaWJsZSB0byANCj4gbW9kaWZ5IGl0IHRvIHN1cHBvcnQg
aXQsIGJ1dCB0aGF0IHdvdWxkbid0DQo+IMKgIGJlIGEgY29uZmlndXJhdGlvbiBzdXBwb3J0IGJ5
IE5JL0V0dHVzLg0KPg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
