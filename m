Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0169EE719
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 13:51:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FB1F380953
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 07:51:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734007902; bh=0lFbpl+G1daiaM5hHLQAYpF/r5MptqCwPD+LuDzDCmw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pWckpR/nmWNd55TsIHVvs5dxaWR02IwTqRU5qQwwlmfru/dBF1OktTgZecz/tRaF1
	 20V+i1c/jPioQYF0WlIEkcLnEyYTKX0fkgR9YFKNPHUPanzcUODC0ibVRDHPE0EVrY
	 DvaGKtrVEK0/TDgnBIzxtHubwV/ddXDwzEChb0n2a8ZQGHwOD1IwS9OuXF9U5X1X03
	 7iu37ZUuMUwHdfIYNTWxCZ758PyNXdy7Bog6WLsE37lgnsJ/lv78I1+1PlZ8ZCC5GN
	 oOjz23sUeKb2uUlXmPBhvKicaInjuSvkoz0j3JNQfFXNzdAyUe9e6XBEMB8OXf2lgY
	 tY2nGMoQoZJsA==
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 8CB923854EB
	for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 07:51:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cUGKDtW5";
	dkim-atps=neutral
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e3a189af49fso333285276.3
        for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 04:51:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734007868; x=1734612668; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7oZmiT6rCGlh/+ErYmkeEaJUSrV9g46wyfGuKGhoZUU=;
        b=cUGKDtW5fnJd22x6zyT5TPJvwcoGm/stb2ymroNRW71DQ3Y1uBQERb2acLp5YIiYAo
         GBellD47U3xp2THcfQos+newgtt1E9kUyr+SjAAm4hC38RkhEuQYHHtgULlI7s43ihdM
         Xosnmz/YkI22yaHQHZ2m/gwgWBHg2i4LKQelKGN//vSOW62Ws1j+fPJXgGjeMXi3vQku
         4WWvTkP0WStdN9zdP3FKmllxNKB0wUMboEviHgm2gPrg3WNOIHyP7B8dUweczPbAm3xQ
         +dY01txNBfDCknpFtUytrl1MDZm5/ZHV2pE/By9RGntSNlOrDMXpVm79pAXy7wUoplX5
         mldw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734007868; x=1734612668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7oZmiT6rCGlh/+ErYmkeEaJUSrV9g46wyfGuKGhoZUU=;
        b=vSFO8ndur04f/BeCTEuo1QgblhDnxUAfzSjZdIGy43mScbMFKXr5NJZmAgqJq8zvmB
         JetJWBQdc65naIiN8v8qNlc9+Dek90YUTXw4FLaE6Smgrf4E5xx2BmoIfKMEEp5IYLfx
         gZ6+6WNHeYkzMmGXvw/BenBRfCUUXLfjMTR1aIZb4ddzLuY/tU1jgZGRJNC9ee9wGcuS
         T/RVQ8AswuHg5LX0RPGNdF/pqE9yfVQlirYmFGJXr5t3ZkFBxeTWbTMnpRxqd6edeQNn
         Lk4o6sswTIzPnXu3uobPqIwb2B+MIaXny+ZhunyIUFQ3t4dxnCjrxXbX+BFIPartELzF
         BD7g==
X-Gm-Message-State: AOJu0YyRrf7uyHyNLxmkG0yaRGp3/iBDXARz0+wWu62VvfEl20cUW/7V
	cjjf3LRkp0dlBSjX9m1xkf0nV+lJM0jbxFX+MPrNYb9jGJyUYxvhr1pDy0oJ9NZkQrbe4Wy4Jgr
	y5vvOsY9hmA2cfZJgTk4t6DgEXpM=
X-Gm-Gg: ASbGnctqLOdhzfbVrNoTMPcfyiOQmMG+cL0H9Myu/qmnXNv4LzsKXwDeGl0Gc8GWZKS
	WR+3jkyrOWtxFzh7stdM+9hGbQvj2GL+HkC3NNP3uXnn2z3byJCXCbkBRxBcnEAM=
X-Google-Smtp-Source: AGHT+IGXysT8j6Dypf1M/2Xt5azfGFfd+5Wc+F/5BJ0CeOfFjWnrLc225rw6MOxXk5vl2z9EwQa+ob98qLDO5Jc5InQ=
X-Received: by 2002:a05:6902:2e0a:b0:e3a:3a3d:40bd with SMTP id
 3f1490d57ef6-e41c7f37737mr189729276.36.1734007867812; Thu, 12 Dec 2024
 04:51:07 -0800 (PST)
