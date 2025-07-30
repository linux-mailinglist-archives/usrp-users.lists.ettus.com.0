Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5752EB1617E
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jul 2025 15:27:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4CB2386727
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jul 2025 09:27:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753882049; bh=6S30MG3rtEIcqR3BljJhiF9mcZGz+0Zqkq9uuGP5bxs=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=pGm3K0BRKCP9fk9PCcQbD9OuwV+pUOUNxuey9n4LaMrWfZx3oY2xTZ+MfUaTaxzVS
	 nUEu+Dy4S6t4PpY6z9FE6CW7O7RStDW/aEKlp6UWw05BNog6muggx5zbreckGHx8h8
	 Rdbl1fOMH5AtbHjQQF42JUSl+z+64b14pkqR9vd8M/B1iZso7oObw6fKztq3PqxeSp
	 Bi0ft2j/GVJELIl5tx/3xqaSftrls+ISqxZlSPOb6RN+51rlU+U3k/eZ07GLBSr9s0
	 v9EI6cECb2bbrF6TNgrAdIy4reOa8hfUENZHDBdyCzoKAyTjeCf/N77G1/8VAbbLh/
	 zUdGih4eLSe8A==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 05890386725
	for <usrp-users@lists.ettus.com>; Wed, 30 Jul 2025 09:26:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="TslQx86j";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6153a19dddfso5574845a12.1
        for <usrp-users@lists.ettus.com>; Wed, 30 Jul 2025 06:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1753882008; x=1754486808; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vMbXsHV0cveQA05drdy6GtwtKSD+5+KPaTQRnD98qTo=;
        b=TslQx86j2UiSLGN0cdvrItnRvoTpZhzpH+W0p9Tbea/VpjZ1PfqGIJ2VeYnrRXy7VB
         p4Fdbooa+CY0xWF8J5fLr7Iarc/rxOcMaYp5PFT6MLaW/Us0tPUaeTcU3XcTbLxmppQG
         hDHlMaxsk52mFaqt8pUmTl/zMa8Tjid7JFWKyAaGk/U7ACh4ZOku3fGzPQ/4/aKYKm3z
         CXtWpoRJSmuMo3+wW+0tSDA41tcixIrjiP3yvRR/Jpzh+eDgdOFYWJZqnAfEVZ9Z0NX8
         U4jfGkmNEXhh2XdYelE0FDHTo1zNes08GgtVknR/IyoeEqcrtZp9Ivv5j73oYUjk597g
         81RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753882008; x=1754486808;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vMbXsHV0cveQA05drdy6GtwtKSD+5+KPaTQRnD98qTo=;
        b=fXElKEoOf6Hd8pyqmzAslYbhZs2lnmmn84kp1am1XVTQRZ33/5CXf0aC+hCOKmDmuk
         Tt0KSn3O7dLluT2pdAwCW7Jbh5NtpKzwTW0gZWHePuJhiv1zmXhGLdsH37FfgUIwedl9
         SH+E4nlJFcxLaS5oTq3YuksdXOKjYqf9+2YzRvge8vWJkBq2mZ8xe7ASEEILTB8sj/3q
         65TxRT4nmNhA1tAUz6GC/jESTmde8HT1EVaPIdKkTm2AZa7LWL8Ky0lzwGlG2IR4Mbdl
         aFjIgXinVb9w6pdd2TNpFd+QTSCsEiVGqRICD3e+AZRD2qt+gibqmbYDGb9fAIED2ads
         Pp9w==
X-Gm-Message-State: AOJu0Yz6u5NnN6zcmVD8O/jh8TBp8AmYtwCsUS5jtUsPCqZsnvlJbOAx
	GsXjdMHAbitcVF4qDIY0baAXvj3aZXAY5WyE9YZ8G6IZV/iDtqFikfDrgKJsffAhiBQpHgi88a1
	Kc5aaPNLuViSYFjFl5inOoTC7HZJUByjjIL847VLP
X-Gm-Gg: ASbGncv/V+/N8L+bFx+hrFSL0SIvVU6uRPyP7NLkSwBWlEWC2Q0856UcwiYoEofg7S+
	P9PAYVc0Xk9zNwfHSxF2tufSJza9ytGbTHPZ9WPBKz4dEswB9sz3OzrdKhBT+vgBPGR3cefa/SN
	PIF2O0kPC6m9SrCS4wxmrwwwrgF6f35xan/vEvJTDLj1OZtU2GQCyYQZg9q2blTIf3Dr6CAjdHj
	4Y1fP3hxV4u7pLaPAos45la+yU=
X-Google-Smtp-Source: AGHT+IE2l/fZ4ekDo5VDEGVB7cnQ0KfJkaG0AiKaRhunhE/BwsLyiDJMRgf4r+zB4rZklWxqo28IpGfnJbNw7fUkVc8=
X-Received: by 2002:a50:a6d2:0:b0:608:b3c3:3aea with SMTP id
 4fb4d7f45d1cf-615871c110emr2670731a12.16.1753882007657; Wed, 30 Jul 2025
 06:26:47 -0700 (PDT)
