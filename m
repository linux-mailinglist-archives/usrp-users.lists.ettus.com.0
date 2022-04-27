Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2790511C8F
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 19:22:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 897D7384882
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 13:22:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651080136; bh=D+rVbK3KdQGJnyUGy2208gxX7wdf05Zrg/ut2/XuiEc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=VlmBz2TQsEzSxq28Mm+mN/SX4y5IBQE3RcXZx/6pl5BcEACbgxbeoPN70tv1l6ns0
	 55/NyxTWJ80JG10zLRDww0vHardIcO4vi5LLw1QUHdvuSrWi5EURWllOnZGrkj3Gkz
	 2XfzmvbNWiD7f0sTVe7tvLJ9GM5Nqt3UrFsUp07YDyDiVtzOVAFr2yV+xqf0jVs88o
	 3C3EBj46ElXHFT+wzsldJWcAEo6iCBni1nF8ALTzkAinY/GiR0Gs4OUpw5ME5DdawT
	 +TJY+1LMpgeU8UJpOES8Hs5P4EB5F7j39nCu3UJdmZKUJ/dz7/5VCOODeQcrlgUXNN
	 EqHx24asHiS0w==
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E43A384551
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 13:21:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="HuTgzdhu";
	dkim-atps=neutral
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-2f7d19cac0bso26361097b3.13
        for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 10:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dVhKj43YP52yfgrlnU7Ph0S3rkZY39M86uwDvNBu/Ec=;
        b=HuTgzdhuH2c0i3WQFq6pc3LRrMbSmRclL6dJgzrFd73BUK3lzFnUeZyBhhopekYbtf
         epVBvdka3uV6uiZYfm+HHADtYJ3PW/AJifZ/f8oT5TGIHU3KLRWwwAiXop/pfa8SC/3K
         5uUyalbm0Go9Q1+fFRy5JdzVXBMlNrH5Fn10UAVeR8Z24qG0BaVZKJA8IpeW5oZ9h72f
         IvY8eFf5IU6G/x1EyNnziqL6XdZzFwYo14NCuRDVNdUIpMeUWY8DrRYUtGhCoEaTV2g9
         Mu9UTQjQKE/3sZ/u2RnEUnKaYn3rzOPqiyGiczYEY7py3VGOCjLHPu9cDd35orAW2ga8
         9NVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dVhKj43YP52yfgrlnU7Ph0S3rkZY39M86uwDvNBu/Ec=;
        b=IsgC44k63nVzNYwhkLPekTULOV1jVidcjcFMqhc8x0q5TSHaas2Uj4esz38ffrdMl4
         3qqJRR6vAJNVOOd0VBfTXxLmAJaEEpqqVXFvlJUDNvLXiTmb7g1NpADBzi+CMS4yxchs
         iqtBJ3xZkT5xZehkFcFxw7CJKeYaWY3VbmuWCffP+0kIgFnJIRTNQadP0m4Il5KdtY0T
         +hOw3IcTE07TWJRU+UGLWN4HEWYr/9Cz9zKXALEP7Cx/oc/dqgRTKoc5fFe28Zkn9fHV
         ONHmiHOQw6TWezryJrjGIhy0d2lk0xDSU2uyYEMdXK9beQ2DLoRC8UfMXFFtQ2cG+yOF
         1iCA==
X-Gm-Message-State: AOAM530NVABDevOD3JW7wecmTlRSyo977tKkqKvMl3dNh+3eiu3mfbx1
	r0ItpVD0WQ7ji3s0G6GJLqyTmf5m3OVWppDmEXc05Ul6h3ciICWS
X-Google-Smtp-Source: ABdhPJwb2UZwo+VuMh7L8jHIilB2O5ok7hgt3/qnmK4ko8vyS/R3v8UjBkWPFe5tE0HAxMzjSzqk8aTUZ8+N9sRsoN0=
X-Received: by 2002:a81:c4c:0:b0:2f7:e078:8cf6 with SMTP id
 73-20020a810c4c000000b002f7e0788cf6mr16824269ywm.171.1651080075936; Wed, 27
 Apr 2022 10:21:15 -0700 (PDT)
MIME-Version: 1.0
References: <PH1P110MB166525241D59E5FC42386591B7FA9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
 <e6405953-c2ca-8b73-edca-87ec9f0239a7@gmail.com>
In-Reply-To: <e6405953-c2ca-8b73-edca-87ec9f0239a7@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 27 Apr 2022 12:20:59 -0500
Message-ID: <CAFche=iOKXzO++VbRan3grn78abPA6P83Yq+ER_eac8-MU=U7A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 64TJPUE5QVMYDV55ZAINY4NL5HD4G72M
X-Message-ID-Hash: 64TJPUE5QVMYDV55ZAINY4NL5HD4G72M
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Programmatic determine rfnoc_chdr_clk from UHD?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/64TJPUE5QVMYDV55ZAINY4NL5HD4G72M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1830408788486936692=="

--===============1830408788486936692==
Content-Type: multipart/alternative; boundary="0000000000006c177a05dda609c9"

--0000000000006c177a05dda609c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

I'm not super familiar with the software, but get_tick_rate() returning 0
might be because something's not implemented in the block controller
software. You could look at some other blocks to see how that's handled
(maybe the DDC/DUC). But I would expect get_tick_rate() to return the
sample rate, which isn't the same as the rfnoc_chdr_clk rate.

