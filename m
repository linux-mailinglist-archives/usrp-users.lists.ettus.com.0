Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04ECD2AD2BB
	for <lists+usrp-users@lfdr.de>; Tue, 10 Nov 2020 10:45:23 +0100 (CET)
Received: from [::1] (port=35480 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcQDH-0006Uj-KX; Tue, 10 Nov 2020 04:45:19 -0500
Received: from mail-ot1-f53.google.com ([209.85.210.53]:36132)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jarroyo@gradiant.org>)
 id 1kcQDD-0006PW-5S
 for usrp-users@lists.ettus.com; Tue, 10 Nov 2020 04:45:15 -0500
Received: by mail-ot1-f53.google.com with SMTP id n89so695030otn.3
 for <usrp-users@lists.ettus.com>; Tue, 10 Nov 2020 01:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gradiant-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=fkS+RB3QxUA92OgtjayTP0fsoQU4VZWZpfoD6Cf+K4w=;
 b=PDIccVHoHJHj4ceMRQBYK7+bMFrkVoz91mOmm4Ix/9Ecu2tAzjOMGezxlK3/9fiWzw
 LPNICXyCyiktwX0rrYzHd4tGzK+mIFO+Lic/DF+fhUO55UFYFnJ/004RLcpeiV8Qd1LG
 NhXZ+dsG4oswCReE8KuiKsnJTjouBlM6jQNm35CheCpTyoT3HvMBiobxyxHQ6MKqkGJP
 zTTvqNeM6ard580VhELexXVkP/pdrVcVHxjlQjcLJap4Rxmy4xVDbvb9ISdhiNKrei+f
 O4Fh2wYjbHX9AJHWxakp6cOICwOJW6xE9rplq3cP8qGu9GfCbKjRTW+o00sDBYPtxZKJ
 9zfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=fkS+RB3QxUA92OgtjayTP0fsoQU4VZWZpfoD6Cf+K4w=;
 b=tz7pK8Y366BCsm3/T1Dvqi+WdO80TgXEHFRtQA/PJ/via+0TEMIS/WYTNfSvfCUxcb
 87vJ8uy2gN/EUCixwF7Y+hbp6Vq7e5yjQ76YDpIfyFBtgR9at17FA/4n507NvREKDeK0
 CeDMv6zJuw5taoKvL2SWNXvOOEKcnAwDNlmjhnEsy7wC3KDk+IvLenHWD9DSrC6HeACD
 2DKAXQ07sx/Zffa6ZOAYpVzOzO41Sqt5APiQXvmBfrFlnA4aNbQY3y4EVV4BvXXHUZ3H
 oJ314qveDqh1YrpOyKEV/R+YXWkbpdmwTJTnH3eitUarQhhsZj6hdwhLxcIe85cWYHWo
 rLnA==
X-Gm-Message-State: AOAM533KclUSIRuLoYp2w4kmIRDoR5L4SMK0cfgFD8ZCkXY2uZgCleTX
 D5qjsiHpOGsmB+pSGvhBPIEo90BY9T66zocJ6241DPpM9hC68OuK
X-Google-Smtp-Source: ABdhPJwjxCZvLhdwFh3MhN66EJLyuxmApPcgInXvFWortswKugj98bfyM0grFQD/Mpi7guaXt9vJVu0ryQdc8HnbF+k=
X-Received: by 2002:a9d:5c0c:: with SMTP id o12mr13450932otk.275.1605001474328; 
 Tue, 10 Nov 2020 01:44:34 -0800 (PST)
MIME-Version: 1.0
References: <CAOx6OK0Mz1E1MRyi1LxBo4MuGjsye_J6g+w3Z3FSoeaZABTfAA@mail.gmail.com>
 <CAB__hTTwqjd==Aj=S-w17t48vSMM3KdCWwMeCmnBHZV+qQhgAw@mail.gmail.com>
