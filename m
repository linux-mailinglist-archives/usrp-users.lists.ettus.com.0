Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9594779E94C
	for <lists+usrp-users@lfdr.de>; Wed, 13 Sep 2023 15:29:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62D3B3855F6
	for <lists+usrp-users@lfdr.de>; Wed, 13 Sep 2023 09:29:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694611778; bh=iqTAIDNP3R/o/Gt7jAvj/GzKmt5TxMMJwJNFKQdRM5c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xBnPlcuCsMgXlsiGuOyahzendYExTnXI92sqUmhjnFZzZNDuAAJb8lcRpf5Wdv6IO
	 lq1OWY45Xm0KHhoji/dH/YH1nwZrO697DaII5X7I4PbTNx0HUp+N9KZp9RMdxMgGUq
	 8mTXA96YTWn7qWWL7TZFSbdplLcKDMegjhwOK57UpiV6U4VsOdJkzRurY0bboxCndw
	 f2e+KWe0U2RbXV279NDoHD4wd3KFjdPt9R09VAahBHoEkwuclfCwrS5/kUXIGVTyTb
	 vyUk+vAtKDRsaHNB/R5gy2iaXZ9IvtGCpM3W79RhA3cYSO7FnJSL37NNQ7sabLNuaO
	 fhtt8mAc+4C0g==
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by mm2.emwd.com (Postfix) with ESMTPS id BD7933855F6
	for <usrp-users@lists.ettus.com>; Wed, 13 Sep 2023 09:29:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=simula-no.20230601.gappssmtp.com header.i=@simula-no.20230601.gappssmtp.com header.b="AqlSi+Fe";
	dkim-atps=neutral
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-501eec0a373so11164970e87.3
        for <usrp-users@lists.ettus.com>; Wed, 13 Sep 2023 06:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=simula-no.20230601.gappssmtp.com; s=20230601; t=1694611758; x=1695216558; darn=lists.ettus.com;
        h=in-reply-to:organization:from:references:to:content-language
         :subject:user-agent:mime-version:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xHZEJCY0ne2AVwo5nuXhPZ5EEhrXpf1JvRX7JeQq8Bk=;
        b=AqlSi+FeUYbNBEn2Oh7jNO03CDjcsT9LyCa7NdM3pvnfkc8xyvp2rvGDrHlm0a5ZVd
         VRk3n2skQKHOiay5vlAcunKmjf+Ilwz6O1LUkN2buBV72u/jlNo7P+6Co+FKCdaGIinm
         wFvQC7SKQ/IQZ2ADey5Yuml7+2Zssj7rHPAoQZn9drMMi6g1m0mihooNW6BMfDUJASke
         3WD940eAbJG7x5n+Ej+NnkVlmV4AbFPKYk8n/Fot22egQfaapPMwnJeTpBNqW8TKTz9u
         O+Grr38IrmPI1N2SkjnykciI6wEJVWxGbrRWeIZ0J/pzYFELre40h27/qJDlpCrfbsYs
         kyLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694611758; x=1695216558;
        h=in-reply-to:organization:from:references:to:content-language
         :subject:user-agent:mime-version:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xHZEJCY0ne2AVwo5nuXhPZ5EEhrXpf1JvRX7JeQq8Bk=;
        b=ixJa5f8QU3h6ZWoESfizPneJ+ek2zYXV3+RJEk8AhGodXwdMLB4QTKSdRDV5jGRTbM
         lkXalp3tJfYqBZ3DK2tddMhqYwLAX5aG2TUezJ4xALqIK0360Qzf1K9Lcf1JQwrzi8ZT
         72fB9P1UsqNrUyQXKlkUlwfjRW8xCeRrBRekbTtXM57nZidyDWBhSEMf2ThPW7R8gCB3
         W7+TPHj2/LhLrsAg4VS3l41cfi6m8I8CbiZ2+D2tYjCCWHm0Nn7De/rmweYV1eYuRS0m
         pCGqV9uV18SmomdoGgwFD5+1r6c50ELtcafuPU79fcgbPU8okEKJMIHFYlk67RxbzAMi
         S0mg==
X-Gm-Message-State: AOJu0YyAHmCTIRDdrwU2v5npWMmuLlUDEPMWMgldPnIxrXhgoyEs0Bp6
	7T4yNjEKBsKYuruLlBoO2OmtGO4EO79YDhzaTIs=
X-Google-Smtp-Source: AGHT+IEdSJS5zuRYIvwaZEx8x196hJJnihU2Tphpc4RhdARMNI0kZmsdNZEbbfE49RGTh4n+DGU8VA==
X-Received: by 2002:a05:6512:3697:b0:500:b7ed:105a with SMTP id d23-20020a056512369700b00500b7ed105amr1777236lfs.29.1694611758098;
        Wed, 13 Sep 2023 06:29:18 -0700 (PDT)
Received: from ?IPV6:2001:700:712:52:baca:3aff:fe92:9517? ([2001:700:712:52:baca:3aff:fe92:9517])
        by smtp.googlemail.com with ESMTPSA id u26-20020ac243da000000b004fe39f31dc7sm2118339lfl.294.2023.09.13.06.29.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 06:29:17 -0700 (PDT)
