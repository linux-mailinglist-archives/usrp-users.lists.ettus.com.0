Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE1535D821
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 08:36:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6C763844C7
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 02:36:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kumunetworks.com header.i=@kumunetworks.com header.b="h7+aA4TW";
	dkim-atps=neutral
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 87303384018
	for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 02:35:24 -0400 (EDT)
Received: by mail-pj1-f43.google.com with SMTP id j6-20020a17090adc86b02900cbfe6f2c96so8468585pjv.1
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 23:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kumunetworks.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z0mhxRZ8ze9aFETiTkFY3pjlgWH95kNHjcmBxBkjbCI=;
        b=h7+aA4TWAbOViRhPv1I+mmc7Z0Egib8MoS4fHDCEJvUMxuAlvEG6f1FQj9KJZW9Hfi
         6pSMwjKf6ZI0tm445xggdTFTJUgw3GP3bBqmJ3PyMFVUKqv9XbTG//HbjLeftxktc/n9
         LiqtA7GimxjJudMY7H7qcaeWl31Pzqed15yJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z0mhxRZ8ze9aFETiTkFY3pjlgWH95kNHjcmBxBkjbCI=;
        b=YCJIqBxXnnNLFknzFD9e4Pk79RgbDfwM9mQ6Rs4jjJtEoJdE4lIa+EfVvw/EQD091O
         Mwk91awzwsPGgoWBg2xXkLV0II2Uh3A1UR8OyqCVgJmQNFRwvTF6mu/+oqgOAH3RqgZZ
         CovF2akglZTSwUgiloLPYuXKUvUySkj1zs6jaH2VMvrgFpUo+MdzlFfGep/0aCnCJvg6
         mW8EhjNythJRgNAw8+U+/w7EIP+y2NRNZmNIMLBdX8Q1VFhpaobUp+HqkBapW0doFJD+
         zaM8bTTJ3ji5da0G0SzmXNnIQMwbyiIiAN2v/a+8rkbz6/FAKBuTwaLNW2AbAtXr/KWQ
         N1ew==
X-Gm-Message-State: AOAM533mHf+VXWniV7nlnN8rgMdtvgX43pd+QCFzynczaNLauI28dsuv
	+BYXHP9nZH4AwE7vh+oMlF+pDayOJITR12esrCzaNpIHoHG+rw==
X-Google-Smtp-Source: ABdhPJwhgT0P2BLKc70Cpwr04AUqf9nM2t5i5aQY5JrmvuaaOb7HReV+77bOEwDnGDwHwYrPZnc+EHFqwbtsT1gyn8w=
X-Received: by 2002:a17:902:9043:b029:e9:3900:5590 with SMTP id
 w3-20020a1709029043b02900e939005590mr30462290plz.76.1618295723428; Mon, 12
 Apr 2021 23:35:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAJrPtHmHjZSF+q0A8La+1KbNd+6nsTC5t==uUEKtTE5jNeJesw@mail.gmail.com>
 <CALNMZ8WJTAqa9F9jy3ojwbpP2KH0AFvBa6RQqRX2vciycx=kRA@mail.gmail.com>
In-Reply-To: <CALNMZ8WJTAqa9F9jy3ojwbpP2KH0AFvBa6RQqRX2vciycx=kRA@mail.gmail.com>
From: Christian Hahn <christian@kumunetworks.com>
Date: Mon, 12 Apr 2021 23:35:12 -0700
Message-ID: <CAJrPtHmAN8q-P+tUB1mfs+82s79LXuAPCDyBj3sTStsDoOoVzQ@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Message-ID-Hash: IHW4BLCITLBQQCMLYPELQ3HLROMQYR27
X-Message-ID-Hash: IHW4BLCITLBQQCMLYPELQ3HLROMQYR27
X-MailFrom: christian@kumunetworks.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: python-uhd and USRP use-cases
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IHW4BLCITLBQQCMLYPELQ3HLROMQYR27/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0022014614455548809=="

--===============0022014614455548809==
Content-Type: multipart/alternative; boundary="000000000000bca1b305bfd4d5e8"