In-Reply-To: <CAB__hTTwqjd==Aj=S-w17t48vSMM3KdCWwMeCmnBHZV+qQhgAw@mail.gmail.com>
Date: Tue, 10 Nov 2020 10:44:23 +0100
Message-ID: <CAOx6OK2XjgoCGoRydFs+AP30HdK33n-PHjMfv960L8QYhtk5TA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>, usrp-users@lists.ettus.com
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
From: Jorge Arroyo Giganto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
Content-Type: multipart/mixed; boundary="===============4778387378105431056=="
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

--===============4778387378105431056==
Content-Type: multipart/alternative; boundary="000000000000bddd9005b3bd860c"

--000000000000bddd9005b3bd860c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thank you for your quick response. I'm sorry if I didn't specifically
mention that. I did connect the blocks calling the connect() function like
so:

    uhd::rfnoc::graph::sptr txrx_graph =3D usrp3->create_graph("txrx");
    usrp3->clear();
    txrx_graph->connect(dmafifo_blockid, 0, gain_blockid, 0);

Where "dmafifo_blockid" and "gain_blockid" come from:

    uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args);
    uhd::device3::sptr usrp3 =3D usrp->get_device3();
    uhd::rfnoc::dma_fifo_block_ctrl::sptr dmafifo_block_ctrl =3D
usrp3->get_block_ctrl<uhd::rfnoc::dma_fifo_block_ctrl>(uhd::rfnoc::block_id=
_t(0,
"DmaFIFO"));
    uhd::rfnoc::block_ctrl_base::sptr gain_block_ctrl =3D
usrp3->get_block_ctrl(uhd::rfnoc::block_id_t(0, "gain"));
    std::string dmafifo_blockid =3D dmafifo_block_ctrl->get_block_id();
    std::string gain_blockid =3D gain_block_ctrl->get_block_id();

I also tried connecting a FIFO after the gain block (
txrx_graph->connect(gain_blockid, 0, fifo_blockid, 0);) and telling the
rx_streamer to use that block, but the result looked the same.

Thanks again,

Jorge

El lun., 9 nov. 2020 a las 20:33, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:

> Hi Jorge,
> I don't see any indication that you are calling the Connect() function to
> connect the RFNoC blocks in the FPGA.
> Rob
>
> On Mon, Nov 9, 2020 at 1:35 PM Jorge Arroyo Giganto via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi all,
>>
>> After testing a loopback in GNU Radio with a custom block (the gain
>> example from the Getting Started with RFNoC guide), I managed to get the
>> samples going from the host to the "RFNoC domain" and back to the host,
>> without involving the radio cores at all. My flowgraph was Signal Source
>> (Host) -> RFNoC: DmaFIFO -> RFNoC: gain -> QT GUI Freq Sink (Host), and
>> everything worked fine, so I know that what I'm trying to do is possible=
.
>>
>> I have also made examples in UHD with C++ transmitting (Host -> TX Radio=
)
>> and receiving (RX Radio -> Host) using the custom RFNoC block in the gra=
ph,
>> by modifying the tx_waveforms and rfnoc_rx_to_file examples, and everyth=
ing
>> worked fine as well, I checked that all of the examples had a resulting
>> signal that looked like it was expected.
>>
>> Now, I would like to replicate in UHD with C++ something similar to what
>> I have in GNU Radio, a loopback using the RFNoC custom block but without
>> involving the radio cores, basically: Host -> RFNoC -> Host. Right now m=
y
>> approach is to have a graph looking like Host TX -> DmaFIFO -> Gain Cust=
om
>> -> Host RX, I am configuring the tx and rx streamers this way:
>>
>> uhd::device_addr_t tx_streamer_args;
>> uhd::stream_args_t tx_stream_args("fc32", "sc16");
>> tx_streamer_args["block_id"] =3D dmafifo_blockid;
>> tx_streamer_args["block_port"] =3D "0";
>> tx_stream_args.args =3D tx_streamer_args;
>> tx_stream_args.args["spp"] =3D boost::lexical_cast<std::string>(spp);
>> //spp=3D364
>> uhd::tx_streamer::sptr tx_stream =3D usrp3->get_tx_stream(tx_stream_args=
);
>>
>> ----
>>
>> uhd::device_addr_t rx_streamer_args;
>> uhd::stream_args_t rx_stream_args("fc32", "sc16");
>> rx_streamer_args["block_id"] =3D gain_blockid;
>> rx_streamer_args["block_port"] =3D "0";
>> rx_stream_args.args["spp"] =3D boost::lexical_cast<std::string>(spp);
>> rx_stream_args.args =3D rx_streamer_args;
>> uhd::rx_streamer::sptr rx_stream =3D usrp->get_rx_stream(rx_stream_args)=
;
>>
>> I'm creating a thread that continuously sends (send()) samples to the
>> DmaFIFO, and then I try to do the recv() until I get something, but I
>> always get a timeout. It's like if the samples aren't flowing through th=
e
>> blocks, or like if I'm not doing the recv() right. Also, I'm getting a
>> strange warning ([INFO] [RFNOC] No upstream blocks.) that I don't
>> understand quite well in this context, does it have anything to do with =
the
>> fact that I'm not using the radio cores? I have also tried to put a FIFO
>> after the Gain block but I get pretty much the same result.
>>
>> I would appreciate any help or recommendations on how to achieve in C++
>> this idea of Host TX -> RFNoC -> Host RX, is there something I am missin=
g
>> or should consider?
>>
>> I am using UHD-3.15.LTS on a X310, and GNU Radio 3.7. Everything is
>> running on Ubuntu 16.04.
>>
>> Thanks in advance,
>>
>> Jorge
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--=20

