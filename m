Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F291F20BC
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jun 2020 22:35:04 +0200 (CEST)
Received: from [::1] (port=43462 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jiOU2-0005tF-BM; Mon, 08 Jun 2020 16:35:02 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:37146)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jiOTx-0005nx-JO
 for usrp-users@lists.ettus.com; Mon, 08 Jun 2020 16:34:57 -0400
Received: by mail-qt1-f170.google.com with SMTP id d27so15858279qtg.4
 for <usrp-users@lists.ettus.com>; Mon, 08 Jun 2020 13:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=vS0muD+B3kDaoaEdJYN2mU4e0SN9W8p3dREe2Beb6c4=;
 b=k/c/vLA7Noh/qW9ORf7FONyj6ulSxYzUZTOIkegZY9M+VC9hYdbLCMusQ9HAWPzcXx
 0g/OztWneLnjP2KE8lsiiBCuldJ7hKOYR7I+ZEyP95Tluj5mjPyzYiVV3mNaxU/NMbdT
 CTH2dpNfBp0QLa3XXAZjPxwuJ37u7x1TM0+JkrDuS8H7tTLrk37ZMEqSs/BP3ap/zu0u
 85IlBypCqENsaea691ymZCqv8EEl/NMkOAKhpsQBxnapF/pwZfir192sY9j8ge+WjLf0
 aPnxzXGi6rviJTGSA9QAALYEXvl92G455+LTRal4ai6IJ0+4XGnagVYv2zwwadEIu64H
 xriw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=vS0muD+B3kDaoaEdJYN2mU4e0SN9W8p3dREe2Beb6c4=;
 b=RyOYwIBiKPPnS/ykMAO2zEVvQOKjR+8eBTPSsWLKBBqOVJtgEOgdTKhQrS12f70uPD
 mrgxNGuAav1zLBy0KCKIsCsXEzsemkQYMFebIKvsSj3tEqd+qBeB/Y4UMdrWWn862Amz
 wVQgJQyQwh9SWTR9XW4ZSZIegTe5x4CAwCrR7T++AccklK6+Xp3kHg7TtL6cGtAgdtqu
 dGXIcU4VMW0E1u4bRs1k7/Kli6Nhom+jUgDN7iq/7jz2xdJu0awcy5VFOb6yIeNAbJYC
 Nx0VeeKNjSdKCZyvwojZFV7dISXgDqGLSGFmACvPx1pr83wDK4mYlAwZDQjQRKMUjDwK
 6kZw==
X-Gm-Message-State: AOAM531EBmAaVYml7GMtyxIV+8hd9F0SG29VGvKtmGomfVIsB6jRNDEb
 sCldZSfZa0sDanc2k/MVaZk7Db/FiQo=
X-Google-Smtp-Source: ABdhPJwAcfhwI/gHJti3YYVWNvdfO4AP+o1FBpLAckQhWElTUiZUpG2pjt5Wv6Mj63XNNrmaFzKXhg==
X-Received: by 2002:ac8:4c8d:: with SMTP id j13mr25957411qtv.38.1591648456884; 
 Mon, 08 Jun 2020 13:34:16 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id v189sm7902798qkb.64.2020.06.08.13.34.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jun 2020 13:34:16 -0700 (PDT)
Message-ID: <5EDEA0C6.2060900@gmail.com>
Date: Mon, 08 Jun 2020 16:34:14 -0400
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
Content-Type: multipart/mixed; boundary="===============6739922341888535342=="
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
--===============6739922341888535342==
Content-Type: multipart/alternative;
 boundary="------------050200010308080004060207"

This is a multi-part message in MIME format.
--------------050200010308080004060207
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
Here is the documentation of the API related to tune requests:

https://files.ettus.com/manual/structuhd_1_1tune__request__t.html


In terms of what it *MEANS*, however, has to do with the way RF 
synthesizers work.   There are a wide variety of articles "out there" on
   both integer-N and fractional-N synthesis:

https://www.analog.com/en/analog-dialogue/articles/pll-synthesizers.html#

https://www.electronics-notes.com/articles/radio/frequency-synthesizer/pll-indirect-digital-fractional-n-synthesis.php

http://www.ti.com/lit/an/swra029/swra029.pdf?ts=1591648395602&ref_url=https://www.google.com



--------------050200010308080004060207
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
        <br>
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
    Here is the documentation of the API related to tune requests:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/structuhd_1_1tune__request__t.html">https://files.ettus.com/manual/structuhd_1_1tune__request__t.html</a><br>
    <br>
    <br>
    In terms of what it *MEANS*, however, has to do with the way RF
    synthesizers work.   There are a wide variety of articles "out
    there" on<br>
      both integer-N and fractional-N synthesis:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://www.analog.com/en/analog-dialogue/articles/pll-synthesizers.html#">https://www.analog.com/en/analog-dialogue/articles/pll-synthesizers.html#</a><br>
    <br>
<a class="moz-txt-link-freetext" href="https://www.electronics-notes.com/articles/radio/frequency-synthesizer/pll-indirect-digital-fractional-n-synthesis.php">https://www.electronics-notes.com/articles/radio/frequency-synthesizer/pll-indirect-digital-fractional-n-synthesis.php</a><br>
    <br>
<a class="moz-txt-link-freetext" href="http://www.ti.com/lit/an/swra029/swra029.pdf?ts=1591648395602&amp;ref_url=https://www.google.com">http://www.ti.com/lit/an/swra029/swra029.pdf?ts=1591648395602&amp;ref_url=https://www.google.com</a><br>
    <br>
    <br>
  </body>
</html>

--------------050200010308080004060207--


--===============6739922341888535342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6739922341888535342==--

