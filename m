Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F380A377B73
	for <lists+usrp-users@lfdr.de>; Mon, 10 May 2021 07:18:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAE08384149
	for <lists+usrp-users@lfdr.de>; Mon, 10 May 2021 01:18:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="DcKjNc/0";
	dkim-atps=neutral
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 33566383D93
	for <usrp-users@lists.ettus.com>; Mon, 10 May 2021 01:17:18 -0400 (EDT)
Received: by mail-vk1-f170.google.com with SMTP id c17so69669vke.3
        for <usrp-users@lists.ettus.com>; Sun, 09 May 2021 22:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6HxFuLpD7FLHzcll13morkeXsybe0KtIP3wOsEbD5yE=;
        b=DcKjNc/0e9qtk00P8vubPwycfA+Fzq4jPY1eh8rc2iIb7rZXSYyTduzH+1yH5hvb4g
         m6ko+2+2cJuJZSBU9Hli0SE7PQSqO/ZmszXZ1qBnsTLKdbRVojWeQsHZI9KByCtsaak0
         rfXwLy9rOKN16ugNZ2hglDvilgcYB1M4e3/0Qqw4qjmSO9hLoyhTgPuOotkfKwh/7eOJ
         fW+xOW07k/c8EpCeKElG8fWRVAOcH+V7xAB6owVlnZ8fE/4Ft1u4eIxoDms/9aB3Uj3E
         9Hy/NwGFA/Herqhw/UAsZfl0GL9xtNRKhisWsPLCzCNVH42VBmSY4X8x8Fml8CPHAC9w
         Vklg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6HxFuLpD7FLHzcll13morkeXsybe0KtIP3wOsEbD5yE=;
        b=fwLrAoIFqYmd9qcAEavjvBEbqD+rM3jdm5910X/qOzPzPhvWcvHY/bfhgIMAdoreR1
         ymYF5D0QQOdODEH0MNdqMrVJGPg5ipq8AG5exfGbRww4FlDVPs5waSXNySKJXDDZHaDK
         LX5CXXlIPOoc65gaWhzJsvEmsADTWbUqGrFzDHMdaBV1tM6ExsuCoT4/7HFp238G66+i
         A1DOIq0Fu7arzj3AqTurEhnrTneHXigQE/62YCGBFuhCpvi8wHOXP/OAJUyEYe2bnfFQ
         z+N5m9LPqiNvHAxA8nsgXoYZrPHzX53iBFTk9JSURAl/cS/pmOmMXeEaMUO4+LQd8ALa
         Xbxg==
X-Gm-Message-State: AOAM532fYfHHUcnIb6SUrhgneDwRsEl58/+IhKGRmQWao3szmzER3ecA
	DGBd8xGnls3CzwyxfPvpcWeuRVzcc1dToNfkA6jWxsig
X-Google-Smtp-Source: ABdhPJyuU9f3LYoWoH7HBEQnzjt2X7tBfGHMw9e33CpQzVdOx5cyoEhhd3afuRiOHO8KDGepmVkHtCy10Wg+D3dG3Lg=
X-Received: by 2002:a1f:4d01:: with SMTP id a1mr10063005vkb.22.1620623837443;
 Sun, 09 May 2021 22:17:17 -0700 (PDT)
MIME-Version: 1.0
References: <uyQUxIWto2nFgEDbAMLlwxu9uyO082Zhpj19z3aVRc@lists.ettus.com>
In-Reply-To: <uyQUxIWto2nFgEDbAMLlwxu9uyO082Zhpj19z3aVRc@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Mon, 10 May 2021 01:16:41 -0400
Message-ID: <CAL7q81uYP9+okR4snEy+jtqzevMN+Qm2ysAzXpcAxSxrQLn0CA@mail.gmail.com>
To: Julian Casallas <jcasallas2019@gmail.com>
Message-ID-Hash: QCLLXCV4KPGIVHK64K4WZTBKYWGRF4KT
X-Message-ID-Hash: QCLLXCV4KPGIVHK64K4WZTBKYWGRF4KT
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QCLLXCV4KPGIVHK64K4WZTBKYWGRF4KT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5398532720397677901=="

--===============5398532720397677901==
Content-Type: multipart/alternative; boundary="000000000000254fff05c1f2e4a9"

--000000000000254fff05c1f2e4a9
Content-Type: text/plain; charset="UTF-8"

