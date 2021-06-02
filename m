Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C52839851B
	for <lists+usrp-users@lfdr.de>; Wed,  2 Jun 2021 11:17:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE68E3844FA
	for <lists+usrp-users@lfdr.de>; Wed,  2 Jun 2021 05:17:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OVk5ZlfB";
	dkim-atps=neutral
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id EC4CA3800B7
	for <usrp-users@lists.ettus.com>; Wed,  2 Jun 2021 05:16:41 -0400 (EDT)
Received: by mail-ed1-f47.google.com with SMTP id i13so2037184edb.9
        for <usrp-users@lists.ettus.com>; Wed, 02 Jun 2021 02:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z51ljXPh+yB4gtk78Ub5cdyTHzSYl5s+DFOdYMvU5to=;
        b=OVk5ZlfBwQtTB7UaH4oJqD73V4O4bUTAg+FWghU69WNpfW7g0bvzEJUt6BLRHaX+e5
         o3zGsqqzaUGeMgCuuI/DYL3KqFK2C/ZInCRMynT1fvUS91GnQ0sFMH3NRtiDDONI8BIG
         nc3klVZWfSAvhXhOUeBHIadu6YgvWqfrtmDie8HUTnPY/ydDPksqLXyXiMkKULTHX0HQ
         JTvCJ/p4ccF1eBWLBFWJ5JMIoDqXVXqzg2O7XVleKwUrTonPmQg3IRusxd/cwCd4mfoo
         LugNk9FTk916pyVDaVoknHwI7sy9WwhsUsYBLOZESHQor0mbo55r2TxEAzHqWAASUhec
         jplA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z51ljXPh+yB4gtk78Ub5cdyTHzSYl5s+DFOdYMvU5to=;
        b=JPFz/A4qBauRrdQAqvqPhkLHaB4dCkYIxmT4CpypQPYjQG4ZidHtD5rC32UD1bB+uN
         n/cDgk/As5CSP32ZaJnFtkAjD1nQozo3nq4fWnxmK5YAagjIXkknjLeriOyi0sA0wMTX
         dUX9VGR84sorMP60X1l13yKnOm2tGUuxPHhUgJFQG1z95pGZCl/wfykp/UQOWQ+EfNFE
         c60K0CsoAmdbuw6uLxUxVclxvs8JSYmBOu7xXW1jGHCIJKmJbAsK/MbpBCNzQSBCmq/b
         xYIe/46dHtIZxzV05P7B7HvLZuRVG83CfpVvjZes43G5+sVi1il2GbLSrwOP152E5o18
         GylQ==
X-Gm-Message-State: AOAM530G3CMA7pjW8rPORWzH1a4ReLahIzh3/O4+6pd5NjcTA8CGLBM7
	LnhOzokR0WXIVE2RALFsD/ftaKXa7WVQhDQIny0=
X-Google-Smtp-Source: ABdhPJxp/tbKQJdOV69gdK93a8nQ3Qhdjul2IjZGJ6y8K857E+l/9N85rKasRdf6lM+5Zolr0ThiejX4wQY9o0C7E34=
X-Received: by 2002:aa7:c042:: with SMTP id k2mr28232719edo.21.1622625400789;
 Wed, 02 Jun 2021 02:16:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQWBW6XXVDuQiV22H0K=P4Dk3MPGBxPgF=QfTp3Nwt+nPA@mail.gmail.com>
 <FC90E19B-7DC1-4400-91F5-219DD0BA4D87@gmail.com> <CAG16vQXYNfyxWmzBLzOGcWg_ZtaHXA1H5qhpti0=vQxE930XJQ@mail.gmail.com>
In-Reply-To: <CAG16vQXYNfyxWmzBLzOGcWg_ZtaHXA1H5qhpti0=vQxE930XJQ@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Wed, 2 Jun 2021 11:16:29 +0200
Message-ID: <CAG16vQUPjMdBfwwEEMC05GFbbz8jancJzh=yrUWiD0HOY1cLnA@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: AYOEIDYG7CJJYRYIIRRX35POJL5XCNRZ
X-Message-ID-Hash: AYOEIDYG7CJJYRYIIRRX35POJL5XCNRZ
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC OOT module not found in GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AYOEIDYG7CJJYRYIIRRX35POJL5XCNRZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0360214507691265122=="

