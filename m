Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F199A6D1
	for <lists+usrp-users@lfdr.de>; Fri, 23 Aug 2019 06:40:55 +0200 (CEST)
Received: from [::1] (port=43746 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i11Nd-0005JN-5u; Fri, 23 Aug 2019 00:40:53 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:41805)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <kailash.kain@gmail.com>)
 id 1i11NZ-0005Dp-17
 for usrp-users@lists.ettus.com; Fri, 23 Aug 2019 00:40:49 -0400
Received: by mail-ot1-f52.google.com with SMTP id o101so7603934ota.8
 for <usrp-users@lists.ettus.com>; Thu, 22 Aug 2019 21:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KvO+WQF5mF/OSWtju87bsHjaYHar4XkgMd0cgjjiFug=;
 b=CmLqCcQnUz1wNnxoVGBt4YfjuFdZjGw1PKTKkH+YGTK41BK9DIutXh/JupJ5JAuzvx
 1jsGX4RhNQVoxo3/G5rU9vDnrTmaxmep5yW2YB1JlUgshKM5pr+LC3IgoLSZQIFMgYyj
 3nH2XbQOzaIZD022dYl9Gz8wJXsh4PDbv9ivVHefYbNNOKSnMavzmYbqplQblYGhDwgt
 sFcsKIVW9D009Zh+T8SXaRgFSlOeuPyIVYqzcjNLRiOfv6TJ2SjECRvyhTVVYGs2Lu/5
 vtgfczBC6w+rC++IUky4R66JJu10idvSdgaXF7DZAC8+OQYQX5ul3aEKLsVmbM+FCC6M
 YRxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KvO+WQF5mF/OSWtju87bsHjaYHar4XkgMd0cgjjiFug=;
 b=sm8OCQOBM6ZLl/I1MUsgFhZ5105x2SJtyI2sR5iThTxfOuMgLT/iwlKLvaJDYcRDDm
 Id26I7dqxLsV3BedqGUI8H/RY+XibpTurlu1+4GUEwFGbXJarrDjBDJey9KhZqailCbe
 OVKHp6C1ASk2HwVF7W89PFNS/9Vl06iFHc5Lda2dAN3Y5U2J2R7bLLdij7S6QRISZGnj
 49JKpMOYYPuAcq6KsnbcAzYzxAVfVG3wQ5rzspXhrFrQHhE1fN3Lzd/h128OuD//+Kn1
 iki1rmvJUJCxAAJBOx4JNTRIOaChQ+Ji1lEg/ClGslkIBWUcp3JLKCUS3aIa4y/SGV87
 vMJA==
X-Gm-Message-State: APjAAAX5R63Q4YRgfw9191X7uyJd+3BV0K1dXLtkXg9U3HmLdl2HUDbx
 EDiJbHUpFMYK5FAprXMdMAaLFT33b9Mt868ay/A=
X-Google-Smtp-Source: APXvYqwNdO90tpXzQsGcMGaohAOXboWN5EtmpwT262lxxI6iZfJnWxHpUeIDxIJb5mABblImwkML/13YAGAFl05qu3Q=
X-Received: by 2002:a05:6830:18ce:: with SMTP id
 v14mr2598093ote.199.1566535208209; 
 Thu, 22 Aug 2019 21:40:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAAMvqVG6ai0anEO5s0WU9RXoC4KOY40XS8jB=phpEjohBXa=Pg@mail.gmail.com>
 <5D5F5EE3.3080301@gmail.com>
In-Reply-To: <5D5F5EE3.3080301@gmail.com>
Date: Fri, 23 Aug 2019 10:09:42 +0530
Message-ID: <CAAMvqVH9xur8w8PriotbzGNZ7_+yFsXYCjRh-VOJXMbZv4+qjA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Packet drop during frequency hopping observed with
 B210
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: kailash kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: kailash kumar <kailash.kain@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============6649824894110060120=="
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

