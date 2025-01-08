Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF47A065C6
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 21:12:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 335B0385D7B
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 15:12:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736367167; bh=du8y/HsWrwtYhBvQxpOedW5TrYho5mh84n8eD0c6NfU=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=05Eb6TWQPFt2YtaT/FoLwkbQLs53ILMoEqHbcxaAh4PCbUz4ecOnt0omvcbipnmQu
	 b7rnz6QvWNeezhkUiLr1SKV30NKfgSCW3a3S82zSk2cjoAAUhB9NN/RZUWhdhOKqvH
	 R+u4fAFiEzj+Z3bOQX89cTZp7kblmMffH4Y707VNXEG3qdoEo8hrAcafh/FnjQmJi6
	 fnDM/NYrV/K3/5D1IFghejxREIwSujuJ7KPjYVbHJAWwZPo8eXTOMOpsCJEbbNBiMU
	 3oN3BEi5ujDk8uioT5rdPkyQZBg+VIg7kJJOla0ipRlwy0IDY6n9eAzhIqBrxqEY7k
	 0uJi1yK1Ztcgg==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 43DD53855D0
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 15:12:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="gCJ3PA3O";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5d414b8af7bso209256a12.0
        for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2025 12:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1736367124; x=1736971924; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4S822YCUB+bLbjw0ZTZit+N7MmLHYOPe7WRUDj8ACr8=;
        b=gCJ3PA3O5bqfFu5iTyQLyPhf7RjEMnqn9OOAmLF76UVibSLX/Uc7mYSea68K0nfHxx
         BAHNdwGWQ+pMGTCZFE2BXfTtaKNMeFDYVIyT7NIolZNImBBVClTIepj0HvAo6SuLETwz
         BdSGRsH/r687N3/wZ3xtleEgHsKl2UjspQXEUNdVXzyF2ywG7h1e8p9Uk2e1mqa4iyxx
         TssFpgRUEvkCxlmxQCHb9JSL0SpCw3T2L3y+4PAEG4Xo+lFaj1RDroKo8galXwC43II3
         W6tUO7QRrWA+5tjenVa3l0tjlJdCN7N5Nzfjf+gzaBMqwSrvcmw28V8yd/orCLLPnu7z
         tIhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736367124; x=1736971924;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4S822YCUB+bLbjw0ZTZit+N7MmLHYOPe7WRUDj8ACr8=;
        b=cQdNR93UBt1H+aWIq+C9weDJkLyRsc0mwT3QOqSH1ptZEaqlQVip3cGKCS3ur5eOuz
         1K4aKLKz3wlc8agDcF+yC4y8P6YmFL6S8AKFLc0PvQX+WWOcYj/JfgAAH9fI7dih/NI9
         DxecnSne9MQXXGSVG7EmJrjeBW2j4hukKUPZxUQ2l15mx/28dntktEnpsYPoa/jz5Mf+
         g3VLFfFvRPy89kUMBhXH1Tuyt+zbsGpZSEWeoGk9jhQPP3VjhYgj1Q6geJPge7YhGab0
         LL/8lnMRgis5aGLNUS25+onOFvqWW20+Zd8AUTuKUy6Z0Ezo25EQb3zuPBC6GeYIXql+
         rosw==
X-Gm-Message-State: AOJu0Yyu8u8HB7IVi3ikV/pblr364anMzaY2yXGWUke8cM2rXV+4GlEX
	cBkhkw59ZLcpqS75OaH1xMrWj5FXiH7BJLm8k85KlPdtIFnAm8YoR5ZmG/sD6LverQUqKdCMgWE
	Es/MMXNt/LI+JqilgylN46XvnAdGKGXbGJsJJTIy+fTpejKcwbZw=
X-Gm-Gg: ASbGnctU+4axasgrZFjuUgRpbpnLQwhwbp53O03Ccwlhic/peEz1vPo76kYi7iaRuhQ
	QA4n3uNrH4x7R2hYaaECd3209Ya0d36dH8IKfYQMXcwhtegNyU9QRGMDG36vSP7nU9mfdBg==
X-Google-Smtp-Source: AGHT+IHiaWKWZySmwqDofmA6jnBS4uvm3xWXNoIRMDSIAVOFzzKYxVf32e6zvPLKiit9ohPhf43/3tpauE1y1yZmWbs=
X-Received: by 2002:a05:6402:4305:b0:5d3:bc1d:e56b with SMTP id
 4fb4d7f45d1cf-5d972e1a3camr3789355a12.16.1736367123721; Wed, 08 Jan 2025
 12:12:03 -0800 (PST)
MIME-Version: 1.0
References: <zm9g7ckmjEF3f3aDDgmdgX2RMTEkwMAvYmzS73E8vQ@lists.ettus.com>
In-Reply-To: <zm9g7ckmjEF3f3aDDgmdgX2RMTEkwMAvYmzS73E8vQ@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 8 Jan 2025 21:11:52 +0100
X-Gm-Features: AbW1kvaFwA2X51AI19RJ1TnY7u13KpimWYKB8Sc01dY2C2J8COtmXJBixHRDz28
Message-ID: <CAFOi1A7Xc7PkC5iNZ011ceUk6=jEmZOHPZu-pCRxrr2MspSdpQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: KIRJ5LDICAFDPM26IY33LHPSXT2NF4FU
X-Message-ID-Hash: KIRJ5LDICAFDPM26IY33LHPSXT2NF4FU
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KIRJ5LDICAFDPM26IY33LHPSXT2NF4FU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3376076753594524678=="

