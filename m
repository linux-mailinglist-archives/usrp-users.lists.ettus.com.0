Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BA958551F
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 20:48:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D334A383E58
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 14:48:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659120500; bh=+qSbgP9MRRltnfqOZyvDsV/DhYYgrRvHNB9pAYo5Iq0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=q8h0IcV6LjjjM5lzINeC38tPpFQgSGqElt7ERgFovG5AhkLuEDKBeKb+4/U4APnCG
	 9EMLI0kgp7DYxYPNvGXKBnu9LvKHUJur6/m2vzBGF6RMK/z8oRxPlquOo+B6Uf2Tyi
	 hCkYUvdJvACbkO8dhWgFh+x5EE2MaV+GRK2Q7iaM8DBzfQWkBzO7jRwcAAcJqgmSOC
	 1cdEYeWxb7yVIAT8MuR4iGOIzVFvURTS8Ihk/2NGmoY7JNpkFvk82GoPLJKrPagynb
	 Mzs6g3S9H4QVFybkyr191H5ls+p6RoDZZjD8lO3rw4enwJSuAjq9ZZ49wA8Drlh3ji
	 dShpGc5WNIHVw==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 01A43380F19
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 14:34:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fRIeKrxV";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id i7so4202191qvr.8
        for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 11:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=XIed//aV2vrU5pctvvARfHIm1P+m+EyqcUEfOs+Lo9A=;
        b=fRIeKrxVpFVoCAQGEPS9/BveJyBLFx4qASIJkaJSe/YJNOXI3Is3gCh5frD7dkD4jn
         7zKwbhNOpykgyRapWqAmtGsvQ7J/RbF1cy7dXQMRKaLJb9QNY/KT+2KjeoU7d/2jDy/j
         jpFYR9SzFUR/t9xR+oGdWxzHo89UI+yNrr/8hYc/S0Nkf+ZS42hIwy8lrWqwjB9tWH9N
         0Oe8aQpO2scSFUMRVD3/s3VGcNtIOP1ejWmMPSo45Jl4gaVP2hZ1xjxeJCUmH0SVxcyG
         IOyYb3/8eaVb797kaHYowKvaPUYfuCeFv5UYtsdlOburQ7sEQADGMz2JbVbmworjmOg3
         MU7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=XIed//aV2vrU5pctvvARfHIm1P+m+EyqcUEfOs+Lo9A=;
        b=Ru78LsyLlXUssi5/3yj4QL12Eh4gCp1iJnTLMBE9U7yu8jSZIY1WqLuFU0b1p5PKYU
         ql3VgLAaaVfkPM7qYqH7v8Uvw0OPoSJnPkKFyX8bt7akK8FYeeQx5qKG1XiSDIl9VrYD
         fy8jha2RFq2Tf1Bt0Ntq0zuAhyxU1n8d39MHCjGs8urhiEcKO2gBEfXQH1qXcPdY3eyo
         y8wEVxyfmfC3G12K4WTWsmGf2xN4wLWGmJ93h6CDPLDAPWD8Hk3j9rEIVZeXkBMypY8R
         AGVAzFuzfj1dwSb7FlLzYUXwM/M9oW/p7jiPK5+46fNhmdGH5P3w4s+IdfgyaKVXRWCX
         L4Qg==
X-Gm-Message-State: ACgBeo0aWLbddAfZ1sWIbOVB/Ctmgugn2x/Z3QnIxFJmJcVwlJ85izcx
	/YBqTHbafSFyazGHov94q21KINs3HUQ=
X-Google-Smtp-Source: AA6agR44LYAo9uzIX1bgW/ZA879H+P6J9S+R3k04z1V/S7biMJdjQx0UdKC1ScmZK6gAFXUqLvxElg==
X-Received: by 2002:a05:6214:238e:b0:470:8ee8:52e6 with SMTP id fw14-20020a056214238e00b004708ee852e6mr4555069qvb.45.1659119682461;
        Fri, 29 Jul 2022 11:34:42 -0700 (PDT)
Received: from ?IPV6:2607:fb91:1486:4583:f6dc:b9ff:671f:4aa2? ([2607:fb91:1486:4583:f6dc:b9ff:671f:4aa2])
        by smtp.googlemail.com with ESMTPSA id h13-20020a05620a284d00b006af59e9ddeasm2946478qkp.18.2022.07.29.11.34.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jul 2022 11:34:42 -0700 (PDT)
Message-ID: <b904f30c-4a49-46f2-efdd-bbfbbf26e50d@gmail.com>
Date: Fri, 29 Jul 2022 14:34:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-CA
To: Saurav Roy <sauravroy@iisc.ac.in>,
 "White, Joshua J" <jjwhite@RiversideResearch.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MAXPR01MB43596E4778E0A0DA838DFAF489969@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
 <BN0P110MB101544FAD777E6C1534B1D66B1999@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
 <MAXPR01MB43594CC488C6EBD2C92798A289999@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
