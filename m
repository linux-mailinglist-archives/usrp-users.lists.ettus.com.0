Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5122576375E
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 15:20:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38B2C384AE2
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 09:20:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690377628; bh=txa2khT4zPYhwa1C+szuBWkiSjPqoSdjf6oBDAMtVJA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=slL/8X1c8mA8RsomWAbOP00la4QXtyMYVkkzCXMkWc+WAP28KE6sIaE5mN+bVN7d2
	 TV4IkgZXZuhE5O8VM/FJRnryba7zez2I+Lu84hUFHpKuBFrKmurvHCyPnz2M2IdW1k
	 UNR1TmeQESwU3Gy8I+BjM+64nrHGVirdRBMJSuaLBzNECcGZJQlYCaxIgd5EeEy8BL
	 tpGigDZs3ARfwSxwXJXnGrZ5rx3j6nkRfnUaGIC50yiIMScu38V8Zu1TJxvTDNgpfN
	 +K8zMNxh4bsrRJqJ0ft/FbPsvbqRJRVROADihkeZlrVRetAICkJvQDs1hxFpGCmINp
	 fPEZsxM3VHyfA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 57F55384AD7
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 09:19:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690377592; bh=hxaHoGGYNUYe4H5wBWG1a0QWtIybZ8vIxyRrz60HPvg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=s0gMQ1Ziv/jy0qeGY9UJ1DXIjqjWnrP2DYpB4ZS7xSOLkGWRoDrZS9eXrF8h8/5qy
	 FFvHsYDwW653gG3xKbaZgNveG1okWZWxXNvL+oh0Ke7ffacvTIXoxS655xaaU9hT4U
	 qEw07MmIJeyuU1jJrS20cbpsl7J7jsbFT5d3SpVMf5taK1XQPnP94/fIOdnByy10re
	 h9sbt5BkilOXDMoMuLN3WUvnT7malpvlrr7/Y+kqwg3PcZpzPvShBn07o79iW0Ezhf
	 7gVYBD5ROY49geJf3S7Xlj3D29sxTGiJl1+HS6W2r/0Pn7RL9bdiQua7LNK32/FFUl
	 rVKRkvA1lKHMA==
Date: Wed, 26 Jul 2023 13:19:52 +0000
To: usrp-users@lists.ettus.com
From: remi.letellier@onera.fr
Message-ID: <GWUA8P5Zvhm48E9SpD69yx9oNUaCKwSQkcYQkRgYln8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: fKyvtQuU795zNVSChgD194jMouygpo9iEK5dG8Jk@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: OUIFLM2KRRRMQOAV57PHLKIIZQ5OIASW
X-Message-ID-Hash: OUIFLM2KRRRMQOAV57PHLKIIZQ5OIASW
X-MailFrom: remi.letellier@onera.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E312 - No TX signal output
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OUIFLM2KRRRMQOAV57PHLKIIZQ5OIASW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1740342015991720162=="

This is a multi-part message in MIME format.

--===============1740342015991720162==
Content-Type: multipart/alternative;
 boundary="b1_GWUA8P5Zvhm48E9SpD69yx9oNUaCKwSQkcYQkRgYln8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_GWUA8P5Zvhm48E9SpD69yx9oNUaCKwSQkcYQkRgYln8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I found the problem, the attenuation of the spectrum analyzer was too hig=
h.

Regards,

R=C3=A9mi

--b1_GWUA8P5Zvhm48E9SpD69yx9oNUaCKwSQkcYQkRgYln8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I found the problem, the attenuation of the spectrum analyzer was too =
high.</p><p>Regards,</p><p>R=C3=A9mi</p>


--b1_GWUA8P5Zvhm48E9SpD69yx9oNUaCKwSQkcYQkRgYln8--

--===============1740342015991720162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1740342015991720162==--
