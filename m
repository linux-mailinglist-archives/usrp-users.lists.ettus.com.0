Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4671B94CA
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2020 02:40:27 +0200 (CEST)
Received: from [::1] (port=56014 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jSrot-0008QZ-L7; Sun, 26 Apr 2020 20:40:23 -0400
Received: from mail-ed1-f47.google.com ([209.85.208.47]:40089)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ejkreinar@gmail.com>) id 1jSroq-0008LU-3Y
 for usrp-users@lists.ettus.com; Sun, 26 Apr 2020 20:40:20 -0400
Received: by mail-ed1-f47.google.com with SMTP id d16so12186440edq.7
 for <usrp-users@lists.ettus.com>; Sun, 26 Apr 2020 17:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VDaYMcdhIaoPqRvVHuWjWnBdRmVRpFBU5iTJiIidDqE=;
 b=e9IO9N9lWD31sL/SFDpdoqV9jGdYjShun5vZjpaACqUDapniBmbqy7bZB452vk0JAH
 cTsXleIqHEYOdx7RQcSc/k7ViXfLceJvfpU6diy7H4gUiDT1Qd7Uy7elYe8TD3scwJuS
 77hpYe7sBTao8HwjlLiBv2EzrWQhmna996TBgy/2Bm4eY/hooM1Swe+dJNeMqI90G/AN
 izxBHxy0boSxwH3QoqggroZV06mmQuDqP16TP1IuFXDwUlmtsnS9+2Sl2M9BOPFnNebV
 AthAnoGUna4p6ymi4XuqWpuNA9emXfVkZQMBKHSjNuAmhJJixhEkk1EsxRsjqJ3KEir8
 Serw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VDaYMcdhIaoPqRvVHuWjWnBdRmVRpFBU5iTJiIidDqE=;
 b=SqreCttjh4WwnFnhNi+JgSA5Xf2qYlQgtRylbwe5Y3UqJtGTLsLG0nG+vTUxySdwRO
 eQmrHvxovVkKbb8sHAPZ1ix4Iw78ezu1i/7yUDyNATcNrx41/cP/F4JHDVDv/1OWh+BX
 ZqaNx5FbJulUlpjpeLoP1WkfDFS2vEAqwtsRup0QHQ2oWXmZRz0f8uKM1PnO4vQ1wGbO
 Gc/Ux3ddRWkidTrr2ipa0HPkAnyHFJ5/koteUZaPxoIysxKnsxAcAl+hZ1vl7XfTb8Rp
 uJkuhFPAz1kGLMiieXWSlyKxsdJf6JWY/Z6Rdd35h8AEAFIscsUWC5q4vuAPUtpalPlC
 JFuA==
X-Gm-Message-State: AGi0PuY8nCp1U+StaA2aBG4TBwufthavOljNyH99VlskCvzGj7rrwGOh
 9aAeUOEZtyjuj/ohCxpl6rI7vhVWVvRo83vO7x4=
X-Google-Smtp-Source: APiQypIpwXas0XQtg5napZfhiFjq6D4b46AZkDd4RISB7Hof3xYY3JRKWrW4HvKVx7WWTpE/YiiLF1/VRxhub0yR8pI=
X-Received: by 2002:aa7:d2cd:: with SMTP id k13mr398375edr.116.1587947979084; 
 Sun, 26 Apr 2020 17:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
 <BM1PR01MB33488D7B9DC5AE9AF435234088D60@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81t1RpfgCAY24baDznFWJLM+i21eePoXObHiTAhqO27-FA@mail.gmail.com>
 <BM1PR01MB334874FD80DAE63A2212DC0288D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CADRnH22JnbOn46n7Qc4v+RXH4O+BU_WOaBUC=RuLZ1=Kr8z6Cw@mail.gmail.com>
 <BM1PR01MB33484E55A2AC021C9AB286CD88D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB33484E55A2AC021C9AB286CD88D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Date: Sun, 26 Apr 2020 20:39:27 -0400
