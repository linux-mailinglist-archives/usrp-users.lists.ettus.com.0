Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71690319314
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 20:28:35 +0100 (CET)
Received: from [::1] (port=59110 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAHde-0001iH-J7; Thu, 11 Feb 2021 14:28:30 -0500
Received: from mail-qt1-f179.google.com ([209.85.160.179]:36945)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lAHdb-0001Uv-5n
 for USRP-users@lists.ettus.com; Thu, 11 Feb 2021 14:28:27 -0500
Received: by mail-qt1-f179.google.com with SMTP id v3so5023423qtw.4
 for <USRP-users@lists.ettus.com>; Thu, 11 Feb 2021 11:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=GakbO3+shvIsmyKv1QWTvxb5ph/pubFv8VPDFRE1IAI=;
 b=VCiCPe/7y3pcUJHDuyQbBUlPW3cxj4n0gVb2TN4LxI2wFklJHF8UmyoepJRbBqR9Mb
 4SCszSv7YRXJDxwSku8xYMivXLOHd5fcAmybkhu+1DBXSpcsb3oKH7od3Vw7Ge9/bn6s
 TqPSUeOu9AGsPb545f2Lxn5yaVRcw7zD5gq/A2e3eVFHMe+HEmw7ZpAwSrJ8WYwQCD+j
 XC925QzVAnsdmwWeFgxD5W4JBLRaxuAp8ucVLg/QUyq/qjkOBlpFUDmXZ3NA5Lj6UNOg
 bkr9clghXVowmCqSyGxnKwZQ+9xz/U3TQwAVtHBaJocMbRpN6LTdGxvwkhNIA4QHqbKI
 V4SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=GakbO3+shvIsmyKv1QWTvxb5ph/pubFv8VPDFRE1IAI=;
 b=Wi1O8tC8jq0YjFiJYIoiPft3Ld5C9JeCIm04wgYK9ityudeKsAym4CDOQrnHpcEtep
 to6gwRuADremqkpSlGk/a0hkbq1qCJA55tDKXS3eCZktxFXTbCbN2bVC5O/kC2uXlimC
 Nq4lLnFCxmab0mG2+BztquU7ewTXF+362edf4RcnWFGg8j5tU/ujHlcWpYcYbneWnRgy
 8jhZlNOiLXEdGyGCjH1U/NanTacWx6OGrF/KiyqGVWDQTXpVmtG4xJb9zZoR10QYSpS1
 SbdqGiAP8OTQcGslXElmy77bvvB+TwQchEZ+Pz9nhG5BVYaEuU0G5bTi+Jib5UlHoTOo
 TxjA==
X-Gm-Message-State: AOAM533ZFCmxJ6G/5jU86BbePh5A5o8RDXrTtxvvMb4GGEGHG1Ws+mbz
 ONubDVJbhJoLBTqllWAHc+tQmLZpmZE=
X-Google-Smtp-Source: ABdhPJzHRfcEDLvUMC/xM6nT8VLUtUr0fjr7YfEpcJB9iQYqfFV5zJTXYCnHSCx9gJTQ8fb7oUlIJA==
X-Received: by 2002:ac8:1208:: with SMTP id x8mr4777532qti.14.1613071666427;
 Thu, 11 Feb 2021 11:27:46 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id f14sm4528810qkl.76.2021.02.11.11.27.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Feb 2021 11:27:46 -0800 (PST)
Message-ID: <60258531.5020405@gmail.com>
Date: Thu, 11 Feb 2021 14:27:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Casey Wolsieffer <cwolsief@gmail.com>
CC: USRP-users@lists.ettus.com
References: <CAM06ataJCyM_x3o24-H59EXnB9go=LuxFuEyUiWZebP8ktGShQ@mail.gmail.com>
 <CA5120D6-2F5E-4CCD-8390-728A2810CA11@gmail.com>
 <CAM06atZG1mrZyx+4qFLyvjCi0BmN8PhxDgX1WN72=cUrzeJ2vA@mail.gmail.com>
 <CAM06atZ59QrYg+uW_gUuNRHrqr+c4vuF_0WbTTzR9kcLEU9tVA@mail.gmail.com>
 <CAM06atajjWy7y0tXX+Dh6S1q5vMb0A1AiWdxFpK4Vhfyqu+0kA@mail.gmail.com>
In-Reply-To: <CAM06atajjWy7y0tXX+Dh6S1q5vMb0A1AiWdxFpK4Vhfyqu+0kA@mail.gmail.com>
Subject: Re: [USRP-users] Python API install help - Ubuntu 20.04
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
Content-Type: multipart/mixed; boundary="===============3849368425230027427=="
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
--===============3849368425230027427==
Content-Type: multipart/alternative;
 boundary="------------000704020204080104030208"

This is a multi-part message in MIME format.
--------------000704020204080104030208
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/11/2021 09:53 AM, Casey Wolsieffer wrote:
> Actually i got it, for my case it was in
>
> export PYTHONPATH="/usr/local/lib/python3/dist-packages/"
>
> Semi-new to this so still figuring out some of the stuff that is 
> probably obvious. Will throw this line in ~/.bash_profile
>
> Thank you!
Some Linux distributions put locally-installed Python packages in 
"dist-packages" and some in "site-packages".  I simply mention
   all potential places in my PYTHONPATH, and then don't have to worry 
about it--except when some distro decides to be even more
   creative about where such packages are installed...


>
> On Thu, Feb 11, 2021, 9:46 AM Casey Wolsieffer <cwolsief@gmail.com 
> <mailto:cwolsief@gmail.com>> wrote:
>
>     I tried your suggestion as well Rob to no avail. Also, thank you
>     both for your responses
>
>     On Thu, Feb 11, 2021, 9:44 AM Casey Wolsieffer <cwolsief@gmail.com
>     <mailto:cwolsief@gmail.com>> wrote:
>
>         I did sudo make install yes,
>
>
>         I'm assuming you mean /usr/local, I tried that in .conf file
>         but that doesn't seem to work either
>
>
>         On Thu, Feb 11, 2021, 8:57 AM Marcus D Leech
>         <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>             Your install prefix is /use/local
>
>             Did you sudo make install?
>
>
>
>             Sent from my iPhone
>
>             > On Feb 11, 2021, at 8:30 AM, Casey Wolsieffer via
>             USRP-users <usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com>> wrote:
>             >
>             > ﻿
>             > Hello, I have tried several times to install Python3 uhd
>             on my system but when I attempt >>>import uhd in python3
>             environment I always receive ModuleNotFoundError: no
>             module named 'uhd'
>             >
>             > As far as I can see there are no hang ups on install and
>             after $make, I run $make test and get 0 out of 82 fails.
>             Below is my enabled components after I run
>             >
>             > $cmake ../
>             >
>             > I've also put a uhd.conf file in my ld.so.conf file and
>             ran $sudo ldconfig. Although I'm not certain I'm putting
>             in correct path, right now it's
>             [my_directory]/uhd/host/build/lib/
>             >
>             > I'm on Ubuntu 20.04, any help is greatly appreciated!
>             >
>             > -- ######################################################
>             > -- # UHD enabled components
>             > -- ######################################################
>             > --   * LibUHD
>             > --   * LibUHD - C API
>             > --   * LibUHD - Python API
>             > --   * Examples
>             > --   * Utils
>             > --   * Tests
>             > --   * USB
>             > --   * B100
>             > --   * B200
>             > --   * USRP1
>             > --   * USRP2
>             > --   * X300
>             > --   * MPMD
>             > --   * SIM
>             > --   * N300
>             > --   * N320
>             > --   * E320
>             > --   * E300
>             > --   * OctoClock
>             > --   * Manual
>             > --   * API/Doxygen
>             > --   * Man Pages
>             > --
>             > -- ######################################################
>             > -- # UHD disabled components
>             > -- ######################################################
>             > --   * DPDK
>             > --
>             > -- ******************************************************
>             > -- * You are building the UHD development master branch.
>             > -- * For production code, we recommend our stable,
>             > -- * releases or using the release branch (maint).
>             > -- ******************************************************
>             > -- Building version: 4.0.0.0-93-g3b9ced8f
>             > -- Using install prefix: /usr/local
>             > -- Configuring done
>             > -- Generating done
>             > -- Build files have been written to:
>             /home/casey/Projects/UHD/uhd/host/build
>             >
>             >
>             > _______________________________________________
>             > USRP-users mailing list
>             > USRP-users@lists.ettus.com
>             <mailto:USRP-users@lists.ettus.com>
>             >
>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------000704020204080104030208
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/11/2021 09:53 AM, Casey
      Wolsieffer wrote:<br>
    </div>
    <blockquote
cite="mid:CAM06atajjWy7y0tXX+Dh6S1q5vMb0A1AiWdxFpK4Vhfyqu+0kA@mail.gmail.com"
      type="cite">
      <div dir="auto">Actually i got it, for my case it was in
        <div dir="auto"><br>
        </div>
        <div dir="auto">export
          PYTHONPATH="/usr/local/lib/python3/dist-packages/"</div>
        <div dir="auto"><br>
        </div>
        <div dir="auto">Semi-new to this so still figuring out some of
          the stuff that is probably obvious. Will throw this line in
          ~/.bash_profile</div>
        <div dir="auto"><br>
        </div>
        <div dir="auto">Thank you!</div>
      </div>
    </blockquote>
    Some Linux distributions put locally-installed Python packages in
    "dist-packages" and some in "site-packages".  I simply mention<br>
      all potential places in my PYTHONPATH, and then don't have to
    worry about it--except when some distro decides to be even more<br>
      creative about where such packages are installed...<br>
    <br>
    <br>
    <blockquote
cite="mid:CAM06atajjWy7y0tXX+Dh6S1q5vMb0A1AiWdxFpK4Vhfyqu+0kA@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Feb 11, 2021, 9:46 AM
          Casey Wolsieffer &lt;<a moz-do-not-send="true"
            href="mailto:cwolsief@gmail.com">cwolsief@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div dir="auto">I tried your suggestion as well Rob to no
            avail. Also, thank you both for your responses</div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Thu, Feb 11, 2021, 9:44
              AM Casey Wolsieffer &lt;<a moz-do-not-send="true"
                href="mailto:cwolsief@gmail.com" target="_blank"
                rel="noreferrer">cwolsief@gmail.com</a>&gt; wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div dir="auto">I did sudo make install yes,
                <div dir="auto"><br>
                </div>
                <div dir="auto"><br>
                </div>
                <div dir="auto">I'm assuming you mean /usr/local, I
                  tried that in .conf file but that doesn't seem to work
                  either</div>
                <br>
                <br>
                <div class="gmail_quote" dir="auto">
                  <div dir="ltr" class="gmail_attr">On Thu, Feb 11,
                    2021, 8:57 AM Marcus D Leech &lt;<a
                      moz-do-not-send="true"
                      href="mailto:patchvonbraun@gmail.com"
                      rel="noreferrer noreferrer" target="_blank">patchvonbraun@gmail.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class="gmail_quote" style="margin:0 0 0
                    .8ex;border-left:1px #ccc solid;padding-left:1ex">Your
                    install prefix is /use/local<br>
                    <br>
                    Did you sudo make install?<br>
                    <br>
                    <br>
                    <br>
                    Sent from my iPhone<br>
                    <br>
                    &gt; On Feb 11, 2021, at 8:30 AM, Casey Wolsieffer
                    via USRP-users &lt;<a moz-do-not-send="true"
                      href="mailto:usrp-users@lists.ettus.com"
                      rel="noreferrer noreferrer noreferrer"
                      target="_blank">usrp-users@lists.ettus.com</a>&gt;
                    wrote:<br>
                    &gt; <br>
                    &gt; ﻿<br>
                    &gt; Hello, I have tried several times to install
                    Python3 uhd on my system but when I attempt
                    &gt;&gt;&gt;import uhd in python3 environment I
                    always receive ModuleNotFoundError: no module named
                    'uhd'<br>
                    &gt; <br>
                    &gt; As far as I can see there are no hang ups on
                    install and after $make, I run $make test and get 0
                    out of 82 fails. Below is my enabled components
                    after I run<br>
                    &gt; <br>
                    &gt; $cmake ../<br>
                    &gt; <br>
                    &gt; I've also put a uhd.conf file in my ld.so.conf
                    file and ran $sudo ldconfig. Although I'm not
                    certain I'm putting in correct path, right now it's
                    [my_directory]/uhd/host/build/lib/<br>
                    &gt; <br>
                    &gt; I'm on Ubuntu 20.04, any help is greatly
                    appreciated!<br>
                    &gt; <br>
                    &gt; --
                    ######################################################
                    <br>
                    &gt; -- # UHD enabled components                   
                               <br>
                    &gt; --
                    ######################################################
                    <br>
                    &gt; --   * LibUHD <br>
                    &gt; --   * LibUHD - C API <br>
                    &gt; --   * LibUHD - Python API <br>
                    &gt; --   * Examples <br>
                    &gt; --   * Utils <br>
                    &gt; --   * Tests <br>
                    &gt; --   * USB <br>
                    &gt; --   * B100 <br>
                    &gt; --   * B200 <br>
                    &gt; --   * USRP1 <br>
                    &gt; --   * USRP2 <br>
                    &gt; --   * X300 <br>
                    &gt; --   * MPMD <br>
                    &gt; --   * SIM <br>
                    &gt; --   * N300 <br>
                    &gt; --   * N320 <br>
                    &gt; --   * E320 <br>
                    &gt; --   * E300 <br>
                    &gt; --   * OctoClock <br>
                    &gt; --   * Manual <br>
                    &gt; --   * API/Doxygen <br>
                    &gt; --   * Man Pages <br>
                    &gt; --  <br>
                    &gt; --
                    ######################################################
                    <br>
                    &gt; -- # UHD disabled components                   
                              <br>
                    &gt; --
                    ######################################################
                    <br>
                    &gt; --   * DPDK <br>
                    &gt; --  <br>
                    &gt; --
                    ******************************************************
                    <br>
                    &gt; -- * You are building the UHD development
                    master branch. <br>
                    &gt; -- * For production code, we recommend our
                    stable, <br>
                    &gt; -- * releases or using the release branch
                    (maint). <br>
                    &gt; --
                    ******************************************************
                    <br>
                    &gt; -- Building version: 4.0.0.0-93-g3b9ced8f <br>
                    &gt; -- Using install prefix: /usr/local <br>
                    &gt; -- Configuring done <br>
                    &gt; -- Generating done <br>
                    &gt; -- Build files have been written to:
                    /home/casey/Projects/UHD/uhd/host/build<br>
                    &gt; <br>
                    &gt; <br>
                    &gt; _______________________________________________<br>
                    &gt; USRP-users mailing list<br>
                    &gt; <a moz-do-not-send="true"
                      href="mailto:USRP-users@lists.ettus.com"
                      rel="noreferrer noreferrer noreferrer"
                      target="_blank">USRP-users@lists.ettus.com</a><br>
                    &gt; <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                      rel="noreferrer noreferrer noreferrer noreferrer"
                      target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  </blockquote>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------000704020204080104030208--


--===============3849368425230027427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3849368425230027427==--

