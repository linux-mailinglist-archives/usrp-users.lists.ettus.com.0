Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22114816A42
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 10:54:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB124384CEC
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 04:54:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702893272; bh=TeeM2TSL1VedRCn+/bPw7GNcnkHAwWPb6Nbdgsz2VbY=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZQyGrs3liYKr54C5Je2E3dMuunNFTUP+Gdfp9xinH6d5RwtpHxJZihGOx152lr+jB
	 WPF/+ayT/MKgcqQWXeyDI0N6cgcFtTRZpE9vGRwukeKKBFT/ohxqPpQ7xmGLdx8xHu
	 l5wmsikNKWUsyUu0xcg82ks4xf2ygJw0DIhyR6G7xHKg3JBnkGyAdisxEMfK87tJWJ
	 /p/IEGVg5QlkEBduiNqhOiK5WWS9Rzz2VwI5M+8Gv/MvqgP0OSooWnUPfEgZ7aY6cb
	 wo4taFKGBmR7qZUwkeTf6Ren3b462gAvZDLXbnDiivnhxrqrE0asMZtUR8nSh26TtY
	 Xx5DDNmXuhfaw==
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 36FED384CCE
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 04:54:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=simula-no.20230601.gappssmtp.com header.i=@simula-no.20230601.gappssmtp.com header.b="kxfGeeeE";
	dkim-atps=neutral
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-50e384cd6ebso689477e87.3
        for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 01:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=simula-no.20230601.gappssmtp.com; s=20230601; t=1702893239; x=1703498039; darn=lists.ettus.com;
        h=in-reply-to:organization:autocrypt:from:cc:content-language:subject
         :references:to:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RWT4dkXh4M6y2wLOmh7Xs5e3UGdzFE1rS5Xxb+ow53I=;
        b=kxfGeeeE9sd1KfCI5opLt6QNlp4mj57fz0eDR7jFMwWHB8JzxuSrVSlW0EmTF1AIB6
         p/BEsiOC24cne1/uCF95NLnUxCDUg9PtxHfgNnd6+L3SsQTgBSj9lKonM8TjvUx5SR59
         N7XlxKAVM3L+lJbk2wWpst5ZPQCX0XfF5evbIJb4p6TA2P0dESGOByL4XkRZYBbFdNyT
         s8N3T6i4db3CbgTdZWZL8tf035dnDi09b5bsGVJW69+n9JfUP4xxzhRyr40tZgRws4M5
         hK3PcjlQY6HQ5i9MPAs/TB6yM9bsYaqRQ1Er9/aVw1HaKRjn8i3t7uT9p5Xj/Fj6/2fu
         +Jyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702893239; x=1703498039;
        h=in-reply-to:organization:autocrypt:from:cc:content-language:subject
         :references:to:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RWT4dkXh4M6y2wLOmh7Xs5e3UGdzFE1rS5Xxb+ow53I=;
        b=JFI8Ysew/dLWiyFs2iaYEM/1MVACarmD3cQICkqIkQ83iPqALhONJlbSc+TYHfotZI
         CPGwpTTxIxIeEXHe0oOia8KKTqNxYMywoQBAPGmBo/wyRCScjgbOH98tuRo+cGIWAVg4
         PI63J4508xh+vBXiFvCR4r2VqTRBiG4GccsUWHgcV9pg7TRr5evfzEWMngPc7PlPXi2W
         NUaO+M8haKcu7WlwVETFN4ZTPLMaDcP1MVCkLNUHN8PMfwcOrAmuut5O19PaAxm1Vgo6
         dlZrigzrZNQe8stHxbmUvnosnHKu3sr4T+BsEBwDJxSuu2ofqNeu4WIQsL62LhgXlJ92
         V2Mg==
X-Gm-Message-State: AOJu0Yzv9YuZ/VLmp2EpUjMErWNZ7dKfdm8wd+p0Fwv8N1KSH8aqf96B
	YYT/WtmiarotLXH9tlols5ZKCLb4Kg6hEvu0h6w=
