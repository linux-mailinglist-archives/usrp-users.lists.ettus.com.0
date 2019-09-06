Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA240AB219
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 07:41:47 +0200 (CEST)
Received: from [::1] (port=49352 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i670B-0004Hs-SZ; Fri, 06 Sep 2019 01:41:43 -0400
Received: from mail-pg1-f178.google.com ([209.85.215.178]:45545)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <austinadam42@gmail.com>)
 id 1i6708-0004A5-AB
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 01:41:40 -0400
Received: by mail-pg1-f178.google.com with SMTP id 4so2810956pgm.12
 for <usrp-users@lists.ettus.com>; Thu, 05 Sep 2019 22:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ieNJ1g+qbCcFm3m6wpirvv+qm1G5rkDGOVTecjORG94=;
 b=ktii+52HU0gsB9tLbbiGJgXY4I1CQvuj7mCYYshfzYWGJXn4TivreCWlI0txYOvySE
 FuOYTP72lX9VBLrDMxoBED3PerN/1M/S2vx4nE+5FceS8DQYHjberemk8XjQxF10GMZM
 0Jxg1wKg97wuTF950HR7gO6RZzhwzsUXD8gAba+ZD1cL1Foq3dXz4CgXnXBmPYyZw/I6
 BIvIsWAJhkA/PxGMJck5iw3H3qgCokgBNheq+YZDi8Rj16qNY79X09UTOm+Znl8lXqu3
 iB9QG2hDDkUXqWHfPcvRyj61MQCHo7Uf1G5kum4QP/M2QPRkP4M/JcXJXKprd82wqDdR
 quCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ieNJ1g+qbCcFm3m6wpirvv+qm1G5rkDGOVTecjORG94=;
 b=CYcZPZlRY1Q3SbSN04qjWn5509B1ij7WbPSoak3aRhCwAKJImlbUfYBXTEiRr/xlhI
 X6bI44c0tNg65S0zC2tw290Zdse1tU/vuPsaLmFWJBd9/ag/wPdV9Qi28mH9fyn044s/
 oVwdaiLEC5PZTpiwYBedszh/1SG+17J130KJYeOAPb9Rap6j0YwPdhUP6drhOxo6hm8U
 pqjSa3Pbum0B6ntkzMNajuX6Eh+LP4G4paTKjlcsZtFWvQkTklL3LPyM/Eq2ReRvLx8u
 95X5wSGNatTGHbdT7DMo/pI6TREr7uIh9+hplPYsvZwu2vO29sb5psV0h0kX86mDYj5+
 c3uw==
X-Gm-Message-State: APjAAAVscXGLUg0xH6yGnh6kTDD5aVgRNlYNn2XgPGfL9/EIlHoILlnR
 yxctJ9+k7rGLCaaU5bFPMPFAvBanP7aa+g==
X-Google-Smtp-Source: APXvYqwIODfSWGs9fM9IXkN9BB+ar2N9jMJs4Kh1jARGp7xafrPCkOFcquUEPh856VW1efhhNfP6ug==
X-Received: by 2002:a62:5c82:: with SMTP id q124mr8537980pfb.177.1567748459920; 
 Thu, 05 Sep 2019 22:40:59 -0700 (PDT)
Received: from [192.168.86.22] (cpe-76-169-110-166.socal.res.rr.com.
 [76.169.110.166])
 by smtp.gmail.com with ESMTPSA id x13sm4560206pfm.157.2019.09.05.22.40.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 22:40:59 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16G77)
In-Reply-To: <5D71CBFB.6060907@gmail.com>
Date: Thu, 5 Sep 2019 22:40:58 -0700
Message-Id: <E9AE1B80-DDFE-46CB-8204-6522F7D0118E@gmail.com>
References: <CAMKs6hekcVsif-U7CR-YORv2-kMDJX-35e==qZT_VskV3PwKWA@mail.gmail.com>
 <5D71CBFB.6060907@gmail.com>
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
From: Austin Adam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Austin Adam <austinadam42@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============2620462466046421061=="
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


--===============2620462466046421061==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-FE7A0414-507E-41E7-90E1-62847892FC7E
Content-Transfer-Encoding: 7bit


--Apple-Mail-FE7A0414-507E-41E7-90E1-62847892FC7E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi there,
Thank you for the response. I am indeed connected to the SFP0 port to a 1gig=
E connection. Everything was working fine before I sent out the USRP for rep=
airs, so I don=E2=80=99t think it=E2=80=99s a cable or connection issue.=20

