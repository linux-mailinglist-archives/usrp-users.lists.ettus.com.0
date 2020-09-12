Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FAE267AF4
	for <lists+usrp-users@lfdr.de>; Sat, 12 Sep 2020 16:39:31 +0200 (CEST)
Received: from [::1] (port=36098 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kH6gb-0005Rq-6S; Sat, 12 Sep 2020 10:39:29 -0400
Received: from mail-wr1-f49.google.com ([209.85.221.49]:43112)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dasypuss@gmail.com>) id 1kH6gW-0005LG-Ix
 for usrp-users@lists.ettus.com; Sat, 12 Sep 2020 10:39:24 -0400
Received: by mail-wr1-f49.google.com with SMTP id k15so14169193wrn.10
 for <usrp-users@lists.ettus.com>; Sat, 12 Sep 2020 07:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=Wb+1SnKT+lcDXD2KekGfqoQpjqzoijEUC61sj7oiUwE=;
 b=qkP5gDx2YMuKmgXjEjcW7I6URnCB7GQA1rgyYwlaCo89PxMYbeXsMaD8ORYy0AgfZp
 SPBVYyH/faaeq9JKDv7Bc+pjeVRLhUwMH4HWp8J0AcYqi3B9uC6uhoQT5keOm1AkFp5k
 QUQzqAREIlcSHYh4Kky74vaiGRIs+v9YWnieIE/DhHiwVvDqDyy6PWsOyT1z2+1UfveC
 pymRcrmQ2OoeHGZtAoeuEqTjvnrXRniv755vW6BRQyWG3kGRWdIz9xqJ4cxeF7ZI2DZZ
 Ug10SFlUI1+LGbDquLqLjQqUyGVJxkqsyemn39zKVb1aU6nGV6JJ/8IcMe77C+9PqmO3
 h8KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=Wb+1SnKT+lcDXD2KekGfqoQpjqzoijEUC61sj7oiUwE=;
 b=OJKNLx/tfxBmhALG6MFKycQBdNNAGs1dulvvSmAoQ6libNm5Mc/zWxyxjWs1pLU3cg
 9Q0c7Lxx0FOiD5hNF8rS0miY+KqWa9M65EgbBHj/BVUSByqUmVBMxGjtVff9aypKFhK/
 5UR+tcqlgPihubulh9whIjLB5NzwRFc4LO6SY2juw47a0SwdykwA6R+uHVN5w3DlXcY1
 3CBGaEtdSnmd1MiyglOQwWci+pEvM+gEMdViviFCvTzUjQhb2MAbQzLiw2Sapgtq2Dkx
 uyaFO97TDDefpNEijRZ5KiY4ijCg3PH8VqFal45hE6ygiqYIjFWEvZtMZYWsIRTJWQBD
 SLRA==
X-Gm-Message-State: AOAM530vXrv/SRieRi2eRWh2sxF9O0DweOYOyWBgOFXycnDdDPj5Ur2f
 jEM659OnWSyB7/sRLqMvju583KtQDCE=
X-Google-Smtp-Source: ABdhPJzZsW9VChF7DOZ5Ea8uMMkTJXgrsHpsF7oFAPLY1NKcwMQTNtTwQGGM+JAt2crC7tkWOFJ1tg==
X-Received: by 2002:adf:e8c3:: with SMTP id k3mr7212045wrn.228.1599921523201; 
 Sat, 12 Sep 2020 07:38:43 -0700 (PDT)
Received: from ?IPv6:2a00:23c6:7081:1d01:a98a:55be:653e:2575?
 ([2a00:23c6:7081:1d01:a98a:55be:653e:2575])
 by smtp.gmail.com with ESMTPSA id m185sm10787835wmf.5.2020.09.12.07.38.42
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 12 Sep 2020 07:38:42 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <24fbcdd2-35fd-9d14-1c17-7a05d0d2a4e1@gmail.com>
 <95DB5B7C-BC71-4222-992C-41DBE2F7B0FA@gmail.com>
 <4545f155-bf08-13f8-b1f4-5a77e78fe6a2@comcast.net>
Message-ID: <aa42c2a9-dff6-e0fd-54b3-0926884e48e0@gmail.com>
Date: Sat, 12 Sep 2020 15:38:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4545f155-bf08-13f8-b1f4-5a77e78fe6a2@comcast.net>
Content-Language: en-GB
Subject: Re: [USRP-users] b200mini stops sampling
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
From: David Evans via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Evans <dasypuss@gmail.com>
Content-Type: multipart/mixed; boundary="===============7608143242200878451=="
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
--===============7608143242200878451==
Content-Type: multipart/alternative;
 boundary="------------6BF4F955F98B2E8B6D301C79"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------6BF4F955F98B2E8B6D301C79
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Thanks Ron,

