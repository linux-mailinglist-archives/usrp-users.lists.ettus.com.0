Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D0114423F
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2020 17:35:29 +0100 (CET)
Received: from [::1] (port=35032 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itwUy-0006eD-3m; Tue, 21 Jan 2020 11:35:28 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:38697)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1itwUt-0006NR-FQ
 for usrp-users@lists.ettus.com; Tue, 21 Jan 2020 11:35:23 -0500
Received: by mail-lj1-f172.google.com with SMTP id w1so3484754ljh.5
 for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2020 08:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1rCTdXJ9/yXt+ST9RtgfWvmstgAhV+JY1zjD1lpanN0=;
 b=lZHXOHgW4EObeuzabIzj2q6f/33ba6FV5QJ7BIq4lduVNGzMcHDB1vvH/kxTc69sbj
 oWQiARfVbzXhCqNUdhPQNhsRpikVhYudDwqNSxReEhaNSgXBspdL469KCXhvN2eGhLIC
 c0Q1cx/NRi7Bid5OqzxUc2QcjcgWjZv5cuUuEduSb3Gz4+NA7MvZLVoTPSTf/RM1pi/F
 UhXAu0da7RNLsSQpL8daZFM7lcdeN9GK5uYF2KmjUSElzWcLCeZ2eRNIj1wriBwv7vjM
 XM+k3rDLc1Kgmnd0qs62TuVAAbgABc/NOeT/Wif4zaqYJF7AMvtR2BbhabnOS1DXPLfY
 EgQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1rCTdXJ9/yXt+ST9RtgfWvmstgAhV+JY1zjD1lpanN0=;
 b=qD9eQLtC6EJGoC52F/fWy0P+NJyf95WTDWczCWJ4km5EcTRl3Ohjg/UselRiGIW2N+
 dpud7aYW6EzqAsg+zxJLhbbWw84/tAiJekJgzfLsI887FX8BZ0KF+1PpH3YqdFRB8blY
 5qlGulzE+EPIr2RoGK/PdNvrlE/eZUU2kHf9goAAFZi4MvAB3fS8VbTrBEBonieIzPeU
 762E7KYzrfwlC5Hg6XBuJJbGrsW0MzBKhFtHPw51Rmc1cU9WVIMDX/TvbX5ZSrnyWQKU
 0y72L/a8yGoepQqlbtP5UsmsQiJczAMOkbkzx2Vs0i9duU+jknaH+/jYiiM4QpZEl6AU
 QNdg==
X-Gm-Message-State: APjAAAUk53LPpnmdm0B7lrcmYpnfiqVl1sZUsVWvMoPzicvD+0Ds01Rj
 +I/kxgPNJJ/oy1tVp3skklV6M+qVegZXoLTfx/C02eWq
X-Google-Smtp-Source: APXvYqxTiCnUDMqWkT7ESrUqAdeQFYGzzj461QM2ZrhWxpynMx0JPfv2ikU/ugnYVH0Q2jf5W7ydPfDWkRDqS0L9m2E=
X-Received: by 2002:a2e:81c7:: with SMTP id s7mr17293344ljg.3.1579624482067;
 Tue, 21 Jan 2020 08:34:42 -0800 (PST)
MIME-Version: 1.0
References: <20200114110743.34AAD1400E0@zmtaauth01.partage.renater.fr>
 <BN6PR19MB1635C290AC93638924D3755AA4340@BN6PR19MB1635.namprd19.prod.outlook.com>
 <CANf970ZmJ0PNwN2KdiXHifn3Nfn0Mr7SRTkfM6UuOKoQgcrhjw@mail.gmail.com>
 <20200121145408.E842E1400B6@zmtaauth01.partage.renater.fr>
In-Reply-To: <20200121145408.E842E1400B6@zmtaauth01.partage.renater.fr>
Date: Tue, 21 Jan 2020 10:34:30 -0600
Message-ID: <CANf970asQNV2frUbYM9dRgPFX880oMeXajOVehPb+EktXzYw+A@mail.gmail.com>
To: Thomas Harder <Thomas.Harder@oca.eu>
Subject: Re: [USRP-users] using GPIO output to trigger external RF switches
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7372496922796344105=="
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