I appreciate you looking into the issue further, hopefully we can figure out=
!

Regards,
Austin

> On Sep 5, 2019, at 8:01 PM, Marcus D. Leech via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>=20
>> On 09/05/2019 10:28 PM, Austin Adam via USRP-users wrote:
>> I recently had my USRP N310 sent out for repairs to fix one of the SMA co=
nnectors, and when it came back, there was a new SD card in the slot. When I=
 turned it on after getting it back, I was unable to connect to it via 'uhd_=
find_devices'. I figured it was something with the SD card, so I eventually d=
ecided to rewrite the whole thing, in case it needed an update.
>>=20
>> That still did not fix the issue, and after trying just about everything,=
 and following every possible tutorial on the ettus docs, and checking the f=
orums, I have decided to ask you guys for help.
>>=20
>> Below you can find all the information about the UHD versions and the ifc=
onfigs... hopefully that is enough to spark some ideas!
>>=20
>> The USRP can find itself on localhost as you can see here:
>>=20
>> root@ni-n3xx-3177E63:~# uhd_find_devices
>> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; UHD_3.14.0.0-0-g=
6875d061
>> --------------------------------------------------
>> -- UHD Device 0
>> --------------------------------------------------
>> Device Address:
>>     serial: 3177E63
>>     claimed: False
>>     mgmt_addr: 127.0.0.1
>>     product: n310
>>     type: n3xx
>>=20
>> But when I run the command from the host machine, this is what I get:
>>=20
>> admin@PC:~$ uhd_find_devices
>> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; UHD_3.14.0.HEAD-=
0-g6875d061
>> No UHD Devices Found
>>=20
>> Here is ifconfig from the USRP:
>>=20
>> root@ni-n3xx-3177E63:~# ifconfig
>> eth0      Link encap:Ethernet  HWaddr 00:80:2F:24:01:14
>>           UP BROADCAST MULTICAST  MTU:1500  Metric:1
>>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>>           TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
>>           collisions:0 txqueuelen:1000
>>           RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
>>           Interrupt:27 Base address:0xb000
>>=20
>> lo        Link encap:Local Loopback
>>           inet addr:127.0.0.1  Mask:255.0.0.0
>>           UP LOOPBACK RUNNING  MTU:65536  Metric:1
>>           RX packets:89 errors:0 dropped:0 overruns:0 frame:0
>>           TX packets:89 errors:0 dropped:0 overruns:0 carrier:0
>>           collisions:0 txqueuelen:1000
>>           RX bytes:7480 (7.3 KiB)  TX bytes:7480 (7.3 KiB)
>>=20
>> sfp0      Link encap:Ethernet  HWaddr 00:80:2F:24:01:15
>>           inet addr:192.168.10.2  Bcast:192.168.10.255  Mask:255.255.255.=
0
>>           UP BROADCAST RUNNING MULTICAST  MTU:8000  Metric:1
>>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>>           TX packets:14 errors:0 dropped:0 overruns:0 carrier:0
>>           collisions:0 txqueuelen:1000
>>           RX bytes:0 (0.0 B)  TX bytes:2577 (2.5 KiB)
>>=20
>> sfp1      Link encap:Ethernet  HWaddr 00:80:2F:24:01:16
>>           UP BROADCAST MULTICAST  MTU:8000  Metric:1
>>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>>           TX packets:1 errors:0 dropped:0 overruns:0 carrier:0
>>           collisions:0 txqueuelen:1000
>>           RX bytes:0 (0.0 B)  TX bytes:62 (62.0 B) =20
>>=20
>> And here is ifconfig from the host machine:
>>=20
>> ugikie@Austin-Blade:~$ ifconfig
>> enx70886b87f283: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000
>>         inet 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.25=
5
>>         inet6 fe80::73b:c879:60cf:8127  prefixlen 64  scopeid 0x20<link>
>>         ether 70:88:6b:87:f2:83  txqueuelen 1000  (Ethernet)
>>         RX packets 0  bytes 0 (0.0 B)
>>         RX errors 0  dropped 0  overruns 0  frame 0
>>         TX packets 46  bytes 4966 (4.9 KB)
>>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>>=20
>> lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
>>         inet 127.0.0.1  netmask 255.0.0.0
>>         inet6 ::1  prefixlen 128  scopeid 0x10<host>
>>         loop  txqueuelen 1000  (Local Loopback)
>>         RX packets 5037  bytes 466961 (466.9 KB)
>>         RX errors 0  dropped 0  overruns 0  frame 0
>>         TX packets 5037  bytes 466961 (466.9 KB)
>>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>>=20
>> wlp59s0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>>         inet 172.28.229.114  netmask 255.255.240.0  broadcast 172.28.239.=
255
>>         inet6 fe80::c9b4:5623:34c4:ae56  prefixlen 64  scopeid 0x20<link>=