Message-ID: <CADRnH22h_Z=-92c0yZdyiietMX06mvFai2uvSQG6Li7o_ZPnCQ@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Subject: Re: [USRP-users] Fractional downsampling in rfnoc
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8296913094764208815=="
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

--===============8296913094764208815==
Content-Type: multipart/alternative; boundary="00000000000037175f05a43af388"

--00000000000037175f05a43af388
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Snehasish,

A few thoughts...

> 25msps and tried dividing it into 16 channels. I should have returned
625kspsx2 sample rate each channel

Based on your screen shot I'm guessing you started with 10 Msps and used 16
channels to get 625 kHz channel spacing (with 1250 ksps per channel). Is
that correct?

> But you can see the snaphshots, if a tune into 955.4MHz and try to get a
channel on index 0 ie the center freq, it works well and I am able to
decode GSM Burst from it. But if I try to add index 2(which is 955.8MHz),
the amplitude in the spectrum falls and also I am not able to decode any
GSM burst

Is it correct that your "index 2" center frequency is targetting 400 kHz
offset from the center frequency? If so, I dont expect this would work.
Using a channel spacing of 625 kHz, the closest channel you could receive
next to 955.4 MHz would be 956.025 MHz. Based on your screenshot it
actually seems like the peak energy you're looking for may be lower than
the channel frequency by about 200 kHz?

This is one downside of the polyphase channelizer in this particular
implementation. The channel outputs are consistently spaced and cannot be
changed except by moving the sample rate, center frequency, or number of
channels.

EJ

On Fri, Apr 24, 2020 at 8:31 AM Snehasish Kar <snehasish.cse@live.com>
wrote:

> Hello EJ
>
> I tried using your channelizer. Its really a helpful module. The challeng=
e
> I faced when i tried using it with a input sample rate of 25msps and trie=
d
> dividing it into 16 channels. I should have returned 625kspsx2 sample rat=
e
> each channel. But you can see the snaphshots, if a tune into 955.4MHz and
> try to get a channel on index 0 ie the center freq, it works well and I a=
m
> able to decode GSM Burst from it. But if I try to add index 2(which is
> 955.8MHz), the amplitude in the spectrum falls and also I am not able to
> decode any GSM burst. The same happens when i tune 955.8MHz and try to ge=
t
> index  14(ie 955.4MHz), I don't see the spectrum, the same happens for 12=
8
> and 256 channel (input sample rate 50msps). Can you please let me know if=
 I
