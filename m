Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E8A264988
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 18:19:03 +0200 (CEST)
Received: from [::1] (port=44794 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGPHq-0007Ah-KL; Thu, 10 Sep 2020 12:19:02 -0400
Received: from mail-yb1-f181.google.com ([209.85.219.181]:45067)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kGPHl-0006xR-J9
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 12:18:57 -0400
Received: by mail-yb1-f181.google.com with SMTP id p81so4429362ybc.12
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 09:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A5GoUArY5eUPwPSYgovh0KumvxsK8zgMbPhixcStuSk=;
 b=K5KHmq9UhTT4VL1cj8RBkkPdZkrQorR6OOUF4zVLAorvJ2w+AcQPo0wy3cwm4GJ7/x
 7NAd9jJSX87WiWqUMS9lC8PHEbX9aaQMZxOhJKbcmr4H4CgU8BX2Rc3spWvYi2LQuV2p
 p/EcBu5B2JH6xf2rYS4knpZrT1/po+7ObobulUwB5/XelHedeSso87miAPoTTqJ9jajn
 GJ1qo0rePproC2kEyklMFsTh8T1As98Ooo5ZAEEvQ/RGwg9mz0tx38B2BCeTNhLMxhZO
 CX5MTkkngP8nLzz+zZlJ9xjv4E5cZhWysS6oORYc0B3Y7G+81b5fyVJ27BzLrXD/UM2h
 bAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A5GoUArY5eUPwPSYgovh0KumvxsK8zgMbPhixcStuSk=;
 b=EIs0Yhr+cRGjO7vrNk15F7jqI5ymO5c1AP7q4bHCdxkq89RU5M8YQhrMjT7d+eGJKP
 uS0/2R6LCvcJTLEP8J7n6puQlR1idWekmgkHWbnbgBZ13N4c/T9a6Z7Ym3INO+S8aVuY
 LQ9aD6Z3/6bldwkNUQRKn/WDclNx27rsfoNUxP/PBwMJdf/8BgMfcDKYEU1oJiE/4v0b
 aBX+QFg+ERkjg4Tu86iBHmNC1dHxEOFPmpIYEYYPq3UcpkmI7wReHxjaFAnqT5byctSj
 wFr+Fzk9TmgVEeME28y/47jRTkZg/ur0lcx0aV9RzMZzN5FUFizhG0MJ/60tz9Z87TyC
 FKSw==
X-Gm-Message-State: AOAM530CSfN4Fr1kv8P+pQbYgTS9qA0IIVyJZkdOGTQwCLvaJsRWAFkc
 ZIvCppmZ5U1NMuAzIk/nA0Ig7Q5efJMy39gYVdA=
X-Google-Smtp-Source: ABdhPJwuvyuv4WvUTXibME5WM0yamyaWXSg3N1a8nUGQrUKtzTcUJqlOstMB1ceULNL6jxEl4oHnectvFEVdeRM2DJc=
X-Received: by 2002:a25:260d:: with SMTP id m13mr14004906ybm.45.1599754696959; 
 Thu, 10 Sep 2020 09:18:16 -0700 (PDT)
MIME-Version: 1.0
References: <CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com>
 <5F5A50F1.4080500@gmail.com>
In-Reply-To: <5F5A50F1.4080500@gmail.com>
Date: Thu, 10 Sep 2020 10:18:05 -0600
Message-ID: <CACryqrG3Eo6KTFM1v2SpA2Dc8Q71iznrLtai=79bPWgDG=xXRw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] RuntimeError: System receive MTU size
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============3401273195900185863=="
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

--===============3401273195900185863==
Content-Type: multipart/alternative; boundary="00000000000070ae3705aef7ea0d"

--00000000000070ae3705aef7ea0d
Content-Type: text/plain; charset="UTF-8"

