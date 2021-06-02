Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D16039895D
	for <lists+usrp-users@lfdr.de>; Wed,  2 Jun 2021 14:23:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 714353846E8
	for <lists+usrp-users@lfdr.de>; Wed,  2 Jun 2021 08:23:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="snsv4Skx";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id CA64C38407E
	for <usrp-users@lists.ettus.com>; Wed,  2 Jun 2021 08:22:36 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id k4so2134592qkd.0
        for <usrp-users@lists.ettus.com>; Wed, 02 Jun 2021 05:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=V3kAHFo2fYr2OmcxGnCZ3vkkoZ/nXfwXR3zTU0KviWQ=;
        b=snsv4SkxhquP+Ne/ctwAAEM61KSYGGi1dHKNvLoVqSm5S2dJqXLr21z52YoY7mzAFg
         98RarLr1yRAE5r/26FGOjCk5YuP7UuxrW0sQVoedBpeOP5wQ8Ewj7l6JEAAt1wqXxkmT
         m4rbPJNbVd1JYfxgmMYea007QRhKlaQx3ceDEVGK+O+iGN6ZwKyzwnl606snB3uOFA04
         gmTcFufl/a6eSM0OrLVHoTmVcP9z2dxtprrQpQ5ldVRDNxFejuXxizKTO+KDOv7Va4hy
         81ciq3ZT5Mo4mQ94hejsFnp85i+RbwJ9CNisz0fHjaNRho/Io3SRkD/FKtZFBkULLCSb
         UkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=V3kAHFo2fYr2OmcxGnCZ3vkkoZ/nXfwXR3zTU0KviWQ=;
        b=gV4ByvijDfFWfj7WxAF9Mjx3j2ULzwzedvxSxeHCg/SASp7q31Ljhg6CpLWTp+tLWa
         mcdNLTws+a7H8RQiX/eJZimi/mkVyJ4FSBl6z0Atv4kMbAtdXZl3YcudRj/YOSjCF3zD
         7MUh8HOxfp3Wy1fZhMMyjeI0kJBtQHUu01DaZYAJgSu4EgPqnueBNX3x322ERSFFgj5k
         wNh7ufzyK1QNwN/9NMMKyS73gp6Dpf4Fce/zZwBPpuJ7/GRsDY7AoNRTswiTYIbDwQus
         HVygO5MqFv3LUNPFAXgyRIZJoMpTTBoCqroyWcV6PZ9XMC9UFn4/SEHfhk5+78atceBx
         dNfA==
X-Gm-Message-State: AOAM532GfWoNAIk/TPaNU87oHQqggT5MB8FW/QmeCNoTdH8jA36ru2EX
	05lC70J+HrylhdFBdPn3HqGBSiNBTlo=
X-Google-Smtp-Source: ABdhPJzo61wBLEiH3ymcghczOVZLMTG/M/KUx+yj+/6Z1D3oIUeJav5QEy4aHnBYI2aLBZmFWq8pLw==
X-Received: by 2002:a37:602:: with SMTP id 2mr26165242qkg.456.1622636555835;
        Wed, 02 Jun 2021 05:22:35 -0700 (PDT)
Received: from ?IPv6:2600:380:196a:2509:3c9d:56ea:bdac:bee3? ([2600:380:196a:2509:3c9d:56ea:bdac:bee3])
        by smtp.gmail.com with ESMTPSA id p21sm6581633qkk.42.2021.06.02.05.22.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 05:22:35 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 2 Jun 2021 08:22:30 -0400
Message-Id: <EE0F84D9-3AC3-48B0-9386-F09E1F21B5C3@gmail.com>
References: <CAG16vQUPjMdBfwwEEMC05GFbbz8jancJzh=yrUWiD0HOY1cLnA@mail.gmail.com>
In-Reply-To: <CAG16vQUPjMdBfwwEEMC05GFbbz8jancJzh=yrUWiD0HOY1cLnA@mail.gmail.com>
To: =?utf-8?Q?Maria_Mu=C3=B1oz?= <mamuki92@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: BQXUFPIECGXYIYHAJA3J46I3VM2BRYDJ
X-Message-ID-Hash: BQXUFPIECGXYIYHAJA3J46I3VM2BRYDJ
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC OOT module not found in GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BQXUFPIECGXYIYHAJA3J46I3VM2BRYDJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3450111181997225137=="


