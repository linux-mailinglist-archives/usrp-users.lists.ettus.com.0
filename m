Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C059181CE1
	for <lists+usrp-users@lfdr.de>; Wed, 11 Mar 2020 16:52:08 +0100 (CET)
Received: from [::1] (port=47104 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jC3eQ-0008CU-U9; Wed, 11 Mar 2020 11:52:06 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:43354)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <varban.metodiev@gmail.com>)
 id 1jC3eM-00085A-KC
 for usrp-users@lists.ettus.com; Wed, 11 Mar 2020 11:52:02 -0400
Received: by mail-ot1-f41.google.com with SMTP id a6so2447704otb.10
 for <usrp-users@lists.ettus.com>; Wed, 11 Mar 2020 08:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KfhDuDN4o3haYyP+x7BZAnWHBahmfaLeep/0jpG9EFU=;
 b=Lx8a8Ds4KYYNMcOdRjgg9E23oYOh8SabKQmWjsJD47TuFL9mLCjWiczv6klhGHQ1/z
 Iu9TzWXsTtKnacpOGmcz+hxVgcyot/aNfatUq8cc+yVcN7A5KJyomJrzaWcGo/71b8Ax
 ojfOXIPMI49RexKloYBtO5V0uPN/2ocWjkcyBAho8FID/Hj4xvnVLDrlwdjJydCrdf9O
 +tmhfQ0B2MjZJ53LlaWhoqdP3Y2Q7x+zbVIxS2HOdsFpN8TJY0OC+0fxIryVI6qR4hYq
 XecSb254+WUMytHSzpkBJaI/WV+K5GzA8n7gE9OdXJxviyn5euwC0/DY99BjdzQ/6abE
 NV2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KfhDuDN4o3haYyP+x7BZAnWHBahmfaLeep/0jpG9EFU=;
 b=o3VfzU9S7Y8qZv1Hjx/7VRVbpuNFMYKZ13ZxYxu+tCrcHkhP0K2LxqlkysjPgulBi9
 MrSs6KG3dEGlZdYzMVcKcyxfAhzAQVgZRzuBcC06s1qygS5SLqpUUH6FLhWPE0XLegF0
 a1LFHbm4SxWlpdbp98Tgrle++Cyz41jhljcgmmdAJ1gfQYoWQkyIUD3Tgb4qIOdZaytL
 uLJkP6cUzez4sqMxG16aWDJ3mNozBfL3xK1VL5jnBdCViGICoeIlW4H5qqxIR31vjY0f
 iYbJLH3pQN3DH53jhO4BxoGEhMkFXddvHjQiO8LjKJ8feBdZd20rdvhLqXfHONjzZ3HC
 0IJw==
X-Gm-Message-State: ANhLgQ1jLtwGzVB1QpKCiBd94BZY4DGikYa9Jlnc249U4IW7vh4blgvq
 pWVyvEt6SvyHaP8AuMZ07xzgzcCfoWutIkD4Uf4=
X-Google-Smtp-Source: ADFU+vtladwunTtHodaQW3FxuO1cGBxFLzH9bsScVpnzzUZRHMJBSubxmUQ/9zyWIgMrZL33kdO1Dswoa3EIkKSBj5w=
X-Received: by 2002:a9d:6750:: with SMTP id w16mr2893823otm.33.1583941881639; 
 Wed, 11 Mar 2020 08:51:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAKA0MUgctBWSisjvyoP1LFBrNkS=p=KLOZxEDvGioMr8gsdj-w@mail.gmail.com>
 <DM3P110MB0460178FAAAE93EEF0BC7423A9FE0@DM3P110MB0460.NAMP110.PROD.OUTLOOK.COM>
 <CAKA0MUgaeDdCyyAd0h5-0PYaLhb5Q876Pmkoxuj1gDWCJD16kw@mail.gmail.com>
 <DM3P110MB0460CFC406E0D84B8DDD9259A9FF0@DM3P110MB0460.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <DM3P110MB0460CFC406E0D84B8DDD9259A9FF0@DM3P110MB0460.NAMP110.PROD.OUTLOOK.COM>
