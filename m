Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CC7394329
	for <lists+usrp-users@lfdr.de>; Fri, 28 May 2021 15:03:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65827384341
	for <lists+usrp-users@lfdr.de>; Fri, 28 May 2021 09:03:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dBhXdAbp";
	dkim-atps=neutral
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id A0B38383B88
	for <usrp-users@lists.ettus.com>; Fri, 28 May 2021 09:02:35 -0400 (EDT)
Received: by mail-qv1-f48.google.com with SMTP id e8so1792842qvp.7
        for <usrp-users@lists.ettus.com>; Fri, 28 May 2021 06:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=invfwHyrpvJRrkV5DVp62tu2uNlXcXafmrL7o5A7V5A=;
        b=dBhXdAbp0VMD1OfsuWfu/lqzKVTYlIC1SnsrPZia5gif2UCnImvCEvL6kY7RW4KczR
         9Pd3ovl/CqbKCvsmJyfcY585szFgSM6RYnwNiyWk4alVvYakkFshvLDnQYkQfACr6vOY
         30Tr5LUDLMiPGhiNUZu1LWhD+BW2hf30F5j66txPh7qYuy7i5BCEZGGr9OPPosoCceaz
         ZYx+bUnsonhpLumPZJrEfm47QBrbV9Ly61LyDTinwcRw9gVMGPtcX0ZlKrIY8uIV/uJi
         bNk2l/hM7Y1zsmMX9oPXFBObyMhYDvrOjfk+aWhxgJOffzEyyu8PJs8GEdA3v0gLtMT1
         f6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=invfwHyrpvJRrkV5DVp62tu2uNlXcXafmrL7o5A7V5A=;
        b=GYZKHDAtge43imWSPk/9XrsFO/IsnUe9cVNQLW3svOqG3jZauJLP7ZDMlOD661CMfD
         IZM6jTZls5ctICF5QyownbTIK4qYJLr9C1NhcudCTHW53EY5GHHYT+R72pOelSp7AVsE
         1WVgb0n8zAJ52I9Hwb2lH5UBnLuTJOVhAo8EXNv/iopjR2/vKznjCJUx/5H9j57jpl3z
         P6moBFKacrpgcdeZFyz5iLDrelE855JVxdxDSOfIUD5uYcpXJrFxEt/zyRQy5DI0ApYN
         RSu1ij5aI85Hz+CaLvfxf5AzJOIiurDpQtrnxy6tbgaKHfZIe+1/JE1qYK8Zz10/7Nrs
         zCJQ==
X-Gm-Message-State: AOAM530EWfM9v2CKkgjWqQ0cGkkujMk+ASoCCsDtiOoiPKFm4KeHMgK2
	WVmv+bzefsVi9kwSkER4WmeO/cYeLoA=
X-Google-Smtp-Source: ABdhPJzKotNrSEZP7ITFGEgMLFY4Pp520zgGiAU6HXiWrxHI8nO16fEjJ8XliSpc563LHQ1l+6evsQ==
X-Received: by 2002:a0c:e1d1:: with SMTP id v17mr3712006qvl.52.1622206954553;
        Fri, 28 May 2021 06:02:34 -0700 (PDT)
Received: from ?IPv6:2600:380:9154:a178:f1fe:42d4:158e:105e? ([2600:380:9154:a178:f1fe:42d4:158e:105e])
        by smtp.gmail.com with ESMTPSA id a23sm3193070qtd.60.2021.05.28.06.02.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 May 2021 06:02:33 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 28 May 2021 09:02:32 -0400
Message-Id: <FC90E19B-7DC1-4400-91F5-219DD0BA4D87@gmail.com>
References: <CAG16vQWBW6XXVDuQiV22H0K=P4Dk3MPGBxPgF=QfTp3Nwt+nPA@mail.gmail.com>
In-Reply-To: <CAG16vQWBW6XXVDuQiV22H0K=P4Dk3MPGBxPgF=QfTp3Nwt+nPA@mail.gmail.com>
To: =?utf-8?Q?Maria_Mu=C3=B1oz?= <mamuki92@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: LFZUVKFI26UA4355LMWQQCRG675WE4C5
X-Message-ID-Hash: LFZUVKFI26UA4355LMWQQCRG675WE4C5
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC OOT module not found in GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LFZUVKFI26UA4355LMWQQCRG675WE4C5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7807009544170818900=="