X-Google-Smtp-Source: AGHT+IG9l0oOVJfiJvNIo6Zgb+NemG/Upb9uym5rnccy5yA/NKN9c8Jt83N6ug7mtYwDvhn+ITfP2w==
X-Received: by 2002:a05:6512:15a2:b0:50e:2ce9:fe75 with SMTP id bp34-20020a05651215a200b0050e2ce9fe75mr1114603lfb.73.1702893238679;
        Mon, 18 Dec 2023 01:53:58 -0800 (PST)
Received: from ?IPV6:2001:700:712:52:baca:3aff:fe92:9517? ([2001:700:712:52:baca:3aff:fe92:9517])
        by smtp.googlemail.com with ESMTPSA id k6-20020a05651239c600b0050e38536a45sm252490lfu.157.2023.12.18.01.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Dec 2023 01:53:57 -0800 (PST)
Message-ID: <d6722ff7-ce33-492b-9542-6d067f187623@simula.no>
Date: Mon, 18 Dec 2023 10:53:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: shamildilshan.b@gmail.com
References: <CAGeA34HFnL3h5cDLj8mh_fjjO32w3sYDwS=rw7qN12Vj6-ejTw@mail.gmail.com>
Content-Language: en-US
From: Thomas Dreibholz <dreibh@simula.no>
Autocrypt: addr=dreibh@simula.no; keydata=
 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
Organization: Simula Research Laboratory
In-Reply-To: <CAGeA34HFnL3h5cDLj8mh_fjjO32w3sYDwS=rw7qN12Vj6-ejTw@mail.gmail.com>
Message-ID-Hash: DD76ELZ4EWWUNOBO2K6Y63KO6VX5QT5E
X-Message-ID-Hash: DD76ELZ4EWWUNOBO2K6Y63KO6VX5QT5E
X-MailFrom: dreibh@simula.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 and USRP B210 didn't connect through RF
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DD76ELZ4EWWUNOBO2K6Y63KO6VX5QT5E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3914939098665435858=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3914939098665435858==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4F2YoQ0j1VrI4BB8PI8n2pT1"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------4F2YoQ0j1VrI4BB8PI8n2pT1
Content-Type: multipart/mixed; boundary="------------zIWydjTttthBCN4pAHYar0dJ";
 protected-headers="v1"
From: Thomas Dreibholz <dreibh@simula.no>
To: shamildilshan.b@gmail.com
Cc: usrp-users@lists.ettus.com
Message-ID: <d6722ff7-ce33-492b-9542-6d067f187623@simula.no>
Subject: [USRP-users] Re: USRP N310 and USRP B210 didn't connect through RF
References: <CAGeA34HFnL3h5cDLj8mh_fjjO32w3sYDwS=rw7qN12Vj6-ejTw@mail.gmail.com>
In-Reply-To: <CAGeA34HFnL3h5cDLj8mh_fjjO32w3sYDwS=rw7qN12Vj6-ejTw@mail.gmail.com>

--------------zIWydjTttthBCN4pAHYar0dJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2hhbWlsLA0KDQpJIGp1c3Qgbm90aWNlZCB5b3VyIG1lc3NhZ2UgDQpodHRwczovL3d3
dy5tYWlsLWFyY2hpdmUuY29tL3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tL21zZzEzNDA4
Lmh0bWwgb24gDQp0aGUgVVNSUCBtYWlsaW5nIGxpc3Qgd2hpbGUgZGVidWdnaW5nIHByb2Jh
Ymx5IHRoZSBzYW1lIGlzc3VlOiBOMzEwIDwtPiANCkIyMTAgYXJlIG5vdCBjb21tdW5pY2F0
aW5nIHByb3Blcmx5IHdpdGggT0FJIE5SIGluIDVHIFNBIG1vZGUuIEhhcyB0aGVyZSANCmJl
ZW4gYW55IHNvbHV0aW9uIHRvIHRoZSBwcm9ibGVtPw0KDQotLSANCkJlc3QgcmVnYXJkcyAv
IE1pdCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4gLyBNZWQgdmVubmxpZyBoaWxzZW4NCg0KPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0NCiAgVGhvbWFzIERyZWliaG9seg0KDQogIFNpbXVsYU1ldCDigJQg
U2ltdWxhIE1ldHJvcG9saXRhbiBDZW50cmUgZm9yIERpZ2l0YWwgRW5naW5lZXJpbmcNCiAg
Q2VudHJlIGZvciBSZXNpbGllbnQgTmV0d29ya3MgYW5kIEFwcGxpY2F0aW9ucw0KICBQaWxl
c3RyZWRldCA1Mg0KICAwMTY3IE9zbG8sIE5vcndheQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiAg
RS1NYWlsOiAgICAgZHJlaWJoQHNpbXVsYS5ubw0KICBIb21lcGFnZTogICBodHRwOi8vc2lt
dWxhLm5vL3Blb3BsZS9kcmVpYmgNCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQoNCg==