--===============3376076753594524678==
Content-Type: multipart/alternative; boundary="0000000000009c097f062b377979"

--0000000000009c097f062b377979
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Neal,

for continuous streaming, don't use EOB. Just always include timestamps.
I'm not sure right now on adjacent bursts, you're probably right, but
they're the wrong tool here anyway.

There is, however, no limit on burst sizes. That means if your application
is running for days, and let's assume we don't drop anything, you would
have one very long burst.

The USRP will hold a packet until the transmit-time has been reached. If
you always add timestamps to the send() call, then every packet will have
timestamps (if you call send() with more data than fits into one packet,
then the streamer code will calculate timestamps for all outgoing packets).
Like I said in the other thread, on X310, you have approx. 500 kB of buffer
which corresponds to 64 packets of 8000 bytes each.

If you lose a packet between the host and the USRP, then you will
eventually see an "S" and a "U". And of course, you will have a gap in your
transmission. But on the next packet, as long as it reaches the radio on
time, you will be aligned again.

EOBs will only get in the way, because the USRP will ACK every packet. So
basically, only send an EOB when your application is going into shutdown,
and you want to cleanly exit the transmit thread.

Side note: You don't need to specify `enable_fc` (it's on by default), and
you don't need to specify `full_packet` either (that's only relevant for Rx
raw UDP streaming).

--M

On Wed, Jan 8, 2025 at 7:34=E2=80=AFPM <nriedel@serranosystems.com> wrote:

> Hi Martin, Marcus & Rob,
>
> Thank you for your previous responses. Cy is working for me on this
> development. Let me jump in and explain what we are trying to accomplish.
>
> We are using an x310 USRP to transmit samples from a custom C++
> application over a 10Gb Ethernet interface. The target sample rate is 200
> MSps, with 16-bit I/Q samples. We have receive functions running running
> reliably over the 10Gb Ethernet interface at the 200 MSps rate.
>
> We would like to stream the transmit samples continuously, and we want th=
e
> sample timing to be synchronized to GPS time (our x310 is fitted with the
> internal GPSDO).
>
> We understand that we may have occasional errors on the 10Gb Ethernet
> link, and that we will need to recover from them. We are trying to
> understand the best combination of burst size and packet size to accompli=
sh
> this.
>
> We initially tried making the burst size and the packet size the same. So
> each packet has 1996 samples, and the metadata in each packet has
> start_of_burst, end_of_burst, and has_timestamp all set true. The time_sp=
ec
> in the metadata is updated by 1996 ticks for each packet, corresponding t=
o
> the number of samples in each packet. We have flow control enabled on the
> transmit stream:
>
> uhd::stream_args_t tx_stream_args("sc16", "sc16");
>
> tx_stream_args.args["enable_fc"] =3D "1"; // Enable flow control
>
> tx_stream_args.args["stream_mode"] =3D "full_packet"; // Required for
> handling flow control responses
>
> tx_stream =3D usrp->get_tx_stream(tx_stream_args);
>
> Similar to the tx_timed_samples example, we set the time_spec of the firs=
t
> packet to be 1 second in the future, to be sure that we have enough sampl=
es
> queued up in the USRP before it actually begins transmitting.
>
> This approach does not seem to work at all. We observe that after sending
> 64 packets, the call to tx_send() takes almost one second to return. So w=
e
> believe the flow control is working, and there are 64 packets queue in th=
e
> USRP.
>
> Very soon after that, we get an async message with EVENT_CODE_BURST_ACK.
> The time_spec in that message is one sample time after the end of the fir=
st
> packet. Very soon after that, we receive a number of async messages with
> EVENT_CODE_TIME_ERROR. The time_spec in each of these appears to be 2
> samples after the end of the corresponding packet.
>
> 1. Is is possible to send adjacent bursts? That is, with time_spec values
> that are exactly 1996 samples after the previous burst? Or is some gap
> required between the bursts? Based on some experiments with the
> tx_timed_samples example, I think there must be a gap of at least one
> sample between the bursts.
>
> 2. Is there any limit to how long a burst can be? Currently, we are
> thinking to send the samples in one continuous burst. Then, if an error i=
s
> detected, (e.g. EVENT_CODE_TIME_ERROR, EVENT_CODE_UNDERFLOW), we will end
> the burst and start a new burst. Only the first packet in the burst will
> include the time_spec parameter.
>
> Thanks for your help!
>
> Neal Riedel
>
> Serrano Systems, Inc.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009c097f062b377979
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Neal,</div><div><br></div><div>for continuous stre=
aming, don&#39;t use EOB. Just always include timestamps. I&#39;m not sure =
right now on adjacent bursts, you&#39;re probably right, but they&#39;re th=
e wrong tool here anyway.</div><div><br></div><div>There is, however, no li=
mit on burst sizes. That means if your application is running for days, and=
 let&#39;s assume we don&#39;t drop anything, you would have one very long =
