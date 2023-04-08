Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D07136DB827
	for <lists+usrp-users@lfdr.de>; Sat,  8 Apr 2023 04:39:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C80AE384AD2
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 22:39:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680921580; bh=DPUniMQbjkejM4vBFIQ7kuB6cNdTj3MjylN0WxmPMvI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JVHf8AHEK8CKCuCtsr9kJXR20HDzXpX361nG1R/pGlsvGB1ppJAogubJnFvhy+9+R
	 VK0oUp/vyisuGKjYj7p/oBd51KlTImo0GLF/Bnko/s0SqCPUY3iVAHoNrayM8IuKez
	 X/vXUsHjBeT4b6umEI2XdKAv1+Fim0Y0GERxEIYNKaKKm7RvuOEJW2pMMBOPo3OmLx
	 gujszdxkE5UDD2fYOmumWcKJ5bBecODo41dYt1snVbgm8g+Dfss4vpBecABttSuzhM
	 bEYK+ElMUMpDP5nDq/Cx/BEGQuaPxQ0EYfUqTx2pKzvNTQg5EdolEGEAcvJT4YI2dP
	 Jlon1JmMWFT6w==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 1A314384AD2
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 22:39:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a3rj5UaC";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id l1so3537483qvv.4
        for <usrp-users@lists.ettus.com>; Fri, 07 Apr 2023 19:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680921575; x=1683513575;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PdCR3TKa4hBdecXEb3Yuf29jYx0vaN0WwBNleiPedgk=;
        b=a3rj5UaC+k9NCGYFr/XrKwHGMLDytZTksCM3sGD7ox9BpHqnD2XondgYWeKOoKFLsU
         FCzCZBwMWMH6jPS7EiItJRMrm9roBA+fVShkrHaLunBLIJpxxjIyvFQhl7gwzqoB/7dy
         dhL5FiUmf2TIGZPA+bShoi63EEtuIT9c1k5bztQOphJMShG6hkLjM58C8N892ZwuhFsb
         JAY5oQv59SnaidVRljsxytstKCv/I94fS5YlvQ2Smu442Lo4aIFqWDV7m4r2ksrw9pDn
         vHbJ2uhL8ayzzHOAMCNwAHe5E62Y64wDAJ3WzldtCxTlQ2N1pMcYxdX9/W/xNF4OCyr+
         T+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680921575; x=1683513575;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PdCR3TKa4hBdecXEb3Yuf29jYx0vaN0WwBNleiPedgk=;
        b=Gd22SE9ZHOvI5RAbLcjtGHD6q3aOHciGLMAwSJkCfZ7J14iSHUvknLM7bHioVMrwz7
         GXRHBxTRYdcHNP1knFO3Ssyltct/UWk/ZR4U31X2yxm6ifS1yL/TngtnbQmz5Am0KZf0
         kmzqrKa3AEF3ZUCcT1Lji9Dudhp5Adtrk10EamGz0Tw52V0ZAWgY1FP1ynpH0ngxIBeg
         aqCcRikkJjN9EqIrDmY/OlJU1FLXuTXB1Z0TfA4d7d2FkMWbBJnInR9O8Ws/EmyobOCH
         VCWoU5AklvEDEgzqULAfWeFGfp8ZWShmbTjZQpgzMMbqM2q4dNoZq6odZdwKWJI8eAAY
         8GAw==
X-Gm-Message-State: AAQBX9dkDFSf+Xcd+korOz81yekf5gFHMs9m8pJEDa3GGV23BYF7FP51
	1PZNKzY0m3KdwPV8QmQweF+9KBDXj6Q=
X-Google-Smtp-Source: AKy350Zy2Guj9L1YN3m0GtZhIE4EpLyYRXIlSBsgZR9X+er4aJ8daS3SNqf+o4nvh6Clnu9lhdE9VA==
X-Received: by 2002:a05:6214:29c5:b0:5c9:a0ce:df0c with SMTP id gh5-20020a05621429c500b005c9a0cedf0cmr1964778qvb.22.1680921574965;
        Fri, 07 Apr 2023 19:39:34 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-111.dsl.bell.ca. [174.93.2.111])
        by smtp.googlemail.com with ESMTPSA id c14-20020a0cd60e000000b005dd8b9345eesm1766690qvj.134.2023.04.07.19.39.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 19:39:34 -0700 (PDT)