>>         ether 9c:b6:d0:18:53:3f  txqueuelen 1000  (Ethernet)
>>         RX packets 110339  bytes 123997000 (123.9 MB)
>>         RX errors 0  dropped 0  overruns 0  frame 0
>>         TX packets 47191  bytes 11048840 (11.0 MB)
>>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>>=20
>> I tried broadcast pinging 192.168.10.255  and 192.168.10.2 from the host b=
ut didn't get a response from the N310 or anything for that matter.
>>=20
>> I hope someone out there can help me out! Thank you in advance :)
>>=20
>> Best,
>> Austin
>>=20
>>=20
> So, easy stuff first--you are plugged into the SFP0 port on the N310, and n=
ot one of the two others?
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-FE7A0414-507E-41E7-90E1-62847892FC7E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hi there,<div>Thank you for the response. I=
 am indeed connected to the SFP0 port to a 1gigE connection. Everything was w=
orking fine before I sent out the USRP for repairs, so I don=E2=80=99t think=
 it=E2=80=99s a cable or connection issue.&nbsp;</div><div><br></div><div>I a=
ppreciate you looking into the issue further, hopefully we can figure out!<b=
r><br><div dir=3D"ltr">Regards,<div>Austin</div></div><div dir=3D"ltr"><br>O=
n Sep 5, 2019, at 8:01 PM, Marcus D. Leech via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
><br></div><blockquote type=3D"cite"><div dir=3D"ltr">
 =20
    <meta content=3D"text/html; charset=3Dwindows-1252" http-equiv=3D"Conten=
t-Type">
 =20
 =20
    <div class=3D"moz-cite-prefix">On 09/05/2019 10:28 PM, Austin Adam via
      USRP-users wrote:<br>
    </div>
    <blockquote cite=3D"mid:CAMKs6hekcVsif-U7CR-YORv2-kMDJX-35e=3D=3DqZT_Vsk=
V3PwKWA@mail.gmail.com" type=3D"cite">
      <div dir=3D"ltr">I recently had my USRP N310 sent out for repairs to
        fix one of the SMA connectors, and when it came back, there was
        a new SD card in the slot. When I turned it on after getting it
        back, I was unable to connect to it via 'uhd_find_devices'. I
        figured it was something&nbsp;with the SD card, so I eventually
        decided to rewrite&nbsp;the whole thing, in case it needed an update=
.
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
        <div>The USRP can find itself&nbsp;on localhost as you can see here:=
</div>
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
              &nbsp; &nbsp; serial: 3177E63<br>
              &nbsp; &nbsp; claimed: False<br>
              &nbsp; &nbsp; mgmt_addr: 127.0.0.1<br>
              &nbsp; &nbsp; product: n310<br>
              &nbsp; &nbsp; type: n3xx</i><br>
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
        <div><font color=3D"#000000"><i style=3D"">root@ni-n3xx-3177E63:~#
              ifconfig<br>
              eth0 &nbsp; &nbsp; &nbsp;Link encap:Ethernet &nbsp;HWaddr 00:8=
0:2F:24:01:14<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP BROADCAST MULTICAST &nbs=
p;MTU:1500 &nbsp;Metric:1<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:0 errors:0 dropp=
ed:0 overruns:0
              frame:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:0 errors:0 dropp=
ed:0 overruns:0
              carrier:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:100=
0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:0 (0.0 B) &nbsp;TX=
 bytes:0 (0.0 B)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Interrupt:27 Base address:0=
xb000<br>
              <br>
              lo &nbsp; &nbsp; &nbsp; &nbsp;Link encap:Local Loopback<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:127.0.0.1 &nbsp;M=
ask:255.0.0.0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP LOOPBACK RUNNING &nbsp;M=
TU:65536 &nbsp;Metric:1<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:89 errors:0 drop=
ped:0 overruns:0
              frame:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:89 errors:0 drop=
ped:0 overruns:0
              carrier:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:100=