<http://www.gradiant.org>

Jorge Arroyo Giganto

Becario | =C3=81rea de Comunicaciones Avanzadas

Intern | Advanced Communications Department



jarroyo@gradiant.org  |   <http://www.gradiant.org/>www.gradiant.org

[image: Iconos Redes Sociales GRD Firma email-01]
<https://es-es.facebook.com/GradiantCT/>  [image: Iconos Redes Sociales GRD
Firma email-02] <https://twitter.com/Gradiant>  [image: Iconos Redes
Sociales GRD Firma email-03]
<https://www.linkedin.com/company/gradiant/>  [image:
Iconos Redes Sociales GRD Firma email-04]
<https://www.youtube.com/gradiantct>
Take care of the environment. Try not to print this email.
The information contained in this email message may be confidential
information, and may also be the subject of legal professional privilege.
If you are not the intended recipient, any use, interference with,
disclosure or copying of this material is unauthorized and prohibited.
Please inform us immediately and destroy the email. Thank you for your
cooperation.

--000000000000bddd9005b3bd860c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Thank you for your q=
uick response. I&#39;m sorry if I didn&#39;t specifically mention that. I d=
id connect the blocks calling the connect() function like so:</div><br>=C2=
=A0=C2=A0=C2=A0 uhd::rfnoc::graph::sptr txrx_graph =3D usrp3-&gt;create_gra=
ph(&quot;txrx&quot;);<br>=C2=A0=C2=A0=C2=A0 usrp3-&gt;clear();<br><div>=C2=
=A0=C2=A0=C2=A0 txrx_graph-&gt;connect(dmafifo_blockid, 0, gain_blockid, 0)=
;</div><div><br></div><div>Where &quot;dmafifo_blockid&quot; and &quot;gain=
_blockid&quot; come from:<br><br>=C2=A0=C2=A0=C2=A0 uhd::usrp::multi_usrp::=
sptr usrp =3D uhd::usrp::multi_usrp::make(args);<br>=C2=A0 =C2=A0 uhd::devi=
ce3::sptr usrp3 =3D usrp-&gt;get_device3();<br>=C2=A0 =C2=A0 uhd::rfnoc::dm=
a_fifo_block_ctrl::sptr dmafifo_block_ctrl =3D usrp3-&gt;get_block_ctrl&lt;=
uhd::rfnoc::dma_fifo_block_ctrl&gt;(uhd::rfnoc::block_id_t(0, &quot;DmaFIFO=
&quot;));<br>=C2=A0 =C2=A0 uhd::rfnoc::block_ctrl_base::sptr gain_block_ctr=
l =3D usrp3-&gt;get_block_ctrl(uhd::rfnoc::block_id_t(0, &quot;gain&quot;))=
;<br>=C2=A0 =C2=A0 std::string dmafifo_blockid =3D dmafifo_block_ctrl-&gt;g=
et_block_id();<br>=C2=A0=C2=A0=C2=A0 std::string gain_blockid =3D gain_bloc=
k_ctrl-&gt;get_block_id();</div><div><br></div><div>I also tried connecting=
 a FIFO after the gain block ( txrx_graph-&gt;connect(gain_blockid, 0, fifo=
_blockid, 0);) and telling the rx_streamer to use that block, but the resul=
t looked the same.</div><div><br></div><div>Thanks again,</div><div><br></d=
iv><div>Jorge<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">El lun., 9 nov. 2020 a las 20:33, Rob Kossler (&lt;<=
a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi Jorge,<div>I don&#39;t see any indication that you are calling the Conne=
ct() function to connect the RFNoC blocks in the FPGA.=C2=A0</div><div>Rob<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Nov 9, 2020 at 1:35 PM Jorge Arroyo Giganto via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>Afte=
r testing a loopback in GNU Radio with a custom block (the gain example fro=
m the Getting Started with RFNoC guide), I managed to get the samples going=
 from the host to the &quot;RFNoC domain&quot; and back to the host, withou=
