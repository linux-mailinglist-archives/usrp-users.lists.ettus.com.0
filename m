Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8E4B10768
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jul 2025 12:06:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E4FA3859E1
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jul 2025 06:06:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753351618; bh=8XTWIcprILVUNhEhIJ6ZEih9jf4dg3SAZv+6OO7Hm8E=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=k74q9EizJ8OlHI2d8M7THpOzOJObG8X0WPySWQkTtlXaAlfk7Gk0tkUHsWmVRiFfu
	 zuQfFysrleBUhT07qLg4pvinodsRz3cd9mWXfS079IhXOb0fL0t155NU/Pno8djZep
	 NEG8it867L9njwPpgbYlo4hWoBqXKBGiDNneH2SQlu2rboHEka67DbWcvHCQM8x23s
	 LXfEha9WEqn9QG58XKR9j9NgAO5nhs2sMchs07W6cw9D6I6+tt8eCkQNdsgVzfEsd2
	 sAIjaisLumeI5EdIUhgcwDW2iV6l5uMPvwFb+kEF3B3UIR5OqOrTWc44uicyHb+/T3
	 0sVj/gu4LNr1w==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 80BA13854B5
	for <usrp-users@lists.ettus.com>; Thu, 24 Jul 2025 06:06:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="pngEltfS";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ae0b2ead33cso162876566b.0
        for <usrp-users@lists.ettus.com>; Thu, 24 Jul 2025 03:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1753351564; x=1753956364; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IJGj6S/TfwdAkEhgxeUAXJpV7uzTqVdulCTN0h+q2h8=;
        b=pngEltfSJzXTproEmZesCf2sE2sD+EJlM8/gR6cJ60ulNYkKtvTCln6M/tZTqLRu5X
         8GwZSxoFoJmdqH4WMyCdafUhr05Z8HFBNdl3OYQaQgW87RrVo3aAWV5dvLK75v1iQnMQ
         X8e/bwKVvb+MqYfbbC3X/AFC3nErDIv5PFjfqALVqCf3LT+l+8dJyv74sXJ6bzHkoEfJ
         VUxdIUgQL5PQjM71Zoeefy11Jm+8SZ9BFMGynpoBFfiYbnMMwusoHINxBqdFp2qqCTbQ
         IkIwLOdxw5xeJSKWykh7XO4mkwY5pc62xGiQ6p+1j6qv+0DfXO30spiUdsnFPWgzkDgX
         z+jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753351564; x=1753956364;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IJGj6S/TfwdAkEhgxeUAXJpV7uzTqVdulCTN0h+q2h8=;
        b=AxQCYHfCAWIvomzFjS2qZrRa3Yd2EMH8FS7BoAcc4PeLYsx5Us9mvxuL0pH5TMkH+w
         H1fq8RwnvkxX4u+m0QjC9rh1qWk9tKEQd7E2DzywFtifA2RPw8+CB3/R4Uxe++skwScb
         TnuvPHf254m6HG4knIt2BNwyd6q3xW1upVbsEAhu12RMd45tkZmCYhtdS8Haj7mcb2G1
         SqqWoeFTCKJEfrPAB+HwJ3eqSllFn8HMpNJN3o6go+McM8mlBRQw+d41FlpanqvFWbL4
         RYV8MYwfrrHSK1vjPaWFngoiR+9+FIP2ykGGbj+CvhaEjZWaP9zX5EizbIQXgTdqFq6C
         AxGg==
X-Gm-Message-State: AOJu0YwWH1K0xGmZcbn4k87w4i92Nbs9DUyQeo6OAv4SeJ/13oqsZwia
	vWzRzqoF4NnN9BvV62OCZf2qVFhzPR09VswN2kleNirV8rE+YDCuofqZXTh1aoYXqJm75Tc60Ng
	PC8faUcEVOHzpiRG+65ih67HsZ2Uiw1l1xGHDgxRCqP15HzaWGlLRE9g=
X-Gm-Gg: ASbGncuSIUI5EXO2on694Y1HvZ24QWTeMT8HSy3EBWbl6DCUsCOdW2nb++b9slDvhI9
	54wxPCBUDsJLBDH4Re8hi+/eiNsMIs+sx1PM15CyOs88B90qHenXwLZm7TeIDSjGWWqLOd4owy0
	9s/07LuKfhFHWdu+BYV96z+KYG/qShAKGynsQvHLOhqQRX3SnAEGnx8rfNAd2D/bHt10xPqhtae
	J4JB7S4iLe5U6V7zo2dZv6zGet4TtBFVSdPDKg=
X-Google-Smtp-Source: AGHT+IF2uj5APuuSXJdHFYyd1b9LJUp4RwwMs5wNR99NZWENKY3wS3x9TVjBBf0s4pnaJ6ZPsqAkCaYCUwTJTK2mAHQ=
X-Received: by 2002:a17:907:7f0f:b0:ae3:c777:6e5e with SMTP id
 a640c23a62f3a-af4c325669fmr142737866b.19.1753351563923; Thu, 24 Jul 2025
 03:06:03 -0700 (PDT)
MIME-Version: 1.0
References: <n69elKfNNlotbfMhQhYgVn799jSTJPogptvWH0shE@lists.ettus.com>
In-Reply-To: <n69elKfNNlotbfMhQhYgVn799jSTJPogptvWH0shE@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 24 Jul 2025 12:05:52 +0200
X-Gm-Features: Ac12FXzGSVLccYAw4gOXczVVrj4dCHgQA4r1WavVvqMUDqfz6LbYqgziJQHwFjg
Message-ID: <CAFOi1A6yu2t0z57n5AH2BFbHOR6RWC_5ud_9W4NrKSWXEyd6TA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: JPRPPYAR7VEXCWWS524NVG2BDKZULRWF
X-Message-ID-Hash: JPRPPYAR7VEXCWWS524NVG2BDKZULRWF
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Custom Metadata
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JPRPPYAR7VEXCWWS524NVG2BDKZULRWF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4282458315127221168=="

--===============4282458315127221168==
Content-Type: multipart/alternative; boundary="0000000000002268c8063aa9f925"

--0000000000002268c8063aa9f925
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

metadata reading/writing in UHD is currently not implemented. If you think
this is a relevant feature, reach out to your NI USRP rep to bump its
priority.

--M

On Wed, Jul 16, 2025 at 11:48=E2=80=AFAM <nirkicatal1@gmail.com> wrote:

> Hello all,
>
> I plan to add metadata in my custom RFNoC block, reading the RFNoC
> specification I noticed that the rx_streamer and tx_streamer handles
> metadata. my question is:
>
> Is this the same metadata specified in the context CHDR messages? if it i=
s
> not, how can we read at the host side, the metadata added in the rfnoc
> block?
>
> Thank you.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002268c8063aa9f925
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>metadata reading/writing=
 in UHD is currently not implemented. If you think this is a relevant featu=
re, reach out to your NI USRP rep to bump its priority.</div><div><br></div=
><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 16, 2025 at 11:48=E2=80=AF=
AM &lt;<a href=3D"mailto:nirkicatal1@gmail.com">nirkicatal1@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hel=
lo all,</p><p>I plan to add metadata in my custom RFNoC block, reading the =
RFNoC specification I noticed that the rx_streamer and tx_streamer handles =
metadata. my question is:</p><p>Is this the same metadata specified in the =
context CHDR messages? if it is not, how can we read at the host side, the =
metadata added in the rfnoc block?</p><p>Thank you.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002268c8063aa9f925--

--===============4282458315127221168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4282458315127221168==--
