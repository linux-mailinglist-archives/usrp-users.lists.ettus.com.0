Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 231322AC36E
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 19:13:56 +0100 (CET)
Received: from [::1] (port=56972 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcBfr-0001st-AZ; Mon, 09 Nov 2020 13:13:51 -0500
Received: from mail-oo1-f45.google.com ([209.85.161.45]:33364)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kcBfn-0001jY-6I
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 13:13:47 -0500
Received: by mail-oo1-f45.google.com with SMTP id f8so1915693oou.0
 for <usrp-users@lists.ettus.com>; Mon, 09 Nov 2020 10:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s5bdbBsCcqDD1Z8OjPQ1umieSM6ykQ82pgG19lBhw5k=;
 b=M+VEX23SO+hH7204DDici90oWAcTtIAVQwYTVeiMgN7s1O1e/lrsaJsKjRZIqlbpKD
 HGdXXy4NjwNHB5eIq9Sc3O4smTAxOiUsrOwABTJHe9+lVTUyZihamWSHd7hXlT+xW4xP
 5RVob+yA2wg1wMQDgfEs6dNKrLYw+lbPuFwyBBAfntlciVmkD2LhFSd/L+bkXuZhNKfs
 ABxvPmNhbvXwVDdy7AVdZJKfGi9sAGODVRW4N5wqCAzf8XmQAMmFYtSVcl8ukJLA7F6B
 C3AJeX+GsqENe7UH9wz/dxC0YnXFImbuDWp/lqAgN599zWohc04uNspVQ3UVXz8DJ5yA
 KHng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s5bdbBsCcqDD1Z8OjPQ1umieSM6ykQ82pgG19lBhw5k=;
 b=keRQtxFVqt7+rW7qyOUbYbRRP5S3oV2a1dAxAiNgOmBokH/3+T4kbJ3k0iT1wVZuZR
 qyDIwPn5qhQX6QVp2Cp5oN+Isp9NLS5CtJ2DPJtwamgdgdv6flSNpvuTm7NZl2c8tkCN
 dVVjeIomc+CUa7936tfJIVcvE8gKfvplKY0rWkVSEL1HLaogRQyuY8XLrTGJKpvzGcOr
 O0Ggipl/8cLvPKu4lqytCPceL0ShKATa+yAHrKvPJWd8/tiBU9iXdmaJzMJpttkiY9vB
 LqhIFi9MLmHnSWJEDNylmHVggbUxCDenN4xX9JlYyDDM17lnZRxk83Lye0HVUUJiB7t7
 Q79w==
X-Gm-Message-State: AOAM531UaCujQSktWrgay8Zj1/Tx3sUhvJNOudw9kIvMlYE6kJ6/ZQ1Q
 mDTxt/WyxMgmjGZZILOOYzt1JNpvaBvWjEefCr7AVw==
X-Google-Smtp-Source: ABdhPJyAtOo5vP3ctgMGtBFfvqaGFZf9k6E56u2Erhomfnd+RbClWBzal8NjQAR0UKgo9rmfzwGa1n5TFH1+cj5dFBY=
X-Received: by 2002:a4a:6b1a:: with SMTP id g26mr10850798ooc.13.1604945586359; 
 Mon, 09 Nov 2020 10:13:06 -0800 (PST)
MIME-Version: 1.0
References: <trinity-d956d742-6c11-4844-ae74-ae4878387766-1604619763606@3c-app-gmx-bs37>
 <5FA493B5.2040704@gmail.com>
In-Reply-To: <5FA493B5.2040704@gmail.com>
Date: Mon, 9 Nov 2020 13:12:55 -0500
Message-ID: <CAB__hTTOhVVVmiaw9-AzVKTYjM36h9FZotOn2hCtiABUm==1Uw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2157670470804890400=="
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

--===============2157670470804890400==
Content-Type: multipart/alternative; boundary="0000000000008f603905b3b0837f"

--0000000000008f603905b3b0837f
Content-Type: text/plain; charset="UTF-8"

Hi Lukas,
For the UBX, the gain values of 0-31.5 are probably where you want to
stay.  I have not found a reason to use the additional 6dB of digital
gain.  The gain values you set should be reasonably accurate in a relative
sense.  If you want to increase/decrease by 10 dB on your FFT display, then
changing the gain value by 10 dB should get you pretty close.  The example
you provided is essentially your "calibration".  You know that your input
is at -20dBm and you know the RMS value of your samples at the given
settings so the difference is the calibration value. If you then apply a
new signal with the same settings, you can measure the RMS value and you
will know the actual power level at the input.  This can change with
frequency - the curves in the performance data give you an idea how much
frequency dependency exists.
Rob

On Thu, Nov 5, 2020 at 7:08 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 11/05/2020 06:42 PM, Lukas Haase via USRP-users wrote:
> > Hi,
> >
> > I m studying:
> >
> >
> https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf
> >
> > How exactly is "Gain" in the "RX Figures" defined? Can it be related to
> the digital samples (e.g. in dBFS or RMS)?
> >
> > If, for example, I apply a exactly Pin=-20dBm, f=916MHz CW (calibrated
> via VNA) at the SMA input, I get -14.05dBFS (=rms value of IQ samples in
> 20*log10) when I calculate the RMS values of the samples.
> >
> > (Note: set_rx_gain(0) and I use 516MHz as center frequency to avoid DC
> correction).
> >
> >
> > Also, the statement on the gain values is not quite clear: "Gain range
> for both RX and TX is 0-31.5 (the maximum RX gain seen in the tests of
> 37.5dB is due to the additional 6dB provided by the ADC in the USRP
> motherboard on top of the UBX's maximum gain".
> >
> > How does this relate to the value which is set with set_rx_gain()?
> > Does that mean that a "Gain" value of 10 dB on the plot corresponds to
> set_rx_gain(4) ?
> >
> > What confuses me is that I *can* call set_rx_gain() with values of
> 0...37.5, and the output scales accordingly (i.e., the lowest value seems
> to be 0 and the highest 37.5; not 31.5).
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
>    amplifiers, then a mixer, which may have either gain or loss of a few
> dB.
>
> The only way you can relate the dB values in your FFT display to
> power-as-seen-at-the-RF-connector is using an external calibration source,
>    and you'll have to do this exercise over your entire expected
> operating-parameter space.  RF analog components will NOT provide exacty
>    the same gain/loss levels across their entire operating range.
>
> The additional gain-range setting is due to the presence of a *baseband*
> VGA on some motherboards ahead of the ADCs.  UHD will distribute
>    gain settings over the available gain-setting elements (in both the
> daughtercards and motherboard).  By default, it will distribute gain to
>    favor noise figure over linearity.  You can set individual gain
> elements if you prefer:
>
>
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7681b796deddd9231f022ffef11
>
>
> Now the names for the various gain elements will differ depending on the
> motherboard and daughterboard in use, and they can be
>    shown using "uhd_usrp_probe".
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008f603905b3b0837f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Lukas,<div>For the UBX, the gain value=
s of 0-31.5 are probably where you want to stay.=C2=A0 I have not found a r=
eason to use the additional 6dB of digital gain.=C2=A0 The gain values you =
set should be reasonably accurate in a relative sense.=C2=A0 If you want to=
 increase/decrease by 10 dB on your FFT display, then changing the gain val=
ue by 10 dB should get you pretty close.=C2=A0 The example you provided is =
essentially your &quot;calibration&quot;.=C2=A0 You know that your input is=
 at -20dBm and you know the RMS value of your samples at the given settings=
 so the difference is the calibration value. If you then apply a new signal=
 with the same settings, you can measure the RMS value and you will know th=
e actual power level at the input.=C2=A0 This can change with frequency - t=
he curves in the performance data give you an idea how much frequency depen=
dency exists.=C2=A0</div><div>Rob</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 5, 2020 at 7:08 PM Marcu=
s D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">On 11/05/2020 06:42 PM, Lukas Haase via USRP-use=
rs wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I m studying:<br>
&gt;<br>
&gt; <a href=3D"https://files.ettus.com/performance_data/ubx/UBX-without-UH=
D-corrections.pdf" rel=3D"noreferrer" target=3D"_blank">https://files.ettus=
.com/performance_data/ubx/UBX-without-UHD-corrections.pdf</a><br>
&gt;<br>
&gt; How exactly is &quot;Gain&quot; in the &quot;RX Figures&quot; defined?=
 Can it be related to the digital samples (e.g. in dBFS or RMS)?<br>
&gt;<br>
&gt; If, for example, I apply a exactly Pin=3D-20dBm, f=3D916MHz CW (calibr=
ated via VNA) at the SMA input, I get -14.05dBFS (=3Drms value of IQ sample=
s in 20*log10) when I calculate the RMS values of the samples.<br>
&gt;<br>
&gt; (Note: set_rx_gain(0) and I use 516MHz as center frequency to avoid DC=
 correction).<br>
&gt;<br>
&gt;<br>
&gt; Also, the statement on the gain values is not quite clear: &quot;Gain =
range for both RX and TX is 0-31.5 (the maximum RX gain seen in the tests o=
f 37.5dB is due to the additional 6dB provided by the ADC in the USRP mothe=
rboard on top of the UBX&#39;s maximum gain&quot;.<br>
&gt;<br>
&gt; How does this relate to the value which is set with set_rx_gain()?<br>
&gt; Does that mean that a &quot;Gain&quot; value of 10 dB on the plot corr=
esponds to set_rx_gain(4) ?<br>
&gt;<br>
&gt; What confuses me is that I *can* call set_rx_gain() with values of 0..=
.37.5, and the output scales accordingly (i.e., the lowest value seems to b=
e 0 and the highest 37.5; not 31.5).<br>
&gt;<br>
&gt;<br>
&gt; Would be great if someone could confirm.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Luke<br>
&gt;<br>
The precise implications of the gain-setting function are highly <br>
dependent on the particular daughterboard architecture.=C2=A0 When you set<=
br>
=C2=A0 =C2=A0the gain, you&#39;re typically (certainly true on UBX) setting=
 a step <br>
attenuator, which is usually sandwiched between a pair of low-noise<br>
=C2=A0 =C2=A0amplifiers, then a mixer, which may have either gain or loss o=
f a few dB.<br>
<br>
The only way you can relate the dB values in your FFT display to <br>
power-as-seen-at-the-RF-connector is using an external calibration source,<=
br>
=C2=A0 =C2=A0and you&#39;ll have to do this exercise over your entire expec=
ted <br>
operating-parameter space.=C2=A0 RF analog components will NOT provide exac=
ty<br>
=C2=A0 =C2=A0the same gain/loss levels across their entire operating range.=
<br>
<br>
The additional gain-range setting is due to the presence of a *baseband* <b=
r>
VGA on some motherboards ahead of the ADCs.=C2=A0 UHD will distribute<br>
=C2=A0 =C2=A0gain settings over the available gain-setting elements (in bot=
h the <br>
daughtercards and motherboard).=C2=A0 By default, it will distribute gain t=
o<br>
=C2=A0 =C2=A0favor noise figure over linearity.=C2=A0 You can set individua=
l gain <br>
elements if you prefer:<br>
<br>
<a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.h=
tml#ad602e7681b796deddd9231f022ffef11" rel=3D"noreferrer" target=3D"_blank"=
>https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e=
7681b796deddd9231f022ffef11</a><br>
<br>
<br>
Now the names for the various gain elements will differ depending on the <b=
r>
motherboard and daughterboard in use, and they can be<br>
=C2=A0 =C2=A0shown using &quot;uhd_usrp_probe&quot;.<br>
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
</blockquote></div></div>

--0000000000008f603905b3b0837f--


--===============2157670470804890400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2157670470804890400==--

