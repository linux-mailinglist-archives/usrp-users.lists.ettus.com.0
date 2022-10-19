Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3266036DA
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 02:02:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C0BD380EDD
	for <lists+usrp-users@lfdr.de>; Tue, 18 Oct 2022 20:02:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666137776; bh=xLhM+pFM12P4SToRmtF/nV4CfxhvUN9Jz7DeKSSKCMc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=acrkvcsV+bGadFO9rUi97vuiD8qiebaOTsKv2+2cxXXD1iUwKbQLdJTxKeX5KFI3o
	 xGulS2Ga58vGKSH+uZV97GlnzG7PMm/PWvZkuDSTDyVlCCxDpYqYjKtWHE7F3NoB3a
	 EJeJWcBAFymRLomfz4Iqxsru6uVAIOWpM1uvkjkRS30lFTvCx13g6kCGGLAvYDd0l0
	 PWze1kX4AirkOWjueeEtgT+oGjDPIiV3NKslf+GWavBjt5p2+uGoXH8WAscPPWFkaj
	 17L11SyrLukB3elr/XCsaV8JKKSSTKwmRnVlA4GgdeClQRaccq65bRh/eLI14xm6Mk
	 29p81hm47s+uw==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 38C9C380946
	for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 20:01:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="apLjHruu";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id z30so9741983qkz.13
        for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 17:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WQRm8zku4yDygkJAfE5fFtsBL+UMHnDiUgyM5vnGbho=;
        b=apLjHruuOS5Ez83VrzSgXyOPyR6ULdTzLLhOmBLgVdjFNQFIPPTQQx//zN89+mPZco
         owFXebZ7ckvvpAip7X+HOrZ8DZy4EitRUXhAFvfuu9GaY9dYHxE8oAloWTVGs/a/VMJv
         8nd1QRBtMppbMQ9kV3UN8+ndYMpiGNii0S8mD9aEFpZSYUDVjTrgHG9ukKwgA5IBI09S
         nX3+niOkpiWX59Xz9602ob4eIOCpqDynt+uu57JITihIAR30TzAhy9z1RtTzgBrqPwfe
         ZNo9WutUqwpEpgmmgfl4tLJm+FKPP2BnRidtOJom1EX4/ls45VRMFn6Llh23mgEP/e/U
         y3ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WQRm8zku4yDygkJAfE5fFtsBL+UMHnDiUgyM5vnGbho=;
        b=KT+cbdbEp7lmtR/G8/6faCxrs37lOtRB+xHWn19jN/EelxHq0S56rlKDzXqHsb0wSk
         zuvIymJQ/PHQLkKaFz7zvPU8gWZ38jnue09NIjZ5HkDGMDWovbQbnvOFVEUXyy4Of14P
         RO2DnOXkVsBiOeXntgpSdSiavuFqZhBEG5XKkF97r4IiuCukhv1oZ+UAE4VC5kwrdjNw
         wdUF3nyj5E2Mt+SOXXjYTAIoipoUV4u7Ev7LQq1QHilWG1KeysOB430nORtEL8e9RSfZ
         0OJ8z0GkWdqXvyfymx7eh3ufBRYwSO9NmhMMSAuWL0eug5D9ca6Pz62Crhl6ZCFbGTgI
         HS7A==
X-Gm-Message-State: ACrzQf1MT7aoYCW6TRz6IXU9BSAU284U3WXNn6UMuxdvZGthwv4JEPNB
	iEXkm4DaeFEcgzsh5M1dzMXXgsl2lJY=
X-Google-Smtp-Source: AMsMyM7d/q8IailX7ejhvEdKgJzU/soZlwbrepSs9VmG3Epe3+KXLoP+HTEhEHTwDPr/qoFCHofrzw==
X-Received: by 2002:a05:620a:2293:b0:6ee:94a6:5cd4 with SMTP id o19-20020a05620a229300b006ee94a65cd4mr3511964qkh.537.1666137669071;
        Tue, 18 Oct 2022 17:01:09 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id y9-20020a37f609000000b006ce7cd81359sm3311656qkj.110.2022.10.18.17.01.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 17:01:08 -0700 (PDT)
Message-ID: <c1d19485-596e-cdd8-079e-25d6611cfb61@gmail.com>
Date: Tue, 18 Oct 2022 20:01:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BYAPR16MB2952D76B86E7A8A82923FB3FB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
 <7e0821ca-636a-88f6-eb38-c58cc7d408d4@gmail.com>
 <BYAPR16MB2952EA77A2796D897FF4399EB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BYAPR16MB2952EA77A2796D897FF4399EB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
