Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C46C229EB7
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 19:47:26 +0200 (CEST)
Received: from [::1] (port=53120 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyIpv-0001UR-8i; Wed, 22 Jul 2020 13:47:23 -0400
Received: from mail-qk1-f170.google.com ([209.85.222.170]:46901)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jyIpr-0001NW-Ap
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 13:47:19 -0400
Received: by mail-qk1-f170.google.com with SMTP id d14so2771627qke.13
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 10:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=NgOP9X7nXEs/SCwsbvGNorE1VM3GsJdr2gZjlhUwclk=;
 b=KZ2BLjWbjWTdQJAJbMUGJq20ShsktofjTNB1rPbCDjPRp8V7W5dbp+RGwK8+iAEhwZ
 dm0/xq0R5gqnRUi15Y5h/QqsszHsJzao6r7PcMBhciCcjAbHIJzq3GHDVZpQLoL0AiIr
 Jb/OQoR4M50DmAu5JHn126SHZKaiTK9v9fI3yGV3dqjUkOaDE5fKWupuFN61xxwIX2f+
 vv8oe/PF8pc6ZmiV2ISaxMmA44trldIhR/PUH5oJ+MOYxRgWNQH11ZM+79FvwodFCoyb
 T4SF3O8MigkuCflceUijekGhCsqfduFZa38vTnxmi4SqqFtp7Tfkml5UFD3EVKezLip3
 MGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=NgOP9X7nXEs/SCwsbvGNorE1VM3GsJdr2gZjlhUwclk=;
 b=V56jGoznlRK3lh6JMBXJUPSuJHLV72+c9aqhqt10UA2TIT9F/C+3AwizJg4yrFwMMn
 A0eP5MeVqbP6syW0TO3F8/FKXjEtUbOOC5X+yXbrEs0JxUZLBpK/VKE8Yn8Qmr395sC1
 9592bkch/314uLXtpvfzxwkO+N75GNXkVdEUtt8GrE+Vtvdy166fvgD2mN8TGfZj+koE
 ciKFIbObBkZH3gUFZ8SFnVcysbnBhoNHznlL2PiRxUGZda0JPQJ+/ahe/3y/vtjwX0gg
 Gmtw2W0k3+q7Lhr3UUOW4vjlWmGxSe0TSpJRnlVLNCFgWOKEzUnPxFFZ2lyO80jz0k2i
 I6gg==
X-Gm-Message-State: AOAM5306DFv+V5Jybl/35nds/JIFWiv+iUh3eGK2PzgNrNbP/m0AIK/7
 p6vl8K0j4iB9Mt1rnszCR2+FEiEZXG0=
X-Google-Smtp-Source: ABdhPJxeL7SqDITyk3M/y+9q1h2tYKVAKDbx8Deci0rqUc/2q7Y7phNcUZHH6EFpaH4gzTmv4UJEvA==
X-Received: by 2002:a37:a64a:: with SMTP id p71mr1226914qke.296.1595439998537; 
 Wed, 22 Jul 2020 10:46:38 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id x137sm440536qkb.47.2020.07.22.10.46.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jul 2020 10:46:37 -0700 (PDT)
Message-ID: <5F187B7C.2090909@gmail.com>
Date: Wed, 22 Jul 2020 13:46:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: David Carsenat <carsenat@gmail.com>
CC: usrp-users@lists.ettus.com
References: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
 <5F187365.7030104@gmail.com>
 <CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com>
 <5F187873.2040206@gmail.com>
 <CA+w2ZytC0pPxp7GOCzE8m6m9FgUZLqDHwAgM1GzH8HLgV26O=A@mail.gmail.com>
In-Reply-To: <CA+w2ZytC0pPxp7GOCzE8m6m9FgUZLqDHwAgM1GzH8HLgV26O=A@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4574180479539947443=="
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
--===============4574180479539947443==
Content-Type: multipart/alternative;
 boundary="------------050106090203090204020109"

This is a multi-part message in MIME format.
--------------050106090203090204020109
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/22/2020 01:40 PM, David Carsenat wrote:
> It just put received samples in a circular buffer and  transmit this 
> buffer. A delay line.
> But the SR is 50 Msps... 8 bits.
>  Do you have ideas about OS ?
> Thanks.
>
There are commercial real-time low-latency OS "out there" that aren't 
free, and UHD has not been ported to them as far as I know.


> Le mer. 22 juil. 2020 à 19:33, Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> a écrit :
>
>     On 07/22/2020 01:22 PM, David Carsenat wrote:
>>     Ok thanks. The code is really simple and i don't think it can be
>>     optimized.
>>     Is there other linux OS i can try ?
>>     Thanks again.
>>
>     If it's really simple, what is the sample-rate?  Is it trying to
>     write data to the filesystem at high rates?  No amount of code
>     optimization can get
>       around the fact that the disk subsystem is very slow compared to
>     other parts of the computer, like memory, CPU, etc.
>
>
>>     Le mer. 22 juil. 2020 à 19:12, Marcus D. Leech via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     a écrit :
>>
>>         On 07/22/2020 12:56 PM, David Carsenat via USRP-users wrote:
>>         > Hello, I have made a c++ code which sends samples in the
>>         main function
>>         > and receives samples in a thread launched in this main
>>         function.
>>         > I have read that we can set the real time priority with the
>>         > set_thread_priority function.
>>         > I have tried to call this function (with parameters
>>         (1,true) inside
>>         > the main function but it doesn't seem to change the
>>         priority of the
>>         > executable. When I launch another application, I have lots
>>         of U and O.
>>         >
>>         > Do you have an idea how to achieve what I want ? i.e.
>>         allocate almost
>>         > all computer resources to my uhd program ? What is the best
>>         way ?
>>         > I have already tuned my ubuntu with advice given on Ettus
>>         site.(
>>         > cpu-freq set etc...)
>>         >
>>         > Many thanks
>>         >
>>         > David
>>         >
>>         In general, applications have only very-rough control over
>>         the behavior
>>         of the scheduler.  This is true in most general-purpose
>>         operating system
>>            environments, whether it's Windows, Linux, *BSD, MacOS, etc.
>>
>>         If you've played with priorities, and starting up other
>>         programs causes
>>         OU to happen, you should probably consider:
>>
>>         (A) Optimizing your code -- find out where the hot-spots are,
>>         and see if
>>         they can be improved
>>         (B) Choosing a faster CPU
>>
>>         The CPU usage of a DSP flow is roughly proportional to:
>>
>>         inherent-per-sample-complexity X sample-rate
>>
>>         Can you lower the sample rate and still achieve what you need to
>>         achieve?  Can you improve the main-path per-sample complexity?
>>
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>


--------------050106090203090204020109
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/22/2020 01:40 PM, David Carsenat
      wrote:<br>
    </div>
    <blockquote
cite="mid:CA+w2ZytC0pPxp7GOCzE8m6m9FgUZLqDHwAgM1GzH8HLgV26O=A@mail.gmail.com"
      type="cite">
      <div dir="auto">It just put received samples in a circular buffer
        and  transmit this buffer. A delay line. 
        <div dir="auto">But the SR is 50 Msps... 8 bits.</div>
        <div dir="auto"> Do you have ideas about OS ?</div>
        <div dir="auto">Thanks.</div>
      </div>
      <br>
    </blockquote>
    There are commercial real-time low-latency OS "out there" that
    aren't free, and UHD has not been ported to them as far as I know.<br>
    <br>
    <br>
    <blockquote
cite="mid:CA+w2ZytC0pPxp7GOCzE8m6m9FgUZLqDHwAgM1GzH8HLgV26O=A@mail.gmail.com"
      type="cite">
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">Le mer. 22 juil. 2020 à 19:33,
          Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          a écrit :<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div bgcolor="#FFFFFF" text="#000000">
            <div>On 07/22/2020 01:22 PM, David Carsenat wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="auto">Ok thanks. The code is really simple and i
                don't think it can be optimized. 
                <div dir="auto">Is there other linux OS i can try ?</div>
                <div dir="auto">Thanks again.</div>
              </div>
              <br>
            </blockquote>
            If it's really simple, what is the sample-rate?  Is it
            trying to write data to the filesystem at high rates?  No
            amount of code optimization can get<br>
              around the fact that the disk subsystem is very slow
            compared to other parts of the computer, like memory, CPU,
            etc.<br>
            <br>
            <br>
            <blockquote type="cite">
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">Le mer. 22 juil. 2020
                  à 19:12, Marcus D. Leech via USRP-users &lt;<a
                    moz-do-not-send="true"
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" rel="noreferrer">usrp-users@lists.ettus.com</a>&gt;

                  a écrit :<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0 0 0
                  .8ex;border-left:1px #ccc solid;padding-left:1ex">On
                  07/22/2020 12:56 PM, David Carsenat via USRP-users
                  wrote:<br>
                  &gt; Hello, I have made a c++ code which sends samples
                  in the main function <br>
                  &gt; and receives samples in a thread launched in this
                  main function.<br>
                  &gt; I have read that we can set the real time
                  priority with the <br>
                  &gt; set_thread_priority function.<br>
                  &gt; I have tried to call this function (with
                  parameters (1,true) inside <br>
                  &gt; the main function but it doesn't seem to change
                  the priority of the <br>
                  &gt; executable. When I launch another application, I
                  have lots of U and O.<br>
                  &gt;<br>
                  &gt; Do you have an idea how to achieve what I want ?
                  i.e. allocate almost <br>
                  &gt; all computer resources to my uhd program ? What
                  is the best way ?<br>
                  &gt; I have already tuned my ubuntu with advice given
                  on Ettus site.( <br>
                  &gt; cpu-freq set etc...)<br>
                  &gt;<br>
                  &gt; Many thanks<br>
                  &gt;<br>
                  &gt; David<br>
                  &gt;<br>
                  In general, applications have only very-rough control
                  over the behavior <br>
                  of the scheduler.  This is true in most
                  general-purpose operating system<br>
                     environments, whether it's Windows, Linux, *BSD,
                  MacOS, etc.<br>
                  <br>
                  If you've played with priorities, and starting up
                  other programs causes <br>
                  OU to happen, you should probably consider:<br>
                  <br>
                  (A) Optimizing your code -- find out where the
                  hot-spots are, and see if <br>
                  they can be improved<br>
                  (B) Choosing a faster CPU<br>
                  <br>
                  The CPU usage of a DSP flow is roughly proportional
                  to:<br>
                  <br>
                  inherent-per-sample-complexity X sample-rate<br>
                  <br>
                  Can you lower the sample rate and still achieve what
                  you need to <br>
                  achieve?  Can you improve the main-path per-sample
                  complexity?<br>
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
  </body>
</html>

--------------050106090203090204020109--


--===============4574180479539947443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4574180479539947443==--

