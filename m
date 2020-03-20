Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7575818C424
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 01:11:10 +0100 (CET)
Received: from [::1] (port=60338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jF5Fk-000153-NH; Thu, 19 Mar 2020 20:11:08 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:46363)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1jF5Fh-0000yI-1f
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 20:11:05 -0400
Received: by mail-oi1-f172.google.com with SMTP id x5so4693561oic.13
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 17:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bolYWEBG2vD/HOAvlZv2lh0iyjBJsTupeTTwXgWHUqs=;
 b=oDaQgWTAsTwp51Dcvfwgu+TjHPz/qvO436hZbVUgC5r/kVMZdYWQW2+Z0rk2LLLuvr
 VNbbG+05HhG1fduPQSIKKKkzYIhMSFl/24GDFQquPJqPVTxeRRjWXJce8m0znDw1wBNO
 UqdrjUEjf+5UbtokeJD2pM8N+lIRWKOR8j9YeV6Oys5WsojBa7nKSUI1n8n9Ewez2fvq
 PcP2Ov2CiPj7dvgLsZi9te3/zqbhetHaKyNY9/sQDxIwl+QY2X+fIoynzoxiWHiumQjT
 E4xovThKH2vF7j6qo3mMTE36s6kmIvmqD2iG9BSeRQWLe/EjtoxQL+DalvUKlmn/iQLM
 /qxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bolYWEBG2vD/HOAvlZv2lh0iyjBJsTupeTTwXgWHUqs=;
 b=MHDAYnY81K8DqD+83vLcBM433pg0YmjBZfl+TfuidS3R/oSxInnUYnmbuhq7SQCESQ
 7g7MypvDjYOAXR4atxfX/gkCGEyhbI291acej8IL9PvN9t5Slnol9Xuz9whlqOvh+pZx
 HfNcbxniLXq/dmUGNfZN3g5qAgIl+m1SRgShk4dU/9Ja9mkQH5Eqe78H8ySaojvYfscT
 20ZkIPSL+Bgs6o388ZqTs2eIwqjkzkwRxkYV3dJkjRZtrpQF567kUVpdX3aHWVhILsYK
 MHXJxG3crTHyQEn9K6DwU8nwN9NkqgVPbnrCz5wrlTY7wyAOb94WlBxCXOyVb86JLugP
 +MCQ==
X-Gm-Message-State: ANhLgQ0kZo18HtNwlqxBy8OojaMoeKyQoGZ7fb6WDLiiT5DqNa2gVHjr
 UoU0jQpHkziYqbZJhhh5pNGRKtEViho7RneomaJ5uUos
X-Google-Smtp-Source: ADFU+vu7XK4BqCbzYpAlWM4kBeUDwT+rjBaOuk81KvLYskh/VxjnMDYQ+gj9+qb9lWdLV2DwVJPjkafaL/o400xD90M=
X-Received: by 2002:aca:49d8:: with SMTP id w207mr4535979oia.85.1584663024169; 
 Thu, 19 Mar 2020 17:10:24 -0700 (PDT)
MIME-Version: 1.0
References: <10F7328F6AD1354BA6DD787687B66B9001A304FBD9@Maui.in.dynetics.com>
In-Reply-To: <10F7328F6AD1354BA6DD787687B66B9001A304FBD9@Maui.in.dynetics.com>
Date: Thu, 19 Mar 2020 19:09:47 -0500
Message-ID: <CACaXmv_torvH6MBuU5XfgS2euYBMAkkb1T6HGBFYF5C=JNWb4A@mail.gmail.com>
To: "Carmichael, Ryan" <Ryan.Carmichael@dynetics.com>
Subject: Re: [USRP-users] MTU Issues after upgrading to UHD 3.15.0
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0805523542490541675=="
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

--===============0805523542490541675==
Content-Type: multipart/alternative; boundary="000000000000a524c905a13e1cb3"

--000000000000a524c905a13e1cb3
Content-Type: text/plain; charset="UTF-8"

Which 10 Gbps network card are you using?

--Neel Pandeya