No, I run on a real Ubuntu 18.04 machine. I do not find anything special in
the ifconfig result:
(base) hu@hu:~/torch$ ifconfig
enp6s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.10.66  netmask 255.255.255.0  broadcast 192.168.10.255
        inet6 fe80::ba85:84ff:febb:bb5c  prefixlen 64  scopeid 0x20<link>
        ether b8:85:84:bb:bb:5c  txqueuelen 1000  (Ethernet)
        RX packets 211324  bytes 13170668 (13.1 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 212033  bytes 13064575 (13.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 19

On Thu, Sep 10, 2020 at 10:15 AM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 09/10/2020 11:43 AM, Xiang Ma via USRP-users wrote:
>
> Hi, I am running a rfid code on USRP, but there occur some errors and
> warnings, and I am not sure where do the errors come from and how to
> address them. Please help me.
>
> hu@hu:~/rfid/Gen2-UHF-RFID-Reader/gr-rfid/apps$ sudo GR_SCHEDULER=STS
> nice -n -20 python ./reader.py
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> *[ERROR] [X300] RuntimeError: System receive MTU size is less than the
> minimum required by the IP protocol.*
>
>
>
>
>
>
> *[WARNING] [X300] You requested a receive frame size of (256) but your
> NIC's max frame size is (0).Please verify your NIC's MTU setting using 'ip
> link' or set the recv_frame_size argument appropriately.UHD will use the
> auto-detected max frame size for this connection. [WARNING] [X300] For the
> 192.168.10.2 connection, UHD recommends a send frame size of at least 1472
> for best performance, but your configuration will only allow 0.This may
> negatively impact your maximum achievable sample rate. Check the MTU on the
> interface and/or the send_frame_size argument. [WARNING] [X300] For the
> 192.168.10.2 connection, UHD recommends a receive frame size of at least
> 1472 for best performance, but your configuration will only allow 0.This
> may negatively impact your maximum achievable sample rate. Check the MTU on
> the interface and/or the recv_frame_size argument.*
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> [WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
> [WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
> [WARNING] [RFNOC] Assuming max packet size for 0/Radio_1
> [WARNING] [RFNOC] Assuming max packet size for 0/Radio_1
> [WARNING] [RFNOC] Assuming max packet size for 0/DUC_0
> [WARNING] [RFNOC] Assuming max packet size for 0/DUC_1
> [WARNING] [RFNOC] Assuming max packet size for 0/DmaFIFO_0
> [WARNING] [RFNOC] Assuming max packet size for 0/DmaFIFO_0
> 'Q' to quit
> [WARNING] [STREAMER] Requested recv_frame_size of 256 exceeds the maximum
> possible on this stream. Using 0
> Uq
>
>  --------------------------
> | Number of queries/queryreps sent : 0
> | Current Inventory round : 1
>  --------------------------
> | Correctly decoded EPC : 0
> | Number of unique tags : 0
>  --------------------------
>
>
> Are you running inside a VM?
>
> What does 'ifconfig' return for the interface the X3xx USRP is connected
> to?  It looks like the MTU is badly misconfigured.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--00000000000070ae3705aef7ea0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>No, I run on a real Ubuntu 18.04 machine. I do not fi=
nd anything special in the ifconfig result:<br></div><div>(base) hu@hu:~/to=
rch$ ifconfig <br>enp6s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt=
; =C2=A0mtu 1500<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.66 =C2=A0ne=
tmask 255.255.255.0 =C2=A0broadcast 192.168.10.255<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 inet6 fe80::ba85:84ff:febb:bb5c =C2=A0prefixlen 64 =C2=A0scopeid 0x2=
0&lt;link&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether b8:85:84:bb:bb:5c =C2=A0=
txqueuelen 1000 =C2=A0(Ethernet)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets =
211324 =C2=A0bytes 13170668 (13.1 MB)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX err=
ors 0 =C2=A0dropped 0 =C2=A0overruns 0 =C2=A0frame 0<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 TX packets 212033 =C2=A0bytes 13064575 (13.0 MB)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overruns 0 =C2=A0carrier 0 =
=C2=A0collisions 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 device interrupt 19=C2=A0=
 <br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Sep 10, 2020 at 10:15 AM Marcus D. Leech via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 09/10/2020 11:43 AM, Xiang Ma via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Hi, I am running a rfid code on USRP, but there occur some
          errors and warnings, and I am not sure where do the errors
          come from and how to address them. Please help me.<br>
        </div>
        <div><br>
        </div>
        <div>hu@hu:~/rfid/Gen2-UHF-RFID-Reader/gr-rfid/apps$ sudo
          GR_SCHEDULER=3DSTS nice -n -20 python ./reader.py<br>
          [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
          UHD_3.15.0.HEAD-0-gaea0e2de<br>
          [INFO] [X300] X300 initialization sequence...<br>
          <b>[ERROR] [X300] RuntimeError: System receive MTU size is
            less than the minimum required by the IP protocol.</b><br>
          <b>[WARNING] [X300] You requested a receive frame size of
            (256) but your NIC&#39;s max frame size is (0).Please verify
            your NIC&#39;s MTU setting using &#39;ip link&#39; or set the
            recv_frame_size argument appropriately.UHD will use the
            auto-detected max frame size for this connection.<br>
            [WARNING] [X300] For the 192.168.10.2 connection, UHD
            recommends a send frame size of at least 1472 for best<br>
            performance, but your configuration will only allow 0.This
            may negatively impact your maximum achievable sample rate.<br>
            Check the MTU on the interface and/or the send_frame_size
            argument.<br>
            [WARNING] [X300] For the 192.168.10.2 connection, UHD
            recommends a receive frame size of at least 1472 for best<br>
            performance, but your configuration will only allow 0.This
            may negatively impact your maximum achievable sample rate.<br>
            Check the MTU on the interface and/or the recv_frame_size
            argument.</b><br>
          [INFO] [X300] Radio 1x clock: 200 MHz<br>
          [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev
          0.929b<br>
          [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
          0xF1F0D00000000000)<br>
          [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)<br>
          [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)<br>
          [INFO] [0/Radio_0] Initializing block control (NOC ID:
          0x12AD100000000001)<br>
          [INFO] [0/Radio_1] Initializing block control (NOC ID:
          0x12AD100000000001)<br>
          [INFO] [0/DDC_0] Initializing block control (NOC ID:
          0xDDC0000000000000)<br>
          [INFO] [0/DDC_1] Initializing block control (NOC ID:
          0xDDC0000000000000)<br>
          [INFO] [0/DUC_0] Initializing block control (NOC ID:
          0xD0C0000000000000)<br>
          [INFO] [0/DUC_1] Initializing block control (NOC ID:
          0xD0C0000000000000)<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/Radio_0<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/Radio_0<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/Radio_1<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/Radio_1<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/DUC_0<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/DUC_1<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/DmaFIFO_0<br>
          [WARNING] [RFNOC] Assuming max packet size for 0/DmaFIFO_0<br>
          &#39;Q&#39; to quit<br>
          [WARNING] [STREAMER] Requested recv_frame_size of 256 exceeds
          the maximum possible on this stream. Using 0<br>
          Uq<br>
          <br>
          =C2=A0--------------------------<br>
          | Number of queries/queryreps sent : 0<br>
          | Current Inventory round : 1<br>
          =C2=A0--------------------------<br>
          | Correctly decoded EPC : 0<br>
          | Number of unique tags : 0<br>
          =C2=A0--------------------------</div>
        <div><br>
        </div>
        <br>
      </div>
    </blockquote>
    Are you running inside a VM?<br>
    <br>
    What does &#39;ifconfig&#39; return for the interface the X3xx USRP is
    connected to?=C2=A0 It looks like the MTU is badly misconfigured.<br>
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
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" siz=
e=3D"4" face=3D"times new roman, serif"><i><b>Xiang Ma,=C2=A0</b></i></font=
><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=
=3D"color:rgb(136,136,136)"><font color=3D"#444444">College of Engineering<=
/font></div><div><font color=3D"#444444">Utah State University</font></div>=
<div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a hre=
f=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"=
_blank">marxwolfs@gmail.com</a></font></div></div></div></div>

--00000000000070ae3705aef7ea0d--


--===============3401273195900185863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3401273195900185863==--

