Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFA0341E1E
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 14:27:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 12D7D380C56
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 09:27:31 -0400 (EDT)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by mm2.emwd.com (Postfix) with ESMTPS id BD61C383671
	for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 09:26:35 -0400 (EDT)
Received: by mail-oi1-f171.google.com with SMTP id n140so4738258oig.9
        for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 06:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g4zEuRsQadA2N59O8iMQTXKh0ISGxLRfcdvfKRvEFLU=;
        b=L1E7N4GZ7A/BeVh6xNuec9EcPs2tFKbbLNOutgKcbkcyNAkdPpbGUUmsijJCqT7oEl
         ti5NyIz8QCGX/Z+fBJsgDt3P1HhsSb7PpozP5YyqCMlPs0AYBo+a8RkXR9YnTj2BU512
         2hS4woD56U7i0cr4JfH8soWfrGsxCs7NrAx1ZOwiJG8FSMnGwB6X+ptBnW/jRJQYhSE7
         K6HsobHqkG3hiXLyfDetaR4uM5Mtw23WoptJLDRE3VcZCHnQk3N7KqnXabP084du9+hZ
         7YjTK2xUbSMNZGOS0snYtyk7CFIzjWjTE1ojVT/RFph5p05Qn1LsuZxTutCluxnRmC3o
         53Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g4zEuRsQadA2N59O8iMQTXKh0ISGxLRfcdvfKRvEFLU=;
        b=efLXbceCGW0poIpTm3cSllOkgXj+dO84ZxOzmO/BwSwGgsEzxFf21cRiuQPGYVFQdR
         FjQGzEWl+vNQFuhm0RvRZNAmyPSsoHi8OzTX/SNTxzmnyPqln6RbJP1Wx0M2Y883XhZF
         btB7dQpbIJjJKPvEW9azQRf0FDi1Ptwd1ReUvwvNskpL6PA+ICOcRxtOAFTieE558EOJ
         sGXhSD8DmgOTabOKiDNkfEk1+M/Ry2Xx76V5/1TD2GzjDz2b0/8RqdELhhvQaArNq9u3
         3N7hYd0BWdrUbB5c59ps7IqSeeKMSajQ4bNTQ9mvMupJ0Tbz69bEVsdx3mN8yC9pJuAw
         NuBA==
X-Gm-Message-State: AOAM532mxfBrROe/wg9HC8FEHk/c3pMBrsD+BAlRekT2t3nPfMxo0NG8
	YeVkhcEd1O8I9e21Vu84Ix3mS28Ov7KTX795SxaRmw==
X-Google-Smtp-Source: ABdhPJz4CsInbfsJG0jeym0L//z7hfJLlob6NmC/5IoU7hh/CJWib91VCXn3r98rB+gtAlzjMVHpdzwnxUtDpyeAB2w=
X-Received: by 2002:aca:2104:: with SMTP id 4mr1031443oiz.124.1616160394914;
 Fri, 19 Mar 2021 06:26:34 -0700 (PDT)
MIME-Version: 1.0
References: <e29bc7e556334d1f9b5af4128ab9a9cf@campus.tu-berlin.de>
 <aefaa146fef24a4694d98132d439863b@campus.tu-berlin.de> <c92abad63ec64dc4a3777fa2a918c2f4@campus.tu-berlin.de>
In-Reply-To: <c92abad63ec64dc4a3777fa2a918c2f4@campus.tu-berlin.de>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 19 Mar 2021 09:26:24 -0400
Message-ID: <CAB__hTSOsYD50ieWo1=P_sPA-9jdPXey+Evy92E-W=jSUo34QA@mail.gmail.com>
To: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
Message-ID-Hash: V356CWCTR2XG7LHN6JBU2A3Q2OGR2MJY
X-Message-ID-Hash: V356CWCTR2XG7LHN6JBU2A3Q2OGR2MJY
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc error at building graph and setting sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V356CWCTR2XG7LHN6JBU2A3Q2OGR2MJY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3229376233907628880=="

--===============3229376233907628880==
Content-Type: multipart/alternative; boundary="0000000000003d781a05bde3aa47"

--0000000000003d781a05bde3aa47
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The X310 radio itself does not change rates (as you have found out).  The
DDC can change the sample rate.  Try calling this function with the DDC
control.
Rob

On Fri, Mar 19, 2021 at 6:16 AM Chang, Kaixin <k.chang@campus.tu-berlin.de>
wrote:

