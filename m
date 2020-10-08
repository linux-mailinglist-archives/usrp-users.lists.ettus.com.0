Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E013D287528
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 15:17:22 +0200 (CEST)
Received: from [::1] (port=48784 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQVnK-0002LE-R9; Thu, 08 Oct 2020 09:17:18 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:41640)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kQVnH-0002Gl-5j
 for usrp-users@lists.ettus.com; Thu, 08 Oct 2020 09:17:15 -0400
Received: by mail-oi1-f172.google.com with SMTP id q136so5053099oic.8
 for <usrp-users@lists.ettus.com>; Thu, 08 Oct 2020 06:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XtsyoXykN5gUxm51NbLbNwdjh7fa7R7o+gr6anVtTV8=;
 b=BySuBdyTDLmz9aniCPClE/ULvGXOfkO/mfAL4O2RQlrqwI43S7fa9MMWM90C6eV6SF
 HpkbJxFF9Aa70WniygXz9TCQWlK8avPNZJpRwDxc7xBwOv2g8A5XVecam5s/C6Ayzefl
 +0ZskJ2Afc242ciTGTRRDwkv0OTIVSo0UtLQkZz1Pz6D+xjsQum7riJA1BwF8eZPvacq
 d+YkXPaN+J4G7In1YhYEPJsIE72nNJe7JAYsiFNPXnVWBjqcciTSF6pPCtU4nm2Tf3DL
 NEosxnDESL06AdQ1rvYhzRO0vSBRW5cpBOWGea8dGiQviKqorr9jXopB2pm4N/AAP5sc
 RrLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XtsyoXykN5gUxm51NbLbNwdjh7fa7R7o+gr6anVtTV8=;
 b=IgpkjlKjX/O/sHHCxQ7fHRz4/TGPrXAQbImFDem5gsI7zUIhgvL7jI0rNh/mNYW0so
 ZIf/u+yGbO/z6u70Pz0FHOKANrxIkdyfLPySuRLhL414ZBM/sLj5fyZwSzi7M2Fd2b7s
 l6ehGqAps0XZih/VHngkEt8/H5Z3zkpOTlDxX//3sk7GESjAL4k3oUKZ23giPFFJIzbm
 kQCtF4Y/gasq1OhaAMNEKt3byZOGSWyY9cwjUp3AYDC5YbOSqKDqcSNLOJKGMmW+T+Hk
 Qm4ze7INpmQB/i/L+lFXwjJY5pd0GSsSG9v5C3uHSrROO0wDvw0w/GqXgPhDjODBSS40
 kFDA==
X-Gm-Message-State: AOAM532Ixphxub+PifubJi7toxld7/SrsCRnJyPP8zp7/ja6x8JevXlx
 c1vKkGAikovhpfeS0wE9+MBzlnvxONiqrCe+a4W4cA==
X-Google-Smtp-Source: ABdhPJzt7sFDbQdt27+iFhfmZ+rAFND8mdMzuLS0l7AR3CevLAPO+cU2xpzqFmMZqaDKq2xgnQEjUPFynpeTqnL4l0U=
X-Received: by 2002:a05:6808:8e5:: with SMTP id
 d5mr5105956oic.33.1602162994047; 
 Thu, 08 Oct 2020 06:16:34 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxWYb5Mf83FoQF05PhhH=-r=wU5VTF+v7brk3Pdom3cxGw@mail.gmail.com>
 <CAB__hTQ1Kcw_+2r9FCoWK00zGOttMPPaNQg5=m0_s-LiMaUYcQ@mail.gmail.com>
 <CADrptxXbGuMeHDisUCxu8Xb++8Uagc+tmwgrG8aLOzbOcSmOQw@mail.gmail.com>
In-Reply-To: <CADrptxXbGuMeHDisUCxu8Xb++8Uagc+tmwgrG8aLOzbOcSmOQw@mail.gmail.com>
Date: Thu, 8 Oct 2020 09:16:23 -0400
Message-ID: <CAB__hTTx277DeaN7a60i=zY48wKx3_X93896Jz5tpMurgG4HHg@mail.gmail.com>
To: Emil Bjelski <emil.bjelski@gmail.com>
Cc: USRP Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNOC REPLAY streaming to two UBX
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
Content-Type: multipart/mixed; boundary="===============7436222914924074139=="
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

--===============7436222914924074139==
Content-Type: multipart/alternative; boundary="000000000000222ce505b128a40e"

