Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE4E444486
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 16:18:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E723F3841B9
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 11:17:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Fz8ukJIt";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 048463834B2
	for <usrp-users@lists.ettus.com>; Wed,  3 Nov 2021 11:17:15 -0400 (EDT)
Received: by mail-qt1-f177.google.com with SMTP id d21so1134010qtw.11
        for <usrp-users@lists.ettus.com>; Wed, 03 Nov 2021 08:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=7sClLFV5HPklchXFA1zYnBHGMt+i/PiEun7I7n03Q8E=;
        b=Fz8ukJIt6l+GrwkR2Ws2sUKwYQIC/8eeXIT8o40rDCNrjKNHEnZ3EIkGOjmAEEFEZu
         SACskmzWBtzkeH1YwlNZd0a1uclDSC7rYRwab23yjvZaereXij++LGLH+hIc+x6YGRsT
         48jqsm2+OnW48XZ1E1x60SW2tm2VGwZkmGMGOGDWGv3IkIZ8CMMBKgRAsAB99DIRGKO3
         MuvLqt4nTPPDLjGKqyI0H774lHtl+lKbO6AnlYtiEpX6vYHQ2Kg3c8p+d6NArhjfyNwH
         8movUhbeyrQpYyxt9klg7GPbXO3V2izr16Wx0jNOT/hEJPKlRZenNknt0S0P3ltEH9E+
         wbHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=7sClLFV5HPklchXFA1zYnBHGMt+i/PiEun7I7n03Q8E=;
        b=qVQU79iUyr7wZNnxYSs+sz8nEFrMZ5pDL27X+JQVakAh2LpHsB6CkcSYQ+10Aguho/
         Z0LymkkOmOeAPuFJsh2CR+0lU9h/nPtsY5395ssH7fbdqlHPKHogIRRAaBGvJyTmXQIp
         kGt6e7T+BwdydaimAytaXT0jV8mHQpYSPIp/ACpaXiqHqGob696xHnfpPTsUq2E9Qwsq
         KYh7mkhTXLEltuGecURD9crnAowb0nuhcwGziHztblauo26nx1bTNmeByVw2xFkug/Q/
         rBuDiuJZG065BMhG0Hl3Vwxi+97QApg/rtshJGJm4dhbCXUbms5xtYFE5D9c9yUR4oGN
         YOAQ==
X-Gm-Message-State: AOAM530ivfo5Zhpu9lY8T+0Eo1eZfgbPXOnFStKdHib9End7yVp621Bz
	b3UafHXcvfkHp3/idF72XyqC38mzf0k=
X-Google-Smtp-Source: ABdhPJwnwRxDqq/2+yd9+7Bsqkcsm36Sqq9wVc/yeAo1vivhUUm4pVUN+vdAvjrl+8/UnBEINENYJw==
X-Received: by 2002:ac8:202:: with SMTP id k2mr47563391qtg.398.1635952635354;
        Wed, 03 Nov 2021 08:17:15 -0700 (PDT)
Received: from [192.168.2.248] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id ay12sm1750368qkb.35.2021.11.03.08.17.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Nov 2021 08:17:14 -0700 (PDT)
Message-ID: <e2beb7a3-ecd2-14a0-2368-b36ba852f125@gmail.com>
Date: Wed, 3 Nov 2021 11:17:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: Anabel Almodovar <anabel.almodovar@gmail.com>
References: <CAFPzw1nzRMv8TE646YevYzp_74m2yUPvaYBGFkbf6R6ms=Hgdg@mail.gmail.com>
 <16d36d0a-dc21-073c-e1d1-050998893b6c@gmail.com>
 <CAFPzw1maXKTKHiCWkCnAuS+gSttU5fM-hFumAZjYwmXvTrAHNg@mail.gmail.com>
 <744837fd-07f2-fe23-6db6-7083981e21cb@gmail.com>
 <CAFPzw1kVBK7s=EtZ5gsx=4ZRLedTagLMHB_+ccURRvYJtzDZow@mail.gmail.com>
 <a14e631c-338d-1d29-c905-51fff4584f5d@gmail.com>
 <CAFPzw1=msL8DRnJ52tPNyx6QqJxxU3MXTWsCSJbQ53ap2WxJ_g@mail.gmail.com>
 <a937c74e-a7a2-ac21-f0bb-2ce70661dff6@gmail.com>
 <CAFPzw1ky-RHs7kxDG-y1BKS9CwHHgpxeqK+=xDH5TkrUHLgnVA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFPzw1ky-RHs7kxDG-y1BKS9CwHHgpxeqK+=xDH5TkrUHLgnVA@mail.gmail.com>
