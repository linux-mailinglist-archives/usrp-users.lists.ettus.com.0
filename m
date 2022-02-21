Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7BE4BD89F
	for <lists+usrp-users@lfdr.de>; Mon, 21 Feb 2022 10:42:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AF41384B1B
	for <lists+usrp-users@lfdr.de>; Mon, 21 Feb 2022 04:42:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XPgRQ9pq";
	dkim-atps=neutral
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 91387384AB7
	for <usrp-users@lists.ettus.com>; Mon, 21 Feb 2022 04:41:52 -0500 (EST)
Received: by mail-ed1-f50.google.com with SMTP id h15so11068358edv.7
        for <usrp-users@lists.ettus.com>; Mon, 21 Feb 2022 01:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8hktFX1RlhN62QJQEGgqh2TwNVl95GfnKD0a/hjcwH4=;
        b=XPgRQ9pqPk0IuNjqF+0GuwpeZQiL6nUReAUrRLSWRdDee62FNNBm40pMchyE6wSJp2
         2I5Xqf924w+WkEafodKqqYMGbCMZeC25/rVKutel9GW1EYCLOgdeLo1yPCYWh6A1KM74
         jShc1g+zMnQY13s9cew572ID327j/eT4AwGkhB4PE4mWO04r7N4VEj4BBD0h1ey3qyUu
         ILC3rssHSlMPDYa2tFrKLLKfpvu4fCck/i4YSLHOyq9OR0x6U2PinnE2yWYM5BP00gW8
         iBzQAjDSK3IqdNQtuQaaUON/ovxVJn9iUM14SJ+QfryTMzHLzTiMzjRZMtpFPINIRUpL
         M9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8hktFX1RlhN62QJQEGgqh2TwNVl95GfnKD0a/hjcwH4=;
        b=xF7Bp3CqFRuypAjDu/WbJcfl0Xrq6msEISo9Ul38izbn9NETmaSDQ2BDcEfYhLxOCW
         qVX5L0WbREyMRT15UMtVd5/fvLFAssfw1OnlLxTUwjL40EqbcXhNizJUtQFuBlII6eJp
         nnloLgE9r3/rtEkVlnWBQPppDzr0nwc3Pdrw8TJ7N62TEecx21jH+e4TBbo0FdfhTldk
         wwZOjh1hySDUMXL4DBuuO5Mvrcr7dudUomFNLanL9L6US16f9vQ6fsv8YSf6DBBHUnsO
         jr6pX4WPp9/S5taFDUhaEP0Syjrw2j6VABECZIE+REP25ER3Q1xkWM42oi8jkDAi2TrY
         MrXA==
X-Gm-Message-State: AOAM5305xqbQKPTfEFaN57Al92dKtYgqvYppFCwbRGFFAQi9OPr2VXFj
	zQ3TtoMmkD1YttAKQGoBH2NOxMs+31lt+8OnyiIdMek7Fqc=
X-Google-Smtp-Source: ABdhPJwLTaTxmXPKvKMoMx4YpbAEKrCTZckg/Dl/Uf1AysRSd/55RpEfG9ECHjyRyztVfQ7VjxK3zgqPkdVi6BRELRk=
X-Received: by 2002:a05:6402:128d:b0:410:f204:6ec2 with SMTP id
 w13-20020a056402128d00b00410f2046ec2mr20646621edv.104.1645436511492; Mon, 21
 Feb 2022 01:41:51 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQVHXis5xAXDKZWo5WowfzM4zKfx5gVgTvjxZ=8WKaT7cg@mail.gmail.com>
 <CAB__hTSK9qoreSo_FBt1vja8aKnyns33R2eFjaqnz6gDa2qtRQ@mail.gmail.com> <CAB__hTQQQp0QJ5EyNg00jxo4LViQb1x1vaZQb4O9qCtgHop02g@mail.gmail.com>
