Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB7E85E9FE
	for <lists+usrp-users@lfdr.de>; Wed, 21 Feb 2024 22:22:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 75E51384D3B
	for <lists+usrp-users@lfdr.de>; Wed, 21 Feb 2024 16:22:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708550523; bh=LWXYWdx687mnQQvBqbJrS5IhmDJFFIPKD2/DVe+DqzA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=L0Ce+Dc45wpRVh4ae9psyqYbSnifzalGMpOf+oCrKe8UpKzEiVOd64hls+8NIZs9I
	 RDY1MLSlElYSZxOLEmBR56EJV7XyUx7JAwv/Uqw192F2MQsN2dnFYnK7ymxCbZwmN+
	 ZqSKrA62p5EOX/8NGNTh5UWk/SAecE/K4dT+bXn3MUT1y/K6F+cr4t5KjZ3xDNgwRc
	 x22R/SVjdzKFldMHQZSUC0eMCXhpI8Nq0hEoN5CkuX7pDw3bGFuXziNLIZbgk7daz/
	 Kfodqst8XVnFexfHCqqYYxr2iqMnqhhxXHw6T4Tw9Sr4+Ijxd1w35QCrT1q3zP7ep2
	 wzp1paf8zkpCg==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 9681A384CCE
	for <usrp-users@lists.ettus.com>; Wed, 21 Feb 2024 16:21:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZcAwi5h6";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-564a53b8133so4204508a12.0
        for <usrp-users@lists.ettus.com>; Wed, 21 Feb 2024 13:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708550461; x=1709155261; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZAkTDk7x7M24Lj+dOREduPa8Hp4n97dxDSlpa6G6jGM=;
        b=ZcAwi5h6lWv4dXapBM7U8DWlowAU35HXW0tKjOjBhtzOmELuHozARg3KnDOYLRF8DY
         6ZlkY0nBll7c4kn1zCdHQx4xn9zYZDH+wEVcwPxfiuwxNmYIWao2qjUgCweHBCL3SaL6
         L5cGl2rV8hVIIdd8xLeDvALrTltSTNsVLdVp57nlVWKGwkcH4PkuzI3dsOmhxT2zc/yD
         FpqTlI+7Sv8OwwTGDZkgr1VboXX46V0Qwl9ITWCM+BVDz/G9XaV7WaeogasVjriDp/2S
         s+hEtTvsH6VoIWuzvF1hkvYb8hUHscvMhmbe6OxGYbC9ovyjsU6dsk9TTDDECXeqYEk8
         wr6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708550461; x=1709155261;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZAkTDk7x7M24Lj+dOREduPa8Hp4n97dxDSlpa6G6jGM=;
        b=kG20yFWolG344AJsA7Kqqzutk8QNUpDzL5aYBsuElH3jUoGgsoRbSqyKOgjFKZSHNx
         LNupBFNoqJMBVX2oWnNaBIMXTMgy5qwfrVonlEAB4DFnOacQkfA9j86lKGbkE4ZiO9Rw
         CT3rgDIuz4KkloQRgl2ekm0M0lsC5dfKRk7Ck4X+PJWiAnEEoYl5EwEGZyD3xBPsUnx4
         UAAH+CtqO/MAvgjD5nZlvtTlE+BofoiAZl+nsLRzGSwjRFMS8x0fZWvWQl+rRYXFmxAR
         lgm8BKWvqWj+ZUu0cXDeWaQG7+ZbM6YppaEKgvy4IPZ74KmHHbmEqrXcc1sO/pM4EOKv
         VdvQ==
X-Gm-Message-State: AOJu0YwU+1gZ6qZBqAKg7Y6bO67zCtE0X6Nwuw0+sEBY5Zb9lRRnv6Ga
	2r1EILeTYBz4BWU1BuNb3ZuUincGuSu4drXubIrQvJJxWZMLupbdKtEnjr2oGl7LJpcgO2iHGmr
	5mdGdTmq/PiWk/htX08fILitZcM1/wl2d
