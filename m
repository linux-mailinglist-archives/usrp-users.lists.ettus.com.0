Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BDF2B9DB1
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 23:34:01 +0100 (CET)
Received: from [::1] (port=41390 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfsV0-0005UY-Cs; Thu, 19 Nov 2020 17:33:54 -0500
Received: from mail-qt1-f177.google.com ([209.85.160.177]:41333)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kfsUv-0005N8-U9
 for USRP-users@lists.ettus.com; Thu, 19 Nov 2020 17:33:49 -0500
Received: by mail-qt1-f177.google.com with SMTP id j31so5706096qtb.8
 for <USRP-users@lists.ettus.com>; Thu, 19 Nov 2020 14:33:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=cJv4+V1HflcftV9QvlHFSAY+TlyX6hLqb8y3U3pRfbc=;
 b=EazBup7M7akr2wHwfYVo4c1LyUktdamrpMCpmjqIJBMG9pW+87eQik6U8pMVZTMqEC
 CfOUU6Fqqtxcb3zigTZ1CeU2YRmKvZ9grc8cDa5RZv/ZdyksxjMccWKaoogbKa4fYCB5
 FTgxZJQYHuBE03ZfzddY7Q6r9qAXwdDwKNseoAEBlYHuW7PJ0mKg1GLco6iNclhO2EBb
 7rBIMRSnw864aP+rNUPJs3EaNh3DnIMRGNvRfde95d+fxTYx5Pc1mCRIvSWaAGs1Q0NI
 T6NOHAbncCJrEl8hzSD/t48w1k3xaPNPAIWmVD+03e47QOqMEnlzbqABUrDWiTx/BpUZ
 7XDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=cJv4+V1HflcftV9QvlHFSAY+TlyX6hLqb8y3U3pRfbc=;
 b=QB7P+9Vj+IoNHjmWSDdMUoe1nkTrV+As2LpGke0+ppmg853bQSGTslrqbUgUeDBwRz
 mkusRQwY+BNl8txEpdEuISwapaBIJcP6k8WclgSgZg+NnWQKn0xj0o5Hj57LUSxBIIgc
 0p71H0BLlvIxnyf56lVnwLfLhYGK8qIiP83c5Z06aWLBm4bXOxCfQmA7xJ1onmymurdX
 RcKDYhw+BsyA/gsAIgntHlNHf71NmQk6XV9vbg8yefdB2kNFAeFeKhe9qL1bpidB038r
 Gu5ZzOw3DfLYJNNvRfjnIulu9BSSZ2G1vFva9IqMFwLOLrNqDqHyfrcloesKp9ZUeskj
 dmOw==
X-Gm-Message-State: AOAM532iRzorMjC1KDhvfzQA5pqZbVlqI3FmXIy+4kmtOVfw0xAitsK3
 QCRjQlP1aMSQQByMedv5GEGjXSmmaNg=
X-Google-Smtp-Source: ABdhPJw1Bf4vvfmU6KsqZ58/zeVrAofNrhWYVWkoKv7hqszhIvnYySdCalO3T0/4o02lXwOzeMd1Cg==
X-Received: by 2002:ac8:58c7:: with SMTP id u7mr13390214qta.149.1605825189155; 
 Thu, 19 Nov 2020 14:33:09 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id n125sm921732qkd.85.2020.11.19.14.33.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Nov 2020 14:33:08 -0800 (PST)
Message-ID: <5FB6F2A4.1070603@gmail.com>
Date: Thu, 19 Nov 2020 17:33:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Christopher.Flood@colorado.edu
CC: USRP-users@lists.ettus.com
References: <CAM+cdhLHCCLtDbjih2U+fPidDXtuQjf0syty6YwuSeszQLNx+w@mail.gmail.com>
 <52524682-BA34-4392-9CCD-D7930C577AA8@gmail.com>
 <CAM+cdhKDOrpZ-Ghyv=NZgNSKaa1OTKNB+Xwd=G7aY4zyAMpu+w@mail.gmail.com>
 <CAM+cdh+w+TyyAxVhwc1ZV5fwYz0oXh418a=6vcLgLp6wdxsgUQ@mail.gmail.com>
In-Reply-To: <CAM+cdh+w+TyyAxVhwc1ZV5fwYz0oXh418a=6vcLgLp6wdxsgUQ@mail.gmail.com>
Subject: Re: [USRP-users] Ettus N310 LO IN RX Synchronization
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
Content-Type: multipart/mixed; boundary="===============2592671462622026439=="
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
--===============2592671462622026439==
Content-Type: multipart/alternative;
 boundary="------------070405090909090602040707"

This is a multi-part message in MIME format.
--------------070405090909090602040707
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/19/2020 04:03 PM, Christopher Flood wrote:
> Just for my own edification, what is the exact role of the signal that 
> is put into the LO IN RX port? And why does it need to be exactly 
> twice the desired receive frequency? Wouldn't there be additional 
> resolution for any frequency greater than twice the desired receive 
> frequency?
That signal substitutes for the LO signal generated internally by the 
AD9371 RFFE chip.

It has to be at 2X the desired input frequency because the 
phase-splitter in that chip uses a "2XLO" architecture, which requires 
the signal
   to be at twice the desired LO frequency.

Further this functionality is only available for tuned frequencies 
between 300MHz and 4GHz, (600Mhz to 8GHz LO input).   This is because
   for frequencies below 300MHz, the device uses an up-conversion scheme.

If you're not certain WHAT the external LO *does*, perhaps you don't 
need it in your application?

Normally for phase-coherent applications, the highest-quality (lowest 
mutual phase noise) coherence is obtained when each mixer receives
   exactly the same LO signal, which is why an external LO input is 
provided in the N310.  The "second-best" implementation is to have
   all the synthesizers share a common reference clock, which is the 
scenario when you aren't using the external LO input.

Now, somewhat orthogonal this is is "where does the device get its 
reference from?"  If you're building a multi-device system where
   some form of phase-coherence is desired, then they all have to share 
their reference clock--which is where the external 10MHz
   clock comes in.



>
> On Thu, Nov 19, 2020 at 1:11 PM Christopher Flood 
> <Christopher.Flood@colorado.edu 
> <mailto:Christopher.Flood@colorado.edu>> wrote:
>
>     Yes, the signal should be at +3dBm, the Vrms is ~300mV into a 50
>     ohm load. The frequency of the signal is also twice the frequency
>     of the signal I'm trying to gather data on. However, due to the
>     way the documentation is phrased, I wasn't sure if 20MHz is too
>     low of a frequency for the LO RX IN.
>
>     I have not tried the init_cals=basic argument. I can give that a
>     shot and report back.
>
>     -Chris
>
>     On Thu, Nov 19, 2020, 12:32 PM Marcus D Leech
>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>         Are you inputting an LO signal at twice the desired frequency
>         and at +3dBm?
>
>         Have you tried adding init_cals=BASIC to your device ages?
>
>         Sent from my iPhone
>
>         > On Nov 19, 2020, at 2:26 PM, Christopher Flood via
>         USRP-users <usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>> wrote:
>         >
>         > ﻿
>         > Hi all,
>         >
>         > I've seen some discussion about this on the email lists, but
>         I'm still having a bit of trouble. I'm trying to use the LO IN
>         RX ports on the front of the N310 to synchronize the
>         oscillators on the two daughterboards. I was thinking I could
>         generate a signal on one of the TX/RX ports of the SDR and
>         feed that into the LO IN RX ports at the appropriate frequency
>         and power. However, when I test this setup in GNU Radio
>         Companion I don't get any meaningful data, so I must be doing
>         something wrong.
>         >
>         > The input signal that I want to sample is a 10MHz signal
>         that is going into an RX2 port on the front end of the SDR.
>         When I set the device argument "rx_lo_source=internal" and run
>         it, the data I get looks exactly how I would expect. When I
>         change the device argument to "rx_lo_source=external" and run
>         it, I don't get anything that makes sense.
>         >
>         > Am I using the LO IN RX ports correctly? The documentation
>         doesn't say much besides power and frequency ranges.
>         >
>         > Any help or advice would be much appreciated.
>         >
>         > -Chris
>         > _______________________________________________
>         > USRP-users mailing list
>         > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>         >
>         http://secure-web.cisco.com/1rpFFtn1JZDE_g214Q-YS6vXmf7iX-GrSqz5_gIRlzT74BRG0LQVcDxlbCKOBLjxI7GcMNxycsBFMF-Lzacu4VXZpGTxpMgLHyxfkdQ2pzOtNNtecm_gMTYICiRaahesVZWF5a2dj7cjYzaLEjuC4PUBV2IKiJN9B3Z0EGCGPr6nbTyCm-I7dJfEsfYsSIFdFFSQP6iWj2NrE4xYBVKyPCxJT34HfnXS_KoENsd6WDKRct0TsItd4_dk4xBZEWrwNqes0pfV_RJzJFNSWC1tJjpFk1UVK8ySaM22YoapPkrKhJ7xvd9EiKc-aK5WHC2syeWL5YAO5QNCrMxT9JJ-i3tvC2sZAlgAyNSx78qV7M09bkZ1k2hn5qi3jbvK3xggz-HHgjahAsx6zRH86NZDIoSe5_4tc6c0UeE03mYMgALuwY1kwoZr7b8-EjaFkvZRoF8mCGzGXTKfyvJuFHID1yA/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com
>


--------------070405090909090602040707
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/19/2020 04:03 PM, Christopher
      Flood wrote:<br>
    </div>
    <blockquote
cite="mid:CAM+cdh+w+TyyAxVhwc1ZV5fwYz0oXh418a=6vcLgLp6wdxsgUQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">Just for my own edification, what is the exact role
        of the signal that is put into the LO IN RX port? And why does
        it need to be exactly twice the desired receive frequency?
        Wouldn't there be additional resolution for any frequency
        greater than twice the desired receive frequency?</div>
    </blockquote>
    That signal substitutes for the LO signal generated internally by
    the AD9371 RFFE chip.<br>
    <br>
    It has to be at 2X the desired input frequency because the
    phase-splitter in that chip uses a "2XLO" architecture, which
    requires the signal <br>
      to be at twice the desired LO frequency.<br>
    <br>
    Further this functionality is only available for tuned frequencies
    between 300MHz and 4GHz, (600Mhz to 8GHz LO input).   This is
    because<br>
      for frequencies below 300MHz, the device uses an up-conversion
    scheme.<br>
    <br>
    If you're not certain WHAT the external LO *does*, perhaps you don't
    need it in your application?<br>
    <br>
    Normally for phase-coherent applications, the highest-quality
    (lowest mutual phase noise) coherence is obtained when each mixer
    receives<br>
      exactly the same LO signal, which is why an external LO input is
    provided in the N310.  The "second-best" implementation is to have<br>
      all the synthesizers share a common reference clock, which is the
    scenario when you aren't using the external LO input.<br>
    <br>
    Now, somewhat orthogonal this is is "where does the device get its
    reference from?"  If you're building a multi-device system where<br>
      some form of phase-coherence is desired, then they all have to
    share their reference clock--which is where the external 10MHz<br>
      clock comes in.<br>
    <br>
    <br>
    <br>
    <blockquote
cite="mid:CAM+cdh+w+TyyAxVhwc1ZV5fwYz0oXh418a=6vcLgLp6wdxsgUQ@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Nov 19, 2020 at 1:11
          PM Christopher Flood &lt;<a moz-do-not-send="true"
            href="mailto:Christopher.Flood@colorado.edu">Christopher.Flood@colorado.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="auto">
            <div>Yes, the signal should be at +3dBm, the Vrms is ~300mV
              into a 50 ohm load. The frequency of the signal is also
              twice the frequency of the signal I'm trying to gather
              data on. However, due to the way the documentation is
              phrased, I wasn't sure if 20MHz is too low of a frequency
              for the LO RX IN. </div>
            <div dir="auto"><br>
            </div>
            <div dir="auto">I have not tried the init_cals=basic
              argument. I can give that a shot and report back. </div>
            <div dir="auto"><br>
            </div>
            <div dir="auto">-Chris <br>
              <br>
              <div class="gmail_quote" dir="auto">
                <div dir="ltr" class="gmail_attr">On Thu, Nov 19, 2020,
                  12:32 PM Marcus D Leech &lt;<a moz-do-not-send="true"
                    href="mailto:patchvonbraun@gmail.com"
                    target="_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">Are you inputting
                  an LO signal at twice the desired frequency and at
                  +3dBm?<br>
                  <br>
                  Have you tried adding init_cals=BASIC to your device
                  ages?<br>
                  <br>
                  Sent from my iPhone<br>
                  <br>
                  &gt; On Nov 19, 2020, at 2:26 PM, Christopher Flood
                  via USRP-users &lt;<a moz-do-not-send="true"
                    href="mailto:usrp-users@lists.ettus.com"
                    rel="noreferrer" target="_blank">usrp-users@lists.ettus.com</a>&gt;
                  wrote:<br>
                  &gt; <br>
                  &gt; ﻿<br>
                  &gt; Hi all,<br>
                  &gt; <br>
                  &gt; I've seen some discussion about this on the email
                  lists, but I'm still having a bit of trouble. I'm
                  trying to use the LO IN RX ports on the front of the
                  N310 to synchronize the oscillators on the two
                  daughterboards. I was thinking I could generate a
                  signal on one of the TX/RX ports of the SDR and feed
                  that into the LO IN RX ports at the appropriate
                  frequency and power. However, when I test this setup
                  in GNU Radio Companion I don't get any meaningful
                  data, so I must be doing something wrong. <br>
                  &gt; <br>
                  &gt; The input signal that I want to sample is a 10MHz
                  signal that is going into an RX2 port on the front end
                  of the SDR. When I set the device argument
                  "rx_lo_source=internal" and run it, the data I get
                  looks exactly how I would expect. When I change the
                  device argument to "rx_lo_source=external" and run it,
                  I don't get anything that makes sense. <br>
                  &gt; <br>
                  &gt; Am I using the LO IN RX ports correctly? The
                  documentation doesn't say much besides power and
                  frequency ranges. <br>
                  &gt; <br>
                  &gt; Any help or advice would be much appreciated.<br>
                  &gt; <br>
                  &gt; -Chris<br>
                  &gt; _______________________________________________<br>
                  &gt; USRP-users mailing list<br>
                  &gt; <a moz-do-not-send="true"
                    href="mailto:USRP-users@lists.ettus.com"
                    rel="noreferrer" target="_blank">USRP-users@lists.ettus.com</a><br>
                  &gt; <a moz-do-not-send="true"
href="http://secure-web.cisco.com/1rpFFtn1JZDE_g214Q-YS6vXmf7iX-GrSqz5_gIRlzT74BRG0LQVcDxlbCKOBLjxI7GcMNxycsBFMF-Lzacu4VXZpGTxpMgLHyxfkdQ2pzOtNNtecm_gMTYICiRaahesVZWF5a2dj7cjYzaLEjuC4PUBV2IKiJN9B3Z0EGCGPr6nbTyCm-I7dJfEsfYsSIFdFFSQP6iWj2NrE4xYBVKyPCxJT34HfnXS_KoENsd6WDKRct0TsItd4_dk4xBZEWrwNqes0pfV_RJzJFNSWC1tJjpFk1UVK8ySaM22YoapPkrKhJ7xvd9EiKc-aK5WHC2syeWL5YAO5QNCrMxT9JJ-i3tvC2sZAlgAyNSx78qV7M09bkZ1k2hn5qi3jbvK3xggz-HHgjahAsx6zRH86NZDIoSe5_4tc6c0UeE03mYMgALuwY1kwoZr7b8-EjaFkvZRoF8mCGzGXTKfyvJuFHID1yA/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com"
                    rel="noreferrer noreferrer" target="_blank">http://secure-web.cisco.com/1rpFFtn1JZDE_g214Q-YS6vXmf7iX-GrSqz5_gIRlzT74BRG0LQVcDxlbCKOBLjxI7GcMNxycsBFMF-Lzacu4VXZpGTxpMgLHyxfkdQ2pzOtNNtecm_gMTYICiRaahesVZWF5a2dj7cjYzaLEjuC4PUBV2IKiJN9B3Z0EGCGPr6nbTyCm-I7dJfEsfYsSIFdFFSQP6iWj2NrE4xYBVKyPCxJT34HfnXS_KoENsd6WDKRct0TsItd4_dk4xBZEWrwNqes0pfV_RJzJFNSWC1tJjpFk1UVK8ySaM22YoapPkrKhJ7xvd9EiKc-aK5WHC2syeWL5YAO5QNCrMxT9JJ-i3tvC2sZAlgAyNSx78qV7M09bkZ1k2hn5qi3jbvK3xggz-HHgjahAsx6zRH86NZDIoSe5_4tc6c0UeE03mYMgALuwY1kwoZr7b8-EjaFkvZRoF8mCGzGXTKfyvJuFHID1yA/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com</a><br>
                  <br>
                </blockquote>
              </div>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070405090909090602040707--


--===============2592671462622026439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2592671462622026439==--

