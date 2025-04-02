Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8576AA78AF4
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 11:22:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97915385B93
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 05:22:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743585776; bh=NY4tsvZ7BStIGAK6MkYIxirWCQRcIt5cqoYARUMWtKw=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Cm170weKAhzFDizZrQ0k+8lsvks+KtehZJGPjYPnWlAJnxn9q94phr1VtBEsLVEUl
	 tBud/6vROqTYhf28Txpjf+EOUMTTEDMSkORHVYbThbaf4zFj01Xo8lHeI4kZW3VnOI
	 AscZWOzB5XVkCHllIOggyAd1gS/glmtiPj0bmKu+hP7MN3iC5YE8uB1OkU8ZtAVTXD
	 e3rb7pppCRXNeb0YH0dm/hSkT+6cFA/6xkF/7NsD5m63JhOakMSwO3J6GhQ8vWDL4Z
	 U0bfjRC81jGvHPQzW/FsRPtY3zlDVTwm0n0iW7dZSwd4pEE6lk67rzEmbHJafHaeIB
	 ALWKQY7I3oChw==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 69635385A0B
	for <usrp-users@lists.ettus.com>; Wed,  2 Apr 2025 05:22:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="NUVd9Thr";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac28e66c0e1so962024566b.0
        for <usrp-users@lists.ettus.com>; Wed, 02 Apr 2025 02:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1743585727; x=1744190527; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mns2JRppSp3ZVX3Oq8xseBMfWGtoZwTREYosJ4kBMks=;
        b=NUVd9Thr196J9j2QRHZDA6ikmAL+zJGtFCSqDBFG7Gr7F1txDEtFONGkoV67uSfErA
         9yYHmfG5zK/A1WR3wacaJfkkW9zPYaDNaZMLzdH0Txzmrbpu4Pe9ecyeUpoCezQc0GzS
         P/vzzTKp633TudNUclXvhpH4DJb2ABF+IbY5YzdJHV+78n2xpugysjHuuGJB6vaplJup
         d6iYIR7V/4m2ikc9skVZVc3YXnZYDQmcLaKvEM5suwpqlIQtCiwX1HMnjdBFSifOkwIe
         oOmHdVqpCwpmyZrW7Rtlnq02hZ+P1NcacYLUpZHLKkMxGv3lgHdqvVR8QHvfMBIew0MF
         hT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743585727; x=1744190527;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mns2JRppSp3ZVX3Oq8xseBMfWGtoZwTREYosJ4kBMks=;
        b=HyOvfj3IphFyFMLUAZaTp+Q3MmtrutQAUEHkYEOYBGNLLmo2Fz4yiIEshFnQC6CLFv
         eV+704PhT6NtJxcfY2glxq1WP4jOYx0zi+4rdwbBQfi6CvRIUcXGnRwG+sgUhJdW8ZKr
         WXhBHjwWrDY1chGdHhQcfX8JWhtAnoRYuHzdHEqXAGL2sFur9cZJxykpWAYP9vKGbqgM
         gc8IeGWuC+1cIEzkhoLplRqKimMxaZtO66VzVHllbrT8+9ldDck60brHI8K6LT1QX+l1
         uHqs58mkZjTELeTJ22CHnbvCM+/e4LsNDPcqG9OvNfjAFcK2ycjma87OkE4N/kA8GHiL
         ksJw==
X-Gm-Message-State: AOJu0Yw8MmBnfmpwB5nnPdEdD4wshHeZrHEpajlCZlXXKT0s9RrOW7IZ
	tSWscJ1VUrSdVuWY+2MmvaGkpR/X4SCD3Vz3cMFkNO014qx1cP3rQ/Y54+AiIVG4QG/Y/vFi/3y
	+xqhGhX8w/WaBkNvju2DiIv6g7puNks4dnHJ8bC4ilJXMnlykCq/ldQ==