In-Reply-To: <CAB__hTQQQp0QJ5EyNg00jxo4LViQb1x1vaZQb4O9qCtgHop02g@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Mon, 21 Feb 2022 10:41:39 +0100
Message-ID: <CAG16vQVrRJxwaQXCovrMuwWs5FLOY1MkD8N2K7s=tZvTiUnuGQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: VOC6W6AFLHU7L5DMINUMCEH5XJXNPQAR
X-Message-ID-Hash: VOC6W6AFLHU7L5DMINUMCEH5XJXNPQAR
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom block drop received packages
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VOC6W6AFLHU7L5DMINUMCEH5XJXNPQAR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7829703391192908815=="

--===============7829703391192908815==
Content-Type: multipart/alternative; boundary="000000000000c49ba005d8840a7f"

--000000000000c49ba005d8840a7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thanks for the answer.

I have checked rfnoc_rx_streamer.cpp, ddc_block_control.cpp and my
custom block controller in uhd/host/lib folder, and I search for
"issue_stream_cmd" in them.

In the rx_streamer one I see this function:

void rfnoc_rx_streamer::issue_stream_cmd(const stream_cmd_t& stream_cmd)
> {
>     if (get_num_channels() > 1 and stream_cmd.stream_now
>         and stream_cmd.stream_mode !=3D
> stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS) {
>         throw uhd::runtime_error(
>             "Invalid recv stream command - stream now on multiple channel=
s
> in a "
>             "single streamer will fail to time align.");
>     }


    auto cmd        =3D stream_cmd_action_info::make(stream_cmd.stream_mode=
);
>     cmd->stream_cmd =3D stream_cmd;


    for (size_t i =3D 0; i < get_num_channels(); i++) {
>         const res_source_info info(res_source_info::INPUT_EDGE, i);
>         post_action(info, cmd);
>     }
> }


While in the ddc I see this:

     void issue_stream_cmd(const uhd::stream_cmd_t& stream_cmd, const
> size_t port)
>     {
>         RFNOC_LOG_TRACE("issue_stream_cmd(stream_mode=3D" <<
> char(stream_cmd.stream_mode)
>                                                         << ", port=3D" <<
> port);
>         res_source_info dst_edge{res_source_info::OUTPUT_EDGE, port};
>         auto new_action        =3D
> stream_cmd_action_info::make(stream_cmd.stream_mode);
>         new_action->stream_cmd =3D stream_cmd;
>         issue_stream_cmd_action_handler(dst_edge, new_action);
>     }


There's no "issue_stream_cmd" on my block controller, so maybe as you said
the block is not forwarding actions. I'm not very familiar with controller
files, so could you please tell me which changes I must do to have my block
forwarding actions or point me out to any example to take as a reference? I
created my block using rfnocmodtool and follow the gain example, so I guess
this example is not forwarding actions either.

By the way, how can I stream from DDC in a GNURadiograph? If DDC is on the
FPGA side, I have to cross to the host domain through a streamer, don't I?

Kind Regards,

Maria



El vie, 18 feb 2022 a las 15:14, Rob Kossler (<rkossler@nd.edu>) escribi=C3=
=B3:

> By the way, if your custom FPGA block was truly the problem (blocking
> streaming), the Rx LED should be on and you should be getting lots of
> Overflow. Since this is not happening, it is a good indication that the R=
x
> Radio is never starting.
>
> On Fri, Feb 18, 2022 at 9:10 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Maria,
>> The issue is likely related to "action forwarding" of the streaming
>> command. When your application asks to start streaming, it typically doe=
s
>> so by calling rx_streamer->issue_stream_cmd().  This "action" will then =
be
>> forwarded to the next upstream block controller (typically DDC block
>> controller) which will see the command and forward it to the next upstre=
am
>> block controller (typically the Rx radio controller).  The Rx radio bloc=
k
>> controller will then start the streaming.  As an example, let's say your
>> rx_streamer requested a fixed number of samples (say 1000) and assume th=
at
>> your DDC decimation is 4.  With this architecture, the DDC block control=
ler
>> can intercept the action and change the requested number of samples from
>> 1000 to 4000 so that when the radio block controller receives the comman=
d,
>> it will stream for exactly 4000 samples (which will provide 1000 samples
>> out of the DDC). Note that all of this "action" propagation occurs in UH=
D
>> land (not on the FPGA).  So, if your custom block controller is not
>> forwarding actions, the Radio controller never gets the action and thus
>> never starts the streaming.  One way you can verify this is if you are a=
ble
>> to call issue_stream_cmd() from the DDC controller rather than the
>> rx_streamer.  This should cause your streaming to start.
>> Rob
>>
>> On Fri, Feb 18, 2022 at 8:13 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wr=
ote:
>>
>>> Hi all,
>>>
>>> I'm using a USRP E320 with UHD 4.0 and GNURadio 3.8 for receiving
>>> samples through an RX RFNoC Radio block and performing some processing =
in a
>>> custom RFNoC block.
>>> I have created my block using rfnocmodtool, modifying the Verilog and
>>> yml files for my custom block. I left the cpp and hpp files as default,=
 but