Message-ID-Hash: F63NVYMKV5JPF66JYUOSQK5ASYVU2UTF
X-Message-ID-Hash: F63NVYMKV5JPF66JYUOSQK5ASYVU2UTF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F63NVYMKV5JPF66JYUOSQK5ASYVU2UTF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6481090888450932985=="

This is a multi-part message in MIME format.
--===============6481090888450932985==
Content-Type: multipart/alternative;
 boundary="------------BR0IVr0c3mmsgC09kw3IW6xb"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BR0IVr0c3mmsgC09kw3IW6xb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-03 03:04, Anabel Almodovar wrote:
> Thank you for your explanation.=C2=A0So is there any kind of solution f=
or=20
> my problem with GNU Radio?
>
> Thanks in=C2=A0advance.
> Regards,
> Anabel
I have suggested this in the past--look into using DPDK if you're=20
running at high sample rates over 10GiGe:

https://files.ettus.com/manual/page_dpdk.html

https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD


>
> El mi=C3=A9, 27 oct 2021 a las 17:48, Marcus D. Leech=20
> (<patchvonbraun@gmail.com>) escribi=C3=B3:
>
>     On 2021-10-27 11:37, Anabel Almodovar wrote:
>>     Hello,
>>
>>     When I run a benchmark_rate example it indicates that there are
>>     no sample losses even with 30s of acquisition.
>>     /*
>>     */
>>     /*rack_2021@rack-HP-Z4-G4-Workstation:~/workarea-uhd/uhd/host/exam=
ples/build$
>>     sudo ./benchmark_rate
>>     --args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff=
_size=3D900000000"
>>     --channels=3D"0,1" --rx_rate 200e6 --duration 30 --rx_subdev=3D"A:=
0 B:0"
>>
>>     [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>     UHD_4.1.0.HEAD-0-gd21735d5
>>     [00:00:00.000677] Creating the usrp device with:
>>     addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D90=
0000000...
>>     [INFO] [X300] X300 initialization sequence...
>>     [INFO] [X300] Maximum frame size: 8000 bytes.
>>     [INFO] [X300] Maximum frame size: 8000 bytes.
>>     [INFO] [X300] Radio 1x clock: 200 MHz
>>     Using Device: Single USRP:
>>     =C2=A0 Device: X-Series Device
>>     =C2=A0 Mboard 0: X310
>>     =C2=A0 RX Channel: 0
>>     =C2=A0 =C2=A0 RX DSP: 0
>>     =C2=A0 =C2=A0 RX Dboard: A
>>     =C2=A0 =C2=A0 RX Subdev: UBX RX
>>     =C2=A0 RX Channel: 1
>>     =C2=A0 =C2=A0 RX DSP: 1
>>     =C2=A0 =C2=A0 RX Dboard: B
>>     =C2=A0 =C2=A0 RX Subdev: UBX RX
>>     =C2=A0 TX Channel: 0
>>     =C2=A0 =C2=A0 TX DSP: 0
>>     =C2=A0 =C2=A0 TX Dboard: A
>>     =C2=A0 =C2=A0 TX Subdev: UBX TX
>>     =C2=A0 TX Channel: 1
>>     =C2=A0 =C2=A0 TX DSP: 1
>>     =C2=A0 =C2=A0 TX Dboard: B
>>     =C2=A0 =C2=A0 TX Subdev: UBX TX
>>
>>     [00:00:02.923799498] Setting device timestamp to 0...
>>     [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at pps =
edge
>>     [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps (synchrono=
usly)
>>     [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>     [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
>>     [00:00:04.262875535] Testing receive rate 200.000000 Msps on 2
>>     channels
>>     [00:00:34.313774651] Benchmark complete.
>>
>>     Benchmark rate summary:
>>     =C2=A0 Num received samples: =C2=A0 =C2=A0 12000000380
>>     =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00
>>     =C2=A0 Num overruns detected: =C2=A0 =C2=A00
>>     =C2=A0 Num transmitted samples: =C2=A00
>>     =C2=A0 Num sequence errors (Tx): 0
>>     =C2=A0 Num sequence errors (Rx): 0
>>     =C2=A0 Num underruns detected: =C2=A0 0
>>     =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00
>>     =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
>>     =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
>>
>>     Done!*/
>>
>>     However, when I run rx_samples_to_file I get overflows from 8 sec
>>     for a single receiving channel.
>>
>>     /*sudo ./rx_samples_to_file
>>     =C2=A0--file=3D"/home/rack_2021/Escritorio/pruebas_codigos_agosto/=
usrp_samples.dat"
>>     --duration 8
>>     --args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff=
_size=3D900000000"
>>     --channel=3D"0" --subdev=3D"A:0" --rate 200e6 --bw 200e6 --gain 5
>>     --freq 800e6
>>
>>     Creating the usrp device with:
>>     addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D90=
0000000...
>>     [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>     UHD_4.1.0.HEAD-0-gd21735d5
>>     [INFO] [X300] X300 initialization sequence...
>>     [INFO] [X300] Maximum frame size: 8000 bytes.
>>     [INFO] [X300] Maximum frame size: 8000 bytes.
>>     [INFO] [X300] Radio 1x clock: 200 MHz
>>     Using Device: Single USRP:
>>     =C2=A0 Device: X-Series Device
>>     =C2=A0 Mboard 0: X310
>>     =C2=A0 RX Channel: 0
>>     =C2=A0 =C2=A0 RX DSP: 0
>>     =C2=A0 =C2=A0 RX Dboard: A
>>     =C2=A0 =C2=A0 RX Subdev: UBX RX
>>     =C2=A0 TX Channel: 0
>>     =C2=A0 =C2=A0 TX DSP: 0
>>     =C2=A0 =C2=A0 TX Dboard: A
>>     =C2=A0 =C2=A0 TX Subdev: UBX TX
>>     =C2=A0 TX Channel: 1
>>     =C2=A0 =C2=A0 TX DSP: 1
>>     =C2=A0 =C2=A0 TX Dboard: B
>>     =C2=A0 =C2=A0 TX Subdev: UBX TX
>>
>>     Setting RX Rate: 200.000000 Msps...
>>     Actual RX Rate: 200.000000 Msps...
>>
>>     Setting RX Freq: 800.000000 MHz...
>>     Setting RX LO Offset: 0.000000 MHz...
>>     Actual RX Freq: 800.000000 MHz...
>>
>>     Setting RX Gain: 5.000000 dB...
>>     Actual RX Gain: 5.000000 dB...
>>
>>     Setting RX Bandwidth: 200.000000 MHz...
>>     Actual RX Bandwidth: 200.000000 MHz...
>>
>>     Waiting for "lo_locked": ++++++++++ locked.
>>
>>     Press Ctrl + C to stop streaming...
>>     O
>>     Done!*/
>>
>>     I am using a native Ubuntu, not a VM and I have the CPU governor
>>     set to "performance".
>>
>>     I have managed to patch the code that worked for me before
>>     updating the system to the new versions of Ubuntu and UHD, so I
>>     ask for more samples than I want since I have observed that the
>>     recv () reception buffer is not always constant and it does not
>>     always acquire the maximum number of samples as I request (1996
>>     samples), at least not at the beginning. But I would like to know
>>     the cause of this so that I can fix it and why GNU Radio keeps
>>     giving me the same error.
>>
>>     Thanks in advance.
>>     Regards,
>>     Anabel
>>
>     The recv() call doesn't necessarily guarantee that you'll get all
>     the samples you asked for in that call, as far as I know. It isn't
>     surprising that there would be slight differences
>     =C2=A0 in behavior across different versions of UHD and OS versions=
 in