--===============6649824894110060120==
Content-Type: multipart/alternative; boundary="0000000000009d11a10590c166e1"

--0000000000009d11a10590c166e1
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

Please find below code for reference. I have removed few sync primates for
readability.

// Receive callback for loopback mode
void receive_cb(unsigned char *_payload, unsigned int len) {
  recvBytes += len;
}

// Periodic Timer - 1 sec
static void pSigHandler(int signo) {
  drv->SetTxFrequency(582.0e6);
  drv->SetRxFrequency(582.0e6);

  fprintf(stderr, "sentBytes %d recvBytes %d\n", sentBytes, recvBytes);
  bcontinue = true;
  startTime = drv->GetTxTime();
}

int main(int argc,char **argv) {
  // RFDriver abstracts uhd::usrp::multi_usrp::sptr, uhd::tx_streamer::sptr
& uhd::rx_streamer::sptr
  drv = new RFDriver();
  drv->SetTxFrequency(562.0e6);
  drv->SetRxFrequency(562.0e6);

  // B210
  drv->SetDevString(std::string("serial=312908B"));
  drv->SetTxGain(40.0); // uhd::tx_streamer::sptr->set_tx_freq(_tx_freq);
  drv->SetRxGain(20.0); // uhd::rx_streamer::sptr->set_rx_freq(_rx_freq);
  drv->SetTxSoftGain(-12.0); // powf(10.0f, _tx_gain_soft/20.0f); ->
Software Gain multiplier

  // Init OFDM : bandwidth = 1000e3f, number of subcarriers = 64, cyclic
prefix length = 8, taper length = 2
  // Start Rx ->
usrp_rx->issue_stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
  drv->InitTxRX();

  // 1 sec timer to flip frequency
  signal(SIGALRM, pSigHandler);
  struct itimerval tv;
  tv.it_value.tv_sec = 1;
  tv.it_value.tv_usec = 0;
  tv.it_interval.tv_sec = 1;
  tv.it_interval.tv_usec = 0;
  setitimer(ITIMER_REAL, &tv, NULL);

  startTime = uhd::tx_streamer::sptr->get_time_now().get_real_secs();

  for (int i = 0; i < 5000; ++i) {
    double diff = uhd::tx_streamer::sptr->get_time_now().get_real_secs() -
startTime;
    // If deadline check is disabled, then we are transmitting for entire
duration
    bool deadline = std::isgreaterequal(diff, 0.95F); // check if we have
50 ms left
    if (deadline) {
      while(!bcontinue) { // This is set on 1 sec timer expiration
        sched_yield();
      }
      bcontinue = false;
    }
    drv->SendPayload((unsigned char *)data, n);
  }
}

Thanks
Kailash

On Fri, Aug 23, 2019 at 9:05 AM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 08/22/2019 11:09 PM, kailash kumar via USRP-users wrote:
> > Hi,
> >
> > I am testing frequency hopping in a loopback mode on B210 using
> > external RF loopback cable.
> > For First slot Tx/Rx is done at freq 562 Mhz. Subsequent slot is at
> > 582 Mhz.
> > I have observed Rx packet loss when Tx is done for entire slot duration.
> >
> > Please let me know if this is expected or if some configuration
> > is required for this.
> >
> > [INFO] [UHD] linux; GNU C++ version 9.1.1 20190716
> > gcc-9-branch@273504; Boost_106800; UHD_3.13.1.HEAD-0-gbbce3e45
> > [INFO] [B200] Detected Device: B210
> >
> > Slot duration - 1 second
> > Rx gain : 20.000000
> > Tx soft gain : -12.000000
> > Tx gain : 40.000000
> >
> > Testing results:
> > sentBytes 7225 recvBytes 7225 -> After sparing 50ms in 1st Tx slot at
> > freq 562 MHz.
> > sentBytes 7390 recvBytes 7390 -> Rest bytes in next Tx slot at freq
> > 582 Mhz.
> > sentBytes 7390 recvBytes 7390 -> No more Tx
> > sentBytes 7390 recvBytes 7390
> > sentBytes 7390 recvBytes 7390
> >
> > sentBytes 7390 recvBytes 7375 -> Utilize fully 1st Tx slot at freq 562
> > MHz. Rx drop observed.
> > sentBytes 7390 recvBytes 7375 -> No more Tx/Rx at 582 Mhz.
> > sentBytes 7390 recvBytes 7375
> >
> > Thanks & Regards
> > Kailash
> >
> Your description of the problem assumes the reader knows intimately the
> details of exactly what you're doing.  We don't.
>
> We need to see code snippets that demonstrate your problem, or a
> much-more detailed description.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009d11a10590c166e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Marcus,<div><br></div=
><div>Please find below code for reference. I have removed few sync primate=
s for readability.</div><div><br></div><div><div>// Receive callback for lo=
opback mode</div><div>void receive_cb(unsigned char *_payload, unsigned int=
 len) {</div><div>=C2=A0 recvBytes +=3D len;</div><div>}</div><div><br></di=
