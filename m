Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B29A067A3
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 22:57:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72347385C6E
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 16:57:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736373441; bh=0RyGYLZ5pfNAbfJZlxWxr3WgEVStDTpKLqkAKLxshd8=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=oo8DcqUFxcaS3SwKlVn1IHBoaGuwvRQ70nzWwxnX2rL6xJxwdzKK4wA3mHSSrVBYl
	 x7nzIJHwIDssdKzX+OE3HcPF6UaWaVdqJius71m1LShDJqJ32IK33ZGptzJRR152Pi
	 syYO+cQ/o0TdafAJf/C6V+NmqxdLDeIafXwT9EW8vz/gx4xbaNJqWs7vFMaLxaxZ/k
	 5FVwL5WnTCj9UyoqEa2e7Ka8X1rFUP/b06i8kHgBh+VDSyY81EGnPHDXcF2T8CFKvM
	 /6KbIs3FFLZs8DPX6X7o9T4w+CDKX32q9H2263WzHtMX3IzoZykZ/a2vAqxVKhFOlN
	 5GUxqoz38MV4g==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E616385EBF
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 16:54:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="akcEdzxJ";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d3d0205bd5so259964a12.3
        for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2025 13:54:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1736373281; x=1736978081; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OWvqv8cHLfN0SyZN74jM4VWKdm08alXBiLqauhQfaRw=;
        b=akcEdzxJi4NNnaF9qKRvKaYrRYfENfNfjkYm5bLGmftKn0hHrjG6JJdVYbg0wv1e7E
         9OSDGvSVTbVLBuX6QLq6uRyXnKZJVNeunwpCkxFM8mOCBiqOLOnTBPKKSVkk9gO2vShY
         bCIPXK1gxMaUB3RSbkoXW3ZNTmEIpFZC1Xb89JwzG5/19rfkWFARHnc/5K+SowP3QRfV
         gMucZSVqb2HPTz4EzlC8OJ3WWW5qWe5HfTmxJNm6UqjQ11CDPdlJDb6GTKoJ1fv4NVe/
         84EQqIdxJLhsz8cWbU5Lr74a+5s7XKGbCdicZXpeUiTRgjC7IDHuMXvi64NMtdMvSXif
         Y2ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736373281; x=1736978081;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OWvqv8cHLfN0SyZN74jM4VWKdm08alXBiLqauhQfaRw=;
        b=NHZzcs4MccxlnXWixYmQoE1E39pAgw5lDjbk4rWWQN9b+DMz7TFuZFdYeA8pPzG9VT
         CCoPOvyeYH61si/EyKnbklefUGKQYKHIqRnQetF7Nh5eMisSZkFz8YipA19uWC/uEdcJ
         ZQcRFxvEGiH21L4Zqhiw1ro8qQtY2XpEobRhiNsCJCt6I5nEdojGrcpSO9STgV0SxWYm
         iZHGHYOVPj6gMqI/ZQzt2ZgOQcrXmRD4AEBKcAK84AAyxUHb+ZCrLHoaXrK1YndLCJng
         FVxDjKiKyuFFfgeKjOss8fYHLO8eEsP+xWO1XXu0nfwg/5OYcKERUM7hL41fBc5N99qX
         zyCg==
X-Gm-Message-State: AOJu0Yyh2wEKQ9oqb85MQt/daqFQ1tQretblDZzIpQUfaRPv2FMMYBdn
	VKw8vplqssLH281GuYh4TDnQZle7FD9bnuabxGYaWmreno3GbK3YMxIxSDDVl/NRcEq3NJ94ZWH
	qMdBvy4k/Gq4X2eIInI74hMDr9qc2iqlEZBqo
X-Gm-Gg: ASbGncv5/o+9Z5/PnWIL9VjIdkbFO1Xi6u3FA7bJNX8YvgS0I8wAlKyJDZkifdxMzHv
	AFJFpzSak4KfcgjEERQEwcOaM0IMIKCmzKqgNmi7h8CgQZ3kWtq2ctF3VYxczww63wVD1vFU=
X-Google-Smtp-Source: AGHT+IEXpGICQB7Qkfe9DsVN0EMRoTzy1TRKol9Fc6sNCJ6MCY2nu0xwSz0TVDBK1e2denJSUzAfCNpd9mw1d5bNpPc=
X-Received: by 2002:a05:6402:278f:b0:5d0:e63e:21c3 with SMTP id
 4fb4d7f45d1cf-5d972e085d7mr3942134a12.14.1736373281072; Wed, 08 Jan 2025
 13:54:41 -0800 (PST)
