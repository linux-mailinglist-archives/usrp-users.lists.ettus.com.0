Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AB0264983
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 18:18:14 +0200 (CEST)
Received: from [::1] (port=44760 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGPH3-0006q0-7B; Thu, 10 Sep 2020 12:18:13 -0400
Received: from mail-qt1-f180.google.com ([209.85.160.180]:37601)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGPGy-0006gi-RJ
 for USRP-users@lists.ettus.com; Thu, 10 Sep 2020 12:18:08 -0400
Received: by mail-qt1-f180.google.com with SMTP id k25so5309398qtu.4
 for <USRP-users@lists.ettus.com>; Thu, 10 Sep 2020 09:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=BkX2F74vSCXhnKwXhy9q1ZPdGhN2pv6O6mM89wHCqC8=;
 b=DkYWBFoUxGX3lOeQ3X27bwu2kS2DcdzyIeVdVHfeMMH5R6ieJzQZk9qNlA7kB+Cjaj
 gIPwCzCutCxfhi9u1P0aAC24MYfVf+b3dBm4Qtl/JoKOCH73NbE1GEGToYqCn1qpH9xN
 tDD8QVZIg+/TlRI93c6f5V6ondsrgueQ7JNSLsc5ZGEPi7WM1aIVJprG3z/4MAv4B9AB
 MOz6VLVgJDOE5EGukZQlf0TyHz7wMvzaUg6GZbm1yE5Q3xhGApLriyi72bVS9ilqmBH5
 0yAEUnPEtt1Tpqti5XugjKqo6cEadGbcOM46NJev39O1T3C07/0JVkceZOHePnabH5sj
 GOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=BkX2F74vSCXhnKwXhy9q1ZPdGhN2pv6O6mM89wHCqC8=;
 b=r4aEmzYINS521eZ4V2nDeD7jsigN8I3QtSi7acEuhfE1Aie/sxg5wfjiAzFiU2DWoZ
 DRqI9I4y9ERaBXNFXcS/Oo4j+nLHOcjg2uLFoDCH876A1+Ls4i+0lU8sxrufUi4C3Nzc
 rY9M/0jpIqkIDZLjErfx26z0H42YPkniNVWzfrwY7DvGsKhThhuT5LJre1KUZpfSluGG
 2vrSl/k4oMIEzZN54dPWw4l/pX/Dj961RAJe9BUwiMQj5DdHgFsvPmbsJtPsfvwT9oU+
 n+uVE5YbJy/Jryh6H1z3JyrorJymvTBOH1L4124t1ErF6Fg65/bj8/1rHtlOh40A2Gfx
 eLdQ==
X-Gm-Message-State: AOAM530rGyE8yV8+n2gGTdz20KzNbIC/n9ZJ6MNRELZpzUGD1TIqb19A
 QrDRVwFe1LV144XrbKm1BBi2yKrOO38aYQ==
X-Google-Smtp-Source: ABdhPJzJx/mFVpJO7AWuggwAYkrb3hGxpC3JczRJsl3MJZNJR9iAe+7txOO8b7N/RPvTHh9U/9OtwA==
X-Received: by 2002:aed:3e2e:: with SMTP id l43mr9110736qtf.392.1599754648016; 
 Thu, 10 Sep 2020 09:17:28 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id v18sm7119483qtq.15.2020.09.10.09.17.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Sep 2020 09:17:27 -0700 (PDT)
Message-ID: <5F5A5196.7040905@gmail.com>
Date: Thu, 10 Sep 2020 12:17:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Xiang Ma <marxwolfs@gmail.com>
CC: USRP-users@lists.ettus.com
References: <CACryqrFS9dZo5N6am5VyGFq3xqfy0rrW5z=jtP3Y947kz-5Rrw@mail.gmail.com>
 <D6AE7F12-CCA7-4CC9-B8C6-763CB6523273@gmail.com>
 <CACryqrFJrZBcJaWdq=Cknn2v9oE8+zraJd21Viqqtxpi=nCM_w@mail.gmail.com>
In-Reply-To: <CACryqrFJrZBcJaWdq=Cknn2v9oE8+zraJd21Viqqtxpi=nCM_w@mail.gmail.com>
Subject: Re: [USRP-users] UHD query gpsdo sensor command
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
Content-Type: multipart/mixed; boundary="===============3374207086700337790=="
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
--===============3374207086700337790==
Content-Type: multipart/alternative;
 boundary="------------040402030109080300080207"

This is a multi-part message in MIME format.
--------------040402030109080300080207
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 09/10/2020 12:12 PM, Xiang Ma wrote:
> I double checked the installation, I think it is ok. When I start the 
> USRP,
> There will be two green lights on, several seconds later, 1 light off, 
> and 1-2 seconds later, another light is also off.
>
> also if there is a GPSDO installation problem, why /[INFO] [GPS] Found 
> an internal GPSDO: LC_XO, Firmware Rev 0.929b appears?/
/Because it can "find" the GPSDO and there can still be problems with 
the electrical interface to it.  There are several signals between the
   motherboard and the GPSDO module.  So, if the NMEA signals work, the 
motherboard can still "find" the GPSDO, but other things will
   go wrong despite that.  That's what the message at the bottom of your 
test shows--it cannot see the GPSDO-Locked signal--which in this
   case might be expected, since you reported that you're running this 
inside a building--no GPS LOCK is possible in that case, since the GPSDO
   cannot see the sky (and, hence, the satellites that provide GPS service).


/
> /
> /
> Thanks.
>
> On Thu, Sep 10, 2020 at 10:07 AM Marcus D Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     To me the message at the end suggests even more strongly that
>     there’s a hardware problem with the GPSDO installation.
>
>     Sent from my iPhone
>
>>     On Sep 10, 2020, at 11:50 AM, Xiang Ma <marxwolfs@gmail.com
>>     <mailto:marxwolfs@gmail.com>> wrote:
>>
>>     ﻿
>>     But you can see there is an info:
>>     /[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b/
>>
>>     Also, when I run /usr/local/lib/uhd/examples/sync_to_gps
>>
>>     It shows:
>>     Creating the USRP device with: ...
>>     [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>     UHD_3.15.0.HEAD-0-gaea0e2de
>>     [INFO] [X300] X300 initialization sequence...
>>     [INFO] [X300] Maximum frame size: 1472 bytes.
>>     [INFO] [X300] Radio 1x clock: 200 MHz
>>     [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>>     [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>>     0xF1F0D00000000000)
>>     [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
>>     [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)
>>     [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>     0x12AD100000000001)
>>     [INFO] [0/Radio_1] Initializing block control (NOC ID:
>>     0x12AD100000000001)
>>     [INFO] [0/DDC_0] Initializing block control (NOC ID:
>>     0xDDC0000000000000)
>>     [INFO] [0/DDC_1] Initializing block control (NOC ID:
>>     0xDDC0000000000000)
>>     [INFO] [0/DUC_0] Initializing block control (NOC ID:
>>     0xD0C0000000000000)
>>     [INFO] [0/DUC_1] Initializing block control (NOC ID:
>>     0xD0C0000000000000)
>>     Using Device: Single USRP:
>>       Device: X-Series Device
>>       Mboard 0: X310
>>       RX Channel: 0
>>         RX DSP: 0
>>         RX Dboard: A
>>         RX Subdev: UBX RX
>>       RX Channel: 1
>>         RX DSP: 0
>>         RX Dboard: B
>>         RX Subdev: UBX RX
>>       TX Channel: 0
>>         TX DSP: 0
>>         TX Dboard: A
>>         TX Subdev: UBX TX
>>       TX Channel: 1
>>         TX DSP: 0
>>         TX Dboard: B
>>         TX Subdev: UBX TX
>>
>>     Synchronizing mboard 0: X310
>>
>>     **************************************Helpful Notes on Clock/PPS
>>     Selection**************************************
>>     As you can see, the default 10 MHz Reference and 1 PPS signals
>>     are now from the GPSDO.
>>     If you would like to use the internal reference(TCXO) in other
>>     applications, you must configure that explicitly.
>>     You can no longer select the external SMAs for 10 MHz or 1 PPS
>>     signaling.
>>     ****************************************************************************************************************
>>
>>     Waiting for reference lock...LOCKED
>>
>>     Error: ValueError: locked(): unable to determine GPS lock
>>     statusThis could mean that you have not installed the GPSDO
>>     correctly.
>>
>>     Visit one of these pages if the problem persists:
>>      * N2X0/E1X0: http://files.ettus.com/manual/page_gpsdo.html *
>>     X3X0: http://files.ettus.com/manual/page_gpsdo_x3x0.html
>>
>>      * E3X0:
>>     http://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_hw_gps
>>
>>     On Thu, Sep 10, 2020 at 9:38 AM Marcus D. Leech via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     wrote:
>>
>>         On 09/10/2020 10:12 AM, Xiang Ma via USRP-users wrote:
>>>         Hi,
>>>
>>>            I am using the
>>>         /usr/local/lib/uhd/utils/query_gpsdo_sensors to get gps
>>>         information, but it shows: /Waiting for the GPSDO to warm
>>>         up...........
>>>         No response from GPSDO in 30 seconds/
>>>         /
>>>         /
>>>         This is the whole information:
>>>
>>>         /hu@hu:~$ /usr/local/lib/uhd/utils/query_gpsdo_sensors
>>>
>>>         Creating the USRP device with: ...
>>>         [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>>         UHD_3.15.0.HEAD-0-gaea0e2de
>>>         [INFO] [X300] X300 initialization sequence...
>>>         [INFO] [X300] Maximum frame size: 1472 bytes.
>>>         [INFO] [X300] Radio 1x clock: 200 MHz
>>>         [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>>>         [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>>>         0xF1F0D00000000000)
>>>         [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)
>>>         [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
>>>         [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>>         0x12AD100000000001)
>>>         [INFO] [0/Radio_1] Initializing block control (NOC ID:
>>>         0x12AD100000000001)
>>>         [INFO] [0/DDC_0] Initializing block control (NOC ID:
>>>         0xDDC0000000000000)
>>>         [INFO] [0/DDC_1] Initializing block control (NOC ID:
>>>         0xDDC0000000000000)
>>>         [INFO] [0/DUC_0] Initializing block control (NOC ID:
>>>         0xD0C0000000000000)
>>>         [INFO] [0/DUC_1] Initializing block control (NOC ID:
>>>         0xD0C0000000000000)
>>>         Using Device: Single USRP:
>>>           Device: X-Series Device
>>>           Mboard 0: X310
>>>           RX Channel: 0
>>>             RX DSP: 0
>>>             RX Dboard: A
>>>             RX Subdev: UBX RX
>>>           RX Channel: 1
>>>             RX DSP: 0
>>>             RX Dboard: B
>>>             RX Subdev: UBX RX
>>>           TX Channel: 0
>>>             TX DSP: 0
>>>             TX Dboard: A
>>>             TX Subdev: UBX TX
>>>           TX Channel: 1
>>>             TX DSP: 0
>>>             TX Dboard: B
>>>             TX Subdev: UBX TX
>>>
>>>         Setting the reference clock source to "gpsdo"...
>>>         Clock source is now gpsdo
>>>         Setting the reference clock source to "gpsdo"...
>>>         Time source is now gpsdo
>>>         Waiting for ref_locked...USRP Locked to Reference.
>>>         **************************************Helpful Notes on
>>>         Clock/PPS Selection**************************************
>>>         As you can see, the default 10 MHz Reference and 1 PPS
>>>         signals are now from the GPSDO.
>>>         If you would like to use the internal reference(TCXO) in
>>>         other applications, you must configure that explicitly.
>>>         ****************************************************************************************************************
>>>         Waiting for the GPSDO to warm up...........
>>>         No response from GPSDO in 30 seconds/
>>>         /
>>>         /
>>>         I do plug the GPSDO to the board, and I plug the 5V active
>>>         GPS antenna in the `GPS ANT` connector at the rear panel.
>>>         But I am not sure why. I just want to get the location
>>>         information. (btw, is it because I am in the indoor area?)
>>>
>>>         Thanks,
>>>
>>>         Xiang Ma
>>>
>>>         -- 
>>>         /*Xiang Ma, */Ph.D. Student
>>>         College of Engineering
>>>         Utah State University
>>>         E-mail:marxwolfs@gmail.com <mailto:congshanya@gmail.com>
>>>
>>>
>>         I would re-check the GPSDO installation.  You may have bent
>>         one of the pins when you installed it.
>>
>>         Also, it won't be able to get a "fix" unless the antenna can
>>         "see" the sky.  Most buildings are not that transparent at
>>         1575MHz.
>>
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>>     -- 
>>     /*Xiang Ma, */Ph.D. Student
>>     College of Engineering
>>     Utah State University
>>     E-mail:marxwolfs@gmail.com <mailto:congshanya@gmail.com>
>
>
>
> -- 
> /*Xiang Ma, */Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com <mailto:congshanya@gmail.com>


--------------040402030109080300080207
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/10/2020 12:12 PM, Xiang Ma wrote:<br>
    </div>
    <blockquote
cite="mid:CACryqrFJrZBcJaWdq=Cknn2v9oE8+zraJd21Viqqtxpi=nCM_w@mail.gmail.com"
      type="cite">
      <div dir="ltr">I double checked the installation, I think it is
        ok. When I start the USRP,
        <div>There will be two green lights on, several seconds later, 1
          light off, and 1-2 seconds later, another light is also off.</div>
        <div><br>
        </div>
        <div>also if there is a GPSDO installation problem, why <i
            style="color:rgb(80,0,80)">[INFO] [GPS] Found an internal
            GPSDO: LC_XO, Firmware Rev 0.929b appears?</i></div>
      </div>
    </blockquote>
    <i>Because it can "find" the GPSDO and there can still be problems
      with the electrical interface to it.  There are several signals
      between the<br>
        motherboard and the GPSDO module.  So, if the NMEA signals work,
      the motherboard can still "find" the GPSDO, but other things will<br>
        go wrong despite that.  That's what the message at the bottom of
      your test shows--it cannot see the GPSDO-Locked signal--which in
      this<br>
        case might be expected, since you reported that you're running
      this inside a building--no GPS LOCK is possible in that case,
      since the GPSDO<br>
        cannot see the sky (and, hence, the satellites that provide GPS
      service).<br>
      <br>
      <br>
    </i>
    <blockquote
cite="mid:CACryqrFJrZBcJaWdq=Cknn2v9oE8+zraJd21Viqqtxpi=nCM_w@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><i style="color:rgb(80,0,80)"><br>
          </i></div>
        <div><span style="color:rgb(80,0,80)">Thanks.</span></div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Sep 10, 2020 at 10:07
          AM Marcus D Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="auto">To me the message at the end suggests even
            more strongly that there’s a hardware problem with the GPSDO
            installation. <br>
            <br>
            <div dir="ltr">Sent from my iPhone</div>
            <div dir="ltr"><br>
              <blockquote type="cite">On Sep 10, 2020, at 11:50 AM,
                Xiang Ma &lt;<a moz-do-not-send="true"
                  href="mailto:marxwolfs@gmail.com" target="_blank">marxwolfs@gmail.com</a>&gt;
                wrote:<br>
                <br>
              </blockquote>
            </div>
            <blockquote type="cite">
              <div dir="ltr">﻿
                <div dir="ltr">But you can see there is an info:
                  <div><i>[INFO] [GPS] Found an internal GPSDO: LC_XO,
                      Firmware Rev 0.929b</i></div>
                  <div><br>
                  </div>
                  <div>Also, when I run
                    /usr/local/lib/uhd/examples/sync_to_gps</div>
                  <div><br>
                  </div>
                  <div>It shows:</div>
                  <div>Creating the USRP device with: ...<br>
                    [INFO] [UHD] linux; GNU C++ version 7.5.0;
                    Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de<br>
                    [INFO] [X300] X300 initialization sequence...<br>
                    [INFO] [X300] Maximum frame size: 1472 bytes.<br>
                    [INFO] [X300] Radio 1x clock: 200 MHz<br>
                    [INFO] [GPS] Found an internal GPSDO: LC_XO,
                    Firmware Rev 0.929b<br>
                    [INFO] [0/DmaFIFO_0] Initializing block control (NOC
                    ID: 0xF1F0D00000000000)<br>
                    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300
                    MB/s)<br>
                    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317
                    MB/s)<br>
                    [INFO] [0/Radio_0] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
                    [INFO] [0/Radio_1] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
                    [INFO] [0/DDC_0] Initializing block control (NOC ID:
                    0xDDC0000000000000)<br>
                    [INFO] [0/DDC_1] Initializing block control (NOC ID:
                    0xDDC0000000000000)<br>
                    [INFO] [0/DUC_0] Initializing block control (NOC ID:
                    0xD0C0000000000000)<br>
                    [INFO] [0/DUC_1] Initializing block control (NOC ID:
                    0xD0C0000000000000)<br>
                    Using Device: Single USRP:<br>
                      Device: X-Series Device<br>
                      Mboard 0: X310<br>
                      RX Channel: 0<br>
                        RX DSP: 0<br>
                        RX Dboard: A<br>
                        RX Subdev: UBX RX<br>
                      RX Channel: 1<br>
                        RX DSP: 0<br>
                        RX Dboard: B<br>
                        RX Subdev: UBX RX<br>
                      TX Channel: 0<br>
                        TX DSP: 0<br>
                        TX Dboard: A<br>
                        TX Subdev: UBX TX<br>
                      TX Channel: 1<br>
                        TX DSP: 0<br>
                        TX Dboard: B<br>
                        TX Subdev: UBX TX<br>
                    <br>
                    Synchronizing mboard 0: X310<br>
                    <br>
                    **************************************Helpful Notes
                    on Clock/PPS
                    Selection**************************************<br>
                    As you can see, the default 10 MHz Reference and 1
                    PPS signals are now from the GPSDO.<br>
                    If you would like to use the internal
                    reference(TCXO) in other applications, you must
                    configure that explicitly.<br>
                    You can no longer select the external SMAs for 10
                    MHz or 1 PPS signaling.<br>
****************************************************************************************************************<br>
                    <br>
                    Waiting for reference lock...LOCKED<br>
                    <br>
                    Error: ValueError: locked(): unable to determine GPS
                    lock statusThis could mean that you have not
                    installed the GPSDO correctly.<br>
                    <br>
                    Visit one of these pages if the problem persists:<br>
                     * N2X0/E1X0: <a moz-do-not-send="true"
                      href="http://files.ettus.com/manual/page_gpsdo.html"
                      target="_blank">http://files.ettus.com/manual/page_gpsdo.html</a>
                    * X3X0: <a moz-do-not-send="true"
                      href="http://files.ettus.com/manual/page_gpsdo_x3x0.html"
                      target="_blank">http://files.ettus.com/manual/page_gpsdo_x3x0.html</a><br>
                    <br>
                     * E3X0: <a moz-do-not-send="true"
                      href="http://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_hw_gps"
                      target="_blank">http://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_hw_gps</a><br>
                  </div>
                </div>
                <br>
                <div class="gmail_quote">
                  <div dir="ltr" class="gmail_attr">On Thu, Sep 10, 2020
                    at 9:38 AM Marcus D. Leech via USRP-users &lt;<a
                      moz-do-not-send="true"
                      href="mailto:usrp-users@lists.ettus.com"
                      target="_blank">usrp-users@lists.ettus.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class="gmail_quote" style="margin:0px 0px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div bgcolor="#FFFFFF">
                      <div>On 09/10/2020 10:12 AM, Xiang Ma via
                        USRP-users wrote:<br>
                      </div>
                      <blockquote type="cite">
                        <div dir="ltr">Hi,
                          <div><br>
                          </div>
                          <div>   I am using the
                            /usr/local/lib/uhd/utils/query_gpsdo_sensors
                            to get gps information, but it shows: <i>Waiting
                              for the GPSDO to warm up...........<br>
                              No response from GPSDO in 30 seconds</i></div>
                          <div><i><br>
                            </i></div>
                          <div>This is the whole information:</div>
                          <div><br>
                          </div>
                          <div>
                            <div><i>hu@hu:~$
                                /usr/local/lib/uhd/utils/query_gpsdo_sensors<br>
                                <br>
                                Creating the USRP device with: ...<br>
                                [INFO] [UHD] linux; GNU C++ version
                                7.5.0; Boost_106501;
                                UHD_3.15.0.HEAD-0-gaea0e2de<br>
                                [INFO] [X300] X300 initialization
                                sequence...<br>
                                [INFO] [X300] Maximum frame size: 1472
                                bytes.<br>
                                [INFO] [X300] Radio 1x clock: 200 MHz<br>
                                [INFO] [GPS] Found an internal GPSDO:
                                LC_XO, Firmware Rev 0.929b<br>
                                [INFO] [0/DmaFIFO_0] Initializing block
                                control (NOC ID: 0xF1F0D00000000000)<br>
                                [INFO] [0/DmaFIFO_0] BIST passed
                                (Throughput: 1304 MB/s)<br>
                                [INFO] [0/DmaFIFO_0] BIST passed
                                (Throughput: 1306 MB/s)<br>
                                [INFO] [0/Radio_0] Initializing block
                                control (NOC ID: 0x12AD100000000001)<br>
                                [INFO] [0/Radio_1] Initializing block
                                control (NOC ID: 0x12AD100000000001)<br>
                                [INFO] [0/DDC_0] Initializing block
                                control (NOC ID: 0xDDC0000000000000)<br>
                                [INFO] [0/DDC_1] Initializing block
                                control (NOC ID: 0xDDC0000000000000)<br>
                                [INFO] [0/DUC_0] Initializing block
                                control (NOC ID: 0xD0C0000000000000)<br>
                                [INFO] [0/DUC_1] Initializing block
                                control (NOC ID: 0xD0C0000000000000)<br>
                                Using Device: Single USRP:<br>
                                  Device: X-Series Device<br>
                                  Mboard 0: X310<br>
                                  RX Channel: 0<br>
                                    RX DSP: 0<br>
                                    RX Dboard: A<br>
                                    RX Subdev: UBX RX<br>
                                  RX Channel: 1<br>
                                    RX DSP: 0<br>
                                    RX Dboard: B<br>
                                    RX Subdev: UBX RX<br>
                                  TX Channel: 0<br>
                                    TX DSP: 0<br>
                                    TX Dboard: A<br>
                                    TX Subdev: UBX TX<br>
                                  TX Channel: 1<br>
                                    TX DSP: 0<br>
                                    TX Dboard: B<br>
                                    TX Subdev: UBX TX<br>
                                <br>
                                Setting the reference clock source to
                                "gpsdo"...<br>
                                Clock source is now gpsdo<br>
                                Setting the reference clock source to
                                "gpsdo"...<br>
                                Time source is now gpsdo<br>
                                Waiting for ref_locked...USRP Locked to
                                Reference.<br>
                                **************************************Helpful
                                Notes on Clock/PPS
                                Selection**************************************<br>
                                As you can see, the default 10 MHz
                                Reference and 1 PPS signals are now from
                                the GPSDO.<br>
                                If you would like to use the internal
                                reference(TCXO) in other applications,
                                you must configure that explicitly.<br>
****************************************************************************************************************<br>
                                Waiting for the GPSDO to warm
                                up...........<br>
                                No response from GPSDO in 30 seconds</i></div>
                            <div><i><br>
                              </i></div>
                            <div>I do plug the GPSDO to the board, and I
                              plug the 5V active GPS antenna in the `GPS
                              ANT` connector at the rear panel. But I am
                              not sure why. I just want to get the
                              location information. (btw, is it because
                              I am in the indoor area?)</div>
                            <div><br>
                            </div>
                            <div>Thanks,</div>
                            <div><br>
                            </div>
                            <div>Xiang Ma</div>
                          </div>
                          <div><br>
                          </div>
                          -- <br>
                          <div dir="ltr">
                            <div dir="ltr"><font
                                style="color:rgb(136,136,136)"
                                face="times new roman, serif" size="4"><i><b>Xiang
                                    Ma, </b></i></font><span
                                style="color:rgb(136,136,136)">Ph.D.
                                Student</span>
                              <div>
                                <div style="color:rgb(136,136,136)"><font
                                    color="#444444">College of
                                    Engineering</font></div>
                                <div><font color="#444444">Utah State
                                    University</font></div>
                                <div style="color:rgb(136,136,136)"><font
                                    color="#444444">E-mail:<a
                                      moz-do-not-send="true"
                                      href="mailto:congshanya@gmail.com"
                                      style="color:rgb(17,85,204)"
                                      target="_blank">marxwolfs@gmail.com</a></font></div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <br>
                        <br>
                      </blockquote>
                      I would re-check the GPSDO installation.  You may
                      have bent one of the pins when you installed it.<br>
                      <br>
                      Also, it won't be able to get a "fix" unless the
                      antenna can "see" the sky.  Most buildings are not
                      that transparent at 1575MHz.<br>
                      <br>
                      <br>
                      <br>
                    </div>
                    _______________________________________________<br>
                    USRP-users mailing list<br>
                    <a moz-do-not-send="true"
                      href="mailto:USRP-users@lists.ettus.com"
                      target="_blank">USRP-users@lists.ettus.com</a><br>
                    <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                      rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  </blockquote>
                </div>
                <br clear="all">
                <div><br>
                </div>
                -- <br>
                <div dir="ltr">
                  <div dir="ltr"><font style="color:rgb(136,136,136)"
                      face="times new roman, serif" size="4"><i><b>Xiang
                          Ma, </b></i></font><span
                      style="color:rgb(136,136,136)">Ph.D. Student</span>
                    <div>
                      <div style="color:rgb(136,136,136)"><font
                          color="#444444">College of Engineering</font></div>
                      <div><font color="#444444">Utah State University</font></div>
                      <div style="color:rgb(136,136,136)"><font
                          color="#444444">E-mail:<a
                            moz-do-not-send="true"
                            href="mailto:congshanya@gmail.com"
                            style="color:rgb(17,85,204)" target="_blank">marxwolfs@gmail.com</a></font></div>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br clear="all">
      <div><br>
      </div>
      -- <br>
      <div dir="ltr" class="gmail_signature">
        <div dir="ltr"><font style="color:rgb(136,136,136)" face="times
            new roman, serif" size="4"><i><b>Xiang Ma, </b></i></font><span
            style="color:rgb(136,136,136)">Ph.D. Student</span>
          <div>
            <div style="color:rgb(136,136,136)"><font color="#444444">College
                of Engineering</font></div>
            <div><font color="#444444">Utah State University</font></div>
            <div style="color:rgb(136,136,136)"><font color="#444444">E-mail:<a
                  moz-do-not-send="true"
                  href="mailto:congshanya@gmail.com"
                  style="color:rgb(17,85,204)" target="_blank">marxwolfs@gmail.com</a></font></div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040402030109080300080207--


--===============3374207086700337790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3374207086700337790==--