--===============7807009544170818900==
Content-Type: multipart/alternative; boundary=Apple-Mail-DE71D837-840E-418C-B7D3-82C4DF831CD8
Content-Transfer-Encoding: 7bit


--Apple-Mail-DE71D837-840E-418C-B7D3-82C4DF831CD8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I second this. I=E2=80=99m having almost the exact same issue with split str=
eam.=20
Mine returns attribute error no module found, but as shown in Maria=E2=80=99=
s post, it=E2=80=99s displayed fine in grc and the image.=20

<end transmission>

> On May 28, 2021, at 04:45, Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote:
>=20
> =EF=BB=BF
> Hi all,
>=20
> I'=E1=B8=BF trying to instance in my GNURadio graph the splitstream rfnoc b=
lock. I'm using RFNoC 4.0, GNURadio3.8 and gr-ettus master branch.
>=20
> This block has all the UHD driver and verilog code in the UHD repository (=
under "~/rfnoc/src/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_split_stream"=
, "/rfnoc/src/uhd/host/lib/rfnoc" and "/rfnoc/src/uhd/host/include/uhd/rfnoc=
), but it is not included in gr-ettus/gnuradio, so I try to create an OOT mo=
dule using this code to use the block on GNURadio.
>=20
> I have successfully created the module with rfnocmodtool, adapted the veri=
log, c++ and yml files and compiled and installed the block. I have generate=
d an image using the block and uhd_usrp_probe seems to recognise the block:
>=20
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.HEAD-0-=
g90ce6062
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.1.15,type=3De3xx,product=3De320,serial=3D31DFBB7,claimed=3DFalse,add=
r=3D192.168.10.2
> [INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192=
.168.1.15,product=3De320'.
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...=20
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...=20
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)=

> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)=

>   _____________________________________________________
>  /
> |       Device: E300-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: ni-e320-31DFBB7
> |   |   eeprom_version: 3
> |   |   fs_version: 20200914014807
> |   |   mender_artifact: v4.0.0.0_e320
> |   |   mpm_sw_version: 4.0.0.0-g90ce6062
> |   |   pid: 58144
> |   |   product: e320
> |   |   rev: 5
> |   |   rpc_connection: remote
> |   |   serial: 31DFBB7
> |   |   type: e3xx
> |   |   MPM Version: 3.0
> |   |   FPGA Version: 6.0
> |   |   FPGA git hash: 90ce606.dirty
> |   |  =20
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: external, internal, gpsdo
> |   |   Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal, te=
mp_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, gps_t=
ime, gps_tpv
> |     _____________________________________________________
> |    /
> |   |       RFNoC blocks on this device:
> |   |  =20
> |   |   * 0/DDC#0
> |   |   * 0/DUC#0
> |   |   * 0/DmaFIFO#0
> |   |   * 0/FFT#0
> |   |   * 0/Radio#0
> |   |   * 0/SplitStream#0
> |     _____________________________________________________
> |    /
> |   |       Static connections on this device:
> |   |  =20
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
> |   |   * 0/SEP#4:0=3D=3D>0/FFT#0:0
> |   |   * 0/FFT#0:0=3D=3D>0/SEP#4:0
> |   |   * 0/SEP#5:0=3D=3D>0/SplitStream#0:0
> |   |   * 0/SplitStream#0:0=3D=3D>0/SEP#5:0
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
>=20
> I have a graph on GNURadio with the created block (attached), but when I t=
ry to run it I have the following error:
>=20
> Traceback (most recent call last):
>   File "QPSK_example.py", line 386, in <module>
>     main()
>   File "QPSK_example.py", line 362, in main
>     tb =3D top_block_cls()
>   File "QPSK_example.py", line 86, in __init__
>     self.splitting_splitstream_0 =3D splitting.splitstream(
>   File "/usr/local/lib/python3/dist-packages/splitting/splitting_swig.py",=
 line 243, in make
>     return _splitting_swig.splitstream_make(graph, block_args, device_sele=
ct, instance)
> RuntimeError: Cannot find block!
>=20
> I'm not very familiar with swig so, is there something I must add in the s=
wig interface to have my block recognised by GNURadio? Or is this error rela=
ted to something else?  I'd really appreciate any help on this.
>=20
> Kind Regards,
>=20
> Maria.
>=20
>=20
>=20
> <gnu_graph.png>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-DE71D837-840E-418C-B7D3-82C4DF831CD8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I second this. I=E2=80=99m having almost th=
e exact same issue with split stream.&nbsp;<div>Mine returns attribute error=
 no module found, but as shown in Maria=E2=80=99s post, it=E2=80=99s display=
ed fine in grc and the image.&nbsp;<br><br><div dir=3D"ltr">&lt;<span class=3D=
"Apple-style-span" style=3D"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.=
296875); -webkit-composition-fill-color: rgba(175, 192, 227, 0.230469); -web=
kit-composition-frame-color: rgba(77, 128, 180, 0.230469); ">end transmissio=
n&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On May 28, 2=
021, at 04:45, Maria Mu=C3=B1oz &lt;mamuki92@gmail.com&gt; wrote:<br><br></b=
lockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=
=3D"ltr"><div>Hi all,</div><div><br></div><div>I'=E1=B8=BF trying to instanc=
e in my GNURadio graph the splitstream rfnoc block. I'm using RFNoC 4.0, GNU=
Radio3.8 and gr-ettus master branch.</div><div><br></div><div>This block has=
 all the UHD driver and verilog code in the UHD repository (under "~/rfnoc/s=
rc/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_split_stream", "/rfnoc/src/uh=
d/host/lib/rfnoc" and "/rfnoc/src/uhd/host/include/uhd/rfnoc), but it is not=
 included in gr-ettus/gnuradio, so I try to create an OOT module using this c=