--000000000000222ce505b128a40e
Content-Type: text/plain; charset="UTF-8"

No. I did not change anything in the default image.  It is true that the
default image is routed such that the Replay block uses dynamic routing
through a streaming endpoint to stream data to the DUC.  Each Replay block
port connects to an individual endpoint such that there is not a bandwidth
limitation for the Replay block as a whole.

But, I think there is no reason why you couldn't link the Replay block
statically as you suggested below if you build a new image (I don't think
there is any issue with clock domain crossings). The downside of this
routing is that you cannot "bypass" the Replay block in case you wanted to
do so.

Also, it is pretty flexible to have the Replay block dynamically routed as
it is in the default image.  For example, in addition to using it as arb
memory for signal transmission (which is my primary use case), I can also
see a use case for using it instead in the receive chain to record a burst
of incoming receive data. Thus, even if your host did not have a fast link
(perhaps only 1GbE), you could record a receive snapshot to the replay
block memory at high rate (until filled) and then download the samples over
the slow connection to the host PC.

Rob

On Thu, Oct 8, 2020 at 4:55 AM Emil Bjelski <emil.bjelski@gmail.com> wrote:

> Hi Rob,
> Thank you once again for answering my question!
>
> I have one more question?
>
> Did you change anything in the default FPGA image, in order to be able to
> sustain a maximum 125 MS/s for 4 channels on N310, or 200 MS/s for 2
> channels on  X310?
>
> By looking into x310_rfnoc_image_core.yml and the same is for
> n310_rfnoc_image_core.yml, I can notice that replay is connected over the
> crossbar to DUC.
> The Connection would look something like
> PCIe -> CrossBarSwitch ->* Replay -> CrossBarSwitch *-> DUC -> Radio.
>
>
> I can imagine that it would be more efficient to connect Replay directly
> to the DUC.
> PCIe -> CrossBarSwitch ->* Replay -> DUC -*> Radio.
>
> However, I am not sure, would  that work with the new design due to the
> clock domain crossings?
>
> Kind Regards,
>
> EMil
>
> On Tue, Oct 6, 2020 at 3:40 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Emil,
>> With UHD 4.0, this works.  And, the latest FPGA images from Ettus include
>> the Replay block on the X310 (in the past, this was just for the N310) so
>> you don't even have to build your own image. And, the latest FPGA images
>> provide access to the full 1GB ram such that you could store arb waveforms
>> for 2 channels with memory depth of 125M samps for each channel.
>>
>> I verified that I could play 4 channels at 125 MS/s from the UHD 4.0
>> Replay block on the N310. I believe that I also verified 2 channels at 200
>> MS/s on the X310, but I don't remember for certain.
>>
>> Rob
>>
>> On Tue, Oct 6, 2020 at 7:00 AM Emil Bjelski via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi All,
>>>
>>> I am investigating the option to stream samples from RFNOC_REPLAY block
>>> to two UBX-160 MHz cards with full speed (i.e. 200 Msps for each board).
>>> I would also like to support timing control for both of these two
>>> transmissions.
>>>
>>> I am planning to use new RFNOC architecture and UHD 4.0.
>>> However, before diving deeper I would like to hear from you if this is
>>> possible to be done in straightforward manner with the newest RFNOC
>>> developments.
>>>
>>> I see from the previous posts
>>> (
>>> http://ettus.80997.x6.nabble.com/USRP-users-transmitting-on-two-channels-with-replay-block-td13915.html
>>> ).
>>> That with older RFNOC design and UHD 3.xxx streaming from RFNOC was
>>> limited to a single UBX radio.
>>> Meaning that an FPGA image with 2 Replay blocks was needed in order to
>>> stream samples to two UBXs radios.
>>>
>>> What would be the easiest way to proceed with new UHD 4.0?
>>>
>>> Thanks in advance on the answers,
>>>
>>> Emil
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000222ce505b128a40e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>No. I did not change anything in the default image.=
=C2=A0 It is true that the default image is routed=C2=A0such that the Repla=
y block uses dynamic routing through a streaming endpoint to stream data to=
 the DUC.=C2=A0 Each Replay block port connects to an individual endpoint s=
uch that there is not a bandwidth limitation for the Replay block as a whol=
e.</div><div><br></div><div>But, I think there is no reason why you couldn&=
#39;t link the Replay block statically as you suggested below if you build =
a new image (I don&#39;t think there is any issue with clock=C2=A0domain cr=
ossings). The downside of this routing is that you cannot &quot;bypass&quot=
; the Replay block in case you wanted to do so.</div><div><br></div><div>Al=
so, it is pretty flexible to have the Replay block dynamically routed as it=
 is in the default image.=C2=A0 For example, in addition to using it as arb=
 memory for signal transmission (which is my primary use case), I can also =