--===============7372496922796344105==
Content-Type: multipart/related; boundary="00000000000021ff85059ca8fcfa"

--00000000000021ff85059ca8fcfa
Content-Type: multipart/alternative; boundary="00000000000021ff84059ca8fcf9"

--00000000000021ff84059ca8fcf9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thomas,

I believe I mistyped in my initial response to specify a TX rate change
rather than frequency change. It might be more clear if I include some
quick pseudocode describing what I'm talking about:

tune_time =3D usrp->get_time_now() + uhd::time_spect_t(0.1)     //Set a
> future time to execute commands based on the USRP's current sense of time
> set_command_time(tune_time)
> //Commands after this point will wait to execute until tune_time
> set_tx_freq(<HOP_FREQ>)
> //This will be executed at the command time
> set_gpio_attr(<HIGH>)
>   //This will be executed at the command time
> clear_command_time()
>        //Clear the command time, subsequent commands will execute ASAP wh=
en
> they make it to the radio
> sleep(.01)
>                   //Sleep for some arbitrary time. This will roughly
> determine GPIO pulse width
> set_gpio_attr(<LOW>)
>         //Return GPIO state to low. This will happen as soon as the radio
> gets it, but you could also set it up as a timed command
>

This approach would not use ATR. It uses timed commands to synchronize your
TX freq change with the GPIO state change. There are almost certainly more
efficient ways to play with the time setting as to minimize the time
between hops, but you get the idea. Based on how you're hopping, you might
benefit from changing the tuning policy so that you only change frequency
in DSP, rather than retuning the LO:

https://files.ettus.com/manual/structuhd_1_1tune__request__t.html

Sam Reiter


On Tue, Jan 21, 2020 at 8:54 AM Thomas Harder <Thomas.Harder@oca.eu> wrote:

> Thank you Jeff and Sam,
>
> I found now also the gpio.cpp example. Really helpful to get familiar wit=
h
> GPIO.
>
>
>
> >> To accomplish what you're talking about, I think you'd just need to us=
e
> timed commands >>on both set_tx_rate() and set_gpio_attr(). If these are
> set to execute simultaneously, the >>GPIO line you set will go high on th=
e
> same clock cycle as the LO retune.
>
>
>
> In fact in my code which is based on the =E2=80=9Ctx_samples_from_file=E2=
=80=9D example I
> start transmitting my data in the file in the future with tx_metadata_t
> time specification and with timed commands I set set_gpio_attr() to the
> same point in future.
>
> But this gives me just 1 output pulse in GPIO what is not sufficient for
> my application.
>
>
>
> I am transmitting  in continuous mode (a fixed modulation in a while loop=
)
> and my center frequency stays fix during the whole transmission whereas
> with my data in the file I am modulating the center frequency to discrete
> frequencies in the whole bandwidth of 160MHz. I measured a transition tim=
e
> of the usrp  of around 20ns between different frequencies in my modulatio=
n.
>
> *To be able to postprocess my RF signal I would like to have a pulse each
> time the tx-frequency is changing.*
>
>
>
> As the ATR is just showing if the usrp is transmitting, receiving or idle
> it is not really helpful
>
> And putting set_gpio_attr() in the while loop for my continuous
> transmission is slowing down the streaming and causes underruns.
>
>
>
> Do you think of any other solution to get a pulse each time the
> transmission frequency of the USRP is changing?
>
>
>
> Thomas
>
>
>
> *From: *Sam Reiter <sam.reiter@ettus.com>
> *Sent: *Tuesday, January 14, 2020 6:44 PM
> *To: *Jeff S <e070832@hotmail.com>
> *Cc: *usrp-users@lists.ettus.com; Thomas Harder <Thomas.Harder@oca.eu>
> *Subject: *Re: [USRP-users] using GPIO output to trigger external RF
> switches
>
>
>
> Thomas,
>
>
>
> To accomplish what you're talking about, I think you'd just need to use
> timed commands on both set_tx_rate() and set_gpio_attr(). If these are se=
t
> to execute simultaneously, the GPIO line you set will go high on the same
> clock cycle as the LO retune.
>
>
>
> Sam
>
>
>
>
>
> On Tue, Jan 14, 2020 at 5:59 AM Jeff S via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Thomas,
>
>
>
> I am looking at GPIO right now as well.  As to your question #2 on
> examples, I compiled and am able to run the example I found in the UHD
> software:
>
>
>
> uhd/host/examples/gpio.cpp
>
>
>
> I am able to set individual data lines to experiment with (and eventually
> use as a roadmap for my development) using commands like:
>
>
>
> ./gpio --dwell 0 --bitbang --ddr 0x00ff --out 0x0055
>
>
>
> which I verified works using a logic analyzer.  I eventually want to try
> to create a keying loop, but that may take some FPGA control (?).
>
>
>
> Jeff
>
>
>
>
>
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Thomas Harder via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Tuesday, January 14, 2020 5:07 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] using GPIO output to trigger external RF switches
>
>
>
> Hi,
>
> I am continuously transmitting a waveform with several RF with 200MSPS
> with my USRP X310 (modified code on the basis of =E2=80=9Ctx_samples_from=
_file.cpp=E2=80=9D
> with a waveform in a .dat file). I would like to get a trigger signal fro=
m
> the USRP when it is changing the tx- frequency which I set in my .dat fil=
e.
>
> Could the GPIO deliver this trigger without changing the image?
>
> I am using the SRAM image with UHD 3.14.1
>
>
>
> A second question is concerning the GPIO example on
> https://files.ettus.com/manual/page_gpio_api.html.
>
> I copied and paced it in the =E2=80=9Ctx_waveforms=E2=80=9D example just =
changing the usrp
> device handle to =E2=80=9Cusrp=E2=80=9D but when I compiled it and starte=
d tx, I couldn=E2=80=99t
> measure any tension on PIN 4 and 6 as defined in the example. Are there
> more examples how to program the GPIO?
>
> Thank you,
>
> Thomas
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>

--00000000000021ff84059ca8fcf9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thomas,</div><div><br></div><div>I believe I mistyped=
 in my initial response to specify a TX rate change rather than frequency c=
hange. It might be more clear if I include some quick pseudocode describing=
 what I&#39;m talking about:</div><div><br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div>tune_time =3D usrp-&gt;get_time_now() + uhd::t=
ime_spect_t(0.1)=C2=A0=C2=A0=C2=A0=C2=A0 //Set a future time to execute com=
mands based on the USRP&#39;s current sense of time<br></div><div>set_comma=
nd_time(tune_time)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 //Commands after this point will wait to execute until tune_ti=
me<br>set_tx_freq(&lt;HOP_FREQ&gt;)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 //This will be=
 executed at the command time<br></div><div>set_gpio_attr(&lt;HIGH&gt;)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 //This wil=
l be executed at the command time<br></div><div>clear_command_time()=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 //Clear the command time, subsequent =
commands will execute ASAP when they make it to the radio<br></div><div>sle=
ep(.01) =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 //Sleep for some arbitrary t=
ime. This will roughly determine GPIO pulse width<br></div><div>set_gpio_at=
tr(&lt;LOW&gt;)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //Return GPIO stat=
e to low. This will happen as soon as the radio gets it, but you could also=
 set it up as a timed command<br></div></blockquote><div><br></div><div>Thi=
s approach would not use ATR. It uses timed commands to synchronize your TX=
 freq change with the GPIO state change. There are almost certainly more ef=
