Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 416B3301EAC
	for <lists+usrp-users@lfdr.de>; Sun, 24 Jan 2021 21:17:53 +0100 (CET)
Received: from [::1] (port=53774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l3lpX-0002Ji-Nw; Sun, 24 Jan 2021 15:17:51 -0500
Received: from mail-qt1-f171.google.com ([209.85.160.171]:46230)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l3lpT-0002BE-BX
 for usrp-users@lists.ettus.com; Sun, 24 Jan 2021 15:17:47 -0500
Received: by mail-qt1-f171.google.com with SMTP id l23so5776351qtq.13
 for <usrp-users@lists.ettus.com>; Sun, 24 Jan 2021 12:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=mou+GWY8Qm/JTSp7svf/7GIonlPx1lj5XCoDr5650Jo=;
 b=NVhYKZwTKmvBjETI6iXOMM3YAx4T2h1itRcypqtS1WBuhGYIxQ0nIDzg9u2bO2c+yq
 wJdDWTHCzrz40M5flG9XQ4nXdwY2kJa3G2jyNEE9E7+Agt9bLYkcI0bCQnyXWgbNDhkn
 MfVyCd8QUqZHUnoSGaQAMAFPxyIw65Ci674CcFQx7UmJ9DiVO5bjhxAncUDecymyeM86
 p2nolTWviuu/EWVv2ZbWS53YeoclpahPHYVmzJvKnquyWCpGk6//uwtLs2TunuJG0Yv8
 ilP+z4oTZ+sUXWA7QA5cKhZsW6eTHSDc7xO9gbSUGmpgSifIGOanGfNYgFE/3782zbbX
 C/eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=mou+GWY8Qm/JTSp7svf/7GIonlPx1lj5XCoDr5650Jo=;
 b=P97JcuiD+QqQAgQDrjCgZ+3zptv0L88IihdudxePor5serVCqgqy1mORNwBxQ7qhdM
 YFxB2HJ8HQyB/KTHpg3GvhA2wE9R+9lzmqFfPbBKtRxHQkfMO6jAngAnbQjEf3+IAe07
 Eew3jb4jVmoG+bs5Xd66bWKGl5aaTw3ZRNWp9c8wFuy5M0E54rgfPme3iN4gRxCoN660
 NKva8X93QZOdxE2NsT5bQP7h3PasFSxwuZA2DXlh+H2giNLFJaSfo2uy+MeThZZiis36
 zWyUlJQz7Ss7Gfc7VxeFv6G9NblUyz/2rArHGMa41/hogx9vOr6eJw1zhw/yx2g6DpO2
 hYIg==
X-Gm-Message-State: AOAM531v4gKiquMHDRdXT1UK7MUTtlmC/WapaC8pU8X9qy8c+HPOPnXk
 48vGOsIPyXgdTI8zyj8jn7ZqR9DgZlQ=
X-Google-Smtp-Source: ABdhPJw6NC3QUAOrBvtJoOZUs26BeF9E7Dy0f6sIxmw/ypI2bmvVa1qCr2BSRrSAWb/x5iLtuSI4cw==
X-Received: by 2002:a05:622a:1d4:: with SMTP id
 t20mr2174319qtw.281.1611519426523; 
 Sun, 24 Jan 2021 12:17:06 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id r17sm9837809qta.78.2021.01.24.12.17.06
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 Jan 2021 12:17:06 -0800 (PST)
Message-ID: <600DD5C1.4010203@gmail.com>
Date: Sun, 24 Jan 2021 15:17:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CABD0DOty8XL8Dj1f792Pwa0STwCAyEyO=3qmwsxp6N=MhwMF+w@mail.gmail.com>
In-Reply-To: <CABD0DOty8XL8Dj1f792Pwa0STwCAyEyO=3qmwsxp6N=MhwMF+w@mail.gmail.com>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============1147149607801838653=="
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

This is a multi-part message in MIME format.
--===============1147149607801838653==
Content-Type: multipart/alternative;
 boundary="------------000904070106090206000009"

This is a multi-part message in MIME format.
--------------000904070106090206000009
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/24/2021 03:08 PM, Glenn Hazelwood via USRP-users wrote:
> Thanks for your replies. I only saw e-mail for the first reply, 
> strangely. I saw the other replies from the daily digest.
>
> I initially tried one thread with two channels with a 
> set_rx_frequency() call for each and the tune time was roughly twice 
> as much as one channel, one tune ( ~240 ms ).
>
> I then tried the two channel two thread case with channel 0 and 1 and 
> got a weird error about epsilon for difference between the new 
> frequency compared to the 'previous' frequency? (Very rough 
> paraphrase, sorry)
>
> At first I was completely lost. But then I noticed that the error 
> message had a path to the source file with the set_rx_frequency() 
> function for the N310. The set_rx_frequency() function uses a mutex 
> lock. That definitely blocks the other thread calling set_rx_frequency().
>
> That means that even with two threads/two channels or even four 
> threads/four channels.... it can only tune one channel at a time.
>
> The fix for my error, was to use channel 0 and channel 2, not channel 
> 0 and channel 1. Channels 0 and 1 share an LO and Channels 2 and 3 
> share an LO? The tune time was still double (~240 ms ) since only one 
> channel could be tuned at a time.
That may be a hardware architecture thing--the AD9371 uses either an SPI 
or I2C interface for command and control (can't remember which),
    and there may only be one of those busses on the N310--I don't know 
for sure.  So you have to mutex access to that bus.

The AD936x and AD937x have an architecture where the two channels share 
an LO.  On the N310, there are *TWO* AD9371, giving
   a total of 4 channels, but with shared LO for 0,1  and 2,3.  But 
likely they share an I2C/SPI bus for command/control.  The main
   latency, however, is the time it takes for the chips to re-tune. The 
buses themselves are reasonably speedy, as far as I know--probably
   operating at 1Mbit.
>
> I know that I cannot avoid the AD9731s taking ~120 ms to retune. I was 
> hoping that I could at least do more tunings per 120 ms with multiple 
> channels.
>
> Maybe an X310 with the TwinRX daughterboards and something like in the 
> examples:
>
> https://github.com/EttusResearch/uhd/blob/master/host/examples/twinrx_freq_hopping.cpp
>
> will work better?
Certainly more flexible, since there are various LO-sharing topologies 
available to you, depending on what you want to do.
   The underlying PLL synthesizers are likely much faster, but decidedly 
not "instant".  There's an inherent tension in PLL synthesizer
   design between residual phase-noise and tuning time.  Radios that do 
fast frequency hopping use specialized synthesizers that
   sacrifice some things to get very-fast hopping times.  But such 
synthesizers aren't really appropriate for a general-purpose
   radio.

>
> -- 
> Diftor heh smusma
> -Famous Vulcan Phrase ;)
>
> Previous Messages:
>
> Rob Kossler rkossler at nd.edu <http://nd.edu>
> Thu Jan 21 17:53:14 EST 2021
>
> After reading Marcus' reply, it occurred to me that you really might not
> need multiple threads to achieve the factor of 2 improvement you are
> looking for.  I think if you call set_rx_freq() it is a non-blocking call
> so you should be able to set the 2 freqs, wait for them both to settle,
> then get the results simultaneously.  I think you can do it from 1 thread.
> Rob
>
> On Thu, Jan 21, 2021 at 4:01 PM Marcus D. Leech via USRP-users <
> usrp-users at lists.ettus.com <http://lists.ettus.com>> wrote:
>
> > On 01/21/2021 02:56 PM, Glenn Hazelwood via USRP-users wrote:
> >
> > I have an N310 and I wish to scan from 10 MHz to 5910 MHz with two
> > channels. The frontend bandwidth is 100 MHz. So I do 60 tunings 
> overall. I
> > am directly using the UHD 3.15.0.0 C++ API
> >
> > The retune time is typically ~120 ms. My sample rate is 125 Msps.
> > Therefore, the time to receive samples is relatively small. For example,
> > receiving time for 32768 samples is ~1.3 ms. WIth one thread and one
> > channel, my overall tune and receive time for the 60 tunings is 
> ~7200 ms.
> >
> > I wanted to try to reduce the overall runtime by using two threads 
> and two
> > channels. One thread would do half the tunings and the other thread 
> would
> > do the other half at the same time.
> >
> > I see that I can make separate rx_streamers in separate threads, 
> each with
> > its own channel to receive samples. I think rx_streamers[chan].recv()
> > should work for two threads. I'm not so confident about
> > 'usrp->set_rx_frequency()' for two threads.
> >
> > Is it possible to have two separate threads each tune to different
> > frequencies at the same time with the N310?
> >
> > Also: Is there a way to search the Archives to see if someone has 
> already
> > asked this question. Google doesn't always seem to help.
> >
> > -
> > Diftor heh smusma
> > -Famous Vulcan Phrase ;)
> >
> > Tuning time is an artifact of the hardware (AD9371 in this case)--which
> > isn't really fast on re-tuning.  It has nothing to do with thread
> >   architecture/layout.
> >
> > Further, channels 0 and 1 will always be tuned to the same RF frequency,
> > due to the LO architecture of the AD9371, similarly 2 and 3 will
> >   always use the same LO frequency.
> >
> >
> > You can certainly spread sample-handling across multiple threads, 
> and use
> > the two available RF tunings (across the two RF chips) to speed
> >   things up a bit (cut the effective latency in half by interleaving).
> > But you're not going to get more than a factor of two.
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------000904070106090206000009
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/24/2021 03:08 PM, Glenn Hazelwood
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CABD0DOty8XL8Dj1f792Pwa0STwCAyEyO=3qmwsxp6N=MhwMF+w@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div>Thanks for your replies. I only saw e-mail for the first
            reply, strangely. I saw the other replies from the daily
            digest.</div>
          <div><br>
          </div>
          <div>I initially tried one thread with two channels with a
            set_rx_frequency() call for each and the tune time was
            roughly twice as much as one channel, one tune ( ~240 ms ). </div>
          <div><br>
          </div>
          <div>I then tried the two channel two thread case with channel
            0 and 1 and got a weird error about epsilon for difference
            between the new frequency compared to the 'previous'
            frequency? (Very rough paraphrase, sorry) </div>
          <div><br>
          </div>
          <div>At first I was completely lost. But then I noticed that
            the error message had a path to the source file with the
            set_rx_frequency() function for the N310. The
            set_rx_frequency() function uses a mutex lock. That
            definitely blocks the other thread calling
            set_rx_frequency().</div>
          <div><br>
          </div>
          <div>That means that even with two threads/two channels or
            even four threads/four channels.... it can only tune one
            channel at a time.</div>
          <div><br>
          </div>
          <div>The fix for my error, was to use channel 0 and channel 2,
            not channel 0 and channel 1. Channels 0 and 1 share an LO
            and Channels 2 and 3 share an LO? The tune time was still
            double (~240 ms ) since only one channel could be tuned at a
            time.</div>
        </div>
      </div>
    </blockquote>
    That may be a hardware architecture thing--the AD9371 uses either an
    SPI or I2C interface for command and control (can't remember which),<br>
       and there may only be one of those busses on the N310--I don't
    know for sure.  So you have to mutex access to that bus.<br>
    <br>
    The AD936x and AD937x have an architecture where the two channels
    share an LO.  On the N310, there are *TWO* AD9371, giving<br>
      a total of 4 channels, but with shared LO for 0,1  and 2,3.  But
    likely they share an I2C/SPI bus for command/control.  The main<br>
      latency, however, is the time it takes for the chips to re-tune. 
    The buses themselves are reasonably speedy, as far as I
    know--probably<br>
      operating at 1Mbit.<br>
    <blockquote
cite="mid:CABD0DOty8XL8Dj1f792Pwa0STwCAyEyO=3qmwsxp6N=MhwMF+w@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div><br>
          </div>
          <div>I know that I cannot avoid the AD9731s taking ~120 ms to
            retune. I was hoping that I could at least do more tunings
            per 120 ms with multiple channels.</div>
          <div><br>
          </div>
          <div>Maybe an X310 with the TwinRX daughterboards and
            something like in the examples:</div>
          <div><br>
          </div>
          <div><a moz-do-not-send="true"
href="https://github.com/EttusResearch/uhd/blob/master/host/examples/twinrx_freq_hopping.cpp">https://github.com/EttusResearch/uhd/blob/master/host/examples/twinrx_freq_hopping.cpp</a><br>
          </div>
          <div><br>
          </div>
          <div>will work better?</div>
        </div>
      </div>
    </blockquote>
    Certainly more flexible, since there are various LO-sharing
    topologies available to you, depending on what you want to do.<br>
      The underlying PLL synthesizers are likely much faster, but
    decidedly not "instant".  There's an inherent tension in PLL
    synthesizer<br>
      design between residual phase-noise and tuning time.  Radios that
    do fast frequency hopping use specialized synthesizers that<br>
      sacrifice some things to get very-fast hopping times.  But such
    synthesizers aren't really appropriate for a general-purpose<br>
      radio.<br>
    <br>
    <blockquote
cite="mid:CABD0DOty8XL8Dj1f792Pwa0STwCAyEyO=3qmwsxp6N=MhwMF+w@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div><br>
          </div>
          <div>-- <br>
            <div dir="ltr" class="gmail_signature">
              <div dir="ltr">
                <div>
                  <div dir="ltr"><span style="line-height:19.0469px"><font
                        color="#000000" face="trebuchet ms, sans-serif">Diftor
                        heh smusma<br>
                      </font></span></div>
                  <div><span style="line-height:19.0469px"><font
                        color="#000000" face="trebuchet ms, sans-serif">-Famous
                        Vulcan Phrase ;)</font></span></div>
                </div>
              </div>
            </div>
          </div>
          <div><br>
          </div>
          <div>Previous Messages:</div>
          <div><br>
          </div>
          <div>Rob Kossler rkossler at <a moz-do-not-send="true"
              href="http://nd.edu">nd.edu</a><br>
            Thu Jan 21 17:53:14 EST 2021<br>
          </div>
          <div><br>
          </div>
          <div>After reading Marcus' reply, it occurred to me that you
            really might not<br>
          </div>
          need multiple threads to achieve the factor of 2 improvement
          you are<br>
          looking for.  I think if you call set_rx_freq() it is a
          non-blocking call<br>
          so you should be able to set the 2 freqs, wait for them both
          to settle,<br>
          then get the results simultaneously.  I think you can do it
          from 1 thread.<br>
          Rob<br>
          <br>
          On Thu, Jan 21, 2021 at 4:01 PM Marcus D. Leech via USRP-users
          &lt;<br>
          usrp-users at <a moz-do-not-send="true"
            href="http://lists.ettus.com">lists.ettus.com</a>&gt; wrote:<br>
          <br>
          &gt; On 01/21/2021 02:56 PM, Glenn Hazelwood via USRP-users
          wrote:<br>
          &gt;<br>
          &gt; I have an N310 and I wish to scan from 10 MHz to 5910 MHz
          with two<br>
          &gt; channels. The frontend bandwidth is 100 MHz. So I do 60
          tunings overall. I<br>
          &gt; am directly using the UHD 3.15.0.0 C++ API<br>
          &gt;<br>
          &gt; The retune time is typically ~120 ms. My sample rate is
          125 Msps.<br>
          &gt; Therefore, the time to receive samples is relatively
          small. For example,<br>
          &gt; receiving time for 32768 samples is ~1.3 ms. WIth one
          thread and one<br>
          &gt; channel, my overall tune and receive time for the 60
          tunings is ~7200 ms.<br>
          &gt;<br>
          &gt; I wanted to try to reduce the overall runtime by using
          two threads and two<br>
          &gt; channels. One thread would do half the tunings and the
          other thread would<br>
          &gt; do the other half at the same time.<br>
          &gt;<br>
          &gt; I see that I can make separate rx_streamers in separate
          threads, each with<br>
          &gt; its own channel to receive samples. I think
          rx_streamers[chan].recv()<br>
          &gt; should work for two threads. I'm not so confident about<br>
          &gt; 'usrp-&gt;set_rx_frequency()' for two threads.<br>
          &gt;<br>
          &gt; Is it possible to have two separate threads each tune to
          different<br>
          &gt; frequencies at the same time with the N310?<br>
          &gt;<br>
          &gt; Also: Is there a way to search the Archives to see if
          someone has already<br>
          &gt; asked this question. Google doesn't always seem to help.<br>
          &gt;<br>
          &gt; -<br>
          &gt; Diftor heh smusma<br>
          &gt; -Famous Vulcan Phrase ;)<br>
          &gt;<br>
          &gt; Tuning time is an artifact of the hardware (AD9371 in
          this case)--which<br>
          &gt; isn't really fast on re-tuning.  It has nothing to do
          with thread<br>
          &gt;   architecture/layout.<br>
          &gt;<br>
          &gt; Further, channels 0 and 1 will always be tuned to the
          same RF frequency,<br>
          &gt; due to the LO architecture of the AD9371, similarly 2 and
          3 will<br>
          &gt;   always use the same LO frequency.<br>
          &gt;<br>
          &gt;<br>
          &gt; You can certainly spread sample-handling across multiple
          threads, and use<br>
          &gt; the two available RF tunings (across the two RF chips) to
          speed<br>
          &gt;   things up a bit (cut the effective latency in half by
          interleaving).<br>
          &gt; But you're not going to get more than a factor of two.<br
            clear="all">
          <div><br>
          </div>
          <div dir="ltr" class="gmail_signature">
            <div dir="ltr">
              <div>
                <div><span
                    style="line-height:19.0469px;background-color:rgb(255,255,255)"><font
                      color="#000000" face="trebuchet ms, sans-serif"><br>
                    </font></span></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------000904070106090206000009--


--===============1147149607801838653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1147149607801838653==--