t involving the radio cores at all. My flowgraph was Signal Source (Host) -=
&gt; RFNoC: DmaFIFO -&gt; RFNoC: gain -&gt; QT GUI Freq Sink (Host), and ev=
erything worked fine, so I know that what I&#39;m trying to do is possible.=
</div><div><br></div><div>I have also made examples in UHD with C++ transmi=
tting (Host -&gt; TX Radio) and receiving (RX Radio -&gt; Host) using the c=
ustom RFNoC block in the graph, by modifying the tx_waveforms and rfnoc_rx_=
to_file examples, and everything worked fine as well, I checked that all of=
 the examples had a resulting signal that looked like it was expected.</div=
><br>Now, I would like to replicate in UHD with C++ something similar to wh=
at I have in GNU Radio, a loopback using the RFNoC custom block but without=
 involving the radio cores, basically: Host -&gt; RFNoC -&gt; Host. Right n=
ow my approach is to have a graph looking like Host TX -&gt; DmaFIFO -&gt; =
Gain Custom -&gt; Host RX, I am configuring the tx and rx streamers this wa=
y:<br><br>uhd::device_addr_t tx_streamer_args;<br>uhd::stream_args_t tx_str=
eam_args(&quot;fc32&quot;, &quot;sc16&quot;);<br>tx_streamer_args[&quot;blo=
ck_id&quot;] =3D dmafifo_blockid;<br>tx_streamer_args[&quot;block_port&quot=
;] =3D &quot;0&quot;;<br>tx_stream_args.args =3D tx_streamer_args;<br>tx_st=
ream_args.args[&quot;spp&quot;] =3D boost::lexical_cast&lt;std::string&gt;(=
spp); //spp=3D364<br>uhd::tx_streamer::sptr tx_stream =3D usrp3-&gt;get_tx_=
stream(tx_stream_args);<br><br>----<br><br>uhd::device_addr_t rx_streamer_a=
rgs;<br>uhd::stream_args_t rx_stream_args(&quot;fc32&quot;, &quot;sc16&quot=
;);<br>rx_streamer_args[&quot;block_id&quot;] =3D gain_blockid;<br>rx_strea=
mer_args[&quot;block_port&quot;] =3D &quot;0&quot;;<br>rx_stream_args.args[=
&quot;spp&quot;] =3D boost::lexical_cast&lt;std::string&gt;(spp);<br>rx_str=
eam_args.args =3D rx_streamer_args;<br><div>uhd::rx_streamer::sptr rx_strea=
m =3D usrp-&gt;get_rx_stream(rx_stream_args);</div><div><br></div><div>I&#3=
9;m creating a thread that continuously sends (send()) samples to the DmaFI=
FO, and then I try to do the recv() until I get something, but I always get=
 a timeout. It&#39;s like if the samples aren&#39;t flowing through the blo=
