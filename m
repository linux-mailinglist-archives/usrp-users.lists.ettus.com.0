Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA843361982
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 08:00:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D64D8384185
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 02:00:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kumunetworks.com header.i=@kumunetworks.com header.b="EhEa62ec";
	dkim-atps=neutral
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by mm2.emwd.com (Postfix) with ESMTPS id F1A03384168
	for <usrp-users@lists.ettus.com>; Fri, 16 Apr 2021 01:59:33 -0400 (EDT)
Received: by mail-pj1-f44.google.com with SMTP id z22-20020a17090a0156b029014d4056663fso14023916pje.0
        for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 22:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kumunetworks.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NOdidmwDm4BhURHDNwyMbjP4tsF0br77bNAbfmeWfBw=;
        b=EhEa62ecjQc7oO64/FKlE35zONKzMbe781zov9tIfkDVBBlkVg1WfWctO/n5f21hGV
         RI09nQ3Ha1OeFi1yFoty6dfe7DANLYUtJwYlfR8rGm6WS73MOpzKYFWLVrXPMQhrFIQT
         Mtf/eXU1BYHLOzncIspMl0/GPjOB1Nq0rd4fU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NOdidmwDm4BhURHDNwyMbjP4tsF0br77bNAbfmeWfBw=;
        b=qoec1bweVqNlNzfbnnPygfErZyZg95IJ6sa3/q62MC+twvVgEMRYCuUyuvqQ8NMlhm
         33gyLHEbrS5UwmdFpc+9D/tq36MuECW1kXvWp/3nqKhbOTnPPLB42kwB5jWKs6Qn4VZC
         0q1QhBcQ6QMju4yHi0NEuakQXI0FxW7i5dZDqToUnZZ1wEmHB0BN0XAnqyj88ejlFZnx
         LCh9vcmkA//8qOOznYo1F9E6/Tal8fm1rCdqaNNQeYLLTDf+tNHvD2kb/LiMVpHiZ+5g
         hw0qPU/+idyP9BTFmcegjansczDSic/Z8ebo9LsVkTGMUdVvPzf2nTAKtk9JQHRWIi0y
         IQ0w==
X-Gm-Message-State: AOAM530KYVYurD+gXLTmuQfQtrSuClZtXsZ/5RpBskD1t7udhPSw/Ean
	pVorl73LjJULY3EzlR2ugeMPd2xDn48D5UwipAWgo1KJPIg=
X-Google-Smtp-Source: ABdhPJzQew0IJkRg93Vra8lEcxHMPQiefn9ZCEQMPtOkz2WkQltAzVtf7N7qhYAwAhfpxmdFAbMlEn6pUlhzRM2DpjU=
X-Received: by 2002:a17:90a:88e:: with SMTP id v14mr7825894pjc.107.1618552772792;
 Thu, 15 Apr 2021 22:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <HwGoEH3FA4WMskJTpvqryBTIbOFEJVyHCQDGNoM21A@lists.ettus.com>
In-Reply-To: <HwGoEH3FA4WMskJTpvqryBTIbOFEJVyHCQDGNoM21A@lists.ettus.com>
From: Christian Hahn <christian@kumunetworks.com>
Date: Thu, 15 Apr 2021 22:59:22 -0700
Message-ID: <CAJrPtHnZgncP3nRt28KmzvF9LtaPeAeiOUbXHvAuiBV+_AsDKQ@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Message-ID-Hash: NP6QIQS5PDLXH7K3IPJ7GNHNYYW543ZW
X-Message-ID-Hash: NP6QIQS5PDLXH7K3IPJ7GNHNYYW543ZW
X-MailFrom: christian@kumunetworks.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Calling C++ UHD functions from Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NP6QIQS5PDLXH7K3IPJ7GNHNYYW543ZW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4142835299315439733=="

--===============4142835299315439733==
Content-Type: multipart/alternative; boundary="00000000000012aabd05c010affb"