0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:7480 (7.3 KiB) &nb=
sp;TX bytes:7480 (7.3 KiB)<br>
              <br>
              sfp0 &nbsp; &nbsp; &nbsp;Link encap:Ethernet &nbsp;HWaddr 00:8=
0:2F:24:01:15<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:192.168.10.2 &nbs=
p;Bcast:192.168.10.255
              &nbsp;Mask:255.255.255.0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP BROADCAST RUNNING MULTIC=
AST &nbsp;MTU:8000
              &nbsp;Metric:1<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:0 errors:0 dropp=
ed:0 overruns:0
              frame:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:14 errors:0 drop=
ped:0 overruns:0
              carrier:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:100=
0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:0 (0.0 B) &nbsp;TX=
 bytes:2577 (2.5 KiB)<br>
              <br>
              sfp1 &nbsp; &nbsp; &nbsp;Link encap:Ethernet &nbsp;HWaddr 00:8=
0:2F:24:01:16<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP BROADCAST MULTICAST &nbs=
p;MTU:8000 &nbsp;Metric:1<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:0 errors:0 dropp=
ed:0 overruns:0
              frame:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:1 errors:0 dropp=
ed:0 overruns:0
              carrier:0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:100=
0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:0 (0.0 B) &nbsp;TX=
 bytes:62 (62.0 B)</i>&nbsp;</font>&nbsp;<br>
        </div>
        <div><br>
        </div>
        <div><b>And here is ifconfig from the host machine:<br>
            <br>
          </b></div>
        <div>
          <div><i>ugikie@Austin-Blade:~$ ifconfig<br>
              enx70886b87f283:
              flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; &nbsp;mtu 8=
000<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.10.1 &nbsp;netmask 25=
5.255.255.0
              &nbsp;broadcast 192.168.10.255<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet6 fe80::73b:c879:60cf:8127 &nb=
sp;prefixlen 64
              &nbsp;scopeid 0x20&lt;link&gt;<br>
              &nbsp; &nbsp; &nbsp; &nbsp; ether 70:88:6b:87:f2:83 &nbsp;txqu=
euelen 1000
              &nbsp;(Ethernet)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX packets 0 &nbsp;bytes 0 (0.0 B)=
<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;=
overruns 0 &nbsp;frame 0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX packets 46 &nbsp;bytes 4966 (4.=
9 KB)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overru=
ns 0 &nbsp;carrier 0
              &nbsp;collisions 0<br>
              <br>
              lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; &nbsp;mtu 65536<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet 127.0.0.1 &nbsp;netmask 255.0=
.0.0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet6 ::1 &nbsp;prefixlen 128 &nbs=
p;scopeid 0x10&lt;host&gt;<br>
              &nbsp; &nbsp; &nbsp; &nbsp; loop &nbsp;txqueuelen 1000 &nbsp;(=
Local Loopback)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX packets 5037 &nbsp;bytes 466961=
 (466.9 KB)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;=
overruns 0 &nbsp;frame 0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX packets 5037 &nbsp;bytes 466961=
 (466.9 KB)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overru=
ns 0 &nbsp;carrier 0
              &nbsp;collisions 0<br>
              <br>
              wlp59s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;
              &nbsp;mtu 1500<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet 172.28.229.114 &nbsp;netmask 2=
55.255.240.0
              &nbsp;broadcast 172.28.239.255<br>
              &nbsp; &nbsp; &nbsp; &nbsp; inet6 fe80::c9b4:5623:34c4:ae56 &n=
bsp;prefixlen 64
              &nbsp;scopeid 0x20&lt;link&gt;<br>
              &nbsp; &nbsp; &nbsp; &nbsp; ether 9c:b6:d0:18:53:3f &nbsp;txqu=
euelen 1000
              &nbsp;(Ethernet)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX packets 110339 &nbsp;bytes 1239=
97000 (123.9 MB)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;=
overruns 0 &nbsp;frame 0<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX packets 47191 &nbsp;bytes 11048=
840 (11.0 MB)<br>
              &nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overru=
ns 0 &nbsp;carrier 0
              &nbsp;collisions 0</i><br>
          </div>
          <div><br>
          </div>
          <div>I tried broadcast pinging 192.168.10.255&nbsp; and
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
 =20

</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>________=
_______________________________________</span><br><span>USRP-users mailing l=
ist</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users=
@lists.ettus.com</a></span><br><span><a href=3D"http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></div></body=
></html>=

--Apple-Mail-FE7A0414-507E-41E7-90E1-62847892FC7E--


--===============2620462466046421061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2620462466046421061==--