>>> I copied them to the UHD install path to see the name of my block with
>>> uhd_usrp_probe.
>>> I have tested satisfactorily my custom block with a gnuradio graph like
>>> this:
>>>
>>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> rfnoc rx
>>> streamer =3D> Host block
>>>
>>> I have also tested it for transmission through the rfnoc tx radio, and
>>> works fine:
>>>
>>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> RFNoC DU=
C=3D>
>>> RFNoC TX Radio
>>>
>>> But when I try to receive from the radio with the following graph, rx
>>> led does not light up and gnuradio give time out:
>>> RFNoC RX Radio =3D>  RFNoC DDC   =3D> custom RFNoC block =3D>  rfnoc rx
>>> streamer =3D>Host block
>>>
>>> If I remove my custom block from the last graph, I can receive samples
>>> and the led is on.
>>>
>>> It seems like the custom block is blocking somehow the samples. I tried
>>> with different sampling rates and spp values for the radio but nothing
>>> works.
>>>
>>> Any help on this will be appreciated.
>>>
>>> Kind Regards,
>>>
>>> Maria
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000c49ba005d8840a7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<div><br></div><div>Thanks for the answer.</div><di=
v><br></div><div>I have checked rfnoc_rx_streamer.cpp, ddc_block_control.cp=
p and my custom=C2=A0block controller in uhd/host/lib folder, and I search =
for &quot;issue_stream_cmd&quot; in them.=C2=A0</div><div><br>In the rx_str=
eamer one I see this function:</div><div><br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">void rfnoc_rx_streamer::issue_stream_cmd(const stream_c=
md_t&amp; stream_cmd)<br>{<br>=C2=A0 =C2=A0 if (get_num_channels() &gt; 1 a=
nd stream_cmd.stream_now<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 and stream_cmd.stre=
am_mode !=3D stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS) {<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 throw uhd::runtime_error(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;Invalid recv stream command - stream now on multiple chann=
els in a &quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;single s=
treamer will fail to time align.&quot;);<br>=C2=A0 =C2=A0 }</blockquote><br=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">=C2=A0 =C2=A0 auto cmd =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D stream_cmd_action_info::make(stream_cmd.stre=
am_mode);<br>=C2=A0 =C2=A0 cmd-&gt;stream_cmd =3D stream_cmd;</blockquote><=
br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">=C2=A0 =C2=A0 for (siz=
e_t i =3D 0; i &lt; get_num_channels(); i++) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 const res_source_info info(res_source_info::INPUT_EDGE, i);<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 post_action(info, cmd);<br>=C2=A0 =C2=A0 }<br>}</block=
quote><div><br></div><div>While in the ddc I see this:</div><div><br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">=C2=A0 =C2=A0 =C2=A0void =
issue_stream_cmd(const uhd::stream_cmd_t&amp; stream_cmd, const size_t port=
)<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RFNOC_LOG_TRACE(&quot;i=
ssue_stream_cmd(stream_mode=3D&quot; &lt;&lt; char(stream_cmd.stream_mode)<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt; &quot;, port=
=3D&quot; &lt;&lt; port);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 res_source_info ds=
t_edge{res_source_info::OUTPUT_EDGE, port};<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
auto new_action =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D stream_cmd_action_info::make=
(stream_cmd.stream_mode);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 new_action-&gt;str=
eam_cmd =3D stream_cmd;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 issue_stream_cmd_act=
ion_handler(dst_edge, new_action);<br>=C2=A0 =C2=A0 }</blockquote><div><br>=
</div><div>There&#39;s no &quot;issue_stream_cmd&quot; on my block controll=
er, so maybe as you said the block is not forwarding actions. I&#39;m not v=
ery familiar with controller files, so could you please tell me which chang=
es I must do to have my block forwarding actions or point me out to any exa=
mple to take as a reference? I created my block using rfnocmodtool and foll=
ow the gain example, so I guess this example is not forwarding actions eith=
er.</div><div><br></div><div>By the way, how can I stream from DDC in a GNU=
Radiograph? If DDC is on the FPGA side, I have to cross to the host domain =
through a streamer, don&#39;t I?</div><div><br></div><div>Kind Regards,</di=
v><div><br></div><div>Maria</div><div><br></div><div>=C2=A0</div></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El v=
ie, 18 feb 2022 a las 15:14, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd=
.edu">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">By the way, if your custom F=
PGA block was truly the problem (blocking streaming), the Rx LED should be =
on and you should be getting lots of Overflow. Since this is not happening,=
 it is a good indication that the Rx Radio is never starting.</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18=