> when I use radio_ctrl->set_rate() of rfnoc c++ api, I get the error,
>
> Setting RX Rate: 10.000000 Msps...
> Actual RX Rate: 200.000000 Msps...
> [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 10
> MHz. Actual rate is: 200 MHz.
>
>
> I use X310 with 2 CBX120 daughterboards and I can set the rx rate to 10MH=
z
> when I use uhd 4.0 multiusrp class set_rx_rate()
>
>
> Could you give me some more advice please?
>
>
>
> ------------------------------
> *From:* Chang, Kaixin
> *Sent:* 18 March 2021 12:23:47
> *To:* usrp-users@lists.ettus.com
> *Subject:* =E7=AD=94=E5=A4=8D: rfnoc error at building graph and setting =
sample rate
>
>
> Btw, is it possible to set up rx_rate and tx_rate separately as with uhd
> we have usrp->set_rx_rate() and usrp->set_tx_rate()?
> ------------------------------
> *=E5=8F=91=E4=BB=B6=E4=BA=BA:* Chang, Kaixin
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:* 2021=E5=B9=B43=E6=9C=8818=E6=97=
=A5 11:47:37
> *=E6=94=B6=E4=BB=B6=E4=BA=BA:* usrp-users@lists.ettus.com
> *=E4=B8=BB=E9=A2=98:* rfnoc error at building graph and setting sample ra=
te
>
>
> Dear madam and sir from Ettus team,
>
>
> I am using X310 with 2 CBX120 and UHD main branch for rfnoc with fpga
> image usrp_x310_fpga_XG.bit. My goal is to build a loopback from tx port
> to rx port, but I have some problem to build a graph.
>
>
> For example to send from RF-A Tx/Rx port to RF-A Rx2 port, I used paramet=
er
>     --tx-blockid=3D'0/Radio#0' --tx-chan=3D0 --rx-blockid=3D'0/Radio#1'
> --rx-chan=3D0"
>
> I tried to connect:
>
>     tx_stream =3D=3D> 0/DUC#0:0 =3D=3D> 0/Radio#0:0
>
>     0/Radio#0:1 =3D=3D> 0/DDC#0:1 =3D=3D> rx_stream
>
> The 0/SEP is not a block so I use streamer on its position in chain
>
> But I got an error:
>     [ERROR] [RFNOC::GRAPH::DETAIL] Node 0/Radio#0cannot handle its curren=
t
> topology! (1inputs, 1 outputs)
>     Error: RuntimeError: Graph topology is not valid!
>
> I see the default parameters
>
>     --tx-blockid=3D'0/Radio#0' --tx-chan=3D0 --rx-blockid=3D'0/Radio#1'
> --rx-chan=3D0"
>
> in rfnoc_radio_loopback seems to build a chain like this:
>     0/Radio#1:0=3D=3D>0/DDC#1:0=3D=3D>0/SEP#2:0
>     0/SEP#0:0=3D=3D>0/DUC#0:0=3D=3D>0/Radio#0:0
>     0/DDC#1:0=3D=3D>0/DUC#0:0
>
> I don't understand why are  0/DDC#1:0 and 0/DUC#0:0 connected.
>
> Also I get an error at setting rate:
>     [WARNING] [0/Radio#1] Requesting invalid sampling rate from device:
> 10 MHz. Actual rate is: 200 MHz.
>
>
> by using:
>
>      uhd::rfnoc::radio_control::sptr radio_ctrl =3D
> graph->get_block<uhd::rfnoc::radio_control>(radio_ctrl_id)
>
>      radio_ctrl->set_rate(rx_rate)
>
>
> Could you please give me some advice?
>
>
> Thanks in advance
>
>
> Kasim
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003d781a05bde3aa47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">The X310 radio itself does not change rat=
es (as you have found out).=C2=A0 The DDC can change the sample rate.=C2=A0=
 Try calling this function with the DDC control.</div><div>Rob</div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 1=
9, 2021 at 6:16 AM Chang, Kaixin &lt;<a href=3D"mailto:k.chang@campus.tu-be=
rlin.de">k.chang@campus.tu-berlin.de</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">

<div id=3D"gmail-m_8052302749573701927divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p></p>
<div>
<p>when I use radio_ctrl-&gt;set_rate() of rfnoc c++ api, I get the error,<=
/p>
<br>
<p>Setting RX Rate: 10.000000 Msps...<br>
Actual RX Rate: 200.000000 Msps...<br>
[WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 10 MHz.=
 Actual rate is: 200 MHz.</p>
<p style=3D"margin-bottom:0in"><br>
</p>
<p>I use X310 with 2 CBX120 daughterboards and I can set the rx rate to 10M=
Hz when I use uhd 4.0 multiusrp class set_rx_rate()</p>
<p><br>
</p>
<p>Could you give me some more advice please?<br>
</p>
<p style=3D"margin-bottom:0in;line-height:100%"><br>
</p>
</div>
<br>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_8052302749573701927divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> Chang, Kaixin<br>
<b>Sent:</b> 18 March 2021 12:23:47<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> =E7=AD=94=E5=A4=8D: rfnoc error at building graph and setti=
ng sample rate</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_8052302749573701927divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p>Btw, is it possible to set up rx_rate and tx_rate separately as with uhd=
 we have usrp-&gt;set_rx_rate() and usrp-&gt;set_tx_rate()?<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_8052302749573701927divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>=E5=
=8F=91=E4=BB=B6=E4=BA=BA:</b> Chang, Kaixin<br>
<b>=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:</b> 2021=E5=B9=B43=E6=9C=8818=E6=
=97=A5 11:47:37<br>
<b>=E6=94=B6=E4=BB=B6=E4=BA=BA:</b> <a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
<b>=E4=B8=BB=E9=A2=98:</b> rfnoc error at building graph and setting sample=
 rate</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_8052302749573701927divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p>Dear madam and sir from Ettus team,</p>
<p><br>
</p>
<p>I am using X310 with 2 CBX120 and UHD main branch for rfnoc with<code> f=
pga image usrp_x310_fpga_XG.bit</code>. My goal is to build a loopback from=
 tx port to rx port, but I have some problem to build a graph.</p>
<p><br>
</p>
<p>For example to send from RF-A Tx/Rx port to RF-A Rx2 port, I used parame=
ter</p>
<div>=C2=A0=C2=A0=C2=A0 --tx-blockid=3D&#39;0/Radio#0&#39; --tx-chan=3D0 --=
rx-blockid=3D&#39;0/Radio#1&#39; --rx-chan=3D0&quot;</div>
<div><br>
</div>
<p></p>
<p><span style=3D"color:rgb(0,0,0)"></span>I tried to connect:<br>
</p>
<p>=C2=A0=C2=A0=C2=A0 tx_stream =3D=3D&gt; 0/DUC#0:0 =3D=3D&gt; 0/Radio#0:0=
</p>
<p>=C2=A0=C2=A0=C2=A0 <span>0/</span>Radio#0:1 =3D=3D&gt;=C2=A0<span>0/</sp=
an>DDC#0:1 =3D=3D&gt; rx_stream</p>
<p></p>
<div>The 0/SEP is not a block so I use streamer on its position in chain</d=
iv>
<div><br>
</div>
<div>But I got an error:<br>
</div>
<div>=C2=A0=C2=A0=C2=A0 [ERROR] [RFNOC::GRAPH::DETAIL] Node 0/Radio#0cannot=
 handle its current topology! (1inputs, 1 outputs)<br>
<div>=C2=A0=C2=A0=C2=A0 Error: RuntimeError: Graph topology is not valid!</=
div>
</div>
<br>
<p></p>
<p>I see the default parameters <br>
</p>
<p></p>
<div>=C2=A0=C2=A0=C2=A0 --tx-blockid=3D&#39;0/Radio#0&#39; --tx-chan=3D0 --=
rx-blockid=3D&#39;0/Radio#1&#39; --rx-chan=3D0&quot;</div>
<br>
<p></p>
in rfnoc_radio_loopback seems to build a chain like this:
<div>=C2=A0=C2=A0=C2=A0 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<span>=3D=3D&gt;0/SEP=
#2:0</span><br>
=C2=A0=C2=A0=C2=A0 <span>0/SEP#0:0=3D=3D&gt;</span>0/DUC#0:0=3D=3D&gt;0/Rad=
io#0:0<br>
=C2=A0=C2=A0=C2=A0 0/DDC#1:0=3D=3D&gt;0/DUC#0:0</div>
<div><br>
</div>
<div>I don&#39;t understand why are=C2=A0 <span>0/DDC#1:0 and 0/DUC#0:0 con=
nected.</span></div>
<div><span><br>
</span></div>
<div><span>Also I get an error at setting rate:</span></div>
<div><span>=C2=A0=C2=A0=C2=A0 <span>[WARNING] [0/Radio#1] Requesting invali=
d sampling rate from device: 10 MHz. Actual rate is: 200 MHz.</span></span>=
<br>
</div>
<p></p>
<p><br>
</p>
<p>by using:<br>
</p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0 uhd::rfnoc::radio_control::sptr radio_ctrl =3D =
graph-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(radio_ctrl_id)</p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0 radio_ctrl-&gt;set_rate(rx_rate)</p>
<p><br>
</p>
<p>Could you please give me some advice?</p>
<p><br>
</p>
<p>Thanks in advance</p>
<p><br>
</p>
<p>Kasim<br>
</p>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000003d781a05bde3aa47--

--===============3229376233907628880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3229376233907628880==--
