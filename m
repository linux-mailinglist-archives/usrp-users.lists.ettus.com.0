Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4B54BBA7D
	for <lists+usrp-users@lfdr.de>; Fri, 18 Feb 2022 15:15:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6477D3850A0
	for <lists+usrp-users@lfdr.de>; Fri, 18 Feb 2022 09:14:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="GrZeJ1wQ";
	dkim-atps=neutral
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id F387638430B
	for <usrp-users@lists.ettus.com>; Fri, 18 Feb 2022 09:14:07 -0500 (EST)
Received: by mail-yb1-f178.google.com with SMTP id v73so7472335ybe.12
        for <usrp-users@lists.ettus.com>; Fri, 18 Feb 2022 06:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zmcHHARZARcxZZgIAUfUHRo9PDcnML9CGjhVunoq/vc=;
        b=GrZeJ1wQfGdhs2wYF/ePHuHhPGH7dfOgyMDmiEOZ8q5DRAu43b2hVLYUXnC3bYmPja
         VAD0Y/0lwY/2DFI1nMoJpsXVfFMFvpFGcAITaR87wfrnu9Ijw62/rdkr9WHvxf+uEdTm
         rD6TovavcPCaDIm2FTjqjL3nAbCew6R9Y7sFGa6FE6+TeM8RVYn6WrPKDSttyPuz+E2A
         OKO4Zeuxc8a5qA2BkiEJwiuLR0vvmlD6uV6xzFNxRC6GEZuY+Wt+qZWWYFC+TG3iKrAM
         9uKDTzCgiaUdoXVGla3Tzit0GHmBq+0OfMsBkMUGOT8bDfuMdtkvCEIOIopoGt6t1BFG
         GCPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zmcHHARZARcxZZgIAUfUHRo9PDcnML9CGjhVunoq/vc=;
        b=DbB8qkKfIYZoYQx7V2YTccvmUVArpuOrAcGz4ACvG3ZqaX31JCGbayIku8rz7lezJw
         grPVcKLUxcYqsGNhI1jhnfEdGbPd5ixbfdt8irjYuvUgare6mru1UIOwrANBzVs8zf0s
         AM5u2IwNhVxkxBbREWSyjP2Ti9f6f22Rg0D/cfDwvG0Gl0XBtfsGgJui6ws/3fRXAt1S
         dhm6lcAswjUX1hZAj3lVB7SvLBdbqXFnXl8sKYnH9i5L2ghnEri6CtwuKPo8rTTCdunb
         hULWaTz/q4NY1SEOfJog7tv0x5Ue/v5d1xgKKR2Siwm6D8N/IuQp5cbup5+2BIySlXcz
         5DNg==
X-Gm-Message-State: AOAM533xGLhEkBZ6OmRd0IPMIJ7oOReRNaHt2gj5WeYj1GCMQe1Gmffq
	8u4c4RStUJiPM5aDza9pCZ32cpO01zvldPa1o8jwlA==
X-Google-Smtp-Source: ABdhPJySmRm1WzBK8KlKeqG2v6YDnqOraiYI2ED7ocxbeTPQEzOVmB7dpMpSRRmhHAnHlErE5Y9t30Gyw1ZBZU6c5sg=
X-Received: by 2002:a25:d84a:0:b0:618:dd17:99c3 with SMTP id
 p71-20020a25d84a000000b00618dd1799c3mr7346999ybg.530.1645193647093; Fri, 18
 Feb 2022 06:14:07 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQVHXis5xAXDKZWo5WowfzM4zKfx5gVgTvjxZ=8WKaT7cg@mail.gmail.com>
 <CAB__hTSK9qoreSo_FBt1vja8aKnyns33R2eFjaqnz6gDa2qtRQ@mail.gmail.com>
In-Reply-To: <CAB__hTSK9qoreSo_FBt1vja8aKnyns33R2eFjaqnz6gDa2qtRQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 18 Feb 2022 09:13:54 -0500
Message-ID: <CAB__hTQQQp0QJ5EyNg00jxo4LViQb1x1vaZQb4O9qCtgHop02g@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: 7XJIFNPTHPWRU4JORSASGA5QRC7MGSJ5
X-Message-ID-Hash: 7XJIFNPTHPWRU4JORSASGA5QRC7MGSJ5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom block drop received packages
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7XJIFNPTHPWRU4JORSASGA5QRC7MGSJ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7195886054970919906=="

--===============7195886054970919906==
Content-Type: multipart/alternative; boundary="000000000000ec348d05d84b7e61"

--000000000000ec348d05d84b7e61
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

By the way, if your custom FPGA block was truly the problem (blocking
streaming), the Rx LED should be on and you should be getting lots of
Overflow. Since this is not happening, it is a good indication that the Rx
Radio is never starting.

