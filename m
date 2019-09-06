Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D34EAB0E3
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 05:16:57 +0200 (CEST)
Received: from [::1] (port=36568 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i64k0-0007DW-Ex; Thu, 05 Sep 2019 23:16:52 -0400
Received: from mail-io1-f51.google.com ([209.85.166.51]:38686)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1i64jw-00078A-Ft
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 23:16:48 -0400
Received: by mail-io1-f51.google.com with SMTP id p12so9574703iog.5
 for <usrp-users@lists.ettus.com>; Thu, 05 Sep 2019 20:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pZZarmWOZPZBKEi+Vm0y3H7WL0JtYN7jBUtRjXlk93k=;
 b=lg6CU74JT30e7TPSJ4E4aCX5YdFzzWl7k/8CsqhYsdweGSSwayHeTJuNwIm1Atzbty
 8cWknBPOqn6oEcSkFWC3741xmZbwXUGJeL/ZEyrJleF6Ndzjy7gpkQVR9acaZLOiDmGn
 wRxhsCAw5iT06Hrd9lej51YBShevu/LoP8h4znYI4IClPrtHKj1/XSdFcwu+YBiW/ST6
 EiB4R0g2vw0YAXcbeG+yK4048G/vfnyWaJuffJAoZuG+XMPLKtzwiSCRmGIDYuLS8QNX
 Sk1daVv/E+2LAXvyMo3CvPUXV2sUQoTZ+Cwg0dCFBUecSRyqhIkRrxqho8WQmey6BRma
 fxLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pZZarmWOZPZBKEi+Vm0y3H7WL0JtYN7jBUtRjXlk93k=;
 b=T/1rGW0VMQAyxkzVC4S0+4IqX5cmF0Gzo4UQa8/3b1Po3MMKktLDZoNsb+jU4rCW0n
 6HF9IKJoentjVdOSUaUtwd9o8FQT98DeNXlABijc7zyYw5jL1//GvJu3bUorYn9e85dx
 x61M1bzfPHsqV/ZJgCM4KuJ9ojhLfWlyjsFAp5HUZtIO7dM+8xe0apZ2anXwBBYgtNxL
 llU3h67RnXb7kvRwuQq0cbjra+KPyOB8AnmcJq/nJrvm2EmrO+YuiUfE3au9SqjnUe7O
 CGsF6Xq0WLBIIln2oFYDLBPHoRuCsYrV6vdrrp5sCFHqWJYHJUj3cFMc1wz4+kTawiT3
 8j7w==
X-Gm-Message-State: APjAAAW1w7W2lQF4kAovUjLG5803ctBpenbz8uHw+oEOpmHTn1bNY4Qr
 jNlblONM7798+END7TNSbQdoUXikXu7durwO05GVSPgnl4U=
X-Google-Smtp-Source: APXvYqzwQWPkHPNbSxQAhI5V/DvPB/xk3FbkvvYqR/d8esG+LAaJjkvmDF+11u398Hm/8PZrZfwpawDvuFQqLMvGoYc=
X-Received: by 2002:a02:65cd:: with SMTP id u196mr7924563jab.3.1567739767564; 
 Thu, 05 Sep 2019 20:16:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKs6hekcVsif-U7CR-YORv2-kMDJX-35e==qZT_VskV3PwKWA@mail.gmail.com>
 <5D71CBFB.6060907@gmail.com>
In-Reply-To: <5D71CBFB.6060907@gmail.com>
Date: Thu, 5 Sep 2019 20:15:56 -0700
Message-ID: <CAKJyDkKPwk_PMEuQhRGyM6-3zaV-JdOEfx=keQdu4GS2Z6B54g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0028500212374133098=="
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

--===============0028500212374133098==
Content-Type: multipart/alternative; boundary="000000000000f2430a0591d9dbeb"

--000000000000f2430a0591d9dbeb
Content-Type: text/plain; charset="UTF-8"

Hi Austin.  Is *enx70886b87f283 *a 1 gigE or 10gigE connection?  If it's
1gigE, my guess is that your problem may be that the new SD card is loading
the XG FPGA image, which expects 10 gigE connections to the host on both
ports SFP0 and SFP1.   You'll need to update the SD card to load the HG
image from /lib/firmware at bootup (1 gigE on SFP0 on the N310, connected
to the Host PC using a cat 5 Ethernet cable and the SFP-to-RJ45 adapter).

Instructions here:
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Network_Mode_FPGA_Image_Update

-Robin


On Thu, Sep 5, 2019 at 8:02 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 09/05/2019 10:28 PM, Austin Adam via USRP-users wrote:
>
> I recently had my USRP N310 sent out for repairs to fix one of the SMA
> connectors, and when it came back, there was a new SD card in the slot.
> When I turned it on after getting it back, I was unable to connect to it
> via 'uhd_find_devices'. I figured it was something with the SD card, so I
> eventually decided to rewrite the whole thing, in case it needed an update.
>
> That still did not fix the issue, and after trying just about everything,
> and following every possible tutorial on the ettus docs, and checking the
> forums, I have decided to ask you guys for help.
>
> Below you can find all the information about the UHD versions and the
> ifconfigs... hopefully that is enough to spark some ideas!
>
> The USRP can find itself on localhost as you can see here:
>
>
>
>
>
>
>
>
>
>
>
> *root@ni-n3xx-3177E63:~# uhd_find_devices [INFO] [UHD] linux; GNU C++
> version 7.3.0; Boost_106600; UHD_3.14.0.0-0-g6875d061
> -------------------------------------------------- -- UHD Device 0
> -------------------------------------------------- Device Address:
> serial: 3177E63     claimed: False     mgmt_addr: 127.0.0.1     product:
> n310     type: n3xx*
>
> But when I run the command from the host machine, this is what I get:
>
>
>
> * admin@PC:~$ uhd_find_devices [INFO] [UHD] linux; GNU C++ version 8.3.0;
> Boost_106700; UHD_3.14.0.HEAD-0-g6875d061 No UHD Devices Found*
>
> *Here is ifconfig from the USRP:*
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *root@ni-n3xx-3177E63:~# ifconfig eth0      Link encap:Ethernet  HWaddr
> 00:80:2F:24:01:14           UP BROADCAST MULTICAST  MTU:1500  Metric:1
>       RX packets:0 errors:0 dropped:0 overruns:0 frame:0           TX
> packets:0 errors:0 dropped:0 overruns:0 carrier:0           collisions:0
> txqueuelen:1000           RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
> Interrupt:27 Base address:0xb000 lo        Link encap:Local Loopback
>     inet addr:127.0.0.1  Mask:255.0.0.0           UP LOOPBACK RUNNING
>  MTU:65536  Metric:1           RX packets:89 errors:0 dropped:0 overruns:0
> frame:0           TX packets:89 errors:0 dropped:0 overruns:0 carrier:0
>       collisions:0 txqueuelen:1000           RX bytes:7480 (7.3 KiB)  TX
> bytes:7480 (7.3 KiB) sfp0      Link encap:Ethernet  HWaddr
> 00:80:2F:24:01:15           inet addr:192.168.10.2  Bcast:192.168.10.255
>  Mask:255.255.255.0           UP BROADCAST RUNNING MULTICAST  MTU:8000
>  Metric:1           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>       TX packets:14 errors:0 dropped:0 overruns:0 carrier:0
> collisions:0 txqueuelen:1000           RX bytes:0 (0.0 B)  TX bytes:2577
> (2.5 KiB) sfp1      Link encap:Ethernet  HWaddr 00:80:2F:24:01:16
> UP BROADCAST MULTICAST  MTU:8000  Metric:1           RX packets:0 errors:0
> dropped:0 overruns:0 frame:0           TX packets:1 errors:0 dropped:0
> overruns:0 carrier:0           collisions:0 txqueuelen:1000           RX
> bytes:0 (0.0 B)  TX bytes:62 (62.0 B)*
>
>
>
> *And here is ifconfig from the host machine: *
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *ugikie@Austin-Blade:~$ ifconfig enx70886b87f283:
> flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000         inet
> 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.255         inet6
> fe80::73b:c879:60cf:8127  prefixlen 64  scopeid 0x20<link>         ether
> 70:88:6b:87:f2:83  txqueuelen 1000  (Ethernet)         RX packets 0  bytes
> 0 (0.0 B)         RX errors 0  dropped 0  overruns 0  frame 0         TX
> packets 46  bytes 4966 (4.9 KB)         TX errors 0  dropped 0 overruns 0
>  carrier 0  collisions 0 lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
>   inet 127.0.0.1  netmask 255.0.0.0         inet6 ::1  prefixlen 128
>  scopeid 0x10<host>         loop  txqueuelen 1000  (Local Loopback)
> RX packets 5037  bytes 466961 (466.9 KB)         RX errors 0  dropped 0
>  overruns 0  frame 0         TX packets 5037  bytes 466961 (466.9 KB)
>   TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0 wlp59s0:
> flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500         inet
> 172.28.229.114  netmask 255.255.240.0  broadcast 172.28.239.255
> inet6 fe80::c9b4:5623:34c4:ae56  prefixlen 64  scopeid 0x20<link>
> ether 9c:b6:d0:18:53:3f  txqueuelen 1000  (Ethernet)         RX packets
> 110339  bytes 123997000 (123.9 MB)         RX errors 0  dropped 0  overruns
> 0  frame 0         TX packets 47191  bytes 11048840 (11.0 MB)         TX
> errors 0  dropped 0 overruns 0  carrier 0  collisions 0*
>
> I tried broadcast pinging 192.168.10.255  and 192.168.10.2 from the host
> but didn't get a response from the N310 or anything for that matter.
>
> I hope someone out there can help me out! Thank you in advance :)
>
> Best,
> Austin
>
>
> So, easy stuff first--you are plugged into the SFP0 port on the N310, and
> not one of the two others?
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f2430a0591d9dbeb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Austin.=C2=A0 Is=C2=A0<i>enx70886b87f283 </i>a 1 gigE o=
r 10gigE connection?=C2=A0 If it&#39;s 1gigE, my guess is that your problem=
 may be that the new SD card is loading the XG FPGA image, which expects 10=
 gigE connections to the host on both ports SFP0 and SFP1.=C2=A0 =C2=A0You&=
