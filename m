Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3529BB740
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2024 15:12:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14C55385C15
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2024 09:12:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730729555; bh=RYSBOWqJIp3sABIWyguZffGoJW93nl1CAxEh5biHFk8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=I7FTTEnNchZ4b0/EXjPKLTLDquVhIWSNFOaT/XWiycrcMDSmQ1BrRQgDbinsZo8ao
	 CEecCUL3f+pNtwdsd+5skbyb5wNcBDeiklZmaiZP6/FypzmTZTKVtAZDMZpppSz3am
	 A1tYhMZXUgZVDN6HlTU9sQu7APCNsdfaBiMn+lwQYq1xQDsUVxiQCWdhG8QZP2L+Te
	 KYVltTrPZE3Yii1mDODZNNfms9WBo4XsEWW/xwWbS38fyZQZXXPmhjrnUPwL5apN3N
	 pOFnZAANbZJdoA1qEkQrgPEJRDIwc1GZzPHM5JdUPd3Od034O7C4hln+67djuGSyi/
	 pCuR9UM6vG4yg==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id AB5CA385A04
	for <usrp-users@lists.ettus.com>; Mon,  4 Nov 2024 09:11:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="oBWG9CPn";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5cedf5fe237so654568a12.3
        for <usrp-users@lists.ettus.com>; Mon, 04 Nov 2024 06:11:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1730729510; x=1731334310; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nMdasPHZHQp6sqci6JYRWjMOBeiI6f4bNuFh6IeEbxg=;
        b=oBWG9CPnhVQ9RKdECvPfrjICTHXUUzGiBw6Uvk6L2OZB88h4sT8qz2MpWiLd6gvSCV
         loFKhYdaN9OxkckUTwcKPrcNjZ59tvoQ1nWeY3lwQJ4Ki021YqqJ1x+ZLMTgRhY0J8oG
         o1HzH7iKEwyj7yraBjrds29EcEEJlsR5m2HX8Ud0x6aIwnDnCwSTzE1WxqyKl0yE1R97
         kE9qpNpGEXMan+pbijcrv9El0eI5fYtQQVi+t6yujuSd4mluc7M53js5HG4PFzHCQiqf
         j0OikelZonRgvFyFnalHZdeyRp5gi2UwSUhIQrD0VCd6EV5+SjbpHEI+C1IfEKSpzFL4
         ThBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730729510; x=1731334310;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nMdasPHZHQp6sqci6JYRWjMOBeiI6f4bNuFh6IeEbxg=;
        b=tpFQqX3CUPHciu9n6colz9HIF95u9LxnoA4JWDLR5IDdsJtFYrkRlApNNJaopjkfjy
         DWvwBgqqOXCofmViV8wj/YszqacHy+y/Eue7xOPAjjGMmdQsP3wDPcFtpKy++wAqI7I4
         v2pBHe7Wdb02jTsMaTMQjKTTY4r54jGwCO4dEb+WypoTLNkJhcEovkdx6Rlsjo6dSEXi
         hmT0Dxo2DZH3U0cqU7TBh8eJECbVSaJXRcPuWinFNIFMTG7HwzhaoUKCqVvnaueBZla/
         2uzV7chm9LYte7cVIOh6qxbFO8HWQMcukiYY78AzoF5RQ+TOFQUE7sbwLaoBX2PBQ097
         gxhA==
X-Gm-Message-State: AOJu0YzB2yRl1Nu2y8/Gwj0aY4cIeaMMWmE+KZuX+P7Rnl0Yn84VYM53
	D/XArvhwdN2xPg0msI6SUu+f8eWN4Fijwf91qy1GW36Te0r5u06ut9QQ0yNrogs0ksvXjb8J7gc
	/Dh5b/Z70EaBku754MiZDMMRE90bvaMgghYQ+QcvJIqV1R7V44KbZhA==
X-Google-Smtp-Source: AGHT+IHXgL5xJx2H2dDH1+DLEKasKnX87SRXMbPfAGoO1JTK4GAfCDE/B5ET0MuragVGCKS4BuGMffn+Ywsp5fjasig=
X-Received: by 2002:a05:6402:3491:b0:5c9:1d7f:4fd9 with SMTP id
 4fb4d7f45d1cf-5ceb9263cacmr10678773a12.8.1730729510324; Mon, 04 Nov 2024
 06:11:50 -0800 (PST)
