Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1086E9EE802
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 14:46:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3FED3385E37
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 08:46:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734011183; bh=5c8umZt7d8bTtkoSkQIXs0MuCOkCJDe2qchaosDgX8w=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kSZPqctHAFlR1M/JiYAKa7bxqYwUlF9cxNRRyRDjfoIEC8to/S7tqS/vATjclSYNm
	 DYoZV44IQwuBe6ZAP+o8QaHwlBuLwqvCkhGUiVzfI7+qjMXx1GVGM6V4WVCSzx+g0f
	 DJ/g0t+yuVk8nswnaFGQHRPKj7iWa5U10kqQOFZeiwjBGIeCBqPt4k5I7GVIi7rO8z
	 BdEfMizlz+5aVYRlGvDCDbA5V4La3QTo+23bG4Lv0uROwSy4L1+or5h47DyMbzankK
	 9ci4la0CSH1yxZqvoHPlaKGgqcwAlYHcQquJQuGR0HAFZpeQS57pLYhorUj8nvTJJR
	 2tI5b9QF6ZmWA==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 73E9F3857A2
	for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 08:46:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="FpUMhJ7H";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5ceb03aadb1so819921a12.0
        for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 05:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1734011171; x=1734615971; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qfbdhoQdFdF/zS46kvPTxeBN/Zuc4nQwAQNKk0wVxoY=;
        b=FpUMhJ7HB9hkIRpUe6mFYvTkxGxFlTh2Up/2q0eAZEzW1j4DOlJ9BfKO6QKzeTHYfi
         EO0dxg5QNlB/nNRCWT+mXfizhJyClqKUKCm91OXoAHOLXwbuNMuKUjVh40YVE9fBavjQ
         odD1rPAoHSN0k33y8x0Qcumb1lfG488nKNQUKirPNsqLryTx2bVElTQyT01gzJRHA1mH
         gLEifvUI5QwoFMzQM+ev2ao6583NkAIK3JXfEZ4qzdgvHHgp33H+pIU8SUJrFdYw+L2N
         l2Dfnoc5TdnPIVwWkF72waLBkQOja8vVZsRuYrpefSuu7pInstCfp744zRXExiGCOhLb
         UhHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734011171; x=1734615971;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qfbdhoQdFdF/zS46kvPTxeBN/Zuc4nQwAQNKk0wVxoY=;
        b=XE6ugZIzfYpH6J9fLkkABg/Cpxbyhnv6uOACEWOZD9mcgsDwDd+C3NjMwab+fUttUY
         t809D6T+emuzZKA67ox5xt809kQVi5v8pXeeMWH7BJEmUjymd4ucZzpxXo4+FL7O7CRO
         uD/37roFBjXVAC8hB5S/jLTxY8lY8PY6uz9xQLm7MQTqbzmjvCXLqs6qHRaRTrx9jCGz
         bYp8r8KNIwO50Cs+zi+r/KnF4dxzB6BWL0u20I6ZfHRllmFQ05VU6nQoW/voUBc4goGV
         whJy4iA1Xa4hjJN1tLJRgm89KyAm5WEInkrK2u5Nq51E5aTcEM/Ygru92ExkN11ZH6Dr
         +6SA==
X-Gm-Message-State: AOJu0YwTAub5Q/XyndxFCtmkUqMFDlojlxCBpvCpd1xRULs+fyprgjeW
	wSvftPTZ/2B71Qs5Fv+Xp0bB+0Asb1rFqal1l8L8JEOsE3/ZLrHlXNhGJ83FzYUWUtr2GBymMFG
	2DUmjZ0HAkKupXY2H1V/R3DYPcaY0oSjI5cW5jUv8WuQg9yOktNU=
X-Gm-Gg: ASbGncvmbYNwpawSMkbj7khKpPT/HyVEWsCuAY+xOEKe0OKorf8iSIGUz/c/WZCP23K
	op6jfgXTLBx/VKS2ib3h5HZf9oV6jNVprj8a5
X-Google-Smtp-Source: AGHT+IE+x5r0excNKBdyUff/jWMYGZChzejtdUF0qy5ovAQtULkKk8wKVunW7l9IbIwKyPlYk/4e48haAEJw0KinVi4=
X-Received: by 2002:a05:6402:5418:b0:5d0:e410:468b with SMTP id
 4fb4d7f45d1cf-5d632354ea7mr334333a12.2.1734011170692; Thu, 12 Dec 2024
 05:46:10 -0800 (PST)
MIME-Version: 1.0
References: <CAAc7u9qNjdOzvLMaa-7P71vBuDDR2F-YELPuPHN52Eh1jgv5yg@mail.gmail.com>
 <CAO_U4K4wbNRxPAhGADDgG7ZO+MN25m=4v3gHKNJwUuMqu4E66Q@mail.gmail.com>