Hi Julian,

Did you make any modifications to the PCIe or Chinch interfaces as
mentioned here: https://kb.ettus.com/X300/X310#FPGA_User_Modifications? If
you don't know, then you very likely didn't because this is something you
would have to do manually.

Jonathon

On Thu, May 6, 2021 at 5:47 PM <jcasallas2019@gmail.com> wrote:

> sure,
>
>    1.
>
>    I went through the device recovery because of the issue I am currently
>    having. However, I noticed this issue fro the first time after using vivado
>    ILA, I was programming the device using the hardware manager, debugging,
>    making changes to the custom rfnoc block and creating images. When I
>    finished using vivado for debugging and testing, I wanted to load the image
>    using the python script uhd_image_loader but I noticed the device
>    initialization issue, then I went through the device recovery process which
>    did not work.
>    2.
>
>    I can load a custom image or the default image via Vivado, connect
>    rfnoc blocks, get the right information and display data with no issues.
>    Also, the uhd_usrp_probe is working as shown below. But I can not restart
>    the device because the image is not written EEPROM. If I do, UHD does not
>    find any device, I have to use vivado to load images for now.
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> [INFO] [X300] Radio 1x clock: 200 MHz
>   _____________________________________________________
>  /
> |       Device: X-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: X310
> |   |   revision: 11
> |   |   revision_compat: 7
> |   |   product: 30818
> |   |   mac-addr0: 00:80:2f:22:ff:b4
> |   |   mac-addr1: 00:80:2f:22:ff:b5
> |   |   gateway: 192.168.10.1
> |   |   ip-addr0: 192.168.10.2
> |   |   subnet0: 255.255.255.0
> |   |   ip-addr1: 192.168.20.2
> |   |   subnet1: 255.255.255.0
> |   |   ip-addr2: 192.168.30.2
> |   |   subnet2: 255.255.255.0
> |   |   ip-addr3: 192.168.40.2
> |   |   subnet3: 255.255.255.0
> |   |   serial: 3176C83
> |   |   FW Version: 6.0
> |   |   FPGA Version: 38.0
> |   |   FPGA git hash: e520e3f-dirty
> |   |
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: internal, external, gpsdo
> |   |   Sensors: gps_servo, gps_gprmc, gps_time, gps_gpgga, gps_locked, ref_locked
> |     _____________________________________________________
> |    /
> |   |       RFNoC blocks on this device:
> |   |
> |   |   * 0/DDC#0
> |   |   * 0/DDC#1
> |   |   * 0/DUC#0
> |   |   * 0/DUC#1
> |   |   * 0/FFT#0
> |   |   * 0/FFT#1
> |   |   * 0/Radio#0
> |   |   * 0/Radio#1
> |     _____________________________________________________
> |    /
> |   |       Static connections on this device:
> |   |
> |   |   * 0/SEP#0:0==>0/DUC#0:0
> |   |   * 0/DUC#0:0==>0/Radio#0:0
> |   |   * 0/Radio#0:0==>0/DDC#0:0
> |   |   * 0/DDC#0:0==>0/SEP#0:0
> |   |   * 0/Radio#0:1==>0/DDC#0:1
> |   |   * 0/DDC#0:1==>0/SEP#1:0
> |   |   * 0/SEP#2:0==>0/DUC#1:0
> |   |   * 0/DUC#1:0==>0/Radio#1:0
> |   |   * 0/Radio#1:0==>0/DDC#1:0
> |   |   * 0/DDC#1:0==>0/SEP#2:0
> |   |   * 0/Radio#1:1==>0/DDC#1:1
> |   |   * 0/DDC#1:1==>0/SEP#3:0
> |   |   * 0/SEP#4:0==>0/FFT#0:0
> |   |   * 0/FFT#0:0==>0/SEP#4:0
> |   |   * 0/SEP#5:0==>0/FFT#1:0
> |   |   * 0/FFT#1:0==>0/SEP#5:0
> |     _____________________________________________________
> |    /
> |   |       TX Dboard: dboard
> |   |   ID: UBX-160 v2 (0x007d)
> |   |   Serial: 315EA14
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Frontend: 0
> |   |   |   Name: UBX TX
> |   |   |   Antennas: TX/RX, CAL
> |   |   |   Sensors: lo_locked
> |   |   |   Freq range: 10.000 to 6000.000 MHz
> |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> |   |   |   Connection Type: QI
> |   |   |   Uses LO offset: No
> |     _____________________________________________________
> |    /
> |   |       RX Dboard: dboard
> |   |   ID: UBX-160 v2 (0x007e)
> |   |   Serial: 315EA14
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Frontend: 0
> |   |   |   Name: UBX RX
> |   |   |   Antennas: TX/RX, RX2, CAL
> |   |   |   Sensors: lo_locked
> |   |   |   Freq range: 10.000 to 6000.000 MHz
> |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
> |     _____________________________________________________
> |    /
> |   |       TX Dboard: dboard
> |   |   ID: UBX-160 v2 (0x007d)
> |   |   Serial: 3158364
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Frontend: 0
> |   |   |   Name: UBX TX
> |   |   |   Antennas: TX/RX, CAL
> |   |   |   Sensors: lo_locked
> |   |   |   Freq range: 10.000 to 6000.000 MHz
> |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> |   |   |   Connection Type: QI
> |   |   |   Uses LO offset: No
> |     _____________________________________________________
> |    /
> |   |       RX Dboard: dboard
> |   |   ID: UBX-160 v2 (0x007e)
> |   |   Serial: 3158364
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Frontend: 0
> |   |   |   Name: UBX RX
> |   |   |   Antennas: TX/RX, RX2, CAL
> |   |   |   Sensors: lo_locked
> |   |   |   Freq range: 10.000 to 6000.000 MHz
> |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
>
> THANKS.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000254fff05c1f2e4a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julian,<div><br></div><div>Did you make any modificatio=
ns to the PCIe or Chinch interfaces as mentioned here: <a href=3D"https://k=
b.ettus.com/X300/X310#FPGA_User_Modifications">https://kb.ettus.com/X300/X3=
10#FPGA_User_Modifications</a>? If you don&#39;t know, then you very likely=
 didn&#39;t because this is=C2=A0something=C2=A0you would have to do manual=
