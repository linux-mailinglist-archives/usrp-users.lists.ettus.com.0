Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A90991FA3B2
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jun 2020 00:48:36 +0200 (CEST)
Received: from [::1] (port=33560 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jkxu6-0003Ut-Cy; Mon, 15 Jun 2020 18:48:34 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:41511)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jkxu2-0003Jb-MW
 for usrp-users@lists.ettus.com; Mon, 15 Jun 2020 18:48:30 -0400
Received: by mail-qt1-f193.google.com with SMTP id w90so14051221qtd.8
 for <usrp-users@lists.ettus.com>; Mon, 15 Jun 2020 15:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=sCrJVL+QyPE0vJnuZXuLyg/h6YF2Yu7eUTfLx79PGoI=;
 b=Wn9MW4qwUazdJggHMDK208eV6IxxsJw9CC8XHilflYDdspyagULw3HPD+u557+8LYE
 CW7SWPV7paWaWD35nqdSzsDKGQ80dwkUIr6J2AUE4YBVuiVmLMtoe0JvyA7kqTXgvY4J
 Gvfmyupdev6NIUeXs4HNMTYQphvh+ktjGoRtw5n/ri5HMSt8J429MIR5kTuWw0agtDPS
 ocOrNsG3bAHlQqbpxI6c8L7o9HuGKziN/PvrYjtZi6h6my3eIvgFMF3CXZa16Usjz+ZO
 XAUJk2AoPf3Cd+IAOPMYvY9rFoQppqfWuTF7a0+bgeFXxnPd+a/kFl5KevXwAmgqMUEG
 EGyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=sCrJVL+QyPE0vJnuZXuLyg/h6YF2Yu7eUTfLx79PGoI=;
 b=TyaKJIAtX3N6MycdOad+rVKV1VFoPGHfuoz6OSgEJNEBCbLnsCOz69Gdf7tZ7hgzhy
 RVx7IeclwWk9vXP+hfcyBaOoVCqH68bZK3D+77QmWmVYh/XmItsfEn3gs66wBHPD6h37
 J7SoEEu8Mu6xZm94Qs8T5KwCe9Zq+891NoToSlZJlXc46l6afluGOhlyVgTmSAo3UX4s
 6x8iwrNhE2OFH/JyiK42NBa3QxgFxM8f8ES+MAiAUgBdrbasq+3xkJnVaqPHixK1GSRg
 gxGqnvcdxs+Y/rHFMHudeo+oSmyCe6//GELjSj2HMWJJSE1tql8fg8esnld9ERJp8aa3
 QrMw==
X-Gm-Message-State: AOAM530CzNrgkAbCq/iZEsLn72g5TZ7jtM53rkfrkHIxH/mty5Wk0BRy
 7ayJsZUS3Vc7S8YUO5fNAeh74/qbmXg=
X-Google-Smtp-Source: ABdhPJyy+KTrKsRuZI8hYIRZPm084qq5S0SX2ODxmU88AAUoyJA2OlILn00DW7s6qk8NmAi1OpnVWg==
X-Received: by 2002:ac8:7c2:: with SMTP id m2mr17892373qth.282.1592261270069; 
 Mon, 15 Jun 2020 15:47:50 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id 5sm12111333qko.14.2020.06.15.15.47.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jun 2020 15:47:49 -0700 (PDT)
Message-ID: <5EE7FA95.3030901@gmail.com>
Date: Mon, 15 Jun 2020 18:47:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Aaron Smith <aarsmith54@gmail.com>
CC: Ettus Mail List <usrp-users@lists.ettus.com>
References: <CAH2Hh72HmeMWJW_qoXLZqnSQTtA_E329tJ0CSnsAtAy7Mj7_=w@mail.gmail.com>
 <056029D3-7656-4461-A933-7298467C4D5A@gmail.com>
 <CAH2Hh70z2hCajHOLWk=R24ZhqLTR_KuR=fKaY9q=zebG8Y4CQQ@mail.gmail.com>
 <5EE7C3EA.9090902@gmail.com>
 <CAH2Hh72yRc9Hu-+0JxiLr4pi1UyDz1RpxKRwgN6vdwAmaVbaEA@mail.gmail.com>
 <5EE7F8FF.50904@gmail.com>
 <CAH2Hh70Gz9wyDZGcZtwaNO90iZJb0eJfZ3_yx0oh0z3rmP6zcg@mail.gmail.com>
In-Reply-To: <CAH2Hh70Gz9wyDZGcZtwaNO90iZJb0eJfZ3_yx0oh0z3rmP6zcg@mail.gmail.com>
Subject: Re: [USRP-users] Precise Time Synchronization In B200/N210
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
Content-Type: multipart/mixed; boundary="===============1091613885698760379=="
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
--===============1091613885698760379==
Content-Type: multipart/alternative;
 boundary="------------090300050604070104000805"

This is a multi-part message in MIME format.
--------------090300050604070104000805
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/15/2020 06:45 PM, Aaron Smith wrote:
> I am using a master clock rate of 48 MHz and a sample rate of 8 MHz.
When do you notice the timing inconsistency?  For example, if you do a 
number of timed transmits during the same session, are they
   self-consistent?  Where "session" is defined as "that stuff you do 