MIME-Version: 1.0
References: <zm9g7ckmjEF3f3aDDgmdgX2RMTEkwMAvYmzS73E8vQ@lists.ettus.com> <CAFOi1A7Xc7PkC5iNZ011ceUk6=jEmZOHPZu-pCRxrr2MspSdpQ@mail.gmail.com>
In-Reply-To: <CAFOi1A7Xc7PkC5iNZ011ceUk6=jEmZOHPZu-pCRxrr2MspSdpQ@mail.gmail.com>
Date: Wed, 8 Jan 2025 16:54:29 -0500
X-Gm-Features: AbW1kvbEjtAzaYam9T8nvrdqKtZBDw9NgIhcVERfTD9PbJNY9XC9fbyvrHF689s
Message-ID: <CAB__hTS4RRDcowE0_BiqVF=AckDZh+ohSf7y8kV4sOCZ5mom5A@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: QCWFAVAA73J7NTES3FOG6LP6NLD3LPCY
X-Message-ID-Hash: QCWFAVAA73J7NTES3FOG6LP6NLD3LPCY
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QCWFAVAA73J7NTES3FOG6LP6NLD3LPCY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2315117180972675968=="

--===============2315117180972675968==
Content-Type: multipart/alternative; boundary="0000000000009dd719062b38e830"

--0000000000009dd719062b38e830
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Neal,
I want to modify what I previously said about DRAMFIFO.  In recent UHD
versions, the Replay block has taken on the functionality of what used to
be the DRAMFIFO (i.e., the Replay block can act as a FIFO using the onboard
RAM). There is apparently a tx_streamer stream arg "streamer =3D
replay_buffered" that will cause the multi_usrp object to include the
Replay block in the graph automatically and use it as a FIFO.  I have not
tried this, but there is some documentation here
<https://uhd.readthedocs.io/en/latest/page_configuration.html#config_stream=
_args_args>
.
Rob

On Wed, Jan 8, 2025 at 3:12=E2=80=AFPM Martin Braun <martin.braun@ettus.com=
> wrote:

> Hi Neal,
>
> for continuous streaming, don't use EOB. Just always include timestamps.
> I'm not sure right now on adjacent bursts, you're probably right, but
> they're the wrong tool here anyway.
>
> There is, however, no limit on burst sizes. That means if your applicatio=
n
> is running for days, and let's assume we don't drop anything, you would
> have one very long burst.
>
> The USRP will hold a packet until the transmit-time has been reached. If
> you always add timestamps to the send() call, then every packet will have
> timestamps (if you call send() with more data than fits into one packet,
> then the streamer code will calculate timestamps for all outgoing packets=
).
> Like I said in the other thread, on X310, you have approx. 500 kB of buff=
er
> which corresponds to 64 packets of 8000 bytes each.
>
> If you lose a packet between the host and the USRP, then you will
> eventually see an "S" and a "U". And of course, you will have a gap in yo=
ur
> transmission. But on the next packet, as long as it reaches the radio on
> time, you will be aligned again.
>
> EOBs will only get in the way, because the USRP will ACK every packet. So
> basically, only send an EOB when your application is going into shutdown,
> and you want to cleanly exit the transmit thread.
>
> Side note: You don't need to specify `enable_fc` (it's on by default), an=
d
> you don't need to specify `full_packet` either (that's only relevant for =
Rx
> raw UDP streaming).
>
> --M
>
> On Wed, Jan 8, 2025 at 7:34=E2=80=AFPM <nriedel@serranosystems.com> wrote=
:
>
>> Hi Martin, Marcus & Rob,
>>
>> Thank you for your previous responses. Cy is working for me on this
>> development. Let me jump in and explain what we are trying to accomplish=
.
>>
>> We are using an x310 USRP to transmit samples from a custom C++
>> application over a 10Gb Ethernet interface. The target sample rate is 20=
0
>> MSps, with 16-bit I/Q samples. We have receive functions running running
>> reliably over the 10Gb Ethernet interface at the 200 MSps rate.
>>
>> We would like to stream the transmit samples continuously, and we want
>> the sample timing to be synchronized to GPS time (our x310 is fitted wit=
h
>> the internal GPSDO).
>>
>> We understand that we may have occasional errors on the 10Gb Ethernet
>> link, and that we will need to recover from them. We are trying to
>> understand the best combination of burst size and packet size to accompl=
ish
>> this.
>>
>> We initially tried making the burst size and the packet size the same. S=
o
>> each packet has 1996 samples, and the metadata in each packet has
>> start_of_burst, end_of_burst, and has_timestamp all set true. The time_s=
pec
>> in the metadata is updated by 1996 ticks for each packet, corresponding =
to
>> the number of samples in each packet. We have flow control enabled on th=
e
>> transmit stream:
>>
>> uhd::stream_args_t tx_stream_args("sc16", "sc16");
>>
>> tx_stream_args.args["enable_fc"] =3D "1"; // Enable flow control
>>
>> tx_stream_args.args["stream_mode"] =3D "full_packet"; // Required for
>> handling flow control responses
>>
>> tx_stream =3D usrp->get_tx_stream(tx_stream_args);
>>
>> Similar to the tx_timed_samples example, we set the time_spec of the
>> first packet to be 1 second in the future, to be sure that we have enoug=
h
>> samples queued up in the USRP before it actually begins transmitting.
>>
>> This approach does not seem to work at all. We observe that after sendin=
g
>> 64 packets, the call to tx_send() takes almost one second to return. So =
we
>> believe the flow control is working, and there are 64 packets queue in t=
he
>> USRP.
>>
>> Very soon after that, we get an async message with EVENT_CODE_BURST_ACK.
>> The time_spec in that message is one sample time after the end of the fi=
rst
>> packet. Very soon after that, we receive a number of async messages with
>> EVENT_CODE_TIME_ERROR. The time_spec in each of these appears to be 2
>> samples after the end of the corresponding packet.
>>
>> 1. Is is possible to send adjacent bursts? That is, with time_spec value=
s
>> that are exactly 1996 samples after the previous burst? Or is some gap
>> required between the bursts? Based on some experiments with the
>> tx_timed_samples example, I think there must be a gap of at least one
>> sample between the bursts.
>>
>> 2. Is there any limit to how long a burst can be? Currently, we are
>> thinking to send the samples in one continuous burst. Then, if an error =
is
>> detected, (e.g. EVENT_CODE_TIME_ERROR, EVENT_CODE_UNDERFLOW), we will en=
d
>> the burst and start a new burst. Only the first packet in the burst will
>> include the time_spec parameter.
>>
>> Thanks for your help!
>>
>> Neal Riedel
>>
>> Serrano Systems, Inc.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009dd719062b38e830
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Neal,<div>I want to modify what I previously said about=
 DRAMFIFO.=C2=A0 In recent UHD versions, the Replay block has taken on the =
