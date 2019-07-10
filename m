Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCBC64A11
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jul 2019 17:49:50 +0200 (CEST)
Received: from [::1] (port=54742 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hlEqQ-0000On-Of; Wed, 10 Jul 2019 11:49:22 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:47080)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1hlEqM-0000Hs-Sx
 for usrp-users@lists.ettus.com; Wed, 10 Jul 2019 11:49:18 -0400
Received: by mail-io1-f43.google.com with SMTP id i10so5674890iol.13
 for <usrp-users@lists.ettus.com>; Wed, 10 Jul 2019 08:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8jUBj1gIn05XafiYHfPw4nbigAaC34b/7e0ih5RnOWQ=;
 b=1GSujUoAC2C+JHS/rBftCwdXLhRave9ZcZ19PdeH2r2NLLlzHX7462X/Ea8+76n9c/
 S3Kj0k6Nigc2qE3xrLSPrXegkC8TNU0UxlHxl6/3W0IyOSpja6/yCJXBKXd3vtGca3LJ
 iFDC8kpYkp07PUQCsOoNqb3tnXvYuim93fmTqjgVMoBxoNskAUXIhnLD7L7PrReZq0a0
 qbllC6ihjBsVtO7kx39Jykl+oQhP+PihFTwQntGzUXLzuAt1rYAJ4lGge6B5oV4lgNsB
 DC3gtSTaqxzZhc8hB32u99NyllGgGknKwImc/xViFy01CYmPvk+BaVC6vYzuYvS1h5dr
 SFog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8jUBj1gIn05XafiYHfPw4nbigAaC34b/7e0ih5RnOWQ=;
 b=A7Zq/MXRS2PfyCNwk1+23hFklkjp34lGqErZJPFi3QtOmb16DQq17Nr4o4bfQWax9a
 kAzosUTxLcXgdzbKiTl9XlEFBlALew0xR9AJAwZLSH9y6nhdLRllbfDzO6MXj4Iw4o3D
 /418FqaSejc3EJZnG9Dc7vQ//9UGgLDQYmT+QM3eErRfLVHDKbIQv5t3oRZR4Bnm8dJ1
 zBATkD3hbjnGJMkqQAojRfsMXHhoVJJEQGCYVkKnyMou2i7VmU6nK2POvLsO8C3XoHl2
 jbJJktzp5J3DDMIg2SXhZMbw7x0/LVxL6xD9DIAFBOd+iz/uhnImA2jvSPVO9EH+5Vvb
 AHjw==
X-Gm-Message-State: APjAAAU67VSKpi8pNjPze4ib9JhB4Mz5UhZMBUv1w12agNnk2iRYa5+i
 u5z/fLerhQm13Crikulw2BgqbHht7tQ+3dvRpSqoyN5TwIk=
X-Google-Smtp-Source: APXvYqyPhWKte3kGZqncJyGLCSns8h4uk7XTV8l2rdOMQ+CBOQdzqD+tUrhPCUEatotqkC0RKTV6VDgaa3UhkmLDinM=
X-Received: by 2002:a5d:9448:: with SMTP id x8mr34556676ior.102.1562773717951; 
 Wed, 10 Jul 2019 08:48:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAEyq4NcegtOT_t3DSTo+sRfTv1NSG9h0X6ZwH7aNh-hEai2u-g@mail.gmail.com>
In-Reply-To: <CAEyq4NcegtOT_t3DSTo+sRfTv1NSG9h0X6ZwH7aNh-hEai2u-g@mail.gmail.com>
Date: Wed, 10 Jul 2019 08:48:25 -0700
Message-ID: <CAKJyDkJUP5pYo2pWV_SN2Upi=y7dcVKPNc2bNfwubpiSyPcPgg@mail.gmail.com>
To: Samuel Berhanu <samberhanu@gmail.com>
Subject: Re: [USRP-users] Discrepancy between N310 MB Schematic and PS
 Pinout and other questions
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2077284083066789500=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2077284083066789500==
Content-Type: multipart/alternative; boundary="00000000000052c2fa058d559c46"

--00000000000052c2fa058d559c46
Content-Type: text/plain; charset="UTF-8"

See interleaved responses below.

On Wed, Jul 10, 2019 at 6:42 AM Samuel Berhanu via USRP-users <
usrp-users@lists.ettus.com> wrote:

> The N310 design (i have tried both the HG and XG ) specify the following:
> UART0 on MIO pin 14:15,
> PJTAG on pin 10:13
> UART1 on MIO pin 8:9
> I2C0 on MIO pin 50:51
>
> there is also GPIO pins on 46:49.
>
> All the above pins when looking at the MB schematic have different
> assignments.
> Namely,
> MIO 14:15 -> PS-I2C0-SCL, PS-I2C0-SDA
> MIO 10:13 -> PS-UART0-RX, PS-UART0-TX,SYS-PS-I2C-SCL, ...SDA
> et.al
>
> 1) In short, which one is correct? Datasheet or NI design? and whichever
> is corect, does that hold true for all the other connections also?
>

