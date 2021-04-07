Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD4D3572FF
	for <lists+usrp-users@lfdr.de>; Wed,  7 Apr 2021 19:22:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1247A383E5C
	for <lists+usrp-users@lfdr.de>; Wed,  7 Apr 2021 13:22:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PJ0a0mHq";
	dkim-atps=neutral
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	by mm2.emwd.com (Postfix) with ESMTPS id B5BE5383E1C
	for <usrp-users@lists.ettus.com>; Wed,  7 Apr 2021 13:21:30 -0400 (EDT)
Received: by mail-io1-f52.google.com with SMTP id k25so13306675iob.6
        for <usrp-users@lists.ettus.com>; Wed, 07 Apr 2021 10:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/i7exJOQ+vdGJHdLgOo6vINBY779VXiThJBFaB7uAQQ=;
        b=PJ0a0mHqvJUvhvpaJeuvb97TpVRJIc+MxiDZap131ZKeu0emvsF024wdLDrIaRVCvl
         Hpv9ZqvFvW8/LOYBnDtMH6736990AmJ1BXILAmv+4Pd5pFnD93z3sr2IuNWwPEhpYQpv
         iMJtYXT6l/FpPJVbWgS56Nk7zi4CRfTkp+4stERnkDb7//LrZ0/DudJ/I1IVKdLFNhZQ
         IIO4rkpi7oSsn+eyPj4ZjfNTk3lFD6o/6lcebeU3JTh1RNW/XUuOKPvrF+XNE+arGJZs
         pPSb8aMtc3PzMpRJw4f7FYGDyshBZm+vebrPuroFOki0J5oKfScTwhrXbetQeFgW57Xv
         6v0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/i7exJOQ+vdGJHdLgOo6vINBY779VXiThJBFaB7uAQQ=;
        b=Z/vFLq7OcTGb7TUHC7/WFusweH556XMz8/Pp2QeSyefx4HWcbG1eS9tEHtfYSIJYPf
         ZZG9xujnX4g+K66Or+HcFua2V6czg++zAQUo1E75TPuhIgCsULFi8YEWsJN9b8ouW97p
         h0XWpodBi6pqDP83WDD928GIo/ZS6/55lTNsCa5IUZAdvABQekBty7cnZ0oyFhkoyP7N
         lhu34ihv8+umsQLKkRauyucluzaDrR7ATGjoj3oqykmsnEg+EJeS1IrDDwYBG2T2l7bo
         4pq0P5kaW5pYKN2tpEbVNsyWK1I4JVCzCLh+ymfVT9ahGUBiMbkxNU5zugZdRNZ19ePW
         cRIg==
X-Gm-Message-State: AOAM533zWpmilWJClNdTltCr1G+A3Lq7a+KboXUQw1LK1YAXZNN2BabT
	LoLP60rdwUwXFWg/kKH1OwbGpUiZhTuU/TMn7w8=
X-Google-Smtp-Source: ABdhPJwbstWOWfP79ez8Yz2JUO7Cmic38SjPvoUNI5sbcFtQXQbJ5tIoK6yBV82SYh1iZd8ISJDCTL88rJgfBvnZhlE=
X-Received: by 2002:a05:6638:1914:: with SMTP id p20mr4665916jal.92.1617816089918;
 Wed, 07 Apr 2021 10:21:29 -0700 (PDT)
MIME-Version: 1.0
References: <0615f19e-2486-6437-147b-262d6129eec6@rdss.com>
In-Reply-To: <0615f19e-2486-6437-147b-262d6129eec6@rdss.com>
From: Nick Foster <bistromath@gmail.com>
Date: Wed, 7 Apr 2021 10:21:18 -0700
Message-ID: <CA+JMMq845Lj7p7BvTu0EcrvMHD9cHskMMtDbbc0=9ziX3v4tMQ@mail.gmail.com>
To: Mike <mike.nelson@rdss.com>
Message-ID-Hash: CRMBHEPY4FJ7NIMJ4HFHPBB2Y7PYJ55S
X-Message-ID-Hash: CRMBHEPY4FJ7NIMJ4HFHPBB2Y7PYJ55S
X-MailFrom: bistromath@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: GNURadio Discussion List <discuss-gnuradio@gnu.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200 clock and pulse timing
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CRMBHEPY4FJ7NIMJ4HFHPBB2Y7PYJ55S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6998196591220685676=="

