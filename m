Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0854BDAAC
	for <lists+usrp-users@lfdr.de>; Mon, 21 Feb 2022 16:50:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46FE7384A9F
	for <lists+usrp-users@lfdr.de>; Mon, 21 Feb 2022 10:50:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="QgNJXf0K";
	dkim-atps=neutral
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by mm2.emwd.com (Postfix) with ESMTPS id CD1FC383FA3
	for <usrp-users@lists.ettus.com>; Mon, 21 Feb 2022 10:49:50 -0500 (EST)
Received: by mail-wr1-f50.google.com with SMTP id u1so27816416wrg.11
        for <usrp-users@lists.ettus.com>; Mon, 21 Feb 2022 07:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2Br9ECSGcdMwiOa4siNbrwlq8p7H+QpXXQM4pNiLwHA=;
        b=QgNJXf0KAfUtfRxzIQy/InMgeHa/VDFfTM0Wz7MAzuqEDiAW/gwNK6lPMYm4ffssF6
         R+kXNOi3KZLGyPUvkAWW1DPHojtfDJ8IkLmayxpBEK3ia8538XiXjOQ2ZEf+fZxOZkZm
         HWGUm8fWhNWBPoegXoevYegqh299FH4YzuXICZ4BNqw/W5Em4fYE/qbJTgErfi2I0oSE
         4pMXqAER+YqK4MNjx+3EIQqcf0jpoLe6D7MHSd4nZEM3qCbvWxs+ODgEYQEwF9iGiy84
         Avt0SIRU1zfkXDd+lPvAshrNCLyWBdrsGfzycl9afhoh5vaxnwjMzKMTyGg2I/ccjWDV
         IEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2Br9ECSGcdMwiOa4siNbrwlq8p7H+QpXXQM4pNiLwHA=;
        b=1CVpFQcSY3B/1BXP9dKrGbzTdq/9PV/ic1SUEcHcu4InGJNOJSfCT5bEqzof9ribdS
         C/WJgLcbT4o7zLfu6QP1vJA+WDTxVeL3UVMIa/4UeACFtQjVLpWeuwMnab7fp7z4gduB
         wXbuoNDeDMbnxw6K7akV+AWsacPhbMidEGA/7s1eWZZT7PVLOwOI0Meof7n8rTYWlc7p
         56seVG5jukCntysrREcvuOFvki9ojEjQvNTD/niGQv8Y+xgHrM+KOUSF385QYKYMJ82n
         go1Nz5Tup4x75EUg6J8iEnlEKjvGc7lbzBR7IaGC873jRdZHHQ0kvmVUjZOdOThobAVT
         n55A==
X-Gm-Message-State: AOAM530giYmYf5Rsu8EJRwa/Ve7xH3p3lJFpooQ6NktxRnS0ZeTLG/xP
	G7mVpA16kEUXP6YM2IYAgn0r2uBkfQPYAAiiQdYbog==
X-Google-Smtp-Source: ABdhPJz/D+1blnYV7LyYat/qScbIso4Wz4p5Ud3tbh1grtL4WnacFKbUvRjHysAZXG68jBS4RXNn6wsSeQI2sifk084=
X-Received: by 2002:adf:e646:0:b0:1e4:a4b1:6cdf with SMTP id
 b6-20020adfe646000000b001e4a4b16cdfmr16410407wrn.205.1645458589332; Mon, 21
 Feb 2022 07:49:49 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQVHXis5xAXDKZWo5WowfzM4zKfx5gVgTvjxZ=8WKaT7cg@mail.gmail.com>
 <CAB__hTSK9qoreSo_FBt1vja8aKnyns33R2eFjaqnz6gDa2qtRQ@mail.gmail.com>
 <CAB__hTQQQp0QJ5EyNg00jxo4LViQb1x1vaZQb4O9qCtgHop02g@mail.gmail.com> <CAG16vQVrRJxwaQXCovrMuwWs5FLOY1MkD8N2K7s=tZvTiUnuGQ@mail.gmail.com>
