Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F2AAB0CE
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 05:02:05 +0200 (CEST)
Received: from [::1] (port=60156 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i64Ve-00064N-7X; Thu, 05 Sep 2019 23:02:02 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:38349)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i64Va-000603-95
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 23:01:58 -0400
Received: by mail-qk1-f178.google.com with SMTP id x5so4307971qkh.5
 for <usrp-users@lists.ettus.com>; Thu, 05 Sep 2019 20:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=mDKX9QQajgpz6VkCPrkt6/IDx15yycpuH42MH5Lh8Mo=;
 b=CrK6fOytmONyf6gFwcHIkOv4x234hPNkA5NTaKe6Jc1k6brvKndu4qMOVpmPK4aGOW
 zBUwXHwzq+59oVHR5oa/e6PktW+qcN6ohCgf8Y5w20SSYHGbFrQ3Okpy315ShGcJw2NF
 j5E5zOjDgNV2IrFjT+DBtlnFBElombdmfkTizjSlvlruZbTJn4f5eRdBytn4yyUvP+A3
 d22IOJttPgzJSBrMxl1RoY057CAZHRRXOCZVFMiT/M1aRuS7kdkTTiPOc7BJG/9TWRhr
 p8340PjRHnfmTCV5xA4tet+yu0royJYKJeY2EqOVLOtpAmBF3a+hnpyyy/U3zTWQO2Pv
 bmbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=mDKX9QQajgpz6VkCPrkt6/IDx15yycpuH42MH5Lh8Mo=;
 b=oY/SCDI28aByd+U4uh6AzzKt1iTOl30+Q92OYx0OcgJhmIlxecRfqaZBzfDK7OWXE0
 BghRdTM2pL65278/FqydG5ksoJNODWn3uMTYfSsGynCrVRk25cznxweLLX7AvwE+zFyX
 CFt3h++Gp5z4Q5C7HG9/71EIH7fcYvGSOmpWU2v/HojQzhr1SyRC/l1YXcphdbU4L80x
 VzE+QuhbmdK8wIGpYFIsnzegfMr+Hyu51TZ+GtZvvybFLV4wUuuFP4BM7Kq6umINEBtj
 YdD8QqSFdruT1bcRDbZrkxZv3Kh7rrLADvKz4MNfff1dc5RZS0LjllYvBKzJkaM0bnEe
 fnoA==
X-Gm-Message-State: APjAAAWYhCei8VrFt0ZDrqQqBvXazzFZ5s6iGjJMOK+JqMCsK9sToS/G
 sY/yfHXULlaBDOsxsVdJBIExbr3i
X-Google-Smtp-Source: APXvYqx/1m5cOUEbcA4DpQOhIMJ+d5AY9x7K1zCt9qXyGJNqaxgGjY83NgCwfwV5MjdCiELYYO4xUg==
X-Received: by 2002:a37:6250:: with SMTP id w77mr6375195qkb.153.1567738877533; 
 Thu, 05 Sep 2019 20:01:17 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20]) by smtp.googlemail.com with ESMTPSA id
 b130sm2348529qkc.100.2019.09.05.20.01.16
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 20:01:16 -0700 (PDT)
Message-ID: <5D71CBFB.6060907@gmail.com>
Date: Thu, 05 Sep 2019 23:01:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMKs6hekcVsif-U7CR-YORv2-kMDJX-35e==qZT_VskV3PwKWA@mail.gmail.com>
In-Reply-To: <CAMKs6hekcVsif-U7CR-YORv2-kMDJX-35e==qZT_VskV3PwKWA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3409355128642129605=="
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
--===============3409355128642129605==
Content-Type: multipart/alternative;
 boundary="------------020201010702020302000409"

