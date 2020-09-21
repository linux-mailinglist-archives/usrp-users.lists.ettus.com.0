Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EDD272AD4
	for <lists+usrp-users@lfdr.de>; Mon, 21 Sep 2020 17:56:06 +0200 (CEST)
Received: from [::1] (port=44406 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKOAY-0007kq-E0; Mon, 21 Sep 2020 11:55:58 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:44095)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kKOAU-0007dX-Jq
 for usrp-users@lists.ettus.com; Mon, 21 Sep 2020 11:55:54 -0400
Received: by mail-qt1-f179.google.com with SMTP id e7so12756018qtj.11
 for <usrp-users@lists.ettus.com>; Mon, 21 Sep 2020 08:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=zUh7CswEk/593aq8f42D/L09xluPL42vYXVBQlVAlmE=;
 b=PB6rbtBZndXil6alUJn2wc8htiyaJDhOnDHdvq7vaLPujVqbg6dm1uv8XZ3j0CGVVf
 OrxIV47ZrkEfasQZsOkXLO3QO4OjKF4r4htO05NiWIc13Mslz+zX7ImKx4Jefgtwc+Bx
 5byZh0Pb52xj7Q0JNiUVFAzNF/VoZqegvKsvvkLTrdRZmZgB/0RRisz741Nv6yM5vLWU
 UU6xy47zmG5fjgDjcDDKkr9ZLTUIRH1gl90jbIxegUSrGt68ECw4WxFqMm0XJ98wN6TR
 1mCRCNs42C2Jm8+fFzvyg2tCh3Jm6BAzmLrRHigzcJcIiapolKgc+FNPz4zYVPZJCj2r
 r4dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=zUh7CswEk/593aq8f42D/L09xluPL42vYXVBQlVAlmE=;
 b=nUFPtFny+rqYvptCqAaz1+B9SzeWaHBtlH0B48MN7/S780C3USJc4CJy/5tWKGFd2m
 vx7zSnDsO9naFdw6mQ2wYqviBBlWNgrhYFx5n4Y6D8CALmiTF8/v22SN7QBgw49rD0Sg
 HkfjCk6gwC193n99S+7Dsqy/cOLU9ZEVhK72dxFb688bN7NTXxDLateoedLbv9v9KXE9
 0DgPZ2WbQeT7UrCvEGjobQhJkeUAzaqwfDh6vI08BHbnrIbQqh3uP4tmnt+DCuvs3pLT
 DShhXdceAFKfKVr5PfjIaxWTloVFvffI/tq69jhbGm+vKwC9I129PwrEZFPAUKEeTH0N
 g08A==
X-Gm-Message-State: AOAM532fUOmBSM2sAWabwpJar0V8HTrK65qe4UlxEvkwpwJ/5BdD9zgd
 CHbvj18PPPS2iJDCEs+sTa/95hq5zOCF1A==
X-Google-Smtp-Source: ABdhPJz4UmNs2lMVE8xMQOo4eu037Xfiox9zciCVkfg0h6qfAlSuPjQgBnMmlZh3RyCAUsToXw+FBA==
X-Received: by 2002:ac8:fbb:: with SMTP id b56mr135598qtk.307.1600703713338;
 Mon, 21 Sep 2020 08:55:13 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id w6sm10563152qti.63.2020.09.21.08.55.12
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 08:55:12 -0700 (PDT)
Message-ID: <5F68CCDF.7050909@gmail.com>
Date: Mon, 21 Sep 2020 11:55:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAO38sJ6c2DqRettKAnGPmDxXbGTZ7R2dRTBsxCsQ9cWeP1uPSw@mail.gmail.com>,
 <1600669138401.49760@iis.fraunhofer.de>
 <1600669281450.87573@iis.fraunhofer.de>
In-Reply-To: <1600669281450.87573@iis.fraunhofer.de>
Subject: Re: [USRP-users] USRP device_init() crashes for MIMO
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
Content-Type: multipart/mixed; boundary="===============8242756259033840411=="
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
--===============8242756259033840411==
Content-Type: multipart/alternative;
 boundary="------------020403050008010905020405"