> am going wrong somewhere.   I have attached the snapshots and flow graph
> for your reference. My uhd version is UHD_3.14.0.0-0-unknown.
>
> Regards
> Snehasish
>
>
> ------------------------------
> *From:* EJ Kreinar <ejkreinar@gmail.com>
> *Sent:* Friday, April 24, 2020 4:22 PM
> *To:* Snehasish Kar <snehasish.cse@live.com>
> *Cc:* Jonathon Pendlum <jonathon.pendlum@ettus.com>;
> USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Fractional downsampling in rfnoc
>
> Hi Snehasish,
>
> Since you're already working with theseus-cores, I assume you've found th=
e
> rfnoc polyphase channelizer has channel downselection already integrated
> into rfnoc and gnuradio (brief write up about it here:
> https://www.theseus-cores.com/2019/12/17/rfnoc-deinterleaving-polyphase-c=
hannelizer/).
> I believe this worked with UHD-3.14 when I tested last December. Wonderin=
g
> if this works for you or if there's other updates you might need?
>
> EJ
>
> On Fri, Apr 24, 2020, 12:56 AM Snehasish Kar via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello Jonathon
>
> I tried building the fractional downsampler again and was successful to
> build it in this version of UHD: UHD 4.0.0.rfnoc-devel-409-gec9138eb. Als=
o
> there is a channelizer available at
> https://github.com/e33b1711/rfnoc-ppchan . But the problem with this
> channelizer is, it sends almost 25.6msps samples to the host. Also the
> number of packet it sends, creates a overflow in the host even with 10gig
> sfp cable. So what I am planning is to make a de-interleaver, which will =
be
> responsible for channel down-selection. Please let me know your thoughts =
on
> this.
>
> Can you please let me know how to set the packet size on any rfnoc block.
>
> Regards
> Snehasish
> ------------------------------
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Sunday, April 19, 2020 8:58 AM
> *To:* Snehasish Kar <snehasish.cse@live.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Fractional downsampling in rfnoc
>
> Hi Snehasish,
>
> I forgot about that error. I actually made an issue about it on their
> repo: https://github.com/SynchronousLabs/rfnoc-SynchronousLabs/issues/2.
> Unless they provide an EDIF or their source code, you can only use their
> code for simulation. Certainly a disappointing oversight on their part.
>
> Jonathon
>
> On Sat, Apr 18, 2020 at 6:21 PM Snehasish Kar <snehasish.cse@live.com>
> wrote:
>
> Hello Jonathon
>
> Tried building the fractional downsampler from synchronous labs and have
> encountered the following error:
> source file was generated for simulation and is not permitted as input to
> synthesis
> [/home/snehasish/rfnoc-SynchronousLabs/rfnoc/fpga-src/fract_dec_filter.vh=
d:241995]
>
> Can you please help me with it.
>
> Regards
> Snehasish
> ------------------------------
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Friday, April 17, 2020 9:22 PM
> *To:* Snehasish Kar <snehasish.cse@live.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Fractional downsampling in rfnoc
>
> Hello Snehasish,
>
> Unfortunately, the standard library of blocks does not have a Fractional
> Decimator. Your best bet is to try to use the one made by Synchronous Lab=
s
> a few years ago. Their code is on github here:
> https://github.com/SynchronousLabs/rfnoc-SynchronousLabs. Since it was
> built, RFNoC has had some changes that will need to be fixed, but I think
> this is your only option versus writing one from scratch.
>
> Jonathon
>
> On Thu, Apr 16, 2020 at 6:35 PM Snehasish Kar via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello
>
> I am trying to use the RFNOC based M/2 channelizer from
> https://github.com/theseus-cores/theseus-cores/releases/tag/v1.1.0 . I am
> trying to divide 25 MHz spectrum into 124 subchannels each of bandwidth
> 200KHz. I am capturing the signal at 200msps and I need to decimate it to
> 25.6msps(25MHz/128 channels). Please help me in understanding how this ca=
n
> be achieved using RFNoC, is there=E2=80=99s any block already defined for
> fractional downsampling.
>
> Thanks & Regards
> Snehasish
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--00000000000037175f05a43af388
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Snehasish,<br><br>A few thoughts...<br><br>&gt; 25msps =
and tried dividing it into 16 channels. I should have returned 625kspsx2 sa=
mple rate each channel<br><br>Based on your screen shot I&#39;m guessing yo=
u started with 10 Msps and used 16 channels to get 625 kHz channel spacing =
(with 1250 ksps per channel). Is that correct?<br><br>&gt; But you can see =
the snaphshots, if a tune into 955.4MHz and try to get a channel on index 0=
 ie the center freq, it works well and I am able to decode GSM Burst from i=
t. But if I try to add index 2(which is 955.8MHz), the amplitude in the spe=
ctrum falls and also I am not able to decode any GSM burst<br><br>Is it cor=
rect that your &quot;index 2&quot; center frequency is targetting 400 kHz o=
ffset from the center frequency? If so, I dont expect this would work. Usin=
g a channel spacing of 625 kHz, the closest channel you could receive next =
to 955.4 MHz would be 956.025 MHz. Based on your screenshot it actually see=
ms like the peak energy you&#39;re looking for may be lower than the channe=
l frequency by about 200 kHz?<br><div><br></div><div>This is one downside o=
f the polyphase channelizer in this particular implementation. The channel =
outputs are consistently=C2=A0spaced and cannot be changed except by moving=
 the sample rate, center frequency, or number of channels.=C2=A0</div><div>=