--000000000000bca1b305bfd4d5e8
Content-Type: text/plain; charset="UTF-8"

Hi Brendan,

Thank you for your interest!

Our use-cases related to production test and general lab-use are mostly
signal generator like with some receive:  2-3x 100 Msps Transmitters
continuously playing back a 5G or WIFI waveform with simultaneous 2x 100
Msps receive.  These setups are rock solid in terms of reliability -
transmitters humming along for days without any underruns, no receive
overflows.  Most systems have been upgraded over the years - now mostly
Intel 9700k's with Intel x710-DA2 NICs.

The research use-cases are typically to prototype a system that would
eventually be turned into a custom PCB... with data-converters, FPGA, etc.
In those use-cases, we do a fair amount of MIMO channel estimation.
Anywhere from 4 to 8 concurrent 100 Msps receive - typically using 2-4 USRP
X300s directly connected to 1 host.  python-uhd's receive() yields numpy
ndarray's, but everything is zero-copy under the hood.  (I am recv()'ing
into the same buffer that will eventually be owned and freed by the
ndarray.)  When possible, we keep sample block sizes large, so we don't see
any receive overflows in UHD, but of course, if the application permits,
our DSP will selectively drop samples to keep up.

Answers to your questions

   1. Exactly - the official Python API didn't exist at the time.
   2. Like I eluded above, we frequently and reliably pull 8x 100 Msps for
   doing 4x4 MIMO channel estimation through this Python API.  Good
   single-threaded CPU performance and reasonable memory bandwidth are
   important - these are 9700k based systems turboing few cores into low 5
   GHz.  NIC(s) must be connected through the CPU's PCIe lanes, not something
   MUX'd through the southbridge.... not a Raspberry PI.  They run Arch Linux.
   3. That's a great question.  I've never actually tested it.  When I
   build UHD, I always pass "-DENABLE_PYTHON_API=OFF".  I do this for all UHD
   releases I test against, and old UHD releases just ignore it.  I always
   suspected a potential namespacing issue, but never tried it.  Perhaps I
   will soon.  We're always using either a specific UHD release, a modified
   UHD code base, or a legacy UHD release that predated the Python API.
   4. Yes, I have plans to support v4.0.0.0 shortly.  The procedure and
   testing is mostly automated.

Many thanks,
Christian

On Mon, Apr 12, 2021 at 9:56 PM Brendan Horsfield <
brendan.horsfield@vectalabs.com> wrote:

