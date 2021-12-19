Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C176447A049
	for <lists+usrp-users@lfdr.de>; Sun, 19 Dec 2021 12:02:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3A023849FC
	for <lists+usrp-users@lfdr.de>; Sun, 19 Dec 2021 06:02:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="A6u/ZwfR";
	dkim-atps=neutral
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 7CB053849C5
	for <usrp-users@lists.ettus.com>; Sun, 19 Dec 2021 06:01:09 -0500 (EST)
Received: by mail-wr1-f47.google.com with SMTP id v11so13826037wrw.10
        for <usrp-users@lists.ettus.com>; Sun, 19 Dec 2021 03:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=scxuBUsZGP8GY4OREYhD40boXvWp6l2OTItx7GJcYPM=;
        b=A6u/ZwfRZCUdJ8R+3jMKI2btkJoV7TFZYO1gs1e2JAg8MeCaXUYEoGjEfnhdqrVGSb
         NfzkJJ9maeJ2hdBkxFMhmXHmXcWBr281WD7FJa+amypq+IkNdogF+3YuppBH6GdLglV6
         7wBlmEHfa5khHUyPxFG1rowoBTiPu8Qxjotq6P4u0EvJQ4ZgBQDdirFGceOu9aBY2QT5
         sfl0C3yyrJMp+evIcx2N0SYa6uZN/DPdk9En6amax3Rh0d2n61upMxHYme6q+vEhiotb
         EsKRSzkkYPOkSlt6TjmVSBQYEV0hn8wnjLHHf99QWvUwKWgWMGx9Fujs566VntbWCw5g
         Dblw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=scxuBUsZGP8GY4OREYhD40boXvWp6l2OTItx7GJcYPM=;
        b=rNAtNjm0eRGXiGEQVay69o65kop+Vt7hPGBsSSCqc/IWyDjFjmOwvuhUiNoQNJzX3U
         r6Le0X1acNf9joTitb34Suzkq6ZvPcAabaFBkwaLAbRKpnzmP0dfuLobKwyWRG/RaoNc
         H0BwaaJ2/lo//banzXlBxZytHBNhINvM89YIZZGtroti+xk8Awt8WbvE/IDALFgBuy+X
         i4a1i648fzNc8mVnsy2vwj9RJhImS76wXPwHX2ScmCDXubE1LRoGMIwHV73DunZPpl29
         TxRcJY3mHLoA9Viwt9LmjD7U7In2QSY2cf1xar4I9nrhVOC54NaEUlk0rUDk9mIaY/Zq
         Mpzw==
X-Gm-Message-State: AOAM533t+4o/rvPH33mUe+8I4LMLd8jviONVGtGvVMKEjuCaPWqJWv2F
	Gc/wK2cHMG0cFSyH1FyMWtaORfwoRVQfQmoa
X-Google-Smtp-Source: ABdhPJzeI4nKrS8DA7xOsmjRqFVuNrGcx1syJkdXvlw7rxpYcjnrhFhO7YM+3eq49xijcBGsg4svAg==
X-Received: by 2002:a5d:64c3:: with SMTP id f3mr8803185wri.295.1639911668252;
        Sun, 19 Dec 2021 03:01:08 -0800 (PST)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-38.hsi.kabel-badenwuerttemberg.de. [46.223.163.38])
        by smtp.gmail.com with ESMTPSA id o12sm16559474wrc.85.2021.12.19.03.01.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Dec 2021 03:01:07 -0800 (PST)
