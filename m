Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E4EB0C0D2
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jul 2025 12:05:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CE89385820
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jul 2025 06:05:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753092300; bh=I2sIISgW2oOfXJhnnQFK65tz26kOjU3t+Acpw877TU4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MYvbBy+EcMwwlvEe2sieHHj8WNrYVsajgUPNlgLdlPL3/VzPdrPOMkC3aFu5iYdJt
	 MDHbZ+MpozYyx7An2PtQxgXgryJ4cJ6Em3LiEXhfvybhF6S8U8rDy+Lr0rn9OyzTvj
	 K59HJpkk6FyDGLBYcE7UIneKE2zmt+qYLBweVaTVrlNUroPl1c9mqB+Y/I2s99121h
	 rBEyHPmC0WNaX1A0bg5qiwKv0K5L+0veZGWCfncJUh94lHxru+eOmzGmbZjs8N9zIM
	 PF/MJQFeMhHXaFYaXQpdohtuI0JuIlRBH0ptVq5EULCdgzW2iXy1EzdnHYQwEzY4iz
	 N6GyHDRSce5zw==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 76E9F385389
	for <usrp-users@lists.ettus.com>; Mon, 21 Jul 2025 06:04:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="z8kMKDXm";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-612b67dcb89so5604840a12.1
        for <usrp-users@lists.ettus.com>; Mon, 21 Jul 2025 03:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1753092243; x=1753697043; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XhmpMaVWPg6cBwzdMgeMoBGwls3Gh/1uJdwDKW9aQfY=;
        b=z8kMKDXmY0XeHj757kDTD5BXfgQKAAASqdFTjStk32CJ1794KkZT7+uZAXOPaWB4pu
         Ooz6ZL3ZFZ6jwqezK1Kenlqvzit15gCozKW4pdeQ68NbCh3sF0srt4Nv3BHzQusTmef+
         /iYAggB4RYS+s/nmrluwAPSJjXZiSgLlnf1qnXVwAXxNtlTj4Ax/iqKAU3tojphJAtim
         3RL7gVouJO6chiK2G+IR+Zd+KXPGlvoS1IYh7x4GiVCQd60h32Sfwmi2IDlIm/dCoumR
         UzJgDdLOElAn+GJfa7K96ka+vf/FOtDcSqHZaow+eWspXAP+UQTydMNSp48R7wox/R8a
         6R6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753092243; x=1753697043;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XhmpMaVWPg6cBwzdMgeMoBGwls3Gh/1uJdwDKW9aQfY=;
        b=XmJ5V+yS7rjVS/VAps6fZHjTG1hjjgsK6w11xflFTTTvHOa+74ERi8YcaKHvtNzD07
         5Nx5HC6Pn9pEpLQiQdJuRqk0t3SlpMcx/HjF3kcW1Oi5UlgPoDLAgGxT0LXHi5jlJ1pO
         jG8r1BIBbk/zWkWDvCP9b6FoQX4CqZs2/8+WKCjdQQiscvsok9xwK9nFfkqzd9GXJ/7o
         g5F6Cp9nJU+ZZESOxef1ugJzHA8UhwRSHP8GB98j51uuk0Eg3sMWMHiY+FpSedI8LN0c
         Y8+gBV7MdVM73xIYYLiTw/BRUoLrImHdwftI7PNIYV1W2uh1DJ0ddTzlX3NR44nd6AGA
         wphQ==
X-Gm-Message-State: AOJu0YxMInHJFRyBmvMZE1VBSHpF8jASel4/oDwEyDSZ6+l3KvVLubh1
	bkkVuBIebNo3dh3grrjXOW1x2f+ApuZCmQoYQj81V4pw1CoLNtxBQqW016RvPpMBuFcnb0zQvKx
	EEAZuUnYpMwfwziO8WKtmdahUAlpfynUdjti2zsn6DeiXnHcVHEHVdo4=
