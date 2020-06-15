Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EC71FA3C8
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jun 2020 00:54:56 +0200 (CEST)
Received: from [::1] (port=38400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jky0D-0004Nd-G3; Mon, 15 Jun 2020 18:54:53 -0400
Received: from mail-qv1-f43.google.com ([209.85.219.43]:38288)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jky08-0004EH-Su
 for usrp-users@lists.ettus.com; Mon, 15 Jun 2020 18:54:48 -0400
Received: by mail-qv1-f43.google.com with SMTP id ec10so8602597qvb.5
 for <usrp-users@lists.ettus.com>; Mon, 15 Jun 2020 15:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=PlSabOSeEcHwta2t335xh4TV5v4aW6AqoPBS+HR0Xs4=;
 b=oXmq3bPH/srJNmyJ1VOPDPBNPATr9+2e/KWXRzp8OGsefRulCfzfYzUdy+eyZngkFv
 8SGk+fhPD1rgAXGAD0AVTvXAN30Ah7AqVZNMtWYaKfXWgj5Gyg6ZuhHby9zroODsnndg
 XYjejLkdIn0QFIaDAfgZkq7rPi+p49jEP7stEBrf9DSBb0HxC6fxBdZ8fwFnnGg8dn2n
 zXUWsoitQKuZIvPUBaPz4mgz7vOt7/QD/mPNGbFXTljtsS8nGlCzU6hsv+u+MHUwdiW8
 H6OMfXYgD3ECSXwFjonvj1MpjQt5O9WVL6ljvDpI3kYDOTGdgGbwMsMuO5oDRmH37uR/
 Iy5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=PlSabOSeEcHwta2t335xh4TV5v4aW6AqoPBS+HR0Xs4=;
 b=o6Pcn/pqGGmuKMqQOUbeHQJI4wZS/qmLH94SsiTc3tZJQnILxcfaZQQ7mqIYls6YSo
 03coYRu0VHmVmUv0I/SYxnMwTmwBbd7CCX6xScBs+spEWBQulMAh4QCMHLhUVVD9SbfQ
 djJiGnFt7AU+kxDgL6sXYCZ5ryrICUfGuYxvN77AToqWBrwHQtrg58GTb2oY3kyy39Rl
 G7tep4RDZMyOdGVRTVXyfqKPaYsdzM79zNXIR2rxKAD1Xni1eb6Fff+BDGhRkPJ2dtDj
 zTkjznLJLnechF9QbBrmhevqy8kbs/7zZlx5Z8lTpAebKuKnCsO2xn6U4mOay/c9uEEB
 40ag==
X-Gm-Message-State: AOAM530O1PrvA7un/B1XNp8n6Jvnb2v2JorBKSHgFfappWCeaOvCJHkc
 W8j0dvmCBq8pf5Ed+4iZZVkIz0gBWos=
X-Google-Smtp-Source: ABdhPJxv6B1rF7MO88gYQbIT64nvtGA4tPoPCl11hCyAwaeyrUmI5+aWaZ+eE9GIhntb9BJzjYuEaA==
X-Received: by 2002:ad4:46a9:: with SMTP id br9mr12115qvb.246.1592261648116;
 Mon, 15 Jun 2020 15:54:08 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id c17sm12794772qtw.48.2020.06.15.15.54.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jun 2020 15:54:07 -0700 (PDT)
Message-ID: <5EE7FC0F.8040207@gmail.com>
Date: Mon, 15 Jun 2020 18:54:07 -0400
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
 <5EE7FA95.3030901@gmail.com>
 <CAH2Hh70bZgQpcsNT+-F-XqZr+m29TDu9XfMFQ5mgVE0AgcMD7g@mail.gmail.com>
In-Reply-To: <CAH2Hh70bZgQpcsNT+-F-XqZr+m29TDu9XfMFQ5mgVE0AgcMD7g@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6083516291302161205=="
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
--===============6083516291302161205==
Content-Type: multipart/alternative;
 boundary="------------090705010400070604080709"

This is a multi-part message in MIME format.
--------------090705010400070604080709
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/15/2020 06:51 PM, Aaron Smith wrote:
> Yes, transmissions within the same session are consistent. If I 
> destroy the MultiUSRP object and recreate it (restart my transmit 
> script), the timing will change. If I repeat hundreds of transmissions 
> without restarting the timing is stable to the expected accuracy of my 
> TOA measurements.
Yes, so this is consistent with previous speculations about the way the 
1PPS signal is flopped into the FPGA (it was either Nick Foster or
   someone else).

Just to be sure, you're using a very-recent UHD install?  I know there 
were some changes made to B2xx timing within the last year, although
    can't recall if the 1PPS logic was touched.


>
> On Mon, Jun 15, 2020, 4:47 PM Marcus D. Leech <patchvonbraun@gmail.com 
> <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 06/15/2020 06:45 PM, Aaron Smith wrote:
>>     I am using a master clock rate of 48 MHz and a sample rate of 8 MHz.
>     When do you notice the timing inconsistency?  For example, if you
>     do a number of timed transmits during the same session, are they
>       self-consistent?  Where "session" is defined as "that stuff you
>     do after you've set the clock with 1PPS, etc".
>
>
>>
>>     On Mon, Jun 15, 2020, 4:41 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>         On 06/15/2020 03:42 PM, Aaron Smith wrote:
>>         > I am using the python api.
>>         >
>>         > usrp = uhd.usrp.MultiUSRP()
>>         >
>>         > # Set gain, clock rate, sample rate etc...
>>         >
>>         > usrp.set_clock_source('external')
>>         > usrp.set_time_source('external')
>>         >
>>         > ts_reset = uhd.types.TimeSpec(0.0)
>>         > usrp.set_time_next_pps(ts_reset)
>>         > time.sleep(1.0)
>>         > last_pps = usrp.get_time_last_pps().to_ticks(1e9)
>>         > if last_pps % int(1e9) != 0:
>>         >     print("Error failed to align clock")
>>         >
>>         > # The signal is complex float data, scaled to a max
>>         amplitude of 0.9
>>         > approx 0.1 secs in duration
>>         > signal_data =
>>         numpy.fromfile('signal.dat',dtype=numpy.complex64)
>>         >
>>         > wirefmt = 'sc16'
>>         >
>>         > sa = uhd.usrp.StramArgs('fc32',wirefmt)
>>         > sa.channels = [0]
>>         > stream = usrp.get_tx_stream(sa)
>>         >
>>         > # Send 3 seconds in future
>>         > send_time = usrp.get_time_last_pps().get_real_secs() + 3.0
>>         > metadata = uhd.type.TXMetadata()
>>         > metadata.has_time_spec = True
>>         > metadata.time_spec = uhd.types.TimeSpec(send_time)
>>         >
>>         > stream.send(signal_data, metadata)
>>         >
>>         > # Ensure the transmission is complete before returning
>>         > time.sleep(4.0)
>>         >
>>         > sys.exit(0)
>>         >
>>         >
>>         This probably has to do with uncertainty in the way the 1PPS
>>         signal is
>>         flopped into the device.    What sample rate are you using,
>>         and what
>>            master clock rate?
>>
>>
>


--------------090705010400070604080709
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/15/2020 06:51 PM, Aaron Smith
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAH2Hh70bZgQpcsNT+-F-XqZr+m29TDu9XfMFQ5mgVE0AgcMD7g@mail.gmail.com"
      type="cite">
      <div dir="auto">Yes, transmissions within the same session are
        consistent. If I destroy the MultiUSRP object and recreate it
        (restart my transmit script), the timing will change. If I
        repeat hundreds of transmissions without restarting the timing
        is stable to the expected accuracy of my TOA measurements. <br>
      </div>
    </blockquote>
    Yes, so this is consistent with previous speculations about the way
    the 1PPS signal is flopped into the FPGA (it was either Nick Foster
    or<br>
      someone else).<br>
    <br>
    Just to be sure, you're using a very-recent UHD install?  I know
    there were some changes made to B2xx timing within the last year,
    although<br>
       can't recall if the 1PPS logic was touched.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAH2Hh70bZgQpcsNT+-F-XqZr+m29TDu9XfMFQ5mgVE0AgcMD7g@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Jun 15, 2020, 4:47 PM
          Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div bgcolor="#FFFFFF" text="#000000">
            <div>On 06/15/2020 06:45 PM, Aaron Smith wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="auto">I am using a master clock rate of 48 MHz
                and a sample rate of 8 MHz. <br>
              </div>
            </blockquote>
            When do you notice the timing inconsistency?  For example,
            if you do a number of timed transmits during the same
            session, are they<br>
              self-consistent?  Where "session" is defined as "that
            stuff you do after you've set the clock with 1PPS, etc".<br>
            <br>
            <br>
            <blockquote type="cite"><br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Mon, Jun 15, 2020,
                  4:41 PM Marcus D. Leech &lt;<a moz-do-not-send="true"
                    href="mailto:patchvonbraun@gmail.com"
                    target="_blank" rel="noreferrer">patchvonbraun@gmail.com</a>&gt;

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
                  &gt; # The signal is complex float data, scaled to a
                  max amplitude of 0.9 <br>
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
                  &gt; send_time =
                  usrp.get_time_last_pps().get_real_secs() + 3.0<br>
                  &gt; metadata = uhd.type.TXMetadata()<br>
                  &gt; metadata.has_time_spec = True<br>
                  &gt; metadata.time_spec =
                  uhd.types.TimeSpec(send_time)<br>
                  &gt;<br>
                  &gt; stream.send(signal_data, metadata)<br>
                  &gt;<br>
                  &gt; # Ensure the transmission is complete before
                  returning<br>
                  &gt; time.sleep(4.0)<br>
                  &gt;<br>
                  &gt; sys.exit(0)<br>
                  &gt;<br>
                  &gt;<br>
                  This probably has to do with uncertainty in the way
                  the 1PPS signal is <br>
                  flopped into the device.    What sample rate are you
                  using, and what<br>
                     master clock rate?<br>
                  <br>
                  <br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------090705010400070604080709--


--===============6083516291302161205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6083516291302161205==--