Date: Wed, 11 Mar 2020 17:51:09 +0200
Message-ID: <CAKA0MUgS0_+7_kRTkTpe7Me5mVxb6qyoaT3F=UcxEsvwqDDBcw@mail.gmail.com>
To: "Linnenkamp, Nicholas" <nlinnenkamp@perspectalabs.com>
Subject: Re: [USRP-users] [EXTERNAL] B205mini: Setting Q signal component to
 zero distorts the I component
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
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4878445189823062315=="
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

--===============4878445189823062315==
Content-Type: multipart/alternative; boundary="0000000000003335af05a0963511"

--0000000000003335af05a0963511
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nicholas,

I think I understand the concept much better now. Thank you for the
complete clarifications, really appreciate it!!!

Best,
Varban

On Tue, Mar 10, 2020 at 8:50 PM Linnenkamp, Nicholas <
nlinnenkamp@perspectalabs.com> wrote:

> V.
>
>
>
> I just want to point out that your original question indicated that you
> thought you were doing something not normal for I/Q modulation.  I=E2=80=
=99m
> pointing out that this is something known in I/Q Modulation and something
> everyone has to deal with.  It is very normal.  When communicating over t=
he
> link you would, estimate the clock drift, adjust, and then de-rotate your
> transmitted signal after transmitting a known sequence.
>
>
>
> The clocks are just crystal oscillators which measure the frequency after
> it is excited with energy.  The frequency can vary for many reasons such =
as
> impurities or temperature.  This causes the clocks to drift in relation t=
o
> each other.  We notionally set the clocks to 433Mhz (or some other
> frequency) but they can be 433000000 +/- a few Hz which is what  you are
> seeing in the captures.  The receiver clock is running slower/faster than
> the transmitter clock.
>
>
>
> One of the ways to reduce this problem is to discipline to a GPS clock.
> This makes the stability of your clock much higher but the clocks can sti=
ll
> drift, even if not as much before correction.
>
>
>
> A second way to remove the problem is to discipline the transmitter and
> receiver use the same clock source.  This will remove the problem but in
> the real world, we are always faced with clock drift.
>
>
>
> Looking at the schematics for the B205mini
>
>                 https://www.ettus.com/all-products/usrp-b205mini-i/
>
>
>
> It appears that there is a REF port which can accept a 10Mhz signal and
> use that to discipline the SDRs.
>
>
>
> I don=E2=80=99t have a B205mini but it should be fairly straightforward.
>
>
>
> 1.       Buy a clock source that sends out the *SAME* 10Mhz signal from
> at least 2 ports.
>
> 2.       Connect via SMA cables the REF port and the 10Mhz clock source.
>
> 3.       Start the B205minis with a command line argument asking them to
> use the external reference.
>
> 4.       Profit.
>
>
>
> Alternately, you can ignore all the advice above and just do it
> mathematically.  This is essentially what you were doing when you plotted
> the complex samples that you received.
>
>
>
>                 Real(Inphase) + Real(Quadrature) =3D Transmitted sine wav=
e
>
>
>
>
>
> Thanks,
> Nicholas
>
>
>
> *From:* Varban Metodiev
> *Sent:* Monday, March 09, 2020 2:01 PM
> *To:* Linnenkamp, Nicholas <nlinnenkamp@perspectalabs.com>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* Re: [EXTERNAL] [USRP-users] B205mini: Setting Q signal
> component to zero distorts the I component
>
>
>
> Hi Nicholas,
>
>
>
> Thanks a lot for your explanations! I tried to increase the sampling rate
> at the receiver - the sine changed itself again and I still have the  sam=
e
> amplitude differences (attached below).
>
> Another problem that I observed is that it works fine only at 433MHz. Whe=
n
> I tried to set 868MHz/915MHz it became even less readable. At 2.4GHz and
> 5GHz it was looked like noise...
>
>
>
> So...
>
> Try a few different scenarios, (locked clock, unlocked clock, under
> sampled, oversampled, etc.) and observe how it changes.
>
> ---> May you please tell me a bit more about those locked and unlocked
> clocks?
>
>
>
> Thanks again,
>
> Varban
>
>
>
>
>
> On Mon, Mar 9, 2020 at 9:16 AM Linnenkamp, Nicholas <
> nlinnenkamp@perspectalabs.com> wrote:
>
> V.
>
>
>
> I could be wrong=E2=80=A6
>
>
>
> It appears that you are under sampling on the receive USRP.  This is
> probably due to the transmitter and the receiver not sharing the same clo=
ck
> and the receiver is drifting (slower).  You can have the two USRPs share
> the same 10Mhz clock to remove this problem but it is present in every QA=
M
> communication system.  Distributed systems don=E2=80=99t have the benefit=
 of common