ficient ways to play with the time setting as to minimize the time between =
hops, but you get the idea. Based on how you&#39;re hopping, you might bene=
fit from changing the tuning policy so that you only change frequency in DS=
P, rather than retuning the LO:</div><div><br></div><div><a href=3D"https:/=
/files.ettus.com/manual/structuhd_1_1tune__request__t.html">https://files.e=
ttus.com/manual/structuhd_1_1tune__request__t.html</a></div><div><br></div>=
<div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter<br></div></d=
iv></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Tue, Jan 21, 2020 at 8:54 AM Thomas Harde=
r &lt;<a href=3D"mailto:Thomas.Harder@oca.eu">Thomas.Harder@oca.eu</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=
=3D"EN-US"><div class=3D"gmail-m_5606250065371862721WordSection1"><p class=
=3D"MsoNormal">Thank you Jeff and Sam,</p><p class=3D"MsoNormal">I found no=
w also the gpio.cpp example. Really helpful to get familiar with GPIO.</p><=
p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">&gt;&g=
t; To accomplish what you&#39;re talking about, I think you&#39;d just need=
 to use timed commands &gt;&gt;on both set_tx_rate() and set_gpio_attr(). I=
f these are set to execute simultaneously, the &gt;&gt;GPIO line you set wi=
ll go high on the same clock cycle as the LO retune.</p><p class=3D"MsoNorm=
al"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">In fact in my code which=
 is based on the =E2=80=9Ctx_samples_from_file=E2=80=9D example I start tra=
nsmitting my data in the file in the future with tx_metadata_t=C2=A0 time s=
pecification and with timed commands I set set_gpio_attr() to the same poin=
t in future.</p><p class=3D"MsoNormal">But this gives me just 1 output puls=
e in GPIO what is not sufficient for my application.</p><p class=3D"MsoNorm=
al"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">I am transmitting=C2=A0 =
in continuous mode (a fixed modulation in a while loop) and my center frequ=
ency stays fix during the whole transmission whereas with my data in the fi=
le I am modulating the center frequency to discrete frequencies in the whol=
e bandwidth of 160MHz. I measured a transition time of the usrp =C2=A0of ar=
ound 20ns between different frequencies in my modulation.</p><p class=3D"Ms=
oNormal"><b>To be able to postprocess my RF signal I would like to have a p=
ulse each time the tx-frequency is changing.<u></u><u></u></b></p><p class=
=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">As the ATR is=
 just showing if the usrp is transmitting, receiving or idle it is not real=
ly helpful</p><p class=3D"MsoNormal">And putting set_gpio_attr() in the whi=
le loop for my continuous transmission is slowing down the streaming and ca=
uses underruns.</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=
=3D"MsoNormal">Do you think of any other solution to get a pulse each time =
the transmission frequency of the USRP is changing?</p><p class=3D"MsoNorma=
l"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Thomas</p><p class=3D"Mso=
Normal"><u></u>=C2=A0<u></u></p><div style=3D"border-color:rgb(225,225,225)=
 currentcolor currentcolor;border-style:solid none none;border-width:1pt me=
dium medium;padding:3pt 0in 0in"><p class=3D"MsoNormal" style=3D"border:med=
ium none;padding:0in"><b>From: </b><a href=3D"mailto:sam.reiter@ettus.com" =
target=3D"_blank">Sam Reiter</a><br><b>Sent: </b>Tuesday, January 14, 2020 =
6:44 PM<br><b>To: </b><a href=3D"mailto:e070832@hotmail.com" target=3D"_bla=
nk">Jeff S</a><br><b>Cc: </b><a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>; <a href=3D"mailto:Thomas.=
Harder@oca.eu" target=3D"_blank">Thomas Harder</a><br><b>Subject: </b>Re: [=
USRP-users] using GPIO output to trigger external RF switches</p></div><p c=
lass=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal"=
>Thomas,</p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div=
><div><p class=3D"MsoNormal">To accomplish what you&#39;re talking about, I=
 think you&#39;d just need to use timed commands on both set_tx_rate() and =
