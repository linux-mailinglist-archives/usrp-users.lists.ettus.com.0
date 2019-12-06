Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5C0115893
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2019 22:24:01 +0100 (CET)
Received: from [::1] (port=35978 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idL4t-0000TQ-V5; Fri, 06 Dec 2019 16:23:55 -0500
Received: from mail-lf1-f41.google.com ([209.85.167.41]:37332)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1idL4p-0000Po-Lf
 for usrp-users@lists.ettus.com; Fri, 06 Dec 2019 16:23:51 -0500
Received: by mail-lf1-f41.google.com with SMTP id b15so6314563lfc.4
 for <usrp-users@lists.ettus.com>; Fri, 06 Dec 2019 13:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q3g0IO6HYCZRBFb/vD1ZZ6eD4+VXHvXKHoSNCrfGtuQ=;
 b=fBYh7CH/LeqHmHvQ9/PVAm3n3qXfAivUXQ+Z0PfFL0y4UFRbvt9s7dpBhhBPvuPxGk
 ZDcERnrElVMjKeHIlMHReQn1voHAVxqP0ubzkUwz4hnaoRmOaHrpU/uviIOmh6GDY5sV
 c8U4m0j6Wpw67lTh7mnUFz02oRhKWTg2mubRIowzl1PCAo5oHfOgUJrAo5gVSnsHMMVL
 /KmTEFuEuecNYfgeVWAj6EYWQjzdXEIU0dSU5gqTZHxVcYH0iwMvDQEoiOH7BoO/wgXx
 BX8YJeKpTdIRzu71KwkT8br0UE7Iol37GtmB1LPOPEbt+73DAT1duju0ky08VpT5wpiC
 ZzKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q3g0IO6HYCZRBFb/vD1ZZ6eD4+VXHvXKHoSNCrfGtuQ=;
 b=Q74AJmAdtBQg9WD4HuykHkjpX/oRHyjN2QOga+ug7mIV1NB7+1500+CAG624WfABE/
 qxkZ+ei6rw7zKqzbbSp0ih7L6rxMjfMtxIhIDMz+iGy8OhCLdCu6ncOcbRCoR9VzDBdx
 24Rq01eKggAbveYeslaS2qQuP/djNmv0QOwq58ij3EihYCIhh68QuR42hr4JD6AulTw5
 YDpgtht+9JdrgsCWSNfjCOeuc9CkxL1qtfp/qAunsFkJCudkITO9o/uy/ecVypmSY7Ai
 /bWa08a/UeR9fzFgcp9X4U8Y2S6nBxYQiTqb7VgV4YFEKv7p71frK0Sg8Dc6GQBqFzQa
 PjrQ==
X-Gm-Message-State: APjAAAXbxlmCFWnO/p6WxujGN2kWQ4n3qRDOoJbHijblm2lOcZ75aN7b
 5QgTmoyoGQyLg7EVGh7WoQ0HS3xLxTDRt9nONfYiKPJoFv9HPw==
X-Google-Smtp-Source: APXvYqx5E4Tpw2zPiXJjUsM2J+xhUlmFF7Hyqu+hcWstvk7nMEe+qAkCqE/y8yjE+FlK2M48J8MMxtuweDJObbDGTtg=
X-Received: by 2002:ac2:455c:: with SMTP id j28mr9631304lfm.184.1575667390335; 
 Fri, 06 Dec 2019 13:23:10 -0800 (PST)
MIME-Version: 1.0
References: <20191204094750.31BCC1400BB@zmtaauth01.partage.renater.fr>
 <CANf970bHPRczWQDS=OVMWmJwhJVzycCCw4Ey5JeoVqtg9WVVfQ@mail.gmail.com>
In-Reply-To: <CANf970bHPRczWQDS=OVMWmJwhJVzycCCw4Ey5JeoVqtg9WVVfQ@mail.gmail.com>
Date: Fri, 6 Dec 2019 15:22:58 -0600
Message-ID: <CANf970a_3AMjAi=FCxVZyha=u-f9At9nQANB_RZJvSw5oL_5tg@mail.gmail.com>
To: Thomas Harder <Thomas.Harder@oca.eu>
Subject: Re: [USRP-users] transmitting on two channels with replay block
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
Content-Type: multipart/mixed; boundary="===============0831126050067742037=="
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

--===============0831126050067742037==
Content-Type: multipart/alternative; boundary="00000000000015e3fe05990fa761"

--00000000000015e3fe05990fa761
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thomas,

Upon further investigation, we may be running up to a practical limit of a
single CHDR interface rather than an issue with your code. A single replay
block servicing two radios will have a max (theoretical) rate of 187.5 MSPS
on either channel. This means that you might be able to squeeze full rate
out on 2 channels with an MCR of 184.32, but that's cutting it pretty
close. Sounds like 2 channels at 200 MSPS with a replay setup will require
2 replay blocks serving each channel independently. If you end up trying
either of the above out, I'd be curious to know what results you observe.

Sam Reiter
Ettus Research


On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter <sam.reiter@ettus.com> wrote:

> Thomas,
>
> I'd need to set it up on my end, but I believe you can TX two distinct
> waveforms from a single replay block instance. You'd need to make sure th=
at
> your adding your data to the buffer in separate locations and at an addre=
ss
> that is a multiple of 8 bytes (which it looks like you're doing from the
> above snippets). Are you seeing continuous underruns, or just a handful a=
t
> the beginning on the run? Does your duplicated code also use:
>
> replay_ctrl->get_record_fullness
>
> on both channels before kicking off the stream start?
>
> Sam Reiter
> Ettus Research
>
> On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello everyone,
>>
>> Is it possible to transmit two different waveforms on the two channels o=
f
>> the USRP X310 with the two UBX-160 daughterboards?
>>
>> I want to transmit two different waveforms simultaneous (synchronized )
>> on the two channels of the USRP with the full sample rate of 200 MS/s. I
>> tried already to do it with a dual 10Gbit-ethernet connection and I seem=
ed
>> to be limited by my computer. Now I am trying to do it with the replay
>> block.
>>
>>
>>
>> I built the FPGA image with one Replay block as described in
>> https://kb.ettus.com/Using_the_RFNoC_Replay_Block to run the example
>> =E2=80=9Creplay_samples_from_file=E2=80=9D and it is working fine if I t=
ransmit just on one
>> channel. Now I was modifying the code by connecting the replay block to
>> both channels:
>>
>>
>> replay_graph->connect(replay_ctrl->get_block_id(),replay_chan,tx_blockid=
,tx_chan,replay_spp);
>>
>>
>> replay_graph->connect(replay_ctrl->get_block_id(),replay_chan1,tx_blocki=
d1,tx_chan,replay_spp);
>>
>>
>>
>> and writing the same waveform into another region of the DRAM-buffer:
>>
>> replay_ctrl->config_record(0,words_to_replay*replay_word_size,
>> replay_chan);
>>
>> replay_ctrl->config_record(20000,words_to_replay*replay_word_size,
>> replay_chan1);
>>
>> and
>>
>> replay_ctrl->config_play(0,words_to_replay*replay_word_size, replay_chan=
);
>>
>> replay_ctrl->config_play(20000,words_to_replay*replay_word_size,
>> replay_chan1);
>>
>>
>>
>> where
>>
>> words_to_replay*replay_word_size=3D16000
>>
>> replay_chan=3D0
>>
>> replay_chan1=3D1
>>
>> tx_blockid=3D0/Radio_0
>>
>> tx_blockid=3D0/Radio_1
>>
>>
>>
>> then I stream my waveforms to the replay block as defined in the example
>> and I start to replay the data:
>>
>> replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan);
>>
>> replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan1);
>>
>>
>>
>> It works but with plenty of Underflows!!
>>
>>
>>
>> So what does it mean when it says in the manual:
>>
>> =E2=80=9CNote that the record and playback buffers do not need to the sa=
me,
>> allowing a single Replay block to both record and playback to different
>> regions of memory* simultaneously*.=E2=80=9D
>>
>> (https://kb.ettus.com/Using_the_RFNoC_Replay_Block)?
>>
>>
>>
>> Because in the manual it says also:
>>
>> =E2=80=9CThe replay block has the following features: One input and *one=
* output=E2=80=9D
>>
>> (
>> https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.=
html
>> )
>>
>>
>>
>> So if the replay block has just one output why does it have two channels
>> connected to it (replay_chan=3D 0 and 1)?
>>
>>
>>
>> If one replay block can just stream to one channel at the same time, can
>> I implement easily a second replay block in the FPGA to stream on the tw=
o
>> channels of my USRP two different waveforms simultaneously?
>>
>>
>>
>> Thank you,
>>
>> Thomas
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000015e3fe05990fa761
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thomas,</div><div><br></div><div>Upon further investi=
gation, we may be running up to a practical limit of a single CHDR interfac=
e rather than an issue with your code. A single replay block servicing two =
radios will have a max (theoretical) rate of 187.5 MSPS on either channel. =
This means that you might be able to squeeze full rate out on 2 channels wi=
th an MCR of <span class=3D"gmail-ILfuVd"><span class=3D"e24Kjd">184.32, bu=
t that&#39;s cutting it pretty close. Sounds like 2 channels at 200 MSPS wi=
th a replay setup will require 2 replay blocks serving each channel indepen=
dently. If you end up trying either of the above out, I&#39;d be curious to=
 know what results you observe.<br></span></span></div><div><br></div><div>=
<div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_sig=
nature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter <br><div>Ettus Re=
search<br></div></div></div></div></div></div><br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2019=
 at 2:38 PM Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com">sam.reit=
er@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Thomas,<div><br></div><div>I&#39;d need to set=
 it up on my end, but I believe you can TX two distinct waveforms from a si=
ngle replay block instance. You&#39;d need to make sure that your adding yo=
ur data to the buffer in separate locations and at an address that is a mul=
tiple of 8 bytes (which it looks like you&#39;re doing from the above snipp=
ets). Are you seeing continuous underruns, or just a handful at the beginni=
ng on the run? Does your duplicated code also use:</div><div><span style=3D=
"color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation M=
ono&quot;,Menlo,monospace;font-size:12px;white-space:pre-wrap"><br></span><=
/div><div><span style=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Con=
solas,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:12px;white-spac=
e:pre-wrap">replay_ctrl-&gt;</span><span style=3D"box-sizing:border-box;col=
or:rgb(0,92,197);font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&=
quot;,Menlo,monospace;font-size:12px;white-space:pre-wrap">get_record_fulln=
ess</span></div><div><br></div><div>on both channels before kicking off the=
 stream start?</div><div><br></div><div><div><div dir=3D"ltr"><div dir=3D"l=
tr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div>Ettus Research</div></div></=
div></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div><p class=3D"MsoN=
ormal">Hello everyone,</p><p class=3D"MsoNormal">Is it possible to transmit=
 two different waveforms on the two channels of the USRP X310 with the two =
UBX-160 daughterboards?</p><p class=3D"MsoNormal">I want to transmit two di=
fferent waveforms simultaneous (synchronized ) on the two channels of the U=
SRP with the full sample rate of 200 MS/s. I tried already to do it with a =
dual 10Gbit-ethernet connection and I seemed to be limited by my computer. =
Now I am trying to do it with the replay block.</p><p class=3D"MsoNormal"><=
u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">I built the FPGA image with o=
ne Replay block as described in <a href=3D"https://kb.ettus.com/Using_the_R=
FNoC_Replay_Block" target=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_R=
eplay_Block</a> to run the example =E2=80=9Creplay_samples_from_file=E2=80=
=9D and it is working fine if I transmit just on one channel. Now I was mod=
ifying the code by connecting the replay block to both channels:</p><p clas=
s=3D"MsoNormal">replay_graph-&gt;connect(replay_ctrl-&gt;get_block_id(),rep=
lay_chan,tx_blockid,tx_chan,replay_spp);</p><p class=3D"MsoNormal">replay_g=
raph-&gt;connect(replay_ctrl-&gt;get_block_id(),replay_chan1,tx_blockid1,tx=
_chan,replay_spp);</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p cla=
ss=3D"MsoNormal">and writing the same waveform into another region of the D=
RAM-buffer:</p><p class=3D"MsoNormal">replay_ctrl-&gt;config_record(0,words=
_to_replay*replay_word_size, replay_chan);</p><p class=3D"MsoNormal">replay=
_ctrl-&gt;config_record(20000,words_to_replay*replay_word_size, replay_chan=
1);</p><p class=3D"MsoNormal">and</p><p class=3D"MsoNormal">replay_ctrl-&gt=
;config_play(0,words_to_replay*replay_word_size, replay_chan);<u></u><u></u=
></p><p class=3D"MsoNormal">replay_ctrl-&gt;config_play(20000,words_to_repl=
ay*replay_word_size, replay_chan1);</p><p class=3D"MsoNormal"><u></u>=C2=A0=
<u></u></p><p class=3D"MsoNormal">where </p><p class=3D"MsoNormal">words_to=
_replay*replay_word_size=3D16000</p><p class=3D"MsoNormal">replay_chan=3D0<=
/p><p class=3D"MsoNormal">replay_chan1=3D1</p><p class=3D"MsoNormal">tx_blo=
ckid=3D0/Radio_0</p><p class=3D"MsoNormal">tx_blockid=3D0/Radio_1</p><p cla=
ss=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">then I stre=
am my waveforms to the replay block as defined in the example and I start t=
o replay the data:</p><p class=3D"MsoNormal">replay_ctrl-&gt;issue_stream_c=
md(stream_cmd, replay_chan);<u></u><u></u></p><p class=3D"MsoNormal">replay=
_ctrl-&gt;issue_stream_cmd(stream_cmd, replay_chan1);</p><p class=3D"MsoNor=
mal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">It works but with plent=
y of Underflows!!</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p clas=
s=3D"MsoNormal">So what does it mean when it says in the manual:</p><p clas=
s=3D"MsoNormal">=E2=80=9CNote that the record and playback buffers do not n=
eed to the same, allowing a single Replay block to both record and playback=
 to different regions of memory<b> simultaneously</b>.=E2=80=9D<u></u><u></=
u></p><p class=3D"MsoNormal">(<a href=3D"https://kb.ettus.com/Using_the_RFN=
oC_Replay_Block" target=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Rep=
lay_Block</a>)?<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u=
></p><p class=3D"MsoNormal">Because in the manual it says also:<u></u><u></=
u></p><p class=3D"MsoNormal">=E2=80=9CThe replay block has the following fe=
atures: One input and <b>one</b> output=E2=80=9D<u></u><u></u></p><p class=
=3D"MsoNormal">(<a href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc=
_1_1replay__block__ctrl.html" target=3D"_blank">https://files.ettus.com/man=
ual/classuhd_1_1rfnoc_1_1replay__block__ctrl.html</a>)</p><p class=3D"MsoNo=
rmal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">So if the replay block=
 has just one output why does it have two channels connected to it (replay_=
chan=3D 0 and 1)?<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u><=
/u></p><p class=3D"MsoNormal">If one replay block can just stream to one ch=
annel at the same time, can I implement easily a second replay block in the=
 FPGA to stream on the two channels of my USRP two different waveforms simu=
ltaneously?<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p=
><p class=3D"MsoNormal">Thank you,<u></u><u></u></p><p class=3D"MsoNormal">=
Thomas<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p c=
lass=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D=
"MsoNormal"><u></u>=C2=A0<u></u></p></div></div>___________________________=
____________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000015e3fe05990fa761--


--===============0831126050067742037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0831126050067742037==--

