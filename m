Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC7992AF09
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2024 06:24:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE35E383DD0
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2024 00:24:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1720499067; bh=Qd7/jqM5KbtdY8pHyEnuokebjQ7hyq8dO1N2xGlIsqg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Y+9/yt7SzbEfRbGdAolwtDWAMpygG8buIfRnP7ZhM1jy6YYNUGqLogSycatGiorx2
	 CVQaGLQwzAh/n00A5F4fShKzFLHFTMnQ0Ph1cHt7L57b2Y4R+dBb8nRrPtlM6kY7LV
	 p2j8/FqP1HLO1wKxiL325JHwF+uW1XzXwr67T+tFjiny2zbNDZMr7ldDkESx/Jdwb+
	 LYjT6Cel8B/jMLmy+laIRsR6iH6zD3bhZz2hdGvyv61Vu9WFAOGl8k6xvan0Is8Jld
	 Vuup8S7tQCXgVotinFmPrj0KSoKTCpyMW8ICLHNuq3GIU/j3yDmx9LejU7dU3DcX0I
	 qmdXFi8MGLlhQ==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E440383DD0
	for <usrp-users@lists.ettus.com>; Tue,  9 Jul 2024 00:23:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20230601.gappssmtp.com header.i=@dolphinsystem-jp.20230601.gappssmtp.com header.b="NgCM7HOK";
	dkim-atps=neutral
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5c682e8d872so900808eaf.3
        for <usrp-users@lists.ettus.com>; Mon, 08 Jul 2024 21:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20230601.gappssmtp.com; s=20230601; t=1720499034; x=1721103834; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ROMboks4c6ThG4qq9ofNeYcf1QqqWpsI4OoL4Plofjk=;
        b=NgCM7HOKBNiNe/mA/WSphWAM1LFXFMa1pIzJIo8V5RYsn+NP13qXM9q/pJoFGS0PWm
         AxDzx69a9TZZvuZc+vHyn7rNA+Cn+R2+iNF8YXV/d9AJHf4QelUeXe8/xJ96w2EqdD4z
         9A5LAM3NEuoD8P5EaZNV4cZ6mEziD34uE8u+dCN5sTCGWmjBjlkc6kV9k6/ayyrXyL6z
         BQhRFBpcvIq9YBCutiPMDWnJXk86yi8gxRX2OrbkVI6QI6ivg7NWMA+eX6QBKhSsAuei
         tfKzTRLqrf8PjsONmj10JoiewI6hf9Ctz4cP3Ny7iatLoUUEW3JQKMCA7hPx3EMyQ/N4
         E4Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720499034; x=1721103834;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ROMboks4c6ThG4qq9ofNeYcf1QqqWpsI4OoL4Plofjk=;
        b=nSspE9MsrFYWd1mcZ+DuSKqtCg7KHCxLIjsJ+NlMGKkCzv8GYu8R19CAeFXWRgV5+W
         uLrRqTCv8HPKQBaTi8WAXVeFKcDFTJ76JK2LC1EzVlO6Lunw7mfJmHrETXByryDZLLVt
         qfe/PEuenPW8W+M4VbbrQad7MFPCwUV6T21jQusUL2MhJXl1W/IJJzN+SzoBcYwWaw7r
         8OnZszPWzSv4uuvNXkBp/hsSCFW/CjpzKLMcxdFfJvAxzVG71S7JCHT9ZU+z+te35sBF
         cF8LlMW8hzmFTPP7GB58LNZ8GrGmVlZbUfGiaUx3jKAe82jFcpFwhet1d9PNBAhex027
         rk4g==
X-Gm-Message-State: AOJu0YzvLF+17f2NSQyhmCB3wIDqqXAvsxOrVwJ3X0wo0W+b6quczUbx
	tjOpgCDPEoQgdvbRvBgMSxJT3+e1uUZLvy4OnCupb1E1sduS6cXbEk9gkOkhKhMZ4/a/siO/7B0
	XUUGU974sirZuQJF38PdhkFaKJoJnSiXsRychF2fy/kLAm85EkP8=
X-Google-Smtp-Source: AGHT+IGphpn4mm+SpOJPKdOuttdCcrEtq+Vun5smqZr9TXm9b5vUIurKEeCAhWxLILXa1tHkNiYiqolQoF91UyFAA/k=
X-Received: by 2002:a05:6358:a0e:b0:1aa:bc07:a3e6 with SMTP id
 e5c5f4694b2df-1aade0a10ffmr135646655d.13.1720499034464; Mon, 08 Jul 2024
 21:23:54 -0700 (PDT)
