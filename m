Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F41F38B954
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2019 15:00:32 +0200 (CEST)
Received: from [::1] (port=44930 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxWPc-0002O6-SU; Tue, 13 Aug 2019 09:00:28 -0400
Received: from mail-vs1-f46.google.com ([209.85.217.46]:40794)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1hxWPZ-00020J-Hp
 for usrp-users@lists.ettus.com; Tue, 13 Aug 2019 09:00:25 -0400
Received: by mail-vs1-f46.google.com with SMTP id i128so3062607vsc.7
 for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2019 06:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fc5l/N6CXO0XLdT3AF5DUBnc1HFR0zsZhudq0lQDfA4=;
 b=FiFwB+r1YhkwQ/3N/8su7P3mDrGKq/lnYwsXAnqtlelZrwLbnSwpfv7TLJL15FX5bw
 WX0DfnXDgWzyp6CmRwBPUyUBGgMV3ETXJji3Kl+8azGwY9QM7bMhFTqHRO/9WtmXjQh4
 Sr4IKefRfb5g7v/ylAzsC1JLmRIig34O+5NnF5000YmqCLwdo131azVS2GCmP4BMaWtg
 o2jnGP4ntyvlPtoSSrgs0VRqlDzfmO8bCHHwN4Dw0obS86yIYa/MqYVoqHLUnNxIyPq8
 dhi/TlFk/Qc5C141EnBCyYk5XzsffgvwmN8rYuTaQufWcMQxd7J9hKQKSj2N5LnbUOpE
 HGYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fc5l/N6CXO0XLdT3AF5DUBnc1HFR0zsZhudq0lQDfA4=;
 b=jDh99R6gpW8lm7amgjfvvVlOuwOx/rHjwCfpf3WnG6PPGLZPJNRD0CPMUeyH0G91V+
 +JmdiMcXIt72k6z8NnxAHFjW+57HsYhRncXnZi5MqaBUgrioPPjEyRrOlHT8z0BDesFu
 JUa16lEec7dRBF2l8ELiRzHs9PpXXtvNhaGGoi1052Egqee+tTHn4UzN8QDHReIsDmZp
 5FstAjVaQJd92ttSccJxkqeMdSt/Fkl2KkQFYrQbYzKilNzqfNeSrl++Xv96BrKkLweU
 Wr60k7XimbgKE17M5wxXoIguBrNFZvXDElrB5kSB4zjJ3YUUOkDLcivEQS/EuLQi8caK
 u1eg==
X-Gm-Message-State: APjAAAXjcZzQrGqurGskFXP0rKBWkJja9Phuytz+y2cFZAKPht6Q3atU
 GmUji+pGu5ZFNqPprogFmMIDDP6En8DnwleyYT4=
X-Google-Smtp-Source: APXvYqxMFdcisfHFF4Qmu3ScbcOD/NF6nJ24s/aJ4a4huSlR0jRgEL7ylhpAPjnZ3pcrIJ3+T33WiyHMf4ChfwEgm/M=
X-Received: by 2002:a05:6102:3036:: with SMTP id
 v22mr10649021vsa.104.1565701184852; 
 Tue, 13 Aug 2019 05:59:44 -0700 (PDT)
MIME-Version: 1.0
References: <b5ec3d13a71a04254eee5d1387f84a1b.squirrel@webmail.tu-dortmund.de>
 <bb4832ac9b4a12168238d1aab5735ae5.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <bb4832ac9b4a12168238d1aab5735ae5.squirrel@webmail.tu-dortmund.de>
Date: Tue, 13 Aug 2019 08:59:33 -0400
Message-ID: <CADRnH233MaFFjgCKsQ6X0fm1-2V0KLeYEh0us7p3b_ENVqahjw@mail.gmail.com>
To: felix.greiwe@tu-dortmund.de
Subject: Re: [USRP-users] RFNoC Issue with 32 Bit Axi Stream | Error in
 Concat to 64 Bit | VHDL
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7490551553217260515=="
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

--===============7490551553217260515==
Content-Type: multipart/alternative; boundary="000000000000f2950a058fff3683"

--000000000000f2950a058fff3683
Content-Type: text/plain; charset="UTF-8"

Hi Felix,

Sounds like you've had a lot of progress since you wrote the first email;
well done!

Keep at it and send questions as needed. We're happy to help! Best regards,
EJ

On Tue, Aug 13, 2019 at 3:41 AM Felix Greiwe via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> i found myself not to be familiar with the Core Concept of interpreting
> Data in FPGA's as IQ-Data. After i partitioned my 32 Bit Input Data in 16
> Bit I and 16 Bit Q Data, and additionally edited my testbench similar to
> the addsub testbench of one of the pre-installed rfnoc-blocks, my
> testbench passed.
>
> In the following link I stumbled upon some help regarding the testbenches
> and other useful information which helped me a lot.
>
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-March/056076.html
>
> Best regards,
>
> Felix Greiwe
>
>
>
> > Hello together,
> >
> > recently i started RFNoC development using an USRP x310. After finishing
> > the RFNoC getting started Guide i created an OOT Module including VHDL.
> > First i simply forwarded the Input Data to the output which worked just
> > fine. After that i wanted to add a constant, for example 5_dec., to my
> > signal (32 Bit) and receive the sum as an output in the testbench. Here
> > the problems started:
> > Instead of receiving 5,6,7,8,9 for input of 0,1,2,3,4; i got
> >
> > 5+2^32+2^34
> > 6+2^32+2^34
> > 7+2^32+2^34 etc.
> >
> > I figured out, that i got the right results in 32 Bit, but that somewhere
> > in the axi_wrapper and/or the noc_shell my results gets concatted to 64
> > Bit, always using the first result (here the number 5) as the 32 msb's
> and
> > the actual sum results as the lsb's thus changing my signal.
> >
> > Wondering, i tested some more stuff like just setting the lowest bit of
> 32
> > Bit input Data Vector to one etc. and get the same problems of wrong
> > vector connections.
> >
> > Only when i changed the width parameter of the axi_wrapper to 64 Bit (and
> > also sending 64 Bit Data) i got the expected results.
> >
> > Now my question: Is this a bug or am i maybe using the axi_wrapper wrong?
> > I could not find an error comparing my code to the one of the
> > tutorial_gain block.
> >
> > Any help to understand this is appreciated.
> >
> > Sincerly
> >
> > Felix
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f2950a058fff3683
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Felix,<br><br><div>Sounds like you&#39;ve had a lot of =
progress since you wrote the first email; well done!=C2=A0</div><div><br></=
div><div>Keep at it and send questions as needed. We&#39;re happy to help! =
Best regards,</div><div>EJ</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 13, 2019 at 3:41 AM Felix Greiw=
e via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hi,<br>
<br>
i found myself not to be familiar with the Core Concept of interpreting<br>
Data in FPGA&#39;s as IQ-Data. After i partitioned my 32 Bit Input Data in =
16<br>
Bit I and 16 Bit Q Data, and additionally edited my testbench similar to<br=
>
the addsub testbench of one of the pre-installed rfnoc-blocks, my<br>
testbench passed.<br>
<br>
In the following link I stumbled upon some help regarding the testbenches<b=
r>
and other useful information which helped me a lot.<br>
<br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018=
-March/056076.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus=
.com/pipermail/usrp-users_lists.ettus.com/2018-March/056076.html</a><br>
<br>
Best regards,<br>
<br>
Felix Greiwe<br>
<br>
<br>
<br>
&gt; Hello together,<br>
&gt;<br>
&gt; recently i started RFNoC development using an USRP x310. After finishi=
ng<br>
&gt; the RFNoC getting started Guide i created an OOT Module including VHDL=
.<br>
&gt; First i simply forwarded the Input Data to the output which worked jus=
t<br>
&gt; fine. After that i wanted to add a constant, for example 5_dec., to my=
<br>
&gt; signal (32 Bit) and receive the sum as an output in the testbench. Her=
e<br>
&gt; the problems started:<br>
&gt; Instead of receiving 5,6,7,8,9 for input of 0,1,2,3,4; i got<br>
&gt;<br>
&gt; 5+2^32+2^34<br>
&gt; 6+2^32+2^34<br>
&gt; 7+2^32+2^34 etc.<br>
&gt;<br>
&gt; I figured out, that i got the right results in 32 Bit, but that somewh=
ere<br>
&gt; in the axi_wrapper and/or the noc_shell my results gets concatted to 6=
4<br>
&gt; Bit, always using the first result (here the number 5) as the 32 msb&#=
39;s and<br>
&gt; the actual sum results as the lsb&#39;s thus changing my signal.<br>
&gt;<br>
&gt; Wondering, i tested some more stuff like just setting the lowest bit o=
f 32<br>
&gt; Bit input Data Vector to one etc. and get the same problems of wrong<b=
r>
&gt; vector connections.<br>
&gt;<br>
&gt; Only when i changed the width parameter of the axi_wrapper to 64 Bit (=
and<br>
&gt; also sending 64 Bit Data) i got the expected results.<br>
&gt;<br>
&gt; Now my question: Is this a bug or am i maybe using the axi_wrapper wro=
ng?<br>
&gt; I could not find an error comparing my code to the one of the<br>
&gt; tutorial_gain block.<br>
&gt;<br>
&gt; Any help to understand this is appreciated.<br>
&gt;<br>
&gt; Sincerly<br>
&gt;<br>
&gt; Felix<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
<br>
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

--000000000000f2950a058fff3683--


--===============7490551553217260515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7490551553217260515==--

