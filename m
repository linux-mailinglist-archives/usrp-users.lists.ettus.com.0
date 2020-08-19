Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 778AE24A380
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 17:48:16 +0200 (CEST)
Received: from [::1] (port=59492 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8QJw-00074U-MX; Wed, 19 Aug 2020 11:48:12 -0400
Received: from mail-qv1-f41.google.com ([209.85.219.41]:37119)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k8QJs-0006wz-Lz
 for usrp-users@lists.ettus.com; Wed, 19 Aug 2020 11:48:08 -0400
Received: by mail-qv1-f41.google.com with SMTP id y11so11471044qvl.4
 for <usrp-users@lists.ettus.com>; Wed, 19 Aug 2020 08:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=HFFIIwj8ld4KoQoG6/gyadQN/RdjeR+IVW438+zTL3g=;
 b=fsufZCnrf5Xw1yovZpuLx4NUdm72G2X0Bygtzl4em6d3EUVWhy1F8GI4pGeaoqX8ex
 qARKvjkhAleYVMriZupyl0Bm8rzwNZNf/KLN4g2PMdaMsGy5LxewaKB5/P+HJg8xMMyy
 WSujFHD6WBf7rwBptUuV8+kPMzmhaiatatjZD8C48IZPhKJNlP5+/SGIA1Ue1azPVm+A
 9pH+IDAAscdxqHW9FSQvf86USrGUTagVIQ4Omff1Kb8M40pfbPE8LAwuxIyROfUy6hvr
 Rv/YmwRwlxaXeQjptYMEATNDZSdU32uSbHYq9HWREDixbewaX3cdCw+hxObc1UI5Cmg2
 eX8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=HFFIIwj8ld4KoQoG6/gyadQN/RdjeR+IVW438+zTL3g=;
 b=W2Z38DBKqKg6IrInnmZF+FbfJIpJeGBwMaKNkxXy7M7AmsL6k1OdN+V5kX+eYKvF7j
 aWqMmaH32N2kSP60aJMP+Iukmb24tUbHtf9Skij9DIdjVqo9a4LrW9Kxfz5+biJS4fFm
 n+g5J4FTwDNXT3kLxPEN0Cr1QtcVhV5sJuxSs+zcvJpTXYbRmMpvL6YhXT4k3iK9JLQS
 RghfpCdg2AqXVPdwErfa04ap3kvc8CMS2056h7KA44FGib8shmszc+HooUDGW5EsEDKD
 os4Q4Zf9uag6lcZ36PduQtsQ01t1zpo4KeivA/HF+CuJerbms5wf3mvYyY6NgkLHc06x
 BMUw==
X-Gm-Message-State: AOAM531yZWlR98Y4/94q/yW8fbrW/4F2tQxbGXJl9TjZX4w1KCInJZ80
 xrhnphcQbcQ52B6lI3od+V93JHQGuksxq5TF
X-Google-Smtp-Source: ABdhPJywUsl3s2o+upeRCt23XEkIplLhKqjZeD7rzaet7eJQGmHTwDWx7mxfGD/BC0iqHEw6utlOGA==
X-Received: by 2002:ad4:4bc5:: with SMTP id l5mr23319569qvw.95.1597852047673; 
 Wed, 19 Aug 2020 08:47:27 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148]) by smtp.googlemail.com with ESMTPSA id
 h144sm24912404qke.83.2020.08.19.08.47.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Aug 2020 08:47:27 -0700 (PDT)
Message-ID: <5F3D498E.40303@gmail.com>
Date: Wed, 19 Aug 2020 11:47:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Ephraim Moges <emoges@uncc.edu>
CC: usrp-users@lists.ettus.com
References: <CANwgjNqWApsiG2Nmgxr3K_KBr-XPKXK2t9FgAqkPgidXV3MP0w@mail.gmail.com>
 <CANwgjNpE_4RyMsXqVx3ObWJEB2ysogRbNQrx3k-ZOKSgRW_E8g@mail.gmail.com>
 <5F3D4697.8070503@gmail.com>
 <CANwgjNqTaAV=Ts3jgEhv5asqReKVU-obj+ut=dqdbqFywyS8Ow@mail.gmail.com>
 <5F3D4822.5040703@gmail.com>
 <CANwgjNq2UPY--GC=QB5wtoouR4fCqNxfJc3Nus0z35291Kmw3A@mail.gmail.com>
In-Reply-To: <CANwgjNq2UPY--GC=QB5wtoouR4fCqNxfJc3Nus0z35291Kmw3A@mail.gmail.com>
Subject: Re: [USRP-users] Fwd: Benchmark_rate.py error
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
Content-Type: multipart/mixed; boundary="===============7713674541110600830=="
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
--===============7713674541110600830==
Content-Type: multipart/alternative;
 boundary="------------090002020808000202060206"

This is a multi-part message in MIME format.
--------------090002020808000202060206
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/19/2020 11:43 AM, Ephraim Moges wrote:
> I tried to install it on I ubuntu 20 or 18 but ran into many issues. I 
> can reinstall Ubuntu 20 but I'm not sure what steps you would 
> recommend to follow to allow for an easy installation.
https://files.ettus.com/manual/page_install.html#install_linux_pkgmgr

Refer to the "using your package manager" section.