, 2022 at 9:10 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=
=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</div><div>The is=
sue is likely related to &quot;action forwarding&quot; of the streaming com=
mand. When your application asks to start streaming, it typically does so b=
y calling rx_streamer-&gt;issue_stream_cmd().=C2=A0 This &quot;action&quot;=
 will then be forwarded to the next upstream block controller (typically DD=
C block controller) which will see the command and forward=C2=A0it to the n=
ext upstream block controller (typically the Rx radio controller).=C2=A0 Th=
e Rx radio block controller will then start the streaming.=C2=A0 As an exam=
ple, let&#39;s say your rx_streamer requested a fixed number of samples (sa=
y 1000) and assume that your DDC decimation is 4.=C2=A0 With this architect=
ure, the DDC block controller can intercept the action and change the reque=
sted number of samples from 1000 to 4000 so that when the radio block contr=
oller receives the command, it will stream for exactly 4000 samples (which =
will provide 1000 samples out of the DDC). Note that all of this &quot;acti=
on&quot; propagation occurs in UHD land (not on the FPGA).=C2=A0 So, if you=
r custom block controller is not forwarding actions, the Radio controller n=
ever gets the action and thus never starts the streaming.=C2=A0 One way you=
 can verify this is if you are able to call issue_stream_cmd() from the DDC=
 controller rather than the rx_streamer.=C2=A0 This should cause your strea=
ming to start.=C2=A0</div><div>Rob</div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18, 2022 at 8:13 AM Maria Mu=
=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki=
92@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m using a USR=
P E320 with UHD 4.0 and GNURadio 3.8 for receiving samples=C2=A0through=C2=
=A0an RX RFNoC Radio block and performing some processing in a custom RFNoC=
 block.</div><div>I have created my block using rfnocmodtool, modifying the=
 Verilog and yml files for my custom block. I left the cpp and hpp files as=
 default, but I copied them to the UHD install path to see the name of my b=
lock with uhd_usrp_probe.</div><div>I have tested satisfactorily my custom =
block with a gnuradio graph like this:</div><div><br></div><div>Host block =
=3D&gt; rfnoc tx streamer =3D&gt; custom RFNoC block =3D&gt; rfnoc rx strea=
mer =3D&gt; Host block</div><div><br></div><div>I have also tested it for t=
ransmission=C2=A0through the rfnoc tx radio, and works fine:</div><div><br>=
</div><div>Host block =3D&gt; rfnoc tx streamer =3D&gt; custom RFNoC block =
=3D&gt; RFNoC DUC=3D&gt; RFNoC TX Radio<br></div><div><br></div><div>But wh=
en I try to receive from the radio with the following graph, rx led does no=
t light up and gnuradio give time out:</div><div>RFNoC RX Radio =3D&gt;=C2=
=A0

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
</blockquote></div>

--000000000000c49ba005d8840a7f--

--===============7829703391192908815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7829703391192908815==--
