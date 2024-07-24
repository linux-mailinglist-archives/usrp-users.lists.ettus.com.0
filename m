Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F1C93AD61
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2024 09:46:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ECBD8385887
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2024 03:46:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721807179; bh=XHXRIrg5P99YWBMwHUCheAY6HPFV9DVFyaZqFGqFZ9o=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=scWfKx6z4Fhai3oh3EH+s8tCHDomNNSsht3om6wANscpFEAGfWsckwFRCgwVm82of
	 jv6lH0gdeqxsgHxrLYChy0G4Ibz7SzDKLKczvq+u3SCyqZa207mpwjgePQkfdGQOXM
	 YGtXiTUdlyYBoy9YEWJHw2mN0uQ4H2yWcRM9C25xRLqLGcuHE2jwZbJtE8oMlTBT0f
	 xR4Ns+jXmWmJwn/yWscwnGf8MkMcGPmvNV7DPVn7d629N1qlxMoxXqmQIM5kBOwYLG
	 Ei4Iwle1QmVbUUpdZPyI9pbpM8Q24wZkjDBzd8jnITu/CMYYqsIn4m6qk0lJZBzfc2
	 9z1YjS1ae63Iw==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id CFADE3855AB
	for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2024 03:45:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="nBxCMis3";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a77b60cafecso168659966b.1
        for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2024 00:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721807157; x=1722411957; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vv8ULePPQHG20C/8cJQj8PHI5tM/3V24Hdg9pswlizU=;
        b=nBxCMis3pylPEyppviY0hKUheLjETIAb/mKMxvgnCcDa4Uy5bnTqrNDXrPdHiO5vH4
         tNB+CmuK+YDzCcGeC80R9qlwfrzAobtO3MoejPx+blpqHbAopHZuPt0vChwCw4b5INuF
         +U2q40rpoCd9Qd5V89zodwxCZg+ESHpOFQdcoOQgr8IaZp5sebsEZlux+hlsYjZVb3/f
         QVkUHtz4B7AwlCNwsXN+1QWYzGDqY6AWVLUUmEYeYJgdSnj8NHpqZ/dshsOGMZ+YuUu6
         qXqj1zXmSEHQiOjeDOxWM2JXtL1c/skPX/wgcXclDDYaM12HP3bDWmMWTRa6KR+XybQy
         eElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721807157; x=1722411957;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vv8ULePPQHG20C/8cJQj8PHI5tM/3V24Hdg9pswlizU=;
        b=tdmd/k+qKxC2RH8z54cOD7G8HAapIxYaXVBpovzDxFovl4WDm5duQXQIZYF9ySc7D8
         0Mw5a51n0FbX5GyuxGgCnCsafOEI5oWIcixKk0Gbtxm5fQ9Nb8M1KxRi9OWYwngQbaKw
         xoojVX+7XOk8KU8VhpOrrZCVn1BSxKt9KNdd6I8z6zLjj4iHeH1+anqFLTW9NuOgFGKS
         04abNBRul3DUQz4RK4tLn9lOY81M3009zC2I+DLtzTzoZS5nbhpF59G9cJYOFLKfOwZp
         X0x1c/lg8yLG6KAg/PHqUw9Z4M1nMHt/qFF4Q1Gi+VjAst0U07KplX5CbJ9714ynaU0f
         rqeA==
X-Gm-Message-State: AOJu0YzFAM8rTSdFarhczEqd5fZoPXdrNBQLAr+DY7z2cRt56YphLz7b
	J6sYiW7wpiR2rLIbefVgvJBl4WRIlIjrRDFfbYG5UUE9zpFFtFS0GshcpY+z/dcHVRBr2xKcXXq
	0FnuPO82/mGnk76haa9J9p6enugo1U6cNS7Fq7ds6ono7XyM+hwY=
X-Google-Smtp-Source: AGHT+IG3HRhGxCZx0vYJQ6kj0OY/TpBoG0GQzj+XEe4nWNhwjk6pSyfW31cjR1amLaOIMj1Klcj2wAMylRD4MbYNmck=
X-Received: by 2002:a17:907:9488:b0:a72:840d:9ef3 with SMTP id
 a640c23a62f3a-a7aabc80c97mr135923366b.48.1721807157420; Wed, 24 Jul 2024
 00:45:57 -0700 (PDT)
MIME-Version: 1.0
References: <5f14a3e6-a2aa-4a58-9e00-7c2466e5971b@gmail.com>
 <d53b4426-7d8a-4549-8d71-7fc02b1cf997@gmail.com> <86a13c1b-8c99-40fc-a9da-a38c31363baa@gmail.com>
In-Reply-To: <86a13c1b-8c99-40fc-a9da-a38c31363baa@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 24 Jul 2024 09:45:46 +0200
Message-ID: <CAFOi1A7excS7e9c783gyAiLEEWD+HRTLo3bcde-KzLtNn_taqg@mail.gmail.com>
To: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
Message-ID-Hash: T62TD576XQMHA53KBA5NCK44YGKZJZHL
X-Message-ID-Hash: T62TD576XQMHA53KBA5NCK44YGKZJZHL
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: White Rabbit and N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T62TD576XQMHA53KBA5NCK44YGKZJZHL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5164894966671153056=="

--===============5164894966671153056==
Content-Type: multipart/alternative; boundary="000000000000fd7ae0061df977dd"

