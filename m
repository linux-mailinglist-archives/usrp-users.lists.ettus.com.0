Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 379EB3122F
	for <lists+usrp-users@lfdr.de>; Fri, 31 May 2019 18:21:40 +0200 (CEST)
Received: from [::1] (port=42352 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWkHd-0000MM-Ri; Fri, 31 May 2019 12:21:33 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:46553)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hWkHZ-0000HF-UA
 for usrp-users@lists.ettus.com; Fri, 31 May 2019 12:21:29 -0400
Received: by mail-qt1-f169.google.com with SMTP id z19so1496670qtz.13
 for <usrp-users@lists.ettus.com>; Fri, 31 May 2019 09:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=MXNGIEEN88nMXmQBVuW/3TjooAE1rirLUsjasVWHetQ=;
 b=IGzalRYRglIHCB6Fduey2WYQRRcBYEETL9rbVeX1xc4yZ8xKa1fP0l5ESedKE1v2iw
 e/hPq1eUVqawkvfJPUfVt56ciZ1GFBB44cx87rfWAgrDFyZtk+LtijMt+d/ZwLH/j7hR
 xxe1s9zE+T8WPDoYtON1GnWwhtcwE/mTOqbgH9qLMp14BQdryV+r4/4O07dNp/zK31oh
 eRmYJ0uSCMzXMR9FX4M8Nfp0oxZCgGGzykS/OnjYMsFEkmq6UvrhuuOJnh2VQ/fsLWXi
 o9eZdVtYoUlrT0+4F1dEKllVTfwhX0kGnahj74wQG6pzk21JIfMUp6EphY04FEBMBAqM
 88Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=MXNGIEEN88nMXmQBVuW/3TjooAE1rirLUsjasVWHetQ=;
 b=eK8NVq82fKV8HAhkUrKsU8n0qf/PenyGAKtP6DwnvV6wDK+O8AvJNXCeHYHPL0DGIl
 3DjjaBmQB9RMuCuwxDA3B2ThrSxKa55A8y9TWKviod6eU8/5B9NXcXs1dEuib2OXRUCw
 SyKkdbKTSZQdkjtWFFP5q9h+YeSmEsULoXhRs2p6t9XPkJnMRxPD8/vWjPnNb0ABfsKs
 9K6JFhO2He/bn1tf6gY/nN9K725+S2V/ITudEXZEkiijhIfu01pi/Of4TqVdkpdP5Ly8
 KCwkAjSq0HGJQzOf8tJ0Ggb+7Y9swPHoAlt7GTFp8d8qSHthQpzKbd2GzFIhvB4Ft7c0
 ZL0g==
X-Gm-Message-State: APjAAAUa39JelvYg9SCjJz7QZGneWAK3LpF62CdHUyBOi03TPl1iIqxp
 YSXXwNLcc5orGfuWOJgrYOPScbxr37Y=
X-Google-Smtp-Source: APXvYqzh35LD08TxT05n++BAcSxa0Czwt1X3sjwePbQKuUA/4pWQ0DAet9+iU4JQvWU2whzZmj8ksQ==
X-Received: by 2002:ac8:1807:: with SMTP id q7mr8459183qtj.327.1559319649096; 
 Fri, 31 May 2019 09:20:49 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id u7sm2202002qkm.62.2019.05.31.09.20.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 09:20:48 -0700 (PDT)
Message-ID: <5CF1545F.3060907@gmail.com>
Date: Fri, 31 May 2019 12:20:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Saimanoj Katta <saimanoj.katta@cumucore.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CABO=5RreJaEwnCGMDvLMO-5yv6xarq7zDjb4XVd9p=m6ooP4YA@mail.gmail.com>
 <A5FB66AA-94BD-41E5-84EE-F317B7D605AD@gmail.com>
 <CABO=5Rqw8h5JD9YZWydNwFQh7k9C1F6mT7N0eAXko9k9Vs39Zw@mail.gmail.com>
In-Reply-To: <CABO=5Rqw8h5JD9YZWydNwFQh7k9C1F6mT7N0eAXko9k9Vs39Zw@mail.gmail.com>
Subject: Re: [USRP-users] Regarding detection of USRP devices
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
Content-Type: multipart/mixed; boundary="===============7608710418645266533=="
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
--===============7608710418645266533==
Content-Type: multipart/alternative;
 boundary="------------030009090705050104000003"