burst.<br></div><div><br></div><div>The USRP will hold a packet until the t=
ransmit-time has been reached. If you always add timestamps to the send() c=
all, then every packet will have timestamps (if you call send() with more d=
ata than fits into one packet, then the streamer code will calculate timest=
amps for all outgoing packets). Like I said in the other thread, on X310, y=
ou have approx. 500 kB of buffer which corresponds to 64 packets of 8000 by=
tes each.<br></div><div><br></div><div>If you lose a packet between the hos=
t and the USRP, then you will eventually see an &quot;S&quot; and a &quot;U=
&quot;. And of course, you will have a gap in your transmission. But on the=
 next packet, as long as it reaches the radio on time, you will be aligned =
again.</div><div><br></div><div>EOBs will only get in the way, because the =
USRP will ACK every packet. So basically, only send an EOB when your applic=
ation is going into shutdown, and you want to cleanly exit the transmit thr=
ead.<br></div><div><br></div><div>Side note: You don&#39;t need to specify =
`enable_fc` (it&#39;s on by default), and you don&#39;t need to specify `fu=
ll_packet` either (that&#39;s only relevant for Rx raw UDP streaming).</div=
><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote gmail=
_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 8, 2025=
 at 7:34=E2=80=AFPM &lt;<a href=3D"mailto:nriedel@serranosystems.com">nried=
el@serranosystems.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><p>Hi Martin, Marcus &amp; Rob,</p><p>Thank you for yo=
ur previous responses.  Cy is working for me on this development. Let me ju=
mp in and explain what we are trying to accomplish.</p><p>We are using an x=
310 USRP to transmit samples from a custom C++ application over a 10Gb Ethe=
rnet interface.  The target sample rate is 200 MSps, with 16-bit I/Q sample=
s.   We have receive functions running running reliably over the 10Gb Ether=
net interface at the 200 MSps rate.</p><p>We would like to stream the trans=
mit samples continuously, and we want the sample timing to be synchronized =
to GPS time (our x310 is fitted with the internal GPSDO).</p><p>We understa=
nd that we may have occasional errors on the 10Gb Ethernet link, and that w=
e will need to recover from them.  We are trying to understand the best com=
bination of burst size and packet size to accomplish this.</p><p>We initial=
ly tried making the burst size and the packet size the same.  So each packe=
t has 1996 samples, and the metadata in each packet has start_of_burst, end=
_of_burst, and has_timestamp all set true.  The time_spec in the metadata i=
s updated by 1996 ticks for each packet, corresponding to the number of sam=
ples in each packet.  We have flow control enabled on the transmit stream:<=
/p><p>    uhd::stream_args_t tx_stream_args(&quot;sc16&quot;, &quot;sc16&qu=
ot;);</p><p>    tx_stream_args.args[&quot;enable_fc&quot;] =3D &quot;1&quot=
;; // Enable flow control</p><p>    tx_stream_args.args[&quot;stream_mode&q=
uot;] =3D &quot;full_packet&quot;; // Required for handling flow control re=
sponses</p><p>    tx_stream =3D usrp-&gt;get_tx_stream(tx_stream_args);</p>=
<p>Similar to the tx_timed_samples example, we set the time_spec of the fir=
st packet to be 1 second in the future, to be sure that we have enough samp=
les queued up in the USRP before it actually begins transmitting.</p><p>Thi=
s approach does not seem to work at all.  We observe that after sending 64 =
packets, the call to tx_send() takes almost one second to return.  So we be=
lieve the flow control is working, and there are 64 packets queue in the US=
RP.  </p><p>Very soon after that, we get an async message with EVENT_CODE_B=
URST_ACK.  The time_spec in that message is one sample time after the end o=
f the first packet.  Very soon after that, we receive a number of async mes=
sages with  EVENT_CODE_TIME_ERROR.  The time_spec in each of these appears =
to be 2 samples after the end of the corresponding packet.</p><p>1.  Is is =
possible to send adjacent bursts?  That is, with time_spec values that are =
exactly 1996 samples after the previous burst?  Or is some gap required bet=
ween the bursts? Based on some experiments with the tx_timed_samples exampl=
e, I think there must be a gap of at least one sample between the bursts.</=
p><p>2.  Is there any limit to how long a burst can be?  Currently, we are =
thinking to send the samples in one continuous burst.  Then, if an error is=
 detected, (e.g. EVENT_CODE_TIME_ERROR, EVENT_CODE_UNDERFLOW), we will end =
the burst and start a new burst.  Only the first packet in the burst will i=
nclude the time_spec parameter.</p><p>Thanks for your help!</p><p>Neal Ried=
el</p><p>Serrano Systems, Inc.</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009c097f062b377979--

--===============3376076753594524678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3376076753594524678==--