<br></div><div>EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Fri, Apr 24, 2020 at 8:31 AM Snehasish Kar &lt;<a=
 href=3D"mailto:snehasish.cse@live.com">snehasish.cse@live.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Hello EJ</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I tried using your channelizer. Its really a helpful module. The challenge =
I faced when i tried using it with a input sample rate of 25msps and tried =
dividing it into 16 channels. I should have returned 625kspsx2 sample rate =
each channel. But you can see the
 snaphshots, if a tune into 955.4MHz and try to get a channel on index 0 ie=
 the center freq, it works well and I am able to decode GSM Burst from it. =
But if I try to add index 2(which is 955.8MHz), the amplitude in the spectr=
um falls and also I am not able
 to decode any GSM burst. The same happens when i tune=C2=A0955.8MHz and tr=
y to get index=C2=A0 14(ie 955.4MHz), I don&#39;t see the spectrum, the sam=
e happens for 128 and 256 channel (input sample rate 50msps). Can you pleas=
e let me know if I am going wrong somewhere. =C2=A0
 I have attached the snapshots and flow graph for your reference. My uhd ve=
rsion is UHD_3.14.0.0-0-unknown.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Snehasish<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_6595891259048216248appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_6595891259048216248divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com" target=3D"_blan=
k">ejkreinar@gmail.com</a>&gt;<br>
<b>Sent:</b> Friday, April 24, 2020 4:22 PM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.co=
m" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;; <a href=3D"mailto:=
USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a=
> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Fractional downsampling in rfnoc</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">Hi Snehasish,
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Since you&#39;re already working with theseus-cores, I as=
sume you&#39;ve found the rfnoc polyphase channelizer has channel downselec=
tion already integrated into rfnoc and gnuradio (brief write up about it he=
re:=C2=A0<a href=3D"https://www.theseus-cores.com/2019/12/17/rfnoc-deinterl=
eaving-polyphase-channelizer/" target=3D"_blank">https://www.theseus-cores.=
com/2019/12/17/rfnoc-deinterleaving-polyphase-channelizer/</a>).
 I believe this worked with UHD-3.14 when I tested last December. Wondering=
 if this works for you or if there&#39;s other updates you might need?</div=
>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">EJ</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Fri, Apr 24, 2020, 12:56 AM Snehasish Kar via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Hello Jonathon <br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I tried building the fractional downsampler again and was successful to bui=
ld it in this version of UHD: UHD 4.0.0.rfnoc-devel-409-gec9138eb. Also the=
re is a channelizer available at
<a href=3D"https://github.com/e33b1711/rfnoc-ppchan" id=3D"gmail-m_65958912=
59048216248x_m_4601514971204269138LPlnk680611" rel=3D"noreferrer" target=3D=
"_blank">
https://github.com/e33b1711/rfnoc-ppchan</a><b> </b>. But the problem with =
this channelizer is, it sends almost 25.6msps samples to the host. Also the=
 number of packet it sends, creates a overflow in the host even with 10gig =
sfp cable. So what I am planning
 is to make a de-interleaver, which will be responsible for channel down-se=
lection. Please let me know your thoughts on this.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Can you please let me know how to set the packet size on any rfnoc block.</=
div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Snehasish<br>
</div>
<div id=3D"gmail-m_6595891259048216248x_m_4601514971204269138appendonsend">=
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_6595891259048216248x_m_4601514971204269138divRplyFwdMsg"=
 dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"=
font-size:11pt"><b>From:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonatho=
n.pendlum@ettus.com" rel=3D"noreferrer" target=3D"_blank">jonathon.pendlum@=
ettus.com</a>&gt;<br>
<b>Sent:</b> Sunday, April 19, 2020 8:58 AM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" rel=
=3D"noreferrer" target=3D"_blank">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer"=
 target=3D"_blank">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t;<br>
