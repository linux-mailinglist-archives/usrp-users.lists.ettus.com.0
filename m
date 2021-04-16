Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDC03620A6
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 15:16:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65A13383FF3
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 09:16:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SzkpucGb";
	dkim-atps=neutral
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by mm2.emwd.com (Postfix) with ESMTPS id BEE2B3841ED
	for <usrp-users@lists.ettus.com>; Fri, 16 Apr 2021 09:15:48 -0400 (EDT)
Received: by mail-oi1-f170.google.com with SMTP id l131so22742547oih.0
        for <usrp-users@lists.ettus.com>; Fri, 16 Apr 2021 06:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=yqhOxuR0D1eTeA2aYi79jxbwQMENZcMZ0rTjicL5V8Y=;
        b=SzkpucGbeW/T+vJrldRgykWdrZNff7diSrNRHC3BdJtA/dI49PAlZo9jp7XlxxIwHg
         imnFarS66MMhVz0ZanFBSF5ypMWUKeAC0tOC6w261hfRQbLSS9/WfLMTUxRkvRds1Vrk
         9KV+npEazy1VjI77Esl3sGxL7MS6znD+0VHDPbyG+elGUAoY1vYeAeAbV2l4YJCCckpc
         Js9r8kwy5Xoj8iY7wG3eGqsdWtRO46NzKSfOfMUnIPOa1cZZYBp0zYgaKGnveyO/YACF
         NPpJH4musbWAgHXLUJcxvJyOiQVkB6c2M8CaUUgyHErMvsnADarel8sEaqZDjFEUvVEt
         15ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=yqhOxuR0D1eTeA2aYi79jxbwQMENZcMZ0rTjicL5V8Y=;
        b=S/FFdK5jcuwCFoCvcvkvZGTbr0Mu8iKvGhGPAtqgEzyiXHUSIiYZkUCz0DnFuBPIm8
         Bso+nG4jYTp1M299h25PIGD5KhfMznYmFQuryFjqz0qHccdoATIiGF2taMmeyKxuCrB8
         sPoxJ5Yy2Drznv+6CLsBzHglc0RAXE4rjukIsjkP6B/8MkG+uBt1W9PsSVbR5zwVlevg
         tbkopp0uDzdJjb9pm1KdIIvDInneaXhAs8uK5QxZl+imrANDpAPBA5Ye3ajMWMFq1jH8
         xySaLUdA0Ql7VdimxPVr5GbW3QdPnQbU6oK0FGc+5tQyIYhsgHS9MBrHII7Jkea1bhtM
         lcNw==
X-Gm-Message-State: AOAM531XivxX3ItTNi6TMDHv3ky0++oJjwp6JRDXScLs+0CDnhOAtJ4Y
	Uvzd6y/DFeUbRQcbh98Lc01Y6duNahAAJhwD
X-Google-Smtp-Source: ABdhPJzZzPimIhr3uMsWf3cmxP5A8Kpz2KDGt/MrOmz84Hn9EtEzh7Okgk0/ytI9DLWWeu7wpiw//w==
X-Received: by 2002:aca:bc87:: with SMTP id m129mr6482579oif.29.1618578947908;
        Fri, 16 Apr 2021 06:15:47 -0700 (PDT)
Received: from [192.168.1.3] (47-218-105-159.bcstcmta04.res.dyn.suddenlink.net. [47.218.105.159])
        by smtp.gmail.com with ESMTPSA id w141sm1361301oie.5.2021.04.16.06.15.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 06:15:47 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <wQmTx3SzaskwQtIvV7IftyXjH7d1u4LQrruiii4@lists.ettus.com>