--------------zIWydjTttthBCN4pAHYar0dJ--

--------------4F2YoQ0j1VrI4BB8PI8n2pT1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsd5BAABCAAjFiEEIUEmclGNiy0YYu/vXNXRKqCHe0kFAmWAFrIFAwAAAAAACgkQXNXRKqCHe0mp
Hz/9F0YM8/cT5y4LK6nJkoy7i6rfyfQ5x3ZA20ClnlMoFD0kpJPgHQTbHFK5nLVDIns0ORFpNib3
X9yvTVj3s0nW+bul94QHsNoV4iR6PR/PexFdIDHtwqz85d9kbd4+wWj3zv7VkpVLapWqoPtXJZLr
Mhq8PLC5Qy2RkHajNziAfhxYV285JEzGrs3px4InWzQeMwRLiRILj935lzU1TUj/Xk5z3lRNvxux
BysjA67+AQP/cBg1hCX8cg/wOKXD6TaGwhUddcoCu5DE5c0JJnLtzViO52mgERlthB2dSCvg2wU1
AVnvRMCa/vBaMlFjSUCoB949mERyeq96KHcHKWUw7Z4CdIhzjRAfHWNb49t2TErL0g3FlLHfLolY
kZVDnvwixEzfa9d1dFtGdZTHvAS88tUQaljC54EaWjLMM/jqbCq7vHYDV5wMwvJj4eU5LVEKJTj7
nj9bEA++Y6PC8g1bPC/6HfODYe11UtAWDbRb6JLqquMUgXF4piy4SmuOG1sQ2mQSQFqXrllJpTFw
XfVTnD69Ek7SwS2AwiZAaOuFsffVTF2oP17DqM7YQM1E4KUqAquZeivIxZ0EBQiJ57Hdqi4aNxx4
vEg+QGQ7jObZJBgW00iQOIat6/Piw6YG11q6isUo7a5Dzl3OlXS/bG3phS0reTbVoKGkCSykYgnv
JKeEgh+ny9lngWoZpT5dLWcw3wm1BODpiDMCPeQrlna+qKU970SpuAdRk3A4WKH2s8QD3J27NKMx
iBivTK/nsn6z9HnWZXEqVjvVjesBuI7vq9UGGiY80MWnnyUion+oHJt8EzwX8KtI3/wY6Yol65i0
poNhGqFCCkaNW5t6ZqDL+RBeoIHzmoLok4RRneWeRRqM2gBq+4x5onocxbwHQb/m0khfdh94G3qu
I3tzvStNgAUrFJ4ODnI2HxD72GpFHrv7XI9Dq6emDll5vGGTCL7ZS0nTaEmVbWv77FIA/zAn8SW9
oz902UEp4WBFY2nwtTSm8JTPsqHkaSJ3YphyyyIOIIj8tFGHXz7kE4z9l9aCaE+JABj3XVebWmkz
iLYlLtJatagrurwRaqAgS8EZRcTTAgfbUW7D0UxuimhrGAzM9csXwFIbijo4NGQ9jdM/PIMeUtoY
1KUrT5kioEvjj60vbf+s5yUc1MZ9v1Wh/D4vlxXTiD2r8DtiOqL3nh32TNaVqLRiCiY2omg0wHJR
E0mIBT8imd2j3PY3jRkMPCAb/qo5zY9fWsoGs8G8KlemORtVzXNs5ANxvDK0x0tgj7cx0nas/2zu
FzJrMVwotor7F2qQcT6wsAlND+Svtb5vESyVnlodfPoJQFNSduUKzGnLEMKMemW5v++AU5zbkOXl
kySybcTxiC8C7u4dee+JQNC6U/rTSp8SYqxNLng7uRVgwz8pY6puOgAKpo4Rm0AaNKM5Uc8uRFD1
qW2mRu5YOk2musZpXBWQRIo0GWSlS88nWxWsz0+rF8pgb7DGao/an5jPlvOS9gnK9OX9oISSJkqu
4NeMs+/WxByD+nFMvvUMSU5Ki0QUOIKlKy2DcyCFPZ25lDMhyGmceOfjrjmjGzHEnfUpyfrnAY/N
IRhvMhEDQZIz2auqkRIIzV+eHT0jJhzUoCMiEuWm5d2g8sRXtSFDbt2TMnarUDniXTqhNGH4Exm4
W49s3I+ifHOYrD1uN1lNi5N4qrqQYsjrdjA2LJ8gLKQB33YMjwZ/nbGsEvhgPTvypH/PhSnyK6zO
sGN7ANTYQ5Qzqqzzla1KnvnlPMJTpbHRz+Qkt1Ag1GZrfiFFng7egGh1Srecs4aH8uIjG63ndFHO
TCFdRvN2W/2eSqO6juYdkjCqJwUOLfiGAylFPkrirOV5dq5SMgJrw2PQyX4hINcgJIjHvddyPZWe
7aOKX2KTBeh0zlbCTuSYNQ/vHlkHaPi7kUXCyTCjw5gDu088zMFb5ge/3eToMEFsB4y6IIZSujmg
AHd6Q58EqzQMQuULTQQlY607ui+K5n2eyWUoDgi1ybzHosBH4yn36se+a3fkm6HnBiGhLuenOl5I
ml0r2jU97omAFRlJ03J73pQBVK7B2m/mvhJYhQHV6xE/uX2AJJo0a+/QRyA50P3lNtPl6C4as5+e
kAy1cuWvTAWZ58W4g1OkGKm/0/UwxyGXW2PO8SSt0uVbogJrPk6+tigVAtl4C9SOZP0LpvzFsisD
fJ4F1B1R893BSl7FCtPRmdYlm5A8cYRXqpgYUKYphabgHSTG+YuKVK9aEl6UJKqSAu3mFMzxl8qS
R3r+pqVmDcKTWeqK+jMybdoXNm9ARuiOjZI9SsxIF++PX98kyEBTX5tM/vIkm0phTsMBNuy17HoS
TyHzSwbRFP39cP2ijxBm+XIqSrU89yaBPYVqnOzygJPfs+G0/VOj7n3dRV0+VYSrnnFsk40sURym
9v6doy0/bC69ulsFxIuRnCG3ybLhvFy/C7WCxpHUS9KBoV/Iy0avfqse8I+2Q/Qw3MEhD0hDuDDD
g0GBl/bQ5H8ouVFx7VgXc6pSoG8XSRSe0sBXMHO03puCBX5s3jgcbP6er/uqh8c5Tplk6X+F7kk7
7R6DQ+ZcJgWAri1dg1AoSRS95aK85/3LC7i7gfUVfVMuWqs9YOKCY5n+HV3UU+0PYctz50DtZA0k
54G7iIqjGpsw/GDKOeN9AUHLJZci35KsaBTbHiL9oISI6twBQ9d1EqDZHnbcN7qj9FqwBRwALYQ=
=Tllm
-----END PGP SIGNATURE-----

--------------4F2YoQ0j1VrI4BB8PI8n2pT1--

--===============3914939098665435858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3914939098665435858==--