functionality of what used to be the DRAMFIFO (i.e., the Replay block can a=
ct as a FIFO using the onboard RAM). There is apparently a tx_streamer stre=
am arg &quot;streamer =3D replay_buffered&quot; that will cause=C2=A0the mu=
lti_usrp object to include the Replay block in the graph automatically and =
use it as a FIFO.=C2=A0 I have not tried this, but there is some documentat=
ion <a href=3D"https://uhd.readthedocs.io/en/latest/page_configuration.html=
#config_stream_args_args">here</a>.</div><div>Rob</div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Jan 8, 2025 at 3:12=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto=
:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Nea=
l,</div><div><br></div><div>for continuous streaming, don&#39;t use EOB. Ju=
st always include timestamps. I&#39;m not sure right now on adjacent bursts=
, you&#39;re probably right, but they&#39;re the wrong tool here anyway.</d=
iv><div><br></div><div>There is, however, no limit on burst sizes. That mea=
ns if your application is running for days, and let&#39;s assume we don&#39=
;t drop anything, you would have one very long burst.<br></div><div><br></d=
iv><div>The USRP will hold a packet until the transmit-time has been reache=
d. If you always add timestamps to the send() call, then every packet will =
have timestamps (if you call send() with more data than fits into one packe=
t, then the streamer code will calculate timestamps for all outgoing packet=
s). Like I said in the other thread, on X310, you have approx. 500 kB of bu=
ffer which corresponds to 64 packets of 8000 bytes each.<br></div><div><br>=
</div><div>If you lose a packet between the host and the USRP, then you wil=
l eventually see an &quot;S&quot; and a &quot;U&quot;. And of course, you w=
ill have a gap in your transmission. But on the next packet, as long as it =
reaches the radio on time, you will be aligned again.</div><div><br></div><=
div>EOBs will only get in the way, because the USRP will ACK every packet. =
So basically, only send an EOB when your application is going into shutdown=
, and you want to cleanly exit the transmit thread.<br></div><div><br></div=
><div>Side note: You don&#39;t need to specify `enable_fc` (it&#39;s on by =
default), and you don&#39;t need to specify `full_packet` either (that&#39;=
s only relevant for Rx raw UDP streaming).</div><div><br></div><div>--M<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Jan 8, 2025 at 7:34=E2=80=AFPM &lt;<a href=3D"mailto:nriedel@=
serranosystems.com" target=3D"_blank">nriedel@serranosystems.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi Marti=
n, Marcus &amp; Rob,</p><p>Thank you for your previous responses.  Cy is wo=
rking for me on this development. Let me jump in and explain what we are tr=
ying to accomplish.</p><p>We are using an x310 USRP to transmit samples fro=
m a custom C++ application over a 10Gb Ethernet interface.  The target samp=
le rate is 200 MSps, with 16-bit I/Q samples.   We have receive functions r=
unning running reliably over the 10Gb Ethernet interface at the 200 MSps ra=
te.</p><p>We would like to stream the transmit samples continuously, and we=
 want the sample timing to be synchronized to GPS time (our x310 is fitted =
with the internal GPSDO).</p><p>We understand that we may have occasional e=
rrors on the 10Gb Ethernet link, and that we will need to recover from them=
.  We are trying to understand the best combination of burst size and packe=
t size to accomplish this.</p><p>We initially tried making the burst size a=
nd the packet size the same.  So each packet has 1996 samples, and the meta=
data in each packet has start_of_burst, end_of_burst, and has_timestamp all=
 set true.  The time_spec in the metadata is updated by 1996 ticks for each=
 packet, corresponding to the number of samples in each packet.  We have fl=
ow control enabled on the transmit stream:</p><p>    uhd::stream_args_t tx_=
stream_args(&quot;sc16&quot;, &quot;sc16&quot;);</p><p>    tx_stream_args.a=
rgs[&quot;enable_fc&quot;] =3D &quot;1&quot;; // Enable flow control</p><p>=
    tx_stream_args.args[&quot;stream_mode&quot;] =3D &quot;full_packet&quot=
;; // Required for handling flow control responses</p><p>    tx_stream =3D =
usrp-&gt;get_tx_stream(tx_stream_args);</p><p>Similar to the tx_timed_sampl=
es example, we set the time_spec of the first packet to be 1 second in the =
future, to be sure that we have enough samples queued up in the USRP before=
 it actually begins transmitting.</p><p>This approach does not seem to work=
 at all.  We observe that after sending 64 packets, the call to tx_send() t=
akes almost one second to return.  So we believe the flow control is workin=
g, and there are 64 packets queue in the USRP.  </p><p>Very soon after that=
, we get an async message with EVENT_CODE_BURST_ACK.  The time_spec in that=
 message is one sample time after the end of the first packet.  Very soon a=
fter that, we receive a number of async messages with  EVENT_CODE_TIME_ERRO=
R.  The time_spec in each of these appears to be 2 samples after the end of=
 the corresponding packet.</p><p>1.  Is is possible to send adjacent bursts=
?  That is, with time_spec values that are exactly 1996 samples after the p=
revious burst?  Or is some gap required between the bursts? Based on some e=
xperiments with the tx_timed_samples example, I think there must be a gap o=
f at least one sample between the bursts.</p><p>2.  Is there any limit to h=
ow long a burst can be?  Currently, we are thinking to send the samples in =
one continuous burst.  Then, if an error is detected, (e.g. EVENT_CODE_TIME=
_ERROR, EVENT_CODE_UNDERFLOW), we will end the burst and start a new burst.=
  Only the first packet in the burst will include the time_spec parameter.<=
/p><p>Thanks for your help!</p><p>Neal Riedel</p><p>Serrano Systems, Inc.</=
p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009dd719062b38e830--

--===============2315117180972675968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2315117180972675968==--
