Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFD82FF6A9
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 22:01:08 +0100 (CET)
Received: from [::1] (port=51412 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2h4l-0003bJ-28; Thu, 21 Jan 2021 16:01:07 -0500
Received: from mail-qt1-f179.google.com ([209.85.160.179]:43304)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l2h4h-0003FJ-PU
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 16:01:03 -0500
Received: by mail-qt1-f179.google.com with SMTP id o18so2604457qtp.10
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 13:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Uzj+MajRxoaafGdfhjyeOXiaJEf0LxsLCtSeMFMn44E=;
 b=DBp8cwasHEtRXelT4N/4QHtMgaP++nkTVZ0Wv7iwOmP3WmyCDX/Q6rIokdhlDhI3vs
 VSeHO+2NW8CaQVFoihMwRBR06qCS58lvby7x5h5IU0GxXV9N/PhMpGx8PgM8bySmRZQS
 G+o2gCvsI6KCpDRSGggl8h1QV6Y91GhI9Eb2cpsiONQqTMnZ5ZzDkuWdEicXeAeWYK9/
 rHuvHzirm5VN4aAdHp0nQGo8MTJ2AvSOh7ui2mttrAwSx56g13W8CfribRTqLKNPa6jJ
 TfoCZXcbimPevyci9Msb1Qwo9JhYblwRgq5YmGYspGdMhrC7BRo1u2FBT0dMFV6ngYtJ
 Ry+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Uzj+MajRxoaafGdfhjyeOXiaJEf0LxsLCtSeMFMn44E=;
 b=KNcxI0brrOMY3ev8WiaMl/sZHn4MGzizdmKFZgWeyoywRSNnxE2n1WpKlDBp/alDaw
 ESQK0545u3EgEPXTURu5zmgkFtC9MpMDQ3hnlaSgZ9XuNI1OFlsde+5j+XbiVxCH44XY
 9T6zw3mhyAHkPLmtcw5mwEwRaqBZv4PptkVHDdXDWYlKs2/oVW8ehsNxCU3i2G0H/xy1
 zDdIbm8PzMtVM9LxXjvX3BN1cJA64g5rG5q86tILa0GA2oFYSFibcXHVQFUSDMxPp+UY
 Ufsp0VKGsRODMRd5A77/8/4VGMNyHTemYmrE1ylSvjU5E9tpRRUNvglFG8sF/yPflnUl
 QFsg==
X-Gm-Message-State: AOAM530N6/9BHLiRCW+8h9N9IjL8wlJuUJ5cKublKC80i+0SWIiLQqh9
 KEBCtVSqXYGwQW63LqTZme7mljD0VcM=
X-Google-Smtp-Source: ABdhPJxnG1P+tUEKlGRv8fCEA7hca8tK8Ow9R8FVE8FyNY22wB2knmZTYT4Wdk0lsil3bTb5MGEtXw==
X-Received: by 2002:ac8:1c8a:: with SMTP id f10mr1528394qtl.4.1611262823123;
 Thu, 21 Jan 2021 13:00:23 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id a77sm4684433qkg.77.2021.01.21.13.00.22
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 21 Jan 2021 13:00:22 -0800 (PST)
Message-ID: <6009EB66.4060404@gmail.com>
Date: Thu, 21 Jan 2021 16:00:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CABD0DOsMsDopeeSyOGkZmC2UuFgt=Abf3yO_fw2hXfva6V3hgA@mail.gmail.com>
In-Reply-To: <CABD0DOsMsDopeeSyOGkZmC2UuFgt=Abf3yO_fw2hXfva6V3hgA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3582419480864211057=="
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
--===============3582419480864211057==
Content-Type: multipart/alternative;
 boundary="------------010601070600040304020602"

This is a multi-part message in MIME format.
--------------010601070600040304020602
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2021 02:56 PM, Glenn Hazelwood via USRP-users wrote:
> I have an N310 and I wish to scan from 10 MHz to 5910 MHz with two 
> channels. The frontend bandwidth is 100 MHz. So I do 60 tunings 
> overall. I am directly using the UHD 3.15.0.0 C++ API
>
> The retune time is typically ~120 ms. My sample rate is 125 Msps. 
> Therefore, the time to receive samples is relatively small. For 
> example, receiving time for 32768 samples is ~1.3 ms. WIth one thread 
> and one channel, my overall tune and receive time for the 60 tunings 
> is ~7200 ms.
>
> I wanted to try to reduce the overall runtime by using two threads and 
> two channels. One thread would do half the tunings and the other 
> thread would do the other half at the same time.
>
> I see that I can make separate rx_streamers in separate threads, each 
> with its own channel to receive samples. I think 
> rx_streamers[chan].recv() should work for two threads. I'm not so 
> confident about 'usrp->set_rx_frequency()' for two threads.
>
> Is it possible to have two separate threads each tune to different 
> frequencies at the same time with the N310?
>
> Also: Is there a way to search the Archives to see if someone has 
> already asked this question. Google doesn't always seem to help.
>
> -
> Diftor heh smusma
> -Famous Vulcan Phrase ;)
>
Tuning time is an artifact of the hardware (AD9371 in this case)--which 
isn't really fast on re-tuning.  It has nothing to do with thread
   architecture/layout.

