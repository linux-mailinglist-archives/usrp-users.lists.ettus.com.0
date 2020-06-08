Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB9E1F20F3
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jun 2020 22:45:24 +0200 (CEST)
Received: from [::1] (port=49798 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jiOe1-0007io-KP; Mon, 08 Jun 2020 16:45:21 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:43418)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jiOdx-0007Sa-Av
 for usrp-users@lists.ettus.com; Mon, 08 Jun 2020 16:45:17 -0400
Received: by mail-qk1-f174.google.com with SMTP id v79so18671668qkb.10
 for <usrp-users@lists.ettus.com>; Mon, 08 Jun 2020 13:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=6TAaAb/t5S496jyWcyHkYH75DJa+g0qKqli6DcU2wQc=;
 b=W3gCOmiDpwXbOPnIBYeeQ9Qfw48lcgH3R2rUlkEcu5+Kkk9Rc9cyrMJNs6eri4SmKv
 puAoUxs1X120aytt3xE7lMjYCsL+m4ddUh8Q7mKSoGtWBsJgIbc92pLRPrY7Qlpkln7U
 gdx/ByjPP1RC/zfMwHmL/JQWPZeIc1m3EoesbTdCuG7BC+udqT3wYM5d8MIB6k2H4MWo
 eY5mulSnLMu0GPS5p61y0k+qsJZn9SmgaJDSehAKgJxcFq+SwVEg8O5Hrl0BdpLMwhLF
 w85e58gEHfIW07mkrRnPgeneQlIHmTDXuBT09HiXvt+fynTg7XjZp63seJ9b6jotambs
 0N4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=6TAaAb/t5S496jyWcyHkYH75DJa+g0qKqli6DcU2wQc=;
 b=BeRpBEYgnnL80sgLx/SMI5TJEKJAsJHBr+mFdzvB1sm4sShOEmylW9cztOUmGwqps7
 HzAr5UVSZu9JjaWYaNotVDVzQRYXVwt+sE1rwKmqxBar2GjTLGVOPiFgGxYilL1Tu3IZ
 XdKn+zvM2UW6C7mzmZrIqpbPAXAvzv9VqWuCkfUuHQXLXbn0SVBDseL8dp4oGHGBKDjV
 tVAuWiWVRCDWzX4Myn/UiPdqmMapU8UKrSbWWHaPVtAbwbS9hmak7FLodDnFrsMqETXx
 ORH0tAB8ZIjYkYHdGGqf/LKQhYfab0OZwRvOQuA/87F80buciBzsol9OxHkSTy8S8u0Y
 NV2Q==
X-Gm-Message-State: AOAM532m6J/O62KFAtXrlgvLDwsjWOn1igY3hIAlf2/Zvuh4KSSCNfie
 lD6detI201QFwhHT/gDj1cHvpytBni0=
X-Google-Smtp-Source: ABdhPJz2f5zpXjBSGRSIvzYlgMfAFD6KzeRHgeBXHrmxXHdWRH5wkYC6EoQGsReoGvWOh13MJwoxAA==
X-Received: by 2002:a05:620a:142a:: with SMTP id
 k10mr23823322qkj.182.1591649076601; 
 Mon, 08 Jun 2020 13:44:36 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id k7sm2288284qth.10.2020.06.08.13.44.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jun 2020 13:44:36 -0700 (PDT)
Message-ID: <5EDEA333.70303@gmail.com>
Date: Mon, 08 Jun 2020 16:44:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Sidd Subramanyam <siddsubra@gmail.com>
References: <5EDCA70B.1030809@gmail.com>
 <961567FA-9692-4C81-BC86-AC132BE4794E@gmail.com>
In-Reply-To: <961567FA-9692-4C81-BC86-AC132BE4794E@gmail.com>
Subject: Re: [USRP-users] Clock Bias from board mounted GPSDO
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============4772935013060938248=="
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
--===============4772935013060938248==
Content-Type: multipart/alternative;
 boundary="------------090909060005010209090505"

This is a multi-part message in MIME format.
--------------090909060005010209090505
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 06/08/2020 02:24 PM, Sidd Subramanyam wrote:
> I am cross-correlating post-facto via a MATLAB script. Could you 
> provide some Reading regarding the integer N tuning and how it’s used? 
> I added exactly your command and initially didn’t seem to have too 
> much of an effect. The logged start times do indeed line up exactly. I 
> am sampling at 4 MHz collecting 1 second of data so the listed output 
> is 4 million samples in sc16 format. That code snippet you mentioned 
> never triggers an overflow of dropped samples.
>
> -Sidd
One thing to note is that with any pair of GPS/GPSDO units, the 1PPS 
pulse will happen at slightly different times for each unit (The LC_XO
   unit used in the B210 is specced to +/-50NS).  This will inevitably 