This is a multi-part message in MIME format.
--------------020403050008010905020405
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 09/21/2020 02:21 AM, Saaifan, Khodr via USRP-users wrote:
> Dear all
> We are testing OAI with USRP X300 device connected through PCIe.
> There is a problem related to 2Tx-2Rx MIMO configuration when creating 
> tx/rx streams in *device_init*(),
> which is located at /USRP/USERSPACE/LIB/usrp_lib.cpp.
> ////////////////////////////////////////////////////////////////////
> The code:
> // create tx & rx streamer //
> .
> .
> .
> // Createrx streamer, rx_num_channels =2
> uhd::stream_args_t stream_args_rx("sc16", "sc16");
> for (int i = 0; i<openair0_cfg[0].rx_num_channels; i++)
> stream_args_rx.channels.push_back(i);
> s->rx_stream = s->usrp->get_rx_stream(stream_args_rx);
> // Print device specification
> printf(“Using Devive %s”, s->usrp->get_pp_string().c_str());
> // Createtx streamer, tx_num_channels =2
> uhd::stream_args_t stream_args_tx("sc16", "sc16");
> for (int i = 0; i<openair0_cfg[0].tx_num_channels; i++)
> stream_args_tx.channels.push_back(i);
> s->tx_stream = s->usrp->get_tx_stream(stream_args_tx);
> ////////////////////////////////////////////////////////////////////
> The program calls get_rx_stream to create the rx streams. However, the 
> subsequent call for get_tx_stream ends with runtime error what 
> indicates possible resources leak.
> ////////////////////////////////////////////////////////////////////
> The output:
> [HW] Actual master clock: 184.320000MHz...
> [HW] Actual clock source internal...
> [HW] Actual time source internal...
> [HW] RF board max packet size 1020, size for 100µs jitter 4608
> [HW] rx_max_num_samps 1020
> Using Device Single USRP:
> Device: X-Series
> Device Mboard 0: X300
> RX Channel: 0
> RX DSP: 0
> RX Dboard: A
> RX Subdev: CBX-120 RX
> RX Channel: 1
> RX DSP: 0
> RX Dboard: B
> RX Subdev: CBX-120 RX
> TX Channel: 0 TX DSP: 0
> TX Dboard: A
> TX Subdev: CBX-120 TX
> TX Channel: 1
> TX DSP: 0
> TX Dboard: B
> TX Subdev: CBX-120 TX
> terminate called after throwing an instance of 'uhd::runtime_error' 
> what(): RuntimeError: Could not create nirio_zero_copy transport. A 
> parameter to a function was not valid. This could be a NULL pointer, a 
> bad value, etc. (Error code -52005) Linux signal Aborted...
> ////////////////////////////////////////////////////////////////////
> I attached below the PCIe driver and version as follows:
>  ///////////////////////////////////////////////////////////////////
> n@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$ lsmod | 
> grep -i '^ni'
> NiRioSrv 954368  2
> niusrpriok 421888  0
> nistreamk 135168  2 niusrpriok,NiRioSrv
> nibds 57344  2 niusrpriok,NiRioSrv
> nikal                102400  4 niusrpriok,NiRioSrv,nistreamk,nibds
> sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$
> sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$ lspci -d 
> 1093:c4c4 -vv
> 04:00.0 Signal processing controller: National Instruments PXIe/PCIe 
> Device
> Subsystem: National Instruments PXIe/PCIe Device
> Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr+ 
> Stepping- SERR+ FastB2B- DisINTx+
> Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- 
> <TAbort- <MAbort- >SERR- <PERR- INTx-
> Latency: 0
> Interrupt: pin A routed to IRQ 46
>                Region 0: Memory at 90100000 (32-bit, non-prefetchable) 
> [size=1M]
> Capabilities: <access denied>
>                Kernel driver in use: niusrpriok
>                Kernel modules: niusrpriok
> sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$ cat 
> /usr/local/natinst/nirio/bin/nirioiInstallerUtility64.sh | grep nirioi
> # File: nirioiInstallerUtility.sh
> #   nirioi installer.  Each function is meant to execute at the
> nirioiVersion=17.0.0f0
> nirioiPreInstall()
> nirioiPostInstall64()
> nirioiPreUninstall64()
> nirioiPostUninstall64()
> sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$ 
> uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; 
> UHD_3.15.0.0-release
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 3183D39
>     fpga: HG
>     name:
>     product: X300
>     resource: RIO0
>     type: x300
> sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$ 
> uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; 
> UHD_3.15.0.0-release
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
> [INFO] [X300] Using LVBITX bitfile 
> /usr/share/uhd/images/usrp_x300_fpga_HG.lvbitx
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] No GPSDO found
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> _____________________________________________________
>  /
> |       Device: X-Series Device
> | _____________________________________________________
> |    /
> |   |       Mboard: X300
> |   |   revision: 11
> |   | revision_compat: 7
> |   |   product: 30817
> |   |   mac-addr0: 00:80:2f:24:78:a9
> |   |   mac-addr1: 00:80:2f:24:78:aa
> |   |   gateway: 192.168.10.1
> |   |   ip-addr0: 192.168.10.2
> |   |   subnet0: 255.255.255.0
> |   |   ip-addr1: 192.168.20.2
> |   |   subnet1: 255.255.255.0
> |   |   ip-addr2: 192.168.30.2
> |   |   subnet2: 255.255.255.0
> |   |   ip-addr3: 192.168.40.2
> |   |   subnet3: 255.255.255.0
> |   |   serial: 3183D39
> |   |   FW Version: 6.0
> |   |   FPGA Version: 36.0
> |   |   FPGA git hash: fde2a94
> |   |   RFNoC capable: Yes
> |   |
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: internal, external, gpsdo
> |   |   Sensors: ref_locked
> |   | _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: A
> |   |   |   ID: CBX-120 (0x0085)
> |   |   |   Serial: 3186571
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   | RX Frontend: 0
> |   |   |   |   Name: CBX-120 RX
> |   |   |   | Antennas: TX/RX, RX2, CAL
> |   |   |   | Sensors: lo_locked
> |   |   |   |   Freq range: 1200.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   | Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz
> |   |   |   | Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   | RX Codec: A
> |   |   |   |   Name: ads62p48
> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
> |   | _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: B
> |   |   |   ID: CBX-120 (0x0085)
> |   |   |   Serial: 318657B
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   | RX Frontend: 0
> |   |   |   |   Name: CBX-120 RX
> |   |   |   | Antennas: TX/RX, RX2, CAL
> |   |   |   | Sensors: lo_locked
> |   |   |   |   Freq range: 1200.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   | Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz
> |   |   |   | Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   | RX Codec: B
> |   |   |   |   Name: ads62p48
> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
> |   | _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: A
> |   |   |   ID: CBX-120 (0x0084)
> |   |   |   Serial: 3186571
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   | TX Frontend: 0
> |   |   |   |   Name: CBX-120 TX
> |   |   |   | Antennas: TX/RX, CAL
> |   |   |   | Sensors: lo_locked
> |   |   |   |   Freq range: 1200.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   | Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz
> |   |   |   | Connection Type: QI
> |   |   |   |   Uses LO offset: No
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   | TX Codec: A
> |   |   |   |   Name: ad9146
> |   |   |   |   Gain Elements: None
> |   | _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: B
> |   |   |   ID: CBX-120 (0x0084)
> |   |   |   Serial: 318657B
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   | TX Frontend: 0
> |   |   |   |   Name: CBX-120 TX
> |   |   |   | Antennas: TX/RX, CAL
> |   |   |   | Sensors: lo_locked
> |   |   |   |   Freq range: 1200.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   | Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz
> |   |   |   | Connection Type: QI
> |   |   |   |   Uses LO offset: No
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   | TX Codec: B
> |   |   |   |   Name: ad9146
> |   |   |   |   Gain Elements: None
> |   | _____________________________________________________
> |   |    /
> |   |   |       RFNoC blocks on this device:
> |   |   |
> |   |   |   * DmaFIFO_0
> |   |   |   * Radio_0
> |   |   |   * Radio_1
> |   |   |   * DDC_0
> |   |   |   * DDC_1
> |   |   |   * DUC_0
> |   |   |   * DUC_1
> ///////////////////////////////////////////////////////////////////
>
> BR,
> Khodr Saaifan
> Fraunhofer IIS
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
You're probably going to want to use something a lot simpler to debug 
this than the entire end-to-end OAI application.

