Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CE32AC8A1
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 23:30:50 +0100 (CET)
Received: from [::1] (port=58628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcFgT-00067W-Ja; Mon, 09 Nov 2020 17:30:45 -0500
Received: from mout-xforward.gmx.net ([82.165.159.41]:35757)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1kcFgP-000630-D4
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 17:30:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1604961000;
 bh=43mLiQGA4sT4Ka5udm8lxD3kHmlUQ+D1zq1IyjFql98=;
 h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
 b=gh2hsW3bBe8QAb+Ljp/tOX+SksmkSWLDi45Dbw8o+KWrrlvWWJ3f8YoHpZ/3H71WE
 EFrADBi+U74++RlAt38GKpyw6PXYJK4r5sVCwdBnmIxFXPZeGKfhkOt56iHHsgEuzW
 nBXiRVA/ava/MPoGeA1TEbPSVNC+IX3rPrBAfKew=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [176.113.74.228] ([176.113.74.228]) by web-mail.gmx.net
 (3c-app-gmx-bs24.server.lan [172.19.170.76]) (via HTTP); Mon, 9 Nov 2020
 23:29:59 +0100
MIME-Version: 1.0
Message-ID: <trinity-a6d773e5-0fa6-4a78-b74c-9466abc11433-1604960999939@3c-app-gmx-bs24>
To: usrp-users@lists.ettus.com
Date: Mon, 9 Nov 2020 23:29:59 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <mailman.51.1604682002.4255.usrp-users_lists.ettus.com@lists.ettus.com>
References: <mailman.51.1604682002.4255.usrp-users_lists.ettus.com@lists.ettus.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:nK6VOdVnY+FoL8m/io3WWHmIo6usNVqkt2zRLcedYocdKG0ew5euLxLGGCEDIVYpFvd1S
 MulcrRXW5Lzpx3Wa/tcLSl3p6C16bMljXA3RNT1cO4IXlbaHO5FLjnfA7awCk35psoz8imiPs622
 SsRetBaVAHY8aRNuvh+OtGWH5zy03/bwv2aO1x9EZZh0vpTJbK/poBfwGZ2WITv6WUVA7LsaZGTe
 aV/5jTDy+FSexxTYP6NNl/NVMaAmzHhtDtWti/69Mp+bEofSYb/NOAoWpLqU+E4EDzaqW0bf3dEb
 Qc=
X-Spam-Flag: YES
X-UI-Out-Filterresults: junk:10;V03:K0:x01rOhfP2+Q=:9eTnlfbt/E+eBizQfMblM0ip
 xOETO/1KAypK1f8AMO0AgiiPbKUosZ3NhE5THT+IhWCP5gnFDAIT8/Q8bJ7WXPYtGEirtRxdo
 K0v1sTjL1NqqzYghyH1JHyS0V7n6f+fh5gh57EuCrsNbxlmBTuGOy6IGsoGDznbCH2td9p57Q
 d3+mqSyZ3ddRr1kI78Sv+NReqZ2V4gZKS1HB++snBZKQ69y0pt1OHuCdVgCva9Y2fS/bsJBW2
 Tp0Ehu7Dguh72Z+85wh3+ThzCCvjXuU+bh6d9vOcfj+yNBfgETjMrE1+SUr6VpIhLmzsbZ0e/
 XhPVX9RF7UBg6W7NleNtDtVqiuNlV1FtmAmYbDPnJCFBqkvY0Cl9xZjzdJdmWRVkMqXnCcmXl
 TJwoq1usOWtU4HuxsjpPHgvQmhSAxbo6jygFEvwy51eE7bgS8omcubQJLhkxbhwp8PAE4pg6D
 St5UN104WnqPNxoJdVMkytofCxZZ8ANXA0gq/xfbkKCwJstTopK1i0QSZ67mVFHyCdj19o+zz
 N6jsM3vy+hO8dg3h8EkVPfzDTiOfcuWAzCYSzHpKns7OA4HJ7GeOGXeSqHGW3f7iTGKo/IX2G
 4glSso5F/LCgyrvziiyCwHBOjFw8PfLk
Subject: Re: [USRP-users] How exactly is "Receiver Gain" defined?
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

> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> On 11/05/2020 06:42 PM, Lukas Haase via USRP-users wrote:
> > Hi,
> >
> > I m studying:
> >
> > https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf
> >
> > How exactly is "Gain" in the "RX Figures" defined? Can it be related to the digital samples (e.g. in dBFS or RMS)?
> >
> > If, for example, I apply a exactly Pin=-20dBm, f=916MHz CW (calibrated via VNA) at the SMA input, I get -14.05dBFS (=rms value of IQ samples in 20*log10) when I calculate the RMS values of the samples.
> >
> > (Note: set_rx_gain(0) and I use 516MHz as center frequency to avoid DC correction).
> >
> >
> > Also, the statement on the gain values is not quite clear: "Gain range for both RX and TX is 0-31.5 (the maximum RX gain seen in the tests of 37.5dB is due to the additional 6dB provided by the ADC in the USRP motherboard on top of the UBX's maximum gain".
> >
> > How does this relate to the value which is set with set_rx_gain()?
> > Does that mean that a "Gain" value of 10 dB on the plot corresponds to set_rx_gain(4) ?
> >
> > What confuses me is that I *can* call set_rx_gain() with values of 0...37.5, and the output scales accordingly (i.e., the lowest value seems to be 0 and the highest 37.5; not 31.5).
> >
> >
> > Would be great if someone could confirm.
> >
> > Thanks,
> > Luke
> >
> The precise implications of the gain-setting function are highly
> dependent on the particular daughterboard architecture.  When you set
>    the gain, you're typically (certainly true on UBX) setting a step
> attenuator, which is usually sandwiched between a pair of low-noise
>    amplifiers, then a mixer, which may have either gain or loss of a few dB.
>
> The only way you can relate the dB values in your FFT display to
> power-as-seen-at-the-RF-connector is using an external calibration source,
>    and you'll have to do this exercise over your entire expected
> operating-parameter space.  RF analog components will NOT provide exacty
>    the same gain/loss levels across their entire operating range.

Yes, I am aware of that but my question related specifically to https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf because I want to sanity-check my measurements (and I want to know how much off I am compared to the figures).

Hence my question is how the "Gain" in the "RX Figure" in this document is defined. It's not written anywhere.

> The additional gain-range setting is due to the presence of a *baseband*
> VGA on some motherboards ahead of the ADCs.  UHD will distribute
>    gain settings over the available gain-setting elements (in both the
> daughtercards and motherboard).  By default, it will distribute gain to
>    favor noise figure over linearity.  You can set individual gain
> elements if you prefer:
>
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7681b796deddd9231f022ffef11
>
>
> Now the names for the various gain elements will differ depending on the
> motherboard and daughterboard in use, and they can be
>    shown using "uhd_usrp_probe".

Thank you, that I did not know.

For me the result is:

TX Frontend 0, RX Frontend 0: Gain range PGA0: 0.0 to 31.5 step 0.5 dB
RX Codec A, RX Codec B: Gain range digital: 0.0 to 6.0 step 0.5 dB
TX Codec A, TX Codec B: None

Is the "RX Codec" the "VGA on some motherboards ahead of the ADCs" you were referring to above?


A related question (of course, I studied the the schematic https://files.ettus.com/schematics/ubx/UBX-160_revE.pdf as well): For both TX and RX path the only programmable element are attenuators (HMC624LP4E, 6-bit).

That would fit nicely the "PGA0" from above: 0 to 31.5dB in 0.5dB steps are 64 steps (6 bit).

The other gain elements (TX: NBB-400, PHA-1+, RX: MGA-62563, NBB-400 are static).

Why would you painstakingly gain up a signal, just to attenuate it again? Why a programmable attenuator instead of a real programmable amplifier?
For the TX path I can somewhat see for simplicity ... but for RX path? The attenuator unnecessarily generates noise (the noise figure of a passive attenuator is identical to its attenuation).

Thanks,
Lukas




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