v><div>// Periodic Timer - 1 sec</div><div>static void pSigHandler(int sign=
o) {</div><div>=C2=A0 drv-&gt;SetTxFrequency(582.0e6);</div><div>=C2=A0 drv=
-&gt;SetRxFrequency(582.0e6);</div><div><br></div><div>=C2=A0 fprintf(stder=
r, &quot;sentBytes %d recvBytes %d\n&quot;, sentBytes, recvBytes);<br></div=
><div>=C2=A0 bcontinue =3D true;</div><div>=C2=A0 startTime =3D drv-&gt;Get=
TxTime();</div><div>}</div><div><br></div><div>int main(int argc,char **arg=
v) {</div><div>=C2=A0 // RFDriver abstracts uhd::usrp::multi_usrp::sptr, uh=
d::tx_streamer::sptr &amp; uhd::rx_streamer::sptr</div><div>=C2=A0 drv =3D =
new RFDriver();</div><div>=C2=A0 drv-&gt;SetTxFrequency(562.0e6);</div><div=
>=C2=A0 drv-&gt;SetRxFrequency(562.0e6);</div><div><br></div><div>=C2=A0 //=
 B210</div><div>=C2=A0 drv-&gt;SetDevString(std::string(&quot;serial=3D3129=
08B&quot;));</div><div>=C2=A0 drv-&gt;SetTxGain(40.0); // uhd::tx_streamer:=
:sptr-&gt;set_tx_freq(_tx_freq);</div><div>=C2=A0 drv-&gt;SetRxGain(20.0); =
// uhd::rx_streamer::sptr-&gt;set_rx_freq(_rx_freq);</div><div>=C2=A0 drv-&=
gt;SetTxSoftGain(-12.0); // powf(10.0f, _tx_gain_soft/20.0f); -&gt; Softwar=
e Gain multiplier</div><div><br></div><div>=C2=A0 // Init OFDM : bandwidth =
=3D 1000e3f, number of subcarriers =3D 64, cyclic prefix length =3D 8, tape=
r length =3D 2</div><div>=C2=A0 // Start Rx -&gt; usrp_rx-&gt;issue_stream_=
cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);</div><div>=C2=A0 drv-=
&gt;InitTxRX();=C2=A0</div><div><br></div><div>=C2=A0 // 1 sec timer to fli=
p frequency</div><div>=C2=A0 signal(SIGALRM, pSigHandler);</div><div>=C2=A0=
 struct itimerval tv;</div><div>=C2=A0 tv.it_value.tv_sec =3D 1;</div><div>=
