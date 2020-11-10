Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F892ADE67
	for <lists+usrp-users@lfdr.de>; Tue, 10 Nov 2020 19:33:30 +0100 (CET)
Received: from [::1] (port=40822 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcYSM-0005XR-Cs; Tue, 10 Nov 2020 13:33:26 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:40170)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kcYSI-0005S2-DF
 for usrp-users@lists.ettus.com; Tue, 10 Nov 2020 13:33:22 -0500
Received: by mail-oi1-f173.google.com with SMTP id m143so15482461oig.7
 for <usrp-users@lists.ettus.com>; Tue, 10 Nov 2020 10:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t4/k5eXBzastY3H4T6lWwwdAKuZSa1UcLQZQLlf9cLc=;
 b=Md+r3c3iSDxT1/zp7EwiWFYL5xl6HHAPMOXKlUGm0LGazm3sDPr8Ojt8rzamQlwGpl
 SMHo4J5FI++/2wiE/f6oODtCTddHE6vZgkej2DAzA93LPmEb1nIXhcrDWqEwAoNBZCUG
 wFAzeNJuZXXdxNLWB1+SF4oagULkB480mdzZLJ5eHrl8gJofipUotXOFqCg7FpRDggbf
 /RqsLxH11HMu0oZXUCs5nLLVYJG1zxRc9+Ol0lo4biQxk9BG7P8Ia7F6z//4mipst4X0
 ZIVHKaj+calWzjC5yEDNvz6HdqZrTrklTRpCGviP1b0oPd5dWV4fv1krxVjoDOHw2rui
 NMmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t4/k5eXBzastY3H4T6lWwwdAKuZSa1UcLQZQLlf9cLc=;
 b=kROXdXm8sa9bqc1/nrdZtmlRJiPl1W/nu43JCFZXLvwhwiDj8XOrKWX6uh2bWA5JxA
 fhVd3vu6QRLHIVHVWEflsNnZoThO+qlMRsO0GvnlOoP5y6rmGzbe/0ynIa7KhPEOvb75
 fowkDeZB28KEptQA021+Ez4RXZorlQt2UM8VoH3qqptiX0lweH9kbln42vwxmK3pyRf0
 AhBHMoR0snxFUJjpWO6K97so+5CY+A2nKyWg/gl0dUOpFaQJa9epEVKgtJ4+Q2sYLsF8
 8sA2yVJf2VNRt2GTIYbXA64XYZ7m8ESaER2JH+f8njb7XzBx28ZxekgqTyAUlj/tNlGt
 asTw==
X-Gm-Message-State: AOAM530VX9g8+Pr81c4n6b6tELBn9ZsccpAz+mmc3j/37jMsCNY424wf
 Emeyiy++MPKUep0KwvGXwLzqHgKyqwkQ/qQW3OYJPw==
X-Google-Smtp-Source: ABdhPJwPzT0WO/m/RNCTe3JEokc77eK3dIBeA6adb4XTMscCvZNsSBnEnaYwqB3jqFOKJGA5lycjAgrBr8PL623drm4=
X-Received: by 2002:aca:5c82:: with SMTP id q124mr287453oib.33.1605033161486; 
 Tue, 10 Nov 2020 10:32:41 -0800 (PST)
MIME-Version: 1.0
References: <CAOx6OK0Mz1E1MRyi1LxBo4MuGjsye_J6g+w3Z3FSoeaZABTfAA@mail.gmail.com>
 <CAB__hTTwqjd==Aj=S-w17t48vSMM3KdCWwMeCmnBHZV+qQhgAw@mail.gmail.com>
 <CAOx6OK2XjgoCGoRydFs+AP30HdK33n-PHjMfv960L8QYhtk5TA@mail.gmail.com>
In-Reply-To: <CAOx6OK2XjgoCGoRydFs+AP30HdK33n-PHjMfv960L8QYhtk5TA@mail.gmail.com>
Date: Tue, 10 Nov 2020 13:32:30 -0500
Message-ID: <CAB__hTR7rd9AChyU-9u4J_Kz6C4c_nLKoE5a+sWDT83T85qipA@mail.gmail.com>
To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC loopback without radio cores in C++
 (UHD-3.15.LTS)
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
Content-Type: multipart/mixed; boundary="===============0987693437247614594=="
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