MIME-Version: 1.0
References: <CAAc7u9qNjdOzvLMaa-7P71vBuDDR2F-YELPuPHN52Eh1jgv5yg@mail.gmail.com>
In-Reply-To: <CAAc7u9qNjdOzvLMaa-7P71vBuDDR2F-YELPuPHN52Eh1jgv5yg@mail.gmail.com>
From: Pedro Vieira <pav.vieira@gmail.com>
Date: Thu, 12 Dec 2024 09:50:57 -0300
Message-ID: <CAO_U4K4wbNRxPAhGADDgG7ZO+MN25m=4v3gHKNJwUuMqu4E66Q@mail.gmail.com>
To: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Message-ID-Hash: YCPNAKOHHWP62JRQASEJV6TXS5JGN5VO
X-Message-ID-Hash: YCPNAKOHHWP62JRQASEJV6TXS5JGN5VO
X-MailFrom: pav.vieira@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Python API: Buffer processing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YCPNAKOHHWP62JRQASEJV6TXS5JGN5VO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4806983910157256569=="

--===============4806983910157256569==
Content-Type: multipart/alternative; boundary="000000000000ffb1630629122a91"

--000000000000ffb1630629122a91
Content-Type: text/plain; charset="UTF-8"

Hi Tim, What equipment are you using? What is the interface? As an initial
suggestion, try using multiprocessing, so that the two codes can be
executed on different cores simultaneously, because when using threads, the
execution of the codes, in Python, is not simultaneous. The following link
explains it better https://youtu.be/AZnGRKFUU0c?si=rKpVhZSJYyuOjPiG Hugs

Em qui., 12 de dez. de 2024, 09:25, Tim Vancauwenbergh <
tim.vancauwenbergh13@gmail.com> escreveu:

> Hi all,
>
> I am working with the UHD Python API to handle burst-mode data
> transmission and reception. Both the transmitter and receiver are set to be
> active at specific times, for a fixed number of samples per burst. This
> process occurs approximately 100 times per second.
>
> Currently, the transmit and receive processes are handled in separate
> threads, where they wait for a timestamp to start their respective
> operations. When both are finished, a new loop begins. The waiting however
> can create some late commands. I would like to process the buffer
> separately.
>
> For each RX burst, the following function is called:
> *rx_buffer_size = int(5000) # each recv is 500 samples, but we want more
> space for multiple bursts*
> *rx_buffer = np.zeros(rx_buffer_size, dtype=np.complex64)*
>
> *def rx(start_time, rx_streamer, rx_buffer, rx_metadata):*
> *    global rx_time*
> *    rx_stream_cmd = uhd.types.StreamCMD(uhd.types.StreamMode.num_done)*
> *    rx_stream_cmd.num_samps = 500*
> *    rx_stream_cmd.stream_now = False*
> *    rx_stream_cmd.time_spec = start_time*
> *    rx_streamer.issue_stream_cmd(rx_stream_cmd)*
>
> *    num_rx_samps = rx_streamer.recv(rx_buffer, rx_metadata, timeout=1.0)*
> *    rx_time = rx_metadata.time_spec.get_real_secs()*
>
> Each receive burst consists of exactly 500 samples. However, this approach
> feels inefficient as I am processing each burst individually. My goal is to:
>
>    1. *Optimize Efficiency*: Fill a larger buffer with multiple bursts
>    (e.g., 10 bursts = 5000 samples) before processing.
>    2. *Preserve Timestamps*: Retain the metadata timestamp for each burst
>    (i.e., every 500th sample) within the larger buffer.
>
> For example, if a buffer holds 10 bursts, I would like:
>
>    - The buffer to contain 5000 samples.
>    - To retrieve the rx_metadata timestamp for the first sample of each
>    burst (at indices 0, 500, 1000, ...).
>
> How can I achieve this efficiently while ensuring accurate timestamp
> extraction for each burst?
>
> Best regards,
> Tim
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ffb1630629122a91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Tim, What equipment are you using? What is the interface?=
 As an initial suggestion, try using multiprocessing, so that the two codes=
 can be executed on different cores simultaneously, because when using thre=
