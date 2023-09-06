Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 577677943CD
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 21:29:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 658A138454F
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 15:29:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694028568; bh=fBFQhkI3W5ZAuLdDf51iHIzJd7TfTf9MGNWExUxslYE=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=b5lBhgJvnjGEbJdeC5Sz31g0uQREBep7pa7luARWmZWiG1Ab79TqvJR+XOsukVQhQ
	 TUR42bigw6rVSSOwjFW0e+JJx42aDpgOK51hulnf0f7xAzVbfI5ZP51M7i11/7zR4l
	 fUzwfHKovga5lfeikqLt5E6/reqRQvumZBwmyhGe7JhYrnQ94m28NN61vJZhD/Fawp
	 mGxyuuB8As3mUTd2CpSDje8irthHDLw/ZiMLjfMW7fW8jLLI5EvM95gOitLvc9lcII
	 ZDN2CWSpT3qrpkii8VlPwVFWef/w+ViNxL/vpYwv4qykItvmrdGLYnh+i1QgxTJjS0
	 XHXX563Dj/icw==
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 64288383F38
	for <usrp-users@lists.ettus.com>; Wed,  6 Sep 2023 15:28:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OoGGJqnW";
	dkim-atps=neutral
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50078eba7afso253818e87.0
        for <usrp-users@lists.ettus.com>; Wed, 06 Sep 2023 12:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1694028529; x=1694633329; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MS8YFrQCyJcYbsHar87XUJRGAt/utHkmvR5P72kV3bM=;
        b=OoGGJqnWC8XbdypWgIm0fiD+/x5fboRVu/ucHJfXiFA41t83b1C8v8GtXk67VwugvY
         tMZqiGG5Qihb7AU30oq/jt1QQEgaBga0s34tJe7KW84fMQubX8WOpN62e9XaI4dqGut1
         KlEHl+EVahHblqa2oKe2A/CC9Sv59yQ2g+olUk8q+jT+nM0MsW1htFlYIW3XRkA4BTFm
         oiTVNGh0kQcOV6s9eftnlNzubQ3l9M/a/yZEhMF2+L9NqRiN0U/SGy/djfUyv4fuh4XO
         aEnwTCRPI5Pe6Z9znzAGJXfxUSkKS5Eo+xWmAjDAz2sWH2WPEI26sGBkGOORNsgqw3k8
         OJBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694028529; x=1694633329;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MS8YFrQCyJcYbsHar87XUJRGAt/utHkmvR5P72kV3bM=;
        b=QR+YMwahUNCJDVbHdT8WMYQnVapPyFFvEY1R+2hQHpS5zxRC4hPOwQ0U+eyA7hmFzB
         ayKZZQMmum17YE/33Ha8hbeTq0f2fKWR6LPl6TMPetkFe1FlQOZMC5Pz1slpz6Jmf/jK
         ShEJLBoDUAQCEn1X5TgGBbvsJeb5GESFjXUUQbLqpnbbnAIwBmmeUvpvyK8PRJvhEwae
         HaREhOdf4DOdabgtCwxIYclJNfkPr4Af8VC9Oj27be5xJF79J3yodFwFcZhqVGRILHD4
         DWvDOrcas5qzsCs5EZ35SggBCnkvSxDfdcR4DuRvXh6AH9PUnZrx1MP5hoS3h8p+KdPU
         N5Dg==
X-Gm-Message-State: AOJu0YzFrNEuBsEUbeB4ouRdghLkxknDC/L50J97LrKDy3IrJ8aovhp1
	hCBnw/w31wJl1qoRpJRT9wX8OKGQpRqNozJlbK1o+g==
X-Google-Smtp-Source: AGHT+IF241FQQFZdfRrbChu9RWW4eHRFEJH0c28iH+IGbRbP/Grg3pyhj/ALFRFAdSpEDKYIssvFwLyWb7fzMf/CZV8=
X-Received: by 2002:a05:6512:3c5:b0:500:79f7:1738 with SMTP id
 w5-20020a05651203c500b0050079f71738mr2701529lfp.17.1694028528688; Wed, 06 Sep
 2023 12:28:48 -0700 (PDT)
