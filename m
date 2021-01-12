Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA082F2663
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jan 2021 03:50:49 +0100 (CET)
Received: from [::1] (port=60248 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kz9lg-000063-64; Mon, 11 Jan 2021 21:50:48 -0500
Received: from mail-ua1-f45.google.com ([209.85.222.45]:41313)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kz9lc-0008Qv-8V
 for usrp-users@lists.ettus.com; Mon, 11 Jan 2021 21:50:44 -0500
Received: by mail-ua1-f45.google.com with SMTP id 73so353389uac.8
 for <usrp-users@lists.ettus.com>; Mon, 11 Jan 2021 18:50:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MXX+K8RdKceQNGMVRJ5GPmzCJHze9/nB6eoMCuWYEZE=;
 b=Li4J0kQ7H8BtfJ+SBK7lRHAPlv9gKQpsJGFPDMosbAkD6/R1K7+GKKKQ8d6RZ3LFE8
 0d8DAE++/+facFwNA5lzYpOcy3zPvoskSxaEsl/n05xzacMwoPn9LxfIagzO+g7SJe2+
 rh4pmfDyHmpk4NbBpgf4K17QpvB+DJr9vHRq3LlnVg3Frp9EHayUlHTLeBZwz/9t6yAU
 7JwZE/KP7VkbDP+UHuuWkyuWTXnIdW4pKt7eth4TIm9yNnBjOWj7+zDAjxa5NSAlHubc
 LhDUNIhNBkajxjMiynX7PaEoSN6kvKsYnIQ+r8modDfpukDp2zRNvwZPBToVY3jXik0/
 4BPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MXX+K8RdKceQNGMVRJ5GPmzCJHze9/nB6eoMCuWYEZE=;
 b=M72U35xVwj1t+DZ5PVeXW+MapkLFhne5jkgOp/RIg9g4WXPmEX15XirF2Q0+/wVwez
 Jbc4x0sGezizQV/8AjCEKLK/QGvx0B441aVhCl6ivHNPZiIpvf0yYZ+B1q4tjRjGlshx
 H58mntTyBHo8VQKzm3aKcfC7gLlwOL5QyPRXLKk720YUf/Qn/sqsyia/2gbFRIfzwGH5
 At26N8Xygcn1TyQcgoeIenwyfM92CIM1BFtshFJlnr7Cnznmwh618T2MwOs1bdNcQzPW
 kb9DQidn/hXs+tXUA5/1phf3z5wPHtgk9cH7BOMDJBXRf2xsUE9Dv1O16mbxs2ryoNLg
 BbNg==
X-Gm-Message-State: AOAM530nQGF2FW7UkM5TWw4DNzT6No49aHq371gSka7quv+7LFzD6XlV
 jLXU296Qy/EfmiaVN35T3XPkhOlmH5X+Y7VR4JucZczu
X-Google-Smtp-Source: ABdhPJx7p6zF31wy4gg0d63it8SsuSrMcDRYVy+7FtDAdQjQgn4BiwGS8MYpS/LcHQydvbcIH11qwQRcphMDGL48X9U=
X-Received: by 2002:ab0:e14:: with SMTP id g20mr1962970uak.112.1610419803568; 
 Mon, 11 Jan 2021 18:50:03 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT6AyXGPERxgJQiDoyvhxPcLSZts2SmnrhE0kyMvr7fXw@mail.gmail.com>
In-Reply-To: <CAB__hTT6AyXGPERxgJQiDoyvhxPcLSZts2SmnrhE0kyMvr7fXw@mail.gmail.com>
Date: Mon, 11 Jan 2021 21:49:27 -0500
Message-ID: <CAL7q81s=-MRW3ufTmcjZ5Fm5KVsz4MQtTKpPLbrD5Hk4xvauvA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Testing single RFNoC block produces
 out-of-sequence (S) errors
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============1606482843377068303=="
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

--===============1606482843377068303==
Content-Type: multipart/alternative; boundary="00000000000054cf3705b8ab1440"

--00000000000054cf3705b8ab1440
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

If you run netstat -s before and after running your flowgraph, do you see
"receive buffer errors" in the UDP section increasing? I imagine you've
tried this but just in case: have you increased the ring buffer size with
"sudo ethtool -G <interface> tx 4096 rx 4096"?

Jonathon

On Tue, Jan 5, 2021 at 6:08 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I created a custom pulse-detector block which attempts to pass/discard
> samples based upon an instantaneous power estimate. Each set of
> consecutively passed samples constitutes a "burst" (i.e. the EOB is set on
> the TLAST corresponding to the final passed sample of the burst).  A burst
> can have as few as 1 sample because my block does not prevent this.
>
> The block does what I expect in the testbench and even in the FPGA binary
> when using the same data as the testbench.  However, when using a long
> input stream (~250MSamps from previous recording that I have handy) to test
> this block running in the FPGA, I get out-of-sequence errors on receive. My
> graph is tx_streamer => pulse_detector => rx_streamer (actually, my
> pulse_detector is a 2x2 block so there are 2 tx_streamers and 2
> rx_streamers, all of which are run in separate threads).
>
> I am wondering if the Sequence errors have nothing to do with my block but
> rather are related to the way Ubuntu handles incoming Ethernet data such
> that perhaps it is running out of RX descriptors. I have tried slowing down
> my Transmit and seen some improvement but without eliminating the errors
> completely. So, I'm wondering what suggestions others might have.  My ideas
> are:
> * invest some time to get DPDK working.  With this, perhaps Sequence
> errors cannot occur??
> * try slowing down my Tx even further?
> * create artificial data sets (rather than real collected data) such that
> I can control the length of the output pulses
>
> Let me know if you have any suggestions.
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000054cf3705b8ab1440
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<div><br></div><div>If you run netstat -s before an=
d after running your flowgraph, do you see &quot;receive buffer errors&quot=
; in the UDP section increasing? I imagine you&#39;ve tried this but just i=
n case: have you increased the ring buffer size with &quot;sudo ethtool -G =
&lt;interface&gt; tx 4096 rx 4096&quot;?</div><div><br></div><div>Jonathon<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, Jan 5, 2021 at 6:08 PM Rob Kossler via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi,<div>I created a custom pulse-detector block which attempts to =
pass/discard samples based upon an instantaneous power estimate. Each set o=
f consecutively passed samples constitutes a &quot;burst&quot; (i.e. the EO=
B is set on the TLAST corresponding to the final passed sample of the burst=
).=C2=A0 A burst can have as few as 1 sample because my block does not prev=
ent this.</div><div><br></div><div>The block does what I expect in the test=
bench and even in the FPGA binary when using the same data as the testbench=
.=C2=A0 However, when using a long input stream (~250MSamps from previous r=
ecording that I have handy) to test this block running in the FPGA, I get o=
ut-of-sequence errors on receive. My graph is tx_streamer =3D&gt; pulse_det=
ector =3D&gt; rx_streamer (actually, my pulse_detector is a 2x2 block so th=
ere are 2 tx_streamers and 2 rx_streamers, all of which are run in separate=
 threads).</div><div><br></div><div>I am wondering if the Sequence errors h=
ave nothing to do with my block but rather are related to the way Ubuntu ha=
ndles incoming Ethernet data such that perhaps it is running out of RX desc=
riptors. I have tried slowing down my Transmit and seen some improvement bu=
t without eliminating the errors completely. So, I&#39;m wondering what sug=
gestions others might have.=C2=A0 My ideas are:</div><div>* invest some tim=
e to get DPDK working.=C2=A0 With this, perhaps Sequence errors cannot occu=
r??</div><div>* try=C2=A0slowing down my Tx even further?</div><div>* creat=
e artificial data sets (rather than real collected data) such that I can co=
ntrol the length of the output pulses</div><div><br></div><div>Let me know =
if you have any suggestions.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000054cf3705b8ab1440--


--===============1606482843377068303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1606482843377068303==--