In-Reply-To: <CAO_U4K4wbNRxPAhGADDgG7ZO+MN25m=4v3gHKNJwUuMqu4E66Q@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 12 Dec 2024 14:45:59 +0100
Message-ID: <CAFOi1A4wX+uh5VwBkwgfX9T_B9SthyPH_8JGc+5EcAz4NXYFPA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: XM4MP2XCKOYVA5HZYQKLMGTWVEQ3WWVJ
X-Message-ID-Hash: XM4MP2XCKOYVA5HZYQKLMGTWVEQ3WWVJ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Python API: Buffer processing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XM4MP2XCKOYVA5HZYQKLMGTWVEQ3WWVJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7299664210309603505=="

--===============7299664210309603505==
Content-Type: multipart/alternative; boundary="000000000000ddbe9a062912efbf"

--000000000000ddbe9a062912efbf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just as a side note, when you run recv() and send() from different Python
threads, the underlying C++ code that gets into will release the Python
GIL, which allows for true concurrency even with thread vs. multiprocessing=
.

--M

On Thu, Dec 12, 2024 at 1:51=E2=80=AFPM Pedro Vieira <pav.vieira@gmail.com>=
 wrote:

> Hi Tim, What equipment are you using? What is the interface? As an initia=
l
> suggestion, try using multiprocessing, so that the two codes can be
> executed on different cores simultaneously, because when using threads, t=
he
> execution of the codes, in Python, is not simultaneous. The following lin=
k
> explains it better https://youtu.be/AZnGRKFUU0c?si=3DrKpVhZSJYyuOjPiG Hug=
s
>
> Em qui., 12 de dez. de 2024, 09:25, Tim Vancauwenbergh <
> tim.vancauwenbergh13@gmail.com> escreveu:
>
>> Hi all,
>>
>> I am working with the UHD Python API to handle burst-mode data
>> transmission and reception. Both the transmitter and receiver are set to=
 be
>> active at specific times, for a fixed number of samples per burst. This
>> process occurs approximately 100 times per second.
>>
>> Currently, the transmit and receive processes are handled in separate
>> threads, where they wait for a timestamp to start their respective
>> operations. When both are finished, a new loop begins. The waiting howev=
er
>> can create some late commands. I would like to process the buffer
>> separately.
>>
>> For each RX burst, the following function is called:
>> *rx_buffer_size =3D int(5000) # each recv is 500 samples, but we want mo=
re
>> space for multiple bursts*
>> *rx_buffer =3D np.zeros(rx_buffer_size, dtype=3Dnp.complex64)*
>>
>> *def rx(start_time, rx_streamer, rx_buffer, rx_metadata):*
>> *    global rx_time*
>> *    rx_stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done=
)*
>> *    rx_stream_cmd.num_samps =3D 500*
>> *    rx_stream_cmd.stream_now =3D False*
>> *    rx_stream_cmd.time_spec =3D start_time*
>> *    rx_streamer.issue_stream_cmd(rx_stream_cmd)*
>>
>> *    num_rx_samps =3D rx_streamer.recv(rx_buffer, rx_metadata, timeout=
=3D1.0)*
>> *    rx_time =3D rx_metadata.time_spec.get_real_secs()*
>>
>> Each receive burst consists of exactly 500 samples. However, this
>> approach feels inefficient as I am processing each burst individually. M=
y
>> goal is to:
>>
>>    1. *Optimize Efficiency*: Fill a larger buffer with multiple bursts
>>    (e.g., 10 bursts =3D 5000 samples) before processing.
>>    2. *Preserve Timestamps*: Retain the metadata timestamp for each
>>    burst (i.e., every 500th sample) within the larger buffer.
>>
>> For example, if a buffer holds 10 bursts, I would like:
>>
>>    - The buffer to contain 5000 samples.
>>    - To retrieve the rx_metadata timestamp for the first sample of each
>>    burst (at indices 0, 500, 1000, ...).
>>
>> How can I achieve this efficiently while ensuring accurate timestamp
>> extraction for each burst?
>>
>> Best regards,
>> Tim
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ddbe9a062912efbf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just as a side note, when you run recv() and send() f=
rom different Python threads, the underlying C++ code that gets into will r=
elease the Python GIL, which allows for true concurrency even with thread v=
s. multiprocessing.</div><div><br></div><div>--M<br></div></div><br><div cl=
ass=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, Dec 12, 2024 at 1:51=E2=80=AFPM Pedro Vieira &lt;<a href=3D"ma=
ilto:pav.vieira@gmail.com">pav.vieira@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><p dir=3D"ltr">Hi Tim, What =
equipment are you using? What is the interface? As an initial suggestion, t=
ry using multiprocessing, so that the two codes can be executed on differen=
t cores simultaneously, because when using threads, the execution of the co=
des, in Python, is not simultaneous. The following link explains it better =
<a href=3D"https://youtu.be/AZnGRKFUU0c?si=3DrKpVhZSJYyuOjPiG" target=3D"_b=
lank">https://youtu.be/AZnGRKFUU0c?si=3DrKpVhZSJYyuOjPiG</a> Hugs</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Em qui=
., 12 de dez. de 2024, 09:25, Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.=
vancauwenbergh13@gmail.com" target=3D"_blank">tim.vancauwenbergh13@gmail.co=
m</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><p>Hi all,</p><p>I am working with the UHD Python API =
to handle burst-mode data transmission and reception. Both the transmitter =
and receiver are set to be active at specific times, for a fixed number of =
samples per burst. This process occurs approximately 100 times per second.<=
/p><p>Currently, the transmit and receive processes are handled in separate=
 threads, where they wait for a timestamp to start their respective operati=
