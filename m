Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 642C33955CA
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 09:10:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A7C1383FEC
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 03:10:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZB+ROFf8";
	dkim-atps=neutral
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id A1974383BF8
	for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 03:09:41 -0400 (EDT)
Received: by mail-ej1-f48.google.com with SMTP id lz27so15109832ejb.11
        for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 00:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l3hh42HlgPYOmT6n8yVZLQ4BXJGAZDfoWZE0cwSvHtE=;
        b=ZB+ROFf8imle/iRbPFiJ2AGxmvrZ0cnicYkTxw9LXbLyEU/rd1szg7RWZeZ0yP8RLN
         yEO7EIoCHMbBMc52nxbbgZP5CYl16JXLh6J8s1R/Wo8ELDAOkYWbch2WUEZI8CLYk/U/
         54difpdgs64f9qHrG/NgPfQgFketYycT+4sdj/ARxDWZUDPZ2aZIJYt1OmIriIfk/JsT
         z+cbIVOIiNaBrY3bQU9GMmRLDd6hgSjQ6WnCIN2N788vC+0dLTX2AnAkObysfxLkJFQD
         TlYSRYGoiMSeOvlKn1p7/7/b7xCwT5vcxsC1+OhVgePDkFetnuGswWv8IFU5JKBQ2je6
         65Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l3hh42HlgPYOmT6n8yVZLQ4BXJGAZDfoWZE0cwSvHtE=;
        b=lKZ8iSVsPdKAhKkYe4OChcIrqvIxzqW9UZfGa8eAzuJFOAMfmPRPLSp6XAU98hSFiR
         dReRagzrlxuDRDEPfaaqqNfv91zSii1VLqFddsnE4jYzBbKi0kENyR+57DWgJ3RcbBGp
         IRtGfbAJ5p7KZCmGRyPtSB63XDAdRhExbyeNJxjo9Z2dweVuQtOegT4oqMH/7LIiaJb8
         Ti8hCudLDy3lAGnOVeuCMKS6SIyovp2+xaUMMX6/4Ywwlv8GbpDU0UgpvaupkA8V0A9t
         bax1sarAJMC791A8wLmfRFjnDSNRzRj0UqPvPuyfG+Jn/p2jekSOn1O4mHeFh1BpxWI0
         O1Gw==
X-Gm-Message-State: AOAM5331pb8o1aZS67Nr/dSTnAXyVcde+CdOPJlnan4gq3euj4Gc5/HT
	0IZI47m7ZKiKe+aa2zcg8lEozKecSv7HFZi3zdk=
X-Google-Smtp-Source: ABdhPJzTsWPhUGMELw+FjGbZTBCgD7beaaU4zIZ/WcZh8NLwOrT1v7X5dmHeL04YMLNHmvNeh/Id8dN/UN+uT/IR1/I=
X-Received: by 2002:a17:907:76d4:: with SMTP id kf20mr2152604ejc.164.1622444980533;
 Mon, 31 May 2021 00:09:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQWBW6XXVDuQiV22H0K=P4Dk3MPGBxPgF=QfTp3Nwt+nPA@mail.gmail.com>
 <FC90E19B-7DC1-4400-91F5-219DD0BA4D87@gmail.com>
In-Reply-To: <FC90E19B-7DC1-4400-91F5-219DD0BA4D87@gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Mon, 31 May 2021 09:09:28 +0200
Message-ID: <CAG16vQXYNfyxWmzBLzOGcWg_ZtaHXA1H5qhpti0=vQxE930XJQ@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: UBSWLOLGDGHRSGNFYXGE7RNKOSEJL37N
X-Message-ID-Hash: UBSWLOLGDGHRSGNFYXGE7RNKOSEJL37N
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC OOT module not found in GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UBSWLOLGDGHRSGNFYXGE7RNKOSEJL37N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6331113379057182311=="

--===============6331113379057182311==
Content-Type: multipart/alternative; boundary="000000000000bb7c6c05c39ae866"

--000000000000bb7c6c05c39ae866
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oh! I hope someone can tell us what might be wrong with the block. Have you
got another OOT block working created with rfnocmodtool? Just to discard
the tool as the problem.
If I figure out something new I'll tell you.

Kind regards,
Maria