cks, or like if I&#39;m not doing the recv() right. Also, I&#39;m getting a=
 strange warning ([INFO] [RFNOC] No upstream blocks.) that I don&#39;t unde=
rstand quite well in this context, does it have anything to do with the fac=
t that I&#39;m not using the radio cores? I have also tried to put a FIFO a=
fter the Gain block but I get pretty much the same result.<br></div><div><b=
r></div><div>I would appreciate any help or recommendations on how to achie=
ve in C++ this idea of Host TX -&gt; RFNoC -&gt; Host RX, is there somethin=
g I am missing or should consider?<br></div><div><br></div><div>I am using =
UHD-3.15.LTS on a X310, and GNU Radio 3.7. Everything is running on Ubuntu =
16.04.</div><div><br></div><div>Thanks in advance,</div><div><br></div><div=
>Jorge<br></div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><p dir=3D"ltr" style=3D"line-height:1.5408=
;margin-top:0pt;margin-bottom:0pt"><a href=3D"http://www.gradiant.org" styl=
e=3D"text-decoration:none" target=3D"_blank"><span style=3D"font-size:7pt;f=
ont-family:Verdana;color:rgb(17,85,204);background-color:transparent;font-w=
eight:400;font-style:normal;font-variant:normal;text-decoration:underline;v=
ertical-align:baseline;white-space:pre-wrap"><span style=3D"border:medium n=
one;display:inline-block;overflow:hidden;width:185px;height:120px"><img src=
=3D"https://lh3.googleusercontent.com/83CKrYsn4pEbx82anCbaWNA23TYze9GNaxZfX=
XDj34YYQ9mGcdiU5XPQJmcj0cg-GerbIKEa01OrQXu5Qme8aSIak4HApBu7ELb1RCquH4sXdMca=
TjJPaXFEGqbpa2NGQUumsw8H" style=3D"margin-left: 0px; margin-top: 0px;" widt=
h=3D"185" height=3D"120"></span></span></a></p><p dir=3D"ltr" style=3D"line=
-height:1.2;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:10pt=
;font-family:Arial;color:rgb(235,32,38);background-color:transparent;font-w=
eight:700;font-style:normal;font-variant:normal;text-decoration:none;vertic=
al-align:baseline;white-space:pre-wrap">Jorge Arroyo Giganto</span></p><p d=
ir=3D"ltr" style=3D"line-height:1.2;margin-top:0pt;margin-bottom:0pt"><span=
 style=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,0);background-color=