set_gpio_attr(). If these are set to execute simultaneously, the GPIO line =
you set will go high on the same clock cycle as the LO retune.</p></div><di=
v><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><div><div><div>=
<div><div><p class=3D"MsoNormal">Sam</p></div></div></div></div></div><p cl=
ass=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div><p class=3D"MsoNormal=
"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">On Tue, Jan 14, =
2020 at 5:59 AM Jeff S via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</p=
></div><blockquote style=3D"border-color:currentcolor currentcolor currentc=
olor rgb(204,204,204);border-style:none none none solid;border-width:medium=
 medium medium 1pt;padding:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt"><div><=
div><p class=3D"MsoNormal" style=3D"margin-left:4.8pt"><span style=3D"font-=
size:12pt;color:black">Thomas,<u></u><u></u></span></p></div><div><p class=
=3D"MsoNormal" style=3D"margin-left:4.8pt"><span style=3D"font-size:12pt;co=
lor:black"><u></u>=C2=A0<u></u></span></p></div><div><p class=3D"MsoNormal"=
 style=3D"margin-left:4.8pt"><span style=3D"font-size:12pt;color:black">I a=
m looking at GPIO right now as well.=C2=A0 As to your question #2 on exampl=
es, I compiled and am able to run the example I found in the UHD software:<=
u></u><u></u></span></p></div><div><p class=3D"MsoNormal" style=3D"margin-l=
eft:4.8pt"><span style=3D"font-size:12pt;color:black"><u></u>=C2=A0<u></u><=
/span></p></div><blockquote style=3D"margin-top:5pt;margin-bottom:5pt"><div=
><p class=3D"MsoNormal" style=3D"margin-left:40.8pt"><span style=3D"font-si=
ze:12pt;color:black">uhd/host/examples/gpio.cpp<u></u><u></u></span></p></d=
iv></blockquote><div><p class=3D"MsoNormal" style=3D"margin-left:4.8pt"><sp=
an style=3D"font-size:12pt;color:black"><u></u>=C2=A0<u></u></span></p></di=
v><div><p class=3D"MsoNormal" style=3D"margin-left:4.8pt"><span style=3D"fo=
nt-size:12pt;color:black">I am able to set individual data lines to experim=
ent with (and eventually use as a roadmap for my development) using command=
s like:<u></u><u></u></span></p></div><div><p class=3D"MsoNormal" style=3D"=
margin-left:4.8pt"><span style=3D"font-size:12pt;color:black"><u></u>=C2=A0=
<u></u></span></p></div><blockquote style=3D"margin-top:5pt;margin-bottom:5=
pt"><div><p class=3D"MsoNormal" style=3D"margin-left:40.8pt"><span style=3D=
"font-size:12pt;color:black">./gpio --dwell 0 --bitbang --ddr 0x00ff --out =
0x0055<u></u><u></u></span></p></div></blockquote><div><p class=3D"MsoNorma=
l" style=3D"margin-left:4.8pt"><span style=3D"font-size:12pt;color:black"><=
u></u>=C2=A0<u></u></span></p></div><div><p class=3D"MsoNormal" style=3D"ma=
rgin-left:4.8pt"><span style=3D"font-size:12pt;color:black">which I verifie=
d works using a logic analyzer.=C2=A0 I eventually want to try to create a =
keying loop, but that may take some FPGA control (?).<u></u><u></u></span><=
/p></div><div><p class=3D"MsoNormal" style=3D"margin-left:4.8pt"><span styl=
e=3D"font-size:12pt;color:black"><u></u>=C2=A0<u></u></span></p></div><div>=
<p class=3D"MsoNormal" style=3D"margin-left:4.8pt"><span style=3D"font-size=
:12pt;color:black">Jeff<u></u><u></u></span></p></div><div><p class=3D"MsoN=
ormal" style=3D"margin-left:4.8pt"><span style=3D"font-size:12pt;color:blac=
k"><u></u>=C2=A0<u></u></span></p></div><div id=3D"gmail-m_5606250065371862=
721gmail-m_1960093859765433781Signature"><div><p class=3D"MsoNormal" style=
=3D"margin-left:4.8pt"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=
=3D"margin-left:4.8pt"><img style=3D"width: 4.8888in; height: 0.0138in;" id=
=3D"gmail-m_5606250065371862721Horizontal_x0020_Line_x0020_1" src=3D"cid:16=
fc8d85cfadce4206e1" width=3D"469" height=3D"1" border=3D"0"></p><div id=3D"=
gmail-m_5606250065371862721gmail-m_1960093859765433781divRplyFwdMsg"><p cla=
ss=3D"MsoNormal" style=3D"margin-left:4.8pt"><b><span style=3D"color:black"=
>From:</span></b><span style=3D"color:black"> USRP-users &lt;<a href=3D"mai=
lto:usrp-users-bounces@lists.ettus.com" target=3D"_blank">usrp-users-bounce=
s@lists.ettus.com</a>&gt; on behalf of Thomas Harder via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a>&gt;<br><b>Sent:</b> Tuesday, January 14, 2020 5:07 AM<br><=
b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br><b>Subject:</b=
> [USRP-users] using GPIO output to trigger external RF switches</span> </p=
><div><p class=3D"MsoNormal" style=3D"margin-left:4.8pt">=C2=A0</p></div></=
div><div><div><p style=3D"margin:0in 0in 0.0001pt">Hi,</p><p style=3D"margi=
n:0in 0in 0.0001pt">I am continuously transmitting a waveform with several =
RF with 200MSPS with my USRP X310 (modified code on the basis of =E2=80=9Ct=
x_samples_from_file.cpp=E2=80=9D with a waveform in a .dat file). I would l=
ike to get a trigger signal from the USRP when it is changing the tx- frequ=
ency which I set in my .dat file. </p><p style=3D"margin:0in 0in 0.0001pt">=
Could the GPIO deliver this trigger without changing the image? </p><p styl=
e=3D"margin:0in 0in 0.0001pt">I am using the SRAM image with UHD 3.14.1</p>=
<p style=3D"margin:0in 0in 0.0001pt">=C2=A0</p><p style=3D"margin:0in 0in 0=
.0001pt">A second question is concerning the GPIO example on <a href=3D"htt=
ps://files.ettus.com/manual/page_gpio_api.html" target=3D"_blank">https://f=
iles.ettus.com/manual/page_gpio_api.html</a>.</p><p style=3D"margin:0in 0in=
 0.0001pt">I copied and paced it in the =E2=80=9Ctx_waveforms=E2=80=9D exam=