--===============0987693437247614594==
Content-Type: multipart/alternative; boundary="00000000000071b58505b3c4e796"

--00000000000071b58505b3c4e796
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jorge,
I don't immediately see what the problem is.  I can tell you that it is
certainly possible to do what you are doing.  You can do so with as few as
one rfnoc block or you can use a chain.  I have done this often.
Typically, after I verify my custom rfnoc block with a testbench, I will
build the new FPGA image and then test my block alone in a very similar
test case to the testbench such that the flow is host -> my_block -> host.

One thing you might try is to enable additional UHD logging so that you can
see DEBUG and TRACE logging messages.  Perhaps that will provide a better
indication regarding your "No upstream blocks" log message.  It would be
nice to know which block is missing a connection.
Rob

On Tue, Nov 10, 2020 at 4:44 AM Jorge Arroyo Giganto <jarroyo@gradiant.org>
wrote:

> Hi Rob,
>
> Thank you for your quick response. I'm sorry if I didn't specifically
> mention that. I did connect the blocks calling the connect() function lik=
e
> so:
>
>     uhd::rfnoc::graph::sptr txrx_graph =3D usrp3->create_graph("txrx");
>     usrp3->clear();
>     txrx_graph->connect(dmafifo_blockid, 0, gain_blockid, 0);
>
> Where "dmafifo_blockid" and "gain_blockid" come from:
>
>     uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args=
);
>     uhd::device3::sptr usrp3 =3D usrp->get_device3();
>     uhd::rfnoc::dma_fifo_block_ctrl::sptr dmafifo_block_ctrl =3D
> usrp3->get_block_ctrl<uhd::rfnoc::dma_fifo_block_ctrl>(uhd::rfnoc::block_=
id_t(0,
> "DmaFIFO"));
>     uhd::rfnoc::block_ctrl_base::sptr gain_block_ctrl =3D
> usrp3->get_block_ctrl(uhd::rfnoc::block_id_t(0, "gain"));
>     std::string dmafifo_blockid =3D dmafifo_block_ctrl->get_block_id();
>     std::string gain_blockid =3D gain_block_ctrl->get_block_id();
>
> I also tried connecting a FIFO after the gain block (
> txrx_graph->connect(gain_blockid, 0, fifo_blockid, 0);) and telling the
> rx_streamer to use that block, but the result looked the same.
>
> Thanks again,
>
> Jorge
>
> El lun., 9 nov. 2020 a las 20:33, Rob Kossler (<rkossler@nd.edu>)
> escribi=C3=B3:
>
>> Hi Jorge,
>> I don't see any indication that you are calling the Connect() function t=
o
>> connect the RFNoC blocks in the FPGA.
>> Rob
>>
>> On Mon, Nov 9, 2020 at 1:35 PM Jorge Arroyo Giganto via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi all,
>>>
>>> After testing a loopback in GNU Radio with a custom block (the gain
>>> example from the Getting Started with RFNoC guide), I managed to get th=
e
>>> samples going from the host to the "RFNoC domain" and back to the host,
>>> without involving the radio cores at all. My flowgraph was Signal Sourc=
e
>>> (Host) -> RFNoC: DmaFIFO -> RFNoC: gain -> QT GUI Freq Sink (Host), and
>>> everything worked fine, so I know that what I'm trying to do is possibl=
e.
>>>
>>> I have also made examples in UHD with C++ transmitting (Host -> TX
>>> Radio) and receiving (RX Radio -> Host) using the custom RFNoC block in=
 the