ons. When both are finished, a new loop begins. The waiting however can cre=
ate some late commands. I would like to process the buffer separately.</p><=
p>For each RX burst, the following function is called:</p><div><div style=
=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospace=
;font-size:14px;line-height:19px;white-space:pre-wrap"><div><i>rx_buffer_si=
ze =3D int(5000) # each recv is 500 samples, but we want more space for mul=
tiple bursts</i></div><div><i>rx_buffer =3D np.zeros(rx_buffer_size, dtype=
=3Dnp.complex64)</i></div></div></div><div><i><br></i></div><div><div style=
=3D"line-height:19px"><div style=3D"color:rgb(0,0,0);font-family:Consolas,&=
quot;Courier New&quot;,monospace;font-size:14px;white-space:pre-wrap"><i><s=
pan style=3D"color:rgb(0,0,255)">def</span> rx(start_time, rx_streamer, rx_=
buffer, rx_metadata):</i></div><div style=3D"color:rgb(0,0,0);font-family:C=
onsolas,&quot;Courier New&quot;,monospace;font-size:14px;white-space:pre-wr=
ap"><i>=C2=A0 =C2=A0 <span style=3D"color:rgb(0,0,255)">global</span> rx_ti=
me</i></div><div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Couri=
er New&quot;,monospace;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=
=A0 rx_stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done)</i=
></div><div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier Ne=
w&quot;,monospace;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=A0 rx_=
stream_cmd.num_samps =3D 500</i></div><div style=3D"color:rgb(0,0,0);font-f=
amily:Consolas,&quot;Courier New&quot;,monospace;font-size:14px;white-space=
:pre-wrap"><i>=C2=A0 =C2=A0 rx_stream_cmd.stream_now =3D <span style=3D"col=
or:rgb(0,0,255)">False</span></i></div><div style=3D"color:rgb(0,0,0);font-=
family:Consolas,&quot;Courier New&quot;,monospace;font-size:14px;white-spac=
e:pre-wrap"><i>=C2=A0 =C2=A0 rx_stream_cmd.time_spec =3D start_time</i></di=
v><div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quo=
t;,monospace;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=A0 rx_strea=
mer.issue_stream_cmd(rx_stream_cmd)</i></div><div style=3D"color:rgb(0,0,0)=
;font-family:Consolas,&quot;Courier New&quot;,monospace;font-size:14px;whit=
e-space:pre-wrap"><i><br></i></div><div style=3D"color:rgb(0,0,0);font-fami=
ly:Consolas,&quot;Courier New&quot;,monospace;font-size:14px;white-space:pr=
e-wrap"><i>=C2=A0 =C2=A0 num_rx_samps =3D rx_streamer.recv(rx_buffer, rx_me=
tadata, timeout=3D<span style=3D"color:rgb(9,134,88)">1.0</span>)</i></div>=
<div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;=
,monospace;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=A0 rx_time =
=3D rx_metadata.time_spec.get_real_secs()</i></div><div><p>Each receive bur=
st consists of exactly 500 samples. However, this approach feels inefficien=
t as I am processing each burst individually. My goal is to:</p><ol><li><st=
rong>Optimize Efficiency</strong>: Fill a larger buffer with multiple burst=
s (e.g., 10 bursts =3D 5000 samples) before processing.</li><li><strong>Pre=
serve Timestamps</strong>: Retain the metadata timestamp for each burst (i.=
e., every 500th sample) within the larger buffer.</li></ol><p>For example, =
if a buffer holds 10 bursts, I would like:</p><ul><li>The buffer to contain=
 5000 samples.</li><li>To retrieve the <code>rx_metadata</code> timestamp f=
or the first sample of each burst (at indices 0, 500, 1000, ...).</li></ul>=
<p>How can I achieve this efficiently while ensuring accurate timestamp ext=
raction for each burst?</p><p>Best regards,<br>Tim</p></div></div></div></d=
iv>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000ddbe9a062912efbf--

--===============7299664210309603505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7299664210309603505==--
