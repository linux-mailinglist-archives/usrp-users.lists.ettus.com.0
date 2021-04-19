Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B3E364D7D
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 00:06:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE8B73848E4
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 18:06:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gMIpP69e";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 10F2D384338
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 18:05:48 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id a18so3574605qtj.10
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 15:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=mmyInoHOJUIVHGvFpXMemeGJ8d+DDjpMqflsRFvIGAA=;
        b=gMIpP69eqv8tL1bocRn9PvfGWomBHEq92yLKN06Y1MoozFxGzGgr6yJL/Re0pOEOti
         O1M6OTtOf9zpBrkeY0MHZU/47yzwKNTQkGPNKOblAyJmEbINJRgb4KqVuZWArQ9i3VkS
         p2dhzOJHzD09qwRKC0I5uICfhZUwE38VJDbonYaKKKkd0EyFfcftaXxNu0zf5berRrnm
         CvrTNZNf9ekTZjGP/i7AcuXE3vHlSWANRFT5OZRQ6WFFMcTUADTDqKfIFCn3cjzhUCVO
         zreCuYC0SEESDRtoQTklsTljdzl5W75FxCQRoXuXuiyupO9fr/KLCUDrHDPLIC9iVFPm
         OXZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=mmyInoHOJUIVHGvFpXMemeGJ8d+DDjpMqflsRFvIGAA=;
        b=IlntfA5BEe5QJTWEVS9vtO/pow2SrDhtk5Kfn+UapkVEfOh2AxJ7m8K/1rADzaX5mr
         fZfaOr8qbPjUoaOWVJNN4Wk7jFhDFD1lQpLuf9oq5PWKpkZPi2v+RTtJV+J+LkQb4JjB
         VoVPIHBOomF/jJr/yT3Z3O6QsKemsdbna7JKJlLI/Nk4aeNwuT4t53cjsTfHW+v46fjX
         v2TlbjT+znxVpM08UrRvZ+na4/sf8j0gW93ozhRIlHmJ88UZw/kuFD8E7fKZn36VhT0E
         mOwT4OkLEtAzncxONGirTQEHQpPOiVHdvgfivCYJg/4i6Vxe+QCPlP1LM2nVLRL6ylum
         RL3g==
X-Gm-Message-State: AOAM532AIjaax6KKcXBlgZwRBT99uNZptG1y0tWrw1sS5lBqV1gKpOPz
	gnjxAJZjP3I67X1RyCu6P00=
X-Google-Smtp-Source: ABdhPJyHgzwChe5PjdslrHR/tnEV3bZJeGNB6Da8R8lGcC5RcfE7G7QFyiPv8vi6/AVqtKPdRPWxzw==
X-Received: by 2002:a05:622a:c3:: with SMTP id p3mr13696148qtw.43.1618869948618;
        Mon, 19 Apr 2021 15:05:48 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id f13sm8924275qtj.40.2021.04.19.15.05.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 15:05:48 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Apr 2021 18:05:47 -0400
Message-Id: <EC2E03CE-595A-458D-AB32-64111C8F95BC@gmail.com>
References: <8T1IAYqdJV7iVegZx854SnHj14MF9c3urhHJ0WTtSo@lists.ettus.com>
In-Reply-To: <8T1IAYqdJV7iVegZx854SnHj14MF9c3urhHJ0WTtSo@lists.ettus.com>
To: brendan.horsfield@vectalabs.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: XQ4AMHWXS55Z7GOCM6RGFMWWBHSXPREL
X-Message-ID-Hash: XQ4AMHWXS55Z7GOCM6RGFMWWBHSXPREL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reflected power on USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQ4AMHWXS55Z7GOCM6RGFMWWBHSXPREL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8940067829973482811=="


--===============8940067829973482811==
Content-Type: multipart/alternative; boundary=Apple-Mail-EA2FF131-1E48-467C-8D88-AD0BAB53AA08
Content-Transfer-Encoding: 7bit


--Apple-Mail-EA2FF131-1E48-467C-8D88-AD0BAB53AA08
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Basically like many things in the analog RF world, there are a plethora of w=
ays to =E2=80=9Cplumb=E2=80=9D this type of stuff.



Sent from my iPhone

> On Apr 19, 2021, at 5:56 PM, brendan.horsfield@vectalabs.com wrote:
>=20
> =EF=BB=BF
> OK, that makes sense.
>=20
> Note that a double-junction circulator can give even higher isolation, e.g=
. 40-50 dB.
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-EA2FF131-1E48-467C-8D88-AD0BAB53AA08
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Basically like many things in the analog RF=
 world, there are a plethora of ways to =E2=80=9Cplumb=E2=80=9D this type of=
 stuff.<div><br></div><div><br></div><div><br><div dir=3D"ltr">Sent from my i=
Phone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 19, 2021, a=
t 5:56 PM, brendan.horsfield@vectalabs.com wrote:<br><br></blockquote></div>=
<blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>OK, that makes sense.=
  </p><p>Note that a double-junction circulator can give even higher isolati=
on, e.g. 40-50 dB.   </p><p><br></p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-EA2FF131-1E48-467C-8D88-AD0BAB53AA08--

--===============8940067829973482811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8940067829973482811==--
