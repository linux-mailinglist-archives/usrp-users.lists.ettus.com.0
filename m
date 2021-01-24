Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA39301EA1
	for <lists+usrp-users@lfdr.de>; Sun, 24 Jan 2021 21:09:42 +0100 (CET)
Received: from [::1] (port=53728 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l3lha-0001nU-9w; Sun, 24 Jan 2021 15:09:38 -0500
Received: from mail-lj1-f173.google.com ([209.85.208.173]:46609)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hazelnutvt04@gmail.com>)
 id 1l3lhV-0001hW-RI
 for usrp-users@lists.ettus.com; Sun, 24 Jan 2021 15:09:33 -0500
Received: by mail-lj1-f173.google.com with SMTP id u11so12740962ljo.13
 for <usrp-users@lists.ettus.com>; Sun, 24 Jan 2021 12:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=uBTWmKVxB2MObSW9xVUEfsfNNHVsgsZPIEAsTk1ryZg=;
 b=mdasYLl7DWTFihNAmXyuC9L/gK73oUe9fdWY/THdkiojHFVtU0YYt2+jwZgbIDAJBk
 rxiMcFGcXhWeNTfS4P5wKFc/zrA7TrvxD70CT6k/L941vRWrvuTpJac61+xSc1rctR7C
 /GAG0Ady0y9Je3E+rTjhBhR77B9e0CIOfkoQweFpLkwawbMPRMA6qZTpjGmrOk6kB7ol
 L+JtPcF7EdViRY32fd2U4zrAAccafEhjiQ62YhNnL/EEr8St+qhI5lFANhB8QhiGLzA1
 Qfm4loZGvaAYmz9ZzJ+/5RqBzLfRMCkzEvnqw+XUxtOQt1DKIvPwm37gCFSVroISCXXJ
 527Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=uBTWmKVxB2MObSW9xVUEfsfNNHVsgsZPIEAsTk1ryZg=;
 b=b7cNY9O0iO8SEA6Fb+G68nvdMorng12MHc7kTlrEhNitHK70htNRG3ozbUJzMU+hY6
 BebAH4BIppSF4j1Lc0Nh+Zx0F1pAx6IGlW4M8SbIuFN/JH9deeBK1zgxAKpnSEt/nHbq
 CuMyaPlRu5sQQhxB8wal0Pxu5j5IM30Ya0F9x06bm8uHeCdfC8ZeAWvWzfOdjCjYXi9f
 EyvXjq9a5AwG0TDw+Reo5UXnLz9BIBQqVZQtHdVuNRA2taKJfD7vJ+HLvJDdeKF4jUHS
 kdvMo0rjTgVyLIqzcBcWO2ZYKYajdqfySlfsKCfm6Pu0F15bSRU5Wgaj6ufzlIQR20PD
 VRQg==
X-Gm-Message-State: AOAM533HPDqGD8PelF32tc64/HW8T160dfJAhdy1Y4644SyVcpVfAMiG
 Xw/j8RlUqCdywCAYC4SXHACoaYsQyjz9jAoZSEaLr9q0J3aGcg==
X-Google-Smtp-Source: ABdhPJxmV8w/5WqEdBUQKwRwEDxlNjFBb5/GV8XSoFUQB5jU82D+YtJr+9wsgujcnjKdJ2GbzR4uAS5/XkqBwPpmPC4=
X-Received: by 2002:a05:651c:2113:: with SMTP id a19mr730ljq.147.1611518932014; 
 Sun, 24 Jan 2021 12:08:52 -0800 (PST)
MIME-Version: 1.0
Date: Sun, 24 Jan 2021 15:08:41 -0500
Message-ID: <CABD0DOty8XL8Dj1f792Pwa0STwCAyEyO=3qmwsxp6N=MhwMF+w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] N310 Tuning Two Channels with Two Threads
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
From: Glenn Hazelwood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Glenn Hazelwood <hazelnutvt04@gmail.com>
Content-Type: multipart/mixed; boundary="===============3667431779763598483=="
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

--===============3667431779763598483==
Content-Type: multipart/alternative; boundary="0000000000007dd79e05b9aafd12"

--0000000000007dd79e05b9aafd12
Content-Type: text/plain; charset="UTF-8"

Thanks for your replies. I only saw e-mail for the first reply, strangely.
I saw the other replies from the daily digest.

I initially tried one thread with two channels with a set_rx_frequency()
call for each and the tune time was roughly twice as much as one channel,
one tune ( ~240 ms ).

I then tried the two channel two thread case with channel 0 and 1 and got a
weird error about epsilon for difference between the new frequency compared
to the 'previous' frequency? (Very rough paraphrase, sorry)

At first I was completely lost. But then I noticed that the error message
had a path to the source file with the set_rx_frequency() function for the
N310. The set_rx_frequency() function uses a mutex lock. That definitely
blocks the other thread calling set_rx_frequency().

