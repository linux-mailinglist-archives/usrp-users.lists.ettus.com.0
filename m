Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8244205BC8
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 21:28:32 +0200 (CEST)
Received: from [::1] (port=53548 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnoar-0008DT-Ea; Tue, 23 Jun 2020 15:28:29 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:39335)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jnoao-000877-90
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 15:28:26 -0400
Received: by mail-qk1-f181.google.com with SMTP id l6so16297590qkc.6
 for <usrp-users@lists.ettus.com>; Tue, 23 Jun 2020 12:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=OCdRCOgaWGAZTYmt8zhvW01tFtp2aqX8MIegCT7mUvg=;
 b=TVpnZvKz/aPhPZnXh4vX5jUCAFuWc4PTHdkZ2HvNDiqcmKinr/rFvfPRSzwTwcIUHk
 TlxvgLcoivc8GGi07jJlzvRADa60qnpBSMb+OdQAaQ32vCt47fkoGwyc45JmSaoMp55w
 gTnJej/bHk2I/CVHY3Vqm+IyrGJkNp4RnDbPrzlABNumebvESUts8+Ux3E6d5Ccs1GT1
 nKohlXQ7bE+/w+0OkeXnLTwukki/5eDOFfeYLBXztH4FiMIow4OEA7YHCecSEyXT1L22
 dkLFRe+1LVKaFItpnN9nqBy8aadOoPgdnq5+sEi+wtW+Zs9cUil3enz79GpxvysxwCBB
 YFeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=OCdRCOgaWGAZTYmt8zhvW01tFtp2aqX8MIegCT7mUvg=;
 b=BaKhH1ZQnTBO0wzSTyKijThYM+7Y6MYVqWJUGCgGLGp5+lHVDQcPtRf+Kk4iZs2lTV
 NwyUJr9j5qpBMoQY8NLsl/ZzZEGQCtqu6XjoLivP3h4215mDj3KaK9gc7abeYjzqsyhD
 67VPGtrDJPh5hymTqAAP2VKOA6TSSlQ4Hf1/XcCkz/emiRm28m28wqVdZ/kEbVrOCOZ6
 M+dE1ISsbVSXk4Bz/LJkApE3HT+FzZG18UZtRTup8DeLaiuVLhpAeyUnggN8n5eIysK/
 rQIzIkaLJKWEkZkm/zZiBMVbfSWiHZ43/UgcUUm37owlW8cHIC1P8KEjGQ7MEg/FhGIS
 xdgA==
X-Gm-Message-State: AOAM5312WkPvWL6v0EZYHG/P+ITnQ7L5wU0TSw7ug3tYh3eDnLtb86VK
 /u8ZOwu7ElZn3f/8p29snnUUHk4FZcI=
X-Google-Smtp-Source: ABdhPJwN4yAiNnoGTmiW01Umgfv+2yIw/KX/aOtWHZpvtjCC0RNx/bdu3F3c9NHHEr/5ZXoqd1qRVw==
X-Received: by 2002:a05:620a:1223:: with SMTP id
 v3mr20639438qkj.468.1592940465593; 
 Tue, 23 Jun 2020 12:27:45 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id w45sm1540566qtj.51.2020.06.23.12.27.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jun 2020 12:27:45 -0700 (PDT)
Message-ID: <5EF257B0.1060300@gmail.com>
Date: Tue, 23 Jun 2020 15:27:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Aaron Smith <aarsmith54@gmail.com>
CC: Ettus Mail List <usrp-users@lists.ettus.com>
References: <CAH2Hh738Yjx+iA=oHOP2tmq+TXoj8-k5ZLNUnXJsdjQ9D1q6cg@mail.gmail.com>
 <5EF2527F.7090600@gmail.com>
 <CAH2Hh70UsmEuAYPU6H+biWQ-Fd29Rr13+0rX1718fYHnCwna=A@mail.gmail.com>
In-Reply-To: <CAH2Hh70UsmEuAYPU6H+biWQ-Fd29Rr13+0rX1718fYHnCwna=A@mail.gmail.com>
Subject: Re: [USRP-users] 10 MHz Reference Initial Phase in the X310
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
Content-Type: multipart/mixed; boundary="===============1031170660097773624=="
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
--===============1031170660097773624==
Content-Type: multipart/alternative;
 boundary="------------050703020509050205000907"

