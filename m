Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD6D17AA0C
	for <lists+usrp-users@lfdr.de>; Thu,  5 Mar 2020 17:03:14 +0100 (CET)
Received: from [::1] (port=52432 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9sxq-0001Nj-Fv; Thu, 05 Mar 2020 11:03:10 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:41123)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1j9sxn-0001HW-1n
 for usrp-users@lists.ettus.com; Thu, 05 Mar 2020 11:03:07 -0500
Received: by mail-oi1-f179.google.com with SMTP id i1so6448574oie.8
 for <usrp-users@lists.ettus.com>; Thu, 05 Mar 2020 08:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6GiQtnsUfIQzFQ6I6KTg1dtw5PsVuzcl/bM8BSfTUpY=;
 b=MtaS5F23+HGCE4bmDyin1HIKNkPphCqTiOJdd3c9h79b+2bNoHRjnKCNeGnYv/r5mn
 WsihKfz7diPLd4qsKc5orIvOpAmQHPojkNIjYdCC1txmqpG9X6YrqiifRmgUJX/o5OM7
 nqyvr00QQTUNPL3vwCcujJjnIYP1rY+efu9KtaYU60IeKIIJJFvO1YW+2WO/vDtHPHH5
 K49vRf50qYjjVrEwA5iYFt4KDmpvVRVVWlLaPAxXEM9cUS0rvQCN8cLk1JadbCgaK1Ty
 vVrdY+LsplhLNleTQdQ2dGpB0mvRBasrlfA/54ExPxGi2i301JEjSQcbzj481Zxu+/zs
 W4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6GiQtnsUfIQzFQ6I6KTg1dtw5PsVuzcl/bM8BSfTUpY=;
 b=gKA5/b3ycJa/ET4Qae/9ug0lvHn7qcjNM9mwV+C+KZCROkl57Izj6f6IwQuW9FBH/u
 bdFiQVtHaZtqBFiBMggr+rfi7tI+pnsGPebBgl1Rjxi71CA9jl2AOoBNX5NQDpvajACY
 FHXHj/GQdgAxJ8lrZVYSV8CMvvyQarItTn/irXb9cDdnODv0Ipfhk7YHzueC9hrVrDQc
 Ne+n1oyXVxVfD1JdE7AYxOE+zPsh/EHFrlJzoti2tKUXZCnGNnKQajGcFzcTURDZe0Ej
 jt1Y+GX5/FZ7B4yebUjMhlYXoHX8uJb0jW9UTy73RSU6YsalZbiM0cHsdQD7urb05l66
 wKpw==
X-Gm-Message-State: ANhLgQ0Ay6vzJEbu0B5v3DhxZpO6bw8QY9GfyIb7YKPTfbvrL98xQmul
 Xi0Df+GEVJW9pw706qvLDC1CBHsid308rq+vvAExWw==
X-Google-Smtp-Source: ADFU+vthQICwwpRhNCVMD/DLQ+0s3nsHGXn2HOZ6mGoyKREtRtvihhfvei+hNbQ9CrK9v7fCr52nxBzMTWy1p68FfLc=
X-Received: by 2002:a05:6808:4e:: with SMTP id
 v14mr6165202oic.70.1583424146333; 
 Thu, 05 Mar 2020 08:02:26 -0800 (PST)
MIME-Version: 1.0
References: <CANZpvRrDj5ZyvNmmeBoT1W6o76MezH7mePEPO2UQimtWoXWMGw@mail.gmail.com>
In-Reply-To: <CANZpvRrDj5ZyvNmmeBoT1W6o76MezH7mePEPO2UQimtWoXWMGw@mail.gmail.com>
Date: Thu, 5 Mar 2020 11:02:15 -0500
Message-ID: <CAB__hTTbtK61CWVCQ51aBLmQfncu36E=5KF3UBV5eU0iJDSaVw@mail.gmail.com>
To: =?UTF-8?Q?Piotr_Gaw=C5=82owicz?= <gawlowicz@tu-berlin.de>
Subject: Re: [USRP-users] MATLAB WLAN toolbox,
 CBX-120 daughterboard and COTS NIC
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0429228842213237588=="
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