> clock even with GPS so it is something that everyone deals with eventuall=
y.
>
>
>
> This is a good picture of when you under sample and get aliasing.
>
>
>
>
> https://dsp.stackexchange.com/questions/31899/how-do-you-simultaneously-u=
ndersample-and-oversample
>
>
>
> This is one of the best treatments of QAM signals that I have ever read.
>
>
>
>
> https://mriquestions.com/uploads/3/4/5/7/34572113/quad_signals_tutorial-l=
yons.pdf
>
>
>
> The real part of the signal is getting shifted from the In Phase to the
> Quadrature and back again over time.  If you were to zero out the Q and
> plot the I you would get this aliasing.  If you were to zero out the I an=
d
> plot the Q, you would also get this aliasing.  If you add them together,
> the real parts make the whole sine wave.  It just shifts, like water, bac=
k
> and forth from the I and Q, periodically, directly proportional to the
> under sampling.
>
>
>
> Try a few different scenarios, (locked clock, unlocked clock, under
> sampled, oversampled, etc.) and observe how it changes.
>
>
>
> In QAM signals the first thing you need to do is estimate clock drift and
> then de-rotate your signal.  You do these things periodically so that you
> can track and properly sample the incoming signal.
>
>
>
> Best of luck!
>
>
> Thanks,
> Nicholas
>
>
>
>
>
> *From:* USRP-users *On Behalf Of *Varban Metodiev via USRP-users
> *Sent:* Monday, March 09, 2020 7:14 AM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] [USRP-users] B205mini: Setting Q signal component
> to zero distorts the I component
>
>
>
> Dear all,
>
>
>
> I have two B205mini devices. One of those is my transmitting side and the
> other one is the receiver. Both are connected via a cable (and an
> attenuator, of course).
>
>
>
> Here is what I execute on the receiver:
>
> *rx_samples_to_file --freq 433e6 --rate 2e6 --bw 1e6 --gain 0 --nsamps 0
> --spb 200*
>
>
>
> And on the transmitter:
>
> *tx_waveforms --rate 1e6 --freq 433e6 --ampl 0.6 --gain 70 --bw 1e6
> --wave-type SINE --wave-freq 10e3 --spb 100 --otw sc16*
>
>
>
> The results are being read in GNU Octave:
>
> *samples_file=3Dfopen('/home/vmetodiev/Development/SDR/uhd/host/build/exa=
mples/usrp_samples.dat',
> 'rb');*
> *data=3Dfread(samples_file, 'int16');*
>
>
>
> So... when both I/Q channels carry the sines that are generated by the
> wave_table function, the results looks fine - attachment "iq.png".
>
>
>
> However, I need to work only with the I channel and force the Q to
> *disappear*, that is why I added the following lines in the
> *tx_waveforms.cpp* code to zero it:
>
>
>
> // Zero the Q component
>
> for (size_t n =3D 0; n < buff.size(); n++) {
>
>         buff[n] =3D std::complex<float>( buff[n].real(), *0 *);
>
> }
>
>
>
> And the result is a strangely distorted I-component sine - attachment
> "i_only.png".
>
>
>
> May you please advise if it is possible to avoid this, because I am doing
> something a bit strange that is not related to the normal I/Q modulations=
?
>
>
>
> Thanks in advance,
>
> V.
>
>
>
>
>
>
>
>
>
>
>
>