In-Reply-To: <CAG16vQVrRJxwaQXCovrMuwWs5FLOY1MkD8N2K7s=tZvTiUnuGQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 21 Feb 2022 10:49:36 -0500
Message-ID: <CAB__hTR7fi_jc2QDWxqCFbb+AU4xVKAK-6q3F-u9CwxH=ZdXpQ@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: 5PPRJNSCWJ3E7ZHCEGXANNJ3N6EC6UT2
X-Message-ID-Hash: 5PPRJNSCWJ3E7ZHCEGXANNJ3N6EC6UT2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom block drop received packages
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5PPRJNSCWJ3E7ZHCEGXANNJ3N6EC6UT2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4803921319476669853=="

--===============4803921319476669853==
Content-Type: multipart/alternative; boundary="000000000000b69da605d8892e34"

--000000000000b69da605d8892e34
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maria,
A few remarks:

   - If you wrote a custom block controller for your custom block, then the
   forwarding policy should already be correct (one-to-one) by default (unl=
ess
   your custom block controller specifically set the policy to DROP). On th=
e
   other hand, if you did not write a custom block controller (thus relying=
 on
   the UHD default block controller), then this explains the issue because =
in
   that case the default policy is "drop" (which will cause the issue you a=
re
   seeing). Note that the default behavior of DROP for the default block
   controller has been changed to ONE_TO_ONE on the 'master' branch of UHD =
but
   has not yet been changed on branch UHD-4.1.
   - So, you don't need to implement "issue_stream_cmd". You just need to
   verify that your block's action & properties forwarding policies are
   ONE_TO_ONE (which as I mentioned should be automatic if you create your =
own
   custom controller).
   - You mentioned that you used rfnocmodtool to create your block
   controller. But, my concern is that this block controller is not really
   being used.  If you run uhd_usrp_probe, does your block show up with a
   custom name (that you specified) or does it show up as "Block#0". If it
   shows with the generic name "Block#0" it means that UHD is not using you=
r
   block controller and instead using the default block controller (which
   DROPs forwarding on UHD 4.1).  So, if this is the case for you, that is =
the
   issue that needs to be solved.  Unfortunately, I don't know the best way=
 to
   solve this because I don't use rfnoc_mod_tool.  Take a look at the gain
   block controller
   <https://github.com/EttusResearch/uhd/blob/UHD-4.1/host/examples/rfnoc-e=
xample/lib/gain_block_control.cpp>
   in the uhd/host/examples/rfnoc-example/ folder.  Note that this example
   does very little (empty constructor).  At the bottom is a string
   identifying the block which is the string that will be shown with
   uhd_usrp_probe if UHD is using your block controller.

Let me know if this is the issue. Once you get uhd_usrp_probe to "see" your
block controller, your problem should be solved. If you can't get this to
work, let me know.
Rob

On Mon, Feb 21, 2022 at 4:41 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote=
:

> Hi Rob,
>
> Thanks for the answer.
>
> I have checked rfnoc_rx_streamer.cpp, ddc_block_control.cpp and my
> custom block controller in uhd/host/lib folder, and I search for
> "issue_stream_cmd" in them.
>
> In the rx_streamer one I see this function:
>
> void rfnoc_rx_streamer::issue_stream_cmd(const stream_cmd_t& stream_cmd)
>> {
>>     if (get_num_channels() > 1 and stream_cmd.stream_now
>>         and stream_cmd.stream_mode !=3D
>> stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS) {
>>         throw uhd::runtime_error(
>>             "Invalid recv stream command - stream now on multiple
>> channels in a "
>>             "single streamer will fail to time align.");
>>     }
>
>
>     auto cmd        =3D stream_cmd_action_info::make(stream_cmd.stream_mo=
de);
>>     cmd->stream_cmd =3D stream_cmd;
>
>
>     for (size_t i =3D 0; i < get_num_channels(); i++) {
>>         const res_source_info info(res_source_info::INPUT_EDGE, i);
>>         post_action(info, cmd);
>>     }
>> }
>
>
> While in the ddc I see this:
>
>      void issue_stream_cmd(const uhd::stream_cmd_t& stream_cmd, const
>> size_t port)
>>     {
>>         RFNOC_LOG_TRACE("issue_stream_cmd(stream_mode=3D" <<
>> char(stream_cmd.stream_mode)
>>                                                         << ", port=3D" <=
<
>> port);
>>         res_source_info dst_edge{res_source_info::OUTPUT_EDGE, port};
>>         auto new_action        =3D
>> stream_cmd_action_info::make(stream_cmd.stream_mode);
>>         new_action->stream_cmd =3D stream_cmd;
>>         issue_stream_cmd_action_handler(dst_edge, new_action);
>>     }
>
>
> There's no "issue_stream_cmd" on my block controller, so maybe as you sai=
d
> the block is not forwarding actions. I'm not very familiar with controlle=
r
> files, so could you please tell me which changes I must do to have my blo=
ck
> forwarding actions or point me out to any example to take as a reference?=
 I
