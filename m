Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1C82FF836
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 23:54:12 +0100 (CET)
Received: from [::1] (port=52138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2iqA-00009K-5m; Thu, 21 Jan 2021 17:54:10 -0500
Received: from mail-oi1-f181.google.com ([209.85.167.181]:46483)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l2iq6-0008U6-3w
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 17:54:06 -0500
Received: by mail-oi1-f181.google.com with SMTP id q205so3951448oig.13
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 14:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UFNqxmU31QlHvUAX9zv+/rQnp/h5vWWrFp6hmugwHcM=;
 b=ezjwQgCN68/Rg0Bm6tj7cNLnvC3P2Z++sXm+TgFEjTxefcJ19pDxanvCcCLco6pbux
 cDr+6G3OA2prRoGjceFYDy/pKTJtyhEQ+L5oKv/lqaBjofXwNbFI+vS+KkFNGDbhRHvw
 8ACfNg1NBsokiKBQQJ2k3t0ZxORjV0a//WOrmSeWYw5yItYsIjaTlkiauiJJJ8BJeEcw
 84h+qvKGgXyN2uH7uUAptzY3daF/A0RtiYhDin1p8NRXsdVOZ/4bDkm3wjb0VMIhyeZ7
 8l6VQI3RM4IL6oi6hhCQztKpx6S0UgE3jEfNaNDTUYs2h6I/8M3gvR+aOV48Bro/qXfQ
 ea0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UFNqxmU31QlHvUAX9zv+/rQnp/h5vWWrFp6hmugwHcM=;
 b=VxlUNLQJ8EH9zeGTtGgMfibgTjUJD85NcPKxkFvM2lC5Bh2cp0DWHLH8h3MHyW3W5F
 AucKvr3M8dWF2Lrj9jrkyRXN8YFf1TXGxmvlbIWfPtBO6l5B7/IXbHJB3Zn34spKqttj
 MUtkKDfOA1mzLbOf8nLMNkYR1WTX24oiJcUQwnr5rCA2rP6/Vb8VMEYfcLgPu0zSFqGZ
 QhIUJPZAUA/RBYdJEDzgt7Uoe6jhfIBnfkXFsIjxx60AWbOfqpGfYoDgpGZ5Xz+ioyaN
 HFjCoSZUylbmfPpNOB0EiE2xZrTPLd4xS0J1qPT09UwobgQWWlkyy9raqb/9Wztuin5O
 1l/A==
X-Gm-Message-State: AOAM531ALcujPUYyHsfNiOAffcKnmF+OstuP3NFj7S93UTYifqe+zJnv
 XC/nSIrUf/2xSGfQ8v6XHilCXReJ9oXpFP1SUATecw==
X-Google-Smtp-Source: ABdhPJz++zmTkc5yvXOFDzR/mybi/qut419uVejsS2FcLmIhJs+uPbgVINqjWsSKanzdJ7Xp1uUi0aD8Imw1b2tTZXk=
X-Received: by 2002:a05:6808:9a:: with SMTP id
 s26mr1321410oic.124.1611269605171; 
 Thu, 21 Jan 2021 14:53:25 -0800 (PST)
MIME-Version: 1.0
References: <CABD0DOsMsDopeeSyOGkZmC2UuFgt=Abf3yO_fw2hXfva6V3hgA@mail.gmail.com>
 <6009EB66.4060404@gmail.com>
In-Reply-To: <6009EB66.4060404@gmail.com>
Date: Thu, 21 Jan 2021 17:53:14 -0500
Message-ID: <CAB__hTSRibWj7_U+wtuKYo-hcVoaDYgKH1gqm1wx9zM+dHKB3Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] N310 Tuning Two Channels with Two Threads
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3347674386143333293=="
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

--===============3347674386143333293==
Content-Type: multipart/alternative; boundary="000000000000747d5a05b970f0da"

--000000000000747d5a05b970f0da
Content-Type: text/plain; charset="UTF-8"