From: Ryan Volz <ryan.volz@gmail.com>
In-Reply-To: <MAXPR01MB43594CC488C6EBD2C92798A289999@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: LUY6RMDZT63KIHGQPPQSLQR3L47SWN52
X-Message-ID-Hash: LUY6RMDZT63KIHGQPPQSLQR3L47SWN52
X-MailFrom: ryan.volz@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Python API on windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LUY6RMDZT63KIHGQPPQSLQR3L47SWN52/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNClNpbmNlIHlvdSdyZSBsb29raW5nIGZvciBhIFdpbmRvd3MgYmluYXJ5IGRpc3RyaWJ1
dGlvbiBvZiBVSEQgdGhhdCANCmluY2x1ZGVzIHRoZSBQeXRob24gYmluZGluZ3MsIHlvdSBtaWdo
dCBmaW5kIHJhZGlvY29uZGEgdXNlZnVsOg0KDQpodHRwczovL2dpdGh1Yi5jb20vcnlhbnZvbHov
cmFkaW9jb25kYQ0KDQpBbHRlcm5hdGl2ZWx5LCB5b3UgY2FuIGluc3RhbGwgdGhlIFVIRCBjb25k
YSBwYWNrYWdlIGZyb20gYW4gZXhpc3RpbmcgDQpjb25kYSBpbnN0YWxsYXRpb24gKGUuZy4gTWFt
YmFmb3JnZSk6DQoNCmNvbmRhIGluc3RhbGwgLWMgY29uZGEtZm9yZ2UgdWhkDQoNCkNoZWVycywN
ClJ5YW4NCg0KT24gNy8yOS8yMiAxMDoyNiBBTSwgU2F1cmF2IFJveSB2aWEgVVNSUC11c2VycyB3
cm90ZToNCj4gRGVhciBzaXIsDQo+IHRoYW5rIHlvdSBmb3IgcmVwbHlpbmcuIEJ1dCBJIHRoaW5r
IHlvdSBhcmUgdGFsa2luZyBhYm91dCBVSEQgDQo+IGluc3RhbGxhdGlvbiBmcm9tIHNvdXJjZSBp
biBMSU5VWC4gSG93ZXZlciwgSSBhbSBzdHVjayBhdCBiaW5hcnkgDQo+IGluc3RhbGxhdGlvbiBp
biBXaW5kb3dzLiBGb2xsb3dpbmcgdGhpcyBwYWdlIA0KPiBodHRwczovL2ZpbGVzLmV0dHVzLmNv
bS9tYW51YWwvcGFnZV9pbnN0YWxsLmh0bWwgDQo+IDxodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9t
YW51YWwvcGFnZV9pbnN0YWxsLmh0bWw+wqAsIHdoZW4gd2UgcnVuIHRoZSANCj4gcHJlLWJ1aWx0
IFVIRMKgIGluc3RhbGxlciBpdCBnZXRzIGluc3RhbGxlZCBlYXNpbHksIGJ1dCBmcm9tIHRoZXJl
IHdlIA0KPiBkb24ndCBrbm93IGhvdyB0byBnZXQgdGhlIHB5dGhvbiBBUEkuIFRoZXJlIGlzIG5v
IG9wdGlvbiBmb3IgDQo+IOKAnC1ERU5BQkxFX1BZVEhPTl9BUEk9T07igJ0gaGVyZSBmb3IgdGhl
IGJpbmFyeSBpbnN0YWxsYXRpb24gb2YgVUhELiBDb3VsZCANCj4geW91IHBsZWFzZSBoZWxwIHVz
IGhlcmU/IFRoYW5rIHlvdS4NCj4gDQo+IFdpdGggcmVnYXJkcw0KPiBTYXVyYXYgUm95DQo+IA0K
PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4gKkZyb206KiBXaGl0ZSwgSm9zaHVhIEogPGpqd2hpdGVAUml2
ZXJzaWRlUmVzZWFyY2gub3JnPg0KPiAqU2VudDoqIEZyaWRheSwgSnVseSAyOSwgMjAyMiA3OjEz
IFBNDQo+ICpUbzoqIFNhdXJhdiBSb3kgPHNhdXJhdnJveUBpaXNjLmFjLmluPjsgdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20gDQo+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCj4gKlN1
YmplY3Q6KiBSRTogW1VTUlAtdXNlcnNdIFJlOiBVSEQgUHl0aG9uIEFQSSBvbiB3aW5kb3dzDQo+
IEV4dGVybmFsIEVtYWlsDQo+IA0KPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