>     this regard.=C2=A0 You always have to be prepared to receive fewer
>     samples than you asked for.
>
>     If Gnu Radio applications are producing overruns, that is firmly
>     in the territory of Gnu Radio, and NOT UHD. Clearly, on your
>     machine, UHD is able to sustain 200e6 SPS.
>     =C2=A0 But as you add layers of application processing, the system =
is
>     more heavily loaded.=C2=A0 Gnu Radio actually "does things" with th=
e
>     samples, which means the
>     =C2=A0 instructions-per-sample is MUCH higher than your simple
>     rx_samples_to_file test.
>
>

--------------BR0IVr0c3mmsgC09kw3IW6xb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-03 03:04, Anabel Almodovar
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFPzw1ky-RHs7kxDG-y1BKS9CwHHgpxeqK+=3DxDH5TkrUHLgnVA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thank you for your explanation.=C2=A0So is there a=
ny
        kind of solution for my problem with GNU Radio?
        <div><br>
        </div>
        <div>Thanks in=C2=A0advance.</div>
        <div>Regards,</div>
        <div>Anabel</div>
      </div>
    </blockquote>
    I have suggested this in the past--look into using DPDK if you're
    running at high sample rates over 10GiGe:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_dpdk.html">https://files.ettus.com/manual/page_dpdk.html</a><br=