--===============0360214507691265122==
Content-Type: multipart/alternative; boundary="0000000000009e1e5905c3c4ea15"

--0000000000009e1e5905c3c4ea15
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

I still have the same error that I post before but I have made some tests.

First I test an OOT empty block created with rfnocmodtool (just loop back
the input to the output in the Verilog part as the tool does by default).
This block works (partially) in GNURadio (it gives recv timeouts but it
doesn't complain about no found block), so I think this is a specific
problem with the splitstream block.

I have realized that the name of the block that "uhd_usrp_probe" recognizes
doesn't match with the name I give to my OOT splitstream block. I have made
2 blocks, one named "splitstream" and another named "split". In both cases,
"uhd_usrp_probe" says that the block is named "SplitStream". That makes me
think that "uhd_usrp_probe" is finding the UHD controller that is in the
UHD repository and not the one created for my OOT block (in that case the
name would be a generic one, "block"). Why does this happen? I have only
modified the Verilog part with the one that comes in UHD and I haven't
found anything related to the controller on it, so it does not make sense
to me.

Can be this related to the problem? I have also tried to change the ID of
the block but this still doesn't work. Any new ideas on your side Paul?
Someone can help us?

Kind Regards,

Maria

El lun, 31 may 2021 a las 9:09, Maria Mu=C3=B1oz (<mamuki92@gmail.com>) esc=
ribi=C3=B3:

> Oh! I hope someone can tell us what might be wrong with the block. Have
> you got another OOT block working created with rfnocmodtool? Just to
> discard the tool as the problem.
> If I figure out something new I'll tell you.
>
> Kind regards,
> Maria
>
> El vie, 28 may 2021 a las 15:02, Paul Atreides (<maud.dib1984@gmail.com>)
> escribi=C3=B3:
>
>> I second this. I=E2=80=99m having almost the exact same issue with split=
 stream.
>> Mine returns attribute error no module found, but as shown in Maria=E2=
=80=99s
>> post, it=E2=80=99s displayed fine in grc and the image.
>>
>> <end transmission>
>>
>> On May 28, 2021, at 04:45, Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote:
>>
>> =EF=BB=BF
>> Hi all,
>>
>> I'=E1=B8=BF trying to instance in my GNURadio graph the splitstream rfno=
c block.
>> I'm using RFNoC 4.0, GNURadio3.8 and gr-ettus master branch.
>>
>> This block has all the UHD driver and verilog code in the UHD repository
>> (under
>> "~/rfnoc/src/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_split_stream",
>> "/rfnoc/src/uhd/host/lib/rfnoc" and
>> "/rfnoc/src/uhd/host/include/uhd/rfnoc), but it is not included in
>> gr-ettus/gnuradio, so I try to create an OOT module using this code to u=
se
>> the block on GNURadio.
>>
>> I have successfully created the module with rfnocmodtool, adapted the
>> verilog, c++ and yml files and compiled and installed the block. I have
>> generated an image using the block and uhd_usrp_probe seems to recognise
>> the block:
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>> UHD_4.0.0.HEAD-0-g90ce6062[INFO] [MPMD] Initializing 1 device(s) in
>> parallel with args:
>> mgmt_addr=3D192.168.1.15,type=3De3xx,product=3De320,serial=3D31DFBB7,cla=
imed=3DFalse,addr=3D192.168.10.2[INFO]
>> [MPM.PeriphManager] init() called with device args
>> `mgmt_addr=3D192.168.1.15,product=3De320'.[INFO] [0/Radio#0] Performing =
CODEC
>> loopback test on channel 0 ... [INFO] [0/Radio#0] CODEC loopback test
>> passed[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>> [INFO] [0/Radio#0] CODEC loopback test passed[INFO] [0/DmaFIFO#0] BIST
>> passed (Estimated Minimum Throughput: 1361 MB/s)[INFO] [0/DmaFIFO#0] BIS=
T
>> passed (Estimated Minimum Throughput: 1361 MB/s)
>> _____________________________________________________ /|       Device:
>> E300-Series Device|
>> _____________________________________________________|    /|   |
>> Mboard: ni-e320-31DFBB7|   |   eeprom_version: 3|   |   fs_version:
>> 20200914014807|   |   mender_artifact: v4.0.0.0_e320|   |   mpm_sw_versi=
on:
>> 4.0.0.0-g90ce6062|   |   pid: 58144|   |   product: e320|   |   rev: 5| =
  |
>>   rpc_connection: remote|   |   serial: 31DFBB7|   |   type: e3xx|   |
>> MPM Version: 3.0|   |   FPGA Version: 6.0|   |   FPGA git hash:
>> 90ce606.dirty|   |   |   |   Time sources:  internal, external, gpsdo|  =
 |
>>   Clock sources: external, internal, gpsdo|   |   Sensors: ref_locked,
>> gps_locked, fan, temp_fpga, temp_internal, temp_rf_channelA,
>> temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, gps_time, gps_tpv=
|
>>   _____________________________________________________|    /|   |
>> RFNoC blocks on this device:|   |   |   |   * 0/DDC#0|   |   * 0/DUC#0| =
  |
>>   * 0/DmaFIFO#0|   |   * 0/FFT#0|   |   * 0/Radio#0|   |   *
>> 0/SplitStream#0|     ___________________________________________________=
__|
>>    /|   |       Static connections on this device:|   |   |   |   *
>> 0/SEP#0:0=3D=3D>0/DUC#0:0|   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0|   |   *
>> 0/Radio#0:0=3D=3D>0/DDC#0:0|   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0|   |   *
>> 0/SEP#1:0=3D=3D>0/DUC#0:1|   |   * 0/DUC#0:1=3D=3D>0/Radio#0:1|   |   *
>> 0/Radio#0:1=3D=3D>0/DDC#0:1|   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0|   |   *
>> 0/SEP#2:0=3D=3D>0/DmaFIFO#0:0|   |   * 0/DmaFIFO#0:0=3D=3D>0/SEP#2:0|   =
|   *
>> 0/SEP#3:0=3D=3D>0/DmaFIFO#0:1|   |   * 0/DmaFIFO#0:1=3D=3D>0/SEP#3:0|   =
|   *
>> 0/SEP#4:0=3D=3D>0/FFT#0:0|   |   * 0/FFT#0:0=3D=3D>0/SEP#4:0|   |   *
>> 0/SEP#5:0=3D=3D>0/SplitStream#0:0|   |   * 0/SplitStream#0:0=3D=3D>0/SEP=
#5:0|
>> _____________________________________________________|    /|   |       T=
X
>> Dboard: dboard|   |
>> _____________________________________________________|   |    /|   |   |
>>     TX Frontend: 0|   |   |   Name: E3xx|   |   |   Antennas: TX/RX|   |
>> |   Freq range: 47.000 to 6000.000 MHz|   |   |   Gain range PGA: 0.0 to
>> 89.8 step 0.2 dB|   |   |   Bandwidth range: 20000000.0 to 40000000.0 st=
ep
>> 0.0 Hz|   |   |   Connection Type: IQ|   |   |   Uses LO offset: No|   |
>>   _____________________________________________________|   |    /|   |  =
 |
>>       TX Frontend: 1|   |   |   Name: E3xx|   |   |   Antennas: TX/RX|  =
 |
>>   |   Freq range: 47.000 to 6000.000 MHz|   |   |   Gain range PGA: 0.0 =
to
>> 89.8 step 0.2 dB|   |   |   Bandwidth range: 20000000.0 to 40000000.0 st=
ep
>> 0.0 Hz|   |   |   Connection Type: IQ|   |   |   Uses LO offset: No|
>> _____________________________________________________|    /|   |       R=
X
>> Dboard: dboard|   |
>> _____________________________________________________|   |    /|   |   |
>>     RX Frontend: 0|   |   |   Name: E3xx|   |   |   Antennas: RX2, TX/RX=
|
>> |   |   Freq range: 70.000 to 6000.000 MHz|   |   |   Gain range PGA: 0.=
0
>> to 76.0 step 1.0 dB|   |   |   Bandwidth range: 20000000.0 to 40000000.0
>> step 0.0 Hz|   |   |   Connection Type: IQ|   |   |   Uses LO offset: No=
|
>> |     _____________________________________________________|   |    /|  =
 |
>>   |       RX Frontend: 1|   |   |   Name: E3xx|   |   |   Antennas: RX2,
>> TX/RX|   |   |   Freq range: 70.000 to 6000.000 MHz|   |   |   Gain rang=
e
>> PGA: 0.0 to 76.0 step 1.0 dB|   |   |   Bandwidth range: 20000000.0 to
>> 40000000.0 step 0.0 Hz|   |   |   Connection Type: IQ|   |   |   Uses LO
>> offset: No*
>>
>> I have a graph on GNURadio with the created block (attached), but when I
>> try to run it I have the following error:
>>
>> Traceback (most recent call last):
>>   File "QPSK_example.py", line 386, in <module>
>>     main()
>>   File "QPSK_example.py", line 362, in main
>>     tb =3D top_block_cls()
>>   File "QPSK_example.py", line 86, in __init__
>>     self.splitting_splitstream_0 =3D splitting.splitstream(
>>   File
>> "/usr/local/lib/python3/dist-packages/splitting/splitting_swig.py", line
>> 243, in make
>>     return _splitting_swig.splitstream_make(graph, block_args,
>> device_select, instance)
>> RuntimeError: Cannot find block!
>>
>> I'm not very familiar with swig so, is there something I must add in the
>> swig interface to have my block recognised by GNURadio? Or is this error
>> related to something else?  I'd really appreciate any help on this.
>>
>> Kind Regards,
>>
>> Maria.
>>
>>
>>
>> <gnu_graph.png>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>

--0000000000009e1e5905c3c4ea15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi again,<div><br></div><div>I still have the same error t=
hat I post before but I have made some tests.</div><div><br></div><div>Firs=
t I test an OOT empty block created with rfnocmodtool (just loop back the i=
nput to the output in the Verilog part as the tool does by default). This b=
lock works (partially) in GNURadio (it gives recv timeouts but it doesn&#39=
;t complain about no found block), so I think this is a specific problem wi=
th the splitstream block.</div><div><br></div><div>I have realized that the=
 name of the block that &quot;uhd_usrp_probe&quot; recognizes doesn&#39;t m=
atch with the name I give to my OOT splitstream block. I have made 2 blocks=
, one named &quot;splitstream&quot; and another named &quot;split&quot;. In=
 both cases, &quot;uhd_usrp_probe&quot; says that the block is named &quot;=
SplitStream&quot;. That makes me think that &quot;uhd_usrp_probe&quot; is f=
inding the UHD controller that is in the UHD repository=C2=A0and not the on=
e created for my OOT block (in that case the name would be a generic one, &=
quot;block&quot;). Why does this happen? I have only modified=C2=A0the Veri=
log part with the one that comes in UHD and I haven&#39;t found anything re=
lated to the controller on it, so it does not make sense to me.</div><div><=
br></div><div>Can be this related to the problem? I have also tried to chan=
ge the ID of the block but this still doesn&#39;t work. Any new ideas on yo=
ur side Paul? Someone can help us?</div><div><br></div><div>Kind Regards,</=
div><div><br></div><div>Maria</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">El lun, 31 may 2021 a las 9:09, Maria Mu=
=C3=B1oz (&lt;<a href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&=
gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">Oh! I hope someone can tell us what might be wrong wit=
h the block. Have you got another OOT block working created=C2=A0with=C2=A0=
rfnocmodtool? Just to discard the tool as the problem.<div>If I figure out =
something new I&#39;ll tell you.</div><div><br></div><div>Kind regards,</di=
v><div>Maria</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">El vie, 28 may 2021 a las 15:02, Paul Atreides (&lt;<a hr=
ef=3D"mailto:maud.dib1984@gmail.com" target=3D"_blank">maud.dib1984@gmail.c=
om</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">I second this. I=E2=80=99m having almost the e=
xact same issue with split stream.=C2=A0<div>Mine returns attribute error n=
o module found, but as shown in Maria=E2=80=99s post, it=E2=80=99s displaye=
d fine in grc and the image.=C2=A0<br><br><div dir=3D"ltr">&lt;<span>end tr=
ansmission&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">O=
n May 28, 2021, at 04:45, Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@g=
mail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br><br></bloc=
kquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=
=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#39;=E1=B8=BF trying to in=
stance in my GNURadio graph the splitstream rfnoc block. I&#39;m using RFNo=
C 4.0, GNURadio3.8 and gr-ettus master branch.</div><div><br></div><div>Thi=
s block has all the UHD driver and verilog code in the UHD repository (unde=
r &quot;~/rfnoc/src/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_split_strea=
m&quot;, &quot;/rfnoc/src/uhd/host/lib/rfnoc&quot; and &quot;/rfnoc/src/uhd=
/host/include/uhd/rfnoc), but it is not included in gr-ettus/gnuradio, so I=
 try to create an OOT module using this code to use the block on GNURadio.<=
/div><div><br></div><div>I have successfully created the module with rfnocm=
odtool, adapted the verilog, c++ and yml files and compiled and installed t=
he block. I have generated an image using the block and uhd_usrp_probe seem=
s to recognise the block:</div><div><br></div><div style=3D"margin-left:40p=
x"><i>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.HE=
AD-0-g90ce6062<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with a=
rgs: mgmt_addr=3D192.168.1.15,type=3De3xx,product=3De320,serial=3D31DFBB7,c=
laimed=3DFalse,addr=3D192.168.10.2<br>[INFO] [MPM.PeriphManager] init() cal=
led with device args `mgmt_addr=3D192.168.1.15,product=3De320&#39;.<br>[INF=
O] [0/Radio#0] Performing CODEC loopback test on channel 0 ... <br>[INFO] [=
0/Radio#0] CODEC loopback test passed<br>[INFO] [0/Radio#0] Performing CODE=
C loopback test on channel 1 ... <br>[INFO] [0/Radio#0] CODEC loopback test=
 passed<br>[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: =
1361 MB/s)<br>[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughpu=
t: 1361 MB/s)<br>=C2=A0 ___________________________________________________=
__<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: E300-Series Device<br>| =C2=
=A0 =C2=A0 _____________________________________________________<br>| =C2=
=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-e320-31DFBB7<br>|=
 =C2=A0 | =C2=A0 eeprom_version: 3<br>| =C2=A0 | =C2=A0 fs_version: 2020091=
4014807<br>| =C2=A0 | =C2=A0 mender_artifact: v4.0.0.0_e320<br>| =C2=A0 | =
=C2=A0 mpm_sw_version: 4.0.0.0-g90ce6062<br>| =C2=A0 | =C2=A0 pid: 58144<br=
>| =C2=A0 | =C2=A0 product: e320<br>| =C2=A0 | =C2=A0 rev: 5<br>| =C2=A0 | =
=C2=A0 rpc_connection: remote<br>| =C2=A0 | =C2=A0 serial: 31DFBB7<br>| =C2=
=A0 | =C2=A0 type: e3xx<br>| =C2=A0 | =C2=A0 MPM Version: 3.0<br>| =C2=A0 |=
 =C2=A0 FPGA Version: 6.0<br>| =C2=A0 | =C2=A0 FPGA git hash: 90ce606.dirty=
<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 Time sources: =C2=A0internal, e=
xternal, gpsdo<br>| =C2=A0 | =C2=A0 Clock sources: external, internal, gpsd=
o<br>| =C2=A0 | =C2=A0 Sensors: ref_locked, gps_locked, fan, temp_fpga, tem=
p_internal, temp_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga,=
 gps_sky, gps_time, gps_tpv<br>| =C2=A0 =C2=A0 ____________________________=
_________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =
=C2=A0 RFNoC blocks on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=
=A0 * 0/DDC#0<br>| =C2=A0 | =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0/DmaFI=
FO#0<br>| =C2=A0 | =C2=A0 * 0/FFT#0<br>| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =
=C2=A0 | =C2=A0 * 0/SplitStream#0<br>| =C2=A0 =C2=A0 ______________________=
_______________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 Static connections on this device:<br>| =C2=A0 | =C2=A0 <br>|=
 =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DU=
C#0:0=3D=3D&gt;0/Radio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DD=
C#0:0<br>| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=
=A0 * 0/SEP#1:0=3D=3D&gt;0/DUC#0:1<br>| =C2=A0 | =C2=A0 * 0/DUC#0:1=3D=3D&g=
t;0/Radio#0:1<br>| =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>| =
=C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>| =C2=A0 | =C2=A0 * 0/SEP=
#2:0=3D=3D&gt;0/DmaFIFO#0:0<br>| =C2=A0 | =C2=A0 * 0/DmaFIFO#0:0=3D=3D&gt;0=
/SEP#2:0<br>| =C2=A0 | =C2=A0 * 0/SEP#3:0=3D=3D&gt;0/DmaFIFO#0:1<br>| =C2=
=A0 | =C2=A0 * 0/DmaFIFO#0:1=3D=3D&gt;0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SE=
P#4:0=3D=3D&gt;0/FFT#0:0<br>| =C2=A0 | =C2=A0 * 0/FFT#0:0=3D=3D&gt;0/SEP#4:=
0<br><b>| =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D&gt;0/SplitStream#0:0<br>| =C2=
=A0 | =C2=A0 * 0/SplitStream#0:0=3D=3D&gt;0/SEP#5:0</b><br>| =C2=A0 =C2=A0 =
_____________________________________________________<br>| =C2=A0 =C2=A0/<b=
r>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: dboard<br>| =C2=A0 | =C2=A0 =
=C2=A0 _____________________________________________________<br>| =C2=A0 | =
=C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 Anten=
nas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz=
<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0.=
0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0=
 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 =C2=A0 __________________=
___________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 1<br>| =C2=A0 | =C2=A0 | =
=C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0=
 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 =
| =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offs=
et: No<br>| =C2=A0 =C2=A0 _________________________________________________=
____<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: dboa=
rd<br>| =C2=A0 | =C2=A0 =C2=A0 ____________________________________________=
_________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0=
 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0=
 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq =
range: 70.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA:=
 0.0 to 76.0 step 1.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 200=
00000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection =
Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=
=A0 =C2=A0 _____________________________________________________<br>| =C2=
=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Fronten=
d: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0=
 Antennas: RX2, TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6=
000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step =
1.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 4000000=
0.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Uses LO offset: No</i></div><div style=3D"margin-left=
:40px"><i><br></i></div><div>I have a graph on GNURadio with the created bl=
ock (attached), but when I try to run it I have the following error:</div><=
div><br></div><div style=3D"margin-left:40px">Traceback (most recent call l=
ast):<br>=C2=A0 File &quot;QPSK_example.py&quot;, line 386, in &lt;module&g=
t;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;QPSK_example.py&quot;, line=
 362, in main<br>=C2=A0 =C2=A0 tb =3D top_block_cls()<br>=C2=A0 File &quot;=
QPSK_example.py&quot;, line 86, in __init__<br>=C2=A0 =C2=A0 self.splitting=
_splitstream_0 =3D splitting.splitstream(<br>=C2=A0 File &quot;/usr/local/l=
ib/python3/dist-packages/splitting/splitting_swig.py&quot;, line 243, in ma=
ke<br>=C2=A0 =C2=A0 return _splitting_swig.splitstream_make(graph, block_ar=
gs, device_select, instance)<br>RuntimeError: Cannot find block!</div><div =
style=3D"margin-left:40px"><br></div><div>I&#39;m not very familiar with sw=
ig so, is there something I must add in the swig interface to have my block=
 recognised by GNURadio? Or is this error related to something else?=C2=A0 =
I&#39;d really appreciate any help on this.</div><div><br></div><div>Kind R=
egards,</div><div><br></div><div>Maria.<br></div><div><br></div><div><br></=
div><div><div><br></div></div></div>
<div>&lt;gnu_graph.png&gt;</div><span>_____________________________________=
__________</span><br><span>USRP-users mailing list -- <a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a></=
span><br><span>To unsubscribe send an email to <a href=3D"mailto:usrp-users=
-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com<=
/a></span><br></div></blockquote></div></div></blockquote></div>
</blockquote></div>

--0000000000009e1e5905c3c4ea15--

--===============0360214507691265122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0360214507691265122==--