--===============0429228842213237588==
Content-Type: multipart/alternative; boundary="000000000000c59ad105a01da9d7"

--000000000000c59ad105a01da9d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Piotr,
A couple of comments

   - regarding setting the dboard_clock_rate, is this needed?  I don't know
   what the value should be for the CBX so my suggestion would be to elimin=
ate
   this argument so that UHD uses default settings (unless you know this is=
 a
   good value)
   - regarding the "master_clock_rate" and the "rate", your command line
   shows an incompatibility of these 2 parameters.  The rate should be an
   integer division (preferably some multiple of 2 or even better 4) of the
   master_clock_rate - so perhaps 25e6 or 33.3e6.  Alternatively, it was
   previously possible to set the master_clock_rate to 184.32 MHz so that y=
ou
   could get a rate of 30.72 MHz, but I'm not sure if this is still support=
ed.
   Of course, this all depends on your sample rate assumption in your wavef=
orm
   file.

I'm not sure that either of these will help, but wanted to pass it along.
Rob

On Thu, Mar 5, 2020 at 5:32 AM Piotr Gaw=C5=82owicz via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> Recently, I have started playing with the Matlab WLAN toolbox. So far, I
> have managed to generate a waveform of 802.11n frame, transmit it using
> USPR x310 with UBX-160 daughterboard and successfully receive the frame
> using commercial-off-the-shelf (COTS) hardware - Intel Wireless-AC 9260
> NIC. The setup also works perfectly when using USRP B205mini.
>
> However, when I transmit the waveform using CBX-120 daughterboard (in the
> same x310 USRP), is not received by the COTS Intel NIC. I want to play wi=
th
> MIMO and I need to use CBX-120 daughterboard as we have 4 of them and onl=
y
> one UBX-160. I tested all of our 4 CBX-120 daughterboards with the same
> result.
>
> I use exactly the same command in case of CBX-120 and UBX-160 (both in
> same x310 USRP so I change subdev parameter), ie.:
> ./tx_samples_from_file
> --args=3D"type=3Dx300,addr=3D192.168.10.2,master_clock_rate=3D200e6,dboar=
d_clock_rate=3D50e6"
> --subdev A:0 --type=3Dshort --rate=3D30e6 --freq 2412e6 --gain=3D25 --rep=
eat
> --delay=3D1 --file 80211n_waveform.dat
>
> I have noticed that Connection Type is different in the case of CBX-120
> and UBX-160, i.e. IQ vs QI,  and generated waveforms accordingly in MATLA=
B,
> but without success.
>
> I connected USRP RF outputs to WiFi NIC using RF cable (with 45dB
> attenuation), but still, the same effect, i.e. UBX-160 works, CBX-120 doe=
s
> not work.
> In the case of UBX-160, the RSSI of the received frame equals -55dBm (as
> reported by NIC), so it is still a pretty good link.
>
> After running the calibration procedure (as described here
> https://files.ettus.com/manual/page_calibration.html), the CBX-120
> started working somehow, i.e. some frames are received but not really
> reliably (only few out of tens transmitted frames are received). In the
> case of UBX-160, all frames are received correctly (of course over the
> cable).
> The frame is generated with MCS 0 (BPSK, and code rate 1/2), so it is ver=
y
> robust and can be received with SNR of 3dB.
>
> I have tested also a couple of the UHD versions and hence FPGA images, bu=
t
> with the same result.
> Can someone explain what is the difference between CBX-120 and UBX-160
> daughterboards that cause the described behavior? Should I set some more
> parameters to overwrite default ones in the case of CBX-120 to achieve
> better results?
>
> Best Regards,
> Piotr Gawlowicz
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c59ad105a01da9d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Piotr,<div>A couple of comments</div><=
div><ul><li>regarding setting the dboard_clock_rate, is this needed?=C2=A0 =
I don&#39;t know what the value should be for the CBX so my suggestion woul=
d be to eliminate this argument so that UHD uses default settings (unless y=
ou know this is a good value)</li><li>regarding the &quot;master_clock_rate=
&quot; and the &quot;rate&quot;, your command line shows an incompatibility=
 of these 2 parameters.=C2=A0 The rate should be an integer division (prefe=
rably some multiple of 2 or even better 4) of the master_clock_rate - so pe=
rhaps 25e6 or 33.3e6.=C2=A0 Alternatively, it was previously possible to se=
t the master_clock_rate to 184.32 MHz so that you could get a rate of 30.72=
 MHz, but I&#39;m not sure if this is still supported. Of course, this all =
depends on your sample rate assumption in your waveform file.</li></ul><div=
>I&#39;m not sure that either of these will help, but wanted to pass it alo=
ng.</div></div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Mar 5, 2020 at 5:32 AM Piotr Gaw=C5=
=82owicz via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi, <br></div><div><br></div=
><div>Recently, I have started playing with the Matlab WLAN toolbox. So far=
, I have managed to generate a=20
waveform of 802.11n frame, transmit it using USPR x310 with UBX-160=20
daughterboard and successfully receive the frame using commercial-off-the-s=
helf (COTS) hardware - Intel Wireless-AC 9260 NIC.=20
The setup also works perfectly when using USRP B205mini. =C2=A0</div><br>Ho=
wever,
 when I transmit the waveform using CBX-120 daughterboard (in the same=20
x310 USRP), is not received by the COTS Intel NIC. I want to play with=20
MIMO and I need to use CBX-120 daughterboard as we have 4 of them and only =
one UBX-160. I tested all of our 4 CBX-120 daughterboards with the same res=
ult.<br><br>I use exactly the same command in case of CBX-120 and UBX-160 (=
both in same x310 USRP so I change subdev parameter), ie.:<br>./tx_samples_=
from_file --args=3D&quot;type=3Dx300,addr=3D192.168.10.2,master_clock_rate=
=3D200e6,dboard_clock_rate=3D50e6&quot;
 --subdev A:0 --type=3Dshort --rate=3D30e6 --freq 2412e6 --gain=3D25 --repe=
at=20
--delay=3D1 --file 80211n_waveform.dat<br><br>I have noticed that=20
Connection Type is different in the case of CBX-120 and UBX-160, i.e. IQ
 vs QI, =C2=A0and generated waveforms accordingly in MATLAB, but without=20
success.<br><br>I connected USRP RF outputs to WiFi NIC using RF cable=20
(with 45dB attenuation), but still, the same effect, i.e. UBX-160 works,
 CBX-120 does not work.<br>In the case of UBX-160, the RSSI of the received=
 frame equals -55dBm (as reported by NIC), so it is still a pretty good lin=
k.<br><br>After running the calibration procedure (as described here <a hre=
f=3D"https://files.ettus.com/manual/page_calibration.html" target=3D"_blank=
">https://files.ettus.com/manual/page_calibration.html</a>),
 the CBX-120 started working somehow, i.e. some frames are received but=20
not really reliably (only few out of tens transmitted frames are=20
received). In the case of UBX-160, all frames are received correctly (of
 course over the cable).<br>The frame is generated with MCS 0 (BPSK, and co=
de rate 1/2), so it is very robust and can be received with SNR of 3dB. <br=
><br>I have tested also a couple of the UHD versions and hence FPGA images,=
 but with the same result.<br>Can someone explain what is the difference be=
tween CBX-120 and UBX-160=20
daughterboards that cause the described behavior? Should I set some more pa=
rameters to overwrite default ones in the case of CBX-120 to achieve better=
 results? <br><br>Best Regards,<br>Piotr Gawlowicz</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000c59ad105a01da9d7--


--===============0429228842213237588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0429228842213237588==--