That means that even with two threads/two channels or even four
threads/four channels.... it can only tune one channel at a time.

The fix for my error, was to use channel 0 and channel 2, not channel 0 and
channel 1. Channels 0 and 1 share an LO and Channels 2 and 3 share an LO?
The tune time was still double (~240 ms ) since only one channel could be
tuned at a time.

I know that I cannot avoid the AD9731s taking ~120 ms to retune. I was
hoping that I could at least do more tunings per 120 ms with multiple
channels.

Maybe an X310 with the TwinRX daughterboards and something like in the
examples:

https://github.com/EttusResearch/uhd/blob/master/host/examples/twinrx_freq_hopping.cpp

will work better?

-- 
Diftor heh smusma
-Famous Vulcan Phrase ;)

Previous Messages:

Rob Kossler rkossler at nd.edu
Thu Jan 21 17:53:14 EST 2021

After reading Marcus' reply, it occurred to me that you really might not
need multiple threads to achieve the factor of 2 improvement you are
looking for.  I think if you call set_rx_freq() it is a non-blocking call
so you should be able to set the 2 freqs, wait for them both to settle,
then get the results simultaneously.  I think you can do it from 1 thread.
Rob

On Thu, Jan 21, 2021 at 4:01 PM Marcus D. Leech via USRP-users <
usrp-users at lists.ettus.com> wrote:

> On 01/21/2021 02:56 PM, Glenn Hazelwood via USRP-users wrote:
>
> I have an N310 and I wish to scan from 10 MHz to 5910 MHz with two
> channels. The frontend bandwidth is 100 MHz. So I do 60 tunings overall. I
> am directly using the UHD 3.15.0.0 C++ API
>
> The retune time is typically ~120 ms. My sample rate is 125 Msps.
> Therefore, the time to receive samples is relatively small. For example,
> receiving time for 32768 samples is ~1.3 ms. WIth one thread and one
> channel, my overall tune and receive time for the 60 tunings is ~7200 ms.
>
> I wanted to try to reduce the overall runtime by using two threads and two
> channels. One thread would do half the tunings and the other thread would
> do the other half at the same time.
>
> I see that I can make separate rx_streamers in separate threads, each with
> its own channel to receive samples. I think rx_streamers[chan].recv()
> should work for two threads. I'm not so confident about
> 'usrp->set_rx_frequency()' for two threads.
>
> Is it possible to have two separate threads each tune to different
> frequencies at the same time with the N310?
>
> Also: Is there a way to search the Archives to see if someone has already
> asked this question. Google doesn't always seem to help.
>
> -
> Diftor heh smusma
> -Famous Vulcan Phrase ;)
>
> Tuning time is an artifact of the hardware (AD9371 in this case)--which
> isn't really fast on re-tuning.  It has nothing to do with thread
>   architecture/layout.
>
> Further, channels 0 and 1 will always be tuned to the same RF frequency,
> due to the LO architecture of the AD9371, similarly 2 and 3 will
>   always use the same LO frequency.
>
>
> You can certainly spread sample-handling across multiple threads, and use
> the two available RF tunings (across the two RF chips) to speed
>   things up a bit (cut the effective latency in half by interleaving).
> But you're not going to get more than a factor of two.

--0000000000007dd79e05b9aafd12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks for your replies. I only saw =
e-mail for the first reply, strangely. I saw the other replies from the dai=
ly digest.</div><div><br></div><div>I initially tried one thread with two c=
hannels with a set_rx_frequency() call for each and the tune time was rough=
ly twice as much as one channel, one tune ( ~240 ms ).=C2=A0</div><div><br>=
</div><div>I then tried the two channel two thread case with channel 0 and =
1 and got a weird error about epsilon for difference between the new freque=
ncy compared to the &#39;previous&#39; frequency? (Very rough paraphrase, s=
orry)=C2=A0</div><div><br></div><div>At first I was completely lost. But th=
en I noticed that the error message had a path to the source file with the =
set_rx_frequency() function for the N310. The set_rx_frequency() function u=
ses a mutex lock. That definitely blocks the other thread calling set_rx_fr=
equency().</div><div><br></div><div>That means that even with two threads/t=
wo channels or even four threads/four channels.... it can only tune one cha=
nnel at a time.</div><div><br></div><div>The fix for my error, was to use c=
hannel 0 and channel 2, not channel 0 and channel 1. Channels 0 and 1 share=
 an LO and Channels 2 and 3 share an LO? The tune time was still double (~2=
40 ms ) since only one channel could be tuned at a time.</div><div><br></di=
v><div>I know that I cannot avoid the AD9731s taking ~120 ms to retune. I w=
as hoping that I could at least do more tunings per 120 ms with multiple ch=
annels.</div><div><br></div><div>Maybe an X310 with the TwinRX daughterboar=
ds and something like in the examples:</div><div><br></div><div><a href=3D"=
https://github.com/EttusResearch/uhd/blob/master/host/examples/twinrx_freq_=
hopping.cpp">https://github.com/EttusResearch/uhd/blob/master/host/examples=
/twinrx_freq_hopping.cpp</a><br></div><div><br></div><div>will work better?=
</div><div><br></div><div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"=
><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"line-height:19.0469p=
x"><font color=3D"#000000" face=3D"trebuchet ms, sans-serif">Diftor heh smu=
sma<br></font></span></div><div><span style=3D"line-height:19.0469px"><font=
 color=3D"#000000" face=3D"trebuchet ms, sans-serif">-Famous Vulcan Phrase =