>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Getti=
ng_Started_with_DPDK_and_UHD">https://kb.ettus.com/Getting_Started_with_D=
PDK_and_UHD</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFPzw1ky-RHs7kxDG-y1BKS9CwHHgpxeqK+=3DxDH5TkrUHLgnVA@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 27 oct 2021 a =
las
          17:48, Marcus D. Leech (&lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-10-27 11:37, Anabel Almodovar wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hello,</div>
                <div><br>
                </div>
                <div>When I run a benchmark_rate example it indicates
                  that there are no sample losses even with 30s of
                  acquisition. <br>
                </div>
                <div><i><b><br>
                    </b></i></div>
                <div><i><b>rack_2021@rack-HP-Z4-G4-Workstation:~/workarea=
-uhd/uhd/host/examples/build$
                      sudo ./benchmark_rate
--args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D=
900000000"
                      --channels=3D"0,1" --rx_rate 200e6 --duration 30
                      --rx_subdev=3D"A:0 B:0" <br>
                      <br>
                      [INFO] [UHD] linux; GNU C++ version 9.3.0;
                      Boost_107100; UHD_4.1.0.HEAD-0-gd21735d5<br>
                      [00:00:00.000677] Creating the usrp device with:
                      addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv=
_buff_size=3D900000000...<br>
                      [INFO] [X300] X300 initialization sequence...<br>
                      [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                      [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                      [INFO] [X300] Radio 1x clock: 200 MHz<br>
                      Using Device: Single USRP:<br>
                      =C2=A0 Device: X-Series Device<br>
                      =C2=A0 Mboard 0: X310<br>
                      =C2=A0 RX Channel: 0<br>
                      =C2=A0 =C2=A0 RX DSP: 0<br>
                      =C2=A0 =C2=A0 RX Dboard: A<br>
                      =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
                      =C2=A0 RX Channel: 1<br>
                      =C2=A0 =C2=A0 RX DSP: 1<br>
                      =C2=A0 =C2=A0 RX Dboard: B<br>
                      =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
                      =C2=A0 TX Channel: 0<br>
                      =C2=A0 =C2=A0 TX DSP: 0<br>
                      =C2=A0 =C2=A0 TX Dboard: A<br>
                      =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
                      =C2=A0 TX Channel: 1<br>
                      =C2=A0 =C2=A0 TX DSP: 1<br>
                      =C2=A0 =C2=A0 TX Dboard: B<br>
                      =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
                      <br>
                      [00:00:02.923799498] Setting device timestamp to
                      0...<br>
                      [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time tra=
nsition
                      at pps edge<br>
                      [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next=
 pps
                      (synchronously)<br>
                      [WARNING] [0/Radio#0] Attempting to set tick rate
                      to 0. Skipping.<br>
                      [WARNING] [0/Radio#1] Attempting to set tick rate
                      to 0. Skipping.<br>
                      [00:00:04.262875535] Testing receive rate
                      200.000000 Msps on 2 channels<br>
                      [00:00:34.313774651] Benchmark complete.<br>
                      <br>
                      Benchmark rate summary:<br>
                      =C2=A0 Num received samples: =C2=A0 =C2=A0 12000000=
380<br>
                      =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00<b=
r>
                      =C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>
                      =C2=A0 Num transmitted samples: =C2=A00<br>
                      =C2=A0 Num sequence errors (Tx): 0<br>
                      =C2=A0 Num sequence errors (Rx): 0<br>
                      =C2=A0 Num underruns detected: =C2=A0 0<br>
                      =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0<br>
                      =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0<br>
                      =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0<br>
                      <br>
                      Done!</b></i><br>
                </div>
                <div><br>
                </div>
                <div>However, when I run rx_samples_to_file I get
                  overflows from 8 sec for a single receiving channel.</d=
iv>
                <div><br>
                </div>
                <div><i><b>sudo ./rx_samples_to_file
=C2=A0--file=3D"/home/rack_2021/Escritorio/pruebas_codigos_agosto/usrp_sa=
mples.dat"
                      --duration 8
--args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D=
900000000"
                      --channel=3D"0" --subdev=3D"A:0" --rate 200e6 --bw
                      200e6 --gain 5 --freq 800e6<br>
                      <br>
                      Creating the usrp device with:
                      addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv=
_buff_size=3D900000000...<br>
                      [INFO] [UHD] linux; GNU C++ version 9.3.0;
                      Boost_107100; UHD_4.1.0.HEAD-0-gd21735d5<br>
                      [INFO] [X300] X300 initialization sequence...<br>
                      [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                      [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                      [INFO] [X300] Radio 1x clock: 200 MHz<br>
                      Using Device: Single USRP:<br>
                      =C2=A0 Device: X-Series Device<br>
                      =C2=A0 Mboard 0: X310<br>
                      =C2=A0 RX Channel: 0<br>
                      =C2=A0 =C2=A0 RX DSP: 0<br>
                      =C2=A0 =C2=A0 RX Dboard: A<br>
                      =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
                      =C2=A0 TX Channel: 0<br>
                      =C2=A0 =C2=A0 TX DSP: 0<br>
                      =C2=A0 =C2=A0 TX Dboard: A<br>
                      =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
                      =C2=A0 TX Channel: 1<br>
                      =C2=A0 =C2=A0 TX DSP: 1<br>
                      =C2=A0 =C2=A0 TX Dboard: B<br>
                      =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
                      <br>
                      Setting RX Rate: 200.000000 Msps...<br>
                      Actual RX Rate: 200.000000 Msps...<br>
                      <br>
                      Setting RX Freq: 800.000000 MHz...<br>
                      Setting RX LO Offset: 0.000000 MHz...<br>
                      Actual RX Freq: 800.000000 MHz...<br>
                      <br>
                      Setting RX Gain: 5.000000 dB...<br>
                      Actual RX Gain: 5.000000 dB...<br>
                      <br>
                      Setting RX Bandwidth: 200.000000 MHz...<br>
                      Actual RX Bandwidth: 200.000000 MHz...<br>
                      <br>
                      Waiting for "lo_locked": ++++++++++ locked.<br>
                      <br>
                      Press Ctrl + C to stop streaming...<br>
                      O<br>
                      Done!</b></i><br>
                </div>
                <div><br>
                </div>
                <div>I am using a native Ubuntu, not a VM and I have the
                  CPU governor set to "performance".</div>
                <div><br>
                </div>
                <div>I have managed to patch the code that worked for me
                  before updating the system to the new versions of
                  Ubuntu and UHD, so I ask for more samples than I want
                  since I have observed that the recv () reception
                  buffer is not always constant and it does not always
                  acquire the maximum number of samples as I request
                  (1996 samples), at least not at the beginning. But I
                  would like to know the cause of this so that I can fix
                  it and why GNU Radio keeps giving me the same error.</d=
iv>
                <div><br>
                </div>
                <div>Thanks in advance.<br>
                </div>
                <div>Regards, <br>
                </div>
                <div>Anabel<br>
                </div>
              </div>
              <br>
            </blockquote>
            The recv() call doesn't necessarily guarantee that you'll
            get all the samples you asked for in that call, as far as I
            know. It isn't surprising that there would be slight
            differences<br>
            =C2=A0 in behavior across different versions of UHD and OS
            versions in this regard.=C2=A0 You always have to be prepared=
 to
            receive fewer samples than you asked for.<br>
            <br>
            If Gnu Radio applications are producing overruns, that is
            firmly in the territory of Gnu Radio, and NOT UHD.=C2=A0=C2=A0
            Clearly, on your machine, UHD is able to sustain 200e6 SPS.<b=
r>
            =C2=A0 But as you add layers of application processing, the
            system is more heavily loaded.=C2=A0 Gnu Radio actually "does
            things" with the samples, which means the<br>
            =C2=A0 instructions-per-sample is MUCH higher than your simpl=
e
            rx_samples_to_file test.<br>
            <br>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------BR0IVr0c3mmsgC09kw3IW6xb--

--===============6481090888450932985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6481090888450932985==--
