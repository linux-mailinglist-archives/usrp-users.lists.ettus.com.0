Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F027C488525
	for <lists+usrp-users@lfdr.de>; Sat,  8 Jan 2022 18:56:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 61ABE384FD3
	for <lists+usrp-users@lfdr.de>; Sat,  8 Jan 2022 12:56:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DL0JJvm7";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D675384DC4
	for <usrp-users@lists.ettus.com>; Sat,  8 Jan 2022 12:55:45 -0500 (EST)
Received: by mail-yb1-f182.google.com with SMTP id m6so16034476ybc.9
        for <usrp-users@lists.ettus.com>; Sat, 08 Jan 2022 09:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=zywzL4+2KVeLNJPt+QuY84NsmRFMgjC0P0YeVVVVNA8=;
        b=DL0JJvm7OHsQUWtWNKUqI16wp9Kj4aRXzq6ZMBw/cC6j0y386pIaFkRY7AAdnlmOZm
         uGh8E1UZ8JENB/2oYfCdqygS+O8IYPzp95koIqJ2/OHPPW42z15hyLkwhvJTalafwurW
         w4VzEmNamXZ1CDpgbMe7dNPIc6QWLJ8hNJpeclGV2a4mNnu+AtnKFdaWVoJaZ+y70KNZ
         EIwyqRncv1x2N7WSh6HavdzWrn9rKXGkJ5LOj2ADoBLSiTOuT9kvKiLtWlt88rFoK6io
         8PxyVpUkkUJ3scg4vB8MRzGIAfq7HliLI8BMWsVRaRdZa6WVXQa0eag5UebQVZnDRiEp
         fJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zywzL4+2KVeLNJPt+QuY84NsmRFMgjC0P0YeVVVVNA8=;
        b=u0Jg/NB7B8DfwQjF2nNKghcUbyOjPg4T5nBREFyxa1NLKxWTe9CUlmdcj6mGepPCS7
         /lq/rs0Sb7arzjl94CUcAc9QiutnzEVXRPgQ1dcmkoHTqJSgTElFPAuy+jG+dhmE+JDF
         YAbvgacp774Vdo6VJee6rjIGysMnb395rz6DOFCfyclPvIvhm6aEXBydX0/sZzy0AA/s
         Yy5h47OtS0RMG9NaFaB7ydK8FhVwUZhLjDPewhAPIL2NpjCSrhrx672RbOFXkfe/nzZW
         5YERVu4zwV0HYCq/C/jar13KFVgQ/u++fUdXd+x6tRJGnpMc27XnA4csJJ/t2ubb1c6Y
         YVcQ==
X-Gm-Message-State: AOAM530Ys43NKnHPwEdhwJHZ26eKmO94qHtfNfSEZ+xwPlHHWF42S552
	1+JolrZn+BQVy/wWWfHeL2Kr3zbcLqzx4r+TMw9dM6FHAfb0gkltn9Q=
X-Google-Smtp-Source: ABdhPJydh8FIZgFrS2w8JrC+YhVwcLyT42AOQuxLSpOcXQzPwH4tZKgbr2mEoq4sCEzKjNw+jD/Y0N1kAU8CC0BWnmA=
X-Received: by 2002:a25:b09e:: with SMTP id f30mr3689861ybj.368.1641664544536;
 Sat, 08 Jan 2022 09:55:44 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sat, 8 Jan 2022 21:25:33 +0330
Message-ID: <CAA=S3Ps6=C=8Zs3Tig9cgnDYkvP83vPVpXorCkqXxwb2pRY5HA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: B5BDGTOASCOFSK2ICWK4Q2ICYR2AJFDI
X-Message-ID-Hash: B5BDGTOASCOFSK2ICWK4Q2ICYR2AJFDI
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Which are RFNOC blocks used in UHD Sink/Source(UHD driver) in Gnuradio?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B5BDGTOASCOFSK2ICWK4Q2ICYR2AJFDI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1208851687113921318=="

--===============1208851687113921318==
Content-Type: multipart/alternative; boundary="000000000000047fc205d515d0f2"

--000000000000047fc205d515d0f2
Content-Type: text/plain; charset="UTF-8"

Which are RFNOC blocks used in UHD Sink/Source(UHD driver) in Gnuradio?
I heard that the UHD sink or UHD source in Gnuradio is composed of some
RFNOC blocks.
When I see the RFNOC blocks, the Radio core is the same UHD but does anyone
know which RFNOC blocks list are used in the UHD driver?

thanks in advance
(because the reply thread is blocked by the forum, so after this message I
can not reply, but I am grateful  to read your replies...)

--000000000000047fc205d515d0f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Which are RFNOC blocks used in UHD Sink/Source(UHD driver)=
 in Gnuradio?<br><div>I heard=C2=A0that the UHD sink or UHD source=C2=A0in =
Gnuradio is composed of some RFNOC blocks.</div><div>When I see the RFNOC b=
locks, the=C2=A0Radio core is the same UHD but does anyone know which RFNOC=
 blocks list are used in the UHD driver?</div><div><br></div><div>thanks in=
 advance</div><div>(because the reply thread is blocked by the forum, so af=
ter this message I can not reply, but I am grateful=C2=A0 to read your repl=
ies...)</div></div>

--000000000000047fc205d515d0f2--

--===============1208851687113921318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1208851687113921318==--
