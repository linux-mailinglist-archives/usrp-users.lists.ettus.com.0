Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7927A355467
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 14:59:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 668F3383CA6
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 08:59:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="PotURgQC";
	dkim-atps=neutral
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 4C651383A72
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 08:59:09 -0400 (EDT)
Received: by mail-oi1-f178.google.com with SMTP id i3so14957883oik.7
        for <usrp-users@lists.ettus.com>; Tue, 06 Apr 2021 05:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K/yueJ5yx7PXtbBS0wFgea4bN0x1iuhY8JG5OOBsVTc=;
        b=PotURgQCuaY8VhEbCIgLkevnv692UIPVkCjjfDaZXrXUbPEscOxkij+Mrvcdmeh60D
         t/zhNjYwPjE0uNAtpSptjmx1doMXPAGYJ7F6+OlPRWjdVtvf7TjSQ4kUi7TDR07qVZmf
         MMKx5prFJWJcjlBiLlaMFsnYPzJHJlF8t6dRsQCkgzcRZQVTrx6XtmfvqVDMmSugNGEU
         PuVCEiNclLR7wGR5aW331BKOkZRB6CaVU0HUVpxqVYi20YX2uJGyKqaTGiFcZ4JFos+d
         dyhSsasVA3MqTkCYhfzG9Ev401b0FnMVpa0is7lxosErb08R6UGU6vbtd108AzLx1FaZ
         kiOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K/yueJ5yx7PXtbBS0wFgea4bN0x1iuhY8JG5OOBsVTc=;
        b=XgKHEVLcka3g2hGsNdHWGnufXz7B5kxnsLToeqlWYtSobXfoAlyZlRcQ/CuGiNu0g/
         0NXeTWUvIPM3ngIC1syOAyb8XHEbDd276p+dUBH8DKBUhwB+fAN/F37Qm4olwA7woHmN
         yquLVuI10A7hh3dOnbvr2IGLfa+HR8ojHRLVIHW/eAmwuxnEogsx7zwl6upt1TxWR7Qk
         tNtNS6zG9gmvksWgRHd9I3Q6J0BL/jj9T+4ac52jb1ewn8zYDBtG1C0Edr1U1V9aYwP2
         cmqERpCYgYENF0eFKOWSfAH76gK5RLTCT2p/Fk7TtfmYCo0PuZe5BJ2P5RmtMuP919xd
         fosQ==
X-Gm-Message-State: AOAM533rDFaBsrUsfNwIWZ24svhYXn2xft6nma2e9kcoqI69ijvZzVT4
	68cKKK4Wt8a0cCjFvj/PqHlYzNHvh2O2NSjm876XRQ==
X-Google-Smtp-Source: ABdhPJzMoCxZmkcc2e9aA8cZpT9HUV8kvt+EJ66sl5Hnj/+DVU6owXDrHKSJQxj6gB0wpMG4hF1NIIuzFstYgRYrsUY=
X-Received: by 2002:aca:1814:: with SMTP id h20mr3132314oih.150.1617713948315;
 Tue, 06 Apr 2021 05:59:08 -0700 (PDT)
MIME-Version: 1.0
References: <1e8db183-4501-3f1d-57e4-2a13de806012@intecs.it>
In-Reply-To: <1e8db183-4501-3f1d-57e4-2a13de806012@intecs.it>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 6 Apr 2021 08:58:57 -0400
Message-ID: <CAB__hTQCKvaawxqqYGuxhrbR11tbLObDQpRCAix4LsGEC2GvjQ@mail.gmail.com>
To: Luca Oliva <luca.oliva@intecs.it>
Message-ID-Hash: PY4F6EBVCZPPJA2EVZ2WCFARA7OX3TX2
X-Message-ID-Hash: PY4F6EBVCZPPJA2EVZ2WCFARA7OX3TX2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RfNoc SplitStream and FFT
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PY4F6EBVCZPPJA2EVZ2WCFARA7OX3TX2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9131453114115226746=="

--===============9131453114115226746==
Content-Type: multipart/alternative; boundary="0000000000003d0e4b05bf4d6166"