MIME-Version: 1.0
References: <CAEL-RA2ktm+znO+NGjGYLxCeR3pX4svUvUT_U+n34RDuxJOcxg@mail.gmail.com>
In-Reply-To: <CAEL-RA2ktm+znO+NGjGYLxCeR3pX4svUvUT_U+n34RDuxJOcxg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 4 Nov 2024 15:11:39 +0100
Message-ID: <CAFOi1A4jr5g05Gfc3Oyv9bCGNd8sLeakw45EnE16r04oJ5Q4pg@mail.gmail.com>
To: hui cj <cjh416593819@gmail.com>
Message-ID-Hash: 47JXRJAKE7S7LCBNVS3GWINKI633UW2S
X-Message-ID-Hash: 47JXRJAKE7S7LCBNVS3GWINKI633UW2S
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using USRP X310 Front GPIO as SPI Interface (UHD Timed Commands)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/47JXRJAKE7S7LCBNVS3GWINKI633UW2S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2286241157795261414=="

--===============2286241157795261414==
Content-Type: multipart/alternative; boundary="000000000000aa7a0f062616dda8"

--000000000000aa7a0f062616dda8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is because a peek command will always wait unti it's finished, whereas
the other commands ("poke" commands) will stack in the command FIFO. If you
add the blue lines (the set_command_time() is redundant BTW) then the call
will wait until all the previous GPIO commands are finished, then it will
read the state, and return the value to the host (this is not an
asynchronous call). All following commands are then delayed, and your
calculation of "time" will be late.

--M

On Tue, Oct 29, 2024 at 11:18=E2=80=AFAM hui cj <cjh416593819@gmail.com> wr=
ote:

> Hi everyone,
>
> I built a project that demonstrates how to use the front-panel GPIO pins
> of the USRP X310 to emulate an SPI interface. The SPI communication
> leverages UHD timed commands and RFNoC blocks to drive GPIO signals at
> precise intervals.
> But there is a slow performance when I read GPIO values.
> If I comment the blue part, the code can generate SCK and SDO up to 2MHz.
> But if I add the function of reading gpio, the output clock is slowed dow=
n
> to 100Hz.
>
> This is weird. Anyone know why?
>
> The code is open source at https://github.com/cjhonlyone/uhd_gpio_spi.
>
> int UhdGpioSpi::write_and_read(uint8_t* write_buffer, uint8_t*
> read_buffer, uint32_t length) {
>
>     double spi_period =3D 1.0 / spi_frequency;
>     radio_ctrl->clear_command_time(0);
>     uhd::time_spec_t time =3D radio_ctrl->get_time_now() +
> uhd::time_spec_t(0.05);
>     time =3D time + uhd::time_spec_t(spi_period);
>     radio_ctrl->set_command_time(time, 0);
>     radio_ctrl->set_gpio_attr("FP0", "OUT", (~SDO_MASK) & (~SCS_MASK) &
> (cpol ? 0xffffffff : (~SCK_MASK)));
>
>     for (uint32_t i =3D 0; i < length; i++) {
>         for (uint32_t j =3D 0; j < 8; j++) {
>             time =3D time + uhd::time_spec_t(0.5 * spi_period);
>             radio_ctrl->set_command_time(time, 0);
>             if ((cpha & cpol) || ((!cpha) & (!cpol))) { // SCK =3D 0, SCS=
 =3D 0
>                 radio_ctrl->set_gpio_attr("FP0", "OUT", (write_buffer[i] =
&
> (1 << (7 - j))) ? (~SCS_MASK) & (~SCK_MASK) : ((~SCS_MASK) & (~SCK_MASK) =
&
> (~SDO_MASK)));
>             } else { // SCK =3D 1, SCS =3D 0
>                 radio_ctrl->set_gpio_attr("FP0", "OUT", (write_buffer[i] =
&
> (1 << (7 - j))) ? (~SCS_MASK) : (~SCS_MASK) & (~SDO_MASK));
>             }
>
>             time =3D time + uhd::time_spec_t(0.5 * spi_period);
>             radio_ctrl->set_command_time(time, 0);
>             if ((cpha & cpol) || ((!cpha) & (!cpol))) { // SCK =3D 1, SCS=
 =3D 0
>                 radio_ctrl->set_gpio_attr("FP0", "OUT", (write_buffer[i] =
&
> (1 << (7 - j))) ? (~SCS_MASK) : (~SCS_MASK) & (~SDO_MASK));
>             } else { // SCK =3D 0, SCS =3D 0
>                 radio_ctrl->set_gpio_attr("FP0", "OUT", (write_buffer[i] =
&
> (1 << (7 - j))) ? (~SCS_MASK) & (~SCK_MASK) : ((~SCS_MASK) & (~SCK_MASK) =
&
> (~SDO_MASK)));
>             }
>
> //            radio_ctrl->set_command_time(time, 0);
> //            if (radio_ctrl->get_gpio_attr("FP0", "READBACK") & SDI_MASK=
)
> //                read_buffer[i] |=3D (1 << (7 - j));
> //            if (j < 7) read_buffer[i] <<=3D 1;
>         }
>
>         // nop
>         time =3D time + uhd::time_spec_t(0.5*spi_period);
>         radio_ctrl->set_command_time(time, 0);
>         radio_ctrl->set_gpio_attr("FP0", "OUT", (~SDO_MASK) & (~SCS_MASK)
> & (cpol ? 0xffffffff : (~SCK_MASK)));
>
>     }
>
>     time =3D time + uhd::time_spec_t(spi_period);
>     radio_ctrl->set_command_time(time, 0);
>     radio_ctrl->set_gpio_attr("FP0", "OUT", SCS_MASK | (cpol ? SCK_MASK :
> 0x00000000));
>
>     return 0;
> }
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000aa7a0f062616dda8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This is because a peek command will always wait unti =
it&#39;s finished, whereas the other commands (&quot;poke&quot; commands) w=
ill stack in the command FIFO. If you add the blue lines (the set_command_t=
ime() is redundant BTW) then the call will wait until all the previous GPIO=
 commands are finished, then it will read the state, and return the value t=