Further, channels 0 and 1 will always be tuned to the same RF frequency, 
due to the LO architecture of the AD9371, similarly 2 and 3 will
   always use the same LO frequency.


You can certainly spread sample-handling across multiple threads, and 
use the two available RF tunings (across the two RF chips) to speed
   things up a bit (cut the effective latency in half by interleaving).  
But you're not going to get more than a factor of two.



--------------010601070600040304020602
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/21/2021 02:56 PM, Glenn Hazelwood
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CABD0DOsMsDopeeSyOGkZmC2UuFgt=Abf3yO_fw2hXfva6V3hgA@mail.gmail.com"
      type="cite">
      <div dir="ltr">I have an N310 and I wish to scan from 10 MHz to
        5910 MHz with two channels. The frontend bandwidth is 100 MHz.
        So I do 60 tunings overall. I am directly using the UHD 3.15.0.0
        C++ API
        <div><br clear="all">
          <div>The retune time is typically ~120 ms. My sample rate is
            125 Msps. Therefore, the time to receive samples is
            relatively small. For example, receiving time for 32768
            samples is ~1.3 ms. WIth one thread and one channel, my
            overall tune and receive time for the 60 tunings is ~7200
            ms. </div>
          <div><br>
          </div>
          <div>I wanted to try to reduce the overall runtime by using
            two threads and two channels. One thread would do half the
            tunings and the other thread would do the other half at the
            same time. </div>
          <div><br>
          </div>
          <div>I see that I can make separate rx_streamers in separate
            threads, each with its own channel to receive samples. I
            think rx_streamers[chan].recv() should work for two threads.
            I'm not so confident about 'usrp-&gt;set_rx_frequency()' for
            two threads.</div>
          <div><br>
          </div>
          <div>Is it possible to have two separate threads each tune to
            different frequencies at the same time with the N310?</div>
          <div><br>
          </div>
          <div>Also: Is there a way to search the Archives to see if
            someone has already asked this question. Google doesn't
            always seem to help.<br>
          </div>
          <div><br>
          </div>
          <div>- </div>
          <div dir="ltr" class="gmail_signature"
            data-smartmail="gmail_signature">
            <div dir="ltr">
              <div>
                <div dir="ltr"><span
                    style="line-height:19.046875px;background-color:rgb(255,255,255)"><font
                      color="#000000" face="trebuchet ms, sans-serif">Diftor
                      heh smusma<br>
                    </font></span></div>
                <div><span
                    style="line-height:19.046875px;background-color:rgb(255,255,255)"><font
                      color="#000000" face="trebuchet ms, sans-serif">-Famous
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
    case)--which isn't really fast on re-tuning.  It has nothing to do
    with thread<br>
      architecture/layout.<br>
    <br>
    Further, channels 0 and 1 will always be tuned to the same RF
    frequency, due to the LO architecture of the AD9371, similarly 2 and
    3 will<br>
      always use the same LO frequency.<br>
    <br>
    <br>
    You can certainly spread sample-handling across multiple threads,
    and use the two available RF tunings (across the two RF chips) to
    speed<br>
      things up a bit (cut the effective latency in half by
    interleaving).  But you're not going to get more than a factor of
    two.<br>
    <br>
    <br>
  </body>
</html>

--------------010601070600040304020602--


--===============3582419480864211057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3582419480864211057==--