> created my block using rfnocmodtool and follow the gain example, so I gue=
ss
> this example is not forwarding actions either.
>
> By the way, how can I stream from DDC in a GNURadiograph? If DDC is on th=
e
> FPGA side, I have to cross to the host domain through a streamer, don't I=
?
>
> Kind Regards,
>
> Maria
>
>
>
> El vie, 18 feb 2022 a las 15:14, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:
>
>> By the way, if your custom FPGA block was truly the problem (blocking
>> streaming), the Rx LED should be on and you should be getting lots of
>> Overflow. Since this is not happening, it is a good indication that the =
Rx
>> Radio is never starting.
>>
>> On Fri, Feb 18, 2022 at 9:10 AM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi Maria,
>>> The issue is likely related to "action forwarding" of the streaming
>>> command. When your application asks to start streaming, it typically do=
es
>>> so by calling rx_streamer->issue_stream_cmd().  This "action" will then=
 be
>>> forwarded to the next upstream block controller (typically DDC block
>>> controller) which will see the command and forward it to the next upstr=
eam
>>> block controller (typically the Rx radio controller).  The Rx radio blo=
ck
>>> controller will then start the streaming.  As an example, let's say you=
r
>>> rx_streamer requested a fixed number of samples (say 1000) and assume t=
hat
>>> your DDC decimation is 4.  With this architecture, the DDC block contro=
ller
>>> can intercept the action and change the requested number of samples fro=
m
>>> 1000 to 4000 so that when the radio block controller receives the comma=
nd,
>>> it will stream for exactly 4000 samples (which will provide 1000 sample=
s
>>> out of the DDC). Note that all of this "action" propagation occurs in U=
HD
>>> land (not on the FPGA).  So, if your custom block controller is not
>>> forwarding actions, the Radio controller never gets the action and thus
>>> never starts the streaming.  One way you can verify this is if you are =
able
>>> to call issue_stream_cmd() from the DDC controller rather than the
>>> rx_streamer.  This should cause your streaming to start.
>>> Rob
>>>
>>> On Fri, Feb 18, 2022 at 8:13 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> w=
rote:
>>>
>>>> Hi all,
>>>>
>>>> I'm using a USRP E320 with UHD 4.0 and GNURadio 3.8 for receiving
>>>> samples through an RX RFNoC Radio block and performing some processing=
 in a
>>>> custom RFNoC block.
>>>> I have created my block using rfnocmodtool, modifying the Verilog and
>>>> yml files for my custom block. I left the cpp and hpp files as default=
, but
>>>> I copied them to the UHD install path to see the name of my block with
>>>> uhd_usrp_probe.
>>>> I have tested satisfactorily my custom block with a gnuradio graph lik=
e
>>>> this:
>>>>
>>>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> rfnoc r=
x
>>>> streamer =3D> Host block
>>>>
>>>> I have also tested it for transmission through the rfnoc tx radio, and
>>>> works fine:
>>>>
>>>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> RFNoC D=
UC=3D>
>>>> RFNoC TX Radio
>>>>
>>>> But when I try to receive from the radio with the following graph, rx
>>>> led does not light up and gnuradio give time out:
>>>> RFNoC RX Radio =3D>  RFNoC DDC   =3D> custom RFNoC block =3D>  rfnoc r=
x
>>>> streamer =3D>Host block
>>>>
>>>> If I remove my custom block from the last graph, I can receive samples
>>>> and the led is on.
>>>>
>>>> It seems like the custom block is blocking somehow the samples. I trie=
d
>>>> with different sampling rates and spp values for the radio but nothing
>>>> works.
>>>>
>>>> Any help on this will be appreciated.
>>>>
>>>> Kind Regards,
>>>>
>>>> Maria
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--000000000000b69da605d8892e34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Maria,</div><div>A few remarks:</div><div><ul><li>=
If you wrote a custom block controller for your custom block, then the forw=
arding policy should already be correct (one-to-one) by default (unless you=
r custom block controller specifically set the policy to DROP). On the othe=
r hand, if you did not write a custom block controller (thus relying on the=
 UHD default block controller), then this explains the issue because in tha=