--===============3450111181997225137==
Content-Type: multipart/alternative; boundary=Apple-Mail-D9AE529A-CF26-45C7-9B82-996FBB2B1FC6
Content-Transfer-Encoding: 7bit


--Apple-Mail-D9AE529A-CF26-45C7-9B82-996FBB2B1FC6
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It sounds like Neel Pandeya could jump on the forum and answer our questions=
 quickly as these are deeply RFNoC-centric.=20

I caught the same bug with the block naming being dissimilar and corrected i=
t to exact syntax.=20

At this point I=E2=80=99ve gotten the block to =E2=80=9Csort of=E2=80=9D wor=
k as well. I get U/L=E2=80=99s and the block doesn=E2=80=99t like the multip=
le streams. I believe that each of the outputs needs a streaming end point. S=
o SEP#5 would be in/out0, but SEP#6 would be out1. Wouldn=E2=80=99t that mak=
e more sense? The fosphor block has that configuration in my custom fosphor i=
mage.=20

<end transmission>

> On Jun 2, 2021, at 05:16, Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote:
>=20
> =EF=BB=BF
> Hi again,
>=20
> I still have the same error that I post before but I have made some tests.=

>=20
> First I test an OOT empty block created with rfnocmodtool (just loop back t=
he input to the output in the Verilog part as the tool does by default). Thi=
s block works (partially) in GNURadio (it gives recv timeouts but it doesn't=
 complain about no found block), so I think this is a specific problem with t=
he splitstream block.
>=20
> I have realized that the name of the block that "uhd_usrp_probe" recognize=
s doesn't match with the name I give to my OOT splitstream block. I have mad=
e 2 blocks, one named "splitstream" and another named "split". In both cases=
, "uhd_usrp_probe" says that the block is named "SplitStream". That makes me=
 think that "uhd_usrp_probe" is finding the UHD controller that is in the UH=
D repository and not the one created for my OOT block (in that case the name=
 would be a generic one, "block"). Why does this happen? I have only modifie=
d the Verilog part with the one that comes in UHD and I haven't found anythi=
ng related to the controller on it, so it does not make sense to me.
>=20
> Can be this related to the problem? I have also tried to change the ID of t=
he block but this still doesn't work. Any new ideas on your side Paul? Someo=
ne can help us?
>=20
> Kind Regards,
>=20
> Maria
>=20
>> El lun, 31 may 2021 a las 9:09, Maria Mu=C3=B1oz (<mamuki92@gmail.com>) e=
scribi=C3=B3:
>> Oh! I hope someone can tell us what might be wrong with the block. Have y=
ou got another OOT block working created with rfnocmodtool? Just to discard t=
he tool as the problem.
>> If I figure out something new I'll tell you.
>>=20
>> Kind regards,
>> Maria
>>=20
>>> El vie, 28 may 2021 a las 15:02, Paul Atreides (<maud.dib1984@gmail.com>=
) escribi=C3=B3:
>>> I second this. I=E2=80=99m having almost the exact same issue with split=
 stream.=20
>>> Mine returns attribute error no module found, but as shown in Maria=E2=80=
=99s post, it=E2=80=99s displayed fine in grc and the image.=20
>>>=20
>>> <end transmission>
>>>=20
>>>>> On May 28, 2021, at 04:45, Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote=
:
>>>>>=20
>>>> =EF=BB=BF
>>>> Hi all,
>>>>=20
>>>> I'=E1=B8=BF trying to instance in my GNURadio graph the splitstream rfn=
oc block. I'm using RFNoC 4.0, GNURadio3.8 and gr-ettus master branch.
>>>>=20
>>>> This block has all the UHD driver and verilog code in the UHD repositor=
y (under "~/rfnoc/src/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_split_stre=
am", "/rfnoc/src/uhd/host/lib/rfnoc" and "/rfnoc/src/uhd/host/include/uhd/rf=
noc), but it is not included in gr-ettus/gnuradio, so I try to create an OOT=
 module using this code to use the block on GNURadio.
