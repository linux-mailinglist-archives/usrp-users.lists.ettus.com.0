Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C133FCCB9
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 20:02:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 820B0383DE0
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 14:02:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eRkut85p";
	dkim-atps=neutral
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 45E1B380DDC
	for <usrp-users@lists.ettus.com>; Tue, 31 Aug 2021 14:01:30 -0400 (EDT)
Received: by mail-ot1-f49.google.com with SMTP id q11-20020a9d4b0b000000b0051acbdb2869so184254otf.2
        for <usrp-users@lists.ettus.com>; Tue, 31 Aug 2021 11:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8g7L3glNm28LJXu3vvjp4ZUsR5cOgtwJOPn6pSGtu9M=;
        b=eRkut85plJeh0X715P849Us4NRkbz2gIH8I2vza1Frq9JExDCgWgbr9ChYB4L3HGhu
         ZrhZCDIMaN5NNKlG3iKFzFY4t3EXVWI/4dT4llZ5i/9V67p+1Lp9IJMt0v/cCfRxF1x5
         swgCaCHPB1rEFRFMjnhgK5X5mAdT36fZsfuz8dERvW0w1ELgSvRHBmCkhVjldye/exKB
         t2qdB6mcUIjmr+aPJAhvjQXZBprgnho3ImS3dmy7r9KCuTI7iLiePaDnf2lNBXguAFfw
         DJnaCDGRwinuydq/vSkDP8Irx32SfpyczBw4u+gJb5AWqngTGVhhq9drHbUmq6XIeoJA
         QgDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8g7L3glNm28LJXu3vvjp4ZUsR5cOgtwJOPn6pSGtu9M=;
        b=qCTSZqaujt4o6VmV8R+6CcwZ1m74AuYAEOmKhpJOLDr9ExUBTbIMSAeFv6UDmSa0iT
         8LXeTirdoxqjJRxEz5m0tnR0MS+BU00NlQPWlxGzlS9K9ZtIjaw5sqwAmfNbwhn2biOl
         Gu08yigwYfth7gUkhVqgOcYuRRHGyq0OFKxVWEui+2yYKQdBNh0nHyD1DEjjIiRcFzqT
         rH1/U0VFrmiWK+MQQnfVN7ezcU06/6I/3g2piYOmOf9OLG3XZdh5Al+qagO9F1ZiEeKi
         rxOIoIJCb+6VNAFeHwvNPb10cdjVWka5opYsxf9PC+YZPiCLPItlFpv5m2mLwSezyI3s
         vG6w==
X-Gm-Message-State: AOAM532lfaC14UpOvZwL0eQYdNasa+NnsyT4fM56U2wEA/AUjUgAMFGX
	QchBxr0s8O6do0XPlWHbpKnlJO0lvk9+W9uCDahqwqmK
X-Google-Smtp-Source: ABdhPJzs3I/KQ6I2BXbtyr2xo9IIfWMiWJjlIZUsvJVAi5NFve24NOdx6cmgxJtt68vQcQYFJ2TaSYZXSUs0HLFNmHU=
X-Received: by 2002:a05:6830:913:: with SMTP id v19mr25564659ott.131.1630432889485;
 Tue, 31 Aug 2021 11:01:29 -0700 (PDT)
MIME-Version: 1.0
References: <BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509@BLAPR09MB6612.namprd09.prod.outlook.com>
 <12712_1621024152_609EDD98_12712_124_1_CAEXYVK4M7VXi8vAaXpneJ_hVvwbaLPQD+Q9vLO7XJvjbifSDvw@mail.gmail.com>
 <BLAPR09MB6612480376497870AC78363FD9509@BLAPR09MB6612.namprd09.prod.outlook.com>
 <bac832e0779446d9ab99177930c962eb@gtri.gatech.edu>
In-Reply-To: <bac832e0779446d9ab99177930c962eb@gtri.gatech.edu>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 31 Aug 2021 14:01:18 -0400
Message-ID: <CAEXYVK7DcuuFKqbhwGZAtejG0=VVGCS++SFXmkbQcLRxg+wosg@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Message-ID-Hash: YQCSYUT3BMK6XNGVPTSU3TTWEQOJBDSL
X-Message-ID-Hash: YQCSYUT3BMK6XNGVPTSU3TTWEQOJBDSL
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: RFNOC block name?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YQCSYUT3BMK6XNGVPTSU3TTWEQOJBDSL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5118397031763693610=="

