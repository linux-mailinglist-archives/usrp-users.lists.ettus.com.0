Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7AB3333E0
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 04:37:17 +0100 (CET)
Received: from [::1] (port=37388 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJpes-00073d-Jw; Tue, 09 Mar 2021 22:37:14 -0500
Received: from mail-lf1-f44.google.com ([209.85.167.44]:37327)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dougb95@gmail.com>) id 1lJpeo-0006xW-55
 for USRP-users@lists.ettus.com; Tue, 09 Mar 2021 22:37:10 -0500
Received: by mail-lf1-f44.google.com with SMTP id n16so31038440lfb.4
 for <USRP-users@lists.ettus.com>; Tue, 09 Mar 2021 19:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rWHjOQmMpdKn9K4iUkkqsFmI697rnI3R3civT2chvII=;
 b=UEVOWPOwEIc4beVsIW484F79b06mRrmGb7mEkw+1XVbsaGMh/DyqGwcERWq5jUawsm
 R00EeOfzlOEzE26WVMwArJG+gE4FL2krpICReDIrSP53AVZ+52nN6xR1+eIWxT/yT9Id
 HVqd/NP3/MK5/80LcTpx3p85rbFD03WVZb7iL7cdnN0M0x4GQIovS6kYApimCPcYkQmr
 DCwqPwWfi7qPyPt6mXddSyEkPhcsOmjv1NBBsZUXCkm5jVxludmUrbSyyh23eSc6eso6
 Wv4W7GL1anU74UQSqF/OIFcA787AFBnIR9DWDijuO0py/Pyrix7ZeX5f+JUVHb2W8w+s
 7TEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rWHjOQmMpdKn9K4iUkkqsFmI697rnI3R3civT2chvII=;
 b=MKrMdR8O72i9ej8m3PojaPZXuDC5CAhWsCM+BbYkRNnBTwdsQMtujhE3MRS6XdIX/k
 TV6tg8WGeTaA9jjSrk4HZ50MHPirGGA/RzBLWLUJNQBGgt1P8PHxM4GuUMrp7QX1YCxo
 T1inFLsZY4sERqjkBZh2h/FQcUGLsqq9bNdgLPCbWgP20vcdcvCa6dRa5n/ecccset1k
 cnIdfCRZ+siQEch66dQuY2L5EKD1LgbRVMs7i/NJ+ff/bLuqZeKTRDhYWju4Xp/lcmRb
 5gJ6EPIq7nS+iBG9Pddq9+t90iZB9ROWmm5NPaRNj723E9ktmU2j9SuBKBX+lvp2vI+p
 QRgQ==
X-Gm-Message-State: AOAM532jPtFPMvDc/vJCrMONTAspxEDK1AcHhELsKffpKE1H3/F8u4p1
 O6fRfAp5XcR4jtQFD4x650uagoSSkOfoLzBYyGw=
X-Google-Smtp-Source: ABdhPJw9YOrrXVGd0LRxIWjO48Mk791HCzVrfJ8N0gzDdnGrYjVNmyMFp2OKzu93kknWeoq72oVGQRWGx/QAXeZ2mU0=
X-Received: by 2002:a19:e85:: with SMTP id 127mr783400lfo.77.1615347388833;
 Tue, 09 Mar 2021 19:36:28 -0800 (PST)
MIME-Version: 1.0
References: <CAKwz1Gf2Qw+Yc9E3e7CK0GLVaL14A6=fcvFQ_efpdyZX4p+Grw@mail.gmail.com>
 <3F3CE1FA-FF5B-462C-8193-C98EB328396A@gmail.com>
In-Reply-To: <3F3CE1FA-FF5B-462C-8193-C98EB328396A@gmail.com>
Date: Tue, 9 Mar 2021 22:36:17 -0500
Message-ID: <CAKwz1GfT6OCC+5AW=oB2xa1f_MCYYbtRykB6rUeZuob1xGq7Lw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] x300 latency over 10GigE
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
From: Doug Blackburn via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Doug Blackburn <dougb95@gmail.com>
Content-Type: multipart/mixed; boundary="===============6570392035255219702=="
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

--===============6570392035255219702==
Content-Type: multipart/alternative; boundary="0000000000004ce49b05bd265fff"

--0000000000004ce49b05bd265fff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus,

Thanks for your response; I believe I am.  The math is spread over two
lines:

    uhd::time_spec_t expectedTime =3D startTime + (double) ( num_tx_samps  =
)
                      / (double)usrp->get_tx_rate();

Best,
Doug