Message-ID: <692f8895-bd3a-5b14-df32-122893d504f3@ettus.com>
Date: Sun, 19 Dec 2021 12:01:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3PvatKct3yuqkE+=j7n2YXmGJhb2nVzVvWTPyfMMay5BuQ@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAA=S3PvatKct3yuqkE+=j7n2YXmGJhb2nVzVvWTPyfMMay5BuQ@mail.gmail.com>
Message-ID-Hash: 65ZTEPZ7QSO5WB5KA3JJTSWBU7O2U744
X-Message-ID-Hash: 65ZTEPZ7QSO5WB5KA3JJTSWBU7O2U744
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: In installing gr-ettus when i built Gnuradio and UHD from source i faced with strange errors...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/65ZTEPZ7QSO5WB5KA3JJTSWBU7O2U744/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgU3RhY2twcm9ncmFtbWVyLA0KDQpzd2lnIGVycm9ycyBsaWtlIHRoYXQgcmVhbGx5IGxpa2Ug
dG8gaGFwcGVuIGlmIFNXSUcsIGZvciBzb21lIHJlYXNvbiwgZmluZHMgdGhlIHdyb25nIA0KaGVh
ZGVycy4gSXMgaXQgcG9zc2libGUgeW91J3ZlIGdvdCAqbXVsdGlwbGUqIGluc3RhbGxhdGlvbnMg
b2YgVUhELCBvciBHTlUgUmFkaW8sIG9yIGFuIA0KZXhpc3RpbmcgZ3ItZXR0dXMgaW5zdGFsbGF0
aW9uPw0KDQpCZXN0IHJlZ2FyZHMsDQpNYXJjdXMgTcO8bGxlcg0KDQpPbiAxOS4xMi4yMSAxMDo0
MCwgc3AgaCB3cm90ZToNCg0KPiBJIGJ1aWx0IEdudXJhZGlvIGZyb20gdGhlIHNvdXJjZSwgR251
cmFkaW8gdmVyc2lvbiAzLjguMSB3aXRoIFVIRCA0LjEuMDQgb3IgVUhEIDQuMC4wKEkgDQo+IHRl
c3RlZCB3aXRoIMKgYWxsIFVIRCB2ZXJzaW9ucykNCj4gbm93IHdoZW4gSSB3YW50IHRvIGluc3Rh
bGwgZ3ItZXR0dXMgb290IGluIEdudXJhYWRpbyDCoEkgYW0gZmFjZWQgd2l0aCB0aGUgYmVsb3cg
ZXJyb3JzLi4uDQo+IEhvdyBjYW4gSSBzb2x2ZSB0aGlzIHByb2JsZW0/DQo+DQo+IFRoYW5rcyBp
biBhZHZhbmNlDQo+DQo+IFsgNjQlXSBTd2lnIHNvdXJjZSBldHR1c19zd2lnLmkNCj4gRGVwcmVj
YXRlZCBjb21tYW5kIGxpbmUgb3B0aW9uOiAtbW9kZXJuLiBUaGlzIG9wdGlvbiBpcyBub3cgYWx3
YXlzIG9uLg0KPiAvaG9tZS9zcC9Eb2N1bWVudHMvZ3ItZXR0dXMtMTAzOGM0Y2U1MTM1YTI4MDNi
NTM1NTRmYzQ5NzFmZTNkZTc0N2Q5YS9zd2lnL2V0dHVzX3N3aWcuaToxNDA6IA0KPiBFcnJvcjog
VGVtcGxhdGUgJ3NldF9wcm9wZXJ0eScgdW5kZWZpbmVkLg0KPiAvaG9tZS9zcC9Eb2N1bWVudHMv
Z3ItZXR0dXMtMTAzOGM0Y2U1MTM1YTI4MDNiNTM1NTRmYzQ5NzFmZTNkZTc0N2Q5YS9zd2lnL2V0
dHVzX3N3aWcuaToxNDE6IA0KPiBFcnJvcjogVGVtcGxhdGUgJ3NldF9wcm9wZXJ0eScgdW5kZWZp
bmVkLg0KPiAvaG9tZS9zcC9Eb2N1bWVudHMvZ3ItZXR0dXMtMTAzOGM0Y2U1MTM1YTI4MDNiNTM1
NTRmYzQ5NzFmZTNkZTc0N2Q5YS9zd2lnL2V0dHVzX3N3aWcuaToxNDI6IA0KPiBFcnJvcjogVGVt
cGxhdGUgJ3NldF9wcm9wZXJ0eScgdW5kZWZpbmVkLg0KPiAvaG9tZS9zcC9Eb2N1bWVudHMvZ3It
ZXR0dXMtMTAzOGM0Y2U1MTM1YTI4MDNiNTM1NTRmYzQ5NzFmZTNkZTc0N2Q5YS9zd2lnL2V0dHVz
X3N3aWcuaToxNDM6IA0KPiBFcnJvcjogVGVtcGxhdGUgJ3NldF9wcm9wZXJ0eScgdW5kZWZpbmVk
Lg0KPiAvaG9tZS9zcC9Eb2N1bWVudHMvZ3ItZXR0dXMtMTAzOGM0Y2U1MTM1YTI4MDNiNTM1NTRm
YzQ5NzFmZTNkZTc0N2Q5YS9zd2lnL2V0dHVzX3N3aWcuaToxNDU6IA0KPiBFcnJvcjogVGVtcGxh
dGUgJ2dldF9wcm9wZXJ0eScgdW5kZWZpbmVkLg0KPiAvaG9tZS9zcC9Eb2N1bWVudHMvZ3ItZXR0
dXMtMTAzOGM0Y2U1MTM1YTI4MDNiNTM1NTRmYzQ5NzFmZTNkZTc0N2Q5YS9zd2lnL2V0dHVzX3N3
aWcuaToxNDY6IA0KPiBFcnJvcjogVGVtcGxhdGUgJ2dldF9wcm9wZXJ0eScgdW5kZWZpbmVkLg0K
PiAvaG9tZS9zcC9Eb2N1bWVudHMvZ3ItZXR0dXMtMTAzOGM0Y2U1MTM1YTI4MDNiNTM1NTRmYzQ5
NzFmZTNkZTc0N2Q5YS9zd2lnL2V0dHVzX3N3aWcuaToxNDc6IA0KPiBFcnJvcjogVGVtcGxhdGUg
J2dldF9wcm9wZXJ0eScgdW5kZWZpbmVkLg0KPiAvaG9tZS9zcC9Eb2N1bWVudHMvZ3ItZXR0dXMt
MTAzOGM0Y2U1MTM1YTI4MDNiNTM1NTRmYzQ5NzFmZTNkZTc0N2Q5YS9zd2lnL2V0dHVzX3N3aWcu
aToxNDg6IA0KPiBFcnJvcjogVGVtcGxhdGUgJ2dldF9wcm9wZXJ0eScgdW5kZWZpbmVkLg0KPiAv
dXNyL2xvY2FsL2luY2x1ZGUvdWhkL3R5cGVzL2RpY3QuaHBwOjE0NTogV2FybmluZyA1MDM6IENh
bid0IHdyYXAgJ29wZXJhdG9yIA0KPiBzdGQ6Om1hcDxzdGQ6OnN0cmluZyxzdGQ6OnN0cmluZz4n
IHVubGVzcyByZW5hbWVkIHRvIGEgdmFsaWQgaWRlbnRpZmllci4NCj4gbWFrZVsyXTogKioqIFtz
d2lnL0NNYWtlRmlsZXMvZXR0dXNfc3dpZ19zd2lnX2NvbXBpbGF0aW9uLmRpci9idWlsZC5tYWtl
OjY1OiANCj4gc3dpZy9DTWFrZUZpbGVzL2V0dHVzX3N3aWcuZGlyL2V0dHVzX3N3aWdQWVRIT04u
c3RhbXBdIEVycm9yIDgNCj4gbWFrZVsyXTogKioqIERlbGV0aW5nIGZpbGUgJ3N3aWcvQ01ha2VG
aWxlcy9ldHR1c19zd2lnLmRpci9ldHR1c19zd2lnUFlUSE9OLnN0YW1wJw0KPiBtYWtlWzFdOiAq
KiogW0NNYWtlRmlsZXMvTWFrZWZpbGUyOjQyMTogDQo+IHN3aWcvQ01ha2VGaWxlcy9ldHR1c19z
d2lnX3N3aWdfY29tcGlsYXRpb24uZGlyL2FsbF0gRXJyb3IgMg0KPiBtYWtlOiAqKiogW01ha2Vm
aWxlOjE0MTogYWxsXSBFcnJvciAyDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
