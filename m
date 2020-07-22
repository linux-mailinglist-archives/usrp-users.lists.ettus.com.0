Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9D322A0AD
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 22:20:50 +0200 (CEST)
Received: from [::1] (port=54316 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyLEO-00074k-M4; Wed, 22 Jul 2020 16:20:48 -0400
Received: from mail-qk1-f179.google.com ([209.85.222.179]:33368)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jyLEK-0006wn-Hq
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 16:20:44 -0400
Received: by mail-qk1-f179.google.com with SMTP id l23so3331459qkk.0
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 13:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=oH/8C7iIdqq5DbdGhKyarsGsSOF5fucGcQDPP6J017k=;
 b=OspY71WyQzzVZO7IznoA3Es4BdulhTnsiXBZBlq5uUd6frhP5HdSWP7k+SvCOof3VZ
 luEhH5e9LyEiWsDnieSgQ8uRZVoPrABc1D/ynixzCQfCg/DhFqwOS6rckDFhZuSCn+qH
 sKe6VMdb6J8jzljiuiOWqkBX7055WHfW0ZkRsDrV67WSak4DrvvUlkKaEK9CbO/2VrRC
 X5HqUoYiWQebZYnIEswNw360k6hUpwsYWhqzKJvMIa5298CjpdOjF9suydXDQdkZZM49
 kDj51PI/H4RozlGfMSRzO+9aSBTyQsfpRHdXwaTPfzVLByqQWEJh/AN/8bLfa1O0DuxF
 GX6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=oH/8C7iIdqq5DbdGhKyarsGsSOF5fucGcQDPP6J017k=;
 b=Ty4bQj8aNtgdrx8dphkIqr2ISgQcMJle9LB5r43DerZbtAQYY2x5TAttxOgGTpBzET
 tsmm2m8PJXfSLRBmrnAbjK2Bb9QqrnON5esO0OJuPpGa9nnRy+Arvmr5skUW2xZoCGM6
 TgRWx3tpbwPZL10heqZNBCDZlo4ZSzjPvNV7BVrYQ0YMBBvEyXV36TwrppretaWjIG7T
 O2m5a381SDoEq7Rm3INmZMsUgJXWJIlPAWKkwMlD0SzbNRa47yRZRvZSPQQpbOwish9y
 tOSb3es7Uv/31NHwUC8hKbyC5SSbqfgiwG1Z1mDxbETWSQU2XdpReppuYlY3Kv32V3pU
 meyQ==
X-Gm-Message-State: AOAM533z9ZY+5h/h5BNJ2JGc4XTFMHdr84wHaghHs4EIOP7Ne/DBbkCN
 2LYzOFz3+O1A8IitV2PEVMpilurwccI=
X-Google-Smtp-Source: ABdhPJyKVCLZVJM7Notxik3+x5MKNY8hQ17DJY+T1pxJAXQsWrC3+xd9TRTso03nunJ8pbsOPl75CA==
X-Received: by 2002:a37:afc2:: with SMTP id y185mr1797443qke.308.1595449203745; 
 Wed, 22 Jul 2020 13:20:03 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id t187sm715288qkf.73.2020.07.22.13.20.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jul 2020 13:20:03 -0700 (PDT)
Message-ID: <5F189F72.7060404@gmail.com>
Date: Wed, 22 Jul 2020 16:20:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Rob Kossler <rkossler@nd.edu>
References: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
 <5F187365.7030104@gmail.com>
 <CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com>
 <5F187873.2040206@gmail.com>
 <CA+w2ZytC0pPxp7GOCzE8m6m9FgUZLqDHwAgM1GzH8HLgV26O=A@mail.gmail.com>
 <5F187B7C.2090909@gmail.com>
 <CAB__hTS2cwTwXdQSMoaE=d_je4sXaEUvwzz=JH36oD0TDksS=w@mail.gmail.com>
In-Reply-To: <CAB__hTS2cwTwXdQSMoaE=d_je4sXaEUvwzz=JH36oD0TDksS=w@mail.gmail.com>
Subject: Re: [USRP-users] C++ thread Priority.
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8151163203237641370=="
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
--===============8151163203237641370==
Content-Type: multipart/alternative;
 boundary="------------080906060506070304010201"

This is a multi-part message in MIME format.
--------------080906060506070304010201
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/22/2020 03:18 PM, Rob Kossler wrote:
> If you are using X310 or N310, you might try DPDK. Even though it is a 
> pain, it would be a whole lot easier than trying a new OS, I believe.  
> Using DPDK enabled my application (which was storing Rx samples to 
> SSD) to run a bunch faster than without DPDK.
Thanks, Rob.  DPDK does facilitate lower-cost higher data transfer into 
the application.  That may, or may not, be the issue here.


>
> On Wed, Jul 22, 2020 at 1:47 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 07/22/2020 01:40 PM, David Carsenat wrote:
>>     It just put received samples in a circular buffer and  transmit
>>     this buffer. A delay line.
>>     But the SR is 50 Msps... 8 bits.
>>      Do you have ideas about OS ?
>>     Thanks.
>>
>     There are commercial real-time low-latency OS "out there" that
>     aren't free, and UHD has not been ported to them as far as I know.
>
>
>>     Le mer. 22 juil. 2020 à 19:33, Marcus D. Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> a écrit :
>>
>>         On 07/22/2020 01:22 PM, David Carsenat wrote:
>>>         Ok thanks. The code is really simple and i don't think it
>>>         can be optimized.
>>>         Is there other linux OS i can try ?
>>>         Thanks again.
>>>
>>         If it's really simple, what is the sample-rate?  Is it trying
>>         to write data to the filesystem at high rates?  No amount of
>>         code optimization can get
>>           around the fact that the disk subsystem is very slow
>>         compared to other parts of the computer, like memory, CPU, etc.
>>
>>
>>>         Le mer. 22 juil. 2020 à 19:12, Marcus D. Leech via
>>>         USRP-users <usrp-users@lists.ettus.com
>>>         <mailto:usrp-users@lists.ettus.com>> a écrit :
>>>
>>>             On 07/22/2020 12:56 PM, David Carsenat via USRP-users wrote:
>>>             > Hello, I have made a c++ code which sends samples in
>>>             the main function
>>>             > and receives samples in a thread launched in this main
>>>             function.
>>>             > I have read that we can set the real time priority
>>>             with the
>>>             > set_thread_priority function.
>>>             > I have tried to call this function (with parameters
>>>             (1,true) inside
>>>             > the main function but it doesn't seem to change the
>>>             priority of the
>>>             > executable. When I launch another application, I have
>>>             lots of U and O.
>>>             >
>>>             > Do you have an idea how to achieve what I want ? i.e.
>>>             allocate almost
>>>             > all computer resources to my uhd program ? What is the
>>>             best way ?
>>>             > I have already tuned my ubuntu with advice given on
>>>             Ettus site.(
>>>             > cpu-freq set etc...)
>>>             >
>>>             > Many thanks
>>>             >
>>>             > David
>>>             >
>>>             In general, applications have only very-rough control
>>>             over the behavior
>>>             of the scheduler.  This is true in most general-purpose
>>>             operating system
>>>                environments, whether it's Windows, Linux, *BSD,
>>>             MacOS, etc.
>>>
>>>             If you've played with priorities, and starting up other
>>>             programs causes
>>>             OU to happen, you should probably consider:
>>>
>>>             (A) Optimizing your code -- find out where the hot-spots
>>>             are, and see if
>>>             they can be improved
>>>             (B) Choosing a faster CPU
>>>
>>>             The CPU usage of a DSP flow is roughly proportional to:
>>>
>>>             inherent-per-sample-complexity X sample-rate
>>>
>>>             Can you lower the sample rate and still achieve what you
>>>             need to
>>>             achieve?  Can you improve the main-path per-sample
>>>             complexity?
>>>
>>>
>>>
>>>             _______________________________________________
>>>             USRP-users mailing list
>>>             USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------080906060506070304010201
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/22/2020 03:18 PM, Rob Kossler
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAB__hTS2cwTwXdQSMoaE=d_je4sXaEUvwzz=JH36oD0TDksS=w@mail.gmail.com"
      type="cite">
      <div dir="ltr">If you are using X310 or N310, you might try DPDK.
        Even though it is a pain, it would be a whole lot easier than
        trying a new OS, I believe.  Using DPDK enabled my application
        (which was storing Rx samples to SSD) to run a bunch faster than
        without DPDK.</div>
    </blockquote>
    Thanks, Rob.  DPDK does facilitate lower-cost higher data transfer
    into the application.  That may, or may not, be the issue here.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAB__hTS2cwTwXdQSMoaE=d_je4sXaEUvwzz=JH36oD0TDksS=w@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Jul 22, 2020 at 1:47
          PM Marcus D. Leech via USRP-users &lt;<a
            moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 07/22/2020 01:40 PM, David Carsenat wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="auto">It just put received samples in a circular
                buffer and  transmit this buffer. A delay line. 
                <div dir="auto">But the SR is 50 Msps... 8 bits.</div>
                <div dir="auto"> Do you have ideas about OS ?</div>
                <div dir="auto">Thanks.</div>
              </div>
              <br>
            </blockquote>
            There are commercial real-time low-latency OS "out there"
            that aren't free, and UHD has not been ported to them as far
            as I know.<br>
            <br>
            <br>
            <blockquote type="cite">
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">Le mer. 22 juil. 2020
                  à 19:33, Marcus D. Leech &lt;<a moz-do-not-send="true"
                    href="mailto:patchvonbraun@gmail.com"
                    target="_blank">patchvonbraun@gmail.com</a>&gt; a
                  écrit :<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div bgcolor="#FFFFFF">
                    <div>On 07/22/2020 01:22 PM, David Carsenat wrote:<br>
                    </div>
                    <blockquote type="cite">
                      <div dir="auto">Ok thanks. The code is really
                        simple and i don't think it can be optimized. 
                        <div dir="auto">Is there other linux OS i can
                          try ?</div>
                        <div dir="auto">Thanks again.</div>
                      </div>
                      <br>
                    </blockquote>
                    If it's really simple, what is the sample-rate?  Is
                    it trying to write data to the filesystem at high
                    rates?  No amount of code optimization can get<br>
                      around the fact that the disk subsystem is very
                    slow compared to other parts of the computer, like
                    memory, CPU, etc.<br>
                    <br>
                    <br>
                    <blockquote type="cite">
                      <div class="gmail_quote">
                        <div dir="ltr" class="gmail_attr">Le mer. 22
                          juil. 2020 à 19:12, Marcus D. Leech via
                          USRP-users &lt;<a moz-do-not-send="true"
                            href="mailto:usrp-users@lists.ettus.com"
                            rel="noreferrer" target="_blank">usrp-users@lists.ettus.com</a>&gt;


                          a écrit :<br>
                        </div>
                        <blockquote class="gmail_quote"
                          style="margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">On
                          07/22/2020 12:56 PM, David Carsenat via
                          USRP-users wrote:<br>
                          &gt; Hello, I have made a c++ code which sends
                          samples in the main function <br>
                          &gt; and receives samples in a thread launched
                          in this main function.<br>
                          &gt; I have read that we can set the real time
                          priority with the <br>
                          &gt; set_thread_priority function.<br>
                          &gt; I have tried to call this function (with
                          parameters (1,true) inside <br>
                          &gt; the main function but it doesn't seem to
                          change the priority of the <br>
                          &gt; executable. When I launch another
                          application, I have lots of U and O.<br>
                          &gt;<br>
                          &gt; Do you have an idea how to achieve what I
                          want ? i.e. allocate almost <br>
                          &gt; all computer resources to my uhd program
                          ? What is the best way ?<br>
                          &gt; I have already tuned my ubuntu with
                          advice given on Ettus site.( <br>
                          &gt; cpu-freq set etc...)<br>
                          &gt;<br>
                          &gt; Many thanks<br>
                          &gt;<br>
                          &gt; David<br>
                          &gt;<br>
                          In general, applications have only very-rough
                          control over the behavior <br>
                          of the scheduler.  This is true in most
                          general-purpose operating system<br>
                             environments, whether it's Windows, Linux,
                          *BSD, MacOS, etc.<br>
                          <br>
                          If you've played with priorities, and starting
                          up other programs causes <br>
                          OU to happen, you should probably consider:<br>
                          <br>
                          (A) Optimizing your code -- find out where the
                          hot-spots are, and see if <br>
                          they can be improved<br>
                          (B) Choosing a faster CPU<br>
                          <br>
                          The CPU usage of a DSP flow is roughly
                          proportional to:<br>
                          <br>
                          inherent-per-sample-complexity X sample-rate<br>
                          <br>
                          Can you lower the sample rate and still
                          achieve what you need to <br>
                          achieve?  Can you improve the main-path
                          per-sample complexity?<br>
                          <br>
                          <br>
                          <br>
_______________________________________________<br>
                          USRP-users mailing list<br>
                          <a moz-do-not-send="true"
                            href="mailto:USRP-users@lists.ettus.com"
                            rel="noreferrer noreferrer" target="_blank">USRP-users@lists.ettus.com</a><br>
                          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                            rel="noreferrer noreferrer noreferrer"
                            target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
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

--------------080906060506070304010201--


--===============8151163203237641370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8151163203237641370==--