On Tue, Mar 9, 2021 at 10:20 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Shouldn=E2=80=99t you be scaling your num_tx_samples by the time per samp=
le when
> calculating the expectedTime?
>
> Sent from my iPhone
>
> On Mar 9, 2021, at 10:03 PM, Doug Blackburn via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
> Hello --
>
> I've got some questions re: latency with the x300 over the 10GigE
> interface.
>
> If I use the latency_test example operating at a rate of 50 MSPS, I have
> no issues with a latency of 1ms.  The latency test receives data, examine=
s
> the time stamp, and transmits a single packet.
>
> I have an application where I'd like to run the transmitter continuously,
> and I got curious about the latency involved in that operation.  My
> application is similar to the benchmark_rate example.  I added the
> following lines to the benchmark_rate example at line 256 after the line.
>
> md.has_time_spec =3D false;
>
> =3D=3D=3D=3D
> if ( (num_tx_samps % 50000000) < 4*max_samps_per_packet )
> {
>     uhd::time_spec_t expectedTime =3D startTime + (double) ( num_tx_samps=
  )
>                       / (double)usrp->get_tx_rate();
>     uhd::time_spec_t timeAtLog =3D usrp->get_time_now();
>     timeAtLog =3D usrp->get_time_now();
>     std::cerr << "=3D=3D=3D=3D Actual time =3D=3D=3D=3D" << std::endl;
>     std::cerr << "     " << timeAtLog.get_full_secs() << " / "
>                           << timeAtLog.get_frac_secs() << std::endl;
>     std::cerr << "=3D=3D=3D=3D Expected time =3D=3D=3D=3D" << std::endl;
>     std::cerr << "     " << expectedTime.get_full_secs() << " / "
>                           << expectedTime.get_frac_secs() << std::endl;
> }
> =3D=3D=3D=3D
>
> The intent of this insertion is to log the time at which we return from
> tx_stream->send() and the time at which the first sample of that sent dat=
a
> should be transmitted -- at approximately once per second when running at
> 50 MSPS.
>
> After the first second, I consistently saw the following results:
>
> =3D=3D=3D=3D Actual time =3D=3D=3D=3D
>      1 / 0.10517
> =3D=3D=3D=3D Expected time =3D=3D=3D=3D
>      1 / 0.27253
>
> =3D=3D=3D=3D Actual time =3D=3D=3D=3D
>      1 / 0.105419
> =3D=3D=3D=3D Expected time =3D=3D=3D=3D
>      1 / 0.27255
>
> Which indicates to me that there is a latency of approximately 167ms when
> transmitting data.  That is, the send() function is returning 167ms earli=
er
> than I expect the data to actually be transmitted.   If I halve the sampl=
e
> rate to 25 MSPS, the latency doubles.
>
> What is the source of the latency when running in a continuous mode?
> Initially, I had thought that this might be related to the
> send_buffer_size, but making changes to send_buffer_size seem to not have
> an effect.   FWIW, 167ms at 50 MSPS is suspiciously close to the value fo=
r
> wmem_max (33554432) suggested in the x300 system configuration ... but
> neither changing that value or send_buffer_size seems to make a differenc=
e.
>
> Is this latency tunable?
>
> Thank you for your help!
>
> Best Regards,
> Doug Blackburn
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--0000000000004ce49b05bd265fff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Marcus,<div><br></div><div>Thanks for your response; I bel=
ieve I am.=C2=A0 The math is spread over two lines:</div><div><br></div><di=
v><span style=3D"font-family:monospace">=C2=A0 =C2=A0 uhd::time_spec_t expe=
ctedTime =3D startTime + (double) ( num_tx_samps =C2=A0)</span><br style=3D=
"font-family:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 / (double)<=
/span><span class=3D"gmail-il" style=3D"font-family:monospace">usrp</span><=
span style=3D"font-family:monospace">-&gt;get_tx_rate();</span><br></div><d=
iv><span style=3D"font-family:monospace"><br></span></div><div><font face=
=3D"arial, sans-serif">Best,</font></div><div><font face=3D"arial, sans-ser=
if">Doug</font></div><div><font face=3D"arial, sans-serif"><br></font></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Tue, Mar 9, 2021 at 10:20 PM Marcus D Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Shouldn=E2=80=
=99t you be scaling your num_tx_samples by the time per sample when calcula=
ting the expectedTime?<br><br><div dir=3D"ltr">Sent from my iPhone</div><di=
v dir=3D"ltr"><br><blockquote type=3D"cite">On Mar 9, 2021, at 10:03 PM, Do=
ug Blackburn via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></blo=
ckquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=
=3D"ltr"><div dir=3D"ltr">Hello --<div><br></div><div>I&#39;ve got some que=
stions re: latency with=C2=A0the x300 over the 10GigE interface.=C2=A0=C2=
=A0</div><div><br></div><div>If I use the latency_test example operating at=
 a rate of 50 MSPS, I have no issues with a latency of 1ms.=C2=A0 The laten=
