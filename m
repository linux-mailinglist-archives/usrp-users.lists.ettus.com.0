Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 725302AC3E4
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 19:35:36 +0100 (CET)
Received: from [::1] (port=57152 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcC0s-00043i-SW; Mon, 09 Nov 2020 13:35:34 -0500
Received: from mail-oo1-f44.google.com ([209.85.161.44]:45830)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jarroyo@gradiant.org>)
 id 1kcC0o-0003wS-Kv
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 13:35:30 -0500
Received: by mail-oo1-f44.google.com with SMTP id j41so2437622oof.12
 for <usrp-users@lists.ettus.com>; Mon, 09 Nov 2020 10:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gradiant-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=DafkPISBNsoNcaZ7kasslQzm9FRbjCv9vy9xWvRh9+o=;
 b=MytfcaIP1+ryQSRnQrmSyr6/krwsGsM7RiIoVRrvrTdDlVTS3+8Tbuw5DrYVoRO33q
 zDDUEEp7C1odYnyLiWUk5ikEXMbRwcXxHpnDzqh7u6YZubVGVH4ywkLhD/VXi/uPRD0v
 DwOXfbX8I+aMHi28WFUwXSX7qzc+hF4VbIgj1IVGjNL57zGnBAToR6QTQFdPmYStTJCl
 O3H68TGFoacpNdJZtfC0PmJneJv+9IEx2NavdtZpHRCZ85JVuIlAMqm9GCYfca2PfvKk
 aZ2PGTDSHOiKZv9+G2ltPWobQ6qt+0McGoTocUY3TiQ+SjT7H4xpMm2M/9DywBYCtudA
 AbWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=DafkPISBNsoNcaZ7kasslQzm9FRbjCv9vy9xWvRh9+o=;
 b=JZHcK7PKR9zcY1a34m53ACC4oq2xKQoEM23nTY9Q0vnGmtnhEUeudpZIfECyfL2lva
 3xSbtYT/q0Hr+Sxq5xYROMcSujpvQumXaMC8f8SEwsYN6crFswRiiv7Fkh86lv/HExWZ
 xoWU5NYZ63hhwCy12pW7Muluq2G/wTOIoD3kbMEy3zqcoxRLXkRLcNN+EdLomBjXqNcV
 WYYLTm4ieKVpfZ+2/NeEQ6hvrFK0Bb7VWcNeTCOPeheceFZPzzvVL8SjtID6TpEEZsM8
 2bptsB0sWgmwJv5kzUKliY8klahJJtU3AmFm73LDeLs3j4vYZE81Zx2bS1QulQmNZzEd
 e6lw==
X-Gm-Message-State: AOAM5301vtiiiwztVY2WtUDqLctDgBc3+jHOC1owykgMgtyUzFNQUKJw
 ScuSicq5gGpwglJh51LLXqKnanbYRnlr9lVDKphazizo8hUB31iT
X-Google-Smtp-Source: ABdhPJzA7GCHMEomNlTUHeQ+V7qd4eXK7IraoVH6p11KYiynziMBZ5cvFN3sD6va/s2sjgagB/FG729720ozOOmPsjg=
X-Received: by 2002:a4a:d781:: with SMTP id c1mr10961453oou.14.1604946889662; 
 Mon, 09 Nov 2020 10:34:49 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 9 Nov 2020 19:34:38 +0100
Message-ID: <CAOx6OK0Mz1E1MRyi1LxBo4MuGjsye_J6g+w3Z3FSoeaZABTfAA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] RFNoC loopback without radio cores in C++
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
Content-Type: multipart/mixed; boundary="===============3953990257054721563=="
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

--===============3953990257054721563==
Content-Type: multipart/alternative; boundary="0000000000003df5e305b3b0d1ed"

--0000000000003df5e305b3b0d1ed
Content-Type: text/plain; charset="UTF-8"

Hi all,

After testing a loopback in GNU Radio with a custom block (the gain example
from the Getting Started with RFNoC guide), I managed to get the samples
going from the host to the "RFNoC domain" and back to the host, without
involving the radio cores at all. My flowgraph was Signal Source (Host) ->
RFNoC: DmaFIFO -> RFNoC: gain -> QT GUI Freq Sink (Host), and everything
worked fine, so I know that what I'm trying to do is possible.

I have also made examples in UHD with C++ transmitting (Host -> TX Radio)
and receiving (RX Radio -> Host) using the custom RFNoC block in the graph,
by modifying the tx_waveforms and rfnoc_rx_to_file examples, and everything
worked fine as well, I checked that all of the examples had a resulting
signal that looked like it was expected.

Now, I would like to replicate in UHD with C++ something similar to what I
have in GNU Radio, a loopback using the RFNoC custom block but without
involving the radio cores, basically: Host -> RFNoC -> Host. Right now my
approach is to have a graph looking like Host TX -> DmaFIFO -> Gain Custom
-> Host RX, I am configuring the tx and rx streamers this way:

uhd::device_addr_t tx_streamer_args;
uhd::stream_args_t tx_stream_args("fc32", "sc16");
tx_streamer_args["block_id"] = dmafifo_blockid;
tx_streamer_args["block_port"] = "0";
tx_stream_args.args = tx_streamer_args;
tx_stream_args.args["spp"] = boost::lexical_cast<std::string>(spp);
//spp=364
uhd::tx_streamer::sptr tx_stream = usrp3->get_tx_stream(tx_stream_args);