MIME-Version: 1.0
References: <8bfcBosbB017m5zcThlx6kskuX0KxhL1QpyK1VWHOo@lists.ettus.com> <CAFOi1A5hKqnG5Vs4qxJSGcPZCkqB1PQhcBCxVsmGWtrCFksavw@mail.gmail.com>
In-Reply-To: <CAFOi1A5hKqnG5Vs4qxJSGcPZCkqB1PQhcBCxVsmGWtrCFksavw@mail.gmail.com>
Date: Wed, 30 Jul 2025 09:26:36 -0400
X-Gm-Features: Ac12FXwyJkiPQWkjGuF_JBjStiTI5xgo02q9sJ5uX45y1zdesygziUuVhZLR4Ds
Message-ID: <CAB__hTS7e54jZ-HvGL4Xe4PW1qDGD9DQCF9NtSy8esLrh0x_Mg@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 4UJIOCUHUOEJFBA5ONQ5GITDD2FDDYLL
X-Message-ID-Hash: 4UJIOCUHUOEJFBA5ONQ5GITDD2FDDYLL
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflow Issue During Transmission and Reception with USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4UJIOCUHUOEJFBA5ONQ5GITDD2FDDYLL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3781319509155241198=="

--===============3781319509155241198==
Content-Type: multipart/alternative; boundary="0000000000000b8586063b257ad9"

--0000000000000b8586063b257ad9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I will add that if your waveform is repeating (I noticed the --repeat
flag), you can alternatively use the Replay block to playout your Tx
waveform. With this block you load the samples in the Replay block memory
in non-realtime and then you can initiate the playout to the radio and
avoid all underruns.  But, if your waveform is non-repeating or not known
in advance, this won't help.
Rob

On Wed, Jul 30, 2025 at 6:09=E2=80=AFAM Martin Braun <martin.braun@ettus.co=
m> wrote:

> Any answer is a variation of "get a better computer" and "get better
> software". tx_samples_from_file is an example that is meant to show how t=
o
> use UHD APIs, although 20 Msps is pretty slow and this tool should be
> perfectly capable of handling that. You can even safely transmit 20 Msps
> over 1 GbE. You could try mounting your reference file on a ramdisk. Also=
,
> run benchmark_rate to make sure your connection is capable of handling th=
e
> speed. You can also check out
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks,
> although those tuning tips are typically meant for higher rates (and for =
10
> or 100 GbE).
>
> --M
>
> On Wed, Jul 30, 2025 at 8:46=E2=80=AFAM <gechb21@gmail.com> wrote:
>
>> Hello,
>>
>> I=E2=80=99m using USRP X310 devices on both the transmitting and receivi=
ng ends
>> to handle a data stream. During transmission, I run the following comman=
d:
>>
>> /usr/lib/uhd/examples/tx_samples_from_file --freq 2484e6 --rate 20e6
>> --gain 10 --wirefmt sc16 --ref=3Dinternal --file
>> /home/ubuntutx/uhd/examples/tx_transmit_data.dat --repeat
>>
>> I encounter consistent underflow issues (indicated by "U" messages in th=
e
>> console), regardless of the sample rate used. Could you please advise ho=
w
>> to modify my setup or code to enable stable transmission and reception
>> without these underflow errors?
>>
>> Thank you,
>>
>> Getaneh Berie
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000b8586063b257ad9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I will add that if your waveform is repeating (I noticed t=
he --repeat flag), you can alternatively use the Replay block to playout yo=
ur Tx waveform. With this block you load the samples in the Replay block me=
mory in non-realtime=C2=A0and then you can initiate the playout to the radi=
o and avoid all underruns.=C2=A0 But, if your waveform is non-repeating or =
not known in advance, this won&#39;t help.<div>Rob</div></div><br><div clas=
s=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Jul 30, 2025 at 6:09=E2=80=AFAM Martin Braun &lt;<a href=3D"mail=
to:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Any =
answer is a variation of &quot;get a better computer&quot; and &quot;get be=
tter software&quot;. tx_samples_from_file is an example that is meant to sh=
ow how to use UHD APIs, although 20 Msps is pretty slow and this tool shoul=
d be perfectly capable of handling=C2=A0that. You can even safely transmit =
20 Msps over 1 GbE. You could try mounting your reference file on a ramdisk=
. Also, run benchmark_rate to make sure your connection is capable of handl=
ing the speed. You can also check out=C2=A0<a href=3D"https://kb.ettus.com/=
USRP_Host_Performance_Tuning_Tips_and_Tricks" target=3D"_blank">https://kb.=
ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>, although those =
tuning tips are typically meant for higher rates (and for 10 or 100 GbE).</=
div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 30, 2025 at 8:46=E2=80=AFAM &l=
t;<a href=3D"mailto:gechb21@gmail.com" target=3D"_blank">gechb21@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
p>Hello,</p><p>I=E2=80=99m using USRP X310 devices on both the transmitting=
 and receiving ends to handle a data stream. During transmission, I run the=
 following command:</p><p>/usr/lib/uhd/examples/tx_samples_from_file --freq=
 2484e6 --rate 20e6 --gain 10 --wirefmt sc16 --ref=3Dinternal --file /home/=
ubuntutx/uhd/examples/tx_transmit_data.dat --repeat</p><p>I encounter consi=
stent underflow issues (indicated by &quot;U&quot; messages in the console)=
, regardless of the sample rate used. Could you please advise how to modify=
 my setup or code to enable stable transmission and reception without these=
 underflow errors?</p><p>Thank you,</p><p>Getaneh Berie</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000b8586063b257ad9--

--===============3781319509155241198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3781319509155241198==--