#39;ll need to update the SD card to load the HG image from /lib/firmware a=
t bootup (1 gigE on SFP0 on the N310, connected to the Host PC using a cat =
5 Ethernet cable and the SFP-to-RJ45 adapter).=C2=A0<div><br></div><div>Ins=
tructions here:=C2=A0=C2=A0<a href=3D"https://kb.ettus.com/USRP_N300/N310/N=
320/N321_Getting_Started_Guide#Network_Mode_FPGA_Image_Update">https://kb.e=
ttus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Network_Mode_FPGA_I=
mage_Update</a></div><div><br></div><div>-Robin</div><div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Sep 5, 2019 at 8:02 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-103551041112186870moz-cite-prefix">On 09/05/2019=
 10:28 PM, Austin Adam via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">I recently had my USRP N310 sent out for repairs to
        fix one of the SMA connectors, and when it came back, there was
        a new SD card in the slot. When I turned it on after getting it
        back, I was unable to connect to it via &#39;uhd_find_devices&#39;.=
 I
        figured it was something=C2=A0with the SD card, so I eventually
        decided to rewrite=C2=A0the whole thing, in case it needed an updat=
e.
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
        <div>The USRP can find itself=C2=A0on localhost as you can see here=
:</div>
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
              =C2=A0 =C2=A0 serial: 3177E63<br>
              =C2=A0 =C2=A0 claimed: False<br>
              =C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<br>
              =C2=A0 =C2=A0 product: n310<br>
              =C2=A0 =C2=A0 type: n3xx</i><br>
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
        <div><font color=3D"#000000"><i>root@ni-n3xx-3177E63:~#
              ifconfig<br>
              eth0 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:=
