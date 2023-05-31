Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3673717AE6
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 10:59:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67D9A38465D
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 04:59:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685523555; bh=DqhxHBB1B1W1WaTBR/PAiiWGnXq30IvrwRKNpxWUggQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=N8lJ3inVUZAAbvrHhtuy+LfFL/mZSEn/tUxaOvsq1pjWMiYOP0hTHqzeZOizvMrEY
	 DE8sDFYViT2gZx+6YaNNhvurr4anaYq2uqPdozZG18Obq1vNY4ykCnnTFfEZyx1And
	 GCZDFjIXi5juTAK6q6rBS+n6aWvbuWZtEPEB9x2iY27YVjqnDxjQbhYt90tKM9IDor
	 xOBq9vUNBJuvZXw8vmzN4npIubPDTlqyAZMIbFwD5zc1sVrgXNnRkkQXyvfZZlka7P
	 KYOjkn6Nt7YMnNJOgFJLsDs5eTebNZgKqY7INZufTFzqVPzSg/zAAdktZOBsZ2rDs7
	 0K37m5M1qTl5A==
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 0CFAC3845A5
	for <usrp-users@lists.ettus.com>; Wed, 31 May 2023 04:58:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.b="mv8DYCgF";
	dkim-atps=neutral
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1b0236ee816so5447495ad.1
        for <usrp-users@lists.ettus.com>; Wed, 31 May 2023 01:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com; s=20221208; t=1685523490; x=1688115490;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+4h+/YGYkVz5jWtJ3Sg6Tc7JWvW3estXa4UFoqefdqY=;
        b=mv8DYCgFM2BoiovEANsj/nXspDl0R2lPHspT1ab1k1qFGITS94zNvT4LkOUN5v99fp
         wIVnY7/GX5S2SYoPyZkf1qpiaX+TNmrTx1d8TrgEmucdmXTGLJInX8VqifmFaK6wZSGa
         py/8NCGfCNJuMoRh9sc6Xw0dWQVBRkzdI4ma66Rt1XhxG/78jJvLKH3J8j+7ixAakJj2
         +qMHK1J2ZHTEb7++3hmv52jE8+WNjmqoWUQfBimKJLvoRHumWn65Mnjn/7bk3zve693q
         TZEJRC3lJj3zmGndi6g1IwO4YJPPMTyXChsnQIpGy1bMDFLgbqITKdmnAkUbE8C9c3qK
         QnoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685523490; x=1688115490;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+4h+/YGYkVz5jWtJ3Sg6Tc7JWvW3estXa4UFoqefdqY=;
        b=GS+BtLxOqcQMjLcODp5aaSz2mGYyF+xDQG9XiLlVTlMLWVS/Cx5f6ESA+KlLiuVyER
         9gA0B66U2MMoqPiSRyNWGwk237U3Rge2DwSE23eTVih5njz7hCMUAaOh9sATsdjDgpQE
         79/fBv3Qa3aYLa3WNK577oxBgkwE0wOWHV6vcx0J8tRtLCCpC7A10sUfPpz/A/pTNJjh
         XbHsjtQv3ShiUIysDtjzZ7BvOre6ofjDzWpRKrqprkzD5t2354BW8Qy09+HGD6VqhGL6
         vlI7wzpt68ZKdUcodPCJEOnWhvObxunNDWJjBWD9prTeOq22aPOnejPeyS+6zzwAslEr
         45kg==
X-Gm-Message-State: AC+VfDxdZ9D1hQEf2TjSvnO1lF+7Zp5LbCRp6VI05OakvRBp39P6KbvP
	UK7bkDzjGOfr98s+wZjF1+JO1W0YYbLPK8xzfn/WpQ==
X-Google-Smtp-Source: ACHHUZ6L3IJ4/WMIB/Eo+uYmNGnL5qwQMF6Dpx9KMTQmYLizWsacYjOract3r5EJ5ekuYAA8tH2fmA==
X-Received: by 2002:a17:902:ce84:b0:1af:cbdb:9772 with SMTP id f4-20020a170902ce8400b001afcbdb9772mr6198994plg.18.1685523490513;
        Wed, 31 May 2023 01:58:10 -0700 (PDT)
Received: from [192.168.10.6] (nakaolab97.iii.u-tokyo.ac.jp. [133.11.240.97])
        by smtp.gmail.com with ESMTPSA id e12-20020a170902784c00b001ab2a0733aasm822497pln.39.2023.05.31.01.58.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 May 2023 01:58:10 -0700 (PDT)
Date: Wed, 31 May 2023 17:58:02 +0900
From: ". AERMAN TUERXUN" <armantursun@g.ecc.u-tokyo.ac.jp>
To: usrp-users@lists.ettus.com
Message-ID: <3dc0add7-420b-4502-92af-7c69a254c25f@Spark>
In-Reply-To: <75cc22da-a6da-4541-b39a-c59bdb083b44@Spark>
References: <75cc22da-a6da-4541-b39a-c59bdb083b44@Spark>
X-Readdle-Message-ID: 3dc0add7-420b-4502-92af-7c69a254c25f@Spark
MIME-Version: 1.0
Message-ID-Hash: G7DMT4LX5IBLBDWF2325EW4WTPHVFQUY
X-Message-ID-Hash: G7DMT4LX5IBLBDWF2325EW4WTPHVFQUY
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to generate 128 bits CHDR packet and control the metadata?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G7DMT4LX5IBLBDWF2325EW4WTPHVFQUY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1501807191456192506=="

--===============1501807191456192506==
Content-Type: multipart/alternative; boundary="64770c1f_71d5b9fb_1320"

--64770c1f_71d5b9fb_1320
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi usrp users,

I am trying to build a RFNoC block and because of the IP constraints I need to set the CHDR packet to 128 bits width. I know CHDR support up to 512 bits width, but is there any way to set this? Like UHD API or any other way? Seems like if we does not set up anything, rfnoc will choose 64 bits as default.
Also, I noticed that metadata in CHDR packet is optional and can be block specific. I am trying to insert some data for IP into the metadata field. Is there any way to control the metadata? For example, the content of metadata and length, etc.? And is it possible to do it in the application using UHD API like method?

I would appreciate if anyone can help me out with this or give me some hints. And thank you in advance.

Best regards,
Arman

--64770c1f_71d5b9fb_1320
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Hi usrp users,<br />
<br />
I am trying to build a R=46NoC block and because of the IP constraints I =
need to set the CHDR packet to 128 bits width. I know CHDR support up to =
512 bits width, but is there any way to set this=3F Like UHD API or any o=
ther way=3F Seems like if we does not set up anything, rfnoc will choose =
64 bits as default.<br />
Also, I noticed that metadata in CHDR packet is optional and can be block=
 specific. I am trying to insert some data for IP into the metadata field=
. Is there any way to control the metadata=3F =46or example, the content =
of metadata and length, etc.=3F And is it possible to do it in the applic=
ation using UHD API like method=3F<br />
<br />
I would appreciate if anyone can help me out with this or give me some hi=
nts. And thank you in advance.<br />
<br />
Best regards,<br />
Arman</div>
</div>
</body>
</html>

--64770c1f_71d5b9fb_1320--

--===============1501807191456192506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1501807191456192506==--