--0000000000003335af05a0963511
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Nicholas,<div><br></div><div>I think I understand the c=
oncept much=C2=A0better now. Thank you for the complete clarifications, rea=
lly=C2=A0appreciate it!!!</div><div><br></div><div>Best,</div><div>Varban</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, Mar 10, 2020 at 8:50 PM Linnenkamp, Nicholas &lt;<a href=3D"mai=
lto:nlinnenkamp@perspectalabs.com">nlinnenkamp@perspectalabs.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_3708843772886288092WordSection1">
<p class=3D"MsoNormal">V.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I just want to point out that your original question=
 indicated that you thought you were doing something not normal for I/Q mod=
ulation.=C2=A0 I=E2=80=99m pointing out that this is something known in I/Q=
 Modulation and something everyone has to deal
 with.=C2=A0 It is very normal.=C2=A0 When communicating over the link you =
would, estimate the clock drift, adjust, and then de-rotate your transmitte=
d signal after transmitting a known sequence.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The clocks are just crystal oscillators which measur=
e the frequency after it is excited with energy.=C2=A0 The frequency can va=
ry for many reasons such as impurities or temperature.=C2=A0 This causes th=
e clocks to drift in relation to each other.=C2=A0
 We notionally set the clocks to 433Mhz (or some other frequency) but they =
can be 433000000 +/- a few Hz which is what=C2=A0 you are seeing in the cap=
tures.=C2=A0 The receiver clock is running slower/faster than the transmitt=
er clock.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">One of the ways to reduce this problem is to discipl=
ine to a GPS clock.=C2=A0 This makes the stability of your clock much highe=
r but the clocks can still drift, even if not as much before correction.<u>=
</u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">A second way to remove the problem is to discipline =
the transmitter and receiver use the same clock source.=C2=A0 This will rem=
ove the problem but in the real world, we are always faced with clock drift=
.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in">Looking at the schematic=
s for the B205mini<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a href=
=3D"https://www.ettus.com/all-products/usrp-b205mini-i/" target=3D"_blank">
https://www.ettus.com/all-products/usrp-b205mini-i/</a> <u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in">It appears that there is=
 a REF port which can accept a 10Mhz signal and use that to discipline the =
SDRs.<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in">I don=E2=80=99t have a B=
205mini but it should be fairly straightforward.
<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><u></u>=C2=A0<u></u></p>
<p class=3D"gmail-m_3708843772886288092MsoListParagraph" style=3D"margin-le=
ft:1in">
<u></u><span>1.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u>Buy a clock source that sends out the <b>SAME</b> 10Mh=
z signal from at least 2 ports.<u></u><u></u></p>
<p class=3D"gmail-m_3708843772886288092MsoListParagraph" style=3D"margin-le=
ft:1in">
<u></u><span>2.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u>Connect via SMA cables the REF port and the 10Mhz cloc=
k source.<u></u><u></u></p>
<p class=3D"gmail-m_3708843772886288092MsoListParagraph" style=3D"margin-le=
ft:1in">
<u></u><span>3.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u>Start the B205minis with a command line argument askin=
g them to use the external reference.<u></u><u></u></p>
<p class=3D"gmail-m_3708843772886288092MsoListParagraph" style=3D"margin-le=
ft:1in">
<u></u><span>4.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u>Profit.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Alternately, you can ignore all the advice above and=
 just do it mathematically.=C2=A0 This is essentially what you were doing w=