>>> graph, by modifying the tx_waveforms and rfnoc_rx_to_file examples, and
>>> everything worked fine as well, I checked that all of the examples had =
a
>>> resulting signal that looked like it was expected.
>>>
>>> Now, I would like to replicate in UHD with C++ something similar to wha=
t
>>> I have in GNU Radio, a loopback using the RFNoC custom block but withou=
t
>>> involving the radio cores, basically: Host -> RFNoC -> Host. Right now =
my
>>> approach is to have a graph looking like Host TX -> DmaFIFO -> Gain Cus=
tom
>>> -> Host RX, I am configuring the tx and rx streamers this way:
>>>
>>> uhd::device_addr_t tx_streamer_args;
>>> uhd::stream_args_t tx_stream_args("fc32", "sc16");
>>> tx_streamer_args["block_id"] =3D dmafifo_blockid;
>>> tx_streamer_args["block_port"] =3D "0";
>>> tx_stream_args.args =3D tx_streamer_args;
>>> tx_stream_args.args["spp"] =3D boost::lexical_cast<std::string>(spp);
>>> //spp=3D364
>>> uhd::tx_streamer::sptr tx_stream =3D usrp3->get_tx_stream(tx_stream_arg=
s);
>>>
>>> ----
>>>
>>> uhd::device_addr_t rx_streamer_args;
>>> uhd::stream_args_t rx_stream_args("fc32", "sc16");
>>> rx_streamer_args["block_id"] =3D gain_blockid;
>>> rx_streamer_args["block_port"] =3D "0";
>>> rx_stream_args.args["spp"] =3D boost::lexical_cast<std::string>(spp);
>>> rx_stream_args.args =3D rx_streamer_args;
>>> uhd::rx_streamer::sptr rx_stream =3D usrp->get_rx_stream(rx_stream_args=
);
>>>
>>> I'm creating a thread that continuously sends (send()) samples to the
>>> DmaFIFO, and then I try to do the recv() until I get something, but I
>>> always get a timeout. It's like if the samples aren't flowing through t=
he
>>> blocks, or like if I'm not doing the recv() right. Also, I'm getting a
>>> strange warning ([INFO] [RFNOC] No upstream blocks.) that I don't
>>> understand quite well in this context, does it have anything to do with=
 the
>>> fact that I'm not using the radio cores? I have also tried to put a FIF=
O
>>> after the Gain block but I get pretty much the same result.
>>>
>>> I would appreciate any help or recommendations on how to achieve in C++
>>> this idea of Host TX -> RFNoC -> Host RX, is there something I am missi=
ng
>>> or should consider?
>>>
>>> I am using UHD-3.15.LTS on a X310, and GNU Radio 3.7. Everything is
>>> running on Ubuntu 16.04.
>>>
>>> Thanks in advance,
>>>
>>> Jorge
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>
> --
>
> <http://www.gradiant.org>
>
> Jorge Arroyo Giganto
>
> Becario | =C3=81rea de Comunicaciones Avanzadas
>
> Intern | Advanced Communications Department
>
>
>
> jarroyo@gradiant.org  |   <http://www.gradiant.org/>www.gradiant.org
>
> [image: Iconos Redes Sociales GRD Firma email-01]
> <https://es-es.facebook.com/GradiantCT/>  [image: Iconos Redes Sociales
> GRD Firma email-02] <https://twitter.com/Gradiant>  [image: Iconos Redes
> Sociales GRD Firma email-03] <https://www.linkedin.com/company/gradiant/>
> [image: Iconos Redes Sociales GRD Firma email-04]
> <https://www.youtube.com/gradiantct>
> Take care of the environment. Try not to print this email.
> The information contained in this email message may be confidential
> information, and may also be the subject of legal professional privilege.
> If you are not the intended recipient, any use, interference with,
> disclosure or copying of this material is unauthorized and prohibited.
> Please inform us immediately and destroy the email. Thank you for your
> cooperation.
>

--00000000000071b58505b3c4e796
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Jorge,<div>I don&#39;t immediately see=
 what the problem is.=C2=A0 I can tell you that it is certainly possible to=
 do what you are doing.=C2=A0 You can do so with as few as one rfnoc block =