--000000000000fd7ae0061df977dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There's no WG image for N310. You can run `make help` in the
fpga/usrp3/top/n3xx directory to see available targets.

--M

On Tue, Jul 23, 2024 at 9:21=E2=80=AFPM Giuseppe Santaromita <
giuseppe.santaromita1@gmail.com> wrote:

> Thanks. And so are WX and WG two different version of FPGA?
> Il 23/07/2024 20:24, Marcus D. Leech ha scritto:
>
> On 23/07/2024 11:12, Giuseppe Santaromita wrote:
>
> Hi all,
>
> I need to use some N310s with White Rabbit (WR) and I have some question:
>
> Why in "Features" here (N310): link
> <https://www.ettus.com/all-products/usrp-n310/> there is no White Rabbit,
> while here (N321): link <https://www.ettus.com/all-products/usrp-n321/>
> yes? Here: link
> <https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP%E2=
%84%A2_N3xx_Devices>
> the link talk about the N3xx generic. So, seems to be an error on the
> website?
>
> Here link
> <https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP%E2=
%84%A2_N3xx_Devices>
> I find: "The USRP N3xx use the SFP+ 0 port for White Rabbit and SFP+ 1 po=
rt
> for IQ streaming. This port configuration requires the White Rabbit =E2=
=80=9CWX=E2=80=9D
> FPGA bitfile".
>
> Here link
> <https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Dual=
_10Gb_Streaming_SFP_Ports_0.2F1>
> says that all possible FPGA are XG, HG and WG. How about the WX? Is WG? I=
s
> the same? Was a typo?
>
> Again, same link, says that "The XG FPGA image must be loaded for SFP Por=
t
> 0 to operate at 10 Gb speeds. If the HG image is loaded, the port will be
> unresponsive at 10 Gb speeds". How about the WG?
>
> It is sure that White Rabbit can work with the N310? If the WX FPGA it's
> flashed, teoretically I can use one  SFP+ port for WR and one SFP+ port f=
or
> I/Q streaming. I need to be sure that the speed of the second port is 10
> GbE (and not reduced to 1 GbE).
>
> Thanks in advance
>
> Giuseppe
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> According to my contacts, the N310_WX indeed puts WR on sfp0, and 10GiGe
> on sfp1.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fd7ae0061df977dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There&#39;s no WG image for N310. You can run `make h=
elp` in the fpga/usrp3/top/n3xx directory to see available targets.</div><d=
iv><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Tue, Jul 23, 2024 at 9:21=E2=80=AFPM Gius=
eppe Santaromita &lt;<a href=3D"mailto:giuseppe.santaromita1@gmail.com">giu=
seppe.santaromita1@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <p>Thanks. And so are WX and WG two different version of FPGA?<br>
    </p>
    <div>Il 23/07/2024 20:24, Marcus D. Leech ha
      scritto:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div>On 23/07/2024 11:12, Giuseppe
        Santaromita wrote:<br>
      </div>
      <blockquote type=3D"cite">
       =20
        <p>Hi all,<br>
        </p>
        <p>I need to use some N310s with White Rabbit (WR) and I have
          some question:</p>
        <p>Why in &quot;Features&quot; here (N310): <a href=3D"https://www.=
ettus.com/all-products/usrp-n310/" target=3D"_blank">link</a> there is no W=
hite Rabbit,
          while here (N321): <a href=3D"https://www.ettus.com/all-products/=
usrp-n321/" target=3D"_blank">link</a> yes? Here: <a href=3D"https://kb.ett=
us.com/Using_Ethernet-Based_Synchronization_on_the_USRP%E2%84%A2_N3xx_Devic=
es" target=3D"_blank">link</a> the link talk about the N3xx
          generic. So, seems to be an error on the website?<br>
          <br>
          Here <a href=3D"https://kb.ettus.com/Using_Ethernet-Based_Synchro=
nization_on_the_USRP%E2%84%A2_N3xx_Devices" target=3D"_blank">link</a> I fi=
nd: &quot;The USRP N3xx use
          the SFP+ 0 port for White Rabbit and SFP+ 1 port for IQ
          streaming. This port configuration requires the White Rabbit
          =E2=80=9CWX=E2=80=9D FPGA bitfile&quot;.=C2=A0</p>
        <p>Here <a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Ge=
tting_Started_Guide#Dual_10Gb_Streaming_SFP_Ports_0.2F1" target=3D"_blank">=
link</a> says that all possible FPGA
          are XG, HG and WG. How about the WX? Is WG? Is the same? Was a
          typo?<br>
        </p>
        <p>Again, same link, says that &quot;The XG FPGA image must be load=
ed
          for SFP Port 0 to operate at 10 Gb speeds. If the HG image is
          loaded, the port will be unresponsive at 10 Gb speeds&quot;. How
          about the WG?</p>
        <p>It is sure that White Rabbit can work with the N310? If the
          WX FPGA it&#39;s flashed, teoretically I can use one=C2=A0 SFP+ p=
ort
          for WR and one SFP+ port for I/Q streaming. I need to be sure
          that the speed of the second port is 10 GbE (and not reduced
          to 1 GbE).</p>
        <p>Thanks in advance</p>
        <p>Giuseppe<br>
        </p>
        <br>
        <fieldset></fieldset>
        <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
      According to my contacts, the N310_WX indeed puts WR on sfp0, and
      10GiGe on sfp1.<br>
      <br>
      <br>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000fd7ae0061df977dd--

--===============5164894966671153056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5164894966671153056==--