hen you plotted the complex samples that you received.=C2=A0 =C2=A0<u></u><=
u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Real(Inphase) + Real(Quadrature) =
=3D Transmitted sine wave<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<br>
Nicholas<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>From:</b> Varban Metodiev <br>
<b>Sent:</b> Monday, March 09, 2020 2:01 PM<br>
<b>To:</b> Linnenkamp, Nicholas &lt;<a href=3D"mailto:nlinnenkamp@perspecta=
labs.com" target=3D"_blank">nlinnenkamp@perspectalabs.com</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [EXTERNAL] [USRP-users] B205mini: Setting Q signal comp=
onent to zero distorts the I component<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi Nicholas,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks a lot for your explanations! I tried to incre=
ase the sampling rate at the receiver - the sine changed itself again and I=
 still have the=C2=A0 same amplitude differences (attached below).<u></u><u=
></u></p>
</div>
<div>
<p class=3D"MsoNormal">Another problem that I observed is that it works fin=
e only at 433MHz. When I tried to set 868MHz/915MHz it became even less rea=
dable. At 2.4GHz and 5GHz it was looked like noise...<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">So...<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Try a few different scenarios, (locked clock, unlock=
ed clock, under sampled, oversampled, etc.) and observe how it changes.=C2=
=A0
<u></u><u></u></p>
<p class=3D"MsoNormal">---&gt; May you please tell me a bit more about thos=
e locked and unlocked clocks?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks again,<u></u><u></u></p>
<p class=3D"MsoNormal">Varban<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Mar 9, 2020 at 9:16 AM Linnenkamp, Nicholas =
&lt;<a href=3D"mailto:nlinnenkamp@perspectalabs.com" target=3D"_blank">nlin=
nenkamp@perspectalabs.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal">V.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I could be wrong=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">It appears that you are under sampling on the receiv=
e USRP.=C2=A0 This is probably due to the transmitter and the receiver not =
sharing the same clock and the receiver is drifting (slower).=C2=A0
 You can have the two USRPs share the same 10Mhz clock to remove this probl=
em but it is present in every QAM communication system.=C2=A0 Distributed s=
ystems don=E2=80=99t have the benefit of common clock even with GPS so it i=
s something that everyone deals with eventually.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">This is a good picture of when you under sample and =
get aliasing.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:0.5in">
<a href=3D"https://dsp.stackexchange.com/questions/31899/how-do-you-simulta=
neously-undersample-and-oversample" target=3D"_blank">https://dsp.stackexch=
ange.com/questions/31899/how-do-you-simultaneously-undersample-and-oversamp=
le</a>
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">This is one of the best treatments of QAM signals th=
at I have ever read.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<a href=3D"https://mriquestions.com/uploads/3/4/5/7/34572113/quad_signals_t=
utorial-lyons.pdf" target=3D"_blank">
https://mriquestions.com/uploads/3/4/5/7/34572113/quad_signals_tutorial-lyo=
ns.pdf</a>
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">The real part of the signal is getting shifted from =
the In Phase to the Quadrature and back again over time.=C2=A0 If you were =
to zero out the Q and plot the I you would get this aliasing.=C2=A0
 If you were to zero out the I and plot the Q, you would also get this alia=
sing.=C2=A0 If you add them together, the real parts make the whole sine wa=
ve.=C2=A0 It just shifts, like water, back and forth from the I and Q, peri=
odically, directly proportional to the under
 sampling.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Try a few different scenarios, (locked clock, unlock=
ed clock, under sampled, oversampled, etc.) and observe how it changes.=C2=
=A0
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">In QAM signals the first thing you need to do is est=
imate clock drift and then de-rotate your signal.=C2=A0 You do these things=
 periodically so that you can track and properly sample
 the incoming signal.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Best of luck!<u></u><u></u></p>