On Thu, 19 Mar 2020 at 10:50, Carmichael, Ryan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I had an application running with 3.11.1 libraries and and my X310
> corresponding firmware. After building and installing 3.15.0 on my system
> and flashing the X310, everything seemed okay.
>
> However, we now get this error when starting up:
>
> *[WARNING] [X300] You requested a send frame size of (9000) but your NIC's
> max frame size is (8000).Please verify your NIC's MTU setting using 'ip
> link' or set the send_frame_size argument appropriately.UHD will use the
> auto-detected max frame size for this connection.*
>
> And when we start to transmit, odd errors like this show up (what is 'this
> can cause 27.0464' trying to tell me?):
>
>
> *[WARNING] [MULTI_USRP] The total sum of rates (66.666667 MSps on 1
> channels) exceeds the maximum capacity of the connection (overflows (O)
> MSps). This can cause 27.0464.*
>
> I'm using 10Gb NICs that again, worked fine with 3.11. The MTUs are set to
> 9000 (I've also tried 9001, 9100, nothing seems to change the warning).
>
> *ip link*
>
>
>
> *6: enp13s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state
> UP mode DEFAULT group default qlen 1000     link/ether f8:f2:1e:42:e1:d4
> brd ff:ff:ff:ff:ff:ff 7: enp13s0f1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu
> 9000 qdisc mq state UP mode DEFAULT group default qlen 1000     link/ether
> f8:f2:1e:42:e1:d5 brd ff:ff:ff:ff:ff:ff*
>
> The usrp_probe output is below. Any ideas on what is happening?
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
> *uhd_usrp_probe --args="addr=192.168.30.2" [INFO] [UHD] linux; GNU C++
> version 4.8.5 20150623 (Red Hat 4.8.5-39); Boost_106700;
> UHD_3.15.0.0-7-g8d228dbe [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes. [INFO] [X300] Radio 1x clock:
> 200 MHz [INFO] [GPS] No GPSDO found [INFO] [0/DmaFIFO_0] Initializing block
> control (NOC ID: 0xF1F0D00000000000) [INFO] [0/DmaFIFO_0] BIST passed
> (Throughput: 1321 MB/s) [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300
> MB/s) [INFO] [0/Radio_0] Initializing block control (NOC ID:
> 0x12AD100000000001) [INFO] [0/Radio_1] Initializing block control (NOC ID:
> 0x12AD100000000001) [INFO] [0/DDC_0] Initializing block control (NOC ID:
> 0xDDC0000000000000) [INFO] [0/DDC_1] Initializing block control (NOC ID:
> 0xDDC0000000000000) [INFO] [0/DUC_0] Initializing block control (NOC ID:
> 0xD0C0000000000000) [INFO] [0/DUC_1] Initializing block control (NOC ID:
> 0xD0C0000000000000)   _____________________________________________________
>  / |       Device: X-Series Device |
> _____________________________________________________ |    / |   |
> Mboard: X310 |   |   revision: 11 |   |   revision_compat: 7 |   |
> product: 30818 |   |   mac-addr0: 00:80:2f:24:d2:a9 |   |   mac-addr1:
> 00:80:2f:24:d2:aa |   |   gateway: 192.168.10.1 |   |   ip-addr0:
> 192.168.10.2 |   |   subnet0: 255.255.255.0 |   |   ip-addr1: 192.168.20.2
> |   |   subnet1: 255.255.255.0 |   |   ip-addr2: 192.168.30.2 |   |
> subnet2: 255.255.255.0 |   |   ip-addr3: 192.168.40.2 |   |   subnet3:
> 255.255.255.0 |   |   serial: 318D6DF |   |   FW Version: 6.0 |   |   FPGA
> Version: 36.0 |   |   FPGA git hash: 9ba275d |   |   RFNoC capable: Yes |
> | |   |   Time sources:  internal, external, gpsdo |   |   Clock sources:
> internal, external, gpsdo |   |   Sensors: ref_locked |   |
> _____________________________________________________ |   |    / |   |
> |       RX Dboard: A |   |   |   ID: UBX-160 v2 (0x007e) |   |   |
> Serial: 3185BEE |   |   |
> _____________________________________________________ |   |   |    / |
> |   |   |       RX Frontend: 0 |   |   |   |   Name: UBX RX |   |   |   |
> Antennas: TX/RX, RX2, CAL |   |   |   |   Sensors: lo_locked |   |   |
> |   Freq range: 10.000 to 6000.000 MHz |   |   |   |   Gain range PGA0: 0.0
> to 31.5 step 0.5 dB |   |   |   |   Bandwidth range: 160000000.0 to
> 160000000.0 step 0.0 Hz |   |   |   |   Connection Type: IQ |   |   |   |
> Uses LO offset: No |   |   |
> _____________________________________________________ |   |   |    / |
> |   |   |       RX Codec: A |   |   |   |   Name: ads62p48 |   |   |   |
> Gain range digital: 0.0 to 6.0 step 0.5 dB |   |
> _____________________________________________________ |   |    / |   |
> |       RX Dboard: B |   |   |   ID: UBX-160 v2 (0x007e) |   |   |
> Serial: 3185CA1 |   |   |
> _____________________________________________________ |   |   |    / |
> |   |   |       RX Frontend: 0 |   |   |   |   Name: UBX RX |   |   |   |
> Antennas: TX/RX, RX2, CAL |   |   |   |   Sensors: lo_locked |   |   |
> |   Freq range: 10.000 to 6000.000 MHz |   |   |   |   Gain range PGA0: 0.0
> to 31.5 step 0.5 dB |   |   |   |   Bandwidth range: 160000000.0 to
> 160000000.0 step 0.0 Hz |   |   |   |   Connection Type: IQ |   |   |   |
> Uses LO offset: No |   |   |
> _____________________________________________________ |   |   |    / |
> |   |   |       RX Codec: B |   |   |   |   Name: ads62p48 |   |   |   |
> Gain range digital: 0.0 to 6.0 step 0.5 dB |   |
> _____________________________________________________ |   |    / |   |
> |       TX Dboard: A |   |   |   ID: UBX-160 v2 (0x007d) |   |   |
> Serial: 3185BEE |   |   |
> _____________________________________________________ |   |   |    / |
> |   |   |       TX Frontend: 0 |   |   |   |   Name: UBX TX |   |   |   |
> Antennas: TX/RX, CAL |   |   |   |   Sensors: lo_locked |   |   |   |
> Freq range: 10.000 to 6000.000 MHz |   |   |   |   Gain range PGA0: 0.0 to
> 31.5 step 0.5 dB |   |   |   |   Bandwidth range: 160000000.0 to
> 160000000.0 step 0.0 Hz |   |   |   |   Connection Type: QI |   |   |   |
> Uses LO offset: No |   |   |
> _____________________________________________________ |   |   |    / |
> |   |   |       TX Codec: A |   |   |   |   Name: ad9146 |   |   |   |
> Gain Elements: None |   |
> _____________________________________________________ |   |    / |   |
> |       TX Dboard: B |   |   |   ID: UBX-160 v2 (0x007d) |   |   |
> Serial: 3185CA1 |   |   |
> _____________________________________________________ |   |   |    / |
> |   |   |       TX Frontend: 0 |   |   |   |   Name: UBX TX |   |   |   |
> Antennas: TX/RX, CAL |   |   |   |   Sensors: lo_locked |   |   |   |
> Freq range: 10.000 to 6000.000 MHz |   |   |   |   Gain range PGA0: 0.0 to
> 31.5 step 0.5 dB |   |   |   |   Bandwidth range: 160000000.0 to
> 160000000.0 step 0.0 Hz |   |   |   |   Connection Type: QI |   |   |   |
> Uses LO offset: No |   |   |
> _____________________________________________________ |   |   |    / |
> |   |   |       TX Codec: B |   |   |   |   Name: ad9146 |   |   |   |
> Gain Elements: None |   |
> _____________________________________________________ |   |    / |   |
> |       RFNoC blocks on this device: |   |   | |   |   |   * DmaFIFO_0 |
> |   |   * Radio_0 |   |   |   * Radio_1 |   |   |   * DDC_0 |   |   |   *
> DDC_1 |   |   |   * DUC_0 |   |   |   * DUC_1*
>
> Thanks,
> Ryan
>
> * ------------------------------ The information contained in this
> message, and any attachments, may contain privileged and/or proprietary
> information that is intended solely for the person or entity to which it is
> addressed. Moreover, it may contain export restricted technical data
> controlled by Export Administration Regulations (EAR) or the International
> Traffic in Arms Regulations (ITAR). Any review, retransmission,
> dissemination, or re-export to foreign or domestic entities by anyone other
> than the intended recipient in accordance with EAR and/or ITAR regulations
> is prohibited. *
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a524c905a13e1cb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Which 10 Gbps network card are you using?</div><div class=3D"gm=
ail_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif">--Neel Pandeya<=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
<br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, 19 Mar 2020 at 10:50, Carmichael, Ryan via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">




<div>
<div style=3D"direction:ltr;font-family:Tahoma;color:rgb(0,0,0);font-size:1=
0pt">
<div>I had an application running with 3.11.1 libraries and and my X310 cor=
responding firmware. After building and installing 3.15.0 on my system and =
flashing the X310, everything seemed okay.<br>
</div>
<div><br>
</div>
<div>However, we now get this error when starting up:</div>
<div><br>
</div>
<div><b>[WARNING] [X300] You requested a send frame size of (9000) but your=
 NIC&#39;s max frame size is (8000).Please verify your NIC&#39;s MTU settin=
g using &#39;ip link&#39; or set the send_frame_size argument appropriately=
.UHD will use the auto-detected max frame size for
 this connection.</b></div>
<div><b><br>
</b></div>
<div>And when we start to transmit, odd errors like this show up (what is &=
#39;this can cause 27.0464&#39; trying to tell me?):</div>
<div><br>
</div>
<div><b>[WARNING] [MULTI_USRP] The total sum of rates (66.666667 MSps on 1 =
channels) exceeds the maximum capacity of the connection (overflows (O) MSp=
s).<br>
This can cause 27.0464.</b></div>
<div><br>
</div>
<div>I&#39;m using 10Gb NICs that again, worked fine with 3.11. The MTUs ar=
e set to 9000 (I&#39;ve also tried 9001, 9100, nothing seems to change the =
warning).</div>
<div><br>
</div>
<div><b>ip link</b></div>
<div><b>6: enp13s0f0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdis=
c mq state UP mode DEFAULT group default qlen 1000<br>
=C2=A0=C2=A0=C2=A0 link/ether f8:f2:1e:42:e1:d4 brd ff:ff:ff:ff:ff:ff<br>
7: enp13s0f1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq sta=
te UP mode DEFAULT group default qlen 1000<br>
=C2=A0=C2=A0=C2=A0 link/ether f8:f2:1e:42:e1:d5 brd ff:ff:ff:ff:ff:ff</b></=
div>
<div><b><br>
</b></div>
<div>The usrp_probe output is below. Any ideas on what is happening?</div>
<div><br>
</div>
<div><b>uhd_usrp_probe --args=3D&quot;addr=3D192.168.30.2&quot;<br>
[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); Boos=
t_106700; UHD_3.15.0.0-7-g8d228dbe<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
[INFO] [GPS] No GPSDO found<br>
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1321 MB/s)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
=C2=A0 _____________________________________________________<br>
=C2=A0/<br>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Device: X-Series Device<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 _________________________________________________=
____<br>
|=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard: X310<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 revision: 11<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 revision_compat: 7<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 product: 30818<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 mac-addr0: 00:80:2f:24:d2:a9<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 mac-addr1: 00:80:2f:24:d2:aa<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 gateway: 192.168.10.1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr0: 192.168.10.2<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet0: 255.255.255.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr1: 192.168.20.2<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet1: 255.255.255.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr2: 192.168.30.2<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet2: 255.255.255.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr3: 192.168.40.2<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet3: 255.255.255.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 serial: 318D6DF<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 FW Version: 6.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA Version: 36.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA git hash: 9ba275d<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 RFNoC capable: Yes<br>
|=C2=A0=C2=A0 |<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Time sources:=C2=A0 internal, external, gpsdo<b=
r>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Clock sources: internal, external, gpsdo<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: ref_locked<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard=
: A<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: UBX-160 v2 (0x007e)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 3185BEE<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Frontend: 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: UBX RX<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, RX=
2, CAL<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 10.000 =
to 6000.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range PGA0: 0.=
0 to 31.5 step 0.5 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 16=
0000000.0 to 160000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: IQ=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Codec: A<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ads62p48<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range digital:=
 0.0 to 6.0 step 0.5 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard=
: B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: UBX-160 v2 (0x007e)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 3185CA1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Frontend: 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: UBX RX<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, RX=
2, CAL<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 10.000 =
to 6000.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range PGA0: 0.=
0 to 31.5 step 0.5 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 16=
0000000.0 to 160000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: IQ=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Codec: B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ads62p48<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range digital:=
 0.0 to 6.0 step 0.5 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard=
: A<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: UBX-160 v2 (0x007d)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 3185BEE<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Frontend: 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: UBX TX<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, CA=
L<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 10.000 =
to 6000.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range PGA0: 0.=
0 to 31.5 step 0.5 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 16=
0000000.0 to 160000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: QI=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Codec: A<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ad9146<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard=
: B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: UBX-160 v2 (0x007d)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 3185CA1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Frontend: 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: UBX TX<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX, CA=
L<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: lo_locked<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 10.000 =
to 6000.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range PGA0: 0.=
0 to 31.5 step 0.5 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 16=
0000000.0 to 160000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: QI=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Codec: B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ad9146<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RFNoC blo=
cks on this device:<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DmaFIFO_0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * Radio_0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * Radio_1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DDC_0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DDC_1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DUC_0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DUC_1</b></div>
<div><br>
</div>
<div>Thanks,</div>
<div>Ryan<br>
<b></b></div>
</div>
<i><br>
<hr>
<p style=3D"font-size:8pt;line-height:9pt">The information contained in thi=
s message, and any attachments, may contain privileged and/or proprietary i=
nformation that is intended solely for the person or entity to which it is =
addressed.
 Moreover, it may contain export restricted technical data controlled by Ex=
port Administration Regulations (EAR) or the International Traffic in Arms =
Regulations (ITAR). Any review, retransmission, dissemination, or re-export=
 to foreign or domestic entities
 by anyone other than the intended recipient in accordance with EAR and/or =
ITAR regulations is prohibited.</p>
</i>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a524c905a13e1cb3--


--===============0805523542490541675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0805523542490541675==--