After reading Marcus' reply, it occurred to me that you really might not
need multiple threads to achieve the factor of 2 improvement you are
looking for.  I think if you call set_rx_freq() it is a non-blocking call
so you should be able to set the 2 freqs, wait for them both to settle,
then get the results simultaneously.  I think you can do it from 1 thread.
Rob

On Thu, Jan 21, 2021 at 4:01 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

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
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000747d5a05b970f0da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">After reading Marcus&#39; reply, it occurred=C2=A0to me th=
at you really might not need multiple threads to achieve the factor of 2 im=
provement you are looking for.=C2=A0 I think if you call set_rx_freq() it i=
s a non-blocking call so you should be able to set the 2 freqs, wait for th=
em both to settle, then get the results simultaneously.=C2=A0 I think you c=
an do it from 1 thread.<div>Rob</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 21, 2021 at 4:01 PM Marcus=
 D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 01/21/2021 02:56 PM, Glenn Hazelwood
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">I have an N310 and I wish to scan from 10=C2=A0MHz t=
o
        5910 MHz with two channels. The frontend bandwidth is 100 MHz.
        So I do 60 tunings overall. I am directly using the UHD 3.15.0.0
        C++ API
        <div><br clear=3D"all">
          <div>The retune time is typically ~120 ms. My sample rate is
            125 Msps. Therefore, the time to receive samples is
            relatively small. For example, receiving time for 32768
            samples is ~1.3 ms. WIth one thread and one channel, my
            overall tune and receive time for the 60 tunings is ~7200
            ms.=C2=A0</div>
          <div><br>
          </div>
          <div>I wanted to try to reduce the overall runtime by using
            two threads and two channels. One thread would do half the
            tunings and the other thread would do the other half at the
            same time.=C2=A0</div>
          <div><br>
          </div>
          <div>I see that I can make separate=C2=A0rx_streamers in separate
            threads, each with its own channel to receive samples. I
            think rx_streamers[chan].recv() should work for two threads.
            I&#39;m not so confident about &#39;usrp-&gt;set_rx_frequency()=
&#39; for
            two threads.</div>
          <div><br>
          </div>
          <div>Is it possible to have two separate threads each tune to
            different frequencies at the same time with the N310?</div>
          <div><br>
          </div>
          <div>Also: Is there a way to search the Archives to see if
            someone has already asked this question. Google doesn&#39;t
            always seem to help.<br>
          </div>
          <div><br>
          </div>
          <div>-=C2=A0</div>
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div>
                <div dir=3D"ltr"><span style=3D"line-height:19.0469px;backg=
round-color:rgb(255,255,255)"><font color=3D"#000000" face=3D"trebuchet ms,=
 sans-serif">Diftor
                      heh smusma<br>
                    </font></span></div>
                <div><span style=3D"line-height:19.0469px;background-color:=
rgb(255,255,255)"><font color=3D"#000000" face=3D"trebuchet ms, sans-serif"=
>-Famous
                      Vulcan Phrase ;)<br>
                    </font></span></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    Tuning time is an artifact of the hardware (AD9371 in this
    case)--which isn&#39;t really fast on re-tuning.=C2=A0 It has nothing t=
o do
    with thread<br>
    =C2=A0 architecture/layout.<br>
    <br>
    Further, channels 0 and 1 will always be tuned to the same RF
    frequency, due to the LO architecture of the AD9371, similarly 2 and
    3 will<br>
    =C2=A0 always use the same LO frequency.<br>
    <br>
    <br>
    You can certainly spread sample-handling across multiple threads,
    and use the two available RF tunings (across the two RF chips) to
    speed<br>
    =C2=A0 things up a bit (cut the effective latency in half by
    interleaving).=C2=A0 But you&#39;re not going to get more than a factor=
 of
    two.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000747d5a05b970f0da--


--===============3347674386143333293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3347674386143333293==--