----

uhd::device_addr_t rx_streamer_args;
uhd::stream_args_t rx_stream_args("fc32", "sc16");
rx_streamer_args["block_id"] = gain_blockid;
rx_streamer_args["block_port"] = "0";
rx_stream_args.args["spp"] = boost::lexical_cast<std::string>(spp);
rx_stream_args.args = rx_streamer_args;
uhd::rx_streamer::sptr rx_stream = usrp->get_rx_stream(rx_stream_args);

I'm creating a thread that continuously sends (send()) samples to the
DmaFIFO, and then I try to do the recv() until I get something, but I
always get a timeout. It's like if the samples aren't flowing through the
blocks, or like if I'm not doing the recv() right. Also, I'm getting a
strange warning ([INFO] [RFNOC] No upstream blocks.) that I don't
understand quite well in this context, does it have anything to do with the
fact that I'm not using the radio cores? I have also tried to put a FIFO
after the Gain block but I get pretty much the same result.

I would appreciate any help or recommendations on how to achieve in C++
this idea of Host TX -> RFNoC -> Host RX, is there something I am missing
or should consider?

I am using UHD-3.15.LTS on a X310, and GNU Radio 3.7. Everything is running
on Ubuntu 16.04.

Thanks in advance,

Jorge

--0000000000003df5e305b3b0d1ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>After testing a loop=
back in GNU Radio with a custom block (the gain example from the Getting St=
arted with RFNoC guide), I managed to get the samples going from the host t=
o the &quot;RFNoC domain&quot; and back to the host, without involving the =
radio cores at all. My flowgraph was Signal Source (Host) -&gt; RFNoC: DmaF=
IFO -&gt; RFNoC: gain -&gt; QT GUI Freq Sink (Host), and everything worked =
fine, so I know that what I&#39;m trying to do is possible.</div><div><br><=
/div><div>I have also made examples in UHD with C++ transmitting (Host -&gt=
; TX Radio) and receiving (RX Radio -&gt; Host) using the custom RFNoC bloc=
k in the graph, by modifying the tx_waveforms and rfnoc_rx_to_file examples=
, and everything worked fine as well, I checked that all of the examples ha=
d a resulting signal that looked like it was expected.</div><br>Now, I woul=
d like to replicate in UHD with C++ something similar to what I have in GNU=
 Radio, a loopback using the RFNoC custom block but without involving the r=
adio cores, basically: Host -&gt; RFNoC -&gt; Host. Right now my approach i=
s to have a graph looking like Host TX -&gt; DmaFIFO -&gt; Gain Custom -&gt=
; Host RX, I am configuring the tx and rx streamers this way:<br><br>uhd::d=
evice_addr_t tx_streamer_args;<br>uhd::stream_args_t tx_stream_args(&quot;f=
c32&quot;, &quot;sc16&quot;);<br>tx_streamer_args[&quot;block_id&quot;] =3D=
 dmafifo_blockid;<br>tx_streamer_args[&quot;block_port&quot;] =3D &quot;0&q=
uot;;<br>tx_stream_args.args =3D tx_streamer_args;<br>tx_stream_args.args[&=
quot;spp&quot;] =3D boost::lexical_cast&lt;std::string&gt;(spp); //spp=3D36=
4<br>uhd::tx_streamer::sptr tx_stream =3D usrp3-&gt;get_tx_stream(tx_stream=
_args);<br><br>----<br><br>uhd::device_addr_t rx_streamer_args;<br>uhd::str=
eam_args_t rx_stream_args(&quot;fc32&quot;, &quot;sc16&quot;);<br>rx_stream=
er_args[&quot;block_id&quot;] =3D gain_blockid;<br>rx_streamer_args[&quot;b=
lock_port&quot;] =3D &quot;0&quot;;<br>rx_stream_args.args[&quot;spp&quot;]=
 =3D boost::lexical_cast&lt;std::string&gt;(spp);<br>rx_stream_args.args =
=3D rx_streamer_args;<br><div>uhd::rx_streamer::sptr rx_stream =3D usrp-&gt=
;get_rx_stream(rx_stream_args);</div><div><br></div><div>I&#39;m creating a=
 thread that continuously sends (send()) samples to the DmaFIFO, and then I=
 try to do the recv() until I get something, but I always get a timeout. It=
&#39;s like if the samples aren&#39;t flowing through the blocks, or like i=
f I&#39;m not doing the recv() right. Also, I&#39;m getting a strange warni=
ng ([INFO] [RFNOC] No upstream blocks.) that I don&#39;t understand quite w=
ell in this context, does it have anything to do with the fact that I&#39;m=
 not using the radio cores? I have also tried to put a FIFO after the Gain =
block but I get pretty much the same result.<br></div><div><br></div><div>I=
 would appreciate any help or recommendations on how to achieve in C++ this=
 idea of Host TX -&gt; RFNoC -&gt; Host RX, is there something I am missing=
 or should consider?<br></div><div><br></div><div>I am using UHD-3.15.LTS o=
n a X310, and GNU Radio 3.7. Everything is running on Ubuntu 16.04.</div><d=
iv><br></div><div>Thanks in advance,</div><div><br></div><div>Jorge<br></di=
v><div><br></div><div><br></div></div>

--0000000000003df5e305b3b0d1ed--


--===============3953990257054721563==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3953990257054721563==--