>
> On Wed, Aug 19, 2020, 11:41 AM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 08/19/2020 11:36 AM, Ephraim Moges wrote:
>>     Ubuntu 16 and I used cmake instructions
>>
>>     https://files.ettus.com/manual/page_build_guide.html
>     OK, so when CMake ran, did it say that it was turning off various
>     features, due to missing dependencies.
>
>     Also, Ubuntu 16 is insanely, outrageously, out-of-date, and I'm
>     surprised that you could build current UHD AT ALL on it.
>
>     Please consider upgrading to a more-recent OS version.
>
>     In fact, on a newer Ubuntu (like the latest), you shouldn't need
>     to build UHD at all--it's already packaged and can be installed
>       using the package manager.
>
>
>>
>>     On Wed, Aug 19, 2020, 11:35 AM Marcus D. Leech via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     wrote:
>>
>>         On 08/19/2020 11:27 AM, Ephraim Moges via USRP-users wrote:
>>>         Good Morning,
>>>
>>>         I am having a problem running the python benchmark_rate.py.
>>>         The error message I am receiving is in the image attached
>>>         "the module uhd has no attribute 'usrp'". My installation
>>>         indicated everything was good when I ran a make test, so I
>>>         am not sure if I need to be in a specific folder so that it
>>>         can find the attribute or what.
>>>
>>>         Sincerely,
>>>
>>>         Moges
>>>
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list
>>>         USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>         What OS?   How exactly did you install UHD?
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>


--------------090002020808000202060206
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/19/2020 11:43 AM, Ephraim Moges
      wrote:<br>
    </div>
    <blockquote
cite="mid:CANwgjNq2UPY--GC=QB5wtoouR4fCqNxfJc3Nus0z35291Kmw3A@mail.gmail.com"
      type="cite">
      <div dir="auto">I tried to install it on I ubuntu 20 or 18 but ran
        into many issues. I can reinstall Ubuntu 20 but I'm not sure
        what steps you would recommend to follow to allow for an easy
        installation.</div>
    </blockquote>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_install.html#install_linux_pkgmgr">https://files.ettus.com/manual/page_install.html#install_linux_pkgmgr</a><br>
    <br>
    Refer to the "using your package manager" section.<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite="mid:CANwgjNq2UPY--GC=QB5wtoouR4fCqNxfJc3Nus0z35291Kmw3A@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Aug 19, 2020, 11:41 AM
          Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div bgcolor="#FFFFFF" text="#000000">
            <div>On 08/19/2020 11:36 AM, Ephraim Moges wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="auto">Ubuntu 16 and I used cmake instructions
                <div dir="auto"><br>
                </div>
                <div dir="auto"><a moz-do-not-send="true"
                    href="https://files.ettus.com/manual/page_build_guide.html"
                    target="_blank" rel="noreferrer">https://files.ettus.com/manual/page_build_guide.html</a><br>
                </div>
              </div>
            </blockquote>
            OK, so when CMake ran, did it say that it was turning off
            various features, due to missing dependencies.<br>
            <br>
            Also, Ubuntu 16 is insanely, outrageously, out-of-date, and
            I'm surprised that you could build current UHD AT ALL on it.<br>
            <br>
            Please consider upgrading to a more-recent OS version.<br>
            <br>
            In fact, on a newer Ubuntu (like the latest), you shouldn't
            need to build UHD at all--it's already packaged and can be
            installed<br>
              using the package manager.<br>
            <br>
            <br>
            <blockquote type="cite"><br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Wed, Aug 19, 2020,
                  11:35 AM Marcus D. Leech via USRP-users &lt;<a
                    moz-do-not-send="true"
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" rel="noreferrer">usrp-users@lists.ettus.com</a>&gt;

                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0 0 0
                  .8ex;border-left:1px #ccc solid;padding-left:1ex">
                  <div bgcolor="#FFFFFF" text="#000000">
                    <div>On 08/19/2020 11:27 AM, Ephraim Moges via
                      USRP-users wrote:<br>
                    </div>
                    <blockquote type="cite">
                      <div dir="auto">
                        <div class="gmail_quote" dir="auto">
                          <div dir="ltr" class="gmail_attr">Good
                            Morning,<br>
                          </div>
                          <div dir="auto">
                            <div dir="auto"><br>
                            </div>
                            <div dir="auto">I am having a problem
                              running the python benchmark_rate.py. The
                              error message I am receiving is in the
                              image attached "the module uhd has no
                              attribute 'usrp'". My installation
                              indicated everything was good when I ran a
                              make test, so I am not sure if I need to
                              be in a specific folder so that it can
                              find the attribute or what.<br>
                              <br>
                              <div data-smartmail="gmail_signature"
                                dir="auto">Sincerely,<br>
                                <br>
                              </div>
                              <div data-smartmail="gmail_signature"
                                dir="auto">Moges<br>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <br>
                      <fieldset></fieldset>
                      <br>
                      <pre>_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" href="mailto:USRP-users@lists.ettus.com" rel="noreferrer noreferrer" target="_blank">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" rel="noreferrer noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                    </blockquote>
                    What OS?   How exactly did you install UHD?  <br>
                    <br>
                    <br>
                  </div>
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

--------------090002020808000202060206--


--===============7713674541110600830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7713674541110600830==--

