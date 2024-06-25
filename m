Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 800A4916592
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 12:53:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 670C8384FD8
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 06:53:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719312802; bh=kzBm2KW8BLmbzloBeKQ3t7v4HiRYWMY8tyZzw9WLA5s=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zPdH1ksdpdiumBSfClJ1412R0gmMxgWq91cBKseDFwtWRDHr9I6cI0IdX/MtVsDgd
	 Z7mGAn5UBw2Up8QBBE5hIqu/Xe+DUdHKarmpjL6vcyJVH6ruBjwRKCL2qOGDD6IGCF
	 h/X1DgNhFQxHaRwTYjsjOCnXz18nsFjA0LVUlosoJ5NhIs5LVadjlL6oXqzOXbrH5B
	 nfa/Kg2TDPEHAqLbyllXrcdvM2EUx+0TF66Dts8KDss0mPTN4kQdX+QfLTA6UMedca
	 ovQLrESSQyNQOQ/NcsJfhl7HwPm6aNYZnwsZKB0lPqRs1KTDFMxbhSEUR7J2TL0gl5
	 mdPOJAjk0uz2Q==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 8AF1C38091A
	for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 06:52:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Lfn7GE/X";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-57d05e0017aso6449273a12.1
        for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 03:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719312756; x=1719917556; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MUuVz7egrEsdoAmNjSiqPCrqw6qZ3EQQ1pDd0Dr2CN8=;
        b=Lfn7GE/XCJrwtoj0yeoAp95rAD10oDNn4atgmze8+yvmW+IenVLs1nGzKax/ammiRi
         c1FE/APQkrwX9UUrTiTuM7sUd29IS0gTs2hqY2ELweZ4v7PGgWKzw77zNzss+EWff33q
         adU2LGmPDoZ11cOIXzg5M9yXwxXqdDJZX7WaZkEj2IJyPujb0Imu2jVtQI8cyKOfDDTt
         LDcPeHliqOJPeS6/74nZJjfJ64MK9wIIqdYm1NUKLLdR14O/0lSj5Rr4fi1M3RZJJHrM
         0/B9no6oEKoMwqF5Gp8+CD11lHrVN6pt360tpGsfI+6LkD4o9YMWw8qQ6MSNAqvGTvsO
         QQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719312756; x=1719917556;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MUuVz7egrEsdoAmNjSiqPCrqw6qZ3EQQ1pDd0Dr2CN8=;
        b=nIvw6qtAIfuYnvUgHJ8U1po6nDlvfGbYZ9YXS/GaXso6hV5fhfZYl5L0Pcmq1VgjPc
         jRRz8jUl73CHMr1IrH1ostjdxmW4PJUyZuGSyb7cqWnfopk1ThpI9mCxpv5mIw63MahK
         h0WjBVebbaQo+3vwhf0uYYVqpEfJe2eV52yL6dEIGejq3ofbXwq7THAiLEhRnFnWaHhq
         RYklVODu6nocrvQtfa1rfVkdnt1DbCzgat3gPH0HvHAKoIZaWw0pEP2ojcqu40m570KG
         hR9USIe51wx6WGR5L3pd3XSs5cNAal/qzEJeHxNdQaX2tRCn4AE6bwGCf+c9NdvnWTnL
         A8cA==
X-Gm-Message-State: AOJu0Yz4K2R1DZhAa4f8Zdd1c4g5fiVPccfZ+dnOud8xyJUO9WvPfBYk
	pvPI+Y+oRYOTJN0Q7toQLSeV9OQzfqNYRwyvFEGA0uoY+eQlQWqU227i9JgrAx0YTSOMcFiZpC+
	VYasJrvhkfhwgSLp1IUmXEUuAKO2fGpfTlNpNZEejvUF66alATjPflw==
X-Google-Smtp-Source: AGHT+IEKznntD7dipQFEQ7V/ZQS9g0NDNbsuNfwR5+TX+Sb2eNfb0xyw1nnFoims7VWYVQK6uXbItoc6ImEg2NOGa0g=
X-Received: by 2002:a50:8755:0:b0:57c:5874:4f74 with SMTP id
 4fb4d7f45d1cf-57d70075b4dmr1893822a12.28.1719312755955; Tue, 25 Jun 2024
 03:52:35 -0700 (PDT)
MIME-Version: 1.0
References: <CANwDeJb6aJq4mR_qh46X1kBS0qsZr_m0yrQP80W+Gdg7mDJwUw@mail.gmail.com>
In-Reply-To: <CANwDeJb6aJq4mR_qh46X1kBS0qsZr_m0yrQP80W+Gdg7mDJwUw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 25 Jun 2024 12:52:25 +0200
Message-ID: <CAFOi1A62psNXnoxPVx8XjLw5+WtEXe5W+ox15yRSAyLXBTJinw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: EEZEZER47VQZNIYEGGZAJXX4MCO2CLYK
X-Message-ID-Hash: EEZEZER47VQZNIYEGGZAJXX4MCO2CLYK
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_rx_to_file on X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EEZEZER47VQZNIYEGGZAJXX4MCO2CLYK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7271500910801079308=="

--===============7271500910801079308==
Content-Type: multipart/alternative; boundary="00000000000013c582061bb4b2c1"

--00000000000013c582061bb4b2c1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is a shortcoming in the example -- we try and not cover all cases to
make the examples not too bloated, but sometimes you have these corner
cases.

The reason is, the example only tunes the radio block, not the DDC block.
In a multi_usrp application, UHD would do that for you (which is what
rx_samples_to_file uses). You could modify the example to set the frequency
on `ddc_ctrl`.

--M

On Wed, Jun 19, 2024 at 5:37=E2=80=AFPM Ekin Su Sacin <esacin@umass.edu> wr=
ote:

> Hi all,
>
> I am working with USRP X310 and BasicRX daughter board, and experiencing
> issues while trying to execute uhd/host/examples/rfnoc_rx_to_file.cpp wit=
h
> UHD 4.2. It shows 'Actual Rx frequency: 0 MHz'. However, I can successful=
ly
> sample the incoming signal with uhd/host/examples/rx_samples_to_file.cpp
> using the same command. Are there additional settings required to use the
> RFNoC examples, or specific updates needed for the UHD version?
>
> Thanks a lot for your support.
> Best Regards,
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000013c582061bb4b2c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This is a shortcoming in the example -- we try and no=
t cover all cases to make the examples not too bloated, but sometimes you h=
ave these corner cases.</div><div><br></div><div>The reason is, the example=
 only tunes the radio block, not the DDC block. In a multi_usrp application=
, UHD would do that for you (which is what rx_samples_to_file uses). You co=
uld modify the example to set the frequency on `ddc_ctrl`.</div><div><br></=
div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Jun 19, 2024 at 5:37=E2=80=AFPM Ekin Su Sacin=
 &lt;<a href=3D"mailto:esacin@umass.edu">esacin@umass.edu</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>Hi all,</div><div><br></div><div>I am working with USRP X310 and=20
BasicRX daughter board, and experiencing issues while trying to execute=20
uhd/host/examples/rfnoc_rx_to_file.cpp with UHD 4.2. It shows &#39;Actual R=
x
 frequency: 0 MHz&#39;. However, I can successfully sample the incoming=20
signal with uhd/host/examples/rx_samples_to_file.cpp using the same=20
command. Are there additional settings required to use the RFNoC=20
examples, or specific updates needed for the UHD version?</div><div><br></d=
iv><div>Thanks a lot for your support.</div><div><div>Best Regards,</div></=
div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000013c582061bb4b2c1--

--===============7271500910801079308==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7271500910801079308==--