ads, the execution of the codes, in Python, is not simultaneous. The follow=
ing link explains it better <a href=3D"https://youtu.be/AZnGRKFUU0c?si=3DrK=
pVhZSJYyuOjPiG">https://youtu.be/AZnGRKFUU0c?si=3DrKpVhZSJYyuOjPiG</a> Hugs=
</p>
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">Em qui., 12 de dez. de 2024, 09:25, Tim Vancauwenbergh &lt;=
<a href=3D"mailto:tim.vancauwenbergh13@gmail.com">tim.vancauwenbergh13@gmai=
l.com</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><p>Hi all,</p><p>I am working with the UHD Python API to handle burst=
-mode data transmission and reception. Both the transmitter and receiver ar=
e set to be active at specific times, for a fixed number of samples per bur=
st. This process occurs approximately 100 times per second.</p><p>Currently=
, the transmit and receive processes are handled in separate threads, where=
 they wait for a timestamp to start their respective operations. When both =
are finished, a new loop begins. The waiting however can create some late c=
ommands. I would like to process the buffer separately.</p><p>For each RX b=
urst, the following function is called:</p><div><div style=3D"color:rgb(0,0=
,0);font-family:Consolas,&quot;Courier New&quot;,monospace;font-size:14px;l=
ine-height:19px;white-space:pre-wrap"><div><i>rx_buffer_size =3D int(5000) =
# each recv is 500 samples, but we want more space for multiple bursts</i><=
/div><div><i>rx_buffer =3D np.zeros(rx_buffer_size, dtype=3Dnp.complex64)</=
i></div></div></div><div><i><br></i></div><div><div style=3D"line-height:19=
px"><div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&q=
uot;,monospace;font-size:14px;white-space:pre-wrap"><i><span style=3D"color=
:rgb(0,0,255)">def</span> rx(start_time, rx_streamer, rx_buffer, rx_metadat=
a):</i></div><div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Cour=
ier New&quot;,monospace;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=
=A0 <span style=3D"color:rgb(0,0,255)">global</span> rx_time</i></div><div =
style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,mono=
space;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=A0 rx_stream_cmd =
=3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done)</i></div><div style=
=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospace=
;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=A0 rx_stream_cmd.num_sa=
mps =3D 500</i></div><div style=3D"color:rgb(0,0,0);font-family:Consolas,&q=
uot;Courier New&quot;,monospace;font-size:14px;white-space:pre-wrap"><i>=C2=
=A0 =C2=A0 rx_stream_cmd.stream_now =3D <span style=3D"color:rgb(0,0,255)">=
False</span></i></div><div style=3D"color:rgb(0,0,0);font-family:Consolas,&=
quot;Courier New&quot;,monospace;font-size:14px;white-space:pre-wrap"><i>=
=C2=A0 =C2=A0 rx_stream_cmd.time_spec =3D start_time</i></div><div style=3D=
"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospace;fo=
nt-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=A0 rx_streamer.issue_strea=
m_cmd(rx_stream_cmd)</i></div><div style=3D"color:rgb(0,0,0);font-family:Co=
nsolas,&quot;Courier New&quot;,monospace;font-size:14px;white-space:pre-wra=
p"><i><br></i></div><div style=3D"color:rgb(0,0,0);font-family:Consolas,&qu=
ot;Courier New&quot;,monospace;font-size:14px;white-space:pre-wrap"><i>=C2=
=A0 =C2=A0 num_rx_samps =3D rx_streamer.recv(rx_buffer, rx_metadata, timeou=
t=3D<span style=3D"color:rgb(9,134,88)">1.0</span>)</i></div><div style=3D"=
color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospace;fon=
t-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=A0 rx_time =3D rx_metadata.=
time_spec.get_real_secs()</i></div><div><p>Each receive burst consists of e=
xactly 500 samples. However, this approach feels inefficient as I am proces=
sing each burst individually. My goal is to:</p><ol><li><strong>Optimize Ef=
ficiency</strong>: Fill a larger buffer with multiple bursts (e.g., 10 burs=
ts =3D 5000 samples) before processing.</li><li><strong>Preserve Timestamps=
</strong>: Retain the metadata timestamp for each burst (i.e., every 500th =
sample) within the larger buffer.</li></ol><p>For example, if a buffer hold=
s 10 bursts, I would like:</p><ul><li>The buffer to contain 5000 samples.</=
li><li>To retrieve the <code>rx_metadata</code> timestamp for the first sam=
ple of each burst (at indices 0, 500, 1000, ...).</li></ul><p>How can I ach=
ieve this efficiently while ensuring accurate timestamp extraction for each=
 burst?</p><p>Best regards,<br>Tim</p></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--000000000000ffb1630629122a91--

--===============4806983910157256569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4806983910157256569==--