80:2F:24:01:14<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST MULTICAST =C2=
=A0MTU:1500 =C2=A0Metric:1<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 drop=
ped:0 overruns:0
              frame:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:0 errors:0 drop=
ped:0 overruns:0
              carrier:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:10=
00<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B) =C2=A0T=
X bytes:0 (0.0 B)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Interrupt:27 Base address:=
0xb000<br>
              <br>
              lo =C2=A0 =C2=A0 =C2=A0 =C2=A0Link encap:Local Loopback<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:127.0.0.1 =C2=A0=
Mask:255.0.0.0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP LOOPBACK RUNNING =C2=A0=
MTU:65536 =C2=A0Metric:1<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:89 errors:0 dro=
pped:0 overruns:0
              frame:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:89 errors:0 dro=
pped:0 overruns:0
              carrier:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:10=
00<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:7480 (7.3 KiB) =
=C2=A0TX bytes:7480 (7.3 KiB)<br>
              <br>
              sfp0 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:=
80:2F:24:01:15<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:192.168.10.2 =C2=
=A0Bcast:192.168.10.255
              =C2=A0Mask:255.255.255.0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST RUNNING MULTI=
CAST =C2=A0MTU:8000
              =C2=A0Metric:1<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 drop=
ped:0 overruns:0
              frame:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:14 errors:0 dro=