--00000000000012aabd05c010affb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Brendan,

python-uhd is well suited for this kind of use-case and these sample
rates.  python-uhd is written wholey in C++.  It spawns Receive and
Transmit worker threads in the background to handle the high throughput
"pulling", "pushing" and looping of samples.  So, if python-uhd can't keep
up, then neither can the C++ API.

Depending on the Receive use-case, you can:

(1) continuously stream samples.  The Receiver worker thread will
continuously call UHD's recv() and place the results in the Results queue.
The C++ worker thread will do a much better job than Python in keeping up
with the stream of samples.  Python can then pop results from this queue.
Samples will never be dropped, and given your sample rate, overflows should
not happen.
(2) sub-sample blocks of streaming samples.  The Receiver worker thread
will continuously call UHD's recv() and place results in the Results
queue.  IF results are not pop'd by Python in a timely manner, the memory
of these old, "stale" sample blocks will be recycled.
(3) one-shot and done.  The Receive worker thread calls recv() once, puts
the results in the queue and shuts down the stream.

I think (2) sounds like your use-case? You want guaranteed time-contiguous
blocks of samples, but you want to "sub sample": discarding some blocks of
samples and claiming others.

I had a B210 lying around and just tried this.  40 Msps on 1 channel.
Using UHD v3.15.0.0.  Using a sample block size of 1048576.  On my laptop
with i7-7820HQ.  No optimizations, Ubuntu running i3 Window manager with
other apps open.  Python was utilizing 40% of 1 core @ 1.8 GHz.  Not sure
why that 1 core was not getting Turbo'd.  Might be because I'm on battery -
no idea.  However, if you want this to be bulletproof, I recommend running
this on a Linux host without GUI and following the Ettus "Host Performance
Tuning Tips and Tricks".

If an overflow does occur, python-uhd will throw an exception and halt the
stream.

Cheers,
Christian

On Thu, Apr 15, 2021 at 8:33 PM <brendan.horsfield@vectalabs.com> wrote:

> Hi Christian,
>
> I=E2=80=99m developing applications for two different platforms at the mo=
ment:
>
>    1.
>
>    HP Omen laptop, Intel Core i7-8750H CPU @ 2.20GHz =C3=97 12, 32GB RAM,
>    512GB SSD
>    2.
>
>    Raspberry Pi 4 Model B, 8GB RAM, 128GB SSD
>
> In both cases the B210 is connected to the host via USB 3.0. Each host ha=
s
> a 1GB RAM disk.
>
> My target sampling rates are as follows:
>
>    -
>
>    40 Msps (minimum) on one channel, wire rate =3D sc16
>    -
>
>    20 Msps (minimum) on two channels, wire rate =3D sc16
>    -
>
>    Number of samples: Currently 2,000 per channel. Might be nice to
>    increase this to around 50,000 in future.
>
> (I realise the Raspberry Pi is woefully underpowered for this application=
,
> but I am interested to see how far I can push it.)
>
> Note that I was actually getting OK results with the Ettus-provided Pytho=
n
> API, but unfortunately it has a bug whereby the metadata object that is
> returned with each data packet doesn=E2=80=99t always accurately record o=
verflow
> events when they occur. This means I don=E2=80=99t have a reliable way of=
 checking
> the integrity of my received data packets. (The C++ API does not appear t=
o
> suffer from this problem.)
>
> How does your python-uhd API perform in this regard?
>
> Brendan.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000012aabd05c010affb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Brendan,<div><br></div><div>python-uhd is well suited f=
or this kind of use-case and these sample rates.=C2=A0 python-uhd is writte=
n wholey in C++.=C2=A0 It spawns Receive and Transmit worker threads in the=
 background to handle the high throughput &quot;pulling&quot;, &quot;pushin=
