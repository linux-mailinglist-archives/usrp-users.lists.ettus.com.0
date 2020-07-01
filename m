Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B26E02113AA
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jul 2020 21:38:20 +0200 (CEST)
Received: from [::1] (port=53256 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqiYk-0007aB-Bk; Wed, 01 Jul 2020 15:38:18 -0400
Received: from mail-qv1-f65.google.com ([209.85.219.65]:41846)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jqiYf-0007Tv-QN
 for usrp-users@lists.ettus.com; Wed, 01 Jul 2020 15:38:13 -0400
Received: by mail-qv1-f65.google.com with SMTP id t7so11553483qvl.8
 for <usrp-users@lists.ettus.com>; Wed, 01 Jul 2020 12:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Y+gh/7IMqM9zMGdTcHsT68/agr0lFbrpI0ODr9inTu0=;
 b=lGA2NoD0shGxwsxJwnU72je6LEdkDKgzVjEnQlMhTMp4RbinIzyENhemKXjbwXZ3ER
 geuLpTvG1K+El9zyUIqruIEE5PPB0oD7f2cVetVG/kN5F0oJQb/dgA/1bBQ7DgnxhCkR
 zanspLzrpxUPjnrvQkxFPTBwr1sIhStOMZ/IXytZxwPKmDQfAhBK5nVHqLBPPa1NvTX+
 T9FoYUDkals0IqIXlRTErrpeSU+ZI3nu2J7d7kwWOULmwQlTRt1Plhgtwt39bq9KjreQ
 hykRyRJXtBvwZadK9DxAGvx4KE3FAfe0dqqLFQn9IJ9FQ6B6m8b3Uj5otutgpyyrMtED
 Vwyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Y+gh/7IMqM9zMGdTcHsT68/agr0lFbrpI0ODr9inTu0=;
 b=aTG62fbBEFdBkbM7MLOeBj4OvopT9JzE+HQ2amZMXDlBSH0g5JOnOUq49pNq1X27M3
 WPKllWyUOXAB4VP0f+awB208V2Fs0MMJ6lAMILoqPmRRB275s0jaLJks2hgD1r3f5WDq
 8Xd04R9emMe4LUEU/3gBzbZXbYF2we0dHZVIAAUk58Al9zvyskcim3VGmH9juiIT+Rpo
 TTGNnu7DSDbAoVU68H6wvwG3dnXtjUtwl3r9RMHd0a/SQHH4ybkn11UYiWQQqs5xvcjm
 2Q5fjRjIJC8X7Og32XsFgya6ViPO1GvVNvBc+2CHbr0PBr7jfEGFYMxOh3ThgeOQScum
 chzg==
X-Gm-Message-State: AOAM532QSj2Cb+XKMUiRsiglFQaBY8OIR8ak65Lw7wHEGhnylHcleKJe
 HOUmyqfqnving7yhFIqnQ6VQ30rK
X-Google-Smtp-Source: ABdhPJylWATV1KMlJbEENydK6dVJ4CPiRswQ1nuNzigFi0yT/FZWzB94my2e6WxPYAo2Y3uS0yaMVA==
X-Received: by 2002:a0c:8cc8:: with SMTP id q8mr26391988qvb.36.1593632253042; 
 Wed, 01 Jul 2020 12:37:33 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id x14sm6226010qki.65.2020.07.01.12.37.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Jul 2020 12:37:32 -0700 (PDT)
Message-ID: <5EFCE5F3.4030904@gmail.com>
Date: Wed, 01 Jul 2020 15:37:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Nando Pellegrini <i1ndp.nando@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <dd50baf6-aabd-1ce3-1014-f8ae91e4c969@gmail.com>
 <5EFB5394.2070507@gmail.com> <5b3b4166-d933-a37a-6766-07fac0f8429e@gmail.com>
 <5EFB6064.6090005@gmail.com> <16be290f-cbed-0bdb-f8d6-dd14bb4a44f0@gmail.com>
 <5EFB8617.4020009@gmail.com> <55428037-b8f0-503d-8474-87b06969b044@gmail.com>
 <5EFCAB02.70706@gmail.com> <fecb5498-762f-ad09-0305-47034c0d4bd8@gmail.com>
In-Reply-To: <fecb5498-762f-ad09-0305-47034c0d4bd8@gmail.com>
Subject: Re: [USRP-users] Problems with "uhd::set_thread_priority_safe"
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
Content-Type: multipart/mixed; boundary="===============2290729670261068848=="
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
--===============2290729670261068848==
Content-Type: multipart/alternative;
 boundary="------------000502030104010000060807"

This is a multi-part message in MIME format.
--------------000502030104010000060807
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/01/2020 02:40 PM, Nando Pellegrini wrote:
> Marcus,
> sorry, i have to hold my horses.
> Let's forget all we said (or better i said) before , i have just done 
> some more deep testing and actually UHD and its priority function have 
> nothing to do with my problem.
> I had a suspect so made an application to write on a file the CPU 
> speed and the run the B200 streaming loop and then a presto folding cycle.
> What is happening is the cpu speed which drops suddenly to the minimum 
> (900Hz)  and sometimes starts again to increase while sometime does 
> not move anymore.
> I know that the cpu throttle is handled by Ubuntu and what came to my 
> mind is that my cpu is not covered bu the current version of ubuntu18 
> , if i start the B200 loop streaming at 40Mhz all goes ok with a CPU 
> load (shown on the system monitor) with no  threads over 10% so prone 
> to believe that there is still a big margin before saturating the cpu.
> What sounds strange to me, when everything works at 40Mhz , is looking 
> at  system monitor a see no more then 5 threads running, one as i said 
> at 10% while the others are very low but on the other side all the 8 
> cpus are running at frequencies higher than 3Ghz in average monitored 
> by running watch grep \"cpu MHz\" /proc/cpuinfo.
> Together with the frequency i have been monitoring also the cpu 
> temperatures never going over 50° with fans at minimum speed.
> What seems to me is that there is a sort of trigger above which the 
> activity is stopped and never recovered but far from the physical limits.
> The cpu on the laptop is an Intel 10th generation i7-10875H
> On W10 installed on the same PC with a dual boot and loading the cpu 
> with a benchmark application and 16 threads running i can, see without 
> time limitation, a continuous load close to 100% without overheating.
> At this point i will be happy if the problem is the cpu not covered by 
> ubuntu so i'll stay at 40Mhz waiting for the right version.
> Apologies for what i said but was really not easy to think of such a 
> problem. I tried to read the system log file but have no idea of what 
> and where to look i could only see that the 8 cpus were correctly 
> detected during the boot.
> One point of mine was still true, during my very first test of B200 on 
> the new PC and before the latest Ubuntu updates i tried to run it to 
> check if was affordable and since was able to run at 56Mhz and low cpu 
> load for minutes (i cannot remember how many) i was very confident of 
> the result, not it crashes in seconds.
> At this point any hints would be greatly appreciated.
> nando
>
What version of Ubuntu were you running on the new PC before upgrading 
to 18.04?   The libusb and kernel USB drivers have probably changed
   since pre-18.04.  Not sure.



--------------000502030104010000060807
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/01/2020 02:40 PM, Nando
      Pellegrini wrote:<br>
    </div>
    <blockquote
      cite="mid:fecb5498-762f-ad09-0305-47034c0d4bd8@gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      Marcus,<br>
      sorry, i have to hold my horses.<br>
      Let's forget all we said (or better i said) before , i have just
      done some more deep testing and actually UHD and its priority
      function have nothing to do with my problem.<br>
      I had a suspect so made an application to write on a file the CPU
      speed and the run the B200 streaming loop and then a presto
      folding cycle.<br>
      What is happening is the cpu speed which drops suddenly to the
      minimum (900Hz)  and sometimes starts again to increase while
      sometime does not move anymore.<br>
      I know that the cpu throttle is handled by Ubuntu and what came to
      my mind is that my cpu is not covered bu the current version of
      ubuntu18 , if i start the B200 loop streaming at 40Mhz all goes ok
      with a CPU load (shown on the system monitor) with no  threads
      over 10% so prone to believe that there is still a big margin
      before saturating the cpu.<br>
      What sounds strange to me, when everything works at 40Mhz , is
      looking at  system monitor a see no more then 5 threads running,
      one as i said at 10% while the others are very low but on the
      other side all the 8 cpus are running at frequencies higher than
      3Ghz in average monitored by running watch grep \"cpu MHz\"
      /proc/cpuinfo.<br>
      Together with the frequency i have been monitoring also the cpu
      temperatures never going over 50° with fans at minimum speed.  <br>
      What seems to me is that there is a sort of trigger above which
      the activity is stopped and never recovered but far from the
      physical limits.<br>
      The cpu on the laptop is an Intel 10th generation i7-10875H <br>
      On W10 installed on the same PC with a dual boot and loading the
      cpu with a benchmark application and 16 threads running i can, see
      without time limitation, a continuous load close to 100% without
      overheating.<br>
      At this point i will be happy if the problem is the cpu not
      covered by ubuntu so i'll stay at 40Mhz waiting for the right
      version. <br>
      Apologies for what i said but was really not easy to think of such
      a problem. I tried to read the system log file but have no idea of
      what and where to look i could only see that the 8 cpus were
      correctly detected during the boot.<br>
      One point of mine was still true, during my very first test of
      B200 on the new PC and before the latest Ubuntu updates i tried to
      run it to check if was affordable and since was able to run at
      56Mhz and low cpu load for minutes (i cannot remember how many) i
      was very confident of the result, not it crashes in seconds.<br>
      At this point any hints would be greatly appreciated.<br>
      nando<br>
        <br>
    </blockquote>
    What version of Ubuntu were you running on the new PC before
    upgrading to 18.04?   The libusb and kernel USB drivers have
    probably changed<br>
      since pre-18.04.  Not sure.<br>
    <br>
    <br>
  </body>
</html>

--------------000502030104010000060807--


--===============2290729670261068848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2290729670261068848==--

