Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F74F18C440
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 01:26:24 +0100 (CET)
Received: from [::1] (port=35954 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jF5UR-000207-Jy; Thu, 19 Mar 2020 20:26:19 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:34795)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jF5UN-0001s5-Ra
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 20:26:15 -0400
Received: by mail-qk1-f176.google.com with SMTP id f3so5295083qkh.1
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 17:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=AzOlzdIqrn0SlQ8exCHA446jMY/z+zdAjojmLd5/nDw=;
 b=sNPSiOH0TM6bMvIGRFPOx0s2QXr1/KQDnGFz2diqm4atoFH3+rAKyDQhtZ390nwA94
 XO7FfaO57wDxZUZx0kDGgM3XBv8OMjdSkKgsZ8v06zGZ4m7RSYqyhrgMiuRk2rq1yDum
 ie5tlaHmsTxoOLVqopM8V3Q6OYR/vDZaO9Mog+r43tIBu/KgQFG8Hh85u4Ut/0GzogJO
 EkkOqmTvJ7371K6IIUwibAHKsGAdIdh/vNPnm+ADLkwBwQV0omZYldA4dS2YkdqsT02p
 I6mhHbuSQdG+qrxHiiKBAFaF/F76ZiizS1vWpBJ/Hg/kqc2stB3lwpLoyUPnanZ3pXe1
 BxRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=AzOlzdIqrn0SlQ8exCHA446jMY/z+zdAjojmLd5/nDw=;
 b=oyClFXyVtaprt1nB2AVKFZDzr/M+Dfjb0s0JlLmLGJeNDN5OAtEVIoayfT3sXTGBeU
 B3EMRbkQ1IF7ppLwEL5XjjkbuTVLl47RGWt2M424pwQpDDDD6awcey6dH50BZ7CN/aun
 QpGLUJLH/MD7t7dSAqtS9onAyhXGfiR6gA/N4tNYwha6wV5Ky42RcLIlhj+Z2SD95NNP
 XZLmFP3SEZmZ/ptR+ogEZ9sa11W1+XaFiswe+RlhnbBMW5JQB8Nt84XwfKJChrUZev1N
 o3+OxGSVExVHa8xsRkgeznemhXwvNgB+0VK7a1u7O098FbAeVXgaR/fiSHL+tg39EXKD
 qFMA==
X-Gm-Message-State: ANhLgQ03aJVrMS7cc2tg+98Q99Kf219DfbwxPGNFdRuCdstslTamIhHp
 1WiOAt/jirxmmVddwAkfqbM+8c/L
X-Google-Smtp-Source: ADFU+vvg9MSkbAMDeQrVqqWcziE8vA7O60ctkygZa8KDj7dnrwh3xIZhdFBlhLcv0j4QvYBUCI0mvQ==
X-Received: by 2002:a37:c444:: with SMTP id h4mr3521779qkm.120.1584663935046; 
 Thu, 19 Mar 2020 17:25:35 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id r3sm2938232qkd.3.2020.03.19.17.25.33
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Mar 2020 17:25:34 -0700 (PDT)
Message-ID: <5E740D7D.8060202@gmail.com>
Date: Thu, 19 Mar 2020 20:25:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <10F7328F6AD1354BA6DD787687B66B9001A304FBD9@Maui.in.dynetics.com>
 <CACaXmv_torvH6MBuU5XfgS2euYBMAkkb1T6HGBFYF5C=JNWb4A@mail.gmail.com>
In-Reply-To: <CACaXmv_torvH6MBuU5XfgS2euYBMAkkb1T6HGBFYF5C=JNWb4A@mail.gmail.com>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============7079561751772166580=="
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
--===============7079561751772166580==
Content-Type: multipart/alternative;
 boundary="------------030704070800040504050205"

This is a multi-part message in MIME format.
--------------030704070800040504050205
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/19/2020 08:09 PM, Neel Pandeya via USRP-users wrote:
> Which 10 Gbps network card are you using?
>
> --Neel Pandeya
>
>
Also, are you certain that your IP stack is actually routing to one of 
those two cards?