--0000000000003d0e4b05bf4d6166
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Luca,
I don't know the overall solution, but I have some comments about using the
FFT block.  I have never had success with this block unless I ensure that
the block never receives a "partial FFT" block of samples.

One way to ensure this is to use the DDC block (Radio->DDC->FFT) and you
set the radio SPP equal to the FFT length.  The only purpose of the DDC in
this case is that it only processes "full packets" and discards the final
"partial packet". Thus, it will ensure that the FFT also receives only full
packets.

Another way to ensure this is to use the NUM_SAMPS_AND_DONE you mentioned.
As long as this number is a multiple of the FFT size, it should be fine for
the FFT block.  I'm not sure why you were getting the Late error.

When you use CONTINUOUS mode, you are basically ensuring that the FFT will
work fine the first time but then partially fill with the trailing
samples.  The next time you start, the FFT block will complete the filling
process, but your data will be misaligned.  Perhaps you could use the
"fft_reset" functionality to reset the block every time but this will
likely mean that you need to re-configure the FFT length, scale, direction,
etc.
Rob

On Tue, Apr 6, 2021 at 6:31 AM Luca Oliva <luca.oliva@intecs.it> wrote:

> Hi,
>
> I've an Ettus E310 with UHD 3.13.1.0
>
>
> I need to receive some samples both in time domain than frequency
> domain. I=E2=80=99m trying to do that using this rfnoc graph:
>
> +---------+        +--------------+
> |         |        |              |---------------------> RxStreamer Ch 0
> | Radio   |------->| SplitStream  |       +-------+
> |         |        |              |------>| FFT   |-----> RxStreamer Ch 1
> +---------+        +--------------+       +-------+
>
>
> uhd::rfnoc::block_id_t radio_ctrl_id(0, "Radio", 0);
> uhd::rfnoc::block_id_t split_ctrl_id(0, "SplitStream", 0);
> uhd::rfnoc::block_id_t fft_ctrl_id(0, "FFT", 0);
>
> uhd::rfnoc::source_block_ctrl_base::sptr fft_blk_ctrl =3D
> m_Usrp->get_block_ctrl<uhd::rfnoc::source_block_ctrl_base>(fft_ctrl_id);
>
> m_RadioCtrl =3D m_Usrp->get_block_ctrl< uhd::rfnoc::radio_ctrl
>  >(radio_ctrl_id);
> m_RadioCtrl->set_rate(16e6);
> m_RadioCtrl->set_arg<int>("spp", 2048);
> fft_blk_ctrl->set_arg<int>("spp", 2048);
>
> m_Usrp->clear();
>
> m_Graph =3D m_Usrp->create_graph("rfnoc_rx");
> m_Graph->connect(radio_ctrl_id, 0, split_ctrl_id, 0);
> m_Graph->connect(split_ctrl_id, 1, fft_ctrl_id, 0);
>
> uhd::device_addr_t streamer_args("");
> streamer_args["block_id0"] =3D split_ctrl_id.to_string();
> streamer_args["block_port0"] =3D str(boost::format("%d") % 0);
> streamer_args["block_id1"] =3D fft_ctrl_id.to_string();
> streamer_args["block_port1"] =3D str(boost::format("%d") % 0);
>
> uhd::stream_args_t stream_args_fc32("sc16", "sc16");
> stream_args_fc32.channels =3D { 0, 1 };
> stream_args_fc32.args =3D streamer_args;
> stream_args_fc32.args["spp"] =3D boost::lexical_cast<std::string>(2048);
> m_RxStreamerFc32 =3D m_Usrp->get_rx_stream(stream_args_fc32);
>
> I need to receive a burst in a precise moment, elaborate it and restart
> on a different frequency (I need also to change radio channel because
> I've two different antennas).
>
> I've tried
>
> uhd::stream_cmd_t
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
> stream_cmd.num_samps =3D size_t(nBurstLen*MAX_DIM_SAMPLES_FRAME_FOR_RSA);
> stream_cmd.stream_now =3D false;
> stream_cmd.time_spec =3D m_RadioCtrl->get_time_now()+1.0;
> m_RxStreamerFc32->issue_stream_cmd(stream_cmd);
>
> but the receive fails with ERROR_CODE_LATE_COMMAND.
>
> I've tried issuing the STREAM_MODE_START_CONTINUOUS command and it seems
> to work correctly until I don't send a STREAM_MODE_STOP_CONTINUOUS comman=
d.
>
> After a STREAM_MODE_STOP_CONTINUOUS command I flush the buffer with a
> receive loop:
>
> while(m_RxStreamerFc32->recv(buff, 2048, uselessMd, 0.010, false));
>
> The problem I'm observing is that since second start the FFT samples
> lost alignment with the time samples and after some stop and start the
> receive fails often with Overflow errors and than stops definitely to
> work with Timeout errors
>
> Someone else have this problem?
>
>
> Regards,
>
> Luca
>
>
> LEGAL DISCLAIMER:
> The contents of this email and any transmitted files are confidential and
> intended solely for the use of the individual or entity to whom they are
> addressed. We hereby exclude any warranty and any liability as to the
> quality or accuracy of the contents of this email and any attached
> transmitted files. If you are not the intended recipient, be advised that
> you have received this email in error and that any use, dissemination,
> forwarding, printing or copying of this email is strictly prohibited. If
> you have received this email in error please contact the sender and delet=
e
> the material from any computer.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003d0e4b05bf4d6166
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Luca,<div>I don&#39;t know the overall=
 solution, but I have some comments about using the FFT block.=C2=A0 I have=
 never had success with this block unless I ensure that the block never rec=
eives a &quot;partial FFT&quot; block of samples.=C2=A0=C2=A0</div><div><br=
></div><div>One way to ensure this is to use the DDC block (Radio-&gt;DDC-&=
gt;FFT) and you set the radio SPP equal to the FFT length.=C2=A0 The only p=
urpose of the DDC in this case is that it only processes &quot;full packets=
&quot; and discards the final &quot;partial packet&quot;. Thus, it will ens=
ure that the FFT also receives only full packets.</div><div><br></div><div>=
Another way to ensure this is to use the NUM_SAMPS_AND_DONE you mentioned.=
=C2=A0 As long as this number is a multiple of the FFT size, it should be f=
ine for the FFT block.=C2=A0 I&#39;m not sure why you were getting the Late=
 error.</div><div><br></div><div>When you use CONTINUOUS mode, you are basi=
cally ensuring that the FFT will work fine the first time but then partiall=
y fill with the trailing samples.=C2=A0 The next time you start, the FFT bl=
ock will complete the filling process, but your data will be misaligned.=C2=
=A0 Perhaps you could use the &quot;fft_reset&quot; functionality to reset =
the block every time but this will likely mean that you need to re-configur=
e the FFT length, scale, direction, etc.</div><div>Rob</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 6, =
2021 at 6:31 AM Luca Oliva &lt;<a href=3D"mailto:luca.oliva@intecs.it">luca=
.oliva@intecs.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi,<br>
<br>
I&#39;ve an Ettus E310 with UHD 3.13.1.0<br>
<br>
<br>
I need to receive some samples both in time domain than frequency <br>
domain. I=E2=80=99m trying to do that using this rfnoc graph:<br>
<br>
+---------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +--------------+<br>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |---------------------&gt; RxStreamer Ch 0<br>
| Radio=C2=A0=C2=A0 |-------&gt;| SplitStream=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 +-------+<br>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |------&gt;| FFT=C2=A0=C2=A0 |-----&gt; RxStreamer=
 Ch 1<br>
+---------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +--------------+=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +-------+<br>
<br>
<br>
uhd::rfnoc::block_id_t radio_ctrl_id(0, &quot;Radio&quot;, 0);<br>
uhd::rfnoc::block_id_t split_ctrl_id(0, &quot;SplitStream&quot;, 0);<br>
uhd::rfnoc::block_id_t fft_ctrl_id(0, &quot;FFT&quot;, 0);<br>
<br>
uhd::rfnoc::source_block_ctrl_base::sptr fft_blk_ctrl =3D <br>
m_Usrp-&gt;get_block_ctrl&lt;uhd::rfnoc::source_block_ctrl_base&gt;(fft_ctr=
l_id);<br>
<br>
m_RadioCtrl =3D m_Usrp-&gt;get_block_ctrl&lt; uhd::rfnoc::radio_ctrl <br>
=C2=A0&gt;(radio_ctrl_id);<br>
m_RadioCtrl-&gt;set_rate(16e6);<br>
m_RadioCtrl-&gt;set_arg&lt;int&gt;(&quot;spp&quot;, 2048);<br>
fft_blk_ctrl-&gt;set_arg&lt;int&gt;(&quot;spp&quot;, 2048);<br>
<br>
m_Usrp-&gt;clear();<br>
<br>
m_Graph =3D m_Usrp-&gt;create_graph(&quot;rfnoc_rx&quot;);<br>
m_Graph-&gt;connect(radio_ctrl_id, 0, split_ctrl_id, 0);<br>
m_Graph-&gt;connect(split_ctrl_id, 1, fft_ctrl_id, 0);<br>
<br>
uhd::device_addr_t streamer_args(&quot;&quot;);<br>
streamer_args[&quot;block_id0&quot;] =3D split_ctrl_id.to_string();<br>
streamer_args[&quot;block_port0&quot;] =3D str(boost::format(&quot;%d&quot;=
) % 0);<br>
streamer_args[&quot;block_id1&quot;] =3D fft_ctrl_id.to_string();<br>
streamer_args[&quot;block_port1&quot;] =3D str(boost::format(&quot;%d&quot;=
) % 0);<br>
<br>
uhd::stream_args_t stream_args_fc32(&quot;sc16&quot;, &quot;sc16&quot;);<br=
>
stream_args_fc32.channels =3D { 0, 1 };<br>
stream_args_fc32.args =3D streamer_args;<br>
stream_args_fc32.args[&quot;spp&quot;] =3D boost::lexical_cast&lt;std::stri=
ng&gt;(2048);<br>
m_RxStreamerFc32 =3D m_Usrp-&gt;get_rx_stream(stream_args_fc32);<br>
<br>
I need to receive a burst in a precise moment, elaborate it and restart <br=
>
on a different frequency (I need also to change radio channel because <br>
I&#39;ve two different antennas).<br>
<br>
I&#39;ve tried<br>
<br>
uhd::stream_cmd_t <br>
stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br>
stream_cmd.num_samps =3D size_t(nBurstLen*MAX_DIM_SAMPLES_FRAME_FOR_RSA);<b=
r>
stream_cmd.stream_now =3D false;<br>
stream_cmd.time_spec =3D m_RadioCtrl-&gt;get_time_now()+1.0;<br>
m_RxStreamerFc32-&gt;issue_stream_cmd(stream_cmd);<br>
<br>
but the receive fails with ERROR_CODE_LATE_COMMAND.<br>
<br>
I&#39;ve tried issuing the STREAM_MODE_START_CONTINUOUS command and it seem=
s <br>
to work correctly until I don&#39;t send a STREAM_MODE_STOP_CONTINUOUS comm=
and.<br>
<br>
After a STREAM_MODE_STOP_CONTINUOUS command I flush the buffer with a <br>
receive loop:<br>
<br>
while(m_RxStreamerFc32-&gt;recv(buff, 2048, uselessMd, 0.010, false));<br>
<br>
The problem I&#39;m observing is that since second start the FFT samples <b=
r>
lost alignment with the time samples and after some stop and start the <br>
receive fails often with Overflow errors and than stops definitely to <br>
work with Timeout errors<br>
<br>
Someone else have this problem?<br>
<br>
<br>
Regards,<br>
<br>
Luca<br>
<br>
<br>
LEGAL DISCLAIMER:<br>
The contents of this email and any transmitted files are confidential and i=
ntended solely for the use of the individual or entity to whom they are add=
ressed. We hereby exclude any warranty and any liability as to the quality =
or accuracy of the contents of this email and any attached transmitted file=
s. If you are not the intended recipient, be advised that you have received=
 this email in error and that any use, dissemination, forwarding, printing =
or copying of this email is strictly prohibited. If you have received this =
email in error please contact the sender and delete the material from any c=
omputer.<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000003d0e4b05bf4d6166--

--===============9131453114115226746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9131453114115226746==--