ple just changing the usrp device handle to =E2=80=9Cusrp=E2=80=9D but when=
 I compiled it and started tx, I couldn=E2=80=99t measure any tension on PI=
N 4 and 6 as defined in the example. Are there more examples how to program=
 the GPIO?</p><p style=3D"margin:0in 0in 0.0001pt">Thank you,</p><p style=
=3D"margin:0in 0in 0.0001pt">Thomas</p></div></div></div></div></div></bloc=
kquote></div><p class=3D"MsoNormal" style=3D"margin-left:4.8pt">___________=
____________________________________<br>USRP-users mailing list<br><a href=
=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.e=
ttus.com</a><br><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com</a></p><p class=3D"MsoNormal"><u></u>=C2=A0<u=
></u></p></div></div></blockquote></div>

--00000000000021ff84059ca8fcf9--
--00000000000021ff85059ca8fcfa
Content-Type: image/png; name="25C7523DB0D9401587F1AFD501FAFC0B.png"
Content-Disposition: inline; filename="25C7523DB0D9401587F1AFD501FAFC0B.png"
Content-Transfer-Encoding: base64
Content-ID: <16fc8d85cfadce4206e1>
X-Attachment-Id: 16fc8d85cfadce4206e1

iVBORw0KGgoAAAANSUhEUgAAAsAAAAACCAYAAABWkGp5AAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAlSURBVFhH7chBDQAACMQw/Js+EIAC6JJ+VlMA
AOCRdQIAwEGVBmC+esxRNQOcAAAAAElFTkSuQmCC
--00000000000021ff85059ca8fcfa--


--===============7372496922796344105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7372496922796344105==--