Message-ID-Hash: 6GNRIDT44SW6GXL2IEH73HEKP6O6N2LA
X-Message-ID-Hash: 6GNRIDT44SW6GXL2IEH73HEKP6O6N2LA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6GNRIDT44SW6GXL2IEH73HEKP6O6N2LA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0xMC0xOCAxOTo1NywgSm9uYXRoYW4gUHJhdHQgd3JvdGU6DQo+IFRvIGNsYXJpZnks
IHRoZSBjb21tdW5pY2F0aW9uIGhhcyBwcmV2aW91c2x5IHdvcmtlZCB3aXRoIHRoZSBzYW1lIHNv
ZnR3YXJlL3JhZGlvIGNvbmZpZ3VyYXRpb24uDQo+DQo+IFRoaXMgaXMgYW4gZXZvbHZlZCBlcnJv
ciBhbmQgd2Ugd291bGQganVzdCBsaWtlIHRvIGtub3cgd2hhdCBpdCBtZWFucyBzbyB0aGF0IHdl
IGhhdmUgdGhlIGhvcGUgb2YgZml4aW5nIGl0IC0gbmVlZHMgdG8gYmUgYSByZW1vdGUgZml4IGFz
IHdlIG5vIGxvbmdlciBoYXZlIHBoeXNpY2FsIGFjY2VzcyB0byB0aGUgcmFkaW8uDQo+DQo+IHRo
YW5rcyAtIEpQDQpEb2VzIHRoZSBlcnJvciBzdXJ2aXZlIHBvd2VyLWN5Y2xpbmcgdGhlIGhhcmR3
YXJlPw0KDQpJdCdzIGNvbmNlaXZhYmxlIHRoYXQgaXQncyBhIHBvd2VyLXN1cHBseSBpc3N1ZS4N
Cg0KTXkgdW5kZXJzdGFuZGluZyBvZiB0aGlzIGVycm9yIGlzIHRoYXQgaXQncyBhYm91dCB0aGUg
dGltaW5nIG9mIHRoZSANCmludGVyZmFjZSBiZXR3ZWVuIHRoZSBBRENzIGFuZCB0aGUgRlBHQSwg
YW5kIHRoYXQNCiDCoCB0aW1pbmcgbmVlZHMgdG8gZmluZS10dW5lZCBvbiBzdGFydHVwLCBhbmQg
dGhpcyBmaW5lLXR1bmluZyBmYWlsZWQuwqAgDQpBcyBmb3IgdGhlIHJlYXNvbnMgZm9yIHRoYXQs
IG5vdCBzdXJlLCBzaW5jZSBJIHdhc24ndA0KIMKgIGludm9sdmVkIGluIHRoZSBoYXJkd2FyZSBk
ZXNpZ24uDQoNCg0KPg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNYXJj
dXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXks
IDE5IE9jdG9iZXIgMjAyMiAwOTo1Mg0KPiBUbzogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20N
Cj4gU3ViamVjdDogW1VTUlAtdXNlcnNdIFJlOiBbRVJST1JdIFtSRk5PQzo6R1JBUEhdIEVycm9y
IGR1cmluZyBpbml0aWFsaXphdGlvbiBvZiBibG9jayAwL1JhZGlvIzANCj4NCj4gV0FSTklORzog
VGhpcyBtZXNzYWdlIGhhcyBvcmlnaW5hdGVkIGZyb20gYW4gdW50cnVzdGVkIHNvdXJjZS4gQmUg
bWluZGZ1bCBvZiBhdHRhY2htZW50cyBhbmQgZW1iZWRkZWQgbGlua3MuDQo+DQo+IE9uIDIwMjIt
MTAtMTggMTk6NDEsIEpvbmF0aGFuIFByYXR0IHdyb3RlOg0KPj4gSGkNCj4+ICAgIFdlIGFyZSB0
cnlpbmcgdG8gdGFsayB0byBhbiB4MzEwLiBBY2Nlc3MgdG8gdGhlIGRldmljZSBpcyBsaW1pdGVk
IHRvIHRoZSBldGhlcm5ldCBjb25uZWN0aW9uLg0KPj4gVGhlIG1lc3NhZ2Ugd2UgZ2V0IGJhY2sg
d2hlbiBzdGFydGluZyBhIGdudXJhZGlvIGZsb3cgZ3JhcGggaXMgW0VSUk9SXQ0KPj4gW1JGTk9D
OjpHUkFQSF0gRXJyb3IgZHVyaW5nIGluaXRpYWxpemF0aW9uIG9mIGJsb2NrIDAvUmFkaW8jMCEN
Cj4+IFtFUlJPUl0gW1JGTk9DOjpHUkFQSF0gQ2F1Z2h0IGV4Y2VwdGlvbiB3aGlsZSBpbml0aWFs
aXppbmcgZ3JhcGg6IFJ1bnRpbWVFcnJvcjogc2VsZl9jYWxfYWRjX2NhcHR1cmVfZGVsYXk6IFNl
bGYgY2FsaWJyYXRpb24gZmFpbGVkLiBDb252ZXJnZW5jZSBlcnJvci4NCj4+DQo+PiBUaGUgWDMx
MCBoYXMgT05FIFR3aW5SeCBSRiBEYXVnaHRlcmJvYXJkIGF0dGFjaGVkLg0KPj4NCj4+IENhbiBz
b21lb25lIHBsZWFzZSBpbmRpY2F0ZSB3aGF0IHRoZSBlcnJvciBtZWFucyBhbmQgc3VnZ2VzdCBh
DQo+PiB3b3JrYXJvdW5kPyBQbGVhc2UgaWdub3JlIGFueSBwcmVmaXggdGhhdCB3ZSBoYXZlIGFk
ZGVkDQo+Pg0KPj4gdGhhbmtzIC0gSlANCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbSBUbyB1bnN1YnNjcmliZQ0KPj4gc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPiBXaGF0IHZlcnNpb24gb2YgVUhEIGFy
ZSB5b3UgdXNpbmc/ICBXaGF0IHZlcnNpb24gb2YgR251IFJhZGlvPw0KPg0KPiBJJ3ZlIGJlZW4g
dXNpbmcgYW4gWDMxMCB3aXRoIFVIRCA0LjEuMC41IGFuZCBHUiB2ZXJzaW9uIDMuMTAuMS4xIHdp
dGggdHdvIFR3aW5SWCBpbnN0YWxsZWQsIHdpdGhvdXQgYW55IGlzc3Vlcy4gIEknbSB1c2luZw0K
PiAgICAgdGhlIGZpcnN0IFNGUCBwb3J0IChTRlAwKSBidXQgYXQgMTBHYml0LiAgIEkndmUgcHJl
dmlvdXNseSB1c2VkIGl0IGF0DQo+IDFHQml0IHdpdGhvdXQgYW55IGlzc3Vlcy4NCj4NCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