<p class=3D"MsoNormal"><br>
Thanks,<br>
Nicholas<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><b>From:</b> USRP-users
<b>On Behalf Of </b>Varban Metodiev via USRP-users<br>
<b>Sent:</b> Monday, March 09, 2020 7:14 AM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] B205mini: Setting Q signal componen=
t to zero distorts the I component<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt">Dear all,</span><u></=
u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt">I have two B205mini d=
evices. One of those is my transmitting side and the other one is the recei=
ver. Both are connected via a cable (and an attenuator,
 of course).</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt">Here is what I execut=
e on the receiver:</span><u></u><u></u></p>
</div>
<div>
<p style=3D"margin:0in 0in 0.0001pt" id=3D"gmail-m_3708843772886288092gmail=
-m_4036690471419750234gmail-docs-internal-guid-13e55b55-7fff-fbb5-d6b5-dc50=
6c13c5d9">
<b><span style=3D"font-size:10pt;font-family:Arial,sans-serif;color:black">=
rx_samples_to_file --freq 433e6 --rate 2e6 --bw 1e6 --gain 0 --nsamps 0 --s=
pb 200</span></b><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt">=C2=A0<u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">And on the transmitter:</span><u></u><u><=
/u></p>
<p style=3D"margin:0in 0in 0.0001pt" id=3D"gmail-m_3708843772886288092gmail=
-m_4036690471419750234gmail-docs-internal-guid-f2481b34-7fff-5686-7914-e109=
bf4cda08">
<b><span style=3D"font-size:10pt;font-family:Arial,sans-serif;color:black">=
tx_waveforms --rate 1e6 --freq 433e6 --ampl 0.6 --gain 70 --bw 1e6 --wave-t=
ype SINE --wave-freq 10e3 --spb 100 --otw sc16</span></b><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt">=C2=A0<u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">The results are being read in GNU Octave:=
</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><b><span style=3D"font-size:10pt;font-=
family:Arial,sans-serif;color:black">samples_file=3Dfopen(&#39;/home/vmetod=
iev/Development/SDR/uhd/host/build/examples/usrp_samples.dat&#39;, &#39;rb&=
#39;);</span></b><span style=3D"font-size:10pt;font-family:Arial,sans-serif=
;color:black"><br>
<b>data=3Dfread(samples_file, &#39;int16&#39;);</b></span><u></u><u></u></p=
>
<p style=3D"margin:0in 0in 0.0001pt">=C2=A0<u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">So... when both I/Q channels carry the si=
nes that are generated by the wave_table function, the results looks fine -=
 attachment &quot;iq.png&quot;.</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt">=C2=A0<u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">However, I need to work only with the I c=
hannel and force the Q to *disappear*, that is why I added the following li=
nes in the
<b><i>tx_waveforms.cpp</i></b> code to zero it:</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt" id=3D"gmail-m_3708843772886288092gmail=
-m_4036690471419750234gmail-docs-internal-guid-16d03543-7fff-1f41-7e47-c20b=
665310ae">
=C2=A0<u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">// Zero the Q component</span><u></u><u><=
/u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">for (size_t n =3D 0; n &lt; buff.size(); =
n++) {</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 buff[n] =3D std::complex&lt;float&gt;( buff[n].real(),
<b>0 </b>);</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">}</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt">=C2=A0<u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">And the result is a strangely distorted I=
-component sine - attachment &quot;i_only.png&quot;.</span><u></u><u></u></=
p>
<p style=3D"margin:0in 0in 0.0001pt">=C2=A0<u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">May you please advise if it is possible t=
o avoid this, because I am doing something a bit strange that is not relate=
d to the normal I/Q modulations?</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt">=C2=A0<u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">Thanks in advance,</span><u></u><u></u></=
p>
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:black">V.</span><u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt">=C2=A0<u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt">=C2=A0<u></u><u></u></p>
<p style=3D"margin:0in 0in 0.0001pt">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--0000000000003335af05a0963511--


--===============4878445189823062315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4878445189823062315==--