However, I too think GIT is Arcane :-) ...

Doing that (git checkout v3.15.0.0 -b tmp) creates a new local err... 
branch, repo... called tmp.

How do I get the contents of the requested branch/tag up onto my machine?
It's not a branch, doing a git pull results in...
"
There is no tracking information for the current branch.
Please specify which branch you want to merge with.
See git-pull(1) for details.

     git pull <remote> <branch>

If you wish to set tracking information for this branch you can do so with:

     git branch --set-upstream-to=origin/<branch> tmp
"
Originally cloning the UHD repo results in one being on the Master 
branch, i.e.
  "git clone https://github.com/EttusResearch/uhd.git"
so how does one revert back to an earlier release please?

Hope you can help, sorry for my noob git knowledge!

Cheers,
Dave






On 12/09/2020 00:02, Ron Economos via USRP-users wrote:
>
> Yes, it's not a problem. If you don't want to see the message, use:
>
> git checkout v3.15.0.0 -b tmp
>
> Also, you should never use the master branch of UHD. It's really a 
> development branch and could be unstable. Always use a release tag.
>
> To see all the release tags:
>
> git tag
>
> Ron
>
> On 9/11/20 10:38, Marcus D Leech via USRP-users wrote:
>> That should be fine.
>>
>> GIT is arcane. Others have more facility with it than I.
>>
>> Sent from my iPhone
>>
>>> On Sep 11, 2020, at 12:07 PM, David Evans via USRP-users 
>>> <usrp-users@lists.ettus.com> wrote:
>>>
>>> ﻿ Thanks Marcus,
>>>
>>> Sorry,, I know this isn't the place, but when i check out a version 
>>> I get "detached head...".
>>> I also don't want to check anything back in, do I ignore this (I've 
>>> never understood what detached head means, even after looking it up!).
>>>
>>> Cheers,
>>> Dave
>>>
>>> On 10/09/2020 16:43, Marcus D. Leech via USRP-users wrote:
>>>> On 09/10/2020 08:55 AM, David Evans via USRP-users wrote:
>>>>> Hi,
>>>>> I have just installed the latest "master" branch of UHD (4.0.0.0).
>>>>>
>>>>> If an overrun occurs during sampling, sampling does not continue 
>>>>> thereafter.
>>>>> I noticed this with uhd_fft, which hangs with rates over 8MHz, and 
>>>>> also rx_samples_to_file:
>>>>>
>>>>> ./rx_samples_to_file --freq 900000000 --rate 40000000
>>>>>
>>>>> Creating the usrp device with: ...
>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
>>>>> UHD_4.0.0.0-34-g2655b0aa
>>>>> [INFO] [B200] Detected Device: B200mini
>>>>> [INFO] [B200] Operating over USB 3.
>>>>> [INFO] [B200] Initialize CODEC control...
>>>>> [INFO] [B200] Initialize Radio control...
>>>>> [INFO] [B200] Performing register loopback test...
>>>>> [INFO] [B200] Register loopback test passed
>>>>> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>>>>> [INFO] [B200] Asking for clock rate 16.000000 MHz...
>>>>> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>>>>> Using Device: Single USRP:
>>>>>   Device: B-Series Device
>>>>>   Mboard 0: B200mini
>>>>>   RX Channel: 0
>>>>>     RX DSP: 0
>>>>>     RX Dboard: A
>>>>>     RX Subdev: FE-RX1
>>>>>   TX Channel: 0
>>>>>     TX DSP: 0
>>>>>     TX Dboard: A
>>>>>     TX Subdev: FE-TX1
>>>>>
>>>>> Setting RX Rate: 40.000000 Msps...
>>>>> [INFO] [B200] Asking for clock rate 40.000000 MHz...
>>>>> [INFO] [B200] Actually got clock rate 40.000000 MHz.
>>>>> Actual RX Rate: 40.000000 Msps...
>>>>>
>>>>> Setting RX Freq: 900.000000 MHz...
>>>>> Setting RX LO Offset: 0.000000 MHz...
>>>>> Actual RX Freq: 900.000000 MHz...
>>>>>
>>>>> Waiting for "lo_locked": ++++++++++ locked.
>>>>>
>>>>> Press Ctrl + C to stop streaming...
>>>>> OGot an overflow indication. Please consider the following:
>>>>>   Your write medium must sustain a rate of 160.000000MB/s.
>>>>>   Dropped samples will not be written to the file.
>>>>>   Please modify this example for your purposes.
>>>>>   This message will not appear again.
>>>>> *Timeout while streaming*
>>>>>
>>>>> Done!
>>>>>
>>>>> Any ideas please?
>>>>> Should I be using the master branch, if not how do I checkout a 
>>>>> stable branch ?
>>>>>
>>>>> Thanks,
>>>>> Dave
>>>>>
>>>>
>>>> You can get a list of tagged versions using:
>>>>
>>>> git tag
>>>>
>>>> Try again with:
>>>>
>>>> git checkout   v3.15.0.0
>>>>
>>>> Sometimes when the overruns are persistent and at very high rates, 
>>>> the software is unable to recover, because so much information has been
>>>>   dropped, any recovery procedure would be roughly as drastic as 
>>>> having to re-start.
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------6BF4F955F98B2E8B6D301C79
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Thanks Ron,<br>
    <br>
    However, I too think GIT is Arcane :-) ...<br>
    <br>
    Doing that (git checkout v3.15.0.0 -b tmp) creates a new local
    err... branch, repo... called tmp.<br>
    <br>
    How do I get the contents of the requested branch/tag up onto my
    machine?<br>
    It's not a branch, doing a git pull results in...<br>
    "<br>
    There is no tracking information for the current branch.<br>
    Please specify which branch you want to merge with.<br>
    See git-pull(1) for details.<br>
    <br>
        git pull &lt;remote&gt; &lt;branch&gt;<br>
    <br>
    If you wish to set tracking information for this branch you can do
    so with:<br>
    <br>
        git branch --set-upstream-to=origin/&lt;branch&gt; tmp<br>
    "<br>
    Originally cloning the UHD repo results in one being on the Master
    branch, i.e.<br>
     "git clone <a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/uhd.git">https://github.com/EttusResearch/uhd.git</a>"<br>
    so how does one revert back to an earlier release please?<br>
    <br>
    Hope you can help, sorry for my noob git knowledge!<br>
    <br>
    Cheers,<br>
    Dave<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/09/2020 00:02, Ron Economos via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:4545f155-bf08-13f8-b1f4-5a77e78fe6a2@comcast.net">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p>Yes, it's not a problem. If you don't want to see the message,
        use:</p>
      <p>git checkout v3.15.0.0 -b tmp</p>
      <p>Also, you should never use the master branch of UHD. It's
        really a development branch and could be unstable. Always use a
        release tag.</p>
      <p>To see all the release tags:</p>
      <p>git tag<br>
      </p>
      <p>Ron<br>
      </p>
      <div class="moz-cite-prefix">On 9/11/20 10:38, Marcus D Leech via
        USRP-users wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:95DB5B7C-BC71-4222-992C-41DBE2F7B0FA@gmail.com">
        <meta http-equiv="content-type" content="text/html;
          charset=UTF-8">
        That should be fine. 
        <div><br>
        </div>
        <div>GIT is arcane. Others have more facility with it than I. <br>
          <br>
          <div dir="ltr">Sent from my iPhone</div>
          <div dir="ltr"><br>
            <blockquote type="cite">On Sep 11, 2020, at 12:07 PM, David
              Evans via USRP-users <a class="moz-txt-link-rfc2396E"
                href="mailto:usrp-users@lists.ettus.com"
                moz-do-not-send="true">&lt;usrp-users@lists.ettus.com&gt;</a>
              wrote:<br>
              <br>
            </blockquote>
          </div>
          <blockquote type="cite">
            <div dir="ltr">﻿
              <meta http-equiv="Content-Type" content="text/html;
                charset=UTF-8">
              Thanks Marcus,<br>
              <br>
              Sorry,, I know this isn't the place, but when i check out
              a version I get "detached head...".<br>
              I also don't want to check anything back in, do I ignore
              this (I've never understood what detached head means, even
              after looking it up!).<br>
              <br>
              Cheers,<br>
              Dave<br>
              <br>
              <div class="moz-cite-prefix">On 10/09/2020 16:43, Marcus
                D. Leech via USRP-users wrote:<br>
              </div>
              <blockquote type="cite"
                cite="mid:5F5A498A.8060202@gmail.com">
                <meta content="text/html; charset=UTF-8"
                  http-equiv="Content-Type">
                <div class="moz-cite-prefix">On 09/10/2020 08:55 AM,
                  David Evans via USRP-users wrote:<br>
                </div>
                <blockquote
                  cite="mid:d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com"
                  type="cite">
                  <meta http-equiv="content-type" content="text/html;
                    charset=UTF-8">
                  Hi,<br>
                  I have just installed the latest "master" branch of
                  UHD (4.0.0.0).<br>
                  <br>
                  If an overrun occurs during sampling, sampling does
                  not continue thereafter.<br>
                  I noticed this with uhd_fft, which hangs with rates
                  over 8MHz, and also rx_samples_to_file:<br>
                  <br>
                  ./rx_samples_to_file --freq 900000000 --rate 40000000<br>
                  <br>
                  Creating the usrp device with: ...<br>
                  [INFO] [UHD] linux; GNU C++ version 9.3.0;
                  Boost_107100; UHD_4.0.0.0-34-g2655b0aa<br>
                  [INFO] [B200] Detected Device: B200mini<br>
                  [INFO] [B200] Operating over USB 3.<br>
                  [INFO] [B200] Initialize CODEC control...<br>
                  [INFO] [B200] Initialize Radio control...<br>
                  [INFO] [B200] Performing register loopback test...<br>
                  [INFO] [B200] Register loopback test passed<br>
                  [INFO] [B200] Setting master clock rate selection to
                  'automatic'.<br>
                  [INFO] [B200] Asking for clock rate 16.000000 MHz...<br>
                  [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
                  Using Device: Single USRP:<br>
                    Device: B-Series Device<br>
                    Mboard 0: B200mini<br>
                    RX Channel: 0<br>
                      RX DSP: 0<br>
                      RX Dboard: A<br>
                      RX Subdev: FE-RX1<br>
                    TX Channel: 0<br>
                      TX DSP: 0<br>
                      TX Dboard: A<br>
                      TX Subdev: FE-TX1<br>
                  <br>
                  Setting RX Rate: 40.000000 Msps...<br>
                  [INFO] [B200] Asking for clock rate 40.000000 MHz...<br>
                  [INFO] [B200] Actually got clock rate 40.000000 MHz.<br>
                  Actual RX Rate: 40.000000 Msps...<br>
                  <br>
                  Setting RX Freq: 900.000000 MHz...<br>
                  Setting RX LO Offset: 0.000000 MHz...<br>
                  Actual RX Freq: 900.000000 MHz...<br>
                  <br>
                  Waiting for "lo_locked": ++++++++++ locked.<br>
                  <br>
                  Press Ctrl + C to stop streaming...<br>
                  OGot an overflow indication. Please consider the
                  following:<br>
                    Your write medium must sustain a rate of
                  160.000000MB/s.<br>
                    Dropped samples will not be written to the file.<br>
                    Please modify this example for your purposes.<br>
                    This message will not appear again.<br>
                  <b>Timeout while streaming</b><br>
                  <br>
                  Done!<br>
                  <br>
                  Any ideas please?  <br>
                  Should I be using the master branch, if not how do I
                  checkout a stable branch ?<br>
                  <br>
                  Thanks,<br>
                  Dave<br>
                  <br>
                </blockquote>
                <br>
                You can get a list of tagged versions using:<br>
                <br>
                git tag<br>
                <br>
                Try again with:<br>
                <br>
                git checkout   v3.15.0.0<br>
                <br>
                Sometimes when the overruns are persistent and at very
                high rates, the software is unable to recover, because
                so much information has been<br>
                  dropped, any recovery procedure would be roughly as
                drastic as having to re-start.<br>
                <br>
                <br>
                <br>
                <fieldset class="mimeAttachmentHeader"></fieldset>
                <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
              </blockquote>
              <br>
              <span>_______________________________________________</span><br>
              <span>USRP-users mailing list</span><br>
              <span><a class="moz-txt-link-abbreviated"
                  href="mailto:USRP-users@lists.ettus.com"
                  moz-do-not-send="true">USRP-users@lists.ettus.com</a></span><br>
              <span><a class="moz-txt-link-freetext"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                  moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
            </div>
          </blockquote>
        </div>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
      </blockquote>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------6BF4F955F98B2E8B6D301C79--


--===============7608143242200878451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7608143242200878451==--