From: page heller <pageheller@gmail.com>
Message-ID: <f793b948-4761-d1dc-5d7f-7829e10d5520@gmail.com>
Date: Fri, 16 Apr 2021 08:15:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <wQmTx3SzaskwQtIvV7IftyXjH7d1u4LQrruiii4@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: 2PJXA2JRYMXQFGJ36PXCD6LEXDP6MJS4
X-Message-ID-Hash: 2PJXA2JRYMXQFGJ36PXCD6LEXDP6MJS4
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Calling C++ UHD functions from Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2PJXA2JRYMXQFGJ36PXCD6LEXDP6MJS4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2625542127306764460=="

This is a multi-part message in MIME format.
--===============2625542127306764460==
Content-Type: multipart/alternative;
 boundary="------------5BCFC14513B56DFF8507627F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5BCFC14513B56DFF8507627F
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Yes. That is what we are doing. For instance, you may make your C++ 
executable then call it like a command from Python3. Here, I call a 
custom command b210col, then display thumbnails of the captured 
channels. I have a different version for the pi which repeats the 
command call five times with a 3 second delay between (for the pi 4). -page

#!/bin/bash
#
# This program captures a file containing data from
# an Ettus Research B210, two channels Rx
sudo rm /mnt/ramdisk/2021-*
sudo rm /mnt/ramdisk/RF*
cd '/mnt/ramdisk'
sudo /home/page/workarea/uhd/host/build4/b210col -g 30. -c 150000 -f 
2462e+06
python3 /home/page/esi/graphram.py
cd '/home/page/'
echo end bash

On 4/15/21 9:23 PM, brendan.horsfield@vectalabs.com wrote:
>
> Hi there,
>
> I am trying to measure some short bursts of Rx data with my B210 at a 
> fairly high sampling rate. I need to perform this operation 
> repeatedly, ideally several times per second. The advice I have 
> received from Ettus is that this task is best implemented using C++.
>
> The problem is that this task is part of a bigger project written 
> entirely in Python. It is not feasible to re-write the entire project 
> in C++ just to be able to talk to the B210.
>
> My question is: Is there a relatively painless way that I can create a 
> C++ function to perform the desired USRP measurement, and then call 
> this function from Python?
>
> Thanks,
>
> Brendan.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------5BCFC14513B56DFF8507627F
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p>Yes. That is what we are doing. For instance, you may make your
      C++ executable then call it like a command from Python3. Here, I
      call a custom command b210col, then display thumbnails of the
      captured channels. I have a different version for the pi which
      repeats the command call five times with a 3 second delay between
      (for the pi 4). -page<br>
    </p>
    <p>#!/bin/bash<br>
      #<br>
      # This program captures a file containing data from<br>
      # an Ettus Research B210, two channels Rx<br>
      sudo rm /mnt/ramdisk/2021-*<br>
      sudo rm /mnt/ramdisk/RF*<br>
      cd '/mnt/ramdisk'<br>
      sudo /home/page/workarea/uhd/host/build4/b210col -g 30. -c 150000
      -f 2462e+06<br>
      python3 /home/page/esi/graphram.py<br>
      cd '/home/page/'<br>
      echo end bash<br>
      <br>
    </p>
    <div class="moz-cite-prefix">On 4/15/21 9:23 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:brendan.horsfield@vectalabs.com">brendan.horsfield@vectalabs.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:wQmTx3SzaskwQtIvV7IftyXjH7d1u4LQrruiii4@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      <p>Hi there,</p>
      <p>I am trying to measure some short bursts of Rx data with my
        B210 at a fairly high sampling rate. I need to perform this
        operation repeatedly, ideally several times per second. The
        advice I have received from Ettus is that this task is best
        implemented using C++. </p>
      <p>The problem is that this task is part of a bigger project
        written entirely in Python. It is not feasible to re-write the
        entire project in C++ just to be able to talk to the B210.</p>
      <p>My question is: Is there a relatively painless way that I can
        create a C++ function to perform the desired USRP measurement,
        and then call this function from Python?</p>
      <p>Thanks,</p>
      <p>Brendan. </p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------5BCFC14513B56DFF8507627F--

--===============2625542127306764460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2625542127306764460==--