Something like txrx_loopback_to_file.   Does that work at your desired 
sample rates without throwing an exception?

When you suspect the issue is an underlying library, like UHD, it's 
always best to construct a very simple test case, rather than using
   a large, complex, end-application as your test case.



--------------020403050008010905020405
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/21/2020 02:21 AM, Saaifan, Khodr
      via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:1600669281450.87573@iis.fraunhofer.de"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none"><!--P{margin-top:0;margin-bottom:0;} p
	{margin-top:0;
	margin-bottom:0}--></style>
      <div dir="ltr" style="font-size:12pt; color:#000000;
        background-color:#FFFFFF;
        font-family:Calibri,Arial,Helvetica,sans-serif">
        <div><span style="background-color:white" lang="en-US"></span><span
            style="background-color:white" lang="en-US"></span><span
            style="background-color:white" lang="en-US">
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">Dear all</font></span></font></div>
          </span><span style="background-color:white" lang="en-US"></span><span
            style="background-color:white" lang="en-US"></span><span
            style="background-color:white" lang="en-US"></span><span
            style="background-color:white" lang="en-US">
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif"> </font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">We are
                    testing OAI with USRP X300 device connected through
                    PCIe.</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">There is a
                    problem related to 2Tx-2Rx MIMO configuration when
                    creating tx/rx streams in
                  </font><font color="black" face="Calibri,sans-serif"><strong>device_init</strong></font><font
                    color="black" face="Calibri,sans-serif">(),</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">which is
                    located at /USRP/USERSPACE/LIB/usrp_lib.cpp.</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif"> </font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">////////////////////////////////////////////////////////////////////</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">The code:</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="#4BA524" face="Calibri,sans-serif">// create
                    tx &amp; rx streamer //</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">.</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">.</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">.</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="#4BA524" face="Calibri,sans-serif">// Crea<span
                      style="color:rgb(75,165,36)">t</span></font><font
                    style="color:rgb(75,165,36)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(75,165,36)">e</span></font><font
                    style="color:rgb(75,165,36)"
                    face="Calibri,sans-serif">
                  </font><font color="#4BA524" face="Calibri,sans-serif">rx
                    streamer, rx_num_channels =2</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">uhd::stream_args_t
                    stream_args_</font><font color="red"
                    face="Calibri,sans-serif">r</font><font
                    color="black" face="Calibri,sans-serif">x("sc16",
                    "sc16");</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">for (int i =
                    0; i&lt;openair0_cfg[0].rx_num_channels; i++)
                  </font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">stream_args_rx.channels.push_back(i);</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">s-&gt;rx_stream
                    = s-&gt;usrp-&gt;get_rx_stream(stream_args_rx);</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="#4BA524" face="Calibri,sans-serif">// Print
                    device specification</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">printf(“Using
                    Devive %s”, s-&gt;usrp-&gt;get_pp_string().c_str());</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="#4BA524" face="Calibri,sans-serif">// Cr<span
                      style="color:rgb(75,165,36)">eat</span></font><font
                    style="color:rgb(75,165,36)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(75,165,36)">e</span></font><font
                    color="#4BA524" face="Calibri,sans-serif"><span
                      style="color:rgb(75,165,36)"> tx</span> streamer,
                    tx_num_channels =2</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">uhd::stream_args_t
                    stream_args_tx("sc16", "sc16");</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">for (int i =
                    0; i&lt;openair0_cfg[0].tx_num_channels; i++)
                  </font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">stream_args_tx.channels.push_back(i);</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">s-&gt;tx_stream
                    = s-&gt;usrp-&gt;get_tx_stream(stream_args_tx);</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">////////////////////////////////////////////////////////////////////</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">The program
                    calls get_rx_stream to create the rx streams.
                    However, the subsequent call for get_tx_stream ends
                    with runtime error what indicates possible resources
                    leak.</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif"> </font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">////////////////////////////////////////////////////////////////////</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">The output:</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif"> </font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">[HW] Actual master
                      clock: 184.320000MHz... </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">[HW] Actual clock
                      source internal... </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">[HW] Actual time
                      source internal... </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">[HW] RF board max
                      packet size 1020, size for 100µs jitter 4608 </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">[HW] rx_max_num_samps
                      1020 </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">Using Device Single
                      USRP: </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">Device: X-Series </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">Device Mboard 0: X300
                    </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">RX Channel: 0 </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">RX DSP: 0 </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">RX Dboard: A </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">RX Subdev: CBX-120 RX
                    </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">RX Channel: 1 </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">RX DSP: 0 </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">RX Dboard: B </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">RX Subdev: CBX-120 RX
                    </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">TX Channel: 0 TX DSP:
                      0 </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">TX Dboard: A </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">TX Subdev: CBX-120 TX
                    </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">TX Channel: 1 </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">TX DSP: 0 </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">TX Dboard: B </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">TX Subdev: CBX-120 TX
                    </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(208,92,18)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(208,92,18)"><font
                    style="color:rgb(208,92,18)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(208,92,18)">terminate called
                      after throwing an instance of 'uhd::runtime_error'
                      what(): RuntimeError: Could not create
                      nirio_zero_copy transport. A parameter to a
                      function was not valid. This could be a NULL
                      pointer, a bad value, etc. (Error code -52005)
                      Linux signal Aborted...</span></font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">////////////////////////////////////////////////////////////////////</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif"> </font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">I attached
                    below the PCIe driver and version as follows:</font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif"> ///////////////////////////////////////////////////////////////////</font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">n@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$

                      lsmod | grep -i '^ni'</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">NiRioSrv             
                      954368  2</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">niusrpriok           
                      421888  0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">nistreamk            
                      135168  2 niusrpriok,NiRioSrv</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">nibds                 

                      57344  2 niusrpriok,NiRioSrv</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">nikal 
                                     102400  4
                      niusrpriok,NiRioSrv,nistreamk,nibds</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$
                    </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$

                      lspci -d 1093:c4c4 -vv</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">04:00.0 Signal
                      processing controller: National Instruments
                      PXIe/PCIe Device</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">              
                      Subsystem: National Instruments PXIe/PCIe Device</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">              
                      Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV-
                      VGASnoop- ParErr+ Stepping- SERR+ FastB2B-
                      DisINTx+</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">              
                      Status: Cap+ 66MHz- UDF- FastB2B- ParErr-
                      DEVSEL=fast &gt;TAbort- &lt;TAbort- &lt;MAbort-
                      &gt;SERR- &lt;PERR- INTx-</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">              
                      Latency: 0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">              
                      Interrupt: pin A routed to IRQ 46</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">               Region
                      0: Memory at 90100000 (32-bit, non-prefetchable)
                      [size=1M]</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">              
                      Capabilities: &lt;access denied&gt;</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">               Kernel
                      driver in use: niusrpriok</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">               Kernel
                      modules: niusrpriok</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"> </font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$

                      cat
                      /usr/local/natinst/nirio/bin/nirioiInstallerUtility64.sh
                      | grep nirioi</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)"># File:
                      nirioiInstallerUtility.sh</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">#   nirioi
                      installer.  Each function is meant to execute at
                      the</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">nirioiVersion=17.0.0f0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">nirioiPreInstall()</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">nirioiPostInstall64()</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">nirioiPreUninstall64()</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">nirioiPostUninstall64()</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$

                      uhd_find_devices </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [UHD] linux;
                      GNU C++ version 5.4.0 20160609; Boost_105800;
                      UHD_3.15.0.0-release</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">--------------------------------------------------</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">-- UHD Device 0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">--------------------------------------------------</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">Device Address:</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">    serial: 3183D39</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">    fpga: HG</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">    name: </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">    product: X300</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">    resource: RIO0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">    type: x300</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"> </font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"> </font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">sfn@ux1682:~/oai_fhg_mimo2/openairinterface5g/cmake_targets$

                      uhd_usrp_probe </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [UHD] linux;
                      GNU C++ version 5.4.0 20160609; Boost_105800;
                      UHD_3.15.0.0-release</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [X300] X300
                      initialization sequence...</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [X300]
                      Connecting to niusrpriorpc at localhost:5444...</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [X300] Using
                      LVBITX bitfile
                      /usr/share/uhd/images/usrp_x300_fpga_HG.lvbitx</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [X300] Radio
                      1x clock: 200 MHz</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [GPS] No GPSDO
                      found</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [0/DmaFIFO_0]
                      Initializing block control (NOC ID:
                      0xF1F0D00000000000)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [0/DmaFIFO_0]
                      BIST passed (Throughput: 1304 MB/s)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [0/DmaFIFO_0]
                      BIST passed (Throughput: 1306 MB/s)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [0/Radio_0]
                      Initializing block control (NOC ID:
                      0x12AD100000000001)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [0/Radio_1]
                      Initializing block control (NOC ID:
                      0x12AD100000000001)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [0/DDC_0]
                      Initializing block control (NOC ID:
                      0xDDC0000000000000)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [0/DDC_1]
                      Initializing block control (NOC ID:
                      0xDDC0000000000000)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [0/DUC_0]
                      Initializing block control (NOC ID:
                      0xD0C0000000000000)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">[INFO] [0/DUC_1]
                      Initializing block control (NOC ID:
                      0xD0C0000000000000)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)"> 
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)"> /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|       Device:
                      X-Series Device</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |       Mboard:
                      X300</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   revision: 11</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |  
                      revision_compat: 7</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   product:
                      30817</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   mac-addr0:
                      00:80:2f:24:78:a9</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   mac-addr1:
                      00:80:2f:24:78:aa</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   gateway:
                      192.168.10.1</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   ip-addr0:
                      192.168.10.2</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   subnet0:
                      255.255.255.0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   ip-addr1:
                      192.168.20.2</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   subnet1:
                      255.255.255.0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   ip-addr2:
                      192.168.30.2</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   subnet2:
                      255.255.255.0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   ip-addr3:
                      192.168.40.2</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   subnet3:
                      255.255.255.0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   serial:
                      3183D39</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   FW Version:
                      6.0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   FPGA Version:
                      36.0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   FPGA git
                      hash: fde2a94</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   RFNoC
                      capable: Yes</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   Time
                      sources:  internal, external, gpsdo</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   Clock
                      sources: internal, external, gpsdo</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   Sensors:
                      ref_locked</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |       RX
                      Dboard: A</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   ID:
                      CBX-120 (0x0085)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   Serial:
                      3186571</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |      
                      RX Frontend: 0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Name:
                      CBX-120 RX</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Antennas: TX/RX, RX2, CAL</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Sensors: lo_locked</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Freq
                      range: 1200.000 to 6000.000 MHz</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Gain
                      range PGA0: 0.0 to 31.5 step 0.5 dB</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Bandwidth range: 120000000.0 to 120000000.0 step
                      0.0 Hz</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Connection Type: IQ</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Uses
                      LO offset: No</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |      
                      RX Codec: A</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Name:
                      ads62p48</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Gain
                      range digital: 0.0 to 6.0 step 0.5 dB</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |       RX
                      Dboard: B</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   ID:
                      CBX-120 (0x0085)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   Serial:
                      318657B</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |      
                      RX Frontend: 0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Name:
                      CBX-120 RX</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Antennas: TX/RX, RX2, CAL</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Sensors: lo_locked</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Freq
                      range: 1200.000 to 6000.000 MHz</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Gain
                      range PGA0: 0.0 to 31.5 step 0.5 dB</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Bandwidth range: 120000000.0 to 120000000.0 step
                      0.0 Hz</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Connection Type: IQ</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Uses
                      LO offset: No</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |      
                      RX Codec: B</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Name:
                      ads62p48</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Gain
                      range digital: 0.0 to 6.0 step 0.5 dB</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |       TX
                      Dboard: A</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   ID:
                      CBX-120 (0x0084)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   Serial:
                      3186571</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |      
                      TX Frontend: 0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Name:
                      CBX-120 TX</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Antennas: TX/RX, CAL</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Sensors: lo_locked</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Freq
                      range: 1200.000 to 6000.000 MHz</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Gain
                      range PGA0: 0.0 to 31.5 step 0.5 dB</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Bandwidth range: 120000000.0 to 120000000.0 step
                      0.0 Hz</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Connection Type: QI</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Uses
                      LO offset: No</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |      
                      TX Codec: A</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Name:
                      ad9146</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Gain
                      Elements: None</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |       TX
                      Dboard: B</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   ID:
                      CBX-120 (0x0084)</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   Serial:
                      318657B</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |      
                      TX Frontend: 0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Name:
                      CBX-120 TX</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Antennas: TX/RX, CAL</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Sensors: lo_locked</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Freq
                      range: 1200.000 to 6000.000 MHz</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Gain
                      range PGA0: 0.0 to 31.5 step 0.5 dB</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Bandwidth range: 120000000.0 to 120000000.0 step
                      0.0 Hz</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |  
                      Connection Type: QI</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Uses
                      LO offset: No</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |      
                      TX Codec: B</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Name:
                      ad9146</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   |   Gain
                      Elements: None</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |    
                      _____________________________________________________</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |    /</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |       RFNoC
                      blocks on this device:</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   </span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   *
                      DmaFIFO_0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   * Radio_0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   * Radio_1</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   * DDC_0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   * DDC_1</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   * DUC_0</span></font></span></font></div>
            <div style="margin:0" align="justify"><font
                style="color:rgb(0,111,201)" face="Times New
                Roman,serif" size="3"><span style="font-size:12pt;
                  color:rgb(0,111,201)"><font
                    style="color:rgb(0,111,201)"
                    face="Calibri,sans-serif"><span
                      style="color:rgb(0,111,201)">|   |   |   * DUC_1</span></font></span></font></div>
            <div style="margin:0" align="justify"><font face="Times New
                Roman,serif" size="3"><span style="font-size:12pt"><font
                    color="black" face="Calibri,sans-serif">///////////////////////////////////////////////////////////////////<br>
                  </font></span></font></div>
            <div style="margin:0" align="justify"><br>
            </div>
            <div style="margin:0" align="justify">BR,</div>
            <div style="margin:0" align="justify">Khodr Saaifan</div>
            <div style="margin:0" align="justify">Fraunhofer IIS<br>
              <font face="Times New Roman,serif" size="3"><span
                  style="font-size:12pt"></span></font></div>
          </span></div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    You're probably going to want to use something a lot simpler to
    debug this than the entire end-to-end OAI application.<br>
    <br>
    Something like txrx_loopback_to_file.   Does that work at your
    desired sample rates without throwing an exception?<br>
    <br>
    When you suspect the issue is an underlying library, like UHD, it's
    always best to construct a very simple test case, rather than using<br>
      a large, complex, end-application as your test case.<br>
    <br>
    <br>
  </body>
</html>

--------------020403050008010905020405--


--===============8242756259033840411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8242756259033840411==--