MIME-Version: 1.0
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de> <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com>
In-Reply-To: <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com>
Date: Wed, 6 Sep 2023 14:28:37 -0500
Message-ID: <CAB__hTTCu8-43c7=_gDK6SYHkeFoq9WGKxb3tFrvJx-=bMEAWw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: DMRXS5UZLY4SSJF5UF32MUNHUWKOY4PI
X-Message-ID-Hash: DMRXS5UZLY4SSJF5UF32MUNHUWKOY4PI
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: strange behavior of FFT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DMRXS5UZLY4SSJF5UF32MUNHUWKOY4PI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5638552016034648169=="

--===============5638552016034648169==
Content-Type: multipart/alternative; boundary="000000000000b1c7f10604b5c060"

--000000000000b1c7f10604b5c060
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Luca,
A couple of things.  The largest FFT size might be limited to 1024 - even
with MTU=3D9000.  I think that the maximum packet length is often 2000 or
2048 such that when you add a few header bytes, you can no longer achieve
an FFT packet of 2048.

Additionally, if you look in fft_block_control.cpp, you will see that there
is a constant that limits the max size to 1024. This also matches the
parameter "C_NFFT_MAX=3D10" which you will find in "axi_fft.xci" which is t=
he
Xilinx IP file that is implemented.  You can change these in order to build
different sizes, but these are the defaults.

If you search the mailing archive, you may find discussion of this topic
and the need to divorce the concepts of 'fft length' and 'packet length' in
order to achieve FFT lengths greater than 1024.
Rob


On Tue, Sep 5, 2023 at 10:06=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 05/09/2023 04:38, Bachmaier, Luca wrote:
>
> Hello Marcus,
>
>
>
> Thank you for your detailed explanation. I was able to fix the problem
> now: I updated GNU Radio from 3.10.5 (installed over apt) to 3.10.7
> (installed from source). With the newer version the FFT block now correct=
ly
> displays a noise floor.
>
>
>
> So far so good, the FFT resolution is still low as I cannot set the size
> higher than 256 (Error =E2=80=9Csamples per package must not be smaller t=
han atomic
> item size=E2=80=9D). As far as I understood, the size should be able to g=
o as high
> as 2048 when using 10Gbit streaming.
>
> My current configuration should enable that:
>
> -          MTU on my interface is set to 9000
>
> -          Parameter spp of RFNoC RX Radio is set to 2048
>
> -          Current FPGA image is of XG type
>
>
>
> In case it=E2=80=99s helpful, here=E2=80=99s the relevant output of `ip a=
` of my devices:
>
> Host:
>
>              4: enp9s0f1np1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000
> qdisc mq state UP group default qlen 1000
>
>     link/ether 9c:6b:00:16:8e:96 brd ff:ff:ff:ff:ff:ff
>
>     inet 192.168.10.3/24 scope global enp9s0f1np1
>
>        valid_lft forever preferred_lft forever
>
>
>
> USRP:
>
>              3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc
> pfifo_fast qlen 1000
>
>     link/ether 00:80:2f:31:28:42 brd ff:ff:ff:ff:ff:ff
>
>     inet 192.168.10.2/24 brd 192.168.10.255 scope global sfp0
>
>        valid_lft forever preferred_lft forever
>
> I think in the "RFNOC Graph" block, you can specify the SPP in the "Devic=
e
> Args" parameter.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b1c7f10604b5c060
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Luca,<div>A couple of things.=C2=A0 The largest FFT siz=
e might be limited to 1024 - even with MTU=3D9000.=C2=A0 I think that the m=
aximum packet length is often 2000 or 2048 such that when you add a few hea=
der bytes, you can no longer achieve an FFT packet of 2048.=C2=A0=C2=A0</di=
v><div><br></div><div>Additionally, if you look in fft_block_control.cpp, y=
ou will see that there is a constant that limits the max size to 1024. This=
 also matches the parameter &quot;C_NFFT_MAX=3D10&quot; which you will find=
 in &quot;axi_fft.xci&quot; which is the Xilinx IP file that is implemented=