--===============6998196591220685676==
Content-Type: multipart/alternative; boundary="0000000000005a000205bf6529b7"

--0000000000005a000205bf6529b7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> I=E2=80=99d like to better understand the clock in the B200/B210.
>
> First, what is the actual resolution of the clock?  Is it any more
> precise than the 100 nanoseconds a 10 MHz external reference provides?  W=
hen
> the USRP timing is set to external, does the 10 MHz directly increment th=
e
> clock or is the on-board oscillator still involved somehow?
>

The clock is locked to the 10MHz external reference and uses 1PPS as a
trigger to initialize the sample clock to a given time at startup. Accurate
timing requires the 1PPS trigger to be synchronous to the 10MHz source. In
practice this means they should come from the same GPSDO. The 10MHz
reference does not directly increment the sample clock. It is used to lock
the main oscillator's PLL and thus makes it also synchronous to the 1PPS
trigger.

My software begins streaming samples from the B200 at a fixed rate.
>
> Inside a loop I call uhd_rx_streamer_recv () and use the associated
> metadata timestamp to note the time the first sample in the read buffer
> arrived.  Obviously the read buffer has a fixed length and therefore
> represents a fixed amount of time at my sample rate; the software uses th=
is
> value in the processing below.
>
> Also in that loop, the software calls get_time_last_pps() and compares th=
e
> result to a previous get_time_last_pps() call to determine if a pulse
> arrived on the PPS port.
>
> Prior to receiving a PPS pulse, this loop continues, discarding the sampl=
e
> buffer after the PPS comparison.
>
> When a pulse arrives, the software compares the sample buffer metadata
> timestamp to the last PPS timestamp.  The software uses that time
> difference to determine if the sample buffer should be discarded; the goa=
l
> is to discard all of the samples that arrived prior to the PPS pulse.  If
> the difference between the sample buffer timestamp and the PPS timestamp =
is
> greater than the buffer length time, the sample buffer is discarded and t=
he
> uhd_rx_streamer_recv() is called again to read the next set of samples.
>
> When the difference between the most recently read sample buffer timestam=
p
> and the PPS timestamp is less than the buffer length time, the software
> drops the first part of the sample buffer corresponding to that differenc=
e,
> in essence dropping the samples that arrived prior to the exact PPS time.
> The software then calls uhd_rx_streamer_recv () repeatedly, appending new
> samples to the first partial sample buffer until the desired total number
> of samples are collected.
>
> Does this method make sense to achieve my goal of collecting samples
> immediately after a PPS trigger pulse?  Is there an easier way to achieve
> this goal?
>

Yes. Use the timed command functionality to trigger reception of a discrete
number of samples at the time you wish to receive them -- in this case,
1.000s, 2.000s, etc. If the sample clock is initialized using external
1PPS, and it is also locked to a synchronous 10MHz source, your samples
will be returned to you nicely aligned.


> Testing this method has shown that the number of sample buffers returned
> via the recv() call relative to the PPS pulse varies, sometimes
> significantly.  On average, discarding two or three sample buffers brings
> the subsequent sample timestamp to within the fixed buffer length (time) =
of
> the last PPS pulse.  However, there are circumstances when dozens or even
> a hundred sample buffers need to be discarded because their metadata
> timestamps are all prior to the PPS timestamp.
>
> Is it reasonable that the sample buffer timestamp could be so far behind
> the PPS pulse time on occasion?
>

Use timed commands to trigger reception. Ignore get_time_last_pps(). Doing
sample timing from within a loop on the host computer (behind many buffers,
operating on a different clock, nondeterministically interrupted) is asking
for lost data and race conditions. If you require very accurate
antenna-plane sample time you will need to compensate for front end, ADC,
and DSP delays in the AD9361. There are various ways of doing this, none of
them particularly convenient.

Nick


>
>
> Thanks!
>
>

--0000000000005a000205bf6529b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><p =
class=3D"MsoNormal">I=E2=80=99d like to better understand the clock in the
      B200/B210.</p>
    <p class=3D"MsoNormal">First, what is the actual resolution of the
      clock?<span>=C2=A0 </span>Is it any more
      precise than the 100 nanoseconds
      a 10 MHz external reference provides?<span>=C2=A0
      </span>When the USRP timing is set to external, does the 10 MHz
      directly
      increment the clock or is the on-board oscillator still involved
      somehow?</p></div></blockquote><div><br></div><div>The clock is locke=
