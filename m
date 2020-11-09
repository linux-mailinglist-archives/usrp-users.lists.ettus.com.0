Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0844E2AC50B
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 20:34:21 +0100 (CET)
Received: from [::1] (port=57524 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcCvi-0001KQ-F1; Mon, 09 Nov 2020 14:34:18 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:46968)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kcCve-0001Ew-W2
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 14:34:15 -0500
Received: by mail-oi1-f169.google.com with SMTP id q206so11440212oif.13
 for <usrp-users@lists.ettus.com>; Mon, 09 Nov 2020 11:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+vYu666ip/s2sfhMfYT/XjVth7I5nLasTs0ZJAH0t18=;
 b=Qh7nmAyTf/ITzr1i3p/0jBVCk26ZzAQJ6e9BQIFrNsZJYwK3JCODGhvI5Rjj41g8A+
 5u9ypJcA4pyPWPByxk5h6FIPskQFcMo1gyZvEZwr+avoufGJ0urHPm9mCe3ecUmC8HxG
 9Y3o6OkKfQ+rM8/N/4RcaSguJdMtDlV/AhnU1KoqQ7rTnKswCEjZMVUYYGAzaLRbMA8W
 AEse9h97rWd/b/1ipDT9eWbxT7/qR0LWTowOpD48TXcVemhqpe+YSe8MDo34vxEsPR8/
 sk9Ux8D7sbnQVX5WBJMzBqX0L9O+ppyeVDu+V/F4m5A1QJ4HkeL4CWCAV5D2cG3y2S0y
 mW4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+vYu666ip/s2sfhMfYT/XjVth7I5nLasTs0ZJAH0t18=;
 b=svInCSXg6QI3r+e9qyRGvBEqaW4c8qA1S8+6xwUKzCwJOFomdG9YomPq1F2GOoXq4q
 mvvQYCN8KJ41SXeIWms2f1WiQKmjbbJTavy6gHxgI4IVo5lqeQ9eN/0kob202aFlQSXQ
 kL8azCauPNaS78gxxBh6lQOUC72qwOkNIUBNlaI+8/xciOCKcRoQB9k1weOrOncL+tLJ
 JUUlVHA2UdlMwIE56OlxalqVklzZB2e2sp8/XfesbAr3A8CZgYQiWcMSCkK1LZmyuOM/
 o7r4l5ToyMb901zZRxGc3cygHF5lMOUDkXSad3KgJh+5EDuYu/Dzzo0o24n3YGnicEVk
 nbdQ==
X-Gm-Message-State: AOAM532x1SqdVmQvwfK2ANJhuuh3huZJ95Di0Hw+rWYBfaOo8DrL3eDi
 C08AXRIonfTABNmGlHvZ8f7hV60EEzfk44bQEoclruhvG4w=
X-Google-Smtp-Source: ABdhPJz1FY9EtfPHGKYjS4k//BDopskqQ9Nu1YO8WoRldXFIGuW81mMPzPJWsCwhIFzYEohZ8jdxHHf7t2GY+2z71SE=
X-Received: by 2002:aca:5c82:: with SMTP id q124mr502566oib.33.1604950414012; 
 Mon, 09 Nov 2020 11:33:34 -0800 (PST)
MIME-Version: 1.0
References: <CAOx6OK0Mz1E1MRyi1LxBo4MuGjsye_J6g+w3Z3FSoeaZABTfAA@mail.gmail.com>
In-Reply-To: <CAOx6OK0Mz1E1MRyi1LxBo4MuGjsye_J6g+w3Z3FSoeaZABTfAA@mail.gmail.com>
Date: Mon, 9 Nov 2020 14:33:23 -0500
Message-ID: <CAB__hTTwqjd==Aj=S-w17t48vSMM3KdCWwMeCmnBHZV+qQhgAw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6002694611842036338=="
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

--===============6002694611842036338==
Content-Type: multipart/alternative; boundary="0000000000004f6f8805b3b1a398"

--0000000000004f6f8805b3b1a398
Content-Type: text/plain; charset="UTF-8"

Hi Jorge,
I don't see any indication that you are calling the Connect() function to
connect the RFNoC blocks in the FPGA.
Rob

On Mon, Nov 9, 2020 at 1:35 PM Jorge Arroyo Giganto via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> After testing a loopback in GNU Radio with a custom block (the gain
> example from the Getting Started with RFNoC guide), I managed to get the
> samples going from the host to the "RFNoC domain" and back to the host,
> without involving the radio cores at all. My flowgraph was Signal Source
> (Host) -> RFNoC: DmaFIFO -> RFNoC: gain -> QT GUI Freq Sink (Host), and
> everything worked fine, so I know that what I'm trying to do is possible.
>
> I have also made examples in UHD with C++ transmitting (Host -> TX Radio)
> and receiving (RX Radio -> Host) using the custom RFNoC block in the graph,
> by modifying the tx_waveforms and rfnoc_rx_to_file examples, and everything
> worked fine as well, I checked that all of the examples had a resulting
> signal that looked like it was expected.
>
> Now, I would like to replicate in UHD with C++ something similar to what I
> have in GNU Radio, a loopback using the RFNoC custom block but without
> involving the radio cores, basically: Host -> RFNoC -> Host. Right now my
> approach is to have a graph looking like Host TX -> DmaFIFO -> Gain Custom
> -> Host RX, I am configuring the tx and rx streamers this way:
>
> uhd::device_addr_t tx_streamer_args;
> uhd::stream_args_t tx_stream_args("fc32", "sc16");
> tx_streamer_args["block_id"] = dmafifo_blockid;
> tx_streamer_args["block_port"] = "0";
> tx_stream_args.args = tx_streamer_args;
> tx_stream_args.args["spp"] = boost::lexical_cast<std::string>(spp);
> //spp=364
> uhd::tx_streamer::sptr tx_stream = usrp3->get_tx_stream(tx_stream_args);
>
> ----
>
> uhd::device_addr_t rx_streamer_args;
> uhd::stream_args_t rx_stream_args("fc32", "sc16");
> rx_streamer_args["block_id"] = gain_blockid;
> rx_streamer_args["block_port"] = "0";
> rx_stream_args.args["spp"] = boost::lexical_cast<std::string>(spp);
> rx_stream_args.args = rx_streamer_args;
> uhd::rx_streamer::sptr rx_stream = usrp->get_rx_stream(rx_stream_args);
>
> I'm creating a thread that continuously sends (send()) samples to the
> DmaFIFO, and then I try to do the recv() until I get something, but I
> always get a timeout. It's like if the samples aren't flowing through the
> blocks, or like if I'm not doing the recv() right. Also, I'm getting a
> strange warning ([INFO] [RFNOC] No upstream blocks.) that I don't
> understand quite well in this context, does it have anything to do with the
> fact that I'm not using the radio cores? I have also tried to put a FIFO
> after the Gain block but I get pretty much the same result.
>
> I would appreciate any help or recommendations on how to achieve in C++
> this idea of Host TX -> RFNoC -> Host RX, is there something I am missing
> or should consider?
>
> I am using UHD-3.15.LTS on a X310, and GNU Radio 3.7. Everything is
> running on Ubuntu 16.04.
>
> Thanks in advance,
>
> Jorge
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004f6f8805b3b1a398
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jorge,<div>I don&#39;t see any indication that you are =
calling the Connect() function to connect the RFNoC blocks in the FPGA.=C2=
=A0</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Nov 9, 2020 at 1:35 PM Jorge Arroyo Giganto =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
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

--0000000000004f6f8805b3b1a398--


--===============6002694611842036338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6002694611842036338==--