ode to use the block on GNURadio.</div><div><br></div><div>I have successful=
ly created the module with rfnocmodtool, adapted the verilog, c++ and yml fi=
les and compiled and installed the block. I have generated an image using th=
e block and uhd_usrp_probe seems to recognise the block:</div><div><br></div=
><div style=3D"margin-left:40px"><i>[INFO] [UHD] linux; GNU C++ version 9.3.=
0; Boost_107100; UHD_4.0.0.HEAD-0-g90ce6062<br>[INFO] [MPMD] Initializing 1 d=
evice(s) in parallel with args: mgmt_addr=3D192.168.1.15,type=3De3xx,product=
=3De320,serial=3D31DFBB7,claimed=3DFalse,addr=3D192.168.10.2<br>[INFO] [MPM.=
PeriphManager] init() called with device args `mgmt_addr=3D192.168.1.15,prod=
uct=3De320'.<br>[INFO] [0/Radio#0] Performing CODEC loopback test on channel=
 0 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>[INFO] [0/Radio#=
0] Performing CODEC loopback test on channel 1 ... <br>[INFO] [0/Radio#0] CO=
DEC loopback test passed<br>[INFO] [0/DmaFIFO#0] BIST passed (Estimated Mini=
mum Throughput: 1361 MB/s)<br>[INFO] [0/DmaFIFO#0] BIST passed (Estimated Mi=
nimum Throughput: 1361 MB/s)<br>&nbsp; _____________________________________=
________________<br>&nbsp;/<br>| &nbsp; &nbsp; &nbsp; Device: E300-Series De=
vice<br>| &nbsp; &nbsp; ____________________________________________________=
_<br>| &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; &nbsp; &nbsp; Mboard: ni-e320-31D=
FBB7<br>| &nbsp; | &nbsp; eeprom_version: 3<br>| &nbsp; | &nbsp; fs_version:=
 20200914014807<br>| &nbsp; | &nbsp; mender_artifact: v4.0.0.0_e320<br>| &nb=
sp; | &nbsp; mpm_sw_version: 4.0.0.0-g90ce6062<br>| &nbsp; | &nbsp; pid: 581=
44<br>| &nbsp; | &nbsp; product: e320<br>| &nbsp; | &nbsp; rev: 5<br>| &nbsp=
; | &nbsp; rpc_connection: remote<br>| &nbsp; | &nbsp; serial: 31DFBB7<br>| &=
nbsp; | &nbsp; type: e3xx<br>| &nbsp; | &nbsp; MPM Version: 3.0<br>| &nbsp; |=
 &nbsp; FPGA Version: 6.0<br>| &nbsp; | &nbsp; FPGA git hash: 90ce606.dirty<=
br>| &nbsp; | &nbsp; <br>| &nbsp; | &nbsp; Time sources: &nbsp;internal, ext=
ernal, gpsdo<br>| &nbsp; | &nbsp; Clock sources: external, internal, gpsdo<b=
r>| &nbsp; | &nbsp; Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_in=
ternal, temp_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_=
sky, gps_time, gps_tpv<br>| &nbsp; &nbsp; __________________________________=
___________________<br>| &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; &nbsp; &nbsp; R=
FNoC blocks on this device:<br>| &nbsp; | &nbsp; <br>| &nbsp; | &nbsp; * 0/D=
DC#0<br>| &nbsp; | &nbsp; * 0/DUC#0<br>| &nbsp; | &nbsp; * 0/DmaFIFO#0<br>| &=
nbsp; | &nbsp; * 0/FFT#0<br>| &nbsp; | &nbsp; * 0/Radio#0<br>| &nbsp; | &nbs=
p; * 0/SplitStream#0<br>| &nbsp; &nbsp; ____________________________________=
_________________<br>| &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; &nbsp; &nbsp; Sta=
tic connections on this device:<br>| &nbsp; | &nbsp; <br>| &nbsp; | &nbsp; *=
 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| &nbsp; | &nbsp; * 0/DUC#0:0=3D=3D&gt;0/Ra=
dio#0:0<br>| &nbsp; | &nbsp; * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>| &nbsp; | &=
nbsp; * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| &nbsp; | &nbsp; * 0/SEP#1:0=3D=3D&=
gt;0/DUC#0:1<br>| &nbsp; | &nbsp; * 0/DUC#0:1=3D=3D&gt;0/Radio#0:1<br>| &nbs=
p; | &nbsp; * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>| &nbsp; | &nbsp; * 0/DDC#0:=
1=3D=3D&gt;0/SEP#1:0<br>| &nbsp; | &nbsp; * 0/SEP#2:0=3D=3D&gt;0/DmaFIFO#0:0=
<br>| &nbsp; | &nbsp; * 0/DmaFIFO#0:0=3D=3D&gt;0/SEP#2:0<br>| &nbsp; | &nbsp=
; * 0/SEP#3:0=3D=3D&gt;0/DmaFIFO#0:1<br>| &nbsp; | &nbsp; * 0/DmaFIFO#0:1=3D=
=3D&gt;0/SEP#3:0<br>| &nbsp; | &nbsp; * 0/SEP#4:0=3D=3D&gt;0/FFT#0:0<br>| &n=
bsp; | &nbsp; * 0/FFT#0:0=3D=3D&gt;0/SEP#4:0<br><b>| &nbsp; | &nbsp; * 0/SEP=
#5:0=3D=3D&gt;0/SplitStream#0:0<br>| &nbsp; | &nbsp; * 0/SplitStream#0:0=3D=3D=
&gt;0/SEP#5:0</b><br>| &nbsp; &nbsp; _______________________________________=
______________<br>| &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; &nbsp; &nbsp; TX Dbo=
ard: dboard<br>| &nbsp; | &nbsp; &nbsp; ____________________________________=
_________________<br>| &nbsp; | &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; | &nbsp;=
 &nbsp; &nbsp; TX Frontend: 0<br>| &nbsp; | &nbsp; | &nbsp; Name: E3xx<br>| &=
nbsp; | &nbsp; | &nbsp; Antennas: TX/RX<br>| &nbsp; | &nbsp; | &nbsp; Freq r=
ange: 47.000 to 6000.000 MHz<br>| &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0=
.0 to 89.8 step 0.2 dB<br>| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 200000=
00.0 to 40000000.0 step 0.0 Hz<br>| &nbsp; | &nbsp; | &nbsp; Connection Type=
: IQ<br>| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<br>| &nbsp; | &nbsp; &=
nbsp; _____________________________________________________<br>| &nbsp; | &n=
bsp; &nbsp;/<br>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 1<br>|=
 &nbsp; | &nbsp; | &nbsp; Name: E3xx<br>| &nbsp; | &nbsp; | &nbsp; Antennas:=
 TX/RX<br>| &nbsp; | &nbsp; | &nbsp; Freq range: 47.000 to 6000.000 MHz<br>|=
 &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>| &nbsp=
; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br=
>| &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<br>| &nbsp; | &nbsp; | &nbsp=
; Uses LO offset: No<br>| &nbsp; &nbsp; ____________________________________=
_________________<br>| &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; &nbsp; &nbsp; RX D=
board: dboard<br>| &nbsp; | &nbsp; &nbsp; __________________________________=
___________________<br>| &nbsp; | &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; | &nbs=
p; &nbsp; &nbsp; RX Frontend: 0<br>| &nbsp; | &nbsp; | &nbsp; Name: E3xx<br>=
| &nbsp; | &nbsp; | &nbsp; Antennas: RX2, TX/RX<br>| &nbsp; | &nbsp; | &nbsp=
; Freq range: 70.000 to 6000.000 MHz<br>| &nbsp; | &nbsp; | &nbsp; Gain rang=
e PGA: 0.0 to 76.0 step 1.0 dB<br>| &nbsp; | &nbsp; | &nbsp; Bandwidth range=
: 20000000.0 to 40000000.0 step 0.0 Hz<br>| &nbsp; | &nbsp; | &nbsp; Connect=
ion Type: IQ<br>| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<br>| &nbsp; | &=
nbsp; &nbsp; _____________________________________________________<br>| &nbs=
p; | &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend:=
 1<br>| &nbsp; | &nbsp; | &nbsp; Name: E3xx<br>| &nbsp; | &nbsp; | &nbsp; An=
tennas: RX2, TX/RX<br>| &nbsp; | &nbsp; | &nbsp; Freq range: 70.000 to 6000.=
000 MHz<br>| &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0.0 to 76.0 step 1.0 d=
B<br>| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 40000000.0 st=
ep 0.0 Hz<br>| &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<br>| &nbsp; | &n=
bsp; | &nbsp; Uses LO offset: No</i></div><div style=3D"margin-left:40px"><i=
><br></i></div><div>I have a graph on GNURadio with the created block (attac=
hed), but when I try to run it I have the following error:</div><div><br></d=
iv><div style=3D"margin-left:40px">Traceback (most recent call last):<br>&nb=
sp; File "QPSK_example.py", line 386, in &lt;module&gt;<br>&nbsp; &nbsp; mai=
n()<br>&nbsp; File "QPSK_example.py", line 362, in main<br>&nbsp; &nbsp; tb =3D=
 top_block_cls()<br>&nbsp; File "QPSK_example.py", line 86, in __init__<br>&=
nbsp; &nbsp; self.splitting_splitstream_0 =3D splitting.splitstream(<br>&nbs=
p; File "/usr/local/lib/python3/dist-packages/splitting/splitting_swig.py", l=
ine 243, in make<br>&nbsp; &nbsp; return _splitting_swig.splitstream_make(gr=
aph, block_args, device_select, instance)<br>RuntimeError: Cannot find block=
!</div><div style=3D"margin-left:40px"><br></div><div>I'm not very familiar w=
ith swig so, is there something I must add in the swig interface to have my b=
lock recognised by GNURadio? Or is this error related to something else?&nbs=
p; I'd really appreciate any help on this.</div><div><br></div><div>Kind Reg=
ards,</div><div><br></div><div>Maria.<br></div><div><br></div><div><br></div=
><div><div><br></div></div></div>
<div>&lt;gnu_graph.png&gt;</div><span>______________________________________=
_________</span><br><span>USRP-users mailing list -- usrp-users@lists.ettus.=
com</span><br><span>To unsubscribe send an email to usrp-users-leave@lists.e=
ttus.com</span><br></div></blockquote></div></body></html>=

--Apple-Mail-DE71D837-840E-418C-B7D3-82C4DF831CD8--

--===============7807009544170818900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7807009544170818900==--