after you've set the clock with 1PPS, etc".


>
> On Mon, Jun 15, 2020, 4:41 PM Marcus D. Leech <patchvonbraun@gmail.com 
> <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 06/15/2020 03:42 PM, Aaron Smith wrote:
>     > I am using the python api.
>     >
>     > usrp = uhd.usrp.MultiUSRP()
>     >
>     > # Set gain, clock rate, sample rate etc...
>     >
>     > usrp.set_clock_source('external')
>     > usrp.set_time_source('external')
>     >
>     > ts_reset = uhd.types.TimeSpec(0.0)
>     > usrp.set_time_next_pps(ts_reset)
>     > time.sleep(1.0)
>     > last_pps = usrp.get_time_last_pps().to_ticks(1e9)
>     > if last_pps % int(1e9) != 0:
>     >     print("Error failed to align clock")
>     >
>     > # The signal is complex float data, scaled to a max amplitude of
>     0.9
>     > approx 0.1 secs in duration
>     > signal_data = numpy.fromfile('signal.dat',dtype=numpy.complex64)
>     >
>     > wirefmt = 'sc16'
>     >
>     > sa = uhd.usrp.StramArgs('fc32',wirefmt)
>     > sa.channels = [0]
>     > stream = usrp.get_tx_stream(sa)
>     >
>     > # Send 3 seconds in future
>     > send_time = usrp.get_time_last_pps().get_real_secs() + 3.0
>     > metadata = uhd.type.TXMetadata()
>     > metadata.has_time_spec = True
>     > metadata.time_spec = uhd.types.TimeSpec(send_time)
>     >
>     > stream.send(signal_data, metadata)
>     >
>     > # Ensure the transmission is complete before returning
>     > time.sleep(4.0)
>     >
>     > sys.exit(0)
>     >
>     >
>     This probably has to do with uncertainty in the way the 1PPS
>     signal is
>     flopped into the device.    What sample rate are you using, and what
>        master clock rate?
>
>


--------------090300050604070104000805
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/15/2020 06:45 PM, Aaron Smith
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAH2Hh70Gz9wyDZGcZtwaNO90iZJb0eJfZ3_yx0oh0z3rmP6zcg@mail.gmail.com"
      type="cite">
      <div dir="auto">I am using a master clock rate of 48 MHz and a
        sample rate of 8 MHz. <br>
      </div>
    </blockquote>
    When do you notice the timing inconsistency?  For example, if you do
    a number of timed transmits during the same session, are they<br>
      self-consistent?  Where "session" is defined as "that stuff you do
    after you've set the clock with 1PPS, etc".<br>
    <br>
    <br>
    <blockquote
cite="mid:CAH2Hh70Gz9wyDZGcZtwaNO90iZJb0eJfZ3_yx0oh0z3rmP6zcg@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Jun 15, 2020, 4:41 PM
          Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">On
          06/15/2020 03:42 PM, Aaron Smith wrote:<br>
          &gt; I am using the python api.<br>
          &gt;<br>
          &gt; usrp = uhd.usrp.MultiUSRP()<br>
          &gt;<br>
          &gt; # Set gain, clock rate, sample rate etc...<br>
          &gt;<br>
          &gt; usrp.set_clock_source('external')<br>
          &gt; usrp.set_time_source('external')<br>
          &gt;<br>
          &gt; ts_reset = uhd.types.TimeSpec(0.0)<br>
          &gt; usrp.set_time_next_pps(ts_reset)<br>
          &gt; time.sleep(1.0)<br>
          &gt; last_pps = usrp.get_time_last_pps().to_ticks(1e9)<br>
          &gt; if last_pps % int(1e9) != 0:<br>
          &gt;     print("Error failed to align clock")<br>
          &gt;<br>
          &gt; # The signal is complex float data, scaled to a max
          amplitude of 0.9 <br>
          &gt; approx 0.1 secs in duration<br>
          &gt; signal_data =
          numpy.fromfile('signal.dat',dtype=numpy.complex64)<br>
          &gt;<br>
          &gt; wirefmt = 'sc16'<br>
          &gt;<br>
          &gt; sa = uhd.usrp.StramArgs('fc32',wirefmt)<br>
          &gt; sa.channels = [0]<br>
          &gt; stream = usrp.get_tx_stream(sa)<br>
          &gt;<br>
          &gt; # Send 3 seconds in future<br>
          &gt; send_time = usrp.get_time_last_pps().get_real_secs() +
          3.0<br>
          &gt; metadata = uhd.type.TXMetadata()<br>
          &gt; metadata.has_time_spec = True<br>
          &gt; metadata.time_spec = uhd.types.TimeSpec(send_time)<br>
          &gt;<br>
          &gt; stream.send(signal_data, metadata)<br>
          &gt;<br>
          &gt; # Ensure the transmission is complete before returning<br>
          &gt; time.sleep(4.0)<br>
          &gt;<br>
          &gt; sys.exit(0)<br>
          &gt;<br>
          &gt;<br>
          This probably has to do with uncertainty in the way the 1PPS
          signal is <br>
          flopped into the device.    What sample rate are you using,
          and what<br>
             master clock rate?<br>
          <br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------090300050604070104000805--


--===============1091613885698760379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1091613885698760379==--