X-Google-Smtp-Source: AGHT+IEJBS2YGugmzAK0h1Lvt7Fm+h63I0YtvaoDVci/ACTGFbWhTgwnTQl0AUd5SvfN7YxYbGy0kpKCrSF42kL139k=
X-Received: by 2002:a05:6402:b1c:b0:564:9dc0:194f with SMTP id
 bm28-20020a0564020b1c00b005649dc0194fmr6352790edb.22.1708550461118; Wed, 21
 Feb 2024 13:21:01 -0800 (PST)
MIME-Version: 1.0
References: <CAArU_bEd4h0Cfd4HNkP4Z7gTXh2JyBVrO1uKnzTRA3D-xYXBRQ@mail.gmail.com>
In-Reply-To: <CAArU_bEd4h0Cfd4HNkP4Z7gTXh2JyBVrO1uKnzTRA3D-xYXBRQ@mail.gmail.com>
From: Muhammad Hassan <engr.muhd.hassan@gmail.com>
Date: Wed, 21 Feb 2024 21:20:50 +0000
Message-ID: <CACDPEcPuAhFMMugPLeug5yGFfS4rDk=AThhT+__+vG5ywxPvbQ@mail.gmail.com>
To: Alin Stoica <alinstoica1234567@gmail.com>
Message-ID-Hash: EKP4WPCORW243N5OMHVJRKMNAZNH3FDA
X-Message-ID-Hash: EKP4WPCORW243N5OMHVJRKMNAZNH3FDA
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Writing UHD 3.9 Image onto SD Card for E310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EKP4WPCORW243N5OMHVJRKMNAZNH3FDA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0998265813780006671=="

--===============0998265813780006671==
Content-Type: multipart/alternative; boundary="00000000000050e6050611eae78a"

--00000000000050e6050611eae78a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have usrp e313 in which i installed sdimage v4.4. My device is working
fine. I can help you. Let me recal.

On Wed, 21 Feb 2024 at 9:15=E2=80=AFpm, Alin Stoica <alinstoica1234567@gmai=
l.com>
wrote:

> Hello,
>
>  I'm asking for a little help with my E310. I tried to insert UHD version
> 3.9 on an SD card and I'm getting errors. As it turns out, installing an
> image on SD card with other versions of UHD is much simpler than for this
> version. The process described in the manual doesn't seem quite right to
> me, and I'm not sure if I'm following the steps correctly or if the
> tutorial for this specific version is still current (Version:
> 003.009.007-0-g50839059 for UHD user manual).
>
>  Are there any other tutorials or additional resources that might exist
> for UHD 3.9? I would really appreciate any tips or detailed instructions
> you can share. Or if I can take the image from somewhere else and downloa=
d
> it to SD card easier.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000050e6050611eae78a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I have usrp e313 in which i installed sdimage v4.4. My de=
vice is working fine. I can help you. Let me recal.</div><div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 21 Feb 2024=
 at 9:15=E2=80=AFpm, Alin Stoica &lt;<a href=3D"mailto:alinstoica1234567@gm=
ail.com">alinstoica1234567@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204=
)"><div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">=
=C2=A0I&#39;m asking for a little help with my E310. I tried to insert UHD =
version 3.9 on an SD card and I&#39;m getting errors. As it turns out, inst=
alling an image on SD card with other versions of UHD is much simpler than =
for this version. The process described in the manual doesn&#39;t seem quit=
e right to me, and I&#39;m not sure if I&#39;m following the steps correctl=
y or if the tutorial for this specific version is still current (Version: 0=
03.009.007-0-g50839059 for UHD user manual).</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">=C2=A0Are there any other tutorials or additional reso=
urces that might exist for UHD 3.9? I would really appreciate any tips or d=
etailed instructions you can share. Or if I can take the image from somewhe=
re else and download it to SD card easier.</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000050e6050611eae78a--

--===============0998265813780006671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0998265813780006671==--