This is a multi-part message in MIME format.
--------------050703020509050205000907
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/23/2020 03:18 PM, Aaron Smith wrote:
> Marcus,
>
> They are EndRun Meridian and Meridian II units.
>
> I am very ignorant on this topic. Is it a standard that the 1 PPS 
> should coincide with the top of a 10 MHz cycle? I just wouldn't expect 
> the front end transmit delay, relative to the 1 PPS input, to depend 
> on the 10 MHz reference phase. I don't understand how the 10 MHz 
> reference and 1 PPS input are used to synthesize time. Is the 1 PPS 
> detection done at the master lock rate (200 MHz) or at 10 MHz?
The 1PPS is used *exactly once*, when you do a "set_time_next_pps", 
after which the time-of-day clock on the board is driven by the master
   clock which is phase-locked to the 10MHz external reference.  So, the 
time-of-day clock on the board runs at (in the case of the X310) 200MHz
   by default, so each "tick" is 5nsec.  The 1PPS signal is probably 
"sensed" by logic that's running at the master clock rate.  So two X310 
units may
   still have a small amount of residual ambiguity about when 1PPS 
"happens", by perhaps as much as 5Nsec.  But I'm not an FPGA designer, so
   this is just an mildly-educated "guess".

There may be some lose convention about the phase of the 1PPS with 
respect to the 10MHz generated reference, but  would not expect it
   to be an "enforced standard".  Different manufacturers will have 
different "servo" algorithms for steering the 10MHz clock output 
(usually, it's a
   voltage-tunable VCTCXO or VOCXO) with respect to the *derived* 1PPS 
pulses.  The error on the 1PPS signal is typically surprisingly large--it's
   1PPS +/- a few 10s of nanoseconds, and the phasing of that 1PPS with 
respect to the 10MHz signal isn't, I think, necessarily a "standard".
>
> On Tue, Jun 23, 2020 at 1:06 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 06/23/2020 02:45 PM, Aaron Smith via USRP-users wrote:
>     > Hello,
>     >
>     > I am attempting to release a transmission from an X310 every
>     second.
>     > To accomplish this, I must measure, and calibrate the delay in
>     the RF
>     > front end of the radio for my chosen sample rate. I'd like the
>     > transmission to be released within 1 clock cycle of the rising
>     edge of
>     > the PPS.
>     >
>     > I am feeding the X310 an external 10 MHz reference and 1 PPS, which
>     > are produced by the same source, and are being supplied to the
>     radio
>     > with matched cable lengths. The source is a GPS receiver and in
>     my lab
>     > I have 2 different generations of the GPS receiver.
>     >
>     > While calibrating the front end transmit delay I noticed a
>     discrepancy
>     > in the radio timing between the separate GPS receiver
>     generations. The
>     > 1st generation of GPS receiver is 50 ns different than the
>     calibration
>     > for the 2nd generation. When I look at the 1 PPS and 10 MHz
>     output on
>     > a scope, I noticed that in the 1st generation the PPS occurs at the
>     > top of a 10 MHz cycle, and in the 2nd generation it occurs at the
>     > bottom of a 10 MHz cycle. Half a cycle at 10 MHz is 50 ns. I
>     suspect
>     > this is not coincidence because I have now tested 6 different GPS
>     > receivers, 3 of gen 1 and 3 of gen 2, and all 3 gen 1
>     calibrations are
>     > the same and they are 50 ns different from the gen 2 calibrations.
>     >
>     > Is this the expected behavior? Or is there a bug in the X310
>     code that
>     > handles timing? I have never worked on hardware, but I would not
>     > expect the initial phase of a 10 MHz reference to impact
>     absolute time.
>     >
>     > Thanks for your help!
>     >
>     >
>     These are external GPS receivers?  What kind?  Given your scope
>     measurements, how would this be related to a bug in X310?  I'm
>     confused
>        as to how you're linking the 10MHz/1PPS phasing on your
>     external GPS
>     receivers to the X310 having bugs.
>
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------050703020509050205000907
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/23/2020 03:18 PM, Aaron Smith
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAH2Hh70UsmEuAYPU6H+biWQ-Fd29Rr13+0rX1718fYHnCwna=A@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Marcus,</div>
        <div><br>
        </div>
        <div>They are EndRun Meridian and Meridian II units.</div>
        <div><br>
        </div>
        <div>I am very ignorant on this topic. Is it a standard that the
          1 PPS should coincide with the top of a 10 MHz cycle? I just
          wouldn't expect the front end transmit delay, relative to the
          1 PPS input, to depend on the 10 MHz reference phase. I don't
          understand how the 10 MHz reference and 1 PPS input are used
          to synthesize time. Is the 1 PPS detection done at the master
          lock rate (200 MHz) or at 10 MHz?<br>
        </div>
      </div>
    </blockquote>
    The 1PPS is used *exactly once*, when you do a "set_time_next_pps",
    after which the time-of-day clock on the board is driven by the
    master<br>
      clock which is phase-locked to the 10MHz external reference.  So,
    the time-of-day clock on the board runs at (in the case of the X310)
    200MHz<br>
      by default, so each "tick" is 5nsec.  The 1PPS signal is probably
    "sensed" by logic that's running at the master clock rate.  So two
    X310 units may<br>
      still have a small amount of residual ambiguity about when 1PPS
    "happens", by perhaps as much as 5Nsec.  But I'm not an FPGA
    designer, so<br>
      this is just an mildly-educated "guess".<br>
    <br>
    There may be some lose convention about the phase of the 1PPS with
    respect to the 10MHz generated reference, but  would not expect it<br>
      to be an "enforced standard".  Different manufacturers will have
    different "servo" algorithms for steering the 10MHz clock output
    (usually, it's a<br>
      voltage-tunable VCTCXO or VOCXO) with respect to the *derived*
    1PPS pulses.  The error on the 1PPS signal is typically surprisingly
    large--it's<br>
      1PPS +/- a few 10s of nanoseconds, and the phasing of that 1PPS
    with respect to the 10MHz signal isn't, I think, necessarily a
    "standard".<br>
    <blockquote