This is a multi-part message in MIME format.
--------------020201010702020302000409
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/05/2019 10:28 PM, Austin Adam via USRP-users wrote:
> I recently had my USRP N310 sent out for repairs to fix one of the SMA 
> connectors, and when it came back, there was a new SD card in the 
> slot. When I turned it on after getting it back, I was unable to 
> connect to it via 'uhd_find_devices'. I figured it was something with 
> the SD card, so I eventually decided to rewrite the whole thing, in 
> case it needed an update.
>
> That still did not fix the issue, and after trying just about 
> everything, and following every possible tutorial on the ettus docs, 
> and checking the forums, I have decided to ask you guys for help.
>
> Below you can find all the information about the UHD versions and the 
> ifconfigs... hopefully that is enough to spark some ideas!
>
> The USRP can find itself on localhost as you can see here:
>
> /root@ni-n3xx-3177E63:~# uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; 
> UHD_3.14.0.0-0-g6875d061
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 3177E63
>     claimed: False
>     mgmt_addr: 127.0.0.1
>     product: n310
>     type: n3xx/
>
> But when I run the command from the host machine, this is what I get:
> /
> admin@PC:~$ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; 
> UHD_3.14.0.HEAD-0-g6875d061
> No UHD Devices Found/
> /
> /
> *Here is ifconfig from the USRP:*
> *
> *
> /root@ni-n3xx-3177E63:~# ifconfig
> eth0      Link encap:Ethernet  HWaddr 00:80:2F:24:01:14
>           UP BROADCAST MULTICAST  MTU:1500  Metric:1
>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
>           Interrupt:27 Base address:0xb000
>
> lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           UP LOOPBACK RUNNING  MTU:65536  Metric:1
>           RX packets:89 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:89 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:7480 (7.3 KiB)  TX bytes:7480 (7.3 KiB)
>
> sfp0      Link encap:Ethernet  HWaddr 00:80:2F:24:01:15
>           inet addr:192.168.10.2  Bcast:192.168.10.255  Mask:255.255.255.0
>           UP BROADCAST RUNNING MULTICAST  MTU:8000  Metric:1
>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:14 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:0 (0.0 B)  TX bytes:2577 (2.5 KiB)
>
> sfp1      Link encap:Ethernet  HWaddr 00:80:2F:24:01:16
>           UP BROADCAST MULTICAST  MTU:8000  Metric:1
>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:1 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:0 (0.0 B)  TX bytes:62 (62.0 B)/
>
> *And here is ifconfig from the host machine:
>
> *
> /ugikie@Austin-Blade:~$ ifconfig
> enx70886b87f283: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000
>         inet 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.255
>         inet6 fe80::73b:c879:60cf:8127  prefixlen 64  scopeid 0x20<link>
>         ether 70:88:6b:87:f2:83  txqueuelen 1000  (Ethernet)
>         RX packets 0  bytes 0 (0.0 B)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 46  bytes 4966 (4.9 KB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
> lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
>         inet 127.0.0.1  netmask 255.0.0.0
>         inet6 ::1  prefixlen 128  scopeid 0x10<host>
>         loop  txqueuelen 1000  (Local Loopback)
>         RX packets 5037  bytes 466961 (466.9 KB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 5037  bytes 466961 (466.9 KB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
> wlp59s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>         inet 172.28.229.114  netmask 255.255.240.0  broadcast 
> 172.28.239.255
>         inet6 fe80::c9b4:5623:34c4:ae56  prefixlen 64  scopeid 0x20<link>
>         ether 9c:b6:d0:18:53:3f  txqueuelen 1000  (Ethernet)
>         RX packets 110339  bytes 123997000 (123.9 MB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 47191  bytes 11048840 (11.0 MB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0/
>
> I tried broadcast pinging 192.168.10.255  and 192.168.10.2 from the 
> host but didn't get a response from the N310 or anything for that matter.
>
> I hope someone out there can help me out! Thank you in advance :)
>
> Best,
> Austin
>
>
So, easy stuff first--you are plugged into the SFP0 port on the N310, 
and not one of the two others?




--------------020201010702020302000409
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/05/2019 10:28 PM, Austin Adam via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAMKs6hekcVsif-U7CR-YORv2-kMDJX-35e==qZT_VskV3PwKWA@mail.gmail.com"
      type="cite">
      <div dir="ltr">I recently had my USRP N310 sent out for repairs to
        fix one of the SMA connectors, and when it came back, there was
        a new SD card in the slot. When I turned it on after getting it
        back, I was unable to connect to it via 'uhd_find_devices'. I
        figured it was something with the SD card, so I eventually
        decided to rewrite the whole thing, in case it needed an update.
        <div><br>
        </div>
        <div>That still did not fix the issue, and after trying just
          about everything, and following every possible tutorial on the
          ettus docs, and checking the forums, I have decided to ask you
          guys for help.</div>
        <div><br>
        </div>
        <div>Below you can find all the information about the UHD
          versions and the ifconfigs... hopefully that is enough to
          spark some ideas!</div>
        <div><br>
        </div>
        <div>The USRP can find itself on localhost as you can see here:</div>
        <div><br>
        </div>
        <div>
          <div><i>root@ni-n3xx-3177E63:~# uhd_find_devices<br>
              [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
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
          <div>But when I run the command from the host machine, this is
            what I get:</div>
          <div><i><br>
              admin@PC:~$ uhd_find_devices<br>
              [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
              UHD_3.14.0.HEAD-0-g6875d061<br>
              No UHD Devices Found</i></div>
        </div>
        <div><i><br>
          </i></div>
        <div><b>Here is ifconfig from the USRP:</b></div>
        <div><b><br>
          </b></div>
        <div><font color="#000000"><i style="">root@ni-n3xx-3177E63:~#
              ifconfig<br>
              eth0      Link encap:Ethernet  HWaddr 00:80:2F:24:01:14<br>
                        UP BROADCAST MULTICAST  MTU:1500  Metric:1<br>
                        RX packets:0 errors:0 dropped:0 overruns:0
              frame:0<br>
                        TX packets:0 errors:0 dropped:0 overruns:0
              carrier:0<br>
                        collisions:0 txqueuelen:1000<br>
                        RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)<br>
                        Interrupt:27 Base address:0xb000<br>
              <br>
              lo        Link encap:Local Loopback<br>
                        inet addr:127.0.0.1  Mask:255.0.0.0<br>
                        UP LOOPBACK RUNNING  MTU:65536  Metric:1<br>
                        RX packets:89 errors:0 dropped:0 overruns:0
              frame:0<br>
                        TX packets:89 errors:0 dropped:0 overruns:0
              carrier:0<br>
                        collisions:0 txqueuelen:1000<br>
                        RX bytes:7480 (7.3 KiB)  TX bytes:7480 (7.3 KiB)<br>
              <br>
              sfp0      Link encap:Ethernet  HWaddr 00:80:2F:24:01:15<br>
                        inet addr:192.168.10.2  Bcast:192.168.10.255
               Mask:255.255.255.0<br>
                        UP BROADCAST RUNNING MULTICAST  MTU:8000
               Metric:1<br>
                        RX packets:0 errors:0 dropped:0 overruns:0
              frame:0<br>
                        TX packets:14 errors:0 dropped:0 overruns:0
              carrier:0<br>
                        collisions:0 txqueuelen:1000<br>
                        RX bytes:0 (0.0 B)  TX bytes:2577 (2.5 KiB)<br>
              <br>
              sfp1      Link encap:Ethernet  HWaddr 00:80:2F:24:01:16<br>
                        UP BROADCAST MULTICAST  MTU:8000  Metric:1<br>
                        RX packets:0 errors:0 dropped:0 overruns:0
              frame:0<br>
                        TX packets:1 errors:0 dropped:0 overruns:0
              carrier:0<br>
                        collisions:0 txqueuelen:1000<br>
                        RX bytes:0 (0.0 B)  TX bytes:62 (62.0 B)</i> </font> <br>
        </div>
        <div><br>
        </div>
        <div><b>And here is ifconfig from the host machine:<br>
            <br>
          </b></div>
        <div>
          <div><i>ugikie@Austin-Blade:~$ ifconfig<br>
              enx70886b87f283:
              flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 8000<br>
                      inet 192.168.10.1  netmask 255.255.255.0
               broadcast 192.168.10.255<br>
                      inet6 fe80::73b:c879:60cf:8127  prefixlen 64
               scopeid 0x20&lt;link&gt;<br>
                      ether 70:88:6b:87:f2:83  txqueuelen 1000
               (Ethernet)<br>
                      RX packets 0  bytes 0 (0.0 B)<br>
                      RX errors 0  dropped 0  overruns 0  frame 0<br>
                      TX packets 46  bytes 4966 (4.9 KB)<br>
                      TX errors 0  dropped 0 overruns 0  carrier 0
               collisions 0<br>
              <br>
              lo: flags=73&lt;UP,LOOPBACK,RUNNING&gt;  mtu 65536<br>
                      inet 127.0.0.1  netmask 255.0.0.0<br>
                      inet6 ::1  prefixlen 128  scopeid 0x10&lt;host&gt;<br>
                      loop  txqueuelen 1000  (Local Loopback)<br>
                      RX packets 5037  bytes 466961 (466.9 KB)<br>
                      RX errors 0  dropped 0  overruns 0  frame 0<br>
                      TX packets 5037  bytes 466961 (466.9 KB)<br>
                      TX errors 0  dropped 0 overruns 0  carrier 0
               collisions 0<br>
              <br>
              wlp59s0: flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;
               mtu 1500<br>
                      inet 172.28.229.114  netmask 255.255.240.0
               broadcast 172.28.239.255<br>
                      inet6 fe80::c9b4:5623:34c4:ae56  prefixlen 64
               scopeid 0x20&lt;link&gt;<br>
                      ether 9c:b6:d0:18:53:3f  txqueuelen 1000
               (Ethernet)<br>
                      RX packets 110339  bytes 123997000 (123.9 MB)<br>
                      RX errors 0  dropped 0  overruns 0  frame 0<br>
                      TX packets 47191  bytes 11048840 (11.0 MB)<br>
                      TX errors 0  dropped 0 overruns 0  carrier 0
               collisions 0</i><br>
          </div>
          <div><br>
          </div>
          <div>I tried broadcast pinging 192.168.10.255  and
            192.168.10.2 from the host but didn't get a response from
            the N310 or anything for that matter.</div>
          <div><br>
          </div>
          <div>I hope someone out there can help me out! Thank you in
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
    So, easy stuff first--you are plugged into the SFP0 port on the
    N310, and not one of the two others?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------020201010702020302000409--


--===============3409355128642129605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3409355128642129605==--