MIME-Version: 1.0
References: <xqIC7aEKKiDPcdLOmK3qYoGQK2jB7jFEHpc9mUh7WKY@lists.ettus.com>
In-Reply-To: <xqIC7aEKKiDPcdLOmK3qYoGQK2jB7jFEHpc9mUh7WKY@lists.ettus.com>
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Tue, 9 Jul 2024 13:23:18 +0900
Message-ID: <CABfZwcf2rL6=N_=eVtAwrSRXYLg0D28bn+KUpvzhftxxr_Kohw@mail.gmail.com>
To: hiroki_iwata@ieee.org
Message-ID-Hash: F7UFL2H4E6F6E4Y73UOB4CVKV2F2DFNF
X-Message-ID-Hash: F7UFL2H4E6F6E4Y73UOB4CVKV2F2DFNF
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: device tree and GPIO pin for x4xx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F7UFL2H4E6F6E4Y73UOB4CVKV2F2DFNF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3633773818664543543=="

--===============3633773818664543543==
Content-Type: multipart/alternative; boundary="000000000000c93dd5061cc8e514"

--000000000000c93dd5061cc8e514
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

uhd_usrp_probe --tree

http://mikioblog.dolphinsystem.jp/2024/02/uhdusrprssi-12.html

Thank you.


2024=E5=B9=B47=E6=9C=889=E6=97=A5(=E7=81=AB) 7:40 hiroki_iwata--- via USRP-=
users <usrp-users@lists.ettus.com
>:

> I am trying to understand the device tree and pin configuration of x4xx.
>
> Especially, =E2=80=9CRFDC_POWERD=E2=80=9C GPIO pin.
>
>
> Now, I am searching the python
> script(mpm/python/usrp_mpm/periph_manager/x4xx.py) and I found that
> =E2=80=9CRFDC_POWERED=E2=80=9C pin is GPIO pin.
>
> But, I cannot identify its corresponding device tree description.
>
> self._rfdc_powered =3D Gpio('RFDC_POWERED', Gpio.INPUT)
>
> Where is the device tree definition for x4xx?
>
>
> BR,
>
> Hiroki
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
 =E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)
 =E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=
=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)

=E3=80=92170-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=E6=
=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=BC=98=EF=BC=8D=EF=BC=95
=E3=83=9F=E3=83=B3=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=AB=EF=BC=95=EF=
=BC=A6

Mail: mikio@dolphinsystem.jp
URL : http://www.dolphinsystem.jp/
TEL/FAX : 03-6658-4949
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

--000000000000c93dd5061cc8e514
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div><font face=3D"Arial, Helvetica, sans-serif"><br></f=
ont><div>uhd_usrp_probe --tree<br></div><div><br></div><div><a href=3D"http=
://mikioblog.dolphinsystem.jp/2024/02/uhdusrprssi-12.html">http://mikioblog=
.dolphinsystem.jp/2024/02/uhdusrprssi-12.html</a><br></div><div><br></div><=
div>Thank you.</div><div><br></div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">2024=E5=B9=B47=E6=9C=889=E6=97=A5(=
=E7=81=AB) 7:40 hiroki_iwata--- via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><p>I am trying to understand the =
device tree and pin configuration of x4xx.</p><p>Especially, =E2=80=9CRFDC_=
POWERD=E2=80=9C GPIO pin.</p><p><br></p><p>Now, I am searching the python s=
cript(mpm/python/usrp_mpm/periph_manager/x4xx.py) and I found that =E2=80=
=9CRFDC_POWERED=E2=80=9C pin is GPIO pin. </p><p>But, I cannot identify its=
 corresponding device tree description. </p><p>self._rfdc_powered =3D Gpio(=
&#39;RFDC_POWERED&#39;, Gpio.INPUT)</p><p>Where is the device tree definiti=
on for x4xx?  </p><p><br></p><p>BR,</p><p>Hiroki</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><span style=3D"color:=
rgb(34,34,34)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br></div><div>=C2=A0=E7=
=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)</div><div>=C2=A0=E6=A0=
=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=E3=83=B3=
=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)</div><div><br=
></div><div>=E3=80=92170-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=
=E5=8C=BA=E6=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=BC=98=EF=BC=8D=EF=BC=95</d=
iv><div>=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=83=9F=E3=
=83=B3=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=AB=EF=BC=95=EF=BC=A6</div>=
<div><br></div><div>Mail: <a href=3D"mailto:mikio@dolphinsystem.jp" target=
=3D"_blank">mikio@dolphinsystem.jp</a></div><div>URL : <a href=3D"http://ww=
w.dolphinsystem.jp/" target=3D"_blank">http://www.dolphinsystem.jp/</a></di=
v><div>TEL/FAX : 03-6658-4949</div><div><span style=3D"color:rgb(34,34,34)"=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br></div></div></div></div></div>

--000000000000c93dd5061cc8e514--

--===============3633773818664543543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3633773818664543543==--