On Fri, Feb 18, 2022 at 9:10 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Maria,
> The issue is likely related to "action forwarding" of the streaming
> command. When your application asks to start streaming, it typically does
> so by calling rx_streamer->issue_stream_cmd().  This "action" will then b=
e
> forwarded to the next upstream block controller (typically DDC block
> controller) which will see the command and forward it to the next upstrea=
m
> block controller (typically the Rx radio controller).  The Rx radio block
> controller will then start the streaming.  As an example, let's say your
> rx_streamer requested a fixed number of samples (say 1000) and assume tha=
t
> your DDC decimation is 4.  With this architecture, the DDC block controll=
er
> can intercept the action and change the requested number of samples from
> 1000 to 4000 so that when the radio block controller receives the command=
,
> it will stream for exactly 4000 samples (which will provide 1000 samples
> out of the DDC). Note that all of this "action" propagation occurs in UHD
> land (not on the FPGA).  So, if your custom block controller is not
> forwarding actions, the Radio controller never gets the action and thus
> never starts the streaming.  One way you can verify this is if you are ab=
le
> to call issue_stream_cmd() from the DDC controller rather than the
> rx_streamer.  This should cause your streaming to start.
> Rob
>
> On Fri, Feb 18, 2022 at 8:13 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wro=
te:
>
>> Hi all,
>>
>> I'm using a USRP E320 with UHD 4.0 and GNURadio 3.8 for receiving
>> samples through an RX RFNoC Radio block and performing some processing i=
n a
>> custom RFNoC block.
>> I have created my block using rfnocmodtool, modifying the Verilog and ym=
l
>> files for my custom block. I left the cpp and hpp files as default, but =
I
>> copied them to the UHD install path to see the name of my block with
>> uhd_usrp_probe.
>> I have tested satisfactorily my custom block with a gnuradio graph like
>> this:
>>
>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> rfnoc rx
>> streamer =3D> Host block
>>
>> I have also tested it for transmission through the rfnoc tx radio, and
>> works fine:
>>
>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> RFNoC DUC=
=3D>
>> RFNoC TX Radio
>>
>> But when I try to receive from the radio with the following graph, rx le=
d
>> does not light up and gnuradio give time out:
>> RFNoC RX Radio =3D>  RFNoC DDC   =3D> custom RFNoC block =3D>  rfnoc rx
>> streamer =3D>Host block
>>
>> If I remove my custom block from the last graph, I can receive samples
>> and the led is on.
>>
>> It seems like the custom block is blocking somehow the samples. I tried
>> with different sampling rates and spp values for the radio but nothing
>> works.
>>
>> Any help on this will be appreciated.
>>
>> Kind Regards,
>>
>> Maria
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000ec348d05d84b7e61
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">By the way, if your custom FPGA block was truly the proble=
m (blocking streaming), the Rx LED should be on and you should be getting l=
ots of Overflow. Since this is not happening, it is a good indication that =
the Rx Radio is never starting.</div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18, 2022 at 9:10 AM Rob Kossler =
&lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>Hi Maria,</div><div>The issue is likely related to &quot;action forwarding=
&quot; of the streaming command. When your application asks to start stream=
ing, it typically does so by calling rx_streamer-&gt;issue_stream_cmd().=C2=
=A0 This &quot;action&quot; will then be forwarded to the next upstream blo=
ck controller (typically DDC block controller) which will see the command a=
nd forward=C2=A0it to the next upstream block controller (typically the Rx =
radio controller).=C2=A0 The Rx radio block controller will then start the =
streaming.=C2=A0 As an example, let&#39;s say your rx_streamer requested a =
fixed number of samples (say 1000) and assume that your DDC decimation is 4=
.=C2=A0 With this architecture, the DDC block controller can intercept the =
action and change the requested number of samples from 1000 to 4000 so that=
 when the radio block controller receives the command, it will stream for e=
xactly 4000 samples (which will provide 1000 samples out of the DDC). Note =
that all of this &quot;action&quot; propagation occurs in UHD land (not on =
the FPGA).=C2=A0 So, if your custom block controller is not forwarding acti=
ons, the Radio controller never gets the action and thus never starts the s=
treaming.=C2=A0 One way you can verify this is if you are able to call issu=
e_stream_cmd() from the DDC controller rather than the rx_streamer.=C2=A0 T=
his should cause your streaming to start.=C2=A0</div><div>Rob</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18=
, 2022 at 8:13 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com=
" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br></di=
v><div>I&#39;m using a USRP E320 with UHD 4.0 and GNURadio 3.8 for receivin=
g samples=C2=A0through=C2=A0an RX RFNoC Radio block and performing some pro=
cessing in a custom RFNoC block.</div><div>I have created my block using rf=
nocmodtool, modifying the Verilog and yml files for my custom block. I left=
 the cpp and hpp files as default, but I copied them to the UHD install pat=
h to see the name of my block with uhd_usrp_probe.</div><div>I have tested =
satisfactorily my custom block with a gnuradio graph like this:</div><div><=
br></div><div>Host block =3D&gt; rfnoc tx streamer =3D&gt; custom RFNoC blo=
ck =3D&gt; rfnoc rx streamer =3D&gt; Host block</div><div><br></div><div>I =
have also tested it for transmission=C2=A0through the rfnoc tx radio, and w=
orks fine:</div><div><br></div><div>Host block =3D&gt; rfnoc tx streamer =
=3D&gt; custom RFNoC block =3D&gt; RFNoC DUC=3D&gt; RFNoC TX Radio<br></div=
><div><br></div><div>But when I try to receive from the radio with the foll=
owing graph, rx led does not light up and gnuradio give time out:</div><div=
>RFNoC RX Radio =3D&gt;=C2=A0

RFNoC DDC=C2=A0=C2=A0=C2=A0=3D&gt; custom RFNoC block =3D&gt;=C2=A0=C2=A0rf=
noc rx streamer =3D&gt;Host block</div><div><br></div><div>If I remove my c=
ustom block from the last graph, I can receive samples and the led is on.</=
div><div><br></div><div>It seems like the custom block is blocking somehow =
the samples. I tried with different sampling rates and spp values for the r=
adio but nothing works.=C2=A0</div><div><br></div><div>Any help on this wil=
l be appreciated.</div><div><br></div><div>Kind Regards,</div><div><br></di=
v><div>Maria</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--000000000000ec348d05d84b7e61--

--===============7195886054970919906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7195886054970919906==--