X-Gm-Gg: ASbGnctMHNXkzmZkfD4FlD8bZpML9TkVQlSanrMVlmnkO32yU8aGvX7zPgdIMhPAA8F
	euSpJoCn9MdpM4Spa5uSridqktcNU3FzNRXO0pBeY/2KYX94xgLorURiLJRlC+je4M7JwbtuN1Z
	jNTYTpGfF9QPZ+vHi6JSG06moTBBF/IuZN7cUc+N6Zp8XyZmSnYJOOscbXEw==
X-Google-Smtp-Source: AGHT+IGeNtd6jX6pNzXf9ezO1kOo9wl2ivJEb6uVZYWoVna5zLGehXyASC0cRxMd2NR4+fI4mA/zhzTdYC+vRNZADjQ=
X-Received: by 2002:a17:907:868a:b0:ac3:ad7b:5618 with SMTP id
 a640c23a62f3a-ac7389e6750mr1719664666b.3.1743585727591; Wed, 02 Apr 2025
 02:22:07 -0700 (PDT)
MIME-Version: 1.0
References: <PccxjLen4LJ6M3b31VIx3pt6bBpsg4pHOxYUeeeqA@lists.ettus.com>
In-Reply-To: <PccxjLen4LJ6M3b31VIx3pt6bBpsg4pHOxYUeeeqA@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 2 Apr 2025 11:21:56 +0200
X-Gm-Features: AQ5f1JpAUQMzKHWWu8t5H5Ftx5C6e0WhP7zao4KbV5wtiZ9GsKPZh-HEgqzrpKc
Message-ID: <CAFOi1A5enZJ-S8hH3VEUw-Hrn7TD85D0FsA5OZ22X496dyYVyA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 5IU33JE5PUBAGCE4DBTST7P7EKPWVVZ7
X-Message-ID-Hash: 5IU33JE5PUBAGCE4DBTST7P7EKPWVVZ7
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Monitor X310 health status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5IU33JE5PUBAGCE4DBTST7P7EKPWVVZ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1914387330004252589=="

--===============1914387330004252589==
Content-Type: multipart/alternative; boundary="000000000000edeb2c0631c82f39"

--000000000000edeb2c0631c82f39
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We recently added the temp_fpga sensor for X310, but the fans have no
controls so we neither measure nor set the fan speed. None of the
daughterboards measure temperature.

See here:
https://uhd.readthedocs.io/en/latest/page_usrp_x3x0.html#x3x0_misc_sensors

Note that this has not yet been released on a stable version of UHD but
it'll be on the next one.

--M

On Wed, Apr 2, 2025 at 10:25=E2=80=AFAM <carmixdev@gmail.com> wrote:

> Hi, I would like to monitor the X310 radio health status, like
> temperature, fan speed etc=E2=80=A6
>
> Is there any UHD API or command that allows me to get these parameters?
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000edeb2c0631c82f39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We recently added the temp_fpga sensor for X310, but =
the fans have no controls so we neither measure nor set the fan speed. None=
 of the daughterboards measure temperature.</div><div><br></div><div>See he=
re: <a href=3D"https://uhd.readthedocs.io/en/latest/page_usrp_x3x0.html#x3x=
0_misc_sensors">https://uhd.readthedocs.io/en/latest/page_usrp_x3x0.html#x3=
x0_misc_sensors</a></div><div><br></div><div>Note that this has not yet bee=
n released on a stable version of UHD but it&#39;ll be on the next one.</di=
v><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_qu=
ote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 2, 2025 at=
 10:25=E2=80=AFAM &lt;<a href=3D"mailto:carmixdev@gmail.com">carmixdev@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><p>Hi, I would like to monitor the X310 radio health status, like temp=
erature, fan speed etc=E2=80=A6</p><p>Is there any UHD API or command that =
allows me to get these parameters?</p><p><br></p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000edeb2c0631c82f39--

--===============1914387330004252589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1914387330004252589==--