d to the 10MHz external reference and uses 1PPS as a trigger to initialize =
the sample clock to a given time at startup. Accurate timing requires the 1=
PPS trigger to be synchronous to the 10MHz source. In practice this means t=
hey should come from the same GPSDO. The 10MHz reference does not directly =
increment the sample clock. It is used to lock the main oscillator&#39;s PL=
L and thus makes it also synchronous to the 1PPS trigger.<br></div><br><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv><p class=3D"MsoNormal">My software begins streaming samples from the
      B200 at a
      fixed rate.</p>
    <p class=3D"MsoNormal">Inside a loop I call uhd_rx_streamer_recv ()
      and use the associated
      metadata timestamp to note the time the first sample in the read
      buffer
      arrived.<span>=C2=A0 </span>Obviously the
      read buffer has a
      fixed length and therefore represents a fixed amount of time at my
      sample rate;
      the software uses this value in the processing below.</p>
    <p class=3D"MsoNormal">Also in that loop, the software calls
      get_time_last_pps()
      and compares the result to a previous get_time_last_pps() call to
      determine if
      a pulse arrived on the PPS port.</p>
    <p class=3D"MsoNormal">Prior to receiving a PPS pulse, this loop
      continues,
      discarding the sample buffer after the PPS comparison.</p>
    <p class=3D"MsoNormal">When a pulse arrives, the software compares the
      sample buffer
      metadata timestamp to the last PPS timestamp.<span>=C2=A0
      </span>The software uses that time difference to determine if the
      sample buffer
      should be discarded; the goal is to discard all of the samples
      that arrived prior
      to the PPS pulse.<span>=C2=A0 </span>If the
      difference
      between the sample buffer timestamp and the PPS timestamp is
      greater than the buffer
      length time, the sample buffer is discarded and the
      uhd_rx_streamer_recv() is
      called again to read the next set of samples.</p>
    <p class=3D"MsoNormal">When the difference between the most recently
      read sample
      buffer timestamp and the PPS timestamp is less than the buffer
      length time, the
      software drops the first part of the sample buffer corresponding
      to that
      difference, in essence dropping the samples that arrived prior to
      the exact PPS
      time.<span>=C2=A0 </span>The software then
      calls uhd_rx_streamer_recv
      () repeatedly, appending new samples to the first partial sample
      buffer until
      the desired total number of samples are collected.</p>
    <p class=3D"MsoNormal">Does this method make sense to achieve my goal
      of collecting
      samples immediately after a PPS trigger pulse?<span>=C2=A0
      </span>Is there an easier way to achieve this goal?</p></div></blockq=
uote><div><br></div><div>Yes. Use the timed command functionality to trigge=
r reception of a discrete number of samples at the time you wish to receive=
 them -- in this case, 1.000s, 2.000s, etc. If the sample clock is initiali=
zed using external 1PPS, and it is also locked to a synchronous 10MHz sourc=
e, your samples will be returned to you nicely aligned.<br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
    <p class=3D"MsoNormal">Testing this method has shown that the number
      of sample
      buffers returned via the recv() call relative to the PPS pulse
      varies,
      sometimes significantly.<span>=C2=A0 </span>On
      average, discarding
      two or three sample buffers brings the subsequent sample timestamp
      to within
      the fixed buffer length (time) of the last PPS pulse. <span>=C2=A0</s=
pan>However, there are
      circumstances when dozens
      or even a hundred sample buffers need to be discarded because
      their metadata
      timestamps are all prior to the PPS timestamp.</p>
    <p class=3D"MsoNormal">Is it reasonable that the sample buffer
      timestamp could be
      so far behind the PPS pulse time on occasion?</p></div></blockquote><=
div><br></div><div>Use timed commands to trigger reception. Ignore get_time=
_last_pps(). Doing sample timing from within a loop on the host computer (b=
ehind many buffers, operating on a different clock, nondeterministically in=
terrupted) is asking for lost data and race conditions. If you require very=
 accurate antenna-plane sample time you will need to compensate for front e=
nd, ADC, and DSP delays in the AD9361. There are various ways of doing this=
, none of them particularly convenient.<br></div><div><br></div><div>Nick<b=
r></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div>
    <p class=3D"MsoNormal">=C2=A0</p>
    <p class=3D"MsoNormal">Thanks!<br>
    </p>
    <p></p>
  </div>

</blockquote></div></div>

--0000000000005a000205bf6529b7--

--===============6998196591220685676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6998196591220685676==--