:transparent;font-weight:400;font-style:normal;font-variant:normal;text-dec=
oration:none;vertical-align:baseline;white-space:pre-wrap">Becario | =C3=81=
rea de Comunicaciones Avanzadas</span></p><p dir=3D"ltr" style=3D"line-heig=
ht:1.2;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:9pt;font-=
family:Arial;color:rgb(128,128,128);background-color:transparent;font-weigh=
t:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-a=
lign:baseline;white-space:pre-wrap">Intern | Advanced Communications Depart=
ment</span></p><p dir=3D"ltr" style=3D"line-height:1.2;margin-top:0pt;margi=
n-bottom:0pt"><span style=3D"font-size:9pt;font-family:Arial;color:rgb(127,=
127,127);background-color:transparent;font-weight:400;font-style:normal;fon=
t-variant:normal;text-decoration:none;vertical-align:baseline;white-space:p=
re-wrap">=C2=A0</span></p><p dir=3D"ltr" style=3D"line-height:1.2;margin-to=
p:0pt;margin-bottom:0pt"><span style=3D"font-size:9pt;font-family:Arial;col=
or:rgb(0,0,0);background-color:rgb(255,255,255);font-weight:400;font-style:=
normal;font-variant:normal;text-decoration:none;vertical-align:baseline;whi=
te-space:pre-wrap"><a href=3D"mailto:jarroyo@gradiant.org" target=3D"_blank=
">jarroyo@gradiant.org</a>=C2=A0 | </span><a href=3D"http://www.gradiant.or=
g/" style=3D"text-decoration:none" target=3D"_blank"><span style=3D"font-si=
ze:9pt;font-family:Arial;color:rgb(0,0,0);background-color:rgb(255,255,255)=
;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none=
;vertical-align:baseline;white-space:pre-wrap">=C2=A0</span></a><a href=3D"=
http://www.gradiant.org" style=3D"text-decoration:none" target=3D"_blank"><=
span style=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,0);background-c=
olor:rgb(255,255,255);font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">www.gra=
diant.org</span></a></p><br><p dir=3D"ltr" style=3D"line-height:1.2;margin-=
top:0pt;margin-bottom:8pt"><a href=3D"https://es-es.facebook.com/GradiantCT=
/" style=3D"text-decoration:none" target=3D"_blank"><span style=3D"font-siz=
e:9pt;font-family:Arial;color:rgb(17,85,204);background-color:rgb(255,255,2=
55);font-weight:400;font-style:normal;font-variant:normal;text-decoration:u=
nderline;vertical-align:baseline;white-space:pre-wrap"><span style=3D"borde=
r:medium none;display:inline-block;overflow:hidden;width:22px;height:22px">=
<img alt=3D"Iconos Redes Sociales GRD Firma email-01" src=3D"https://lh3.go=
ogleusercontent.com/npZWEZIKE8hxiBWQn7DfzLCAdetdNJtJmEnpv02-8ab21vyZBUKswj7=
TCWhSWJy07FLuHrcBYMChjq_D7boQt88hj5shKYlnwD0w29eTa-rGJgnRWxwDL9L2b6NRgn7ckI=
_w1Lgi" style=3D"margin-left: 0px; margin-top: 0px;" width=3D"22" height=3D=
"22"></span></span></a><span style=3D"font-size:9pt;font-family:Arial;color=
:rgb(0,0,0);background-color:rgb(255,255,255);font-weight:400;font-style:no=
rmal;font-variant:normal;text-decoration:none;vertical-align:baseline;white=
-space:pre-wrap">=C2=A0 </span><a href=3D"https://twitter.com/Gradiant" sty=
le=3D"text-decoration:none" target=3D"_blank"><span style=3D"font-size:9pt;=
font-family:Arial;color:rgb(17,85,204);background-color:rgb(255,255,255);fo=
nt-weight:400;font-style:normal;font-variant:normal;text-decoration:underli=
ne;vertical-align:baseline;white-space:pre-wrap"><span style=3D"border:medi=
um none;display:inline-block;overflow:hidden;width:22px;height:22px"><img a=
lt=3D"Iconos Redes Sociales GRD Firma email-02" src=3D"https://lh3.googleus=
ercontent.com/1Ejp_mUOB-KTOymJ3IymN4um5mHTq-jIpNY9MspM2hU4dKVMl-j0y_XFpjNuJ=
bFBTaI-s1Yyq2Xfp_EQ_mrZEStbtdI7q2IWYI20wglM7zBvhetI_95t7wM3ihNJuutUXx1tuX3U=
" style=3D"margin-left: 0px; margin-top: 0px;" width=3D"22" height=3D"22"><=
/span></span></a><span style=3D"font-size:9pt;font-family:Arial;color:rgb(0=
,0,0);background-color:rgb(255,255,255);font-weight:400;font-style:normal;f=
ont-variant:normal;text-decoration:none;vertical-align:baseline;white-space=
:pre-wrap">=C2=A0 </span><a href=3D"https://www.linkedin.com/company/gradia=
nt/" style=3D"text-decoration:none" target=3D"_blank"><span style=3D"font-s=
ize:9pt;font-family:Arial;color:rgb(17,85,204);background-color:rgb(255,255=
,255);font-weight:400;font-style:normal;font-variant:normal;text-decoration=
:underline;vertical-align:baseline;white-space:pre-wrap"><span style=3D"bor=
der:medium none;display:inline-block;overflow:hidden;width:22px;height:22px=
"><img alt=3D"Iconos Redes Sociales GRD Firma email-03" src=3D"https://lh6.=
googleusercontent.com/TO9YV3cpIr1R9aHnt0MZDWFIFFMGcM-rzzfYWQtoCKe4d0q44wq2W=
oZkDNBW8UxBu-3kxW-nlflcnovhoCSvmQzQzuB51AsMV5zc8HGO_LQq4neb9_vItBnRiQNNp8pZ=
sp4f3JrH" style=3D"margin-left: 0px; margin-top: 0px;" width=3D"22" height=
=3D"22"></span></span></a><span style=3D"font-size:9pt;font-family:Arial;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255);font-weight:400;font-style=
:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;wh=
ite-space:pre-wrap">=C2=A0 </span><a href=3D"https://www.youtube.com/gradia=
ntct" style=3D"text-decoration:none" target=3D"_blank"><span style=3D"font-=
size:9pt;font-family:Arial;color:rgb(17,85,204);background-color:rgb(255,25=
5,255);font-weight:400;font-style:normal;font-variant:normal;text-decoratio=
n:underline;vertical-align:baseline;white-space:pre-wrap"><span style=3D"bo=
rder:medium none;display:inline-block;overflow:hidden;width:22px;height:22p=
x"><img alt=3D"Iconos Redes Sociales GRD Firma email-04" src=3D"https://lh6=
.googleusercontent.com/2-QBLvv5FRb3HTTYpHSnhEiPYoAnzuzMPPnD2wMuTL2trEiNM4VR=
oLvdmMIvZA69SDgVQLhAkcuWMPlJ9IldaqangETUYq2Vep6eELmDHlBcyZzfJd3Wddl3X5s_Cuf=
7purHjhVW" style=3D"margin-left: 0px; margin-top: 0px;" width=3D"22" height=
=3D"22"></span></span></a></p><span style=3D"font-size:7pt;font-family:Aria=
l;color:rgb(166,166,166);background-color:transparent;font-weight:400;font-=
style:normal;font-variant:normal;text-decoration:none;vertical-align:baseli=
ne;white-space:pre-wrap">Take care of the environment. Try not to print thi=
s email.</span><span style=3D"font-size:7pt;font-family:Arial;color:rgb(166=
,166,166);background-color:transparent;font-weight:400;font-style:normal;fo=
nt-variant:normal;text-decoration:none;vertical-align:baseline;white-space:=
pre-wrap"><br></span><span style=3D"font-size:7pt;font-family:Arial;color:r=
gb(166,166,166);background-color:transparent;font-weight:400;font-style:nor=
mal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-=
space:pre-wrap">The information contained in this email message may be conf=
idential information, and may also be the subject of legal professional pri=
vilege. If you are not the intended recipient, any use, interference with, =
disclosure or copying of this material is unauthorized and prohibited. Plea=
se inform us immediately and destroy the email. Thank you for your cooperat=
ion.</span></div></div>

--000000000000bddd9005b3bd860c--


--===============4778387378105431056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4778387378105431056==--