Message-ID: <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com>
Date: Fri, 7 Apr 2023 22:39:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <20230408021338.994254D94B@mail.futurelabusa.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20230408021338.994254D94B@mail.futurelabusa.com>
Message-ID-Hash: TQCSDKCAK7MOSDBASMD6DAMNY6FAZCKN
X-Message-ID-Hash: TQCSDKCAK7MOSDBASMD6DAMNY6FAZCKN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TQCSDKCAK7MOSDBASMD6DAMNY6FAZCKN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDcvMDQvMjAyMyAyMjoxMywgSmltIFNjaGF0em1hbiB3cm90ZToNCj4gV2UgaGF2ZSBiZWVu
IHVuYWJsZSB0byBlc3RhYmxlIDEwMCUgcmVsaWFibGUgY29ubmVjdGlvbnMgdG8gYW4gTjMxMCBV
U1JQIHJhZGlvIHRocm91Z2ggaXRzIDEwIEdiaXQgZXRoZXJuZXQgZnJvbSBMaW51eC4gV2hhdCBo
YXBwZW5zIGlzIHRoYXQgaXQgd29ya3MgZmluZSBmb3IgYSBwZXJpb2Qgb2YgdGltZSAtIDMwIHRv
IDYwIG1pbnV0ZXMsIHR5cGljYWxseS4gVGhlbiB3ZSBzZWUgYSBjb3VwbGUgb2YgVSdzIGluIHRo
ZSBvdXRwdXQuIFVuZm9ydHVuYXRlbHksIHRoYXQgaXMgZmF0YWwgZm9yIG91ciBhcHBsaWNhdGlv
bi4NCj4NCj4gVXNpbmcgdGhlIHVubW9kaWZpZWQgdHhfc2FtcGxlc19mcm9tX2ZpbGUgb3Igb25l
IG1vZGlmaWVkIHRvIHVzZSBzZXBhcmF0ZSB0aHJlYWRzIHRvIHJlYWQgZGF0YSBmcm9tIHRoZSBm
aWxlIGFuZCB0byBzZW50IGl0IG92ZXIgdGhlIHNvY2tldCB0byB0aGUgcmFkaW8sIHRoZSBzeW1w
dG9tcyBhcmUgdGhlIHNhbWUuDQo+DQo+IEFsbCB0aGUgZXZpZGVuY2UgaXMgdGhhdCB0aGUgYXBw
bGljYXRpb24gaXMgc2VuZGluZyBkYXRhIGNvbnRpbnVvdXNseSB3aXRob3V0IGFueSBkZWxheXMu
IEFsc28sIHRoZSAibmV0d29yayIgaGFzIG5vIGRldmljZXMgb24gaXQgZXhjZXB0IGZvciB0aGUg
aG9zdCBjb21wdXRlciwgYSBoaWdoIHBlcmZvcm1hbmNlIDEwRyBzd2l0Y2gsIGFuZCB0aGUgTjMx
MCByYWRpby4NCj4NCj4gV2UgYXJlIHdvbmRlcmluZyBpZiB0aGlzIGNvdWxkIGJlIGEgTGludXgg
ImZlYXR1cmUiLiBXZSB3b3VsZCBsaWtlIHRvIHRyeSBpbmNyZWFzaW5nIHRoZSBzb2NrZXQgcHJp
b3JpdHkgd2l0aCBTT19QUklPUklUWS4gSG93ZXZlciwgd2UgYXJlIG5vdCBmaW5kaW5nIGFueSBo
b29rcyBpbiB0aGUgVUhEIHNvZnR3YXJlIGZvciB0aGlzLg0KPg0KPiBTdWdnZXN0aW9ucz8NCj4N
Cj4gVGhhbmtzIQ0KPiBKaW0NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4NCkhhdmUgeW91IGluY3JlYXNlZCB0aGUgcmluZyBidWZmZXJzIG9uIHlv
dXIgY2FyZD8NCg0KaHR0cHM6Ly9rYi5ldHR1cy5jb20vVVNSUF9Ib3N0X1BlcmZvcm1hbmNlX1R1
bmluZ19UaXBzX2FuZF9Ucmlja3MjSW5jcmVhc2luZ19SaW5nX0J1ZmZlcnMNCg0KQWxzbywgYWRq
dXN0IHRoZSBuZXR3b3JrIGJ1ZmZlcnM6DQoNCmh0dHBzOi8va2IuZXR0dXMuY29tL1VTUlBfSG9z
dF9QZXJmb3JtYW5jZV9UdW5pbmdfVGlwc19hbmRfVHJpY2tzI0FkanVzdF9OZXR3b3JrX0J1ZmZl
cnMNCg0KSGF2ZSB5b3UgdHJpZWQgYSBkaXJlY3QgY29ubmVjdGlvbi0td2l0aG91dCB0aGUgc3dp
dGNoP8KgwqDCoCBKdXN0IHRvIA0KZWxpbWluYXRlIGl0LsKgIEJlZm9yZSB5b3Ugc2F5ICJvaCwg
aXQncyBub3QgdGhlIHN3aXRjaCIsDQogwqAgbWFueSAiaGlnaCBwZXJmb3JtYW5jZSIgMTBHIHN3
aXRjaGVzIGhhdmUgYSBsZXNzLXRoYW4taWRlYWwgc3dpdGNoaW5nIA0KZmFicmljLg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