The way we typically track time in an RFNoC block is by counting samples.
Each sample corresponds to one master clock tick (or a ratio of that if
there's a DDC/DUC). We aren't usually very concerned with the absolute
time, we usually care about the time to which a sample corresponds, which
you can get from the timestamp in the packet and the sample count.

If you need the absolute time, you can connect the radio time to your
block. Just keep in mind that crossing the radio time to the rfnoc_chdr_clk
requires a clock crossing, with special logic to handle that and a bit of
added delay. The rfnoc_chdr_clk can drift relative to the master clock over
time, so we don't usually use it for tracking time.

There is a BUS_CLK_RATE register on the FPGA that has this information, but
I don't see it exposed anywhere in the API. So, as it is now, it might be
easier to just do a lookup based on the type of USRP. I don't know if
there's an easy way to get to that register.

Wade

On Wed, Apr 27, 2022 at 9:57 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-04-27 09:53, David Raeman wrote:
>
> Hi all,
>
>
>
> Is it possible to programmatically determine the "rfnoc_chdr_clk" rate
> from a UHD application? More specifically, I have a custom RFNoC block
> clocked from rfnoc_chdr_clk, and I=E2=80=99d like to programmatically det=
ermine its
> clock rate from the associated custom software driver so I can convert ti=
ck
> rate to physical units of time. I know it varies by radio model [1], and
> I=E2=80=99d like the driver code to be portable across a few models.
>
>
>
> I=E2=80=99ve poked around quite a bit in the docs and code, and I haven=
=E2=80=99t found an
> obvious solution in UHD 4. I guess I could dump it into a register within
> my RFNoC block, but I wanted to make sure I=E2=80=99m not missing somethi=
ng in the
> existing framework. Calling get_tick_rate() on the block control object
> just returns 0.
>
>
>
> Thanks!
>
> David
>
>
>
> [1]
> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_are_the_clock_=
frequencies.3F
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Hmmm.  The docs do suggest that "get_tick_rate()" on the *block* object
> should work, since it exists in the block base class.  I'm not an RFNOC
> programmer, so just
>   guessing...
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006c177a05dda609c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi David,</div><div><br></div><div>I&#39;m not super =
familiar with the software, but get_tick_rate() returning 0 might be becaus=
e something&#39;s not implemented in the block controller software. You cou=
ld look at some other blocks to see how that&#39;s handled (maybe the DDC/D=
UC). But I would expect get_tick_rate() to return the sample rate, which is=
n&#39;t the same as the rfnoc_chdr_clk rate.<br></div><div><br></div><div>T=
he way we typically track time in an RFNoC block is by counting samples. Ea=
ch sample corresponds to one master clock tick (or a ratio of that if there=
&#39;s a DDC/DUC). We aren&#39;t usually very concerned with the absolute t=
ime, we usually care about the time to which a sample corresponds, which yo=
u can get from the timestamp in the packet and the sample count.</div><div>=
<br></div><div>If you need the absolute time, you can connect the radio tim=
e to your block. Just keep in mind that crossing the radio time to the rfno=
c_chdr_clk requires a clock crossing, with special logic to handle that and=
 a bit of added delay. The rfnoc_chdr_clk can drift relative to the master =
clock over time, so we don&#39;t usually use it for tracking time.</div><di=
v><br></div><div>
There is a BUS_CLK_RATE register on the FPGA that has this information,=20
but I don&#39;t see it exposed anywhere in the API. So, as it is now, it=20
might be easier to just do a lookup based on the type of USRP. I don&#39;t=
=20
know if there&#39;s an easy way to get to that register.

</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 27, 2022 at 9:57 AM Mar=
cus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-04-27 09:53, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal">Hi all,<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Is it possible to programmatically
          determine the &quot;rfnoc_chdr_clk&quot; rate from a UHD applicat=
ion?
          More specifically, I have a custom RFNoC block clocked from
          rfnoc_chdr_clk, and I=E2=80=99d like to programmatically determin=
e its
          clock rate from the associated custom software driver so I can
          convert tick rate to physical units of time. I know it varies
          by radio model [1], and I=E2=80=99d like the driver code to be
          portable across a few models.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">I=E2=80=99ve poked around quite a bit in the=
 docs
          and code, and I haven=E2=80=99t found an obvious solution in UHD =
4. I
          guess I could dump it into a register within my RFNoC block,
          but I wanted to make sure I=E2=80=99m not missing something in th=
e
          existing framework. Calling get_tick_rate() on the block
          control object just returns 0.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Thanks!<u></u><u></u></p>
        <p class=3D"MsoNormal">David<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">[1] <a href=3D"https://kb.ettus.com/RFNoC_Fr=
equently_Asked_Questions#What_are_the_clock_frequencies.3F" target=3D"_blan=
k">
https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_are_the_clock_fr=
equencies.3F</a><u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Hmmm.=C2=A0 The docs do suggest that &quot;get_tick_rate()&quot; on the=
 *block*
    object should work, since it exists in the block base class.=C2=A0 I&#3=
9;m
    not an RFNOC programmer, so just<br>
    =C2=A0 guessing...<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006c177a05dda609c9--

--===============1830408788486936692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1830408788486936692==--
