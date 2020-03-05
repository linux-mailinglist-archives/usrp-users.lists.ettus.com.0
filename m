Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 432DF17AAAF
	for <lists+usrp-users@lfdr.de>; Thu,  5 Mar 2020 17:40:43 +0100 (CET)
Received: from [::1] (port=60734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9tY7-0004wD-Kd; Thu, 05 Mar 2020 11:40:39 -0500
Received: from mail-lj1-f175.google.com ([209.85.208.175]:47080)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter@ettus.com>)
 id 1j9tY3-0004o2-NK
 for usrp-users@lists.ettus.com; Thu, 05 Mar 2020 11:40:35 -0500
Received: by mail-lj1-f175.google.com with SMTP id h18so6789948ljl.13
 for <usrp-users@lists.ettus.com>; Thu, 05 Mar 2020 08:40:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J2IzTfVNbypV7p427Fq0RZykVsvIrhpiCG3Nx6jMnRk=;
 b=DMOrLO+8YkCsozFtJ19qEmyW2R2ObASSoFtFURzBCxXORVXX8gHpZfFUDQVOVfJ9R3
 HJCbMxVO9jjSTNca+4UTO/wq+p6JZv+aswU1B54dPaY7J9iQGo/z12qkUey+VCykOpIJ
 1Sb0Q6UTWAXgsjApuJSRTsAiWYXnKwe8Knmb3L9RVqJDHOQrBFUml8NwnvsTMu1MhAUg
 v0Z9nZO/tjxNsQCbudQIO9JlSxune5gOleg/bKkgBKHKr4UUMCvYh6qq3eLtDdn4o5cT
 PIYd8jt32auijdAt6g3RR5qJxKNXguNvMFFHgyKZq94ZH5NcIy8ZpnZxQTHV58S4iltT
 C5qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J2IzTfVNbypV7p427Fq0RZykVsvIrhpiCG3Nx6jMnRk=;
 b=kDsBfyMEjlxCa9KuWiD6qGhFkhktfF9NpG7c1WAriUvJ0wFKixsmK9v6zfyVCaK55W
 Hk9XaNAoiVOXVM3LRNK65hFP6QPGmoYsUeipF7W0MAEhrdgGw59bSewnN8/VnZnc7vJJ
 0qrrtsKs7fH23BUQ4ZhnKuXyJdrQPQ4BIa+82mnzobNy8Ci5d5b3OdJH+OsPtQFqLF3q
 ONlLyHNqG/2kfEexZcxgf5xICW+EwcPku94P9hW8E/pWKIR0+YAuclK17tnwBhl06NKx
 2+4ykPw0euCgE7NnV3SjN515pJIZFfXg5LLTKCvKYuZMdVwMG0jIFyHnkDYEW1LDXTgq
 Hvww==
X-Gm-Message-State: ANhLgQ3TjTzhSNuxaOMa/NA+BiqyBU4TPc6+Z2zF2ND+LH2yRwvK3YPk
 SZD7wWbJf/frXl9yI3jseU8iolP7v5mTWpBvXFinRkYl
X-Google-Smtp-Source: ADFU+vtTT7mjlN2zmYcBdrSxYdK5rvf28zhD+qX2GDt+z9yWzuvNgGW4DaT1eFh/JR4VKHePYLfjaEC8nTMpT4twqOI=
X-Received: by 2002:a2e:85d8:: with SMTP id h24mr2806181ljj.230.1583426394449; 
 Thu, 05 Mar 2020 08:39:54 -0800 (PST)
MIME-Version: 1.0
References: <7fe1a8ca-30af-dcc8-2533-e553cb794651@iqo.uni-hannover.de>
In-Reply-To: <7fe1a8ca-30af-dcc8-2533-e553cb794651@iqo.uni-hannover.de>
Date: Thu, 5 Mar 2020 10:39:42 -0600
Message-ID: <CANf970Yo0TsXDdsoyqPxfCQ7b=sYjUUdToDeyBtrPEEjY=Q6Ww@mail.gmail.com>
To: Knut Stolzenberg <stolzenberg@iqo.uni-hannover.de>
Subject: Re: [USRP-users] Trigger Output
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9147311524054555047=="
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

--===============9147311524054555047==
Content-Type: multipart/alternative; boundary="000000000000c4fddb05a01e2f4b"

--000000000000c4fddb05a01e2f4b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Knut,

Reading a GPIO line requires that the GPIO state be sent back to the host,
processed, and then acted upon (in your case, sending a stream command to
the radio). There is going to be a good amount of latency and jitter built
into this.

The alternative, which I would strongly recommend, would be to have the
USRP source the trigger. This can be set up really easily with ATR - an
FPGA functionality that coordinates GPIO states with radio TX/RX states.
I'd expect your TX start and GPIO state change to be coincident on the
order of nanoseconds. Checkout the gpio.cpp shipping example for more info:

https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/gpio.c=
pp

If you need to differ the time between TX beginning and GPIO changing
state, you can use timed commands on both and force the offset.

Sam