t case the default policy is &quot;drop&quot; (which will cause the issue y=
ou are seeing). Note that the default behavior of DROP for the default bloc=
k controller has been changed to ONE_TO_ONE on the &#39;master&#39; branch =
of UHD but has not yet been changed on branch UHD-4.1.<br></li><li>So, you =
don&#39;t need to implement &quot;issue_stream_cmd&quot;. You just need to =
verify that your block&#39;s action &amp; properties forwarding policies ar=
e ONE_TO_ONE (which as I mentioned should be automatic if you create your o=
wn custom controller).</li><li>You mentioned that you used rfnocmodtool to =
create your block controller. But, my concern is that this block controller=
 is not really being used.=C2=A0 If you run uhd_usrp_probe, does your block=
 show up with a custom name (that you specified) or does it show up as &quo=
t;Block#0&quot;. If it shows with the generic name &quot;Block#0&quot; it m=
eans that UHD is not using your block controller and instead using the defa=
ult block controller (which DROPs forwarding on UHD 4.1).=C2=A0 So, if this=
 is the case for you, that is the issue that needs to be solved.=C2=A0 Unfo=
rtunately, I don&#39;t know the best way to solve this because I don&#39;t =
use rfnoc_mod_tool.=C2=A0 Take a look at the <a href=3D"https://github.com/=
EttusResearch/uhd/blob/UHD-4.1/host/examples/rfnoc-example/lib/gain_block_c=
ontrol.cpp">gain block controller</a> in the uhd/host/examples/rfnoc-exampl=
e/ folder.=C2=A0 Note that this example does very little (empty constructor=
).=C2=A0 At the bottom is a string identifying the block which is the strin=
g that will be shown with uhd_usrp_probe if UHD is using your block control=
ler.=C2=A0</li></ul><div>Let me know if this is the issue. Once you get uhd=
_usrp_probe to &quot;see&quot; your block controller, your problem should b=
e solved. If you can&#39;t get this to work, let me know.</div><div>Rob</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, Feb 21, 2022 at 4:41 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:ma=
muki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi R=
ob,<div><br></div><div>Thanks for the answer.</div><div><br></div><div>I ha=
ve checked rfnoc_rx_streamer.cpp, ddc_block_control.cpp and my custom=C2=A0=
block controller in uhd/host/lib folder, and I search for &quot;issue_strea=
m_cmd&quot; in them.=C2=A0</div><div><br>In the rx_streamer one I see this =
function:</div><div><br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">v=
oid rfnoc_rx_streamer::issue_stream_cmd(const stream_cmd_t&amp; stream_cmd)=
<br>{<br>=C2=A0 =C2=A0 if (get_num_channels() &gt; 1 and stream_cmd.stream_=
now<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 and stream_cmd.stream_mode !=3D stream_c=
md_t::STREAM_MODE_STOP_CONTINUOUS) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 throw u=
hd::runtime_error(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Inval=
id recv stream command - stream now on multiple channels in a &quot;<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;single streamer will fail to t=
ime align.&quot;);<br>=C2=A0 =C2=A0 }</blockquote><br><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">=C2=A0 =C2=A0 auto cmd =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D stream_cmd_action_info::make(stream_cmd.stream_mode);<br>=C2=A0 =
=C2=A0 cmd-&gt;stream_cmd =3D stream_cmd;</blockquote><br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">=C2=A0 =C2=A0 for (size_t i =3D 0; i &lt; =
get_num_channels(); i++) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 const res_source_=
info info(res_source_info::INPUT_EDGE, i);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 p=
ost_action(info, cmd);<br>=C2=A0 =C2=A0 }<br>}</blockquote><div><br></div><=
div>While in the ddc I see this:</div><div><br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">=C2=A0 =C2=A0 =C2=A0void issue_stream_cmd(const=
 uhd::stream_cmd_t&amp; stream_cmd, const size_t port)<br>=C2=A0 =C2=A0 {<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RFNOC_LOG_TRACE(&quot;issue_stream_cmd(stream=
_mode=3D&quot; &lt;&lt; char(stream_cmd.stream_mode)<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt; &quot;, port=3D&quot; &lt;&lt; por=
t);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 res_source_info dst_edge{res_source_info=
::OUTPUT_EDGE, port};<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 auto new_action =C2=A0=
 =C2=A0 =C2=A0 =C2=A0=3D stream_cmd_action_info::make(stream_cmd.stream_mod=
e);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 new_action-&gt;stream_cmd =3D stream_cmd=
;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 issue_stream_cmd_action_handler(dst_edge, =
new_action);<br>=C2=A0 =C2=A0 }</blockquote><div><br></div><div>There&#39;s=
 no &quot;issue_stream_cmd&quot; on my block controller, so maybe as you sa=
id the block is not forwarding actions. I&#39;m not very familiar with cont=
roller files, so could you please tell me which changes I must do to have m=
y block forwarding actions or point me out to any example to take as a refe=
rence? I created my block using rfnocmodtool and follow the gain example, s=
o I guess this example is not forwarding actions either.</div><div><br></di=
v><div>By the way, how can I stream from DDC in a GNURadiograph? If DDC is =
on the FPGA side, I have to cross to the host domain through a streamer, do=
n&#39;t I?</div><div><br></div><div>Kind Regards,</div><div><br></div><div>=
Maria</div><div><br></div><div>=C2=A0</div></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El vie, 18 feb 2022 a las =
15:14, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank=
">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">By the way, if your custom FPGA =
block was truly the problem (blocking streaming), the Rx LED should be on a=
nd you should be getting lots of Overflow. Since this is not happening, it =
is a good indication that the Rx Radio is never starting.</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18, 20=
22 at 9:10 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"=
_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</div><div>The issue =
is likely related to &quot;action forwarding&quot; of the streaming command=
. When your application asks to start streaming, it typically does so by ca=
lling rx_streamer-&gt;issue_stream_cmd().=C2=A0 This &quot;action&quot; wil=
l then be forwarded to the next upstream block controller (typically DDC bl=
ock controller) which will see the command and forward=C2=A0it to the next =
upstream block controller (typically the Rx radio controller).=C2=A0 The Rx=
 radio block controller will then start the streaming.=C2=A0 As an example,=
 let&#39;s say your rx_streamer requested a fixed number of samples (say 10=
00) and assume that your DDC decimation is 4.=C2=A0 With this architecture,=
 the DDC block controller can intercept the action and change the requested=
 number of samples from 1000 to 4000 so that when the radio block controlle=
r receives the command, it will stream for exactly 4000 samples (which will=
 provide 1000 samples out of the DDC). Note that all of this &quot;action&q=
uot; propagation occurs in UHD land (not on the FPGA).=C2=A0 So, if your cu=
stom block controller is not forwarding actions, the Radio controller never=
 gets the action and thus never starts the streaming.=C2=A0 One way you can=
 verify this is if you are able to call issue_stream_cmd() from the DDC con=
troller rather than the rx_streamer.=C2=A0 This should cause your streaming=
 to start.=C2=A0</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18, 2022 at 8:13 AM Maria Mu=C3=
=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m using a USRP=
 E320 with UHD 4.0 and GNURadio 3.8 for receiving samples=C2=A0through=C2=
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
</blockquote></div></div>

--000000000000b69da605d8892e34--

--===============4803921319476669853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4803921319476669853==--