<b>Subject:</b> Re: [USRP-users] Fractional downsampling in rfnoc</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Snehasish,
<div><br>
</div>
<div>I forgot about that error. I actually made an issue about it on their =
repo:=C2=A0<a href=3D"https://github.com/SynchronousLabs/rfnoc-SynchronousL=
abs/issues/2" rel=3D"noreferrer" target=3D"_blank">https://github.com/Synch=
ronousLabs/rfnoc-SynchronousLabs/issues/2</a>.
 Unless they provide an EDIF or their source code, you can only use their c=
ode for simulation. Certainly a disappointing oversight on their part.</div=
>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Sat, Apr 18, 2020 at 6:21 PM Snehasish Kar &lt;<a href=
=3D"mailto:snehasish.cse@live.com" rel=3D"noreferrer" target=3D"_blank">sne=
hasish.cse@live.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Hello Jonathon <br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Tried building the fractional downsampler from synchronous labs and have en=
countered the following error:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<span>source file was generated for simulation and is not permitted as inpu=
t to synthesis [/home/snehasish/rfnoc-SynchronousLabs/rfnoc/fpga-src/fract_=
dec_filter.vhd:241995]</span></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Can you please help me with it.<br>
<span></span><span></span></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Snehasish<br>
</div>
<div id=3D"gmail-m_6595891259048216248x_m_4601514971204269138x_gmail-m_-353=
417754879076980appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_6595891259048216248x_m_4601514971204269138x_gmail-m_-353=
417754879076980divRplyFwdMsg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ett=
us.com" rel=3D"noreferrer" target=3D"_blank">jonathon.pendlum@ettus.com</a>=
&gt;<br>
<b>Sent:</b> Friday, April 17, 2020 9:22 PM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" rel=
=3D"noreferrer" target=3D"_blank">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer"=
 target=3D"_blank">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t;<br>
<b>Subject:</b> Re: [USRP-users] Fractional downsampling in rfnoc</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hello Snehasish,
<div><br>
</div>
<div>Unfortunately, the standard library of blocks does not have a Fraction=
al Decimator. Your best bet is to try to use the one made by Synchronous La=
bs a few years ago. Their code is on github here:=C2=A0<a href=3D"https://g=
ithub.com/SynchronousLabs/rfnoc-SynchronousLabs" rel=3D"noreferrer" target=
=3D"_blank">https://github.com/SynchronousLabs/rfnoc-SynchronousLabs</a>.
 Since it was built, RFNoC has had some changes that will need to be fixed,=
 but I think this is your only option versus writing one from scratch.</div=
>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Thu, Apr 16, 2020 at 6:35 PM Snehasish Kar via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello=C2=A0</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am trying to use the RFNOC based M/2 channelizer from=C2=
=A0<a href=3D"https://github.com/theseus-cores/theseus-cores/releases/tag/v=
1.1.0" rel=3D"noreferrer" target=3D"_blank">https://github.com/theseus-core=
s/theseus-cores/releases/tag/v1.1.0</a>=C2=A0. I am
 trying to divide 25 MHz spectrum into 124 subchannels each of bandwidth 20=
0KHz. I am capturing the signal at 200msps and I need to decimate it to 25.=
6msps(25MHz/128 channels).=C2=A0Please help me in understanding how this ca=
n be achieved using RFNoC, is there=E2=80=99s
 any block already defined for fractional downsampling.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks &amp; Regards=C2=A0</div>
<div dir=3D"ltr">Snehasish=C2=A0</div>
<div dir=3D"ltr"><br>
</div>
<div id=3D"gmail-m_6595891259048216248x_m_4601514971204269138x_gmail-m_-353=
417754879076980x_gmail-m_-7099343062042280710ms-outlook-mobile-signature">
Get <a href=3D"https://aka.ms/o0ukef" rel=3D"noreferrer" target=3D"_blank">=
Outlook for iOS</a></div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--00000000000037175f05a43af388--


--===============8296913094764208815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8296913094764208815==--