or you can use a chain.=C2=A0 I have done this often.=C2=A0 Typically, afte=
r I verify my custom rfnoc block with a testbench, I will build the new FPG=
A image and then test my block alone in a very similar test case to the tes=
tbench such that the flow is host -&gt; my_block -&gt; host.=C2=A0</div><di=
v><br></div><div>One thing you might try is to enable additional UHD loggin=
g so that you can see DEBUG and TRACE logging messages.=C2=A0 Perhaps that =
will provide a better indication regarding your &quot;No upstream blocks&qu=
ot; log message.=C2=A0 It would be nice to know which block is missing a co=
nnection.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Nov 10, 2020 at 4:44 AM Jorge Arroyo =
Giganto &lt;<a href=3D"mailto:jarroyo@gradiant.org">jarroyo@gradiant.org</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Thank you for your quic=
k response. I&#39;m sorry if I didn&#39;t specifically mention that. I did =
connect the blocks calling the connect() function like so:</div><br>=C2=A0=
=C2=A0=C2=A0 uhd::rfnoc::graph::sptr txrx_graph =3D usrp3-&gt;create_graph(=
&quot;txrx&quot;);<br>=C2=A0=C2=A0=C2=A0 usrp3-&gt;clear();<br><div>=C2=A0=
=C2=A0=C2=A0 txrx_graph-&gt;connect(dmafifo_blockid, 0, gain_blockid, 0);</=
div><div><br></div><div>Where &quot;dmafifo_blockid&quot; and &quot;gain_bl=
ockid&quot; come from:<br><br>=C2=A0=C2=A0=C2=A0 uhd::usrp::multi_usrp::spt=
r usrp =3D uhd::usrp::multi_usrp::make(args);<br>=C2=A0 =C2=A0 uhd::device3=
::sptr usrp3 =3D usrp-&gt;get_device3();<br>=C2=A0 =C2=A0 uhd::rfnoc::dma_f=
ifo_block_ctrl::sptr dmafifo_block_ctrl =3D usrp3-&gt;get_block_ctrl&lt;uhd=
::rfnoc::dma_fifo_block_ctrl&gt;(uhd::rfnoc::block_id_t(0, &quot;DmaFIFO&qu=
ot;));<br>=C2=A0 =C2=A0 uhd::rfnoc::block_ctrl_base::sptr gain_block_ctrl =
=3D usrp3-&gt;get_block_ctrl(uhd::rfnoc::block_id_t(0, &quot;gain&quot;));<=
br>=C2=A0 =C2=A0 std::string dmafifo_blockid =3D dmafifo_block_ctrl-&gt;get=
_block_id();<br>=C2=A0=C2=A0=C2=A0 std::string gain_blockid =3D gain_block_=
ctrl-&gt;get_block_id();</div><div><br></div><div>I also tried connecting a=
 FIFO after the gain block ( txrx_graph-&gt;connect(gain_blockid, 0, fifo_b=
lockid, 0);) and telling the rx_streamer to use that block, but the result =
looked the same.</div><div><br></div><div>Thanks again,</div><div><br></div=
><div>Jorge<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">El lun., 9 nov. 2020 a las 20:33, Rob Kossler (&lt;<a =
href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) =
escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Hi Jorge,<div>I don&#39;t see any indication that you are c=
alling the Connect() function to connect the RFNoC blocks in the FPGA.=C2=
=A0</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Nov 9, 2020 at 1:35 PM Jorge Arroyo Giganto =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi all,</div><div><=
br></div><div>After testing a loopback in GNU Radio with a custom block (th=
e gain example from the Getting Started with RFNoC guide), I managed to get=
 the samples going from the host to the &quot;RFNoC domain&quot; and back t=
o the host, without involving the radio cores at all. My flowgraph was Sign=
al Source (Host) -&gt; RFNoC: DmaFIFO -&gt; RFNoC: gain -&gt; QT GUI Freq S=
ink (Host), and everything worked fine, so I know that what I&#39;m trying =
to do is possible.</div><div><br></div><div>I have also made examples in UH=
D with C++ transmitting (Host -&gt; TX Radio) and receiving (RX Radio -&gt;=
 Host) using the custom RFNoC block in the graph, by modifying the tx_wavef=
orms and rfnoc_rx_to_file examples, and everything worked fine as well, I c=
hecked that all of the examples had a resulting signal that looked like it =
was expected.</div><br>Now, I would like to replicate in UHD with C++ somet=
hing similar to what I have in GNU Radio, a loopback using the RFNoC custom=
 block but without involving the radio cores, basically: Host -&gt; RFNoC -=