--===============5118397031763693610==
Content-Type: multipart/alternative; boundary="000000000000353f6405cadebd77"

--000000000000353f6405cadebd77
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Don't put non-.so files in the directory.

Problem solved?

Brian

On Tue, Aug 31, 2021 at 12:53 PM Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
wrote:

> Has this issue been resolved?
>
>
>
> If I export the UHD_MODULE_PATH =3D the .so file it will find the gain
> block, but it prints a bunch of error strings trying to open every file i=
n
> the directory. If I do not set the UHD_MODULE_PATH, I cannot find the
> block. How can I get around this? I=E2=80=99m trying to write C code to t=
est the
> RFNOC block and am not interested in only gnuradio usage.
>
>
>
> Also setting -Wl,--no-as-needed in the target_link_libraries of
> CMakeLists.txt did not resolve the issue either.
>
>
>
> Jeff
>
>
>
> *From:* Jeffrey P Long <jplong@mitre.org>
> *Sent:* Friday, May 14, 2021 5:30 PM
> *To:* Brian Padalino <bpadalino@gmail.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: [EXT] Re: RFNOC block name?
>
>
>
> Ok I had it up in /usr/lib but I moved it down to the root folder and it
> basically gave the same thing with additional errors:
>
> Kind of look like it is still not finding it. Did I set it wrong?
>
>
>
> root@ni-e320-31DCD15:/usr/lib# export UHD_MODULE_PATH=3D~/
> root@ni-e320-31DCD15:/usr/lib# uhd_find_devices
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/.viminfo"
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/e320.bit"
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/librfnoc-txcore.so"
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/.bash_history"
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.0.0.0-0-g90ce6062
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 31DCD15
>     claimed: False
>     mgmt_addr: 127.0.0.1
>     product: e320
>     type: e3xx
>
>
> root@ni-e320-31DCD15:/usr/lib# uhd_usrp_probe
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/.viminfo"
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/e320.bit"
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/librfnoc-txcore.so"
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/.bash_history"
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.0.0.0-0-g90ce6062
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De320,serial=3D31DCD15,claimed=
=3DFalse
> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=3D127.0.0.1,product=3De320'.
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s=
)
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s=
)
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xde30,
> 0xffff
>   _____________________________________________________
>  /
> |       Device: E300-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: ni-e320-31DCD15
> |   |   eeprom_version: 3
> |   |   fs_version: 20200914014807
> |   |   mender_artifact: v4.0.0.0_e320
> |   |   mpm_sw_version: 4.0.0.0-g90ce6062
> |   |   pid: 58144
> |   |   product: e320
> |   |   rev: 5
> |   |   rpc_connection: local
> |   |   serial: 31DCD15
> |   |   type: e3xx
> |   |   MPM Version: 3.0
> |   |   FPGA Version: 6.0
> |   |   FPGA git hash: 75f2ba9.clean
> |   |
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: external, internal, gpsdo
> |   |   Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal,
> temp_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky,
> gps_time, gps_tpv
> |     _____________________________________________________
> |    /
> |   |       RFNoC blocks on this device:
> |   |
> |   |   * 0/Block#0
> |   |   * 0/DDC#0
> |   |   * 0/DUC#0
> |   |   * 0/DmaFIFO#0
> |   |   * 0/Radio#0
> |     _____________________________________________________
> |    /
> |   |       Static connections on this device:
> |   |
> |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
> |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
> |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
> |   |   * 0/SEP#1:0=3D=3D>0/DUC#0:1
> |   |   * 0/DUC#0:1=3D=3D>0/Radio#0:1
> |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
> |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
> |   |   * 0/SEP#2:0=3D=3D>0/DmaFIFO#0:0
> |   |   * 0/DmaFIFO#0:0=3D=3D>0/SEP#2:0
> |   |   * 0/SEP#3:0=3D=3D>0/DmaFIFO#0:1
> |   |   * 0/DmaFIFO#0:1=3D=3D>0/SEP#3:0
> |   |   * 0/SEP#4:0=3D=3D>0/Block#0:0
> |   |   * 0/Block#0:0=3D=3D>0/SEP#4:0
> |     _____________________________________________________
> |    /
> |   |       TX Dboard: dboard
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Frontend: 0
> |   |   |   Name: E3xx
> |   |   |   Antennas: TX/RX
> |   |   |   Freq range: 47.000 to 6000.000 MHz
> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Frontend: 1
> |   |   |   Name: E3xx
> |   |   |   Antennas: TX/RX
> |   |   |   Freq range: 47.000 to 6000.000 MHz
> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
> |     _____________________________________________________
> |    /
> |   |       RX Dboard: dboard
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Frontend: 0
> |   |   |   Name: E3xx
> |   |   |   Antennas: RX2, TX/RX
> |   |   |   Freq range: 70.000 to 6000.000 MHz
> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Frontend: 1
> |   |   |   Name: E3xx
> |   |   |   Antennas: RX2, TX/RX
> |   |   |   Freq range: 70.000 to 6000.000 MHz
> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
>
>
>
>
>
>
>
> *From:* Brian Padalino <bpadalino@gmail.com>
> *Sent:* Friday, May 14, 2021 4:29 PM
> *To:* Jeffrey P Long <jplong@mitre.org>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [EXT] Re: [USRP-users] RFNOC block name?
>
>
>
> On Fri, May 14, 2021 at 4:22 PM Jeffrey P Long <jplong@mitre.org> wrote:
>
> I am going through the examples in
>
>
>
> Getting Started with RFNoC in UHD 4.0 - Ettus Knowledge Base
> <https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0>
>
>
>
> And I thought maybe I had messed something up but I noticed in the exampl=
e
> the real block name is not there either
>
>
>
>    |     _____________________________________________________
>
>    |    /
>
>    |   |       RFNoC blocks on this device:
>
>    ...
>
>    |   |   * 0/Block#0
>
>    ...
>
>    |     _____________________________________________________
>
>    |    /
>
>    |   |       Static connections on this device:
>
>    ...
>
>    |   |   * 0/SEP#4:0=3D=3D>0/Block#0:0
>
>    |   |   * 0/Block#0:0=3D=3D>0/SEP#4:0
>
>    ...
>
>
>
> Is there a reason why this does not get reflected in the usrp probe?
>
> I am running it on a E320. I built my bit image using the OOT approach.
> Moved it over and the .so created for my block.
>
> Do I need to bring over the block yml file or something?
>
>
>
> Try setting the UHD_MODULE_PATH environment variable to the location of
> your .so file for your block and re-run the probe.
>
>
>
> Brian
>