cy test receives data, examines the time stamp, and transmits a single pack=
et.=C2=A0</div><div><br></div><div>I have an application where I&#39;d like=
 to run the transmitter continuously, and I got curious about the latency i=
nvolved in that operation.=C2=A0 My application is similar=C2=A0to the benc=
hmark_rate example.=C2=A0 I added the following lines to the benchmark_rate=
 example at line 256 after the line.</div><div><br></div><div><font face=3D=
"monospace">md.has_time_spec =3D false;=C2=A0</font></div><div><br></div><d=
iv>=3D=3D=3D=3D</div><div><span style=3D"font-family:monospace">if ( (num_t=
x_samps % 50000000) &lt; 4*max_samps_per_packet )</span></div><div><font fa=
ce=3D"monospace">{<br>=C2=A0 =C2=A0 uhd::time_spec_t expectedTime =3D start=
Time + (double) ( num_tx_samps =C2=A0)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 / (double)usrp-&gt;get_tx_rat=
e();<br>=C2=A0 =C2=A0 uhd::time_spec_t timeAtLog =3D usrp-&gt;get_time_now(=
);<br>=C2=A0 =C2=A0 timeAtLog =3D usrp-&gt;get_time_now();<br>=C2=A0 =C2=A0=
 std::cerr &lt;&lt; &quot;=3D=3D=3D=3D Actual time =3D=3D=3D=3D&quot; &lt;&=
lt; std::endl;<br>=C2=A0 =C2=A0 std::cerr &lt;&lt; &quot; =C2=A0 =C2=A0 &qu=
ot; &lt;&lt; timeAtLog.get_full_secs() &lt;&lt; &quot; / &quot;<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;&lt; timeAtLog.get_frac_secs() &lt;&lt; std::endl;<br>=C2=A0=
 =C2=A0 std::cerr &lt;&lt; &quot;=3D=3D=3D=3D Expected time =3D=3D=3D=3D&qu=
ot; &lt;&lt; std::endl;<br>=C2=A0 =C2=A0 std::cerr &lt;&lt; &quot; =C2=A0 =
=C2=A0 &quot; &lt;&lt; expectedTime.get_full_secs() &lt;&lt; &quot; / &quot=
;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &lt;&lt; expectedTime.get_frac_secs() &lt;&lt; std::en=
dl;<br>}<br></font></div><div>=3D=3D=3D=3D</div><div><br></div><div>The int=
ent of this insertion is to log the time at which we return from tx_stream-=
&gt;send() and the time at which the first sample of that sent data should =
be transmitted -- at approximately once per second when running at 50 MSPS.=
</div><div><br></div><div>After the first second, I consistently saw the fo=
llowing results:</div><div><br></div><div><div><font face=3D"monospace">=3D=
=3D=3D=3D Actual time =3D=3D=3D=3D<br></font></div><div><div><font face=3D"=
monospace">=C2=A0 =C2=A0 =C2=A01 / 0.10517</font></div><div><font face=3D"m=
onospace">=3D=3D=3D=3D Expected time =3D=3D=3D=3D</font></div><div><font fa=
ce=3D"monospace">=C2=A0 =C2=A0 =C2=A01 / 0.27253</font></div><div><font fac=
e=3D"monospace"><br></font></div><div><font face=3D"monospace">=3D=3D=3D=3D=
 Actual time =3D=3D=3D=3D</font></div><div><font face=3D"monospace">=C2=A0 =
=C2=A0 =C2=A01 / 0.105419</font></div><div><font face=3D"monospace">=3D=3D=
=3D=3D Expected time =3D=3D=3D=3D</font></div><div><font face=3D"monospace"=
>=C2=A0 =C2=A0 =C2=A01 / 0.27255</font></div></div></div><div><br></div><di=
v>Which indicates to me that there is a latency of approximately 167ms when=
 transmitting data.=C2=A0 That is, the send() function is returning 167ms e=
arlier than I expect=C2=A0the data to actually be transmitted.=C2=A0 =C2=A0=
If I halve the sample rate to 25 MSPS, the latency doubles.</div><div><br><=
/div><div>What is the source of the latency when running in a continuous mo=
de?=C2=A0 Initially, I had thought that this might be related to the send_b=
uffer_size, but making changes to send_buffer_size seem to not have an effe=
ct.=C2=A0 =C2=A0FWIW, 167ms at 50 MSPS is suspiciously close to the value f=
or wmem_max (33554432) suggested in the x300 system configuration ... but n=
either changing that value or send_buffer_size seems to make a difference.<=
/div><div><br></div><div>Is this latency tunable?=C2=A0=C2=A0</div><div><br=
></div><div>Thank you for your help!</div><div><br></div><div>Best Regards,=
</div><div>Doug Blackburn</div><div><br></div></div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></blockquote></div>

--0000000000004ce49b05bd265fff--


--===============6570392035255219702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6570392035255219702==--