.=C2=A0 You can change these in order to build different sizes, but these a=
re the defaults.</div><div><br></div><div>If you search the mailing archive=
, you may find discussion of this topic and the need to divorce the concept=
s of &#39;fft length&#39; and &#39;packet length&#39; in order to achieve F=
FT lengths greater than 1024.</div><div>Rob</div><div><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep=
 5, 2023 at 10:06=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 05/09/2023 04:38, Bachmaier, Luca
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Hello M=
arcus,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">Thank
            you for your detailed explanation. I was able to fix the
            problem now: I updated GNU Radio from 3.10.5 (installed over
            apt) to 3.10.7 (installed from source). With the newer
            version the FFT block now correctly displays a noise floor.<u><=
/u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US"><u></u>=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">So
            far so good, the FFT resolution is still low as I cannot set
            the size higher than 256 (Error =E2=80=9Csamples per package mu=
st
            not be smaller than atomic item size=E2=80=9D). As far as I
            understood, the size should be able to go as high as 2048
            when using 10Gbit streaming.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">My
            current configuration should enable that:<u></u><u></u></span><=
/p>
        <p style=3D"margin-left:20.65pt">
          <span style=3D"color:rgb(31,73,125)" lang=3D"EN-US"><span>-<span =
style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><span style=3D"color:rgb(31,73,125)" lan=
g=3D"EN-US">MTU on my interface is
            set to 9000<u></u><u></u></span></p>
        <p style=3D"margin-left:20.65pt">
          <span style=3D"color:rgb(31,73,125)" lang=3D"EN-US"><span>-<span =
style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><span style=3D"color:rgb(31,73,125)" lan=
g=3D"EN-US">Parameter spp of RFNoC RX
            Radio is set to 2048<u></u><u></u></span></p>
        <p style=3D"margin-left:20.65pt">
          <span style=3D"color:rgb(31,73,125)" lang=3D"EN-US"><span>-<span =
style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><span style=3D"color:rgb(31,73,125)" lan=
g=3D"EN-US">Current FPGA image is of
            XG type<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US"><u></u>=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">In
            case it=E2=80=99s helpful, here=E2=80=99s the relevant output o=
f `ip a` of
            my devices:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">Host:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0
            4: enp9s0f1np1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu
            9000 qdisc mq state UP group default qlen 1000<u></u><u></u></s=
pan></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span style=3D"=
color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 link/ether
            9c:6b:00:16:8e:96 brd ff:ff:ff:ff:ff:ff<u></u><u></u></span></p=
>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span style=3D"=
color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 inet <a href=3D"htt=
p://192.168.10.3/24" target=3D"_blank">192.168.10.3/24</a>
            scope global enp9s0f1np1<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span style=3D"=
color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 v=
alid_lft forever
            preferred_lft forever<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0
            <u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">USRP:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0
            3: sfp0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000
            qdisc pfifo_fast qlen 1000<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span style=3D"=
color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 link/ether
            00:80:2f:31:28:42 brd ff:ff:ff:ff:ff:ff<u></u><u></u></span></p=
>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span style=3D"=
color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 inet <a href=3D"htt=
p://192.168.10.2/24" target=3D"_blank">192.168.10.2/24</a>
            brd 192.168.10.255 scope global sfp0<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span style=3D"=
color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 v=
alid_lft forever
            preferred_lft forever<u></u><u></u></span></p>
        <br>
      </div>
    </blockquote>
    I think in the &quot;RFNOC Graph&quot; block, you can specify the SPP i=
n the
    &quot;Device Args&quot; parameter.=C2=A0 <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b1c7f10604b5c060--

--===============5638552016034648169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5638552016034648169==--