result in a phase/time offset in the sample streams from each unit, which
   you will need to resolve.  However, once this offset is calculated, 
the streams SHOULD NOT drift with respect to one another.

Now, a "robustly coherent" receiver system will ALWAYS use a shared LO 
(best) or at least a shared 10MHz reference clock (2nd best). In your
   case, you're not sharing the 10Mhz reference, but using independent 
GPSDO units to provide a reference clock.  The effective mutual
   phase noise between the two will be non-zero, and have components at 
both low frequencies and high frequencies.

You might want to stick a dual-trace scope on the 10MHz outputs on your 
two units to see what the magnitude of the mutual phase-noise
   between the two units is.

The schematics are here:

https://files.ettus.com/schematics/b200/b210.pdf


>
>>
>> On Jun 7, 2020, at 4:36 AM, Marcus D. Leech <patchvonbraun@gmail.com> 
>> wrote:
>>
>> ﻿
>> On 06/06/2020 08:54 AM, Sidd Subramanyam wrote:
>>> Thank you for this clarification regarding the 10 MHz drift and the 
>>> 1 PPS pulse. When you mention that the 10 MHz outputs will not 
>>> precisely track each other in the short run but better in the long 
>>> run, could you provide an estimate for the duration at which the 
>>> behavior will track better? My previous email had stated how in a 1 
>>> second interval I was experiencing around a ~300 nanosecond drift. 
>>> However, in other samples I had taken spanning upto 30 seconds, this 
>>> drift seemed to worsen upto ~15-17 microseconds. From your email 
>>> regarding how much the 10 MHz deviates during the short run as well 
>>> as its long term behavior I’m very sure I must be doing something 
>>> wrong in my code setup.
>>>
>>> I have provided some code sections of how I am attempting to 
>>> synchronize the time. I start this script at roughly the same time 
>>> (within about a couple of seconds) on both USRPs, and they begin to 
>>> initialize settings such as bandwidth and center frequency. I then 
>>> have them wait to start collection at the nearest rounded up 10 
>>> second time multiple of GPS time in seconds, since the 
>>> initialization can take varying time for both USRPs to initialize. I 
>>> also attached the full code to this email.
>>>
>>>
>> I don't immediately see anything wrong with your code, but of course, 
>> this code is just recording samples, which you are presumably
>>   cross-correlating in an "offline" manner post-facto?
>>
>> Something you might try is to use integer-N tuning, which may result 
>> in a more mutually-coherent LO setting across your two
>>   synthesizers:
>>
>> tune_req.args = uhd::device_addr_t 
>> <https://files.ettus.com/manual/classuhd_1_1device__addr__t.html>("mode_n=integer");
>>
>> Also, you log the time when the recording is expected to take 
>> place--are these values actually the same in the two instances?
>>
>> What sample rate are you using?  How much data are you recording?
>>
>> Is this code ever triggered?
>>
>>         if (time_tmp > 0.000001)
>>         {
>>             std::cout << boost::format("XX %d Get Time of USRP %f\n") 
>> % f % num_dropped_samps;
>>         }