> Hi Christian,
>
> Thanks for the GitHub link, I'll definitely check it out.  My current
> interest is in receiving signals, not transmitting them, but I can imagine
> some future scenarios where a signal generator capability might be handy.
>
> A couple of questions:
>
>    - Is there any reason why you chose not to use the "official" Python
>    API provided by Ettus?  Was it simply because the Ettus version hadn't been
>    created at the time you started this project?
>    - How robust is the receiving function in your Python implementation
>    in the face of overflows/timeouts/dropped samples etc when receiving data
>    from the USRP?  Does it detect these failure modes and provide some kind of
>    feedback to the calling method?
>    - My current UHD driver was built from source with the Ettus Python
>    API included.  If I want to use your implementation, will I have to rebuild
>    my UHD driver to exclude the Ettus API?
>    - Do you have any plans to update your repository for UHD v4.0.0.0?
>
> Regards,
> Brendan.
>
>
> On Mon, Apr 12, 2021 at 9:24 PM Christian Hahn <christian@kumunetworks.com>
> wrote:
>
>> Hi USRP-users,
>>
>> This is not a question.  Just a call for general discussion.  Sharing how
>> we use USRPs.  Wondering how others do too.  Thanks
>>
>> I wanted to share this repository with anyone that wants to use older UHD
>> releases with Python.  This repository started off as an internal company
>> tool in 2015 and I threw it up on Github in 2017.  At the time, I was swept
>> away with how flexible USRPs were, but wanted a more agile means to
>> automate them - enter Python.  At work, we use a fleet of X300s, N310s and
>> B210s for production test and research.  For various reasons, we cannot
>> always use the latest UHD versions.  For example, in some of our legacy
>> production test fixtures we are still using v3.9.7.
>>
>> https://github.com/christian-hahn/python-uhd
>>
>> In conjunction with this repository, we have a higher-layer software
>> stack that wraps python-uhd and makes it appear "vector signal
>> generator"-like.  We maintain temperature compensated calibration for all
>> of our USRP X300s from 50 MHz to 6 GHz that offers a relative accuracy of
>> 0.05 dB and an absolute accuracy of < 0.2 dB.  This service runs on a
>> modest desktop besides each pair of USRP X300s, exposes a REST API and
>> basically abstracts them to look like any old Keysight-like MXG signal
>> generator.  You give it a waveform, a center frequency, output power and it
>> handles the rest.
>>
>> I am curious.  Do others use USRPs in similar signal generator like
>> use-cases?  For production test?  Would anyone be interested in using them
>> as such?  Should I work to clean-up and open source the signal-generator
>> like service?  It may be tricky to handle the calibration, but I could
>> probably include a 'best guess' model for a X300+UBX-160 combination.
>>
>> Cheers,
>> Christian
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000bca1b305bfd4d5e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Brendan,<div><br></div><div>Thank you for your interest=
!</div><div><br></div><div>Our use-cases related to production test and gen=
eral lab-use are mostly signal generator like with some receive:=C2=A0 2-3x=
 100 Msps Transmitters continuously playing back a 5G or WIFI waveform with=
 simultaneous 2x 100 Msps receive.=C2=A0 These setups are rock solid in ter=
ms of reliability=C2=A0- transmitters humming along for days without any un=
derruns, no receive overflows.=C2=A0 Most systems have been upgraded over t=
he years - now mostly Intel 9700k&#39;s with Intel x710-DA2 NICs.</div><div=
><br></div><div>The research use-cases are typically to prototype a system =
that would eventually be turned into a custom PCB... with data-converters, =
FPGA, etc.=C2=A0 In those use-cases, we do a fair amount of MIMO channel es=
timation.=C2=A0 Anywhere from 4 to 8 concurrent 100 Msps receive - typicall=
y using 2-4 USRP X300s directly connected to 1 host.=C2=A0 python-uhd&#39;s=
 receive() yields numpy ndarray&#39;s, but everything is zero-copy under th=
e hood.=C2=A0 (I am recv()&#39;ing into the same buffer that will eventuall=
y be owned and freed by the ndarray.)=C2=A0 When possible, we keep sample b=
lock sizes large, so we don&#39;t see any receive overflows in UHD, but of =
course, if the application permits, our DSP will selectively drop samples t=
o keep up.</div><div><br></div><div>Answers to your questions</div><div><ol=
><li>Exactly - the official Python API didn&#39;t exist at the time.</li><l=
i>Like I eluded above, we frequently and reliably pull 8x 100 Msps for doin=
g 4x4 MIMO channel estimation through this Python API.=C2=A0 Good single-th=
readed CPU performance and reasonable memory bandwidth are important - thes=
e are 9700k based systems turboing few cores into low 5 GHz.=C2=A0 NIC(s) m=
ust be connected through the CPU&#39;s PCIe lanes, not something MUX&#39;d =
through the southbridge.... not a Raspberry PI.=C2=A0 They run Arch Linux.<=
/li><li>That&#39;s a great question.=C2=A0 I&#39;ve never actually tested i=
t.=C2=A0 When I build UHD, I always pass &quot;-DENABLE_PYTHON_API=3DOFF&qu=
ot;.=C2=A0 I do this for all UHD releases I test against, and old UHD relea=
ses just ignore it.=C2=A0 I always suspected a potential namespacing issue,=
 but never tried it.=C2=A0 Perhaps I will soon.=C2=A0 We&#39;re always usin=