This is a multi-part message in MIME format.
--------------030009090705050104000003
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/31/2019 12:16 PM, Saimanoj Katta wrote:
> Hi,
>
> Thanks for your reply. I did try as root user using sudo commands, 
> still not working.
>
> Any other inputs would be appreciated.
>
> Regards,
> Manu
How are you connected to the USRP?  Is it on a dedicated port on your 
computer?  Is it behind a router/switch?

Also, try restricting your subnet to 255.255.255.0 -- the code in UHD 
that forms subnet-broadcast messages might not deal with
   a larger subnet.


>
> On Fri, 31 May 2019, 19:12 Marcus D Leech, <patchvonbraun@gmail.com 
> <mailto:patchvonbraun@gmail.com>> wrote:
>
>     Your system may be configured to block the broadcast messages as a
>     security feature. Try it as root.
>
>
>     Sent from my iPhone
>
>     > On May 31, 2019, at 9:02 AM, Saimanoj Katta via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>     >
>     > Hi,
>     >
>     > I am using USRP X310 and when I run these commands:
>     uhd_find_devices, uhd_usrp_probe, I don't get any results on my
>     terminal. When I run the above commands with --args
>     addr=192.168.50.2, I get the output. IP address(static) at the
>     host is 192.168.10.3 with subnet of 255.255.0.0. I have given the
>     subnet to detect more ip addresses.
>     >
>     > As far as I know, the uhd_images_downloader has images correctly
>     installed in the local library and all the Firmware drivers
>     installed. Can you help me what is wrong? I have the same issue
>     running GNU radio( the fm receiver example is not detecting the
>     device/ip address).
>     >
>     > Any suggestions would be appreciated! Many thanks in advance.
>     >
>     > Here are the outputs, I got:
>     >
>     > uhd_find_devices
>     > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>     UHD_3.14.0.HEAD-0-g6875d061
>     > No UHD Devices Found
>     >
>     > uhd_usrp_probe
>     > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>     UHD_3.14.0.HEAD-0-g6875d061
>     > Error: LookupError: KeyError: No devices found for ----->
>     > Empty Device Address
>     >
>     > uhd_images_downloader [INFO] Images destination:
>     /usr/local/share/uhd/images
>     > [INFO] Target usrp1_b100_fw_default is up to date.
>     > [INFO] Target x3xx_x310_fpga_default is up to date.
>     > [INFO] Target usrp2_n210_fpga_default is up to date.
>     > [INFO] Target n230_n230_fpga_default is up to date.
>     > [INFO] Target usrp1_b100_fpga_default is up to date.
>     > [INFO] Target b2xx_b200_fpga_default is up to date.
>     > [INFO] Target usrp2_n200_fpga_default is up to date.
>     > [INFO] Target e3xx_e320_fpga_default is up to date.
>     > [INFO] Target n3xx_n310_fpga_default is up to date.
>     > [INFO] Target b2xx_b205mini_fpga_default is up to date.
>     > [INFO] Target x3xx_x300_fpga_default is up to date.
>     > [INFO] Target octoclock_octoclock_fw_default is up to date.
>     > [INFO] Target usrp2_usrp2_fw_default is up to date.
>     > [INFO] Target usrp2_n200_fw_default is up to date.
>     > [INFO] Target usrp2_usrp2_fpga_default is up to date.
>     > [INFO] Target b2xx_common_fw_default is up to date.
>     > [INFO] Target n3xx_n320_fpga_default is up to date.
>     > [INFO] Target b2xx_b200mini_fpga_default is up to date.
>     > [INFO] Target usrp1_usrp1_fpga_default is up to date.
>     > [INFO] Target usb_common_windrv_default is up to date.
>     > [INFO] Target usrp2_n210_fw_default is up to date.
>     > [INFO] Target n3xx_n300_fpga_default is up to date.
>     > [INFO] Target e3xx_e310_fpga_default is up to date.
>     > [INFO] Target b2xx_b210_fpga_default is up to date.
>     >
>     > uhd_find_devices --args addr=192.168.50.2
>     > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>     UHD_3.14.0.HEAD-0-g6875d061
>     > --------------------------------------------------
>     > -- UHD Device 0
>     > --------------------------------------------------
>     > Device Address:
>     >     serial: 30CBE93
>     >     addr: 192.168.50.2
>     >     fpga: HG
>     >     name:
>     >     product: X310
>     >     type: x300
>     >
>     > uhd_usrp_probe --args addr=192.168.50.2
>     > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>     UHD_3.14.0.HEAD-0-g6875d061
>     > [INFO] [X300] X300 initialization sequence...
>     > [INFO] [X300] Maximum frame size: 1472 bytes.
>     > [INFO] [X300] Radio 1x clock: 200 MHz
>     > [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
>     > [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>     0xF1F0D00000000000)
>     > [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1293 MB/s)
>     > [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1318 MB/s)
>     > [INFO] [0/Radio_0] Initializing block control (NOC ID:
>     0x12AD100000000001)
>     > [INFO] [0/Radio_1] Initializing block control (NOC ID:
>     0x12AD100000000001)
>     > [INFO] [0/DDC_0] Initializing block control (NOC ID:
>     0xDDC0000000000000)
>     > [INFO] [0/DDC_1] Initializing block control (NOC ID:
>     0xDDC0000000000000)
>     > [INFO] [0/DUC_0] Initializing block control (NOC ID:
>     0xD0C0000000000000)
>     > [INFO] [0/DUC_1] Initializing block control (NOC ID:
>     0xD0C0000000000000)
>     >   _____________________________________________________
>     >  /
>     > |       Device: X-Series Device
>     > |  _____________________________________________________
>     > |    /
>     > |   |       Mboard: X310
>     > |   |   revision: 8
>     > |   |   revision_compat: 7
>     > |   |   product: 30818
>     > |   |   mac-addr0: 00:80:2f:23:d2:4d
>     > |   |   mac-addr1: 00:80:2f:23:d2:4e
>     > |   |   gateway: 192.168.10.1
>     > |   |   ip-addr0: 192.168.50.2
>     > |   |   subnet0: 255.255.255.0
>     > |   |   ip-addr1: 192.168.60.2
>     > |   |   subnet1: 255.255.255.0
>     > |   |   ip-addr2: 192.168.70.2
>     > |   |   subnet2: 255.255.255.0
>     > |   |   ip-addr3: 192.168.80.2
>     > |   |   subnet3: 255.255.255.0
>     > |   |   serial: 30CBE93
>     > |   |   FW Version: 6.0
>     > |   |   FPGA Version: 35.1
>     > |   |   FPGA git hash: 4c165a5
>     > |   |   RFNoC capable: Yes
>     > |   |
>     > |   |   Time sources:  internal, external, gpsdo
>     > |   |   Clock sources: internal, external, gpsdo
>     > |   |   Sensors: gps_gpgga, gps_gprmc, gps_time, gps_locked,
>     gps_servo, ref_locked
>     > |   |  _____________________________________________________
>     > |   |    /
>     > |   |   |       RX Dboard: A
>     > |   |   |   ID: UBX-160 v1 (0x007a)
>     > |   |   |   Serial: 30CF8F2
>     > |   |   |  _____________________________________________________
>     > |   |   |    /
>     > |   |   |   |       RX Frontend: 0
>     > |   |   |   |   Name: UBX RX
>     > |   |   |   |   Antennas: TX/RX, RX2, CAL
>     > |   |   |   |   Sensors: lo_locked
>     > |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     > |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     > |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>     0.0 Hz
>     > |   |   |   |   Connection Type: IQ
>     > |   |   |   |   Uses LO offset: No
>     > |   |   |  _____________________________________________________
>     > |   |   |    /
>     > |   |   |   |       RX Codec: A
>     > |   |   |   |   Name: ads62p48
>     > |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
>     > |   |  _____________________________________________________
>     > |   |    /
>     > |   |   |       RX Dboard: B
>     > |   |   |   ID: UBX-160 v1 (0x007a)
>     > |   |   |   Serial: 30BA660
>     > |   |   |  _____________________________________________________
>     > |   |   |    /
>     > |   |   |   |       RX Frontend: 0
>     > |   |   |   |   Name: UBX RX
>     > |   |   |   |   Antennas: TX/RX, RX2, CAL
>     > |   |   |   |   Sensors: lo_locked
>     > |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     > |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     > |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>     0.0 Hz
>     > |   |   |   |   Connection Type: IQ
>     > |   |   |   |   Uses LO offset: No
>     > |   |   |  _____________________________________________________
>     > |   |   |    /
>     > |   |   |   |       RX Codec: B
>     > |   |   |   |   Name: ads62p48
>     > |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
>     > |   |  _____________________________________________________
>     > |   |    /
>     > |   |   |       TX Dboard: A
>     > |   |   |   ID: UBX-160 v1 (0x0079)
>     > |   |   |   Serial: 30CF8F2
>     > |   |   |  _____________________________________________________
>     > |   |   |    /
>     > |   |   |   |       TX Frontend: 0
>     > |   |   |   |   Name: UBX TX
>     > |   |   |   |   Antennas: TX/RX, CAL
>     > |   |   |   |   Sensors: lo_locked
>     > |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     > |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     > |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>     0.0 Hz
>     > |   |   |   |   Connection Type: QI
>     > |   |   |   |   Uses LO offset: No
>     > |   |   |  _____________________________________________________
>     > |   |   |    /
>     > |   |   |   |       TX Codec: A
>     > |   |   |   |   Name: ad9146
>     > |   |   |   |   Gain Elements: None
>     > |   |  _____________________________________________________
>     > |   |    /
>     > |   |   |       TX Dboard: B
>     > |   |   |   ID: UBX-160 v1 (0x0079)
>     > |   |   |   Serial: 30BA660
>     > |   |   |  _____________________________________________________
>     > |   |   |    /
>     > |   |   |   |       TX Frontend: 0
>     > |   |   |   |   Name: UBX TX
>     > |   |   |   |   Antennas: TX/RX, CAL
>     > |   |   |   |   Sensors: lo_locked
>     > |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     > |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     > |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>     0.0 Hz
>     > |   |   |   |   Connection Type: QI
>     > |   |   |   |   Uses LO offset: No
>     > |   |   |  _____________________________________________________
>     > |   |   |    /
>     > |   |   |   |       TX Codec: B
>     > |   |   |   |   Name: ad9146
>     > |   |   |   |   Gain Elements: None
>     > |   |  _____________________________________________________
>     > |   |    /
>     > |   |   |       RFNoC blocks on this device:
>     > |   |   |
>     > |   |   |   * DmaFIFO_0
>     > |   |   |   * Radio_0
>     > |   |   |   * Radio_1
>     > |   |   |   * DDC_0
>     > |   |   |   * DDC_1
>     > |   |   |   * DUC_0
>     > |   |   |   * DUC_1
>     > Thanks and Regards,
>     > Manu
>     > _______________________________________________
>     > USRP-users mailing list
>     > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------030009090705050104000003
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/31/2019 12:16 PM, Saimanoj Katta
      wrote:<br>
    </div>
    <blockquote
cite="mid:CABO=5Rqw8h5JD9YZWydNwFQh7k9C1F6mT7N0eAXko9k9Vs39Zw@mail.gmail.com"
      type="cite">
      <div dir="auto">Hi, 
        <div dir="auto"><br>
        </div>
        <div dir="auto">Thanks for your reply. I did try as root user
          using sudo commands, still not working. </div>
        <div dir="auto"><br>
        </div>
        <div dir="auto">Any other inputs would be appreciated.</div>
        <div dir="auto"><br>
        </div>
        <div dir="auto">Regards,</div>
        <div dir="auto">Manu</div>
      </div>
    </blockquote>
    How are you connected to the USRP?  Is it on a dedicated port on
    your computer?  Is it behind a router/switch?<br>
    <br>
    Also, try restricting your subnet to 255.255.255.0 -- the code in
    UHD that forms subnet-broadcast messages might not deal with<br>
      a larger subnet.<br>
    <br>
    <br>
    <blockquote
cite="mid:CABO=5Rqw8h5JD9YZWydNwFQh7k9C1F6mT7N0eAXko9k9Vs39Zw@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Fri, 31 May 2019, 19:12
          Marcus D Leech, &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">Your system
          may be configured to block the broadcast messages as a
          security feature. Try it as root. <br>
          <br>
          <br>
          Sent from my iPhone<br>
          <br>
          &gt; On May 31, 2019, at 9:02 AM, Saimanoj Katta via
          USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com" target="_blank"
            rel="noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
          &gt; <br>
          &gt; Hi, <br>
          &gt; <br>
          &gt; I am using USRP X310 and when I run these commands:
          uhd_find_devices, uhd_usrp_probe, I don't get any results on
          my terminal. When I run the above commands with --args
          addr=192.168.50.2, I get the output. IP address(static) at the
          host is 192.168.10.3 with subnet of 255.255.0.0. I have given
          the subnet to detect more ip addresses.<br>
          &gt; <br>
          &gt; As far as I know, the uhd_images_downloader has images
          correctly installed in the local library and all the Firmware
          drivers installed. Can you help me what is wrong? I have the
          same issue running GNU radio( the fm receiver example is not
          detecting the device/ip address). <br>
          &gt; <br>
          &gt; Any suggestions would be appreciated! Many thanks in
          advance. <br>
          &gt; <br>
          &gt; Here are the outputs, I got: <br>
          &gt; <br>
          &gt; uhd_find_devices <br>
          &gt; [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
          UHD_3.14.0.HEAD-0-g6875d061<br>
          &gt; No UHD Devices Found<br>
          &gt; <br>
          &gt; uhd_usrp_probe <br>
          &gt; [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
          UHD_3.14.0.HEAD-0-g6875d061<br>
          &gt; Error: LookupError: KeyError: No devices found for
          -----&gt;<br>
          &gt; Empty Device Address<br>
          &gt; <br>
          &gt; uhd_images_downloader [INFO] Images destination:
          /usr/local/share/uhd/images<br>
          &gt; [INFO] Target usrp1_b100_fw_default is up to date.<br>
          &gt; [INFO] Target x3xx_x310_fpga_default is up to date.<br>
          &gt; [INFO] Target usrp2_n210_fpga_default is up to date.<br>
          &gt; [INFO] Target n230_n230_fpga_default is up to date.<br>
          &gt; [INFO] Target usrp1_b100_fpga_default is up to date.<br>
          &gt; [INFO] Target b2xx_b200_fpga_default is up to date.<br>
          &gt; [INFO] Target usrp2_n200_fpga_default is up to date.<br>
          &gt; [INFO] Target e3xx_e320_fpga_default is up to date.<br>
          &gt; [INFO] Target n3xx_n310_fpga_default is up to date.<br>
          &gt; [INFO] Target b2xx_b205mini_fpga_default is up to date.<br>
          &gt; [INFO] Target x3xx_x300_fpga_default is up to date.<br>
          &gt; [INFO] Target octoclock_octoclock_fw_default is up to
          date.<br>
          &gt; [INFO] Target usrp2_usrp2_fw_default is up to date.<br>
          &gt; [INFO] Target usrp2_n200_fw_default is up to date.<br>
          &gt; [INFO] Target usrp2_usrp2_fpga_default is up to date.<br>
          &gt; [INFO] Target b2xx_common_fw_default is up to date.<br>
          &gt; [INFO] Target n3xx_n320_fpga_default is up to date.<br>
          &gt; [INFO] Target b2xx_b200mini_fpga_default is up to date.<br>
          &gt; [INFO] Target usrp1_usrp1_fpga_default is up to date.<br>
          &gt; [INFO] Target usb_common_windrv_default is up to date.<br>
          &gt; [INFO] Target usrp2_n210_fw_default is up to date.<br>
          &gt; [INFO] Target n3xx_n300_fpga_default is up to date.<br>
          &gt; [INFO] Target e3xx_e310_fpga_default is up to date.<br>
          &gt; [INFO] Target b2xx_b210_fpga_default is up to date.<br>
          &gt; <br>
          &gt; uhd_find_devices --args addr=192.168.50.2<br>
          &gt; [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
          UHD_3.14.0.HEAD-0-g6875d061<br>
          &gt; --------------------------------------------------<br>
          &gt; -- UHD Device 0<br>
          &gt; --------------------------------------------------<br>
          &gt; Device Address:<br>
          &gt;     serial: 30CBE93<br>
          &gt;     addr: 192.168.50.2<br>
          &gt;     fpga: HG<br>
          &gt;     name: <br>
          &gt;     product: X310<br>
          &gt;     type: x300<br>
          &gt; <br>
          &gt; uhd_usrp_probe --args addr=192.168.50.2<br>
          &gt; [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
          UHD_3.14.0.HEAD-0-g6875d061<br>
          &gt; [INFO] [X300] X300 initialization sequence...<br>
          &gt; [INFO] [X300] Maximum frame size: 1472 bytes.<br>
          &gt; [INFO] [X300] Radio 1x clock: 200 MHz<br>
          &gt; [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev
          0.929a<br>
          &gt; [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
          0xF1F0D00000000000)<br>
          &gt; [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1293 MB/s)<br>
          &gt; [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1318 MB/s)<br>
          &gt; [INFO] [0/Radio_0] Initializing block control (NOC ID:
          0x12AD100000000001)<br>
          &gt; [INFO] [0/Radio_1] Initializing block control (NOC ID:
          0x12AD100000000001)<br>
          &gt; [INFO] [0/DDC_0] Initializing block control (NOC ID:
          0xDDC0000000000000)<br>
          &gt; [INFO] [0/DDC_1] Initializing block control (NOC ID:
          0xDDC0000000000000)<br>
          &gt; [INFO] [0/DUC_0] Initializing block control (NOC ID:
          0xD0C0000000000000)<br>
          &gt; [INFO] [0/DUC_1] Initializing block control (NOC ID:
          0xD0C0000000000000)<br>
          &gt;   _____________________________________________________<br>
          &gt;  /<br>
          &gt; |       Device: X-Series Device<br>
          &gt; |   
           _____________________________________________________<br>
          &gt; |    /<br>
          &gt; |   |       Mboard: X310<br>
          &gt; |   |   revision: 8<br>
          &gt; |   |   revision_compat: 7<br>
          &gt; |   |   product: 30818<br>
          &gt; |   |   mac-addr0: 00:80:2f:23:d2:4d<br>
          &gt; |   |   mac-addr1: 00:80:2f:23:d2:4e<br>
          &gt; |   |   gateway: 192.168.10.1<br>
          &gt; |   |   ip-addr0: 192.168.50.2<br>
          &gt; |   |   subnet0: 255.255.255.0<br>
          &gt; |   |   ip-addr1: 192.168.60.2<br>
          &gt; |   |   subnet1: 255.255.255.0<br>
          &gt; |   |   ip-addr2: 192.168.70.2<br>
          &gt; |   |   subnet2: 255.255.255.0<br>
          &gt; |   |   ip-addr3: 192.168.80.2<br>
          &gt; |   |   subnet3: 255.255.255.0<br>
          &gt; |   |   serial: 30CBE93<br>
          &gt; |   |   FW Version: 6.0<br>
          &gt; |   |   FPGA Version: 35.1<br>
          &gt; |   |   FPGA git hash: 4c165a5<br>
          &gt; |   |   RFNoC capable: Yes<br>
          &gt; |   |   <br>
          &gt; |   |   Time sources:  internal, external, gpsdo<br>
          &gt; |   |   Clock sources: internal, external, gpsdo<br>
          &gt; |   |   Sensors: gps_gpgga, gps_gprmc, gps_time,
          gps_locked, gps_servo, ref_locked<br>
          &gt; |   |   
           _____________________________________________________<br>
          &gt; |   |    /<br>
          &gt; |   |   |       RX Dboard: A<br>
          &gt; |   |   |   ID: UBX-160 v1 (0x007a)<br>
          &gt; |   |   |   Serial: 30CF8F2<br>
          &gt; |   |   |   
           _____________________________________________________<br>
          &gt; |   |   |    /<br>
          &gt; |   |   |   |       RX Frontend: 0<br>
          &gt; |   |   |   |   Name: UBX RX<br>
          &gt; |   |   |   |   Antennas: TX/RX, RX2, CAL<br>
          &gt; |   |   |   |   Sensors: lo_locked<br>
          &gt; |   |   |   |   Freq range: 10.000 to 6000.000 MHz<br>
          &gt; |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br>
          &gt; |   |   |   |   Bandwidth range: 160000000.0 to
          160000000.0 step 0.0 Hz<br>
          &gt; |   |   |   |   Connection Type: IQ<br>
          &gt; |   |   |   |   Uses LO offset: No<br>
          &gt; |   |   |   
           _____________________________________________________<br>
          &gt; |   |   |    /<br>
          &gt; |   |   |   |       RX Codec: A<br>
          &gt; |   |   |   |   Name: ads62p48<br>
          &gt; |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5
          dB<br>
          &gt; |   |   
           _____________________________________________________<br>
          &gt; |   |    /<br>
          &gt; |   |   |       RX Dboard: B<br>
          &gt; |   |   |   ID: UBX-160 v1 (0x007a)<br>
          &gt; |   |   |   Serial: 30BA660<br>
          &gt; |   |   |   
           _____________________________________________________<br>
          &gt; |   |   |    /<br>
          &gt; |   |   |   |       RX Frontend: 0<br>
          &gt; |   |   |   |   Name: UBX RX<br>
          &gt; |   |   |   |   Antennas: TX/RX, RX2, CAL<br>
          &gt; |   |   |   |   Sensors: lo_locked<br>
          &gt; |   |   |   |   Freq range: 10.000 to 6000.000 MHz<br>
          &gt; |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br>
          &gt; |   |   |   |   Bandwidth range: 160000000.0 to
          160000000.0 step 0.0 Hz<br>
          &gt; |   |   |   |   Connection Type: IQ<br>
          &gt; |   |   |   |   Uses LO offset: No<br>
          &gt; |   |   |   
           _____________________________________________________<br>
          &gt; |   |   |    /<br>
          &gt; |   |   |   |       RX Codec: B<br>
          &gt; |   |   |   |   Name: ads62p48<br>
          &gt; |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5
          dB<br>
          &gt; |   |   
           _____________________________________________________<br>
          &gt; |   |    /<br>
          &gt; |   |   |       TX Dboard: A<br>
          &gt; |   |   |   ID: UBX-160 v1 (0x0079)<br>
          &gt; |   |   |   Serial: 30CF8F2<br>
          &gt; |   |   |   
           _____________________________________________________<br>
          &gt; |   |   |    /<br>
          &gt; |   |   |   |       TX Frontend: 0<br>
          &gt; |   |   |   |   Name: UBX TX<br>
          &gt; |   |   |   |   Antennas: TX/RX, CAL<br>
          &gt; |   |   |   |   Sensors: lo_locked<br>
          &gt; |   |   |   |   Freq range: 10.000 to 6000.000 MHz<br>
          &gt; |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br>
          &gt; |   |   |   |   Bandwidth range: 160000000.0 to
          160000000.0 step 0.0 Hz<br>
          &gt; |   |   |   |   Connection Type: QI<br>
          &gt; |   |   |   |   Uses LO offset: No<br>
          &gt; |   |   |   
           _____________________________________________________<br>
          &gt; |   |   |    /<br>
          &gt; |   |   |   |       TX Codec: A<br>
          &gt; |   |   |   |   Name: ad9146<br>
          &gt; |   |   |   |   Gain Elements: None<br>
          &gt; |   |   
           _____________________________________________________<br>
          &gt; |   |    /<br>
          &gt; |   |   |       TX Dboard: B<br>
          &gt; |   |   |   ID: UBX-160 v1 (0x0079)<br>
          &gt; |   |   |   Serial: 30BA660<br>
          &gt; |   |   |   
           _____________________________________________________<br>
          &gt; |   |   |    /<br>
          &gt; |   |   |   |       TX Frontend: 0<br>
          &gt; |   |   |   |   Name: UBX TX<br>
          &gt; |   |   |   |   Antennas: TX/RX, CAL<br>
          &gt; |   |   |   |   Sensors: lo_locked<br>
          &gt; |   |   |   |   Freq range: 10.000 to 6000.000 MHz<br>
          &gt; |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br>
          &gt; |   |   |   |   Bandwidth range: 160000000.0 to
          160000000.0 step 0.0 Hz<br>
          &gt; |   |   |   |   Connection Type: QI<br>
          &gt; |   |   |   |   Uses LO offset: No<br>
          &gt; |   |   |   
           _____________________________________________________<br>
          &gt; |   |   |    /<br>
          &gt; |   |   |   |       TX Codec: B<br>
          &gt; |   |   |   |   Name: ad9146<br>
          &gt; |   |   |   |   Gain Elements: None<br>
          &gt; |   |   
           _____________________________________________________<br>
          &gt; |   |    /<br>
          &gt; |   |   |       RFNoC blocks on this device:<br>
          &gt; |   |   |   <br>
          &gt; |   |   |   * DmaFIFO_0<br>
          &gt; |   |   |   * Radio_0<br>
          &gt; |   |   |   * Radio_1<br>
          &gt; |   |   |   * DDC_0<br>
          &gt; |   |   |   * DDC_1<br>
          &gt; |   |   |   * DUC_0<br>
          &gt; |   |   |   * DUC_1<br>
          &gt; Thanks and Regards, <br>
          &gt; Manu<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list<br>
          &gt; <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank"
            rel="noreferrer">USRP-users@lists.ettus.com</a><br>
          &gt; <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030009090705050104000003--


--===============7608710418645266533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7608710418645266533==--