--------------090909060005010209090505
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/08/2020 02:24 PM, Sidd
      Subramanyam wrote:<br>
    </div>
    <blockquote
      cite="mid:961567FA-9692-4C81-BC86-AC132BE4794E@gmail.com"
      type="cite">
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <meta http-equiv="content-type" content="text/html;
          charset=utf-8">
        I am cross-correlating post-facto via a MATLAB script. Could you
        provide some Reading regarding the integer N tuning and how it’s
        used? I added exactly your command and initially didn’t seem to
        have too much of an effect. The logged start times do indeed
        line up exactly. I am sampling at 4 MHz collecting 1 second of
        data so the listed output is 4 million samples in sc16 format.
        That code snippet you mentioned never triggers an overflow of
        dropped samples.</div>
      <div dir="ltr"><br>
      </div>
      <div dir="ltr">-Sidd<br>
      </div>
    </blockquote>
    One thing to note is that with any pair of GPS/GPSDO units, the 1PPS
    pulse will happen at slightly different times for each unit (The
    LC_XO<br>
      unit used in the B210 is specced to +/-50NS).  This will
    inevitably result in a phase/time offset in the sample streams from
    each unit, which<br>
      you will need to resolve.  However, once this offset is
    calculated, the streams SHOULD NOT drift with respect to one
    another.<br>
    <br>
    Now, a "robustly coherent" receiver system will ALWAYS use a shared
    LO (best) or at least a shared 10MHz reference clock (2nd best). In
    your<br>
      case, you're not sharing the 10Mhz reference, but using
    independent GPSDO units to provide a reference clock.  The effective
    mutual<br>
      phase noise between the two will be non-zero, and have components
    at both low frequencies and high frequencies.<br>
    <br>
    You might want to stick a dual-trace scope on the 10MHz outputs on
    your two units to see what the magnitude of the mutual phase-noise<br>
      between the two units is.<br>
    <br>
    The schematics are here:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://files.ettus.com/schematics/b200/b210.pdf">https://files.ettus.com/schematics/b200/b210.pdf</a><br>
    <br>
    <br>
    <blockquote
      cite="mid:961567FA-9692-4C81-BC86-AC132BE4794E@gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div dir="ltr">
          <blockquote type="cite"><br>
            On Jun 7, 2020, at 4:36 AM, Marcus D. Leech
            <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote:<br>
            <br>
          </blockquote>
        </div>
        <blockquote type="cite">
          <div dir="ltr">﻿
            <meta content="text/html; charset=utf-8"
              http-equiv="Content-Type">
            <div class="moz-cite-prefix">On 06/06/2020 08:54 AM, Sidd
              Subramanyam wrote:<br>
            </div>
            <blockquote
cite="mid:CADVsdEFd1QJO4vC=fPR7cXJC-WERK8QTYS_1OMsjWAubxe7UNw@mail.gmail.com"
              type="cite">
              <div dir="ltr">
                <div dir="ltr">
                  <div style="font-family:Helvetica;font-size:12px"><font
                      color="#000000">Thank you for this clarification
                      regarding the 10 MHz drift and the 1 PPS pulse.
                      When you mention that the 10 MHz outputs will not
                      precisely track each other in the short run but
                      better in the long run, could you provide an
                      estimate for the duration at which the behavior
                      will track better? My previous email had stated
                      how in a 1 second interval I was experiencing
                      around a ~300 nanosecond drift. However, in other
                      samples I had taken spanning upto 30 seconds, this
                      drift seemed to worsen upto ~15-17 microseconds.
                      From your email regarding how much the 10 MHz
                      deviates during the short run as well as its long
                      term behavior I’m very sure I must be doing
                      something wrong in my code setup.</font></div>
                  <div style="font-family:Helvetica;font-size:12px"><font
                      color="#000000"><br>
                    </font></div>
                  <div style="font-family:Helvetica;font-size:12px"><font
                      color="#000000">I have provided some code sections
                      of how I am attempting to synchronize the time. I
                      start this script at roughly the same time (within
                      about a couple of seconds) on both USRPs, and they
                      begin to initialize settings such as bandwidth and
                      center frequency. I then have them wait to start
                      collection at the nearest rounded up 10 second
                      time multiple of GPS time in seconds, since the
                      initialization can take varying time for both
                      USRPs to initialize. I also attached the full code
                      to this email.</font></div>
                  <div style="font-family:Helvetica;font-size:12px"><font
                      color="#000000"><br>
                    </font></div>
                  <br>
                </div>
              </div>
            </blockquote>
            I don't immediately see anything wrong with your code, but
            of course, this code is just recording samples, which you
            are presumably<br>
              cross-correlating in an "offline" manner post-facto?<br>
            <br>
            Something you might try is to use integer-N tuning, which
            may result in a more mutually-coherent LO setting across
            your two<br>
              synthesizers:<br>
            <br>
            <font face="monospace">tune_req.args = <a
                moz-do-not-send="true" class="code"
                href="https://files.ettus.com/manual/classuhd_1_1device__addr__t.html">uhd::device_addr_t</a>(<span
                class="stringliteral">"mode_n=integer"</span>);</font><br>
            <br>
            Also, you log the time when the recording is expected to
            take place--are these values actually the same in the two
            instances?<br>
            <br>
            What sample rate are you using?  How much data are you
            recording?<br>
            <br>
            Is this code ever triggered?<br>
            <br>
            <font face="monospace">        if (time_tmp &gt; 0.000001)<br>
                      {<br>
                          std::cout &lt;&lt; boost::format("XX %d Get
              Time of USRP %f\n") % f % num_dropped_samps;<br>
                      }</font><br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------090909060005010209090505--


--===============4772935013060938248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4772935013060938248==--

