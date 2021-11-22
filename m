Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A07F458E28
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 13:20:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 552DE383D42
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 07:20:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="jNIPQO4k";
	dkim-atps=neutral
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C814383D3D
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 07:19:42 -0500 (EST)
Received: by mail-io1-f49.google.com with SMTP id x6so1284441iol.13
        for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 04:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DDRfV9UKLTXqjwyXLn/8VTvDPO6um8M+U90cWhZWuGA=;
        b=jNIPQO4kJS6Q+U7s6FWbFREdblOdbHmwP92HoqyoRJL9cZjcvTGbj+XjJOc0bv2F6u
         YfkGYJjDTfXDfN8I0o5UZqAet2WJUX7Fd9tCeLMFPSAPi8HaaIZWQHBt4nVb8fkB5Vvs
         64TwivihHfy21eTnx7R8WWGgftaOZATyeU4pqWnOAJbMhvJEg3Xjo/VONTC5NuDMr6W6
         xi6TBOa8dI+kJOOEmzkwoBDEI0P0q6KjY9HnYg2Vt/Ors/Hg7LR4M2CQmqcwZmtvXmDo
         XLaLaDBbhJ7x6ZaDyW7owPDzSxfmx7xLlmO3pCoAE3MmespngNCw2e//7eGPFNJYyVXo
         z+7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DDRfV9UKLTXqjwyXLn/8VTvDPO6um8M+U90cWhZWuGA=;
        b=mWbKkOiPY0WkBIh+GUbjwvEk+pTz2/yRQ4ZHc5s2xAKb1lN4YTsb5J9cDqsNERgh7L
         NaFNvuDdSpakySm9e6yzdjtcsGsf+XD57KLylP/J8NOrba3Qf3qbZbnTgvdejM6oaeXi
         HyhP6qWw+Zri5L7aDf+jfhpccU7ad/JVf/uoIexxmjstzbABM1syxXDILT14I7wM6BXV
         BpdIUJOZXRjkjDA/ChNqgkGEsYDSVHWl56ERyQ9zvFqKanZi/ThZH35c/nEYh8dhgGWa
         lMQ0Syr90wCApROFOx7Z70uedOVVw2E0r7SrDZpCD2sPblDcUA9Rg4tfaAMyGXuwI4hT
         KdtA==
X-Gm-Message-State: AOAM530sYRRDPvr/xIm/MWzh1V5ck62I3gMgjD/+utPUzLJ24om4WIwG
	JrCbxSN55mmeNFommyCf2j2CiRWT75zSLn1gcJwS8W9Q
X-Google-Smtp-Source: ABdhPJzqajtQnUb8q7r/gEoWLQAmsK3SDxPfQ0/nK46WUuX1l70+5qJysTPxWMz93LYYB4F9iIETvgBPK8nexQEJwtk=
X-Received: by 2002:a5e:c645:: with SMTP id s5mr21531482ioo.154.1637583580711;
 Mon, 22 Nov 2021 04:19:40 -0800 (PST)
MIME-Version: 1.0
References: <SI2PR02MB51450DFCDEF99A2BE9F70027DBB29@SI2PR02MB5145.apcprd02.prod.outlook.com>
In-Reply-To: <SI2PR02MB51450DFCDEF99A2BE9F70027DBB29@SI2PR02MB5145.apcprd02.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 22 Nov 2021 13:19:29 +0100
Message-ID: <CAFOi1A7QnbUJZ0BovZKsJQi_Azopcbc9Li3hdDeS9rYVdAuKzw@mail.gmail.com>
To: Gabriel Lim <icyveins@hotmail.com>
Message-ID-Hash: WPYRZ65CD3NMI7MFD3S43XIWKQT7U2FA
X-Message-ID-Hash: WPYRZ65CD3NMI7MFD3S43XIWKQT7U2FA
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 USRP Dual TwinRX LEDs not turning on properly
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WPYRZ65CD3NMI7MFD3S43XIWKQT7U2FA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7115456333790483968=="

--===============7115456333790483968==
Content-Type: multipart/alternative; boundary="0000000000009e615b05d15fa374"

--0000000000009e615b05d15fa374
Content-Type: text/plain; charset="UTF-8"

Hi Gabriel,

we have a fix on the way for this. Many thanks again for reporting this.
Keep your eyes on master branch.

--M

On Fri, Oct 8, 2021 at 8:41 AM Gabriel Lim <icyveins@hotmail.com> wrote:

> Am re-posting my issue that I raised on the github here.
>
> Issue Description
>
> X310 with two TwinRX daughterboards, opening all 4 channels for receive
> via a subdev spec of "A:0 A:1 B:0 B:1", and channels "0,1,2,3", results in
> only the RX2 lights of both daughterboards turning on. Further
> experimentation shows that the order in which the channels are selected
> matters i.e. Doing A:RX1, A:RX2, B:RX2, B:RX1 (via GNURadio) results in
> only the A:RX2 and B:RX1 lights being on.
>
> The recording itself was unaffected i.e. even though the LED was off, it
> was still recording 4 channels correctly (tested with external signal
> source plugged into each channel one by one).
>
> Issue did not occur when using UHD 3.15.0 (and subsequently also
> re-flashing the FPGA for compatibility, so it may be the FPGA image that is
> the cause). All lights turned on.
> Setup Details
>
> UHD 4.0 and 4.1 were tested and were the culprits. FPGA versions were
> whatever was required i.e. upon uhd_usrp_probe, if asked to re-flash due to
> compatibility issues for that version, I did so.
>
> OS: Both Windows 10 and Ubuntu had the same issue.
> Hardware: Has occurred on both my laptop (i7-8565UC) and my desktop (Ryzen
> 5 1600x).
> Expected Behavior
>
> All 4 LEDs should light up, as per the UHD 3.15.0 test.
> Actual Behaviour
>
> Only the 2nd selected antenna for each TwinRX lights up (example in the
> description at the start).
> Steps to reproduce the problem
>
> Easiest way to reproduce is to run
>
> rx_multi_samples --rate 200000 --subdev="A:0 A:1 B:0 B:1" --channels 0,1,2,3
>
> and observe the LEDs below the SMA ports. I also used GRC to hook up a UHD
> Source to 4 outputs, with the same subdev config, and played around with
> channel antennas. This allowed me to change the ordering to A:RX1, A:RX2,
> B:RX2, B:RX1, which then showed that only the second antenna LEDs lit up
> (in this case, A:RX2 and B:RX1).
> Additional Information
>
> Nothing for now.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009e615b05d15fa374
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Gabriel,</div><div><br></div><div>we have a fix on=
 the way for this. Many thanks again for reporting this. Keep your eyes on =
master branch.</div><div><br></div><div>--M<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 8, 2021 =
at 8:41 AM Gabriel Lim &lt;<a href=3D"mailto:icyveins@hotmail.com">icyveins=
@hotmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Am re-posting my issue that I raised on the github here.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<h2>Issue Description</h2>
<p>X310 with two TwinRX daughterboards, opening all 4 channels for receive =
via a subdev spec of &quot;A:0 A:1 B:0 B:1&quot;, and channels &quot;0,1,2,=
3&quot;, results in only the RX2 lights of both daughterboards turning on. =
Further experimentation shows that the order in which
 the channels are selected matters i.e. Doing A:RX1, A:RX2, B:RX2, B:RX1 (v=
ia GNURadio) results in only the A:RX2 and B:RX1 lights being on.</p>
<p>The recording itself was unaffected i.e. even though the LED was off, it=
 was still recording 4 channels correctly (tested with external signal sour=
ce plugged into each channel one by one).</p>
<p>Issue did not occur when using UHD 3.15.0 (and subsequently also re-flas=
hing the FPGA for compatibility, so it may be the FPGA image that is the ca=
use). All lights turned on.</p>
<h2>Setup Details</h2>
<p>UHD 4.0 and 4.1 were tested and were the culprits. FPGA versions were wh=
atever was required i.e. upon uhd_usrp_probe, if asked to re-flash due to c=
ompatibility issues for that version, I did so.</p>
<p>OS: Both Windows 10 and Ubuntu had the same issue.<br>
Hardware: Has occurred on both my laptop (i7-8565UC) and my desktop (Ryzen =
5 1600x).</p>
<h2>Expected Behavior</h2>
<p>All 4 LEDs should light up, as per the UHD 3.15.0 test.</p>
<h2>Actual Behaviour</h2>
<p>Only the 2nd selected antenna for each TwinRX lights up (example in the =
description at the start).</p>
<h2>Steps to reproduce the problem</h2>
<p>Easiest way to reproduce is to run</p>
<div>
<pre><code>rx_multi_samples --rate 200000 --subdev=3D&quot;A:0 A:1 B:0 B:1&=
quot; --channels 0,1,2,3
</code></pre>
</div>
<p>and observe the LEDs below the SMA ports. I also used GRC to hook up a U=
HD Source to 4 outputs, with the same subdev config, and played around with=
 channel antennas. This allowed me to change the ordering to A:RX1, A:RX2, =
B:RX2, B:RX1, which then showed
 that only the second antenna LEDs lit up (in this case, A:RX2 and B:RX1).<=
/p>
<h2>Additional Information</h2>
<p>Nothing for now.</p>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009e615b05d15fa374--

--===============7115456333790483968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7115456333790483968==--