X-Gm-Gg: ASbGncs4tEh2LeFNfH8LqCugF0YvMzjOTqOWQgX+7BStdScv1CAlU0o+XF9x5PhvKEL
	SaAzGr5yxw5SR1UbSIWP7DxEw/l1wK6qLgxmF6NElnYjy0WTvOYpU1ae3GeNmaxCiYI87/1Kkqz
	SdpRj2+/LPODPGbb789goAo4yoe+uFEoI8YfzEpu3U5zZg5a45U8NyxhZmPwFvG7S61pD4OWat/
	sAy4ENDSxXaG7VI9rjKd5ONXZ2HJYmSESdElVUIs4tjSCOG
X-Google-Smtp-Source: AGHT+IGIOxDp6OVw0hxxh1I7ogcBj3+bR0QPVhuXWeqw6rtSz0YRTwpAj3dBma6yZmjb7mtURijHu2W6R5jR3dVtfRw=
X-Received: by 2002:a17:907:d24:b0:ae2:9291:9226 with SMTP id
 a640c23a62f3a-ae9ce1e71b1mr1880210166b.59.1753092242944; Mon, 21 Jul 2025
 03:04:02 -0700 (PDT)
MIME-Version: 1.0
References: <ec4918a482a04faf966f5a25e876c7e4@tu-braunschweig.de>
 <CAFOi1A73qeod4Y_gKJNPL_Fu3zu+iYoF-g5EdevBqr0P8QgJkQ@mail.gmail.com> <3668e22dacf946158945bf6d27dd6a13@tu-braunschweig.de>
In-Reply-To: <3668e22dacf946158945bf6d27dd6a13@tu-braunschweig.de>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 21 Jul 2025 12:03:51 +0200
X-Gm-Features: Ac12FXz_UgDfMnFyjf__4eOWoGUiSDWOw6H_Cdo_k4xja_osVqqaoSwRTlice40
Message-ID: <CAFOi1A4XbGEc0oqM2OoSrY_HQGSt-WueusbZn=u1TeDAcEu52A@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: WA2CW5SSDW2XY2A3TIEO5FV4KJXXM6IF
X-Message-ID-Hash: WA2CW5SSDW2XY2A3TIEO5FV4KJXXM6IF
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows when recording samples with the X410 stand-alone
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WA2CW5SSDW2XY2A3TIEO5FV4KJXXM6IF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2287631572911452711=="

--===============2287631572911452711==
Content-Type: multipart/alternative; boundary="0000000000006652c3063a6d98dc"

--0000000000006652c3063a6d98dc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonas,

the purpose of the onboard CPU (sometimes also called APU) is for
configuration and management. A great use case is to launch UHD
applications that do not require high rates of streaming, e.g., because
they do processing inside the FPGA (using RFNoC).

Note that correlation, FFT, and turbo decoding are very compute-intensive
tasks to start with and would require a pretty beefy machine anyway. But
correlation and FFT are also good tasks to offload onto an FPGA, and the
X410 even has a hardened FEC unit (which we haven't, however, exposed in
RFNoC ourselves). FFT is something we have a block for.

--M

On Mon, Jul 21, 2025 at 10:07=E2=80=AFAM von Be=C3=B6czy, Jonas <
j.von-beoeczy@tu-braunschweig.de> wrote:

> Dear Martin,
>
> thank you very much for your prompt response.
>
> I wanted to clarify that recording IQ samples is just the initial step to
> determine if I can extract some data. My ultimate goal is to perform
> further signal processing on the processor, including tasks like FFT,
> correlation, and turbo decoding.
>
> If I understand correctly, it seems that these advanced processing tasks
> may not be feasible on the processor. Could you provide some insights int=
o
> the use cases for the stand-alone "mode"? This would help me better
> understand the limitations of the CPU.
>
> I appreciate your assistance and look forward to your guidance.
>
> Many thanks and best regards, :)
> Jonas
>
> ------------------------------
> *Von:* Martin Braun <martin.braun@ettus.com>
> *Gesendet:* Montag, 21. Juli 2025 08:40:03
> *Cc:* usrp-users@lists.ettus.com
> *Betreff:* [USRP-users] Re: Overflows when recording samples with the
> X410 stand-alone
>
> Hi Jonas,
>
> the onboard CPU (ARM64) is not for high loads, and like you suspect, is
> not powerful enough to handle high loads by itself.
>
> If you just want to capture samples at 15.36Msps, you can buffer them in
> the onboard DRAM, of which you have 4 GiB in the XG_200 image, which is >
> 60s of streaming data if my math is correct. We have an example for how t=
o
> do that, it used to be called replay_capture.py, and was recently renamed
> to rfnoc_rx_replay_samples_to_file.py (in host/examples/python).
>
> --M
>
> On Mon, Jul 21, 2025 at 8:37=E2=80=AFAM von Be=C3=B6czy, Jonas <
> j.von-beoeczy@tu-braunschweig.de> wrote:
>
>> Dear all,
>>
>> I cross-compiled a small C++ application that records some IQ samples
>> and runs stand-alone on the X410.
>> I want to use a sampling rate from 7.68e6 up to 15.36e6 samples per
>> second. The IQ samples are written into the /run directory.
>> Unfortunately I often get overflows, so that the system is not running
>> stable. The amount of overflows increases if I increase the sampling rat=
e.
>>
>> I also see overflows, when I run the example benchmark, e. g. like this:
>> /usr/lib/uhd/examples/benchmark_rate --rx_rate 15.36e6 --rx_delay 2
>> --priority high --rx_spb 64
>>
>> I tried to play around with rx_spb from 64 to 4096, since I thought that
>> the buffer size would make a difference. But they all showed the same
>> behavior (sometimes overflows, sometimes not).
>>
>>
>> Within htop I cannot see any other CPU consuming services.
>>
>> I was wondering if the processor is to weak to run stand-alone at these
>> data rates. Since I also wanted to run additional decoding on low
>> Modulation and Coding schemes on the processor this might be a problem f=
or
>> me.
>>
>> Could you please give me some information if the x410 should be able to
>> run the benchmark at such a sampling rate stand-alone?
>> For that specific case I unfortunately cannot find and results.
>>
>> Many thanks again and best regards!
>> Jonas
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000006652c3063a6d98dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jonas,</div><div><br></div><div>the purpose of the=
 onboard CPU (sometimes also called APU) is for configuration and managemen=
t. A great=C2=A0use case is to launch UHD applications that do not require =
high rates of streaming, e.g., because they do processing inside the FPGA (=
using RFNoC).</div><div><br></div><div>Note that correlation, FFT, and turb=
o decoding are very compute-intensive tasks to start with and would require=
 a pretty beefy machine anyway. But correlation and FFT are also good tasks=
 to offload onto an FPGA, and the X410 even has a hardened FEC unit (which =
we haven&#39;t, however, exposed in RFNoC ourselves). FFT is something we h=
ave a block for.</div><div><br></div><div>--M</div></div><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Jul 21, 2025 at 10:07=E2=80=AFAM von Be=C3=B6czy, Jonas &lt;<a href=
=3D"mailto:j.von-beoeczy@tu-braunschweig.de">j.von-beoeczy@tu-braunschweig.=
de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">



<div>

<div id=3D"m_-6000012318883667372divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p>Dear Martin,<br>
<br>
</p>
<p>
thank you very much for your prompt response.<br>
<br>
</p>
<p>
I wanted to clarify that recording IQ samples is just the initial step to d=
etermine if I can extract some data. My ultimate goal is to perform further=
 signal processing on the processor, including tasks like FFT, correlation,=
 and turbo decoding.<br>
<br>
</p>
<p>
If I understand correctly, it seems that these advanced processing tasks ma=
y not be feasible on the processor. Could you provide some insights into th=
e use cases for the stand-alone &quot;mode&quot;? This would help me better=
 understand the limitations of the CPU.<br>
<br>
</p>
<p>
I appreciate your assistance and look forward to your guidance.</p>
<span><br>
Many thanks and best regards, :)<br>
Jonas</span>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-6000012318883667372divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Von:</b> =
Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank=
">martin.braun@ettus.com</a>&gt;<br>
<b>Gesendet:</b> Montag, 21. Juli 2025 08:40:03<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Betreff:</b> [USRP-users] Re: Overflows when recording samples with the =
X410 stand-alone</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hi Jonas,</div>
<div><br>
</div>
<div>the onboard CPU (ARM64) is not for high loads, and like you suspect, i=
s not powerful=C2=A0enough to handle high loads by itself.</div>
<div><br>
</div>
<div>If you just want to capture samples at 15.36Msps, you can buffer them =
in the onboard DRAM, of which you have 4 GiB in the XG_200 image, which is =
&gt; 60s of streaming data if my math is correct. We have an example for ho=
w to do that, it used to be called
 replay_capture.py, and was recently renamed to rfnoc_rx_replay_samples_to_=
