Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2BD21FE76
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jul 2020 22:22:12 +0200 (CEST)
Received: from [::1] (port=53390 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvRRL-0004du-3I; Tue, 14 Jul 2020 16:22:11 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:40958)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jvRRG-0004T6-G5
 for usrp-users@lists.ettus.com; Tue, 14 Jul 2020 16:22:06 -0400
Received: by mail-oi1-f178.google.com with SMTP id t198so14964706oie.7
 for <usrp-users@lists.ettus.com>; Tue, 14 Jul 2020 13:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ProiRbzK5cC4SujIVjAsgkaAHkh+TzZii6yqlIPNNDs=;
 b=Ob74vbNHgb0TFGsAM6zvFbVtulOh+ehOc/9YL4uzcu2lJPKjCGPgNm24YWEF8jxbAq
 FewClo2W4L53jzzNF36QzZzWS6MuqxX9qkc/mhdElK/HHeCumOozli2PJLuM4rpdaqBb
 UGjRm9LGKZXv2FoED7pO+iAU9leYVgORZZVi21oUv27zDEEgsz90YyIUC1HaY3jcEiLd
 WgE6XgAgrF3jZ99Ml3HgqOW9eZeGd5uHh6u0PO52aTbX0jqwlyS/ehjJ9GA8AEh6bNgT
 o0hGvUXSrFKOVn144EJ8YHINV4mhLKiLdVw0XiYHVmZcGcsvYY8PyFrAKEilZtCdlS07
 SAUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ProiRbzK5cC4SujIVjAsgkaAHkh+TzZii6yqlIPNNDs=;
 b=IoW5W4F0er/kjWPBgUO4etuCgCtud+sKOXIMZHSvPzMSmlPlZSTjeBXOgpeVlrStZg
 GAdjywrTTLlYsLeL7mgOa+TjdhRu7WRalCj4o1N0y5wNvGruyaJlbgLMUKgBUeTlNjOn
 NKDQBq3cUOsVlESHp+gZK4jxK2uaQXDw8h4RDJdxpfUdkoXa/l/VahqnuSWQBMl8zoPi
 0BbK0Ds4Lc5J2QVG0vqx4WkbqsgGf5H71N6plu5H8luWBhXf0KnUdLRX424Y3VEn1W6Z
 Q6T029hRd8vmqA2NelCgZBU+7hJQo/laQCArDoVy0nSm50+AZs+DkDiYVnysI/kfK24g
 sB/Q==
X-Gm-Message-State: AOAM533cwKqik8FKfS2IUP22+jxjuxoWriPWOtRWvifo89ik+nNyleug
 5dkslLsd5LLAP23ko7S4EIuRaKOMmXP+28fKQHY=
X-Google-Smtp-Source: ABdhPJzr1ezhZJ2Mao5/rlkUG0LhMS5cCjH8SvzgLFmNqwQji+rJgewp1469hV3K8K2gpVwUUGb+0HRBmBJ32is5QRE=
X-Received: by 2002:aca:1909:: with SMTP id l9mr5256499oii.177.1594758085722; 
 Tue, 14 Jul 2020 13:21:25 -0700 (PDT)
MIME-Version: 1.0
References: <d70f86d3b07e44cdbe0b0b32c9e4fae2@oc11expo22.exchange.mit.edu>
In-Reply-To: <d70f86d3b07e44cdbe0b0b32c9e4fae2@oc11expo22.exchange.mit.edu>
Date: Tue, 14 Jul 2020 16:21:13 -0400
Message-ID: <CAEXYVK4LfFz1XM+pcQh06az=6KangcoLwLQxGMEKZmUxGS=Q3g@mail.gmail.com>
To: "Richard J. Muri" <ri28856@mit.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Considerations on resampling inside USRP firmware
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Content-Type: multipart/mixed; boundary="===============6356253442293364804=="
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

--===============6356253442293364804==
Content-Type: multipart/alternative; boundary="00000000000033c5dc05aa6c8d9f"

--00000000000033c5dc05aa6c8d9f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 14, 2020 at 3:30 PM Richard J. Muri via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I=E2=80=99m working on a project using x310s where different stakeholders=
 desire
> different sampling rates, some of which are not natively support by the
> x310. One stakeholder wants to put a fractional resampling filter at the
> ingress and egress of the FPGA inside the USRP.
>
>
>
> For instance, I may be running the USRP at 50 MHz sampling rate. I have a=
n
> application that requires a 40 MHz sampling rate. I want to send 1000
> samples (from my application perspective) loopbacked from TX/RX to RX2.
> Does it make sense to put a 5/4  upsampler on the transmit chain inside t=
he
> FPGA, and then a 4/5 downsampler on the receive? I=E2=80=99m hoping that =
if I use
> the software I have already written as before, the scenario plays out as
> follows:
>
>
>
> 1.       Initialize the USRP to a 50 MHz sampling rate.
>
> 2.       Set md.time_spec using a clock domain agnostic method (e.g. set
> it using integer seconds, double fractional seconds).
>
> 3.       Call tx_streamer->send(txbuffer, 1000 samples, md, 0 timeout) in
> my TX thread.
>
> 4.       Call rx_streamer->recv(rxbuffer, 1000 samples, md, 0 timeout) in
> my RX thread.
>
> 5.       The 1000 sample TX packet hits the upsampler, gets converted to
> 1250 samples.
>
> 6.       The USRP works as normal and puts the 1250 samples through the
> full TX/RX chain, at the time specified in the metadata timespec (rounded
> to whatever nearest tick count can actually be represented by the 20 ns
> clock period)
>
> 7.       The 1250 sample receive hits the downsampler, gets converted to
> 1000 samples.
>
> 8.       My software gets 1000 samples into rxbuffer
>
>
>
> I=E2=80=99m not terribly familiar with the internal workings of the Veril=
og
> firmware. Are there issues I may be missing? Does the custom firmware nee=
d
> to intercept the CHDR and change the 1000 samples to 1250, or is the 1000
> only used by software for the network communication?
>

