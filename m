Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCDC507F58
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 05:05:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 223CB3849A9
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 23:05:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650423935; bh=6hKTx3WfmQTKak4D77vMVbuyqcL1WMcL0RFIkVqqGP4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HJyGvtkdvskQjSZmBIgXbIdHHMT9icRENWN5QiX+R5q0io64Bclv+8yTySqZjbhNJ
	 anFwPixJqcVTaqSTraMOxTgK7wwArK0hl8T91G36lzILC3C0Ji5HvZf4UIxLDRCoFe
	 RolH13LbW8S2M2BO3Ync88kaI/6K+wrTAI3z1izRMxnEkRlEjoBix8Lfgbn/dnLHAu
	 h3RUCEtLdd7H4f+uz6yxkaM7nnmDMkS2QYN9GsywIiirpxp4xRxQ35KreIoSNnwxAc
	 nHnt6cPAYNnr143p6+hJmaJZPcNFrmnGObvUHXSEYCtLReZ3lN8Rfr7l1Vh+vNJhr2
	 MgNEPd31EFdtg==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 96CB0384469
	for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 23:04:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Aw1fphCi";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id t26so156172qtn.6
        for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 20:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=Sh6u3dK7kBfRbCf92vJ/8Kc4AfuJ1vj8HPCXT+wtrtY=;
        b=Aw1fphCiffWPQt3DtvxeyO+H9MjA/p2ZK6QABuGGYnxAaaTiDUywMTHAXswsYcP8Lc
         8x4mW3biNmoD0reH9Qra+1jgihApEf0A0nkfQ9R5NuuIz2odgNsP5ED6fDEdxTF+XUKI
         4SE7eNK7kqDG7kuJwp5pnmAk5rFqo/G7mZ9pSi4j4vXvgT9CmzIn1yfp92Mg2l93HELq
         ulzbJECrOF6bi5K3MaVMg/+8hXXQmngj2mA5DxLGPWA2MAjUZTdrkLa21r3ohWlifl7r
         S0jHzNekEVj3icEUzjKeSevKUkHK72yUQz1yjBjv5IZaFqcmNEIbp8ToTDv/k3im3HKD
         s4cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Sh6u3dK7kBfRbCf92vJ/8Kc4AfuJ1vj8HPCXT+wtrtY=;
        b=t2h28K/nMnaPqtfuxatOGh2DcFDJows5ZjnyknqS9ac/YAXkGsrUXRR0Ne4IXcRH7K
         0jgKHyw18xBeSe3Bb8VotcHuVqJZsHwED4KJ+iQ5J/DAjnB4JlSlFwDdGpXkfFPXoBNn
         RHalFIABUIw4JqXyEp0x4tuO7NueAL5dPodjA81saAPFRE/tlajV3sddal9pZkXwSCM9
         3P/Rp44SfKH4O1AkSm7mRw+E62hW+UCpcn74ZikUkwT69psXO2jeXE6Sw9olZ6lMYyPI
         6SX1QqDkdQ1SeaLZ7ZCWCL7EcoDe4vib9sx4utNwYvU4470YnA1oahD4XwOkGlNv59PX
         Ozfg==
X-Gm-Message-State: AOAM533gjZ6Dgmh2cVRyS+WjI2Ule+9xsquICjBb28NgxBJq+4Ay0CTm
	cB40d0+pp6/DEZ3tLJh63R57tyGtLWA=
X-Google-Smtp-Source: ABdhPJzBYkGHM0G97nfRE3e14YC1lv7tuWDIdbVreU8g93kHNldFZLjoImGDFnRfZ0+lH5AYfwkQLw==
X-Received: by 2002:a05:622a:1793:b0:2e1:ba41:ed2 with SMTP id s19-20020a05622a179300b002e1ba410ed2mr12583806qtk.238.1650423864937;
        Tue, 19 Apr 2022 20:04:24 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id bk18-20020a05620a1a1200b00680c72b7bf4sm1064707qkb.93.2022.04.19.20.04.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 20:04:24 -0700 (PDT)