file.py (in host/examples/python).</div>
<div><br>
</div>
<div>--M</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 21, 2025 at 8:37=E2=80=AF=
AM von Be=C3=B6czy, Jonas &lt;<a href=3D"mailto:j.von-beoeczy@tu-braunschwe=
ig.de" target=3D"_blank">j.von-beoeczy@tu-braunschweig.de</a>&gt; wrote:<br=
>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div id=3D"m_-6000012318883667372m_6224468671066932622divtagdefaultwrapper"=
 style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,san=
s-serif" dir=3D"ltr">
<p><span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;=
Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont=
;font-size:15px">Dear all,<br>
<br>
I cross-compiled a small C++ application that records some IQ samples and=
=C2=A0runs stand-alone on the X410.=C2=A0<br>
I want to use a sampling rate from 7.68e6 up to 15.36e6 samples per second.=
=C2=A0<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&qu=
ot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiF=
ont;font-size:15px">The IQ samples are written into the /run
 directory.</span><br>
Unfortunately I often=C2=A0get overflows, so that the system is not running=
 stable. The amount of overflows increases if I increase the sampling rate.=
</span><br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quo=
t;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFo=
nt;font-size:15px">
<br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe=
 UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font=
-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">I also see overflows, when I run the example benchmark, e. g.=
 like this:</span><br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_=
normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,se=
rif,EmojiFont;font-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">/usr/lib/uhd/examples/benchmark_rate --rx_rate 15.36e6 --rx_d=
elay 2 --priority high --rx_spb 64<br>
</span><br>
I tried to play around with rx_spb from 64 to 4096, since I thought that th=
e buffer size would make a difference. But they all showed the same behavio=
r (sometimes overflows, sometimes not).</p>
<p><br>
</p>
<p>Within htop I cannot see any other CPU consuming services.<br>
<br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe=
 UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font=
-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">I was wondering if the processor is to weak to run stand-alon=
e at these data rates. Since I also wanted to run additional=C2=A0decoding
 on low Modulation and Coding schemes on the processor this might be a prob=
lem for me.</span><br>
<br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe=
 UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font=
-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">Could you please give me some information if the x410 should =
be able to run the benchmark at such a sampling=C2=A0rate stand-alone?<br>
For that specific case I unfortunately cannot find and results.</span><br s=
tyle=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe UI&q=
uot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font-size=
:15px">
<br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe=
 UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font=
-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">Many thanks again and best regards!</span><br style=3D"color:=
rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Seg=
oe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">Jonas</span><br>
</p>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--0000000000006652c3063a6d98dc--

--===============2287631572911452711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2287631572911452711==--