cite="mid:CAH2Hh70UsmEuAYPU6H+biWQ-Fd29Rr13+0rX1718fYHnCwna=A@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Jun 23, 2020 at 1:06
          PM Marcus D. Leech via USRP-users &lt;<a
            moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          06/23/2020 02:45 PM, Aaron Smith via USRP-users wrote:<br>
          &gt; Hello,<br>
          &gt;<br>
          &gt; I am attempting to release a transmission from an X310
          every second. <br>
          &gt; To accomplish this, I must measure, and calibrate the
          delay in the RF <br>
          &gt; front end of the radio for my chosen sample rate. I'd
          like the <br>
          &gt; transmission to be released within 1 clock cycle of the
          rising edge of <br>
          &gt; the PPS.<br>
          &gt;<br>
          &gt; I am feeding the X310 an external 10 MHz reference and 1
          PPS, which <br>
          &gt; are produced by the same source, and are being supplied
          to the radio <br>
          &gt; with matched cable lengths. The source is a GPS receiver
          and in my lab <br>
          &gt; I have 2 different generations of the GPS receiver.<br>
          &gt;<br>
          &gt; While calibrating the front end transmit delay I noticed
          a discrepancy <br>
          &gt; in the radio timing between the separate GPS receiver
          generations. The <br>
          &gt; 1st generation of GPS receiver is 50 ns different than
          the calibration <br>
          &gt; for the 2nd generation. When I look at the 1 PPS and 10
          MHz output on <br>
          &gt; a scope, I noticed that in the 1st generation the PPS
          occurs at the <br>
          &gt; top of a 10 MHz cycle, and in the 2nd generation it
          occurs at the <br>
          &gt; bottom of a 10 MHz cycle. Half a cycle at 10 MHz is 50
          ns. I suspect <br>
          &gt; this is not coincidence because I have now tested 6
          different GPS <br>
          &gt; receivers, 3 of gen 1 and 3 of gen 2, and all 3 gen 1
          calibrations are <br>
          &gt; the same and they are 50 ns different from the gen 2
          calibrations.<br>
          &gt;<br>
          &gt; Is this the expected behavior? Or is there a bug in the
          X310 code that <br>
          &gt; handles timing? I have never worked on hardware, but I
          would not <br>
          &gt; expect the initial phase of a 10 MHz reference to impact
          absolute time.<br>
          &gt;<br>
          &gt; Thanks for your help!<br>
          &gt;<br>
          &gt;<br>
          These are external GPS receivers?  What kind?  Given your
          scope <br>
          measurements, how would this be related to a bug in X310?  I'm
          confused<br>
             as to how you're linking the 10MHz/1PPS phasing on your
          external GPS <br>
          receivers to the X310 having bugs.<br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------050703020509050205000907--


--===============1031170660097773624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1031170660097773624==--