pped:0 overruns:0
              carrier:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:10=
00<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B) =C2=A0T=
X bytes:2577 (2.5 KiB)<br>
              <br>
              sfp1 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:=
80:2F:24:01:16<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST MULTICAST =C2=
=A0MTU:8000 =C2=A0Metric:1<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 drop=
ped:0 overruns:0
              frame:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:1 errors:0 drop=
ped:0 overruns:0
              carrier:0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:10=
00<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B) =C2=A0T=
X bytes:62 (62.0 B)</i>=C2=A0</font>=C2=A0<br>
        </div>
        <div><br>
        </div>
        <div><b>And here is ifconfig from the host machine:<br>
            <br>
          </b></div>
        <div>
          <div><i>ugikie@Austin-Blade:~$ ifconfig<br>
              enx70886b87f283:
              flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; =C2=A0mtu =
8000<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.1 =C2=A0netmask 2=
55.255.255.0
              =C2=A0broadcast 192.168.10.255<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::73b:c879:60cf:8127 =
=C2=A0prefixlen 64
              =C2=A0scopeid 0x20&lt;link&gt;<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 70:88:6b:87:f2:83 =C2=A0txq=
ueuelen 1000
              =C2=A0(Ethernet)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 0 =C2=A0bytes 0 (0.0 B=
)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=
=A0overruns 0 =C2=A0frame 0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 46 =C2=A0bytes 4966 (4=
.9 KB)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overr=
uns 0 =C2=A0carrier 0
              =C2=A0collisions 0<br>
              <br>
              lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; =C2=A0mtu 65536<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1 =C2=A0netmask 255.=
0.0.0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1 =C2=A0prefixlen 128 =C2=
=A0scopeid 0x10&lt;host&gt;<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 loop =C2=A0txqueuelen 1000 =C2=A0=
(Local Loopback)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 5037 =C2=A0bytes 46696=
1 (466.9 KB)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=
=A0overruns 0 =C2=A0frame 0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 5037 =C2=A0bytes 46696=
1 (466.9 KB)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overr=
uns 0 =C2=A0carrier 0
              =C2=A0collisions 0<br>
              <br>
              wlp59s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;
              =C2=A0mtu 1500<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 172.28.229.114 =C2=A0netmask=
 255.255.240.0
              =C2=A0broadcast 172.28.239.255<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::c9b4:5623:34c4:ae56 =
=C2=A0prefixlen 64
              =C2=A0scopeid 0x20&lt;link&gt;<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 9c:b6:d0:18:53:3f =C2=A0txq=
ueuelen 1000
              =C2=A0(Ethernet)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 110339 =C2=A0bytes 123=
997000 (123.9 MB)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=
=A0overruns 0 =C2=A0frame 0<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 47191 =C2=A0bytes 1104=
8840 (11.0 MB)<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overr=
uns 0 =C2=A0carrier 0
              =C2=A0collisions 0</i><br>
          </div>
          <div><br>
          </div>
          <div>I tried broadcast pinging 192.168.10.255=C2=A0 and
            192.168.10.2 from the host but didn&#39;t get a response from
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
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000f2430a0591d9dbeb--


--===============0028500212374133098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0028500212374133098==--