Message-ID: <a9e7f02e-9eee-89db-f682-dd4819677871@simula.no>
Date: Wed, 13 Sep 2023 15:29:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0b554ad0-7aad-e2e3-74e3-8b1c1598a8c8@simula.no>
 <48f56f6f-fc6a-e379-d0e5-c983116b46fc@simula.no>
 <c09e857c-3c22-6415-e320-3cfb11207295@gmail.com>
From: Thomas Dreibholz <dreibh@simula.no>
Organization: Simula Research Laboratory
In-Reply-To: <c09e857c-3c22-6415-e320-3cfb11207295@gmail.com>
Message-ID-Hash: WV3WLVY2RK42ZOE4KH2QT7N4OKULQOGP
X-Message-ID-Hash: WV3WLVY2RK42ZOE4KH2QT7N4OKULQOGP
X-MailFrom: dreibh@simula.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: nr-softmodem: reproducible segfault in libuhd with Ettus N310 SDR
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WV3WLVY2RK42ZOE4KH2QT7N4OKULQOGP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5560418046753272813=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5560418046753272813==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------v47Iwg1iHJqFdtvgbc0mGKjL"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------v47Iwg1iHJqFdtvgbc0mGKjL
Content-Type: multipart/mixed; boundary="------------dkK2F45l0nnE7YlwLm0XY38u";
 protected-headers="v1"
From: Thomas Dreibholz <dreibh@simula.no>
To: usrp-users@lists.ettus.com
Message-ID: <a9e7f02e-9eee-89db-f682-dd4819677871@simula.no>
Subject: Re: [USRP-users] Re: nr-softmodem: reproducible segfault in libuhd
 with Ettus N310 SDR
References: <0b554ad0-7aad-e2e3-74e3-8b1c1598a8c8@simula.no>
 <48f56f6f-fc6a-e379-d0e5-c983116b46fc@simula.no>
 <c09e857c-3c22-6415-e320-3cfb11207295@gmail.com>
In-Reply-To: <c09e857c-3c22-6415-e320-3cfb11207295@gmail.com>

--------------dkK2F45l0nnE7YlwLm0XY38u
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCmluZGVlZCwgdGhpcyBpcyBhIGJ1ZyBpbiBPcGVuQWlySW50ZXJmYWNlLiBJIGFs
cmVhZHkgZmlsZWQgYSBidWcgcmVwb3J0IA0Kd2l0aCBmaXggdGhlcmU6IA0KaHR0cHM6Ly9n
aXRsYWIuZXVyZWNvbS5mci9vYWkvb3BlbmFpcmludGVyZmFjZTVnLy0vaXNzdWVzLzY4MSAu
IFRoZSANCnByb3Bvc2VkIGZpeCBzZWVtcyB0byB3b3JrLg0KDQpPbiA5LzEzLzIzIDE1OjI1
LCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6DQo+IFVubGVzcyBJJ20gYmFkbHkgbWlzdGFrZW4s
IHRoaXMgSVMgTk9UIGEgYnVnIGluIFVIRCwgYnV0IHJhdGhlciBhIGJ1ZyANCj4gaW4gbnIt
c29mdG1vZGVtLS1pdCdzIG1pcy1tYW5hZ2luZyBpdHMgYnVmZmVyIHBvaW50ZXJzLg0KPiDC
oCBOb3RoaW5nIHRoYXQgVUhEIGNhbiBkbyBhYm91dCB0aGF0LsKgIEMrKyBkb2Vzbid0IGhh
dmUgcnVuLXRpbWUgDQo+IGJvdW5kcyBjaGVja2luZy4NCg0KLS0gDQpCZXN0IHJlZ2FyZHMg
LyBNaXQgZnJldW5kbGljaGVuIEdyw7zDn2VuIC8gTWVkIHZlbm5saWcgaGlsc2VuDQoNCj09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09DQogIFRob21hcyBEcmVpYmhvbHoNCg0KICBTaW11bGFNZXQg4oCU
IFNpbXVsYSBNZXRyb3BvbGl0YW4gQ2VudHJlIGZvciBEaWdpdGFsIEVuZ2luZWVyaW5nDQog
IENlbnRyZSBmb3IgUmVzaWxpZW50IE5ldHdvcmtzIGFuZCBBcHBsaWNhdGlvbnMNCiAgUGls
ZXN0cmVkZXQgNTINCiAgMDE2NyBPc2xvLCBOb3J3YXkNCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQog
IEUtTWFpbDogICAgIGRyZWliaEBzaW11bGEubm8NCiAgSG9tZXBhZ2U6ICAgaHR0cDovL3Np
bXVsYS5uby9wZW9wbGUvZHJlaWJoDQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KDQo=

--------------dkK2F45l0nnE7YlwLm0XY38u--

--------------v47Iwg1iHJqFdtvgbc0mGKjL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

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
=1/Td
-----END PGP SIGNATURE-----

--------------v47Iwg1iHJqFdtvgbc0mGKjL--

--===============5560418046753272813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5560418046753272813==--