o the host (this is not an asynchronous call). All following commands are t=
hen delayed, and your calculation of &quot;time&quot; will be late.</div><d=
iv><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Tue, Oct 29, 2024 at 11:18=E2=80=AFAM hui=
 cj &lt;<a href=3D"mailto:cjh416593819@gmail.com">cjh416593819@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div dir=3D"ltr"><p style=3D"box-sizing:border-box;margin-top=
:0px;color:rgb(31,35,40);font-family:-apple-system,BlinkMacSystemFont,&quot=
;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Arial,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:16px">Hi everyone,=
</p><p dir=3D"auto" style=3D"box-sizing:border-box;margin-top:0px;color:rgb=
(31,35,40);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot=
;,&quot;Noto Sans&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&=
quot;,&quot;Segoe UI Emoji&quot;;font-size:16px">I built a project that dem=
onstrates how to use the front-panel GPIO pins of the USRP X310 to emulate =
an SPI interface. The SPI communication leverages UHD timed commands and RF=
NoC blocks to drive GPIO signals at precise intervals.</p><div style=3D"box=
-sizing:border-box;color:rgb(31,35,40);font-family:-apple-system,BlinkMacSy=
stemFont,&quot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Arial,sans-se=
rif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:16px=
">But there is a slow performance when I read GPIO values.</div><div style=
=3D"box-sizing:border-box;color:rgb(31,35,40);font-family:-apple-system,Bli=
nkMacSystemFont,&quot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-si=
ze:16px">If I comment the blue part, the code can generate SCK and SDO up t=
o 2MHz.<br>But if I add the function of reading gpio, the output clock is s=
lowed down to 100Hz.</div><div style=3D"box-sizing:border-box;color:rgb(31,=
35,40);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&q=
uot;Noto Sans&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot=
;,&quot;Segoe UI Emoji&quot;;font-size:16px"><br></div><div style=3D"box-si=
zing:border-box;color:rgb(31,35,40);font-family:-apple-system,BlinkMacSyste=
mFont,&quot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Arial,sans-serif=
,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:16px">T=
his is weird. Anyone know why?</div><div style=3D"box-sizing:border-box;col=
or:rgb(31,35,40);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe U=
I&quot;,&quot;Noto Sans&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:16px"><br></div><div style=
=3D"box-sizing:border-box;color:rgb(31,35,40);font-family:-apple-system,Bli=
nkMacSystemFont,&quot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-si=
ze:16px">The code is open source at=C2=A0<a href=3D"https://github.com/cjho=
nlyone/uhd_gpio_spi" target=3D"_blank">https://github.com/cjhonlyone/uhd_gp=
io_spi</a>.</div><div style=3D"box-sizing:border-box;color:rgb(31,35,40);fo=
nt-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Noto =
Sans&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;S=
egoe UI Emoji&quot;;font-size:16px"><br></div><div style=3D"box-sizing:bord=
er-box"><font size=3D"1" face=3D"monospace"><font color=3D"#ff0000">int Uhd=
GpioSpi::write_and_read(uint8_t* write_buffer, uint8_t* read_buffer, uint32=
_t length) {</font><br><br><font color=3D"#ff0000">=C2=A0 =C2=A0 double spi=
_period =3D 1.0 / spi_frequency;</font><br><font color=3D"#ff0000">=C2=A0 =
=C2=A0 radio_ctrl-&gt;clear_command_time(0);</font><br><font color=3D"#ff00=
00">=C2=A0 =C2=A0 uhd::time_spec_t time =3D radio_ctrl-&gt;get_time_now() +=
 uhd::time_spec_t(0.05);</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 ti=
me =3D time + uhd::time_spec_t(spi_period);</font><br><font color=3D"#ff000=
0">=C2=A0 =C2=A0 radio_ctrl-&gt;set_command_time(time, 0);</font><br><font =
color=3D"#ff0000">=C2=A0 =C2=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&quot=
;, &quot;OUT&quot;, (~SDO_MASK) &amp; (~SCS_MASK) &amp; (cpol ? 0xffffffff =
: (~SCK_MASK)));</font><br><br><font color=3D"#ff0000">=C2=A0 =C2=A0 for (u=
int32_t i =3D 0; i &lt; length; i++) {</font><br><font color=3D"#ff0000">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (uint32_t j =3D 0; j &lt; 8; j++) {</font><=
br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time =
=3D time + uhd::time_spec_t(0.5 * spi_period);</font><br><font color=3D"#ff=
0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_command_=
time(time, 0);</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if ((cpha &amp; cpol) || ((!cpha) &amp; (!cpol))) { // SC=
K =3D 0, SCS =3D 0</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&q=
uot;, &quot;OUT&quot;, (write_buffer[i] &amp; (1 &lt;&lt; (7 - j))) ? (~SCS=
_MASK) &amp; (~SCK_MASK) : ((~SCS_MASK) &amp; (~SCK_MASK) &amp; (~SDO_MASK)=
));</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 } else { // SCK =3D 1, SCS =3D 0</font><br><font color=3D"#ff0000">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_=
gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;, (write_buffer[i] &amp; (1 &lt;&=
lt; (7 - j))) ? (~SCS_MASK) : (~SCS_MASK) &amp; (~SDO_MASK));</font><br><fo=
nt color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }</font><br>=
<br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time =
=3D time + uhd::time_spec_t(0.5 * spi_period);</font><br><font color=3D"#ff=
0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_command_=
time(time, 0);</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if ((cpha &amp; cpol) || ((!cpha) &amp; (!cpol))) { // SC=
K =3D 1, SCS =3D 0</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&q=
uot;, &quot;OUT&quot;, (write_buffer[i] &amp; (1 &lt;&lt; (7 - j))) ? (~SCS=
_MASK) : (~SCS_MASK) &amp; (~SDO_MASK));</font><br><font color=3D"#ff0000">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else { // SCK =3D 0, SCS =3D 0<=
/font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot=
;, (write_buffer[i] &amp; (1 &lt;&lt; (7 - j))) ? (~SCS_MASK) &amp; (~SCK_M=
ASK) : ((~SCS_MASK) &amp; (~SCK_MASK) &amp; (~SDO_MASK)));</font><br><font =
color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }</font><br><br=
><font color=3D"#0000ff">// =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0radio_=
ctrl-&gt;set_command_time(time, 0);<br>// =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (radio_ctrl-&gt;get_gpio_attr(&quot;FP0&quot;, &quot;READBACK&=
quot;) &amp; SDI_MASK)<br>// =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0read_buffer[i] |=3D (1 &lt;&lt; (7 - j));<br>// =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0if (j &lt; 7) read_buffer[i] &lt;&lt;=3D 1;</font><=
br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 }</font><br><br><fon=
t color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 // nop</font><br><font colo=
r=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 time =3D time + uhd::time_spec_t(=
0.5*spi_period);</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 radio_ctrl-&gt;set_command_time(time, 0);</font><br><font color=3D"#ff0=
000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&quo=
t;, &quot;OUT&quot;, (~SDO_MASK) &amp; (~SCS_MASK) &amp; (cpol ? 0xffffffff=
 : (~SCK_MASK)));</font><br><br><font color=3D"#ff0000">=C2=A0 =C2=A0 }</fo=
nt><br><br><font color=3D"#ff0000">=C2=A0 =C2=A0 time =3D time + uhd::time_=
spec_t(spi_period);</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 radio_c=
trl-&gt;set_command_time(time, 0);</font><br><font color=3D"#ff0000">=C2=A0=
 =C2=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;, SCS_=
MASK | (cpol ? SCK_MASK : 0x00000000));</font><br><br><font color=3D"#ff000=
0">=C2=A0 =C2=A0 return 0;</font><br><font color=3D"#ff0000">}</font></font=
></div></div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000aa7a0f062616dda8--

--===============2286241157795261414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2286241157795261414==--
