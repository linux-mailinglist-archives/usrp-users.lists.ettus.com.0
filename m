Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA3BAC413
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 04:39:08 +0200 (CEST)
Received: from [::1] (port=48568 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6Qcz-0001Xe-MF; Fri, 06 Sep 2019 22:39:05 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:44943)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i6Qcv-0001M2-TK
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 22:39:01 -0400
Received: by mail-qk1-f172.google.com with SMTP id i78so7686636qke.11
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 19:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=G11EaihhXNyEd6BY3tH3Ed+SNdJKMkEzcD2rsupLjp8=;
 b=pJx1jKHhJ35HGy34jZVN26kgOp5xopva26i8l6bVNZWGSDjzVfPMoOJu9N33eOdFWc
 DaKuNDt15po1DPf9QOt9ujUegI31cssN35wbgagYPLMZFRAuZR4EOb7JMCV6AvwWx/MM
 BbYL+L85A+CUXCJ1gBD0rCnyCe6nXqTStJYm7IzpGlqYY+cpbjTz8HdGpmtmAQ7lP941
 peDcpd/YtPN8sVtI57MqNw3pckQk9YYOtu/DaoGhwcRUod/yIoHUbuNre2JaHS1t12cQ
 KtO7vpVJsGPbdDgXwaio5uu//5C7wq3NGDeeP4FmVv9Vpgg0OopAWfdyiRIb0FRg9+w3
 6RAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=G11EaihhXNyEd6BY3tH3Ed+SNdJKMkEzcD2rsupLjp8=;
 b=nf6W6hK/M71IoFxj4uuHqUnVrFyhKZMkPv9z8Qd1UtY9EHt7m36ImZ8t9w4i6O57YC
 O/e1w4hTAZ51dnmfaF+xDLa5U/digHiPWYfVfpdisYN5/Q+3P++CfnC9qaib2IZBzRBM
 Dj4xAXSijJ4ef3B3x0/PLA6r0sk1Cf/JezY1Z3JGT32LAmDWdrXEyJbRBdBAsk+HGVeC
 8tVVyeWRtDdfhms+mFY3O6b27Bxelz3hXjqg5QGkf+xCnS+yby+ksPyZjqiBhIt0n9mN
 gC26rmYdATvwRtdoFL/ROg/Cu14CQ2F3TUouGUXKb5hnGvdHXiotPevsEdf+CPN7HVsU
 M9JQ==
X-Gm-Message-State: APjAAAXrULv5vji8zO2ej+UDY8bcxXDUB86B2jKBV3x8Owst/7fP9GBs
 6f6fl0maAaRuTR9113pkv1L94pXj
X-Google-Smtp-Source: APXvYqwaDXVj71aJSKD+835lTB8cPsJAsYVrakaR19SxapLpL1AJZxmzTuFvoCG7XFJWAjYIX1NmyA==
X-Received: by 2002:a37:4c14:: with SMTP id z20mr2034889qka.296.1567823901045; 
 Fri, 06 Sep 2019 19:38:21 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id i66sm4123360qkb.105.2019.09.06.19.38.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 19:38:20 -0700 (PDT)
Message-ID: <5D73181B.8090303@gmail.com>
Date: Fri, 06 Sep 2019 22:38:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Austin Adam <austinadam42@gmail.com>
References: <CAMKs6hekcVsif-U7CR-YORv2-kMDJX-35e==qZT_VskV3PwKWA@mail.gmail.com>
 <5D71CBFB.6060907@gmail.com> <E9AE1B80-DDFE-46CB-8204-6522F7D0118E@gmail.com>
 <DM5PR10MB1945B178DAD928BE0FF2367AABBA0@DM5PR10MB1945.namprd10.prod.outlook.com>
 <CAMKs6he3PpfREq=OEvb+31bCBmTiqoUFKA76-Gzr26P3Ak2wgw@mail.gmail.com>
 <CAMKs6hfQyUCcqy0NPFOaX7AUURbiwKDU9RZo7k03-Sefg4uNmA@mail.gmail.com>
 <5D72EB8C.9080803@gmail.com>
 <CAMKs6hfgmLiTASw6rDBP_jkdC8kRRG63ct6hfewt+HXRTaTk7A@mail.gmail.com>
In-Reply-To: <CAMKs6hfgmLiTASw6rDBP_jkdC8kRRG63ct6hfewt+HXRTaTk7A@mail.gmail.com>
Subject: Re: [USRP-users] USRP N310 Cannot ping or connect
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6333650539828755934=="
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
--===============6333650539828755934==
Content-Type: multipart/alternative;
 boundary="------------000404080703050909080709"