>
> On Thu, 19 Mar 2020 at 10:50, Carmichael, Ryan via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     I had an application running with 3.11.1 libraries and and my X310
>     corresponding firmware. After building and installing 3.15.0 on my
>     system and flashing the X310, everything seemed okay.
>
>     However, we now get this error when starting up:
>
>     *[WARNING] [X300] You requested a send frame size of (9000) but
>     your NIC's max frame size is (8000).Please verify your NIC's MTU
>     setting using 'ip link' or set the send_frame_size argument
>     appropriately.UHD will use the auto-detected max frame size for
>     this connection.*
>     *
>     *
>     And when we start to transmit, odd errors like this show up (what
>     is 'this can cause 27.0464' trying to tell me?):
>
>     *[WARNING] [MULTI_USRP] The total sum of rates (66.666667 MSps on
>     1 channels) exceeds the maximum capacity of the connection
>     (overflows (O) MSps).
>     This can cause 27.0464.*
>
>     I'm using 10Gb NICs that again, worked fine with 3.11. The MTUs
>     are set to 9000 (I've also tried 9001, 9100, nothing seems to
>     change the warning).
>
>     *ip link*
>     *6: enp13s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq
>     state UP mode DEFAULT group default qlen 1000
>         link/ether f8:f2:1e:42:e1:d4 brd ff:ff:ff:ff:ff:ff
>     7: enp13s0f1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq
>     state UP mode DEFAULT group default qlen 1000
>         link/ether f8:f2:1e:42:e1:d5 brd ff:ff:ff:ff:ff:ff*
>     *
>     *
>     The usrp_probe output is below. Any ideas on what is happening?
>
>     *uhd_usrp_probe --args="addr=192.168.30.2"
>     [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
>     4.8.5-39); Boost_106700; UHD_3.15.0.0-7-g8d228dbe
>     [INFO] [X300] X300 initialization sequence...
>     [INFO] [X300] Maximum frame size: 8000 bytes.
>     [INFO] [X300] Radio 1x clock: 200 MHz
>     [INFO] [GPS] No GPSDO found
>     [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>     0xF1F0D00000000000)
>     [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1321 MB/s)
>     [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
>     [INFO] [0/Radio_0] Initializing block control (NOC ID:
>     0x12AD100000000001)
>     [INFO] [0/Radio_1] Initializing block control (NOC ID:
>     0x12AD100000000001)
>     [INFO] [0/DDC_0] Initializing block control (NOC ID:
>     0xDDC0000000000000)
>     [INFO] [0/DDC_1] Initializing block control (NOC ID:
>     0xDDC0000000000000)
>     [INFO] [0/DUC_0] Initializing block control (NOC ID:
>     0xD0C0000000000000)
>     [INFO] [0/DUC_1] Initializing block control (NOC ID:
>     0xD0C0000000000000)
>     _____________________________________________________
>      /
>     |       Device: X-Series Device
>     | _____________________________________________________
>     |    /
>     |   |       Mboard: X310
>     |   |   revision: 11
>     |   |   revision_compat: 7
>     |   |   product: 30818
>     |   |   mac-addr0: 00:80:2f:24:d2:a9
>     |   |   mac-addr1: 00:80:2f:24:d2:aa
>     |   |   gateway: 192.168.10.1
>     |   |   ip-addr0: 192.168.10.2
>     |   |   subnet0: 255.255.255.0
>     |   |   ip-addr1: 192.168.20.2
>     |   |   subnet1: 255.255.255.0
>     |   |   ip-addr2: 192.168.30.2
>     |   |   subnet2: 255.255.255.0
>     |   |   ip-addr3: 192.168.40.2
>     |   |   subnet3: 255.255.255.0
>     |   |   serial: 318D6DF
>     |   |   FW Version: 6.0
>     |   |   FPGA Version: 36.0
>     |   |   FPGA git hash: 9ba275d
>     |   |   RFNoC capable: Yes
>     |   |
>     |   |   Time sources:  internal, external, gpsdo
>     |   |   Clock sources: internal, external, gpsdo
>     |   |   Sensors: ref_locked
>     |   | _____________________________________________________
>     |   |    /
>     |   |   |       RX Dboard: A
>     |   |   |   ID: UBX-160 v2 (0x007e)
>     |   |   |   Serial: 3185BEE
>     |   |   | _____________________________________________________
>     |   |   |    /
>     |   |   |   |       RX Frontend: 0
>     |   |   |   |   Name: UBX RX
>     |   |   |   |   Antennas: TX/RX, RX2, CAL
>     |   |   |   |   Sensors: lo_locked
>     |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>     0.0 Hz
>     |   |   |   |   Connection Type: IQ
>     |   |   |   |   Uses LO offset: No
>     |   |   | _____________________________________________________
>     |   |   |    /
>     |   |   |   |       RX Codec: A
>     |   |   |   |   Name: ads62p48
>     |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
>     |   | _____________________________________________________
>     |   |    /
>     |   |   |       RX Dboard: B
>     |   |   |   ID: UBX-160 v2 (0x007e)
>     |   |   |   Serial: 3185CA1
>     |   |   | _____________________________________________________
>     |   |   |    /
>     |   |   |   |       RX Frontend: 0
>     |   |   |   |   Name: UBX RX
>     |   |   |   |   Antennas: TX/RX, RX2, CAL
>     |   |   |   |   Sensors: lo_locked
>     |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>     0.0 Hz
>     |   |   |   |   Connection Type: IQ
>     |   |   |   |   Uses LO offset: No
>     |   |   | _____________________________________________________
>     |   |   |    /
>     |   |   |   |       RX Codec: B
>     |   |   |   |   Name: ads62p48
>     |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
>     |   | _____________________________________________________
>     |   |    /
>     |   |   |       TX Dboard: A
>     |   |   |   ID: UBX-160 v2 (0x007d)
>     |   |   |   Serial: 3185BEE
>     |   |   | _____________________________________________________
>     |   |   |    /
>     |   |   |   |       TX Frontend: 0
>     |   |   |   |   Name: UBX TX
>     |   |   |   |   Antennas: TX/RX, CAL
>     |   |   |   |   Sensors: lo_locked
>     |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>     0.0 Hz
>     |   |   |   |   Connection Type: QI
>     |   |   |   |   Uses LO offset: No
>     |   |   | _____________________________________________________
>     |   |   |    /
>     |   |   |   |       TX Codec: A
>     |   |   |   |   Name: ad9146
>     |   |   |   |   Gain Elements: None
>     |   | _____________________________________________________
>     |   |    /
>     |   |   |       TX Dboard: B
>     |   |   |   ID: UBX-160 v2 (0x007d)
>     |   |   |   Serial: 3185CA1
>     |   |   | _____________________________________________________
>     |   |   |    /
>     |   |   |   |       TX Frontend: 0
>     |   |   |   |   Name: UBX TX
>     |   |   |   |   Antennas: TX/RX, CAL
>     |   |   |   |   Sensors: lo_locked
>     |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>     0.0 Hz
>     |   |   |   |   Connection Type: QI
>     |   |   |   |   Uses LO offset: No
>     |   |   | _____________________________________________________
>     |   |   |    /
>     |   |   |   |       TX Codec: B
>     |   |   |   |   Name: ad9146
>     |   |   |   |   Gain Elements: None
>     |   | _____________________________________________________
>     |   |    /
>     |   |   |       RFNoC blocks on this device:
>     |   |   |
>     |   |   |   * DmaFIFO_0
>     |   |   |   * Radio_0
>     |   |   |   * Radio_1
>     |   |   |   * DDC_0
>     |   |   |   * DDC_1
>     |   |   |   * DUC_0
>     |   |   |   * DUC_1*
>
>     Thanks,
>     Ryan
>     /
>     ------------------------------------------------------------------------
>
>     The information contained in this message, and any attachments,
>     may contain privileged and/or proprietary information that is
>     intended solely for the person or entity to which it is addressed.
>     Moreover, it may contain export restricted technical data
>     controlled by Export Administration Regulations (EAR) or the
>     International Traffic in Arms Regulations (ITAR). Any review,
>     retransmission, dissemination, or re-export to foreign or domestic
>     entities by anyone other than the intended recipient in accordance
>     with EAR and/or ITAR regulations is prohibited.
>
>     /
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------030704070800040504050205
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/19/2020 08:09 PM, Neel Pandeya
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CACaXmv_torvH6MBuU5XfgS2euYBMAkkb1T6HGBFYF5C=JNWb4A@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">Which 10 Gbps network
          card are you using?</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">--Neel Pandeya</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
      </div>
    </blockquote>
    Also, are you certain that your IP stack is actually routing to one
    of those two cards?<br>
    <br>
    <br>
    <blockquote
cite="mid:CACaXmv_torvH6MBuU5XfgS2euYBMAkkb1T6HGBFYF5C=JNWb4A@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, 19 Mar 2020 at 10:50,
          Carmichael, Ryan via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div
              style="direction:ltr;font-family:Tahoma;color:rgb(0,0,0);font-size:10pt">
              <div>I had an application running with 3.11.1 libraries
                and and my X310 corresponding firmware. After building
                and installing 3.15.0 on my system and flashing the
                X310, everything seemed okay.<br>
              </div>
              <div><br>
              </div>
              <div>However, we now get this error when starting up:</div>
              <div><br>
              </div>
              <div><b>[WARNING] [X300] You requested a send frame size
                  of (9000) but your NIC's max frame size is
                  (8000).Please verify your NIC's MTU setting using 'ip
                  link' or set the send_frame_size argument
                  appropriately.UHD will use the auto-detected max frame
                  size for this connection.</b></div>
              <div><b><br>
                </b></div>
              <div>And when we start to transmit, odd errors like this
                show up (what is 'this can cause 27.0464' trying to tell
                me?):</div>
              <div><br>
              </div>
              <div><b>[WARNING] [MULTI_USRP] The total sum of rates
                  (66.666667 MSps on 1 channels) exceeds the maximum
                  capacity of the connection (overflows (O) MSps).<br>
                  This can cause 27.0464.</b></div>
              <div><br>
              </div>
              <div>I'm using 10Gb NICs that again, worked fine with
                3.11. The MTUs are set to 9000 (I've also tried 9001,
                9100, nothing seems to change the warning).</div>
              <div><br>
              </div>
              <div><b>ip link</b></div>
              <div><b>6: enp13s0f0:
                  &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc
                  mq state UP mode DEFAULT group default qlen 1000<br>
                      link/ether f8:f2:1e:42:e1:d4 brd ff:ff:ff:ff:ff:ff<br>
                  7: enp13s0f1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt;
                  mtu 9000 qdisc mq state UP mode DEFAULT group default
                  qlen 1000<br>
                      link/ether f8:f2:1e:42:e1:d5 brd ff:ff:ff:ff:ff:ff</b></div>
              <div><b><br>
                </b></div>
              <div>The usrp_probe output is below. Any ideas on what is
                happening?</div>
              <div><br>
              </div>
              <div><b>uhd_usrp_probe --args="addr=192.168.30.2"<br>
                  [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623
                  (Red Hat 4.8.5-39); Boost_106700;
                  UHD_3.15.0.0-7-g8d228dbe<br>
                  [INFO] [X300] X300 initialization sequence...<br>
                  [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                  [INFO] [X300] Radio 1x clock: 200 MHz<br>
                  [INFO] [GPS] No GPSDO found<br>
                  [INFO] [0/DmaFIFO_0] Initializing block control (NOC
                  ID: 0xF1F0D00000000000)<br>
                  [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1321
                  MB/s)<br>
                  [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300
                  MB/s)<br>
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
                   
                  _____________________________________________________<br>
                   /<br>
                  |       Device: X-Series Device<br>
                  |    
                  _____________________________________________________<br>
                  |    /<br>
                  |   |       Mboard: X310<br>
                  |   |   revision: 11<br>
                  |   |   revision_compat: 7<br>
                  |   |   product: 30818<br>
                  |   |   mac-addr0: 00:80:2f:24:d2:a9<br>
                  |   |   mac-addr1: 00:80:2f:24:d2:aa<br>
                  |   |   gateway: 192.168.10.1<br>
                  |   |   ip-addr0: 192.168.10.2<br>
                  |   |   subnet0: 255.255.255.0<br>
                  |   |   ip-addr1: 192.168.20.2<br>
                  |   |   subnet1: 255.255.255.0<br>
                  |   |   ip-addr2: 192.168.30.2<br>
                  |   |   subnet2: 255.255.255.0<br>
                  |   |   ip-addr3: 192.168.40.2<br>
                  |   |   subnet3: 255.255.255.0<br>
                  |   |   serial: 318D6DF<br>
                  |   |   FW Version: 6.0<br>
                  |   |   FPGA Version: 36.0<br>
                  |   |   FPGA git hash: 9ba275d<br>
                  |   |   RFNoC capable: Yes<br>
                  |   |<br>
                  |   |   Time sources:  internal, external, gpsdo<br>
                  |   |   Clock sources: internal, external, gpsdo<br>
                  |   |   Sensors: ref_locked<br>
                  |   |    
                  _____________________________________________________<br>
                  |   |    /<br>
                  |   |   |       RX Dboard: A<br>
                  |   |   |   ID: UBX-160 v2 (0x007e)<br>
                  |   |   |   Serial: 3185BEE<br>
                  |   |   |    
                  _____________________________________________________<br>
                  |   |   |    /<br>
                  |   |   |   |       RX Frontend: 0<br>
                  |   |   |   |   Name: UBX RX<br>
                  |   |   |   |   Antennas: TX/RX, RX2, CAL<br>
                  |   |   |   |   Sensors: lo_locked<br>
                  |   |   |   |   Freq range: 10.000 to 6000.000 MHz<br>
                  |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5
                  dB<br>
                  |   |   |   |   Bandwidth range: 160000000.0 to
                  160000000.0 step 0.0 Hz<br>
                  |   |   |   |   Connection Type: IQ<br>
                  |   |   |   |   Uses LO offset: No<br>
                  |   |   |    
                  _____________________________________________________<br>
                  |   |   |    /<br>
                  |   |   |   |       RX Codec: A<br>
                  |   |   |   |   Name: ads62p48<br>
                  |   |   |   |   Gain range digital: 0.0 to 6.0 step
                  0.5 dB<br>
                  |   |    
                  _____________________________________________________<br>
                  |   |    /<br>
                  |   |   |       RX Dboard: B<br>
                  |   |   |   ID: UBX-160 v2 (0x007e)<br>
                  |   |   |   Serial: 3185CA1<br>
                  |   |   |    
                  _____________________________________________________<br>
                  |   |   |    /<br>
                  |   |   |   |       RX Frontend: 0<br>
                  |   |   |   |   Name: UBX RX<br>
                  |   |   |   |   Antennas: TX/RX, RX2, CAL<br>
                  |   |   |   |   Sensors: lo_locked<br>
                  |   |   |   |   Freq range: 10.000 to 6000.000 MHz<br>
                  |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5
                  dB<br>
                  |   |   |   |   Bandwidth range: 160000000.0 to
                  160000000.0 step 0.0 Hz<br>
                  |   |   |   |   Connection Type: IQ<br>
                  |   |   |   |   Uses LO offset: No<br>
                  |   |   |    
                  _____________________________________________________<br>
                  |   |   |    /<br>
                  |   |   |   |       RX Codec: B<br>
                  |   |   |   |   Name: ads62p48<br>
                  |   |   |   |   Gain range digital: 0.0 to 6.0 step
                  0.5 dB<br>
                  |   |    
                  _____________________________________________________<br>
                  |   |    /<br>
                  |   |   |       TX Dboard: A<br>
                  |   |   |   ID: UBX-160 v2 (0x007d)<br>
                  |   |   |   Serial: 3185BEE<br>
                  |   |   |    
                  _____________________________________________________<br>
                  |   |   |    /<br>
                  |   |   |   |       TX Frontend: 0<br>
                  |   |   |   |   Name: UBX TX<br>
                  |   |   |   |   Antennas: TX/RX, CAL<br>
                  |   |   |   |   Sensors: lo_locked<br>
                  |   |   |   |   Freq range: 10.000 to 6000.000 MHz<br>
                  |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5
                  dB<br>
                  |   |   |   |   Bandwidth range: 160000000.0 to
                  160000000.0 step 0.0 Hz<br>
                  |   |   |   |   Connection Type: QI<br>
                  |   |   |   |   Uses LO offset: No<br>
                  |   |   |    
                  _____________________________________________________<br>
                  |   |   |    /<br>
                  |   |   |   |       TX Codec: A<br>
                  |   |   |   |   Name: ad9146<br>
                  |   |   |   |   Gain Elements: None<br>
                  |   |    
                  _____________________________________________________<br>
                  |   |    /<br>
                  |   |   |       TX Dboard: B<br>
                  |   |   |   ID: UBX-160 v2 (0x007d)<br>
                  |   |   |   Serial: 3185CA1<br>
                  |   |   |    
                  _____________________________________________________<br>
                  |   |   |    /<br>
                  |   |   |   |       TX Frontend: 0<br>
                  |   |   |   |   Name: UBX TX<br>
                  |   |   |   |   Antennas: TX/RX, CAL<br>
                  |   |   |   |   Sensors: lo_locked<br>
                  |   |   |   |   Freq range: 10.000 to 6000.000 MHz<br>
                  |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5
                  dB<br>
                  |   |   |   |   Bandwidth range: 160000000.0 to
                  160000000.0 step 0.0 Hz<br>
                  |   |   |   |   Connection Type: QI<br>
                  |   |   |   |   Uses LO offset: No<br>
                  |   |   |    
                  _____________________________________________________<br>
                  |   |   |    /<br>
                  |   |   |   |       TX Codec: B<br>
                  |   |   |   |   Name: ad9146<br>
                  |   |   |   |   Gain Elements: None<br>
                  |   |    
                  _____________________________________________________<br>
                  |   |    /<br>
                  |   |   |       RFNoC blocks on this device:<br>
                  |   |   |<br>
                  |   |   |   * DmaFIFO_0<br>
                  |   |   |   * Radio_0<br>
                  |   |   |   * Radio_1<br>
                  |   |   |   * DDC_0<br>
                  |   |   |   * DDC_1<br>
                  |   |   |   * DUC_0<br>
                  |   |   |   * DUC_1</b></div>
              <div><br>
              </div>
              <div>Thanks,</div>
              <div>Ryan<br>
              </div>
            </div>
            <i><br>
              <hr>
              <p style="font-size:8pt;line-height:9pt">The information
                contained in this message, and any attachments, may
                contain privileged and/or proprietary information that
                is intended solely for the person or entity to which it
                is addressed. Moreover, it may contain export restricted
                technical data controlled by Export Administration
                Regulations (EAR) or the International Traffic in Arms
                Regulations (ITAR). Any review, retransmission,
                dissemination, or re-export to foreign or domestic
                entities by anyone other than the intended recipient in
                accordance with EAR and/or ITAR regulations is
                prohibited.</p>
            </i>
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
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------030704070800040504050205--


--===============7079561751772166580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7079561751772166580==--