;)</font></span></div></div></div></div></div><div><br></div><div>Previous =
Messages:</div><div><br></div><div>Rob Kossler rkossler at <a href=3D"http:=
//nd.edu">nd.edu</a><br>Thu Jan 21 17:53:14 EST 2021<br></div><div><br></di=
v><div>After reading Marcus&#39; reply, it occurred to me that you really m=
ight not<br></div>need multiple threads to achieve the factor of 2 improvem=
ent you are<br>looking for.=C2=A0 I think if you call set_rx_freq() it is a=
 non-blocking call<br>so you should be able to set the 2 freqs, wait for th=
em both to settle,<br>then get the results simultaneously.=C2=A0 I think yo=
u can do it from 1 thread.<br>Rob<br><br>On Thu, Jan 21, 2021 at 4:01 PM Ma=
rcus D. Leech via USRP-users &lt;<br>usrp-users at <a href=3D"http://lists.=
ettus.com">lists.ettus.com</a>&gt; wrote:<br><br>&gt; On 01/21/2021 02:56 P=
M, Glenn Hazelwood via USRP-users wrote:<br>&gt;<br>&gt; I have an N310 and=
 I wish to scan from 10 MHz to 5910 MHz with two<br>&gt; channels. The fron=
tend bandwidth is 100 MHz. So I do 60 tunings overall. I<br>&gt; am directl=
y using the UHD 3.15.0.0 C++ API<br>&gt;<br>&gt; The retune time is typical=
ly ~120 ms. My sample rate is 125 Msps.<br>&gt; Therefore, the time to rece=
ive samples is relatively small. For example,<br>&gt; receiving time for 32=
768 samples is ~1.3 ms. WIth one thread and one<br>&gt; channel, my overall=
 tune and receive time for the 60 tunings is ~7200 ms.<br>&gt;<br>&gt; I wa=
nted to try to reduce the overall runtime by using two threads and two<br>&=
gt; channels. One thread would do half the tunings and the other thread wou=
ld<br>&gt; do the other half at the same time.<br>&gt;<br>&gt; I see that I=
 can make separate rx_streamers in separate threads, each with<br>&gt; its =
own channel to receive samples. I think rx_streamers[chan].recv()<br>&gt; s=
hould work for two threads. I&#39;m not so confident about<br>&gt; &#39;usr=
p-&gt;set_rx_frequency()&#39; for two threads.<br>&gt;<br>&gt; Is it possib=
le to have two separate threads each tune to different<br>&gt; frequencies =
at the same time with the N310?<br>&gt;<br>&gt; Also: Is there a way to sea=
rch the Archives to see if someone has already<br>&gt; asked this question.=
 Google doesn&#39;t always seem to help.<br>&gt;<br>&gt; -<br>&gt; Diftor h=
eh smusma<br>&gt; -Famous Vulcan Phrase ;)<br>&gt;<br>&gt; Tuning time is a=
n artifact of the hardware (AD9371 in this case)--which<br>&gt; isn&#39;t r=
eally fast on re-tuning.=C2=A0 It has nothing to do with thread<br>&gt; =C2=
=A0 architecture/layout.<br>&gt;<br>&gt; Further, channels 0 and 1 will alw=
ays be tuned to the same RF frequency,<br>&gt; due to the LO architecture o=
f the AD9371, similarly 2 and 3 will<br>&gt; =C2=A0 always use the same LO =
frequency.<br>&gt;<br>&gt;<br>&gt; You can certainly spread sample-handling=
 across multiple threads, and use<br>&gt; the two available RF tunings (acr=
oss the two RF chips) to speed<br>&gt; =C2=A0 things up a bit (cut the effe=
ctive latency in half by interleaving).<br>&gt; But you&#39;re not going to=
 get more than a factor of two.<br clear=3D"all"><div><br></div><div dir=3D=
"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div><span style=3D"l=
ine-height:19.0469px;background-color:rgb(255,255,255)"><font color=3D"#000=
000" face=3D"trebuchet ms, sans-serif"><br></font></span></div></div></div>=
</div></div></div>

--0000000000007dd79e05b9aafd12--


--===============3667431779763598483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3667431779763598483==--