This is a multi-part message in MIME format.
--------------000404080703050909080709
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 09/06/2019 07:49 PM, Austin Adam wrote:
> Hi Marcus,
> We have been using the same adapter since even before we sent out the 
> device, and it always worked without fail. It makes sense what you are 
> saying, but because we had it working before, I feel like the issue is 
> deeper than that.
>
> I cannot ping the device in the current state.
>
> If I don't have an ethernet port on my laptop, then what do you 
> suggest as an alternative for the ethernet to usb3 adapter? I have a 
> USB-C port, maybe that is better?
>
> Thank you,
> Austin
Something you could try is to just trying hooking it to a machine with a 
native 1GiGe interface, configure it appropriately, and ping the N310.
   This doesn't require a UHD setup or anything on that machine. Just 
regular IP stuff.  This will help firm-up notions about what exactly
   might be going on.

What does "ethtool" say about the state of your USB3 ethernet interface 
when things are in this state?


>
> On Fri, Sep 6, 2019 at 4:28 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 09/06/2019 07:22 PM, Austin Adam via USRP-users wrote:
>>     Update:
>>     I updated my host computer to UHD version 3.14.1.0 and then
>>     afterwards, wrote that same version to the SD card. When I put
>>     the SD card back in the USRP and ran the 'uhd_find_devices'
>>     command, it actually showed up! Finally! But then, upon
>>     restarting the USRP by running "shutdown -h now" via the serial
>>     console, and then pressing the power button to start it back up,
>>     it was again unable to be read via 'uhd_find_devices'.
>>
>>     I don't know if this helps or not, but I am using an ethernet to
>>     usb adapter to connect from the sfp0 port to my laptop, which I
>>     know is not recommended, but it worked before this issue started
>>     so I know that is not contributing. However, I do notice that the
>>     little green light on the adapter is not lighting up when
>>     connected to the USRP. When it worked just a moment ago, the
>>     green light (on the adapter) was in fact on, and that's when we
>>     got excited. However, after a reboot, the light (on the adapter)
>>     is not on and I am unable to connect. Maybe that info will help
>>     diagnose the issue further. Just for clarification, the green
>>     light above the SFP0 port is green and has been on the whole time.
>>
>>     So frustrating though that it worked for a second and now it
>>     doesn't... but I feel like we are close!
>     Note that only USB*3* to 1GiGe ethernet adapters have even a
>     *hope* of working properly in this application.
>
>     When it's in this state, can you even *ping* the device?
>
>     This sounds like a PHY-layer issue, if the link light on your USB
>     adapter isn't coming on.
>
>
>>
>>     On Fri, Sep 6, 2019 at 11:04 AM Austin Adam
>>     <austinadam42@gmail.com <mailto:austinadam42@gmail.com>> wrote:
>>
>>         I am assuming that when I run 'uhd_find_devices' it shows the
>>         current version in the output, so if that is the case, then
>>         my host is on version *UHD_3.14.0.HEAD-0-g6875d061*, and the
>>         USRP is on version *UHD_3.14.0.0-0-g6875d061. *Just based on
>>         the output here:
>>
>>         /root@ni-n3xx-3177E63:~# uhd_find_devices
>>         [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
>>         *UHD_3.14.0.0-0-g6875d061*/
>>
>>         /admin@PC:~$ uhd_find_devices
>>         [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
>>         *UHD_3.14.0.HEAD-0-g6875d061*
>>         No UHD Devices Found/
>>
>>         Is there a alternative way to confirm the version on each one?
>>
>>         I can try to update my host computer to 3.14.1.0 however and
>>         see if that works. Because when I follow the instructions for
>>         the SD card, I don't necessarily choose a version. It just
>>         seems to update to whatever the current version is. So maybe
>>         it is on 3.14.1.0. I'll try that and get back to you.
>>
>>         On Fri, Sep 6, 2019 at 7:42 AM Robin Coxe
>>         <coxe@close-haul.com <mailto:coxe@close-haul.com>> wrote:
>>
>>             What version of UHD do you have installed on your host
>>             PC?  If there is a version mismatch between the host and
>>             the N310, you can have connectivity issues.
>>
>>             Another thing to try would be to follow the instructions
>>             in the N310 Getting Started guide to upgrade the SD card
>>             to the latest filesystem release (UHD v3.14.1.0, if
>>             memory serves) and then update UHD on your host PC.
>>
>>             RMA replaces the SD card with the latest one on the BOM,
>>             which in May when I left NI was v.3.13-something.
>>
>>             ------------------------------------------------------------------------
>>             *From:* USRP-users <usrp-users-bounces@lists.ettus.com
>>             <mailto:usrp-users-bounces@lists.ettus.com>> on behalf of
>>             Austin Adam via USRP-users <usrp-users@lists.ettus.com
>>             <mailto:usrp-users@lists.ettus.com>>
>>             *Sent:* Thursday, September 5, 2019 10:41 PM
>>             *To:* Marcus D. Leech
>>             *Cc:* usrp-users@lists.ettus.com
>>             <mailto:usrp-users@lists.ettus.com>
>>             *Subject:* Re: [USRP-users] USRP N310 Cannot ping or connect
>>             Hi there,
>>             Thank you for the response. I am indeed connected to the
>>             SFP0 port to a 1gigE connection. Everything was working
>>             fine before I sent out the USRP for repairs, so I don’t
>>             think it’s a cable or connection issue.
>>
>>             I appreciate you looking into the issue further,
>>             hopefully we can figure out!
>>
>>             Regards,
>>             Austin
>>
>>             On Sep 5, 2019, at 8:01 PM, Marcus D. Leech via
>>             USRP-users <usrp-users@lists.ettus.com
>>             <mailto:usrp-users@lists.ettus.com>> wrote:
>>
>>>             On 09/05/2019 10:28 PM, Austin Adam via USRP-users wrote:
>>>>             I recently had my USRP N310 sent out for repairs to fix
>>>>             one of the SMA connectors, and when it came back, there
>>>>             was a new SD card in the slot. When I turned it on
>>>>             after getting it back, I was unable to connect to it
>>>>             via 'uhd_find_devices'. I figured it was something with
>>>>             the SD card, so I eventually decided to rewrite the
>>>>             whole thing, in case it needed an update.
>>>>
>>>>             That still did not fix the issue, and after trying just
>>>>             about everything, and following every possible tutorial
>>>>             on the ettus docs, and checking the forums, I have
>>>>             decided to ask you guys for help.
>>>>
>>>>             Below you can find all the information about the UHD
>>>>             versions and the ifconfigs... hopefully that is enough
>>>>             to spark some ideas!
>>>>
>>>>             The USRP can find itself on localhost as you can see here:
>>>>
>>>>             /root@ni-n3xx-3177E63:~# uhd_find_devices
>>>>             [INFO] [UHD] linux; GNU C++ version 7.3.0;
>>>>             Boost_106600; UHD_3.14.0.0-0-g6875d061
>>>>             --------------------------------------------------
>>>>             -- UHD Device 0
>>>>             --------------------------------------------------
>>>>             Device Address:
>>>>                 serial: 3177E63
>>>>                 claimed: False
>>>>                 mgmt_addr: 127.0.0.1
>>>>                 product: n310
>>>>                 type: n3xx/
>>>>
>>>>             But when I run the command from the host machine, this
>>>>             is what I get:
>>>>             /
>>>>             admin@PC:~$ uhd_find_devices
>>>>             [INFO] [UHD] linux; GNU C++ version 8.3.0;
>>>>             Boost_106700; UHD_3.14.0.HEAD-0-g6875d061
>>>>             No UHD Devices Found/
>>>>             /
>>>>             /
>>>>             *Here is ifconfig from the USRP:*
>>>>             *
>>>>             *
>>>>             /root@ni-n3xx-3177E63:~# ifconfig
>>>>             eth0      Link encap:Ethernet  HWaddr 00:80:2F:24:01:14
>>>>                       UP BROADCAST MULTICAST  MTU:1500  Metric:1
>>>>                       RX packets:0 errors:0 dropped:0 overruns:0
>>>>             frame:0
>>>>                       TX packets:0 errors:0 dropped:0 overruns:0
>>>>             carrier:0
>>>>                       collisions:0 txqueuelen:1000
>>>>                       RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
>>>>                       Interrupt:27 Base address:0xb000
>>>>
>>>>             lo        Link encap:Local Loopback
>>>>                       inet addr:127.0.0.1  Mask:255.0.0.0
>>>>                       UP LOOPBACK RUNNING  MTU:65536  Metric:1
>>>>                       RX packets:89 errors:0 dropped:0 overruns:0
>>>>             frame:0
>>>>                       TX packets:89 errors:0 dropped:0 overruns:0
>>>>             carrier:0
>>>>                       collisions:0 txqueuelen:1000
>>>>                       RX bytes:7480 (7.3 KiB)  TX bytes:7480 (7.3 KiB)
>>>>
>>>>             sfp0      Link encap:Ethernet  HWaddr 00:80:2F:24:01:15
>>>>                       inet addr:192.168.10.2  Bcast:192.168.10.255
>>>>              Mask:255.255.255.0
>>>>                       UP BROADCAST RUNNING MULTICAST  MTU:8000
>>>>              Metric:1
>>>>                       RX packets:0 errors:0 dropped:0 overruns:0
>>>>             frame:0
>>>>                       TX packets:14 errors:0 dropped:0 overruns:0
>>>>             carrier:0
>>>>                       collisions:0 txqueuelen:1000
>>>>                       RX bytes:0 (0.0 B)  TX bytes:2577 (2.5 KiB)
>>>>
>>>>             sfp1      Link encap:Ethernet  HWaddr 00:80:2F:24:01:16
>>>>                       UP BROADCAST MULTICAST  MTU:8000  Metric:1
>>>>                       RX packets:0 errors:0 dropped:0 overruns:0
>>>>             frame:0
>>>>                       TX packets:1 errors:0 dropped:0 overruns:0
>>>>             carrier:0
>>>>                       collisions:0 txqueuelen:1000
>>>>                       RX bytes:0 (0.0 B)  TX bytes:62 (62.0 B)/
>>>>
>>>>             *And here is ifconfig from the host machine:
>>>>
>>>>             *
>>>>             /ugikie@Austin-Blade:~$ ifconfig
>>>>             enx70886b87f283:
>>>>             flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000
>>>>                     inet 192.168.10.1  netmask 255.255.255.0
>>>>              broadcast 192.168.10.255
>>>>                     inet6 fe80::73b:c879:60cf:8127  prefixlen 64
>>>>              scopeid 0x20<link>
>>>>                     ether 70:88:6b:87:f2:83  txqueuelen 1000
>>>>              (Ethernet)
>>>>                     RX packets 0  bytes 0 (0.0 B)
>>>>                     RX errors 0  dropped 0  overruns 0  frame 0
>>>>                     TX packets 46  bytes 4966 (4.9 KB)
>>>>                     TX errors 0  dropped 0 overruns 0  carrier 0
>>>>              collisions 0
>>>>
>>>>             lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
>>>>                     inet 127.0.0.1  netmask 255.0.0.0
>>>>                     inet6 ::1  prefixlen 128  scopeid 0x10<host>
>>>>                     loop  txqueuelen 1000  (Local Loopback)
>>>>                     RX packets 5037  bytes 466961 (466.9 KB)
>>>>                     RX errors 0  dropped 0  overruns 0  frame 0
>>>>                     TX packets 5037  bytes 466961 (466.9 KB)
>>>>                     TX errors 0  dropped 0 overruns 0  carrier 0
>>>>              collisions 0
>>>>
>>>>             wlp59s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>
>>>>              mtu 1500
>>>>                     inet 172.28.229.114  netmask 255.255.240.0
>>>>              broadcast 172.28.239.255
>>>>                     inet6 fe80::c9b4:5623:34c4:ae56  prefixlen 64
>>>>              scopeid 0x20<link>
>>>>                     ether 9c:b6:d0:18:53:3f  txqueuelen 1000
>>>>              (Ethernet)
>>>>                     RX packets 110339  bytes 123997000 (123.9 MB)
>>>>                     RX errors 0  dropped 0  overruns 0  frame 0
>>>>                     TX packets 47191  bytes 11048840 (11.0 MB)
>>>>                     TX errors 0  dropped 0 overruns 0  carrier 0
>>>>              collisions 0/
>>>>
>>>>             I tried broadcast pinging 192.168.10.255  and
>>>>             192.168.10.2 from the host but didn't get a response
>>>>             from the N310 or anything for that matter.
>>>>
>>>>             I hope someone out there can help me out! Thank you in
>>>>             advance :)
>>>>
>>>>             Best,
>>>>             Austin
>>>>
>>>>
>>>             So, easy stuff first--you are plugged into the SFP0 port
>>>             on the N310, and not one of the two others?
>>>
>>>
>>>
>>>             _______________________________________________
>>>             USRP-users mailing list
>>>             USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------000404080703050909080709
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/06/2019 07:49 PM, Austin Adam
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAMKs6hfgmLiTASw6rDBP_jkdC8kRRG63ct6hfewt+HXRTaTk7A@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">Hi Marcus, 
          <div>We have been using the same adapter since even before we
            sent out the device, and it always worked without fail. It
            makes sense what you are saying, but because we had it
            working before, I feel like the issue is deeper than that.</div>
          <div><br>
          </div>
          <div>I cannot ping the device in the current state.</div>
          <div><br>
          </div>
          <div>If I don't have an ethernet port on my laptop, then what
            do you suggest as an alternative for the ethernet to usb3
            adapter? I have a USB-C port, maybe that is better?</div>
          <div><br>
          </div>
          <div>Thank you,</div>
          <div>Austin</div>
        </div>
      </div>
    </blockquote>
    Something you could try is to just trying hooking it to a machine
    with a native 1GiGe interface, configure it appropriately, and ping
    the N310.<br>
      This doesn't require a UHD setup or anything on that machine. 
    Just regular IP stuff.  This will help firm-up notions about what
    exactly<br>
      might be going on.<br>
    <br>
    What does "ethtool" say about the state of your USB3 ethernet
    interface when things are in this state?<br>
    <br>
    <br>
    <blockquote
cite="mid:CAMKs6hfgmLiTASw6rDBP_jkdC8kRRG63ct6hfewt+HXRTaTk7A@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Fri, Sep 6, 2019 at 4:28
            PM Marcus D. Leech via USRP-users &lt;<a
              moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <div class="gmail-m_-7402009319200174912moz-cite-prefix">On
                09/06/2019 07:22 PM, Austin Adam via USRP-users wrote:<br>
              </div>
              <blockquote type="cite">
                <div dir="ltr">Update:<br>
                  I updated my host computer to UHD version 3.14.1.0 and
                  then afterwards, wrote that same version to the SD
                  card. When I put the SD card back in the USRP and ran
                  the 'uhd_find_devices' command, it actually showed up!
                  Finally! But then, upon restarting the USRP by running
                  "shutdown -h now" via the serial console, and then
                  pressing the power button to start it back up, it was
                  again unable to be read via 'uhd_find_devices'.
                  <div><br>
                  </div>
                  <div>I don't know if this helps or not, but I am using
                    an ethernet to usb adapter to connect from the sfp0
                    port to my laptop, which I know is not recommended,
                    but it worked before this issue started so I know
                    that is not contributing. However, I do notice that
                    the little green light on the adapter is not
                    lighting up when connected to the USRP. When it
                    worked just a moment ago, the green light (on the
                    adapter) was in fact on, and that's when we got
                    excited. However, after a reboot, the light (on the
                    adapter) is not on and I am unable to connect. Maybe
                    that info will help diagnose the issue further. Just
                    for clarification, the green light above the SFP0
                    port is green and has been on the whole time.</div>
                  <div><br>
                  </div>
                  <div>So frustrating though that it worked for a second
                    and now it doesn't... but I feel like we are close!</div>
                </div>
              </blockquote>
              Note that only USB*3* to 1GiGe ethernet adapters have even
              a *hope* of working properly in this application.<br>
              <br>
              When it's in this state, can you even *ping* the device?<br>
              <br>
              This sounds like a PHY-layer issue, if the link light on
              your USB adapter isn't coming on.<br>
              <br>
              <br>
              <blockquote type="cite"><br>
                <div class="gmail_quote">
                  <div dir="ltr" class="gmail_attr">On Fri, Sep 6, 2019
                    at 11:04 AM Austin Adam &lt;<a
                      moz-do-not-send="true"
                      href="mailto:austinadam42@gmail.com"
                      target="_blank">austinadam42@gmail.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class="gmail_quote" style="margin:0px 0px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div dir="ltr">I am assuming that when I run
                      'uhd_find_devices' it shows the current version in
                      the output, so if that is the case, then my host
                      is on version <b>UHD_3.14.0.HEAD-0-g6875d061</b>,
                      and the USRP is on version <b>UHD_3.14.0.0-0-g6875d061.
                      </b>Just based on the output here: 
                      <div><br>
                      </div>
                      <div><i>root@ni-n3xx-3177E63:~# uhd_find_devices<br>
                          [INFO] [UHD] linux; GNU C++ version 7.3.0;
                          Boost_106600; <b>UHD_3.14.0.0-0-g6875d061</b></i><br>
                        <br>
                        <i>admin@PC:~$ uhd_find_devices<br>
                          [INFO] [UHD] linux; GNU C++ version 8.3.0;
                          Boost_106700; <b>UHD_3.14.0.HEAD-0-g6875d061</b><br>
                          No UHD Devices Found</i><br>
                        <br>
                      </div>
                      <div>Is there a alternative way to confirm the
                        version on each one? </div>
                      <div><br>
                      </div>
                      <div>I can try to update my host computer to
                        3.14.1.0 however and see if that works. Because
                        when I follow the instructions for the SD card,
                        I don't necessarily choose a version. It just
                        seems to update to whatever the current version
                        is. So maybe it is on 3.14.1.0. I'll try that
                        and get back to you.</div>
                    </div>
                    <br>
                    <div class="gmail_quote">
                      <div dir="ltr" class="gmail_attr">On Fri, Sep 6,
                        2019 at 7:42 AM Robin Coxe &lt;<a
                          moz-do-not-send="true"
                          href="mailto:coxe@close-haul.com"
                          target="_blank">coxe@close-haul.com</a>&gt;
                        wrote:<br>
                      </div>
                      <blockquote class="gmail_quote" style="margin:0px
                        0px 0px 0.8ex;border-left:1px solid
                        rgb(204,204,204);padding-left:1ex">
                        <div>
                          <div>
                            <div>
                              <div>
                                <div style="direction:ltr">What version
                                  of UHD do you have installed on your
                                  host PC?  If there is a version
                                  mismatch between the host and the
                                  N310, you can have connectivity
                                  issues.  </div>
                                <div><br>
                                </div>
                                <div style="direction:ltr">Another thing
                                  to try would be to follow the
                                  instructions in the N310 Getting
                                  Started guide to upgrade the SD card
                                  to the latest filesystem release (UHD
                                  v3.14.1.0, if memory serves) and then
                                  update UHD on your host PC.  </div>
                                <div><br>
                                </div>
                                <div style="direction:ltr">RMA replaces
                                  the SD card with the latest one on the
                                  BOM, which in May when I left NI was
                                  v.3.13-something.  </div>
                              </div>
                              <div><br>
                              </div>
                            </div>
                            <div> </div>
                            <hr style="display:inline-block;width:98%">
                            <div
id="gmail-m_-7402009319200174912gmail-m_-7553324049884054732gmail-m_-749495050533591277divRplyFwdMsg"
                              dir="dir=&quot;ltr&quot;"><font
                                style="font-size:11pt" color="#000000"
                                face="Calibri, sans-serif"><b>From:</b>
                                USRP-users &lt;<a moz-do-not-send="true"
href="mailto:usrp-users-bounces@lists.ettus.com" target="_blank">usrp-users-bounces@lists.ettus.com</a>&gt;

                                on behalf of Austin Adam via USRP-users
                                &lt;<a moz-do-not-send="true"
                                  href="mailto:usrp-users@lists.ettus.com"
                                  target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                                <b>Sent:</b> Thursday, September 5, 2019
                                10:41 PM<br>
                                <b>To:</b> Marcus D. Leech<br>
                                <b>Cc:</b> <a moz-do-not-send="true"
                                  href="mailto:usrp-users@lists.ettus.com"
                                  target="_blank">usrp-users@lists.ettus.com</a><br>
                                <b>Subject:</b> Re: [USRP-users] USRP
                                N310 Cannot ping or connect
                                <div> </div>
                              </font></div>
                            Hi there,
                            <div>Thank you for the response. I am indeed
                              connected to the SFP0 port to a 1gigE
                              connection. Everything was working fine
                              before I sent out the USRP for repairs, so
                              I don’t think it’s a cable or connection
                              issue. </div>
                            <div><br>
                            </div>
                            <div>I appreciate you looking into the issue
                              further, hopefully we can figure out!<br>
                              <br>
                              <div dir="ltr">Regards,
                                <div>Austin</div>
                              </div>
                              <div dir="ltr"><br>
                                On Sep 5, 2019, at 8:01 PM, Marcus D.
                                Leech via USRP-users &lt;<a
                                  moz-do-not-send="true"
                                  href="mailto:usrp-users@lists.ettus.com"
                                  target="_blank">usrp-users@lists.ettus.com</a>&gt;

                                wrote:<br>
                                <br>
                              </div>
                              <blockquote type="cite">
                                <div dir="ltr">
                                  <div
class="gmail-m_-7402009319200174912gmail-m_-7553324049884054732gmail-m_-749495050533591277moz-cite-prefix">On

                                    09/05/2019 10:28 PM, Austin Adam via
                                    USRP-users wrote:<br>
                                  </div>
                                  <blockquote type="cite">
                                    <div dir="ltr">I recently had my
                                      USRP N310 sent out for repairs to
                                      fix one of the SMA connectors, and
                                      when it came back, there was a new
                                      SD card in the slot. When I turned
                                      it on after getting it back, I was
                                      unable to connect to it via
                                      'uhd_find_devices'. I figured it
                                      was something with the SD card, so
                                      I eventually decided to
                                      rewrite the whole thing, in case
                                      it needed an update.
                                      <div><br>
                                      </div>
                                      <div>That still did not fix the
                                        issue, and after trying just
                                        about everything, and following
                                        every possible tutorial on the
                                        ettus docs, and checking the
                                        forums, I have decided to ask
                                        you guys for help.</div>
                                      <div><br>
                                      </div>
                                      <div>Below you can find all the
                                        information about the UHD
                                        versions and the ifconfigs...
                                        hopefully that is enough to
                                        spark some ideas!</div>
                                      <div><br>
                                      </div>
                                      <div>The USRP can find itself on
                                        localhost as you can see here:</div>
                                      <div><br>
                                      </div>
                                      <div>
                                        <div><i>root@ni-n3xx-3177E63:~#
                                            uhd_find_devices<br>
                                            [INFO] [UHD] linux; GNU C++
                                            version 7.3.0; Boost_106600;
                                            UHD_3.14.0.0-0-g6875d061<br>
--------------------------------------------------<br>
                                            -- UHD Device 0<br>
--------------------------------------------------<br>
                                            Device Address:<br>
                                                serial: 3177E63<br>
                                                claimed: False<br>
                                                mgmt_addr: 127.0.0.1<br>
                                                product: n310<br>
                                                type: n3xx</i><br>
                                        </div>
                                        <div><br>
                                        </div>
                                        <div>But when I run the command
                                          from the host machine, this is
                                          what I get:</div>
                                        <div><i><br>
                                            admin@PC:~$ uhd_find_devices<br>
                                            [INFO] [UHD] linux; GNU C++
                                            version 8.3.0; Boost_106700;
                                            UHD_3.14.0.HEAD-0-g6875d061<br>
                                            No UHD Devices Found</i></div>
                                      </div>
                                      <div><i><br>
                                        </i></div>
                                      <div><b>Here is ifconfig from the
                                          USRP:</b></div>
                                      <div><b><br>
                                        </b></div>
                                      <div><font color="#000000"><i>root@ni-n3xx-3177E63:~#

                                            ifconfig<br>
                                            eth0      Link
                                            encap:Ethernet  HWaddr
                                            00:80:2F:24:01:14<br>
                                                      UP BROADCAST
                                            MULTICAST  MTU:1500
                                             Metric:1<br>
                                                      RX packets:0
                                            errors:0 dropped:0
                                            overruns:0 frame:0<br>
                                                      TX packets:0
                                            errors:0 dropped:0
                                            overruns:0 carrier:0<br>
                                                      collisions:0
                                            txqueuelen:1000<br>
                                                      RX bytes:0 (0.0 B)
                                             TX bytes:0 (0.0 B)<br>
                                                      Interrupt:27 Base
                                            address:0xb000<br>
                                            <br>
                                            lo        Link encap:Local
                                            Loopback<br>
                                                      inet
                                            addr:127.0.0.1
                                             Mask:255.0.0.0<br>
                                                      UP LOOPBACK
                                            RUNNING  MTU:65536  Metric:1<br>
                                                      RX packets:89
                                            errors:0 dropped:0
                                            overruns:0 frame:0<br>
                                                      TX packets:89
                                            errors:0 dropped:0
                                            overruns:0 carrier:0<br>
                                                      collisions:0
                                            txqueuelen:1000<br>
                                                      RX bytes:7480 (7.3
                                            KiB)  TX bytes:7480 (7.3
                                            KiB)<br>
                                            <br>
                                            sfp0      Link
                                            encap:Ethernet  HWaddr
                                            00:80:2F:24:01:15<br>
                                                      inet
                                            addr:192.168.10.2
                                             Bcast:192.168.10.255
                                             Mask:255.255.255.0<br>
                                                      UP BROADCAST
                                            RUNNING MULTICAST  MTU:8000
                                             Metric:1<br>
                                                      RX packets:0
                                            errors:0 dropped:0
                                            overruns:0 frame:0<br>
                                                      TX packets:14
                                            errors:0 dropped:0
                                            overruns:0 carrier:0<br>
                                                      collisions:0
                                            txqueuelen:1000<br>
                                                      RX bytes:0 (0.0 B)
                                             TX bytes:2577 (2.5 KiB)<br>
                                            <br>
                                            sfp1      Link
                                            encap:Ethernet  HWaddr
                                            00:80:2F:24:01:16<br>
                                                      UP BROADCAST
                                            MULTICAST  MTU:8000
                                             Metric:1<br>
                                                      RX packets:0
                                            errors:0 dropped:0
                                            overruns:0 frame:0<br>
                                                      TX packets:1
                                            errors:0 dropped:0
                                            overruns:0 carrier:0<br>
                                                      collisions:0
                                            txqueuelen:1000<br>
                                                      RX bytes:0 (0.0 B)
                                             TX bytes:62 (62.0 B)</i> </font> <br>
                                      </div>
                                      <div><br>
                                      </div>
                                      <div><b>And here is ifconfig from
                                          the host machine:<br>
                                          <br>
                                        </b></div>
                                      <div>
                                        <div><i>ugikie@Austin-Blade:~$
                                            ifconfig<br>
                                            enx70886b87f283:
                                            flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;
                                             mtu 8000<br>
                                                    inet 192.168.10.1
                                             netmask 255.255.255.0
                                             broadcast 192.168.10.255<br>
                                                    inet6
                                            fe80::73b:c879:60cf:8127
                                             prefixlen 64  scopeid
                                            0x20&lt;link&gt;<br>
                                                    ether
                                            70:88:6b:87:f2:83
                                             txqueuelen 1000  (Ethernet)<br>
                                                    RX packets 0  bytes
                                            0 (0.0 B)<br>
                                                    RX errors 0  dropped
                                            0  overruns 0  frame 0<br>
                                                    TX packets 46  bytes
                                            4966 (4.9 KB)<br>
                                                    TX errors 0  dropped
                                            0 overruns 0  carrier 0
                                             collisions 0<br>
                                            <br>
                                            lo:
                                            flags=73&lt;UP,LOOPBACK,RUNNING&gt;
                                             mtu 65536<br>
                                                    inet 127.0.0.1
                                             netmask 255.0.0.0<br>
                                                    inet6 ::1  prefixlen
                                            128  scopeid
                                            0x10&lt;host&gt;<br>
                                                    loop  txqueuelen
                                            1000  (Local Loopback)<br>
                                                    RX packets 5037
                                             bytes 466961 (466.9 KB)<br>
                                                    RX errors 0  dropped
                                            0  overruns 0  frame 0<br>
                                                    TX packets 5037
                                             bytes 466961 (466.9 KB)<br>
                                                    TX errors 0  dropped
                                            0 overruns 0  carrier 0
                                             collisions 0<br>
                                            <br>
                                            wlp59s0:
                                            flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;
                                             mtu 1500<br>
                                                    inet 172.28.229.114
                                             netmask 255.255.240.0
                                             broadcast 172.28.239.255<br>
                                                    inet6
                                            fe80::c9b4:5623:34c4:ae56
                                             prefixlen 64  scopeid
                                            0x20&lt;link&gt;<br>
                                                    ether
                                            9c:b6:d0:18:53:3f
                                             txqueuelen 1000  (Ethernet)<br>
                                                    RX packets 110339
                                             bytes 123997000 (123.9 MB)<br>
                                                    RX errors 0  dropped
                                            0  overruns 0  frame 0<br>
                                                    TX packets 47191
                                             bytes 11048840 (11.0 MB)<br>
                                                    TX errors 0  dropped
                                            0 overruns 0  carrier 0
                                             collisions 0</i><br>
                                        </div>
                                        <div><br>
                                        </div>
                                        <div>I tried broadcast pinging
                                          192.168.10.255  and
                                          192.168.10.2 from the host but
                                          didn't get a response from the
                                          N310 or anything for that
                                          matter.</div>
                                        <div><br>
                                        </div>
                                        <div>I hope someone out there
                                          can help me out! Thank you in
                                          advance :)</div>
                                        <div><br>
                                        </div>
                                        <div>Best,</div>
                                        <div>Austin</div>
                                        <div><br>
                                        </div>
                                      </div>
                                    </div>
                                    <br>
                                  </blockquote>
                                  So, easy stuff first--you are plugged
                                  into the SFP0 port on the N310, and
                                  not one of the two others?<br>
                                  <br>
                                  <br>
                                  <br>
                                </div>
                              </blockquote>
                              <blockquote type="cite">
                                <div dir="ltr"><span>_______________________________________________</span><br>
                                  <span>USRP-users mailing list</span><br>
                                  <span><a moz-do-not-send="true"
                                      href="mailto:USRP-users@lists.ettus.com"
                                      target="_blank">USRP-users@lists.ettus.com</a></span><br>
                                  <span><a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                      target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
                                </div>
                              </blockquote>
                            </div>
                          </div>
                        </div>
                      </blockquote>
                    </div>
                  </blockquote>
                </div>
                <br>
                <fieldset
                  class="gmail-m_-7402009319200174912mimeAttachmentHeader"></fieldset>
                <br>
                <pre>_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" class="gmail-m_-7402009319200174912moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" class="gmail-m_-7402009319200174912moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
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
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------000404080703050909080709--


--===============6333650539828755934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6333650539828755934==--