see a use case for using it instead in the receive chain to record a burst =
of incoming receive data. Thus, even if your host did not have a fast link =
(perhaps only 1GbE), you could record a receive snapshot to the replay bloc=
k memory at high rate (until filled) and then download the samples over the=
 slow connection to the host PC.</div><div><br></div><div>Rob</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 8,=
 2020 at 4:55 AM Emil Bjelski &lt;<a href=3D"mailto:emil.bjelski@gmail.com"=
>emil.bjelski@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<div>Thank you once again fo=
r answering my question!</div><div><br></div><div>I have one more question?=
</div><div><br></div><div><div>Did you change anything=C2=A0in the default =
FPGA image, in order to be able to sustain a maximum 125 MS/s for 4 channel=
s on N310, or 200 MS/s for 2 channels on=C2=A0 X310?</div><div></div></div>=
<div><br></div><div>By looking into x310_rfnoc_image_core.yml and the same =
is for n310_rfnoc_image_core.yml, I can notice that replay is connected ove=
r the crossbar to DUC.</div><div>The Connection would look something like=
=C2=A0</div><div>PCIe -&gt; CrossBarSwitch -&gt;<b> Replay -&gt; CrossBarSw=
itch </b>-&gt; DUC -&gt; Radio.</div><div><br></div><div><br></div><div>I c=
an imagine that it would be more efficient=C2=A0to connect Replay directly =
to the DUC.=C2=A0</div><div><div>PCIe -&gt; CrossBarSwitch -&gt;<b> Replay =
-&gt; DUC -</b>&gt; Radio.</div><div></div></div><div><br></div><div>Howeve=
r, I am not sure,=C2=A0would=C2=A0 that work with the new design due to the=
 clock domain crossings?</div><div><br></div><div>Kind Regards,</div><div><=
br></div><div>EMil</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Oct 6, 2020 at 3:40 PM Rob Kossler &lt;<a h=
ref=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Hi Emil,<div>With UHD 4.0, this works.=C2=A0 And, the latest FPGA ima=
ges from Ettus include the Replay block on the X310 (in the past, this was =
just for the N310) so you don&#39;t even have to build your own image. And,=
 the latest FPGA images provide access to the full 1GB ram such that you co=
uld store arb waveforms for 2 channels with memory depth of 125M samps for =
each channel.=C2=A0=C2=A0</div><div><br></div><div>I verified that I could =
play 4 channels at 125 MS/s from the UHD 4.0 Replay block on the N310. I be=
lieve that I also verified 2 channels at 200 MS/s on the X310, but I don&#3=
9;t remember for certain.</div><div><br></div><div>Rob</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 6, =
2020 at 7:00 AM Emil Bjelski via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Hi All,<div><br></div><div>I am investigating the option to stream sam=
ples from RFNOC_REPLAY block to two UBX-160 MHz cards with full speed (i.e.=
 200 Msps for each board).</div><div>I would also like to support timing co=
ntrol for both of these two transmissions.=C2=A0</div><div><br></div><div>I=
 am planning to use new RFNOC architecture=C2=A0and UHD 4.0.</div><div>Howe=
ver, before diving deeper I would like to hear from you if this is possible=
 to be done in straightforward=C2=A0manner with the newest RFNOC developmen=
ts.=C2=A0</div><div><br></div><div>I see from the previous posts=C2=A0</div=
><div>(<a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-transmitting-=
on-two-channels-with-replay-block-td13915.html" target=3D"_blank">http://et=
tus.80997.x6.nabble.com/USRP-users-transmitting-on-two-channels-with-replay=
-block-td13915.html</a>).</div><div>That with older RFNOC design and UHD 3.=
xxx streaming from RFNOC was limited to a single UBX radio.=C2=A0</div><div=
>Meaning that an FPGA image with 2 Replay blocks was needed in order to str=
eam samples to two UBXs radios.</div><div><br></div><div>What would be the =
easiest way to proceed with new UHD 4.0?</div><div><br></div><div>Thanks in=
 advance on the answers,</div><div><br></div><div>Emil</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--000000000000222ce505b128a40e--


--===============7436222914924074139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7436222914924074139==--