On Thu, Mar 5, 2020 at 9:02 AM Knut Stolzenberg via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I have set up a trigger for my X310 using the Pin 2 of the GPIO Front
> Panel. The Trigger is a TTL signal fed to the Pin. But we experience a
> jitter of ~100=C2=B5s between the Trigger and the SDR starting to send
> data.Is it possible to reduce this latency/ jittering to <10=C2=B5s. If n=
ot
> is it possible to use e.g. Pin 6 as a trigger output, which signalises
> when the SDR starts to send data? How would I implement this in the
> code? This would be interesting to me, since I could then synchronise my
> experiment to the SDR and not vice versa.
>
> The code we use for setting up the trigger is pretty similar to what is
> on the ettus knowledge base. The important bits are these:
>
> ...
>
> ...
>
> ...
>
> //Declarate Pin 2 as Trigger Input -> this is used for the triggered mode
> #define MAN_GPIO_MASK (1 << 2)
> #define AMP_GPIO_MASK (1 << 6)
> #define ATR_MASKS (AMP_GPIO_MASK | MAN_GPIO_MASK)
> // set up our values for ATR control: 1 for ATR, 0 for manual
> #define ATR_CONTROL (AMP_GPIO_MASK & ~MAN_GPIO_MASK)
> // set up the GPIO directions: 1 for output, 0 for input
> #define GPIO_DDR  (AMP_GPIO_MASK & ~MAN_GPIO_MASK)
> ....
>
> ....
>
> ....
>
> usrp->set_gpio_attr("FP0", "CTRL", 0, ATR_MASKS);
>          usrp->set_gpio_attr("FP0", "DDR", 0, ATR_MASKS);
>
>          while (true)
>                  if (0 !=3D usrp->get_gpio_attr("FP0", "READBACK", 0)) {
>                      /*here should be Pin 6 or "output trigger" high*/
>                      for (int i =3D 0; i < line; i++) { /*send data to th=
e
> SDR*/
>                          tx_stream->send(
>                              buff_ptrs[i], spb, md
>                          );
>                      }
>                     /*here should be Pin 6 or "output trigger" low
>              }
>          }
>
>
> Sincerely,
>
> Knut
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c4fddb05a01e2f4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Knut,</div><div><br></div><div>Reading a GPIO lin=
e requires that the GPIO state be sent back to the host, processed, and the=
n acted upon (in your case, sending a stream command to the radio). There i=
s going to be a good amount of latency and jitter built into this. <br></di=
v><div><br></div><div>The alternative, which I would strongly recommend, wo=
uld be to have the USRP source the trigger. This can be set up really easil=
y with ATR - an FPGA functionality that coordinates GPIO states with radio =
TX/RX states. I&#39;d expect your TX start and GPIO state change to be coin=
cident on the order of nanoseconds. Checkout the gpio.cpp shipping example =
for more info:</div><div><br></div><div><a href=3D"https://github.com/Ettus=
Research/uhd/blob/UHD-3.15.LTS/host/examples/gpio.cpp">https://github.com/E=
ttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/gpio.cpp</a></div><div><br=
></div><div>If you need to differ the time between TX beginning and GPIO ch=
anging state, you can use timed commands on both and force the offset. <br>=
</div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sa=
m<br></div></div></div></div></div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 5, 2020 at 9:02 AM Knu=
t Stolzenberg via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Hello,<br>
<br>
I have set up a trigger for my X310 using the Pin 2 of the GPIO Front <br>
Panel. The Trigger is a TTL signal fed to the Pin. But we experience a <br>
jitter of ~100=C2=B5s between the Trigger and the SDR starting to send <br>
data.Is it possible to reduce this latency/ jittering to &lt;10=C2=B5s. If =
not <br>
is it possible to use e.g. Pin 6 as a trigger output, which signalises <br>
when the SDR starts to send data? How would I implement this in the <br>
code? This would be interesting to me, since I could then synchronise my <b=
r>
experiment to the SDR and not vice versa.<br>
<br>
The code we use for setting up the trigger is pretty similar to what is <br=
>
on the ettus knowledge base. The important bits are these:<br>
<br>
...<br>
<br>
...<br>
<br>
...<br>
<br>
//Declarate Pin 2 as Trigger Input -&gt; this is used for the triggered mod=
e<br>
#define MAN_GPIO_MASK (1 &lt;&lt; 2)<br>
#define AMP_GPIO_MASK (1 &lt;&lt; 6)<br>
#define ATR_MASKS (AMP_GPIO_MASK | MAN_GPIO_MASK)<br>
// set up our values for ATR control: 1 for ATR, 0 for manual<br>
#define ATR_CONTROL (AMP_GPIO_MASK &amp; ~MAN_GPIO_MASK)<br>
// set up the GPIO directions: 1 for output, 0 for input<br>
#define GPIO_DDR=C2=A0 (AMP_GPIO_MASK &amp; ~MAN_GPIO_MASK)<br>
....<br>
<br>
....<br>
<br>
....<br>
<br>
usrp-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;CTRL&quot;, 0, ATR_MASKS);<br=
>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 usrp-&gt;set_gpio_attr(&quot;FP=
0&quot;, &quot;DDR&quot;, 0, ATR_MASKS);<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 while (true)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 if (0 !=3D usrp-&gt;get_gpio_attr(&quot;FP0&quot;, &quot;READBACK&qu=
ot;, 0)) {<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 /*here should be Pin 6 or &quot;output trigger&qu=
ot; high*/<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 for (int i =3D 0; i &lt; line; i++) { /*send data=
 to the <br>
SDR*/<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 tx_stream-&gt;send(<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 buff_ptrs[i=
], spb, md<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 );<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 }<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 /*here should be Pin 6 or &quot;output trigger&quo=
t; low<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }<br>
<br>
<br>
Sincerely,<br>
<br>
Knut<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c4fddb05a01e2f4b--


--===============9147311524054555047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9147311524054555047==--

