Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C95E342D8DB
	for <lists+usrp-users@lfdr.de>; Thu, 14 Oct 2021 14:07:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30205384631
	for <lists+usrp-users@lfdr.de>; Thu, 14 Oct 2021 08:07:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=riseup.net header.i=@riseup.net header.b="fdX3rHo2";
	dkim-atps=neutral
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
	by mm2.emwd.com (Postfix) with ESMTPS id 5BD25384251
	for <usrp-users@lists.ettus.com>; Thu, 14 Oct 2021 08:07:02 -0400 (EDT)
Received: from fews1.riseup.net (fews1-pn.riseup.net [10.0.1.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.riseup.net", Issuer "R3" (not verified))
	by mx1.riseup.net (Postfix) with ESMTPS id 4HVSnK16zWzF54V
	for <usrp-users@lists.ettus.com>; Thu, 14 Oct 2021 05:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1634213221; bh=TsoodROdgn4izqH+7AGSJXMQOpB3T4h0/a2Ab/IkAeE=;
	h=To:From:Subject:Date:From;
	b=fdX3rHo2m8FlDwOR/fvX6x83//tjRCNz4qeywCgCgOUFfUORpQuS28oUsNLwbDIi+
	 Mbc8pHTJ7zFU0B+Nuu6oyadFklp9j63dN2ktdXi0X8BSISFsAo51Gr21dTQsYBpppW
	 nPB46mWtWN4zcNahc0mS12pipT45W8NUerSQTzp0=
X-Riseup-User-ID: 28AC4C798F3546357000D62C2D462A4DFAC2561173A480BB493F51D4A7A3B12F
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews1.riseup.net (Postfix) with ESMTPSA id 4HVSnJ4fFGz5vSf
	for <usrp-users@lists.ettus.com>; Thu, 14 Oct 2021 05:07:00 -0700 (PDT)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: Rafael Diniz <rafael@riseup.net>
Message-ID: <f365ff86-5ff2-018f-81d8-d293b4a0017f@riseup.net>
Date: Thu, 14 Oct 2021 15:06:57 +0300
MIME-Version: 1.0
Message-ID-Hash: L4G3PM2FQZWVKFXIQXR5JPKPEGLL4GRH
X-Message-ID-Hash: L4G3PM2FQZWVKFXIQXR5JPKPEGLL4GRH
X-MailFrom: rafael@riseup.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Adapt gr-drm to output Envelope and Phase
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L4G3PM2FQZWVKFXIQXR5JPKPEGLL4GRH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1733244529488199964=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1733244529488199964==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="luC28eFH1S12gVdxrqlmben0joJ5l7syg"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--luC28eFH1S12gVdxrqlmben0joJ5l7syg
Content-Type: multipart/mixed; boundary="VLPkyfbyveDGbGfa4mEEKcErQ4E7wxab9";
 protected-headers="v1"
From: Rafael Diniz <rafael@riseup.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <f365ff86-5ff2-018f-81d8-d293b4a0017f@riseup.net>
Subject: Adapt gr-drm to output Envelope and Phase

--VLPkyfbyveDGbGfa4mEEKcErQ4E7wxab9
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi everybody,

I'd like to adapt the gr-drm [1] DRM modulator by Felix Wunsch to output
E/P (through a USRP with a LFTX daughterboard), needed by a HF DRM
transmitter I have access to. Any hints on how to do it?

[1] https://github.com/kit-cel/gr-drm

Thanks,
Rafael Diniz



--VLPkyfbyveDGbGfa4mEEKcErQ4E7wxab9--

--luC28eFH1S12gVdxrqlmben0joJ5l7syg
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEoP1eGhvGCVHc38lQtKqll+URF3IFAmFoHWIACgkQtKqll+UR
F3L+yQ//bBQDThAwZz2eMc6xMIU/hQWL1Z5PrFlmflE5MtOj3KQBcRafiwDQSftU
DJrWpml1791rPMg9BIN00htKkdffyVZOzMlamjG35MPMFDRi7l5clETZL2JF0SLS
YnKRZBQ95q40BkVrQxqHx5T24+ZHLAsto//GYf5dENELt2MiignsPT6Z73JOI+cO
BJpEP03cpRtS7oLvNlQnnFr1zv1iUf02MWk/5tndcyjtmxNfBXvtVJ/ClybWwWd7
c73PO/+nkrDKcS9b9nDEYlzhjTLOTDv205+b5BMKfHIG2FusHTjX+LGq/Ou3YNoC
chyK3YtOL+UhquAukfxLC3Sn1y4QITYkNZLADvZkMSPtcg5rPqNAqhnCG6XSgO1q
UQiO3gnXxTUCK4mjsx/FjgdMDFOWZSadFQeHLNv4CshPXulbTsfHtXfUN7zCj6b6
FUXNqoGc6M5xueIujE3vOytEHMZPneuz0wS0iIC04lhR1A84QEtmakRfqjfS9V0F
BfnQoAIi6Cig/kN3jw9/YE4rmVcOsMl9JJxiX6ucr9rO6ofBk+pLc3BafjMgs94L
/wK/zewwRvqZoj9t1SxFJw7Jlc50vqeIsI4XrEjDq377Syp+LVyMf0ccmZR7h06+
EJGsqILKAZF/B8BkBGpEGFlufcbuNn+b2LogHfksrcu/+I8WTWo=
=awf4
-----END PGP SIGNATURE-----

--luC28eFH1S12gVdxrqlmben0joJ5l7syg--

--===============1733244529488199964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1733244529488199964==--