The pinouts in the Vivado TCL file are the correct ones--
https://github.com/EttusResearch/fpga/blob/UHD-3.14/usrp3/top/n3xx/ip/n310_ps_bd/n310_ps_bd.tcl


> 2) I only see one of the two I2C controllers enabled in the PS. Where is
> SYS-PS-I2C-SCL coming from the schematic?
>
> It's connected to the STM32 microcontroller (U55).


> 3) Where is the microcontroller code for the STM32F072RBT6 code located? I
> tried looking under ./firmware but I dont see it?
>
> The ChromeOS source code for the STM32 MCU is in the usrp-firmware repo in
the EttusResearch github.  More specifically:
https://github.com/EttusResearch/usrp-firmware/tree/sulfur/board/sulfur


> 4) Am i correct in assuming for all FPGA images except White Rabbit, the
> phase dac that is used for controlling VCXO is set at just about mid-range
> and does not get adjusted? In general, a clearer picture of what the values
> are being programmed in the LMK and their sequence or an overview of the
> clock output values generated would be appreciated.
>
> I'm not sure-- maybe someone still employed by NI could answer this
question.   More details on the LMK settings are in the DB FPGA folder:
https://github.com/EttusResearch/fpga/blob/UHD-3.14/usrp3/top/n3xx/dboards/mg/db_timing.xdc



> Thank you,
>
> Samuel Berhanu
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000052c2fa058d559c46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>See interleaved responses below.</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 10, 2019=
 at 6:42 AM Samuel Berhanu via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The N310 d=
esign (i have tried both the HG and XG ) specify the following:</div><div>U=
ART0 on MIO pin 14:15, <br></div><div>PJTAG on pin 10:13</div><div>UART1 on=
 MIO pin 8:9</div><div>I2C0 on MIO pin 50:51</div><div><br></div><div>there=
 is also GPIO pins on 46:49.</div><div><br></div><div>All the above pins wh=
en looking at the MB schematic have different assignments.</div><div>Namely=
, <br></div><div>MIO 14:15 -&gt; PS-I2C0-SCL, PS-I2C0-SDA</div><div>MIO 10:=
13 -&gt; PS-UART0-RX, PS-UART0-TX,SYS-PS-I2C-SCL, ...SDA</div><div><a href=
=3D"http://et.al" target=3D"_blank">et.al</a><br></div><div><br></div><div>=
1) In short, which one is correct? Datasheet or NI design? and whichever is=
 corect, does that hold true for all the other connections also?</div></div=
></blockquote><div><br></div><div>The pinouts in the Vivado TCL file are th=
e correct ones--=C2=A0<a href=3D"https://github.com/EttusResearch/fpga/blob=
/UHD-3.14/usrp3/top/n3xx/ip/n310_ps_bd/n310_ps_bd.tcl">https://github.com/E=
ttusResearch/fpga/blob/UHD-3.14/usrp3/top/n3xx/ip/n310_ps_bd/n310_ps_bd.tcl=
</a></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div>2) I only see one of the two I2C controllers enable=
d in the PS. Where is SYS-PS-I2C-SCL coming from the schematic?</div><div><=
br></div></div></blockquote><div>It&#39;s connected to the STM32 microcontr=
oller (U55).</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div></div><div>3) Where is the microcontroller=
 code for the STM32F072RBT6 code located? I tried looking under ./firmware =
but I dont see it? <br></div><div><br></div></div></blockquote><div>The Chr=
omeOS source code for the STM32 MCU is in the usrp-firmware repo in the Ett=
usResearch github.=C2=A0 More specifically:=C2=A0=C2=A0<a href=3D"https://g=
ithub.com/EttusResearch/usrp-firmware/tree/sulfur/board/sulfur">https://git=
hub.com/EttusResearch/usrp-firmware/tree/sulfur/board/sulfur</a></div><div>=
=C2=A0=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div></div><div>4) Am i correct in assuming for all FPGA images e=
xcept White Rabbit, the phase dac that is used for controlling VCXO is set =
at just about mid-range and does not get adjusted? In general, a clearer pi=
cture of what the values are being programmed in the LMK and their sequence=
 or an overview of the clock output values generated would be appreciated. =
<br></div><div></div><div><br></div></div></blockquote><div>I&#39;m not sur=
e-- maybe someone still employed by NI could answer this question.=C2=A0 =
=C2=A0More details on the LMK settings are in the DB FPGA folder:</div><div=
><a href=3D"https://github.com/EttusResearch/fpga/blob/UHD-3.14/usrp3/top/n=
3xx/dboards/mg/db_timing.xdc">https://github.com/EttusResearch/fpga/blob/UH=
D-3.14/usrp3/top/n3xx/dboards/mg/db_timing.xdc</a>=C2=A0=C2=A0<br></div><di=
v>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div></div><div>Thank you,</div><div><br></div><div>Samuel Berhan=
u</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000052c2fa058d559c46--


--===============2077284083066789500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2077284083066789500==--