ly.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 6, 2021 at 5:47 PM &=
lt;<a href=3D"mailto:jcasallas2019@gmail.com">jcasallas2019@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>sur=
e,</p><ol><li><p>I went through the device recovery because of the issue I =
am currently having. However, I noticed this issue fro the first time after=
 using vivado ILA, I was programming the device using the hardware manager,=
 debugging, making changes to the custom rfnoc block and creating images. W=
hen I finished using vivado for debugging and testing, I wanted to load the=
 image using the python script uhd_image_loader but I noticed the device in=
itialization issue, then I went through the device recovery process which d=
id not work.</p></li><li><p>I can load a custom image or the default image =
via Vivado, connect rfnoc blocks, get the right information and display dat=
a with no issues. Also, the uhd_usrp_probe is working as shown below. But I=
 can not restart the device because the image is not written EEPROM. If I d=
o, UHD does not find any device, I have to use vivado to load images for no=
w.</p></li></ol><pre><code>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost=
_107100; UHD_4.0.0.0-50-ge520e3ff
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30818
|   |   mac-addr0: 00:80:2f:22:ff:b4
|   |   mac-addr1: 00:80:2f:22:ff:b5
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 3176C83
|   |   FW Version: 6.0
|   |   FPGA Version: 38.0
|   |   FPGA git hash: e520e3f-dirty
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: gps_servo, gps_gprmc, gps_time, gps_gpgga, gps_locked, ref=
_locked
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/FFT#0
|   |   * 0/FFT#1
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0
|   |   * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0
|   |   * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0
|   |   * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0
|   |   * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1
|   |   * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0
|   |   * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0
|   |   * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0
|   |   * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0
|   |   * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0
|   |   * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1
|   |   * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0
|   |   * 0/SEP#4:0=3D=3D&gt;0/FFT#0:0
|   |   * 0/FFT#0:0=3D=3D&gt;0/SEP#4:0
|   |   * 0/SEP#5:0=3D=3D&gt;0/FFT#1:0
|   |   * 0/FFT#1:0=3D=3D&gt;0/SEP#5:0
|     _____________________________________________________
|    /
|   |       TX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 315EA14
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 315EA14
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 3158364
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 3158364
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No

THANKS.
<br></code></pre>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000254fff05c1f2e4a9--

--===============5398532720397677901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5398532720397677901==--
