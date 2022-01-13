Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CAC48DB60
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 17:09:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 948DE3846A9
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 11:09:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="hwzWY/jv";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id D8F3D384B10
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 11:08:37 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id m6so16339846ybc.9
        for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 08:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=D8rdwbAFsgYnfxlSzaT43vj7DrHG/YbFJAWTZ5WRvZQ=;
        b=hwzWY/jvSQRa5iczkuMS8ac9fZQx9tZQSHIHcbBiQ7x3nZRZANYb6a15TRSoE2/Cxo
         p1H6l5iikgR6vSIKCizoNYqwrjNxzPqrLJdRLLZAibZdkElsTfhsd85FLtoVAC43Dv+U
         LdWHnCc4JNETx+OqLys4/9NoOVfwPajtba+KXYlqaWkTsNRWZYcq6nBm9goziX8tHKyG
         o+2lBrryNkJAmJyhTHu9WcFGRzijbJ7nkWaIxsto9z67F+1h8tBCiXz7NXBIaQGcV64o
         dgYAW+FBpejZGLWLqcsGEoNFjLKGXuqMn+XufLJlQ2tdyDaqFcJ39VksIsWWdEAA1/TI
         w5IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D8rdwbAFsgYnfxlSzaT43vj7DrHG/YbFJAWTZ5WRvZQ=;
        b=VBdxGJ5fBFBhszmfhOA/EyVhdjpzAzcgrBhOTQMeuisGESebZtgI7rHj+M3PWgmaTt
         OHn72HFWrPUjlOIMIaTElt1wEJhGYJ6tclr6tzo7COQPgo0rvb0C+SNRAJ+jV/03f9rQ
         Ye27GRVpwP+BXXFKO8yv7WMxkaWGxIPBp7nvYoI46IdtGmya7VVGXZWvbnf0EaMaFyr1
         JsA0/++JEqa4e96svgMimXHu/91LZMpMmI3r0D6pD55FEYDohVhBxHKeULcGZ9afrin/
         6EvWfqWpCnotV5pOtPrm32H1eDrVYJ8kGrwU8vsIfyUK/G7XO3pY8SXaehx77QTtqWvM
         FEPA==
X-Gm-Message-State: AOAM533CKjI2WqKVHdGLyO30r9FyfVTlgY7ygk9EAoOQdBMaC4fORW4e
	b5geIjnroCZYlP6+ggqcJxF4mK/lsor3oFXzfKuxShQj
X-Google-Smtp-Source: ABdhPJygx0Foi+BLv60v3GUgUi4vhkzVVypydN+GH6121tfDHhrK8859pQbhOUrL3XviyA9lLi8n1AXFUvprmxEL4Vw=
X-Received: by 2002:a25:b194:: with SMTP id h20mr6320909ybj.455.1642090117164;
 Thu, 13 Jan 2022 08:08:37 -0800 (PST)
MIME-Version: 1.0
References: <7a0dba07-cfba-e011-e7d5-d0d7624a6218@univ-ubs.fr> <CAFche=gD4oH_m1FXzHPc8E5sgQNOZC_MGV4PoJvi+rX1Sf9wHQ@mail.gmail.com>
In-Reply-To: <CAFche=gD4oH_m1FXzHPc8E5sgQNOZC_MGV4PoJvi+rX1Sf9wHQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 13 Jan 2022 10:08:21 -0600
Message-ID: <CAFche=iGqxswZJUA7+3_v46BParz5XXHMoxBiBh3L-+u+gpLSA@mail.gmail.com>
To: Camille Moniere <camille.moniere@univ-ubs.fr>
Message-ID-Hash: ROGZQIM2G5IWNYVCVX6G5IWHF7LWXR4S
X-Message-ID-Hash: ROGZQIM2G5IWNYVCVX6G5IWHF7LWXR4S
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fir Filter RFNoC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ROGZQIM2G5IWNYVCVX6G5IWHF7LWXR4S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2009051307617236657=="

--===============2009051307617236657==
Content-Type: multipart/alternative; boundary="0000000000001f87fc05d578e6e5"

--0000000000001f87fc05d578e6e5
Content-Type: text/plain; charset="UTF-8"

In particular, make sure you have a clock connected to the CE input of the
FIR filter. Something like this in your clk_domains section:

clk_domains:
    - { srcblk: _device_, srcport: ce, dstblk: fir0, dstport: ce }

Wade

On Thu, Jan 13, 2022 at 10:04 AM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Camille,
>
> Maybe you could share your RFNoC YML file and someone could take a look?
> There might be something wrong there.
>
> Wade
>
> On Thu, Jan 13, 2022 at 8:32 AM Camille Moniere <
> camille.moniere@univ-ubs.fr> wrote:
>
>> Hello everyone,
>>
>> I unsuccessfully try to use the FIR Filter RFNoC block in reception, in
>> an USRP X310 with a UBX-160 daughterboard on-board.
>> I have tested several topology for the custom image (radio0 - > ddc0 ->
>> fir0 -> ep0 || radio0 -> ddc0 -> ep0 + ep1 -> fir0 + fir0 -> ep1, for
>> example),
>> with several parameter for the filter (With or without re-loadable
>> coefficients, with or without embedded DSP registers, 21 coef' instead
>> of 41 ...) but it ultimately
>> always fails the same way.
>> When the FIR is used, I can't retrieve any data. I got an Overflow
>> error, without receiving any samples. Sometimes, I even got a "Late
>> Command" error, even when using  RFNoC in C++
>> (graph committed immediately before the stream now stream_cmd).
>>
>> For the record, the center frequency is 433 MHz for a sampling rate of 1
>> Msps.
>>
>> I assumed the filter output one complex sample (sc16) for each new input
>> (sc16 too). Am I wrong? Or is there specific setup I have forgotten?
>> Has someone successfully used this block, and can provide an example or
>> tutorial?
>>
>> Regards,
>>
>> Camille
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000001f87fc05d578e6e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>In particular, make sure you have a clock connected t=
o the CE input of the FIR filter. Something like this in your clk_domains s=
ection:</div><div><br></div><div>clk_domains:</div><div>=C2=A0 =C2=A0 - { s=
rcblk: _device_, srcport: ce, dstblk: fir0, dstport: ce }</div><div><br></d=
iv><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, Jan 13, 2022 at 10:04 AM Wade Fife &lt;<a hre=
f=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>H=
i Camille,</div><div><br></div><div>Maybe you could share your RFNoC YML fi=
le and someone could take a look? There might be something wrong there.</di=
v><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 13, 2022 at 8:32 AM Camille=
 Moniere &lt;<a href=3D"mailto:camille.moniere@univ-ubs.fr" target=3D"_blan=
k">camille.moniere@univ-ubs.fr</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Hello everyone,<br>
<br>
I unsuccessfully try to use the FIR Filter RFNoC block in reception, in=C2=
=A0 <br>
an USRP X310 with a UBX-160 daughterboard on-board.<br>
I have tested several topology for the custom image (radio0 - &gt; ddc0 -&g=
t;=C2=A0 <br>
fir0 -&gt; ep0 || radio0 -&gt; ddc0 -&gt; ep0 + ep1 -&gt; fir0 + fir0 -&gt;=
 ep1, for=C2=A0 <br>
example),<br>
with several parameter for the filter (With or without re-loadable=C2=A0 <b=
r>
coefficients, with or without embedded DSP registers, 21 coef&#39; instead=
=C2=A0 <br>
of 41 ...) but it ultimately<br>
always fails the same way.<br>
When the FIR is used, I can&#39;t retrieve any data. I got an Overflow=C2=
=A0 <br>
error, without receiving any samples. Sometimes, I even got a &quot;Late=C2=
=A0 <br>
Command&quot; error, even when using=C2=A0 RFNoC in C++<br>
(graph committed immediately before the stream now stream_cmd).<br>
<br>
For the record, the center frequency is 433 MHz for a sampling rate of 1=C2=
=A0 <br>
Msps.<br>
<br>
I assumed the filter output one complex sample (sc16) for each new input=C2=
=A0 <br>
(sc16 too). Am I wrong? Or is there specific setup I have forgotten?<br>
Has someone successfully used this block, and can provide an example or=C2=
=A0 <br>
tutorial?<br>
<br>
Regards,<br>
<br>
Camille<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000001f87fc05d578e6e5--

--===============2009051307617236657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2009051307617236657==--