g either a specific UHD release, a modified UHD code base, or a legacy UHD =
release that predated the Python API.</li><li>Yes, I have plans to support =
v4.0.0.0 shortly.=C2=A0 The procedure and testing is mostly automated.</li>=
</ol><div>Many thanks,</div></div><div>Christian</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12, 2021=
 at 9:56 PM Brendan Horsfield &lt;<a href=3D"mailto:brendan.horsfield@vecta=
labs.com">brendan.horsfield@vectalabs.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Christian,<div=
><br></div><div>Thanks for the GitHub link, I&#39;ll definitely check it ou=
t.=C2=A0 My current interest is in receiving signals, not transmitting them=
, but I can imagine some future scenarios where a signal generator capabili=
ty might be handy.=C2=A0 =C2=A0</div><div><br></div><div>A couple of questi=
ons:</div><div><ul><li>Is there any reason why you chose not to use the &qu=
ot;official&quot; Python API provided by Ettus?=C2=A0 Was it simply because=
 the Ettus version hadn&#39;t been created at the time you started this pro=
ject?</li><li>How robust is the receiving function in your Python implement=
ation in the face of overflows/timeouts/dropped samples etc when receiving =
data from the USRP?=C2=A0 Does it detect these failure modes and provide so=
me kind of feedback=C2=A0to the calling method?</li><li>My current UHD driv=
er was built from source with the Ettus Python API included.=C2=A0 If I wan=
t to use your implementation, will I have to rebuild my UHD driver to exclu=
de the Ettus API?</li><li>Do you have any plans to update your repository f=
or UHD v4.0.0.0?</li></ul><div>Regards,</div></div><div>Brendan.</div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Apr 12, 2021 at 9:24 PM Christian Hahn &lt;<a href=3D"mai=
lto:christian@kumunetworks.com" target=3D"_blank">christian@kumunetworks.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Hi USRP-users,<div><br></div><div>This is not a question.=
=C2=A0 Just a call for general=C2=A0discussion.=C2=A0 Sharing how we use US=
RPs.=C2=A0 Wondering how others do too.=C2=A0 Thanks</div><div><br></div><d=
iv>I wanted to share this repository with anyone that wants to use older UH=
D releases with Python.=C2=A0 This repository started off as an internal co=
mpany tool in 2015 and I threw it up on Github in 2017.=C2=A0 At the time, =
I was swept away with how flexible USRPs were, but wanted a more agile mean=
s to automate them - enter Python.=C2=A0 At work, we use a fleet of X300s, =
N310s and B210s for production test and research.=C2=A0 For various reasons=
, we cannot always use the latest UHD versions.=C2=A0 For example, in some =
of our legacy production test fixtures we are still using v3.9.7.</div><div=
><br></div><div><a href=3D"https://github.com/christian-hahn/python-uhd" ta=
rget=3D"_blank">https://github.com/christian-hahn/python-uhd<br></a></div><=
div><br></div><div>In conjunction with this repository, we have a higher-la=
yer software stack that wraps python-uhd and makes it appear &quot;vector s=
ignal generator&quot;-like.=C2=A0 We maintain temperature compensated calib=
ration for all of our USRP X300s from 50 MHz to 6 GHz that offers a relativ=
e accuracy of 0.05 dB and an absolute accuracy of &lt; 0.2 dB.=C2=A0 This s=
ervice runs on a modest desktop besides each pair of USRP X300s, exposes a =
REST API and basically abstracts them to look like any old Keysight-like MX=
G signal generator.=C2=A0 You give it a waveform, a center frequency, outpu=
t power and it handles the rest.</div><div><br></div><div>I am curious.=C2=
=A0 Do others use USRPs in similar signal generator like use-cases?=C2=A0 F=
or production test?=C2=A0 Would anyone be interested in using them as such?=
=C2=A0 Should I work to clean-up and open source the signal-generator like =
service?=C2=A0 It may be tricky to handle the calibration, but I could prob=
ably include a &#39;best guess&#39; model for a X300+UBX-160 combination.</=
div><div><br></div><div>Cheers,</div><div>Christian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000bca1b305bfd4d5e8--

--===============0022014614455548809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0022014614455548809==--
