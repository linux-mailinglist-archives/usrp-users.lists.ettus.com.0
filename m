Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF681B11A5
	for <lists+usrp-users@lfdr.de>; Mon, 20 Apr 2020 18:34:46 +0200 (CEST)
Received: from [::1] (port=46182 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQZNa-00083W-4O; Mon, 20 Apr 2020 12:34:42 -0400
Received: from mout.gmx.net ([212.227.15.18]:57803)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jQZNW-0007yJ-4s
 for usrp-users@lists.ettus.com; Mon, 20 Apr 2020 12:34:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587400437;
 bh=1zu15ejzHOKHff7mfXQ5jL+bJmeBb/NAJF5/hEBQXZY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ILz3Fc3d0Xb8j+GrcqppPGh34P9w9WEMfC1iXoIpTQWr3WmT+AbYdDfX5mGRaeBd2
 wdxyNAacWjgJq2OIHEblvVcmVaONgBJrE+QQzbO4nE9f2M3glr72e3tGdDHCxnZ3g7
 vizLEII/i9KuThFGrscws8lQD18/n5Q4sVylcX2Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.101.50.39] ([87.101.50.39]) by web-mail.gmx.net
 (3c-app-gmx-bs34.server.lan [172.19.170.86]) (via HTTP); Mon, 20 Apr 2020
 18:33:57 +0200
MIME-Version: 1.0
Message-ID: <trinity-f7accbc4-db9b-4912-8e5c-f9c682236c93-1587400437026@3c-app-gmx-bs34>
To: usrp-users@lists.ettus.com
Date: Mon, 20 Apr 2020 18:33:57 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <mailman.47.1587398404.12990.usrp-users_lists.ettus.com@lists.ettus.com>
References: <mailman.47.1587398404.12990.usrp-users_lists.ettus.com@lists.ettus.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:DnLZI7QfaQPtpvsokE7IN6kU0BowTZ+owjbF0KpXmGL5IkL7k++BLmoHdZ1KkNNMhhT2B
 qGYzripJPTt6ra8i9Xe1/pBwIktW1a2DZd+iy3LlaTTCGyr6bSjQ74sF+cv3EgpwqbauaPN5sO93
 8QJgVnB9VrVjb9bpTOahn+H5nYdfHGH09eobgIku6QXFfAPYMpuDEIA6GHK4vCUTvBWOrgwQFhYG
 wIuiVUn1M7ptz2rSo5+SCUzRtnZv51mEKD+CLRFt9LLOG3o7oTuxJXehvRFngK4CBrv01KVWLnpZ
 SY=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ottpquG8BZI=:6hlTz8q+8ykkKF7F/Ho8Ks
 lisTvnQqjz70TKAfx23s8OuWJXsTl9PkDWhr3UnYtVaxQwgIMX0gMFlUGJ2niKZM8iuiy1vro
 WqBV4pqtjAGh6GIHvoJYnw038uQRE6MQ71IAgNUnSbAfyp3XvfSuwOfVGFRmPeTtQDnXzUIME
 B5rSpIoWIA0Sr42Zz/NT82gfT/Vixa2WOXu0lQh3s/Xh1niyiMWy/R3/KUUHxC8QTnBCicL2t
 y5Tz+924K73ZGMDOz5RrSCY7NodEIy9tt2ZhLMdSmlOqGkw2HY4WZC6n7ELz96qy+SkDb7y0B
 FU0VH1WoR/OtobMRCj81wEKWQIPg+9ysGn6Z6kflrXfN3cPJFkvCDQT8q7KZcpJ9T6u8VSGZI
 n4t910lTgAideJwVx4zmzEaTbQwqibNOAaWxuJsyoTLhg72sa+r+23hNo9uQR53Fx/af17xVO
 Pk784p1dXMArd7tDKz3RFeyh8xbKIJqJHOjLUHakuxpeeYRuMZi5QemgwS6sTvi9xMyAOCmSv
 5FWcqpcF8U2SjZSB5eKu6RK95J+pQUnFDvm1YjnXJwC3BUnj5qyKIT8+0s7k65gjPNX6qzlB2
 lTgAzfWU9advtAiEJu+Q6VAQ5FsnfHLUvOQuOcQWuZWUoKIahi5FrZE7Ew7eGocof01y0sp/3
 aDA8SH+9S+WNNi/QoZhT+tS0rM6bzVVttXoxyuDbx7lC7bwQ/LJd8lb5UlrTwXhEXiT8=
Subject: Re: [USRP-users] Questions about UBX-160 Noise Figure
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi Marcus,