--000000000000353f6405cadebd77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Don&#39;t put non-.so files in the directory.<div><br></di=
v><div>Problem solved?</div><div><br></div><div>Brian</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 31, =
2021 at 12:53 PM Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech=
.edu">Jeff.Hodges@gtri.gatech.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-2134383602608219286WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Has this issue =
been resolved?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">If I export the=
 UHD_MODULE_PATH =3D the .so file it will find the gain block, but it print=
s a bunch of error strings trying to open every file in the directory. If I=
 do not set the UHD_MODULE_PATH, I cannot find
 the block. How can I get around this? I=E2=80=99m trying to write C code t=
o test the RFNOC block and am not interested in only gnuradio usage.<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Also setting -W=
l,--no-as-needed in the target_link_libraries of CMakeLists.txt did not res=
olve the issue either.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Jeff<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Jeffrey P Long &lt;<a href=3D"mailto:jp=
long@mitre.org" target=3D"_blank">jplong@mitre.org</a>&gt; <br>
<b>Sent:</b> Friday, May 14, 2021 5:30 PM<br>
<b>To:</b> Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=
=3D"_blank">bpadalino@gmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: [EXT] Re: RFNOC block name?<u></u><u></u><=
/p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Ok I had it up in /usr/lib but I moved it down to th=
e root folder and it basically gave the same thing with additional errors:<=
u></u><u></u></p>
<p class=3D"MsoNormal">Kind of look like it is still not finding it. Did I =
set it wrong?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">root@ni-e320-31DCD15:/usr/lib# export UHD_MODULE_PAT=
H=3D~/ =C2=A0 =C2=A0 =C2=A0<br>
root@ni-e320-31DCD15:/usr/lib# uhd_find_devices <br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/.v=
iminfo&quot;<br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/e3=
20.bit&quot;<br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/li=
brfnoc-txcore.so&quot;<br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/.b=
ash_history&quot;<br>
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.0.0.0-0-g90c=
e6062<br>
--------------------------------------------------<br>
-- UHD Device 0<br>
--------------------------------------------------<br>
Device Address:<br>
=C2=A0 =C2=A0 serial: 31DCD15<br>
=C2=A0 =C2=A0 claimed: False<br>
=C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<br>
=C2=A0 =C2=A0 product: e320<br>
=C2=A0 =C2=A0 type: e3xx<br>
<br>
<br>
root@ni-e320-31DCD15:/usr/lib# uhd_usrp_probe <br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/.v=
iminfo&quot;<br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/e3=
20.bit&quot;<br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/li=
brfnoc-txcore.so&quot;<br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/.b=
ash_history&quot;<br>
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.0.0.0-0-g90c=
e6062<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3De3xx,product=3De320,serial=3D31DCD15,claimed=3DFalse<br>
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D127.=
0.0.1,product=3De320&#39;.<br>
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ... <br>
[INFO] [0/Radio#0] CODEC loopback test passed<br>
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ... <br>
[INFO] [0/Radio#0] CODEC loopback test passed<br>
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<=
br>
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<=
br>
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xde30, 0=
xffff<br>
=C2=A0 _____________________________________________________<br>
=C2=A0/<br>
| =C2=A0 =C2=A0 =C2=A0 Device: E300-Series Device<br>
| =C2=A0 =C2=A0 _____________________________________________________<br>
| =C2=A0 =C2=A0/<br>
| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-e320-31DCD15<br>
| =C2=A0 | =C2=A0 eeprom_version: 3<br>
| =C2=A0 | =C2=A0 fs_version: 20200914014807<br>
| =C2=A0 | =C2=A0 mender_artifact: v4.0.0.0_e320<br>
| =C2=A0 | =C2=A0 mpm_sw_version: 4.0.0.0-g90ce6062<br>
| =C2=A0 | =C2=A0 pid: 58144<br>
| =C2=A0 | =C2=A0 product: e320<br>
| =C2=A0 | =C2=A0 rev: 5<br>
| =C2=A0 | =C2=A0 rpc_connection: local<br>
| =C2=A0 | =C2=A0 serial: 31DCD15<br>
| =C2=A0 | =C2=A0 type: e3xx<br>
| =C2=A0 | =C2=A0 MPM Version: 3.0<br>
| =C2=A0 | =C2=A0 FPGA Version: 6.0<br>
| =C2=A0 | =C2=A0 FPGA git hash: 75f2ba9.clean<br>
| =C2=A0 | =C2=A0 <br>
| =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>
| =C2=A0 | =C2=A0 Clock sources: external, internal, gpsdo<br>
| =C2=A0 | =C2=A0 Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_int=
ernal, temp_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_=
sky, gps_time, gps_tpv<br>
| =C2=A0 =C2=A0 _____________________________________________________<br>
| =C2=A0 =C2=A0/<br>
| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:<br>
| =C2=A0 | =C2=A0 <br>
| =C2=A0 | =C2=A0 * 0/Block#0<br>
| =C2=A0 | =C2=A0 * 0/DDC#0<br>
| =C2=A0 | =C2=A0 * 0/DUC#0<br>
| =C2=A0 | =C2=A0 * 0/DmaFIFO#0<br>
| =C2=A0 | =C2=A0 * 0/Radio#0<br>
| =C2=A0 =C2=A0 _____________________________________________________<br>
| =C2=A0 =C2=A0/<br>
| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device:<br>
| =C2=A0 | =C2=A0 <br>
| =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>
| =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>
| =C2=A0 | =C2=A0 * 0/SEP#1:0=3D=3D&gt;0/DUC#0:1<br>
| =C2=A0 | =C2=A0 * 0/DUC#0:1=3D=3D&gt;0/Radio#0:1<br>
| =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>
| =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>
| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DmaFIFO#0:0<br>
| =C2=A0 | =C2=A0 * 0/DmaFIFO#0:0=3D=3D&gt;0/SEP#2:0<br>
| =C2=A0 | =C2=A0 * 0/SEP#3:0=3D=3D&gt;0/DmaFIFO#0:1<br>
| =C2=A0 | =C2=A0 * 0/DmaFIFO#0:1=3D=3D&gt;0/SEP#3:0<br>
| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Block#0:0<br>
| =C2=A0 | =C2=A0 * 0/Block#0:0=3D=3D&gt;0/SEP#4:0<br>
| =C2=A0 =C2=A0 _____________________________________________________<br>
| =C2=A0 =C2=A0/<br>
| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: dboard<br>
| =C2=A0 | =C2=A0 =C2=A0 __________________________________________________=
___<br>
| =C2=A0 | =C2=A0 =C2=A0/<br>
| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>
| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>
| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>
| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz<br>
| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>
| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0=
.0 Hz<br>
| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
| =C2=A0 | =C2=A0 =C2=A0 __________________________________________________=
___<br>
| =C2=A0 | =C2=A0 =C2=A0/<br>
| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 1<br>
| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>
| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>
| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz<br>
| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>
| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0=
.0 Hz<br>
| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
| =C2=A0 =C2=A0 _____________________________________________________<br>
| =C2=A0 =C2=A0/<br>
| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: dboard<br>
| =C2=A0 | =C2=A0 =C2=A0 __________________________________________________=
___<br>
| =C2=A0 | =C2=A0 =C2=A0/<br>
| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>
| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>
| =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>
| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz<br>
| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>
| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0=
.0 Hz<br>
| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
| =C2=A0 | =C2=A0 =C2=A0 __________________________________________________=
___<br>
| =C2=A0 | =C2=A0 =C2=A0/<br>
| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>
| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>
| =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>
| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz<br>
| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>
| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0=
.0 Hz<br>
| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Brian Padalino &lt;<a href=3D"mailto:bp=
adalino@gmail.com" target=3D"_blank">bpadalino@gmail.com</a>&gt;
<br>
<b>Sent:</b> Friday, May 14, 2021 4:29 PM<br>
<b>To:</b> Jeffrey P Long &lt;<a href=3D"mailto:jplong@mitre.org" target=3D=
"_blank">jplong@mitre.org</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [EXT] Re: [USRP-users] RFNOC block name?<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal">On Fri, May 14, 2021 at 4:22 PM Jeffrey P Long &lt;<=
a href=3D"mailto:jplong@mitre.org" target=3D"_blank">jplong@mitre.org</a>&g=
t; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin:5pt 0i=
n 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal">I am going through the examples in
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><a href=3D"https://kb.ettus.com/Getting_Started_with=
_RFNoC_in_UHD_4.0" target=3D"_blank">Getting Started with RFNoC in UHD 4.0 =
- Ettus Knowledge Base</a><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">And I thought maybe I had messed something up but I =
noticed in the example the real block name is not there either<u></u><u></u=
></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div style=3D"border:1pt solid rgb(221,221,221);padding:12pt">
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __=
___________________________________________________</span><u></u><u></u></p=
re>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span>=
<u></u><u></u></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 RFNoC blocks on this device:</span><u></u><u></u><=
/pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 ...</span><u></u><u></u></pr=
e>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
* 0/Block#0</span><u></u><u></u></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 ...</span><u></u><u></u></pr=
e>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __=
___________________________________________________</span><u></u><u></u></p=
re>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /</span>=
<u></u><u></u></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 Static connections on this device:</span><u></u><u=
></u></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 ...</span><u></u><u></u></pr=
e>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
* 0/SEP#4:0=3D=3D&gt;0/Block#0:0</span><u></u><u></u></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 =
* 0/Block#0:0=3D=3D&gt;0/SEP#4:0</span><u></u><u></u></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249)"><span style=
=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 ...</span><u></u><u></u></pr=
e>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Is there a reason why this does not get reflected in=
 the usrp probe?<u></u><u></u></p>
<p class=3D"MsoNormal">I am running it on a E320. I built my bit image usin=
g the OOT approach. Moved it over and the .so created for my block.<u></u><=
u></u></p>
<p class=3D"MsoNormal">Do I need to bring over the block yml file or someth=
ing?<u></u><u></u></p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Try setting the UHD_MODULE_PATH environment variable=
 to the location of your .so file for your block and re-run the probe.<u></=
u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Brian<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>

</blockquote></div>

--000000000000353f6405cadebd77--

--===============5118397031763693610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5118397031763693610==--