Message-ID: <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com>
Date: Tue, 19 Apr 2022 23:04:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
Message-ID-Hash: IAO6NSAA53QPZESM7Z2PJQPYI5Z3OOBC
X-Message-ID-Hash: IAO6NSAA53QPZESM7Z2PJQPYI5Z3OOBC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD compilation in Ubuntu 20.04 (focal)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IAO6NSAA53QPZESM7Z2PJQPYI5Z3OOBC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNC0xOSAyMjo0NSwgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+IEhpLA0KPg0KPiBJ
IHVzZWQgdG8gaGF2ZSBVYnVudHUgMTQuMDQgYW5kIGhhZCBubyBpc3N1ZXMgd2l0aCB1aGQuIFJl
Y2VudGx5IGkgaGFkDQo+IHRvIHVwZ3JhZGUgdG8gVWJ1bnR1IDIwLjA0LCBhbmQgSSBjYW4ndCBm
aW5kICphbnkqIHVoZCB2ZXJzaW9uIHRoYXQNCj4gY2FuIGNvbXBpbGUgaW4gaXQuIEkgaGF2ZSB0
cmllZCBvdmVyIDIwIGZyb20gZ2l0IGZyb20gMy45LjAgdG8NCj4gMy4xMS41OigNCj4NCj4gV2l0
aCBlYXJsaWVyIHJlbGVhc2VzIGxpa2UgMy45LnggSSBnZXQgaW50byBib29zdCBwcm9ibGVtcywg
YW5kDQo+IHNvbWV0aGluZyBsaWtlICJuYXRpdmUiIG5vdCBkZWZpbmVkLg0KPiBJbiBtb3JlIHJl
Y2VudCByZWxlYXNlcyBsaWtlIDMuMTEueCBJIGdldDoNCj4NCj4gSW4gZmlsZSBpbmNsdWRlZCBm
cm9tDQo+IC9ob21lL25pa29zL3dvcmsvdWhkL2hvc3QvbGliL3VzcnAvY29yZXMvZ3Bpb19hdHJf
MzAwMC5jcHA6ODoNCj4gL2hvbWUvbmlrb3Mvd29yay91aGQvaG9zdC9saWIvdXNycC9jb3Jlcy9n
cGlvX2F0cl8zMDAwLmhwcDoyMDo0MjoNCj4gZXJyb3I6IGV4cGVjdGVkIGNsYXNzLW5hbWUgYmVm
b3JlIOKAmHvigJkgdG9rZW4NCj4gICAgIDIwIHwgY2xhc3MgZ3Bpb19hdHJfMzAwMCA6IGJvb3N0
Ojpub25jb3B5YWJsZSB7DQo+ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXg0KPiBtYWtlWzJdOiAqKiogW2xpYi9DTWFrZUZpbGVzL3VoZC5kaXIvYnVp
bGQubWFrZToxMjM3Og0KPiBsaWIvQ01ha2VGaWxlcy91aGQuZGlyL3VzcnAvY29yZXMvZ3Bpb19h
dHJfMzAwMC5jcHAub10gRXJyb3IgMQ0KPiBtYWtlWzFdOiAqKiogW0NNYWtlRmlsZXMvTWFrZWZp
bGUyOjY1NTogbGliL0NNYWtlRmlsZXMvdWhkLmRpci9hbGxdIEVycm9yIDINCj4gbWFrZTogKioq
IFtNYWtlZmlsZToxNjM6IGFsbF0gRXJyb3IgMg0KPg0KPiBUaGlzIHNlZW1zIGxpa2UgYSBjKysg
aXNzdWUuLi4NCj4NCj4gSXMgdGhlcmUgYW55IGdpdCByZWxlYXNlIHRoYXQgY29tcGlsZXMgaW4g
VWJ1bnR1IDIwLjA0Pw0KPiBJIGtub3cgdGhhdCB5b3UgbGlzdCBpbiBzdXBwb3J0ZWQgdmVyc2lv
bnMsIG9ubHkgVWJ1bnR1IDE0LjA0ICYgMTYuMDQsDQo+IGJ1dCBJIHN1c3BlY3QgdGhpcyBpcyBv
dXRkYXRlZCwgc2luY2UgVWJ1bnR1IGRvZXNuJ3Qgc3VwcG9ydCB0aGVtIGFueQ0KPiBtb3JlLCBh
bmQgaW4gdWhkIGluc3RhbGxhdGlvbiB5b3UgZGVzY3JpYmUgMjAuMDQgYnVpbGQgaW5zdHJ1Y3Rp
b25zLg0KPg0KPiBUSUENCj4gTmlrb3MNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KRm9yIFVidW50dSAyMC4wNCwgeW91IGNhbiBq
dXN0IGluc3RhbGwgaXQgZnJvbSB0aGUgcGFja2FnZSByZXBvIHVzaW5nIA0KQVBULS1ubyBuZWVk
IHRvIGNvbXBpbGUgaXQuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