Rational resampling can work with all the tools that Ettus has already
provided.  I am in the process of putting the finishing touches on a 2/3
and 3/2 resampler for the X310.  I will make it publically available very
soon.  Let me know if you think this will help you.

The DUC and DDC do rate changing, so looking at those as examples, you'll
notice that really the big thing to do is check out the axi_rate_change
block:


https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/noc=
_block_ddc.v

https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/noc=
_block_duc.v

https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/axi=
_rate_change.v

For blocks with fixed rates, check out the DEFAULT_N and DEFAULT_M
parameters for the Verilog.  This eliminates the need to set a register in
software, and the logic in the axi_rate_change block is ready to go at
reset.

Be sure to simulate the block fully beforehand, but that should do it all
for you.

Brian

--00000000000033c5dc05aa6c8d9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jul 14, 2020 at 3:30 PM Richard J=
. Muri via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-3235156399845080794WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m working on a project using x310s where d=
ifferent stakeholders desire different sampling rates, some of which are no=
t natively support by the x310. One stakeholder wants to put a fractional r=
esampling filter at the ingress and egress
 of the FPGA inside the USRP. <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">For instance, I may be running the USRP at 50 MHz sa=
mpling rate. I have an application that requires a 40 MHz sampling rate. I =
want to send 1000 samples (from my application perspective) loopbacked from=
 TX/RX to RX2. Does it make sense
 to put a 5/4=C2=A0 upsampler on the transmit chain inside the FPGA, and th=
en a 4/5 downsampler on the receive? I=E2=80=99m hoping that if I use the s=
oftware I have already written as before, the scenario plays out as follows=
:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"gmail-m_-3235156399845080794MsoListParagraph"><u></u><span>1.<s=
pan style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
</span></span><u></u>Initialize the USRP to a 50 MHz sampling rate.<u></u><=
u></u></p>
<p class=3D"gmail-m_-3235156399845080794MsoListParagraph"><u></u><span>2.<s=
pan style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
</span></span><u></u>Set md.time_spec using a clock domain agnostic method =
(e.g. set it using integer seconds, double fractional seconds).
<u></u><u></u></p>
<p class=3D"gmail-m_-3235156399845080794MsoListParagraph"><u></u><span>3.<s=
pan style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
</span></span><u></u>Call tx_streamer-&gt;send(txbuffer, 1000 samples, md, =
0 timeout) in my TX thread.<u></u><u></u></p>
<p class=3D"gmail-m_-3235156399845080794MsoListParagraph"><u></u><span>4.<s=
pan style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
</span></span><u></u>Call rx_streamer-&gt;recv(rxbuffer, 1000 samples, md, =
0 timeout) in my RX thread.
<u></u><u></u></p>
<p class=3D"gmail-m_-3235156399845080794MsoListParagraph"><u></u><span>5.<s=
pan style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
</span></span><u></u>The 1000 sample TX packet hits the upsampler, gets con=
verted to 1250 samples.<u></u><u></u></p>
<p class=3D"gmail-m_-3235156399845080794MsoListParagraph"><u></u><span>6.<s=
pan style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
</span></span><u></u>The USRP works as normal and puts the 1250 samples thr=
ough the full TX/RX chain, at the time specified in the metadata timespec (=
rounded to whatever nearest tick count can actually be represented by the 2=
0 ns clock period)<u></u><u></u></p>
<p class=3D"gmail-m_-3235156399845080794MsoListParagraph"><u></u><span>7.<s=
pan style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
</span></span><u></u>The 1250 sample receive hits the downsampler, gets con=
verted to 1000 samples.<u></u><u></u></p>
<p class=3D"gmail-m_-3235156399845080794MsoListParagraph"><u></u><span>8.<s=
pan style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
</span></span><u></u>My software gets 1000 samples into rxbuffer<u></u><u><=
/u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m not terribly familiar with the internal =
workings of the Verilog firmware. Are there issues I may be missing? Does t=
he custom firmware need to intercept the CHDR and change the 1000 samples t=
o 1250, or is the 1000 only used by software
 for the network communication?</p></div></div></blockquote><div><br></div>=
<div>Rational resampling can work with all the tools that Ettus has already=
 provided.=C2=A0 I am in the process of putting the finishing touches on a =
2/3 and 3/2 resampler for the X310.=C2=A0 I will make it publically availab=
le very soon.=C2=A0 Let me know if you think this will help you.</div><div>=
<br></div><div>The DUC and DDC do rate changing, so looking at those as exa=
mples, you&#39;ll notice that really the big thing to do is check out the a=
xi_rate_change block:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https=
://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/noc_bloc=
k_ddc.v">https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/=
rfnoc/noc_block_ddc.v</a></div><div>=C2=A0=C2=A0<a href=3D"https://github.c=
om/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/noc_block_duc.v">ht=
tps://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/noc_b=
lock_duc.v</a></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusRes=
earch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/axi_rate_change.v">https://git=
hub.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/axi_rate_chang=
e.v</a></div><div><br></div><div>For blocks with fixed rates, check out the=
 DEFAULT_N and DEFAULT_M parameters for the Verilog.=C2=A0 This eliminates =
the need to set a register in software, and the logic in the axi_rate_chang=
e block is ready to go at reset.</div><div><br></div><div>Be sure to simula=
te the block fully beforehand, but that should do it all for you.</div><div=
><br></div><div>Brian</div></div></div>

--00000000000033c5dc05aa6c8d9f--


--===============6356253442293364804==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6356253442293364804==--