>>>>=20
>>>> I have successfully created the module with rfnocmodtool, adapted the v=
erilog, c++ and yml files and compiled and installed the block. I have gener=
ated an image using the block and uhd_usrp_probe seems to recognise the bloc=
k:
>>>>=20
>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.HEAD=
-0-g90ce6062
>>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.1.15,type=3De3xx,product=3De320,serial=3D31DFBB7,claimed=3DFalse,=
addr=3D192.168.10.2
>>>> [INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D=
192.168.1.15,product=3De320'.
>>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...=20
>>>> [INFO] [0/Radio#0] CODEC loopback test passed
>>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...=20
>>>> [INFO] [0/Radio#0] CODEC loopback test passed
>>>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB=
/s)
>>>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB=
/s)
>>>>   _____________________________________________________
>>>>  /
>>>> |       Device: E300-Series Device
>>>> |     _____________________________________________________
>>>> |    /
>>>> |   |       Mboard: ni-e320-31DFBB7
>>>> |   |   eeprom_version: 3
>>>> |   |   fs_version: 20200914014807
>>>> |   |   mender_artifact: v4.0.0.0_e320
>>>> |   |   mpm_sw_version: 4.0.0.0-g90ce6062
>>>> |   |   pid: 58144
>>>> |   |   product: e320
>>>> |   |   rev: 5
>>>> |   |   rpc_connection: remote
>>>> |   |   serial: 31DFBB7
>>>> |   |   type: e3xx
>>>> |   |   MPM Version: 3.0
>>>> |   |   FPGA Version: 6.0
>>>> |   |   FPGA git hash: 90ce606.dirty
>>>> |   |  =20
>>>> |   |   Time sources:  internal, external, gpsdo
>>>> |   |   Clock sources: external, internal, gpsdo
>>>> |   |   Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal,=
 temp_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, gp=
s_time, gps_tpv
>>>> |     _____________________________________________________
>>>> |    /
>>>> |   |       RFNoC blocks on this device:
>>>> |   |  =20
>>>> |   |   * 0/DDC#0
>>>> |   |   * 0/DUC#0
>>>> |   |   * 0/DmaFIFO#0
>>>> |   |   * 0/FFT#0
>>>> |   |   * 0/Radio#0
>>>> |   |   * 0/SplitStream#0
>>>> |     _____________________________________________________
>>>> |    /
>>>> |   |       Static connections on this device:
>>>> |   |  =20
>>>> |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
>>>> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
>>>> |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
>>>> |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
>>>> |   |   * 0/SEP#1:0=3D=3D>0/DUC#0:1
>>>> |   |   * 0/DUC#0:1=3D=3D>0/Radio#0:1
>>>> |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
>>>> |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
>>>> |   |   * 0/SEP#2:0=3D=3D>0/DmaFIFO#0:0
>>>> |   |   * 0/DmaFIFO#0:0=3D=3D>0/SEP#2:0
>>>> |   |   * 0/SEP#3:0=3D=3D>0/DmaFIFO#0:1
>>>> |   |   * 0/DmaFIFO#0:1=3D=3D>0/SEP#3:0
>>>> |   |   * 0/SEP#4:0=3D=3D>0/FFT#0:0
>>>> |   |   * 0/FFT#0:0=3D=3D>0/SEP#4:0
>>>> |   |   * 0/SEP#5:0=3D=3D>0/SplitStream#0:0
>>>> |   |   * 0/SplitStream#0:0=3D=3D>0/SEP#5:0
>>>> |     _____________________________________________________
>>>> |    /
>>>> |   |       TX Dboard: dboard
>>>> |   |     _____________________________________________________
>>>> |   |    /
>>>> |   |   |       TX Frontend: 0
>>>> |   |   |   Name: E3xx
>>>> |   |   |   Antennas: TX/RX
>>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
>>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>> |   |   |   Connection Type: IQ
>>>> |   |   |   Uses LO offset: No
>>>> |   |     _____________________________________________________
>>>> |   |    /
>>>> |   |   |       TX Frontend: 1
>>>> |   |   |   Name: E3xx
>>>> |   |   |   Antennas: TX/RX
>>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
>>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>> |   |   |   Connection Type: IQ
>>>> |   |   |   Uses LO offset: No
>>>> |     _____________________________________________________
>>>> |    /
>>>> |   |       RX Dboard: dboard
>>>> |   |     _____________________________________________________
>>>> |   |    /
>>>> |   |   |       RX Frontend: 0
>>>> |   |   |   Name: E3xx
>>>> |   |   |   Antennas: RX2, TX/RX
>>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
>>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>> |   |   |   Connection Type: IQ
>>>> |   |   |   Uses LO offset: No
>>>> |   |     _____________________________________________________
>>>> |   |    /
>>>> |   |   |       RX Frontend: 1
>>>> |   |   |   Name: E3xx
>>>> |   |   |   Antennas: RX2, TX/RX
>>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
>>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>> |   |   |   Connection Type: IQ
>>>> |   |   |   Uses LO offset: No
>>>>=20
>>>> I have a graph on GNURadio with the created block (attached), but when I=
 try to run it I have the following error:
>>>>=20
>>>> Traceback (most recent call last):
>>>>   File "QPSK_example.py", line 386, in <module>
>>>>     main()
>>>>   File "QPSK_example.py", line 362, in main
>>>>     tb =3D top_block_cls()
>>>>   File "QPSK_example.py", line 86, in __init__
>>>>     self.splitting_splitstream_0 =3D splitting.splitstream(
>>>>   File "/usr/local/lib/python3/dist-packages/splitting/splitting_swig.p=
y", line 243, in make
>>>>     return _splitting_swig.splitstream_make(graph, block_args, device_s=
elect, instance)
>>>> RuntimeError: Cannot find block!
>>>>=20
>>>> I'm not very familiar with swig so, is there something I must add in th=
e swig interface to have my block recognised by GNURadio? Or is this error r=
elated to something else?  I'd really appreciate any help on this.
>>>>=20
>>>> Kind Regards,
>>>>=20
>>>> Maria.
>>>>=20
>>>>=20
>>>>=20
>>>> <gnu_graph.png>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-D9AE529A-CF26-45C7-9B82-996FBB2B1FC6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It sounds like Neel Pandeya could jump on t=
he forum and answer our questions quickly as these are deeply RFNoC-centric.=
&nbsp;<br><br>I caught the same bug with the block naming being dissimilar a=
nd corrected it to exact syntax.&nbsp;<br><div><br>At this point I=E2=80=99v=
e gotten the block to =E2=80=9Csort of=E2=80=9D work as well. I get U/L=E2=80=
=99s and the block doesn=E2=80=99t like the multiple streams. I believe that=
 each of the outputs needs a streaming end point. So SEP#5 would be in/out0,=
 but SEP#6 would be out1. Wouldn=E2=80=99t that make more sense? The fosphor=
 block has that configuration in my custom fosphor image.&nbsp;<br><br><div d=
ir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-highlig=
ht-color: rgba(26, 26, 26, 0.296875); -webkit-composition-fill-color: rgba(1=
75, 192, 227, 0.230469); -webkit-composition-frame-color: rgba(77, 128, 180,=
 0.230469); ">end transmission&gt;</span></div><div dir=3D"ltr"><br><blockqu=
ote type=3D"cite">On Jun 2, 2021, at 05:16, Maria Mu=C3=B1oz &lt;mamuki92@gm=
ail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi again,<div><br></div><div>I still ha=
ve the same error that I post before but I have made some tests.</div><div><=
br></div><div>First I test an OOT empty block created with rfnocmodtool (jus=
t loop back the input to the output in the Verilog part as the tool does by d=
efault). This block works (partially) in GNURadio (it gives recv timeouts bu=
t it doesn't complain about no found block), so I think this is a specific p=
roblem with the splitstream block.</div><div><br></div><div>I have realized t=
hat the name of the block that "uhd_usrp_probe" recognizes doesn't match wit=
h the name I give to my OOT splitstream block. I have made 2 blocks, one nam=
ed "splitstream" and another named "split". In both cases, "uhd_usrp_probe" s=
ays that the block is named "SplitStream". That makes me think that "uhd_usr=
p_probe" is finding the UHD controller that is in the UHD repository&nbsp;an=
d not the one created for my OOT block (in that case the name would be a gen=
eric one, "block"). Why does this happen? I have only modified&nbsp;the Veri=
log part with the one that comes in UHD and I haven't found anything related=
 to the controller on it, so it does not make sense to me.</div><div><br></d=
iv><div>Can be this related to the problem? I have also tried to change the I=
D of the block but this still doesn't work. Any new ideas on your side Paul?=
 Someone can help us?</div><div><br></div><div>Kind Regards,</div><div><br><=
/div><div>Maria</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">El lun, 31 may 2021 a las 9:09, Maria Mu=C3=B1oz (&lt;<a=
 href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt;) escribi=C3=B3=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Oh! I hope someone can tell us what might be wrong with the block. Have you=
 got another OOT block working created&nbsp;with&nbsp;rfnocmodtool? Just to d=
iscard the tool as the problem.<div>If I figure out something new I'll tell y=
ou.</div><div><br></div><div>Kind regards,</div><div>Maria</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El vie, 28 ma=
y 2021 a las 15:02, Paul Atreides (&lt;<a href=3D"mailto:maud.dib1984@gmail.=
com" target=3D"_blank">maud.dib1984@gmail.com</a>&gt;) escribi=C3=B3:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">I seco=
nd this. I=E2=80=99m having almost the exact same issue with split stream.&n=
bsp;<div>Mine returns attribute error no module found, but as shown in Maria=
=E2=80=99s post, it=E2=80=99s displayed fine in grc and the image.&nbsp;<br>=
<br><div dir=3D"ltr">&lt;<span>end transmission&gt;</span></div><div dir=3D"=
ltr"><br><blockquote type=3D"cite">On May 28, 2021, at 04:45, Maria Mu=C3=B1=
oz &lt;<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmai=
l.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Hi all,</div><div><br></div><di=
v>I'=E1=B8=BF trying to instance in my GNURadio graph the splitstream rfnoc b=
lock. I'm using RFNoC 4.0, GNURadio3.8 and gr-ettus master branch.</div><div=
><br></div><div>This block has all the UHD driver and verilog code in the UH=
D repository (under "~/rfnoc/src/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block=
_split_stream", "/rfnoc/src/uhd/host/lib/rfnoc" and "/rfnoc/src/uhd/host/inc=
lude/uhd/rfnoc), but it is not included in gr-ettus/gnuradio, so I try to cr=
eate an OOT module using this code to use the block on GNURadio.</div><div><=
br></div><div>I have successfully created the module with rfnocmodtool, adap=
ted the verilog, c++ and yml files and compiled and installed the block. I h=
ave generated an image using the block and uhd_usrp_probe seems to recognise=
 the block:</div><div><br></div><div style=3D"margin-left:40px"><i>[INFO] [U=
HD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.HEAD-0-g90ce6062<b=
r>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.1.15,type=3De3xx,product=3De320,serial=3D31DFBB7,claimed=3DFalse,add=
r=3D192.168.10.2<br>[INFO] [MPM.PeriphManager] init() called with device arg=
s `mgmt_addr=3D192.168.1.15,product=3De320'.<br>[INFO] [0/Radio#0] Performin=
g CODEC loopback test on channel 0 ... <br>[INFO] [0/Radio#0] CODEC loopback=
 test passed<br>[INFO] [0/Radio#0] Performing CODEC loopback test on channel=
 1 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>[INFO] [0/DmaFIFO=
#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<br>[INFO] [0/DmaFI=
FO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<br>&nbsp; ______=
_______________________________________________<br>&nbsp;/<br>| &nbsp; &nbsp=
; &nbsp; Device: E300-Series Device<br>| &nbsp; &nbsp; _____________________=
________________________________<br>| &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; &n=
bsp; &nbsp; Mboard: ni-e320-31DFBB7<br>| &nbsp; | &nbsp; eeprom_version: 3<b=
r>| &nbsp; | &nbsp; fs_version: 20200914014807<br>| &nbsp; | &nbsp; mender_a=
rtifact: v4.0.0.0_e320<br>| &nbsp; | &nbsp; mpm_sw_version: 4.0.0.0-g90ce606=
2<br>| &nbsp; | &nbsp; pid: 58144<br>| &nbsp; | &nbsp; product: e320<br>| &n=
bsp; | &nbsp; rev: 5<br>| &nbsp; | &nbsp; rpc_connection: remote<br>| &nbsp;=
 | &nbsp; serial: 31DFBB7<br>| &nbsp; | &nbsp; type: e3xx<br>| &nbsp; | &nbs=
p; MPM Version: 3.0<br>| &nbsp; | &nbsp; FPGA Version: 6.0<br>| &nbsp; | &nb=
sp; FPGA git hash: 90ce606.dirty<br>| &nbsp; | &nbsp; <br>| &nbsp; | &nbsp; T=
ime sources: &nbsp;internal, external, gpsdo<br>| &nbsp; | &nbsp; Clock sour=
ces: external, internal, gpsdo<br>| &nbsp; | &nbsp; Sensors: ref_locked, gps=
_locked, fan, temp_fpga, temp_internal, temp_rf_channelA, temp_rf_channelB, t=
emp_main_power, gps_gpgga, gps_sky, gps_time, gps_tpv<br>| &nbsp; &nbsp; ___=
__________________________________________________<br>| &nbsp; &nbsp;/<br>| &=
nbsp; | &nbsp; &nbsp; &nbsp; RFNoC blocks on this device:<br>| &nbsp; | &nbs=
p; <br>| &nbsp; | &nbsp; * 0/DDC#0<br>| &nbsp; | &nbsp; * 0/DUC#0<br>| &nbsp=
; | &nbsp; * 0/DmaFIFO#0<br>| &nbsp; | &nbsp; * 0/FFT#0<br>| &nbsp; | &nbsp;=
 * 0/Radio#0<br>| &nbsp; | &nbsp; * 0/SplitStream#0<br>| &nbsp; &nbsp; _____=
________________________________________________<br>| &nbsp; &nbsp;/<br>| &n=
bsp; | &nbsp; &nbsp; &nbsp; Static connections on this device:<br>| &nbsp; |=
 &nbsp; <br>| &nbsp; | &nbsp; * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| &nbsp; | &=
nbsp; * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>| &nbsp; | &nbsp; * 0/Radio#0:0=3D=
=3D&gt;0/DDC#0:0<br>| &nbsp; | &nbsp; * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| &n=
bsp; | &nbsp; * 0/SEP#1:0=3D=3D&gt;0/DUC#0:1<br>| &nbsp; | &nbsp; * 0/DUC#0:=
1=3D=3D&gt;0/Radio#0:1<br>| &nbsp; | &nbsp; * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1=
<br>| &nbsp; | &nbsp; * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>| &nbsp; | &nbsp; * 0=
/SEP#2:0=3D=3D&gt;0/DmaFIFO#0:0<br>| &nbsp; | &nbsp; * 0/DmaFIFO#0:0=3D=3D&g=
t;0/SEP#2:0<br>| &nbsp; | &nbsp; * 0/SEP#3:0=3D=3D&gt;0/DmaFIFO#0:1<br>| &nb=
sp; | &nbsp; * 0/DmaFIFO#0:1=3D=3D&gt;0/SEP#3:0<br>| &nbsp; | &nbsp; * 0/SEP=
#4:0=3D=3D&gt;0/FFT#0:0<br>| &nbsp; | &nbsp; * 0/FFT#0:0=3D=3D&gt;0/SEP#4:0<=
br><b>| &nbsp; | &nbsp; * 0/SEP#5:0=3D=3D&gt;0/SplitStream#0:0<br>| &nbsp; |=
 &nbsp; * 0/SplitStream#0:0=3D=3D&gt;0/SEP#5:0</b><br>| &nbsp; &nbsp; ______=
_______________________________________________<br>| &nbsp; &nbsp;/<br>| &nb=
sp; | &nbsp; &nbsp; &nbsp; TX Dboard: dboard<br>| &nbsp; | &nbsp; &nbsp; ___=
__________________________________________________<br>| &nbsp; | &nbsp; &nbs=
p;/<br>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 0<br>| &nbsp; |=
 &nbsp; | &nbsp; Name: E3xx<br>| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX<br=
>| &nbsp; | &nbsp; | &nbsp; Freq range: 47.000 to 6000.000 MHz<br>| &nbsp; |=
 &nbsp; | &nbsp; Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>| &nbsp; | &nbsp=
; | &nbsp; Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| &nbsp;=
 | &nbsp; | &nbsp; Connection Type: IQ<br>| &nbsp; | &nbsp; | &nbsp; Uses LO=
 offset: No<br>| &nbsp; | &nbsp; &nbsp; ____________________________________=
_________________<br>| &nbsp; | &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; | &nbsp;=
 &nbsp; &nbsp; TX Frontend: 1<br>| &nbsp; | &nbsp; | &nbsp; Name: E3xx<br>| &=
nbsp; | &nbsp; | &nbsp; Antennas: TX/RX<br>| &nbsp; | &nbsp; | &nbsp; Freq r=
ange: 47.000 to 6000.000 MHz<br>| &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0=
.0 to 89.8 step 0.2 dB<br>| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 200000=
00.0 to 40000000.0 step 0.0 Hz<br>| &nbsp; | &nbsp; | &nbsp; Connection Type=
: IQ<br>| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<br>| &nbsp; &nbsp; ___=
__________________________________________________<br>| &nbsp; &nbsp;/<br>| &=
nbsp; | &nbsp; &nbsp; &nbsp; RX Dboard: dboard<br>| &nbsp; | &nbsp; &nbsp; _=
____________________________________________________<br>| &nbsp; | &nbsp; &n=
bsp;/<br>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 0<br>| &nbsp;=
 | &nbsp; | &nbsp; Name: E3xx<br>| &nbsp; | &nbsp; | &nbsp; Antennas: RX2, T=
X/RX<br>| &nbsp; | &nbsp; | &nbsp; Freq range: 70.000 to 6000.000 MHz<br>| &=
nbsp; | &nbsp; | &nbsp; Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>| &nbsp; |=
 &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| &=
nbsp; | &nbsp; | &nbsp; Connection Type: IQ<br>| &nbsp; | &nbsp; | &nbsp; Us=
es LO offset: No<br>| &nbsp; | &nbsp; &nbsp; _______________________________=
______________________<br>| &nbsp; | &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; | &=
nbsp; &nbsp; &nbsp; RX Frontend: 1<br>| &nbsp; | &nbsp; | &nbsp; Name: E3xx<=
br>| &nbsp; | &nbsp; | &nbsp; Antennas: RX2, TX/RX<br>| &nbsp; | &nbsp; | &n=
bsp; Freq range: 70.000 to 6000.000 MHz<br>| &nbsp; | &nbsp; | &nbsp; Gain r=
ange PGA: 0.0 to 76.0 step 1.0 dB<br>| &nbsp; | &nbsp; | &nbsp; Bandwidth ra=
nge: 20000000.0 to 40000000.0 step 0.0 Hz<br>| &nbsp; | &nbsp; | &nbsp; Conn=
ection Type: IQ<br>| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</i></div><d=
iv style=3D"margin-left:40px"><i><br></i></div><div>I have a graph on GNURad=
io with the created block (attached), but when I try to run it I have the fo=
llowing error:</div><div><br></div><div style=3D"margin-left:40px">Traceback=
 (most recent call last):<br>&nbsp; File "QPSK_example.py", line 386, in &lt=
;module&gt;<br>&nbsp; &nbsp; main()<br>&nbsp; File "QPSK_example.py", line 3=
62, in main<br>&nbsp; &nbsp; tb =3D top_block_cls()<br>&nbsp; File "QPSK_exa=
mple.py", line 86, in __init__<br>&nbsp; &nbsp; self.splitting_splitstream_0=
 =3D splitting.splitstream(<br>&nbsp; File "/usr/local/lib/python3/dist-pack=
ages/splitting/splitting_swig.py", line 243, in make<br>&nbsp; &nbsp; return=
 _splitting_swig.splitstream_make(graph, block_args, device_select, instance=
)<br>RuntimeError: Cannot find block!</div><div style=3D"margin-left:40px"><=
br></div><div>I'm not very familiar with swig so, is there something I must a=
dd in the swig interface to have my block recognised by GNURadio? Or is this=
 error related to something else?&nbsp; I'd really appreciate any help on th=
is.</div><div><br></div><div>Kind Regards,</div><div><br></div><div>Maria.<b=
r></div><div><br></div><div><br></div><div><div><br></div></div></div>
<div>&lt;gnu_graph.png&gt;</div><span>______________________________________=
_________</span><br><span>USRP-users mailing list -- <a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a></spa=
n><br><span>To unsubscribe send an email to <a href=3D"mailto:usrp-users-lea=
ve@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a></=
span><br></div></blockquote></div></div></blockquote></div>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-D9AE529A-CF26-45C7-9B82-996FBB2B1FC6--

--===============3450111181997225137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3450111181997225137==--