&gt; Host. Right now my approach is to have a graph looking like Host TX -&=
gt; DmaFIFO -&gt; Gain Custom -&gt; Host RX, I am configuring the tx and rx=
 streamers this way:<br><br>uhd::device_addr_t tx_streamer_args;<br>uhd::st=
ream_args_t tx_stream_args(&quot;fc32&quot;, &quot;sc16&quot;);<br>tx_strea=
mer_args[&quot;block_id&quot;] =3D dmafifo_blockid;<br>tx_streamer_args[&qu=
ot;block_port&quot;] =3D &quot;0&quot;;<br>tx_stream_args.args =3D tx_strea=
mer_args;<br>tx_stream_args.args[&quot;spp&quot;] =3D boost::lexical_cast&l=
t;std::string&gt;(spp); //spp=3D364<br>uhd::tx_streamer::sptr tx_stream =3D=
 usrp3-&gt;get_tx_stream(tx_stream_args);<br><br>----<br><br>uhd::device_ad=
dr_t rx_streamer_args;<br>uhd::stream_args_t rx_stream_args(&quot;fc32&quot=
;, &quot;sc16&quot;);<br>rx_streamer_args[&quot;block_id&quot;] =3D gain_bl=
ockid;<br>rx_streamer_args[&quot;block_port&quot;] =3D &quot;0&quot;;<br>rx=
_stream_args.args[&quot;spp&quot;] =3D boost::lexical_cast&lt;std::string&g=
t;(spp);<br>rx_stream_args.args =3D rx_streamer_args;<br><div>uhd::rx_strea=
mer::sptr rx_stream =3D usrp-&gt;get_rx_stream(rx_stream_args);</div><div><=
br></div><div>I&#39;m creating a thread that continuously sends (send()) sa=
mples to the DmaFIFO, and then I try to do the recv() until I get something=
, but I always get a timeout. It&#39;s like if the samples aren&#39;t flowi=
ng through the blocks, or like if I&#39;m not doing the recv() right. Also,=
 I&#39;m getting a strange warning ([INFO] [RFNOC] No upstream blocks.) tha=
t I don&#39;t understand quite well in this context, does it have anything =
to do with the fact that I&#39;m not using the radio cores? I have also tri=
ed to put a FIFO after the Gain block but I get pretty much the same result=
.<br></div><div><br></div><div>I would appreciate any help or recommendatio=
ns on how to achieve in C++ this idea of Host TX -&gt; RFNoC -&gt; Host RX,=
 is there something I am missing or should consider?<br></div><div><br></di=