=C2=A0 tv.it_value.tv_usec =3D 0;</div><div>=C2=A0 tv.it_interval.tv_sec =
=3D 1;</div><div>=C2=A0 tv.it_interval.tv_usec =3D 0;</div><div>=C2=A0 seti=
timer(ITIMER_REAL, &amp;tv, NULL);</div><div><br></div><div>=C2=A0 startTim=
e =3D uhd::tx_streamer::sptr-&gt;get_time_now().get_real_secs();</div><div>=
<br></div><div>=C2=A0 for (int i =3D 0; i &lt; 5000; ++i) {</div><div>=C2=
=A0 =C2=A0 double diff =3D uhd::tx_streamer::sptr-&gt;get_time_now().get_re=
al_secs() - startTime;</div><div>=C2=A0 =C2=A0 // If deadline check is disa=
bled, then we are transmitting for entire duration</div><div>=C2=A0 =C2=A0 =
bool deadline =3D std::isgreaterequal(diff, 0.95F); // check if we have 50 =
ms left</div><div>=C2=A0 =C2=A0 if (deadline) {</div><div>=C2=A0 =C2=A0 =C2=
=A0 while(!bcontinue) { // This is set on 1 sec timer expiration</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sched_yield();</div><div>=C2=A0 =C2=A0 =C2=A0 }=
</div><div>=C2=A0 =C2=A0 =C2=A0 bcontinue =3D false;</div><div>=C2=A0 =C2=
=A0 }</div><div>=C2=A0 =C2=A0 drv-&gt;SendPayload((unsigned char *)data, n)=
;</div><div>=C2=A0 }</div><div>}</div></div><div><br></div><div>Thanks</div=
><div>Kailash</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Fri, Aug 23, 2019 at 9:05 AM Marcus D. Leech vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:sol=
id;border-left-color:rgb(204,204,204);padding-left:1ex">On 08/22/2019 11:09=
 PM, kailash kumar via USRP-users wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I am testing frequency hopping in a loopback mode on B210 using <br>
&gt; external RF loopback cable.<br>
&gt; For First slot Tx/Rx is done at freq 562 Mhz. Subsequent slot is at <b=
r>
&gt; 582 Mhz.<br>
&gt; I have observed Rx packet loss when Tx is done for entire slot duratio=
n.<br>
&gt;<br>
&gt; Please let me know if this is expected or if some configuration <br>
&gt; is required for this.<br>
&gt;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.1.1 20190716 <br>
&gt; gcc-9-branch@273504; Boost_106800; UHD_3.13.1.HEAD-0-gbbce3e45<br>
&gt; [INFO] [B200] Detected Device: B210<br>
&gt;<br>
&gt; Slot duration - 1 second<br>
&gt; Rx gain : 20.000000<br>
&gt; Tx soft gain : -12.000000<br>
&gt; Tx gain : 40.000000<br>
&gt;<br>
&gt; Testing results:<br>
&gt; sentBytes 7225 recvBytes 7225 -&gt; After sparing 50ms in 1st Tx slot =
at <br>
&gt; freq 562 MHz.<br>
&gt; sentBytes 7390 recvBytes 7390 -&gt; Rest bytes in next Tx slot at freq=
 <br>
&gt; 582 Mhz.<br>
&gt; sentBytes 7390 recvBytes 7390 -&gt; No more Tx<br>
&gt; sentBytes 7390 recvBytes 7390<br>
&gt; sentBytes 7390 recvBytes 7390<br>
&gt;<br>
&gt; sentBytes 7390 recvBytes 7375 -&gt; Utilize fully 1st Tx slot at freq =
562 <br>
&gt; MHz. Rx drop observed.<br>
&gt; sentBytes 7390 recvBytes 7375 -&gt; No more Tx/Rx at 582 Mhz.<br>
&gt; sentBytes 7390 recvBytes 7375<br>
&gt;<br>
&gt; Thanks &amp; Regards<br>
&gt; Kailash<br>
&gt;<br>
Your description of the problem assumes the reader knows intimately the <br=
>
details of exactly what you&#39;re doing.=C2=A0 We don&#39;t.<br>
<br>
We need to see code snippets that demonstrate your problem, or a <br>
much-more detailed description.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000009d11a10590c166e1--


--===============6649824894110060120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6649824894110060120==--