> On 04/19/2020 09:26 PM, Lukas Haase via USRP-users wrote:
> > Hi,
> >
> > https://kb.ettus.com/UBX#Noise_Figure lists 2-3dB noise figure, UBX_Data_Sheet.pdf 2-4dB for UBX-160 (at 915 MHz).
> >
> > I connect a 50 Ohm load to RX and create a simple gnuradio application with USRP Source that calculates the RMS value of the sampled data (and plots the noise in time domain).
> > samp_rate = 5 MHz.
> > RX Gain = 0 dB.
> >
> > The value is 0.000113 RMS.
> > The time domain waveforms look a bit like quantization noise.
> >
> > I repeat the experiment, this time with RX Gain value set to 37.5dB.
> > The value is 0.000841 RMS.
> >
> > According to https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf, NF=2-3dB for 37.5dB gain and ~23dB for 0dB gain. The high gain value coincides with the values from the datasheet above.
> >
> > Question 1: Is the reason that for 0dB it looks like quantization noise, that the noise is smaller than LSB so I am effecively seeing the ADC noise?
> >
> > Question 2: Is the ADC quantixation noise the main reason for the difference in NF? (Note: I am familiar with Friis' equation)
> >
> > Question 3: The noise difference for both cases is 20*log10(0.000841/0.000113)=17.43dB. According to the measurement PDF it should be ca. 23-3=20dB. The difference is ~2-4dB. Is this just measurement uncertainty/part-to-part mismatch or is something wrong with my approach?
> >
> > Question 4: I repeat the last experiment by setting the "Ch0 Bandwidth [Hz]" to 0 (default), 5e6 and 1e6. I would expect that my rms value decreases by a factor of sqrt(2) for each halfing of bandwidth. However, the value always stays around 0.000841 RMS, regardless of the bandwidth value. Why?
> >
> > Question 5: According to theory, my captured signal is -174 + NF + 10*log10(BW) = -174+3+10*log10(5e6)=-104dBm. Is it correct that my 0.000841 corresponds to -104dBm input power? (If not, why not?). Or differently, -104dBm input power corresponds to 20*log10(0.000841 / 1) = -61.5dBFS ?
> >
> > Thank you,
> > Lukas
> >
> There'll be quantization noise, certainly.
>
> But RF systems with variable gain use variable attenuators, and that
> attenuation value is directly added to the noise figure of the stage that
>    follows it.
>
> Now the magnitude of this effect obviously depends on where that
> attenuator is placed in the gain chain.    A 40dB attenuator after a 20dB
>    gain means that the 40dB of hoise is only "washed out" by the 20dB of
> the previous stage(s).

Yes, that makes sense.

According to the schematics (UBX160 for 10MHz-1.5 GHz), there is one LNA (MGA-62563), one 6-bit attenuator and another gain (NBB-400). These three can be lumped together having a programmable gain of 0...37.5dB and a certain NF (as a function of gain).

It follows from Friis':

Ftot = 1 + (Flumped - 1) + (Fadc-1)/(Glumped)

I think what is in UBX-without-UHD-corrections.pdf would be Ftot (total measured noise figure).

With 0dB RX gain: Ftot=Flumped+Fadc-1. Now since the noise looks like quantization noise it looks like Ftot~Fadc=23dB. That would make sense (generally ADCs have huge noise figures).

With 37.5dB gain: Ftot = 1 + (Flumped - 1) + (Fadc-1)/(5600) ~ 1 + (Flumped - 1) = Flumped = 2dB. Since the noise looks less like quantization noise it seems that the actual thermal noise is amplified now beyond the ADC quantization noise and I am actually seeing thermal noise (as opposed to the 0dB case). Note that an ADC noise figure includes quantization noise!

My question was if this is correct or if I am missing something (Questions 1-3).

> It is entirely normal and conventional to quite noise figures at
> different gains settings precisely because of this architectural necessity.

Yes.

> Using a purely-analytic and numerical approach to determining the
> magnitude of an input signal, given and intervening chain of
>    RF bits and pieces, whose noise figure and gain have uncertainties,
> is what we call a "state of sin".  You MUST calibrate with a known
>    signal source over your expected run-time parameter space.  It's the
> only way.  It's the way laboratory instruments are routinely calibrated.
>    Using "datasheet analysis" which is basically what you're doing
> above, leads to results that cannot be trusted to any degree of certainty.

Unfortunately I do not have a signal generator at hand or anything with which I could create a known input signal.
But that again was not really my question. If number are off by a few dB *because* of uncertainty/part-to-part mismatch (as I wrote) that's OK.
My question is if my approach/understanding is right.

In particular I do not understand Question 4 (why does noise not reduce if I reduce bandwidth).

Furthermore, I'd be interested if Question 5 is conceptually correct.

Lukas







_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