v><div>I am using UHD-3.15.LTS on a X310, and GNU Radio 3.7. Everything is =
running on Ubuntu 16.04.</div><div><br></div><div>Thanks in advance,</div><=
div><br></div><div>Jorge<br></div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><p dir=3D"ltr" style=3D"line-height:1.5408;margin-top:0pt;margin-b=
ottom:0pt"><a href=3D"http://www.gradiant.org" style=3D"text-decoration:non=
e" target=3D"_blank"><span style=3D"font-size:7pt;font-family:Verdana;color=
:rgb(17,85,204);background-color:transparent;font-weight:400;font-style:nor=
mal;font-variant:normal;text-decoration:underline;vertical-align:baseline;w=
hite-space:pre-wrap"><span style=3D"border:medium none;display:inline-block=
;overflow:hidden;width:185px;height:120px"><img src=3D"https://lh3.googleus=
ercontent.com/83CKrYsn4pEbx82anCbaWNA23TYze9GNaxZfXXDj34YYQ9mGcdiU5XPQJmcj0=
cg-GerbIKEa01OrQXu5Qme8aSIak4HApBu7ELb1RCquH4sXdMcaTjJPaXFEGqbpa2NGQUumsw8H=
" style=3D"margin-left: 0px; margin-top: 0px;" width=3D"185" height=3D"120"=
></span></span></a></p><p dir=3D"ltr" style=3D"line-height:1.2;margin-top:0=
pt;margin-bottom:0pt"><span style=3D"font-size:10pt;font-family:Arial;color=
:rgb(235,32,38);background-color:transparent;font-weight:700;font-style:nor=
mal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-=
space:pre-wrap">Jorge Arroyo Giganto</span></p><p dir=3D"ltr" style=3D"line=
-height:1.2;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:9pt;=
font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight=
:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-al=
ign:baseline;white-space:pre-wrap">Becario | =C3=81rea de Comunicaciones Av=
anzadas</span></p><p dir=3D"ltr" style=3D"line-height:1.2;margin-top:0pt;ma=
rgin-bottom:0pt"><span style=3D"font-size:9pt;font-family:Arial;color:rgb(1=
28,128,128);background-color:transparent;font-weight:400;font-style:normal;=
font-variant:normal;text-decoration:none;vertical-align:baseline;white-spac=
e:pre-wrap">Intern | Advanced Communications Department</span></p><p dir=3D=
"ltr" style=3D"line-height:1.2;margin-top:0pt;margin-bottom:0pt"><span styl=
e=3D"font-size:9pt;font-family:Arial;color:rgb(127,127,127);background-colo=
r:transparent;font-weight:400;font-style:normal;font-variant:normal;text-de=
coration:none;vertical-align:baseline;white-space:pre-wrap">=C2=A0</span></=
p><p dir=3D"ltr" style=3D"line-height:1.2;margin-top:0pt;margin-bottom:0pt"=
><span style=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,0);background=
-color:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:norm=
al;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"><a hr=
ef=3D"mailto:jarroyo@gradiant.org" target=3D"_blank">jarroyo@gradiant.org</=
a>=C2=A0 | </span><a href=3D"http://www.gradiant.org/" style=3D"text-decora=
tion:none" target=3D"_blank"><span style=3D"font-size:9pt;font-family:Arial=
;color:rgb(0,0,0);background-color:rgb(255,255,255);font-weight:400;font-st=
yle:normal;font-variant:normal;text-decoration:none;vertical-align:baseline=
;white-space:pre-wrap">=C2=A0</span></a><a href=3D"http://www.gradiant.org"=
 style=3D"text-decoration:none" target=3D"_blank"><span style=3D"font-size:=
9pt;font-family:Arial;color:rgb(0,0,0);background-color:rgb(255,255,255);fo=
nt-weight:400;font-style:normal;font-variant:normal;text-decoration:none;ve=
rtical-align:baseline;white-space:pre-wrap">www.gradiant.org</span></a></p>=
<br><p dir=3D"ltr" style=3D"line-height:1.2;margin-top:0pt;margin-bottom:8p=
t"><a href=3D"https://es-es.facebook.com/GradiantCT/" style=3D"text-decorat=
ion:none" target=3D"_blank"><span style=3D"font-size:9pt;font-family:Arial;=
color:rgb(17,85,204);background-color:rgb(255,255,255);font-weight:400;font=
-style:normal;font-variant:normal;text-decoration:underline;vertical-align:=
baseline;white-space:pre-wrap"><span style=3D"border:medium none;display:in=
line-block;overflow:hidden;width:22px;height:22px"><img alt=3D"Iconos Redes=
 Sociales GRD Firma email-01" src=3D"https://lh3.googleusercontent.com/npZW=