g&quot; and looping of samples.=C2=A0 So, if python-uhd can&#39;t keep up, =
then neither can the C++ API.</div><div><br></div><div>Depending on the Rec=
eive use-case, you can:</div><div><br></div><div>(1) continuously stream sa=
mples.=C2=A0 The Receiver worker thread will continuously call UHD&#39;s re=
cv() and place the results in the Results queue.=C2=A0 The C++ worker threa=
d will do a much better job than Python in keeping up with the stream of sa=
mples.=C2=A0 Python can then pop results from this queue.=C2=A0 Samples wil=
l never be dropped, and given your sample rate, overflows should not happen=
.</div><div>(2) sub-sample blocks of streaming samples.=C2=A0 The Receiver =
worker thread will continuously call UHD&#39;s recv() and place results in =
the Results queue.=C2=A0 IF results are not pop&#39;d by Python in a timely=
 manner, the memory of these old, &quot;stale&quot; sample blocks will be r=
ecycled.</div><div>(3) one-shot and done.=C2=A0 The Receive worker thread c=
alls recv() once, puts the results in the queue and shuts down the stream.<=
/div><div><br></div><div>I think (2) sounds like your use-case? You want gu=
aranteed time-contiguous blocks of samples, but you want to &quot;sub sampl=
e&quot;: discarding some blocks of samples and claiming others.</div><div><=
br></div><div>I had a B210 lying around and just tried this.=C2=A0 40 Msps =
on 1 channel.=C2=A0 Using UHD v3.15.0.0.=C2=A0 Using a sample block size of=
=C2=A01048576.=C2=A0 On my laptop with=C2=A0i7-7820HQ.=C2=A0 No optimizatio=
ns, Ubuntu running i3 Window manager with other apps open.=C2=A0 Python was=
 utilizing 40% of 1 core=C2=A0@ 1.8 GHz.=C2=A0 Not sure why that 1 core was=
 not getting Turbo&#39;d.=C2=A0 Might be because I&#39;m on battery - no id=
ea.=C2=A0 However, if you want this to be bulletproof, I recommend running =
this on a Linux host without GUI and following the Ettus &quot;Host Perform=
ance Tuning Tips and Tricks&quot;.</div><div><br></div><div>If an overflow =
does occur, python-uhd will throw an exception and halt the stream.</div><d=
iv><br></div><div>Cheers,</div><div>Christian</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 15, 2021 at =
8:33 PM &lt;<a href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_b=
lank">brendan.horsfield@vectalabs.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><p>Hi Christian,</p><p>I=E2=80=99m dev=
eloping applications for two different platforms at the moment:</p><ol><li>=
<p>HP Omen laptop, Intel Core i7-8750H CPU @ 2.20GHz =C3=97 12, 32GB RAM, 5=
12GB SSD</p></li><li><p>Raspberry Pi 4 Model B, 8GB RAM, 128GB SSD</p></li>=
</ol><p>In both cases the B210 is connected to the host via USB 3.0.  Each =
host has a 1GB RAM disk.</p><p>My target sampling rates are as follows:</p>=
<ul><li><p>40 Msps (minimum) on one channel, wire rate =3D sc16</p></li><li=
><p>20 Msps (minimum) on two channels, wire rate =3D sc16</p></li><li><p>Nu=
mber of samples:  Currently 2,000 per channel.  Might be nice to increase t=
his to around 50,000 in future.</p></li></ul><p>(I realise the Raspberry Pi=
 is woefully underpowered for this application, but I am interested to see =
how far I can push it.)</p><p>Note that I was actually getting OK results w=
ith the Ettus-provided Python API, but unfortunately it has a bug whereby t=
he metadata object that is returned with each data packet doesn=E2=80=99t a=
lways accurately record overflow events when they occur.  This means I don=
=E2=80=99t have a reliable way of checking the integrity of my received dat=
a packets.  (The C++ API does not appear to suffer from this problem.) </p>=
<p>How does your python-uhd API perform in this regard?</p><p>Brendan.</p><=
p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000012aabd05c010affb--

--===============4142835299315439733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4142835299315439733==--