El vie, 28 may 2021 a las 15:02, Paul Atreides (<maud.dib1984@gmail.com>)
escribi=C3=B3:

> I second this. I=E2=80=99m having almost the exact same issue with split =
stream.
> Mine returns attribute error no module found, but as shown in Maria=E2=80=
=99s
> post, it=E2=80=99s displayed fine in grc and the image.
>
> <end transmission>
>
> On May 28, 2021, at 04:45, Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote:
>
> =EF=BB=BF
> Hi all,
>
> I'=E1=B8=BF trying to instance in my GNURadio graph the splitstream rfnoc=
 block.
> I'm using RFNoC 4.0, GNURadio3.8 and gr-ettus master branch.
>
> This block has all the UHD driver and verilog code in the UHD repository
> (under
> "~/rfnoc/src/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_split_stream",
> "/rfnoc/src/uhd/host/lib/rfnoc" and
> "/rfnoc/src/uhd/host/include/uhd/rfnoc), but it is not included in
> gr-ettus/gnuradio, so I try to create an OOT module using this code to us=
e
> the block on GNURadio.
>
> I have successfully created the module with rfnocmodtool, adapted the
> verilog, c++ and yml files and compiled and installed the block. I have
> generated an image using the block and uhd_usrp_probe seems to recognise
> the block:
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
> *[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.HEAD-0-g90ce6062[INFO] [MPMD] Initializing 1 device(s) in
> parallel with args:
> mgmt_addr=3D192.168.1.15,type=3De3xx,product=3De320,serial=3D31DFBB7,clai=
med=3DFalse,addr=3D192.168.10.2[INFO]
> [MPM.PeriphManager] init() called with device args
> `mgmt_addr=3D192.168.1.15,product=3De320'.[INFO] [0/Radio#0] Performing C=
ODEC
> loopback test on channel 0 ... [INFO] [0/Radio#0] CODEC loopback test
> passed[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> [INFO] [0/Radio#0] CODEC loopback test passed[INFO] [0/DmaFIFO#0] BIST
> passed (Estimated Minimum Throughput: 1361 MB/s)[INFO] [0/DmaFIFO#0] BIST
> passed (Estimated Minimum Throughput: 1361 MB/s)
> _____________________________________________________ /|       Device:
> E300-Series Device|
> _____________________________________________________|    /|   |
> Mboard: ni-e320-31DFBB7|   |   eeprom_version: 3|   |   fs_version:
> 20200914014807|   |   mender_artifact: v4.0.0.0_e320|   |   mpm_sw_versio=
n:
> 4.0.0.0-g90ce6062|   |   pid: 58144|   |   product: e320|   |   rev: 5|  =
 |
>   rpc_connection: remote|   |   serial: 31DFBB7|   |   type: e3xx|   |
> MPM Version: 3.0|   |   FPGA Version: 6.0|   |   FPGA git hash:
> 90ce606.dirty|   |   |   |   Time sources:  internal, external, gpsdo|   =
|
>   Clock sources: external, internal, gpsdo|   |   Sensors: ref_locked,
> gps_locked, fan, temp_fpga, temp_internal, temp_rf_channelA,
> temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, gps_time, gps_tpv|
>   _____________________________________________________|    /|   |
> RFNoC blocks on this device:|   |   |   |   * 0/DDC#0|   |   * 0/DUC#0|  =
 |
>   * 0/DmaFIFO#0|   |   * 0/FFT#0|   |   * 0/Radio#0|   |   *
> 0/SplitStream#0|     ____________________________________________________=
_|
>    /|   |       Static connections on this device:|   |   |   |   *
> 0/SEP#0:0=3D=3D>0/DUC#0:0|   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0|   |   *
> 0/Radio#0:0=3D=3D>0/DDC#0:0|   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0|   |   *
> 0/SEP#1:0=3D=3D>0/DUC#0:1|   |   * 0/DUC#0:1=3D=3D>0/Radio#0:1|   |   *
> 0/Radio#0:1=3D=3D>0/DDC#0:1|   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0|   |   *
> 0/SEP#2:0=3D=3D>0/DmaFIFO#0:0|   |   * 0/DmaFIFO#0:0=3D=3D>0/SEP#2:0|   |=
   *
> 0/SEP#3:0=3D=3D>0/DmaFIFO#0:1|   |   * 0/DmaFIFO#0:1=3D=3D>0/SEP#3:0|   |=
   *
> 0/SEP#4:0=3D=3D>0/FFT#0:0|   |   * 0/FFT#0:0=3D=3D>0/SEP#4:0|   |   *
> 0/SEP#5:0=3D=3D>0/SplitStream#0:0|   |   * 0/SplitStream#0:0=3D=3D>0/SEP#=
5:0|
> _____________________________________________________|    /|   |       TX
> Dboard: dboard|   |
> _____________________________________________________|   |    /|   |   |
>     TX Frontend: 0|   |   |   Name: E3xx|   |   |   Antennas: TX/RX|   |
> |   Freq range: 47.000 to 6000.000 MHz|   |   |   Gain range PGA: 0.0 to
> 89.8 step 0.2 dB|   |   |   Bandwidth range: 20000000.0 to 40000000.0 ste=
p
> 0.0 Hz|   |   |   Connection Type: IQ|   |   |   Uses LO offset: No|   |
>   _____________________________________________________|   |    /|   |   =
|
>       TX Frontend: 1|   |   |   Name: E3xx|   |   |   Antennas: TX/RX|   =
|
>   |   Freq range: 47.000 to 6000.000 MHz|   |   |   Gain range PGA: 0.0 t=
o
> 89.8 step 0.2 dB|   |   |   Bandwidth range: 20000000.0 to 40000000.0 ste=
p
> 0.0 Hz|   |   |   Connection Type: IQ|   |   |   Uses LO offset: No|
> _____________________________________________________|    /|   |       RX
> Dboard: dboard|   |
> _____________________________________________________|   |    /|   |   |
>     RX Frontend: 0|   |   |   Name: E3xx|   |   |   Antennas: RX2, TX/RX|
> |   |   Freq range: 70.000 to 6000.000 MHz|   |   |   Gain range PGA: 0.0
> to 76.0 step 1.0 dB|   |   |   Bandwidth range: 20000000.0 to 40000000.0
> step 0.0 Hz|   |   |   Connection Type: IQ|   |   |   Uses LO offset: No|
> |     _____________________________________________________|   |    /|   =
|
>   |       RX Frontend: 1|   |   |   Name: E3xx|   |   |   Antennas: RX2,
> TX/RX|   |   |   Freq range: 70.000 to 6000.000 MHz|   |   |   Gain range
> PGA: 0.0 to 76.0 step 1.0 dB|   |   |   Bandwidth range: 20000000.0 to
> 40000000.0 step 0.0 Hz|   |   |   Connection Type: IQ|   |   |   Uses LO
> offset: No*
>
> I have a graph on GNURadio with the created block (attached), but when I
> try to run it I have the following error:
>
> Traceback (most recent call last):
>   File "QPSK_example.py", line 386, in <module>
>     main()
>   File "QPSK_example.py", line 362, in main
>     tb =3D top_block_cls()
>   File "QPSK_example.py", line 86, in __init__
>     self.splitting_splitstream_0 =3D splitting.splitstream(
>   File "/usr/local/lib/python3/dist-packages/splitting/splitting_swig.py"=
,
> line 243, in make
>     return _splitting_swig.splitstream_make(graph, block_args,
> device_select, instance)
> RuntimeError: Cannot find block!
>
> I'm not very familiar with swig so, is there something I must add in the
> swig interface to have my block recognised by GNURadio? Or is this error
> related to something else?  I'd really appreciate any help on this.
>
> Kind Regards,
>
> Maria.
>
>
>
> <gnu_graph.png>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000bb7c6c05c39ae866
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Oh! I hope someone can tell us what might be wrong with th=
e block. Have you got another OOT block working created=C2=A0with=C2=A0rfno=
cmodtool? Just to discard the tool as the problem.<div>If I figure out some=
thing new I&#39;ll tell you.</div><div><br></div><div>Kind regards,</div><d=
iv>Maria</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">El vie, 28 may 2021 a las 15:02, Paul Atreides (&lt;<a href=
=3D"mailto:maud.dib1984@gmail.com">maud.dib1984@gmail.com</a>&gt;) escribi=
=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto">I second this. I=E2=80=99m having almost the exact same issue wit=
h split stream.=C2=A0<div>Mine returns attribute error no module found, but=
 as shown in Maria=E2=80=99s post, it=E2=80=99s displayed fine in grc and t=
he image.=C2=A0<br><br><div dir=3D"ltr">&lt;<span>end transmission&gt;</spa=
n></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On May 28, 2021, at =
04:45, Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" target=3D=
"_blank">mamuki92@gmail.com</a>&gt; wrote:<br><br></blockquote></div><block=
quote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Hi all,=
</div><div><br></div><div>I&#39;=E1=B8=BF trying to instance in my GNURadio=
 graph the splitstream rfnoc block. I&#39;m using RFNoC 4.0, GNURadio3.8 an=
d gr-ettus master branch.</div><div><br></div><div>This block has all the U=
HD driver and verilog code in the UHD repository (under &quot;~/rfnoc/src/u=
hd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_split_stream&quot;, &quot;/rfnoc=
/src/uhd/host/lib/rfnoc&quot; and &quot;/rfnoc/src/uhd/host/include/uhd/rfn=
oc), but it is not included in gr-ettus/gnuradio, so I try to create an OOT=
 module using this code to use the block on GNURadio.</div><div><br></div><=
div>I have successfully created the module with rfnocmodtool, adapted the v=
erilog, c++ and yml files and compiled and installed the block. I have gene=
rated an image using the block and uhd_usrp_probe seems to recognise the bl=
ock:</div><div><br></div><div style=3D"margin-left:40px"><i>[INFO] [UHD] li=
nux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.HEAD-0-g90ce6062<br>[IN=
FO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.=
168.1.15,type=3De3xx,product=3De320,serial=3D31DFBB7,claimed=3DFalse,addr=
=3D192.168.10.2<br>[INFO] [MPM.PeriphManager] init() called with device arg=
s `mgmt_addr=3D192.168.1.15,product=3De320&#39;.<br>[INFO] [0/Radio#0] Perf=
orming CODEC loopback test on channel 0 ... <br>[INFO] [0/Radio#0] CODEC lo=
opback test passed<br>[INFO] [0/Radio#0] Performing CODEC loopback test on =
channel 1 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>[INFO] [=
0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<br>[INFO=
] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<br>=
=C2=A0 _____________________________________________________<br>=C2=A0/<br>=
| =C2=A0 =C2=A0 =C2=A0 Device: E300-Series Device<br>| =C2=A0 =C2=A0 ______=
_______________________________________________<br>| =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-e320-31DFBB7<br>| =C2=A0 | =C2=A0 =
eeprom_version: 3<br>| =C2=A0 | =C2=A0 fs_version: 20200914014807<br>| =C2=
=A0 | =C2=A0 mender_artifact: v4.0.0.0_e320<br>| =C2=A0 | =C2=A0 mpm_sw_ver=
sion: 4.0.0.0-g90ce6062<br>| =C2=A0 | =C2=A0 pid: 58144<br>| =C2=A0 | =C2=
=A0 product: e320<br>| =C2=A0 | =C2=A0 rev: 5<br>| =C2=A0 | =C2=A0 rpc_conn=
ection: remote<br>| =C2=A0 | =C2=A0 serial: 31DFBB7<br>| =C2=A0 | =C2=A0 ty=
pe: e3xx<br>| =C2=A0 | =C2=A0 MPM Version: 3.0<br>| =C2=A0 | =C2=A0 FPGA Ve=
rsion: 6.0<br>| =C2=A0 | =C2=A0 FPGA git hash: 90ce606.dirty<br>| =C2=A0 | =
=C2=A0 <br>| =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo<=
br>| =C2=A0 | =C2=A0 Clock sources: external, internal, gpsdo<br>| =C2=A0 |=
 =C2=A0 Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal, tem=
p_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, gps_t=
ime, gps_tpv<br>| =C2=A0 =C2=A0 ___________________________________________=
__________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blo=
cks on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/DDC#0<br=
>| =C2=A0 | =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0/DmaFIFO#0<br>| =C2=A0=
 | =C2=A0 * 0/FFT#0<br>| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 *=
 0/SplitStream#0<br>| =C2=A0 =C2=A0 _______________________________________=
______________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Stati=
c connections on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * =
0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Ra=
dio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>| =C2=A0 |=
 =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=A0 * 0/SEP#1:0=3D=
=3D&gt;0/DUC#0:1<br>| =C2=A0 | =C2=A0 * 0/DUC#0:1=3D=3D&gt;0/Radio#0:1<br>|=
 =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/=
DDC#0:1=3D=3D&gt;0/SEP#1:0<br>| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DmaF=
IFO#0:0<br>| =C2=A0 | =C2=A0 * 0/DmaFIFO#0:0=3D=3D&gt;0/SEP#2:0<br>| =C2=A0=
 | =C2=A0 * 0/SEP#3:0=3D=3D&gt;0/DmaFIFO#0:1<br>| =C2=A0 | =C2=A0 * 0/DmaFI=
FO#0:1=3D=3D&gt;0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/FFT#0=
:0<br>| =C2=A0 | =C2=A0 * 0/FFT#0:0=3D=3D&gt;0/SEP#4:0<br><b>| =C2=A0 | =C2=
=A0 * 0/SEP#5:0=3D=3D&gt;0/SplitStream#0:0<br>| =C2=A0 | =C2=A0 * 0/SplitSt=
ream#0:0=3D=3D&gt;0/SEP#5:0</b><br>| =C2=A0 =C2=A0 ________________________=
_____________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 TX Dboard: dboard<br>| =C2=A0 | =C2=A0 =C2=A0 __________________=
___________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =
=C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0=
 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 =
| =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offs=
et: No<br>| =C2=A0 | =C2=A0 =C2=A0 ________________________________________=
_____________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 TX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq=
 range: 47.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA=
: 0.0 to 89.8 step 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20=
000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection=
 Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 =C2=
=A0 _____________________________________________________<br>| =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: dboard<br>| =C2=A0 | =C2=
=A0 =C2=A0 _____________________________________________________<br>| =C2=
=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Fronten=
d: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0=
 Antennas: RX2, TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6=
000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step =
1.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 4000000=
0.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 =C2=A0 ______=
_______________________________________________<br>| =C2=A0 | =C2=A0 =C2=A0=
/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>| =C2=A0 | =
=C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/=
RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz=
<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =
=C2=A0 Uses LO offset: No</i></div><div style=3D"margin-left:40px"><i><br><=
/i></div><div>I have a graph on GNURadio with the created block (attached),=
 but when I try to run it I have the following error:</div><div><br></div><=
div style=3D"margin-left:40px">Traceback (most recent call last):<br>=C2=A0=
 File &quot;QPSK_example.py&quot;, line 386, in &lt;module&gt;<br>=C2=A0 =
=C2=A0 main()<br>=C2=A0 File &quot;QPSK_example.py&quot;, line 362, in main=
<br>=C2=A0 =C2=A0 tb =3D top_block_cls()<br>=C2=A0 File &quot;QPSK_example.=
py&quot;, line 86, in __init__<br>=C2=A0 =C2=A0 self.splitting_splitstream_=
0 =3D splitting.splitstream(<br>=C2=A0 File &quot;/usr/local/lib/python3/di=
st-packages/splitting/splitting_swig.py&quot;, line 243, in make<br>=C2=A0 =
=C2=A0 return _splitting_swig.splitstream_make(graph, block_args, device_se=
lect, instance)<br>RuntimeError: Cannot find block!</div><div style=3D"marg=
in-left:40px"><br></div><div>I&#39;m not very familiar with swig so, is the=
re something I must add in the swig interface to have my block recognised b=
y GNURadio? Or is this error related to something else?=C2=A0 I&#39;d reall=
y appreciate any help on this.</div><div><br></div><div>Kind Regards,</div>=
<div><br></div><div>Maria.<br></div><div><br></div><div><br></div><div><div=
><br></div></div></div>
<div>&lt;gnu_graph.png&gt;</div><span>_____________________________________=
__________</span><br><span>USRP-users mailing list -- <a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a></=
span><br><span>To unsubscribe send an email to <a href=3D"mailto:usrp-users=
-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com<=
/a></span><br></div></blockquote></div></div></blockquote></div>

--000000000000bb7c6c05c39ae866--

--===============6331113379057182311==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6331113379057182311==--