EZIKE8hxiBWQn7DfzLCAdetdNJtJmEnpv02-8ab21vyZBUKswj7TCWhSWJy07FLuHrcBYMChjq_=
D7boQt88hj5shKYlnwD0w29eTa-rGJgnRWxwDL9L2b6NRgn7ckI_w1Lgi" style=3D"margin-=
left: 0px; margin-top: 0px;" width=3D"22" height=3D"22"></span></span></a><=
span style=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,0);background-c=
olor:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">=C2=A0 =
</span><a href=3D"https://twitter.com/Gradiant" style=3D"text-decoration:no=
ne" target=3D"_blank"><span style=3D"font-size:9pt;font-family:Arial;color:=
rgb(17,85,204);background-color:rgb(255,255,255);font-weight:400;font-style=
:normal;font-variant:normal;text-decoration:underline;vertical-align:baseli=
ne;white-space:pre-wrap"><span style=3D"border:medium none;display:inline-b=
lock;overflow:hidden;width:22px;height:22px"><img alt=3D"Iconos Redes Socia=
les GRD Firma email-02" src=3D"https://lh3.googleusercontent.com/1Ejp_mUOB-=
KTOymJ3IymN4um5mHTq-jIpNY9MspM2hU4dKVMl-j0y_XFpjNuJbFBTaI-s1Yyq2Xfp_EQ_mrZE=
StbtdI7q2IWYI20wglM7zBvhetI_95t7wM3ihNJuutUXx1tuX3U" style=3D"margin-left: =
0px; margin-top: 0px;" width=3D"22" height=3D"22"></span></span></a><span s=
tyle=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,0);background-color:r=
gb(255,255,255);font-weight:400;font-style:normal;font-variant:normal;text-=
decoration:none;vertical-align:baseline;white-space:pre-wrap">=C2=A0 </span=
><a href=3D"https://www.linkedin.com/company/gradiant/" style=3D"text-decor=
ation:none" target=3D"_blank"><span style=3D"font-size:9pt;font-family:Aria=
l;color:rgb(17,85,204);background-color:rgb(255,255,255);font-weight:400;fo=
nt-style:normal;font-variant:normal;text-decoration:underline;vertical-alig=
n:baseline;white-space:pre-wrap"><span style=3D"border:medium none;display:=
inline-block;overflow:hidden;width:22px;height:22px"><img alt=3D"Iconos Red=
es Sociales GRD Firma email-03" src=3D"https://lh6.googleusercontent.com/TO=
9YV3cpIr1R9aHnt0MZDWFIFFMGcM-rzzfYWQtoCKe4d0q44wq2WoZkDNBW8UxBu-3kxW-nlflcn=
ovhoCSvmQzQzuB51AsMV5zc8HGO_LQq4neb9_vItBnRiQNNp8pZsp4f3JrH" style=3D"margi=
n-left: 0px; margin-top: 0px;" width=3D"22" height=3D"22"></span></span></a=
><span style=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,0);background=
-color:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:norm=
al;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">=C2=
=A0 </span><a href=3D"https://www.youtube.com/gradiantct" style=3D"text-dec=
oration:none" target=3D"_blank"><span style=3D"font-size:9pt;font-family:Ar=
ial;color:rgb(17,85,204);background-color:rgb(255,255,255);font-weight:400;=
font-style:normal;font-variant:normal;text-decoration:underline;vertical-al=
ign:baseline;white-space:pre-wrap"><span style=3D"border:medium none;displa=
y:inline-block;overflow:hidden;width:22px;height:22px"><img alt=3D"Iconos R=
edes Sociales GRD Firma email-04" src=3D"https://lh6.googleusercontent.com/=
2-QBLvv5FRb3HTTYpHSnhEiPYoAnzuzMPPnD2wMuTL2trEiNM4VRoLvdmMIvZA69SDgVQLhAkcu=
WMPlJ9IldaqangETUYq2Vep6eELmDHlBcyZzfJd3Wddl3X5s_Cuf7purHjhVW" style=3D"mar=
gin-left: 0px; margin-top: 0px;" width=3D"22" height=3D"22"></span></span><=
/a></p><span style=3D"font-size:7pt;font-family:Arial;color:rgb(166,166,166=
);background-color:transparent;font-weight:400;font-style:normal;font-varia=
nt:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap=
">Take care of the environment. Try not to print this email.</span><span st=
yle=3D"font-size:7pt;font-family:Arial;color:rgb(166,166,166);background-co=
lor:transparent;font-weight:400;font-style:normal;font-variant:normal;text-=
decoration:none;vertical-align:baseline;white-space:pre-wrap"><br></span><s=
pan style=3D"font-size:7pt;font-family:Arial;color:rgb(166,166,166);backgro=
und-color:transparent;font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">The inf=
ormation contained in this email message may be confidential information, a=
nd may also be the subject of legal professional privilege. If you are not =
the intended recipient, any use, interference with, disclosure or copying o=
f this material is unauthorized and prohibited. Please inform us immediatel=
y and destroy the email. Thank you for your cooperation.</span></div></div>
</blockquote></div></div>

--00000000000071b58505b3c4e796--


--===============0987693437247614594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0987693437247614594==--

