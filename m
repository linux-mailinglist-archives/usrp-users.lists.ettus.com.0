Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C08506D43
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 15:13:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3730B384C7A
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 09:13:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650373994; bh=wf1xe8oKg2AGqTnQ1uJtCtxfrWcL6jYjga2nx9nrUb4=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PudCD1NLmVKEZb24IxFxyYRKngyckBLW5MEKPCWqyuH2O15NVvjHhb4dI61zzHLZC
	 WYFy3JoZ2IZhhlNADA/SQX+WzC7ghy/+kzY5Vn1V07Q02xFgicypWMA+WQ5YDQI2CI
	 W+/kC4HDtkAzYy7zNIVqIZISblNGANs5LtIQfYt5MUd4NtPyz/omnznmTLkQCTOXci
	 aMBXAf6+SJSC3RRSG2BAwtif8ijCkRjbdMsbpwqGWk7JnCyaFGSvT8nwJ9kWQa2zR9
	 15U6hVUszCvg/4Txw510bzoxxSBjwXOAwZ4pMCPE5mI/YR0GttMbCGGtDja7WbWpnN
	 0TVpOd/2Ivf3w==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 02D683847CE
	for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 09:12:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="K7aEpors";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id y19so13034667qvk.5
        for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 06:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=qxew8ncbffzx35dctNdIf6XVrQWgnmqnrPJD6T9cmmc=;
        b=K7aEpors30K82fKEK38McKfugcvaIJQjeOcdwxJ4xtdT556T/0Nya+O33fIeMMeALs
         OJGnHCX1PkTAOU1N+r/FPjo2jkdZ0weStjX0AAnDYBpf/7uJkoiYQk1SpKGmK9Kd/9kj
         k9YakV6jnHIXm3s7w+v2N/6MT7qzhSK+fXUXFPwtsNNkaYL6F+1oDipkZkm8u0Nklmm+
         /hep5zk13Ukhpdx5NCSSs4jzRQG3OwGYPWM+KGxr2nJcOCnauAtP5xHUTLAfaVOU1cOX
         I3Mkmbsa0QOW4/gJbwpflrim3ol1CyqORIckVuaoqgtwwp/ch/hWn6QenysBzue8FFSp
         Cmmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=qxew8ncbffzx35dctNdIf6XVrQWgnmqnrPJD6T9cmmc=;
        b=iJVdS44EMXhcxDippfAcCadNFOTJitVPCkE6XFRUAgNkrhraMRcXeWphmMyQoT/YyO
         4j31mE1TGkFBiktqEdDPddpySBN6xvX8T9T3iPdgeYTc51fQRAE7p+nRGayJWjeANWtl
         VHha63ciF4rydbNhT5rOSwoNIgJ3/R1zNzxMuqnEpHTzsJTgzds2eJNB5e8831eT3cDt
         VdqmUdWaFiv6lOnZyD5H3wDGTkgloMRiTMmGxoZrCLUMvgRsBsA/poIScHsgAGLWVHJN
         fd9IoaTarUmkZZNu0VebVd3ZceAiL5AbB0jygd7lDUxn2ockqszLJvuqnDjyTc9nm2DS
         bI/g==
X-Gm-Message-State: AOAM531CcNr4WP9gSyKK0Ry0ysWKY6hvV8GcqAYhc7ArLkE8HaV6Y0g+
	rBOzJZQ+h5vAq2Twobhm7eJUUS0x49uv9w==
X-Google-Smtp-Source: ABdhPJwhnVlG8XUl3p4RchDCGjXGdVzjiIA0L2CeJeTzIE2319Ez6eUrr39fbJh9jIyCJ3NzALsMWA==
X-Received: by 2002:ad4:4eee:0:b0:446:7bea:a5c5 with SMTP id dv14-20020ad44eee000000b004467beaa5c5mr753829qvb.112.1650373931186;
        Tue, 19 Apr 2022 06:12:11 -0700 (PDT)
Received: from [192.168.2.188] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id e126-20020a376984000000b0069c86b28524sm7431112qkc.19.2022.04.19.06.12.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 06:12:10 -0700 (PDT)
Message-ID: <ae17dbe8-e3c4-4539-46f4-0cb30db81450@gmail.com>
Date: Tue, 19 Apr 2022 09:12:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
References: <CAOucfAOCAAvZ8GuirG15oZ30EPO1=ENs3teM8FKUhm3YyaptXQ@mail.gmail.com>
 <d014f269-e776-baa3-0125-ad8e05b46d61@gmail.com>
 <CAOucfAM5s_4oWuUkui6VeoNUq7fuV=+=hHX-BfuqvDjCTCRhFA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOucfAM5s_4oWuUkui6VeoNUq7fuV=+=hHX-BfuqvDjCTCRhFA@mail.gmail.com>
Message-ID-Hash: 6QJHTVCWA543VBUEE4RSWTNLHEDDCAK5
X-Message-ID-Hash: 6QJHTVCWA543VBUEE4RSWTNLHEDDCAK5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with TRX-B output
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6QJHTVCWA543VBUEE4RSWTNLHEDDCAK5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0344213763190164094=="

This is a multi-part message in MIME format.
--===============0344213763190164094==
Content-Type: multipart/alternative;
 boundary="------------Qp2sthh3BWJc6V4rUaMSqwsL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Qp2sthh3BWJc6V4rUaMSqwsL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-19 08:40, Lautaro Lorenzen wrote:
> Hi Marcus,
>
> As Rob mentioned, it seems that I do not have the same uhd version on=20
> the host and on the device. The version I'm running on the host is=20
> 4.1.0.5, and on the device is 4.0.1.4. Anyhow, I assume that all=20
> standalone uhd examples should run on the device. The command=20
> uhd_usrp_probe gives me the following:
I just tried this on my E310 directly, running UHD 4.1.0.2, and it=20
worked straight away--the TX light came on, there were no "LLL".

The only difference is that you're running 4.1.0.4, and I specified a=20
--gain of 50


>
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;=20
> UHD_4.1.0.4-0-g25d617ca
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D8B,f=
pga=3Dn/a,claimed=3DFalse
> [INFO] [MPM.main] Launching USRP/MPM, version: 4.1.0.4-g25d617ca
> [INFO] [MPM.main] Spawning RPC process...
> [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!
> [INFO] [MPM.PeriphManager] Device serial number: 30E2D8B
> [WARNING] [MPM.PeriphManager] Found more EEPROM paths than=20
> daughterboards. Ignoring some of them.
> [INFO] [MPM.RPCServer] RPC server ready!
> [INFO] [MPM.RPCServer] Spawning watchdog task...
> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3'.
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> =C2=A0 _____________________________________________________
> =C2=A0/
> | =C2=A0 =C2=A0 =C2=A0 Device: E300-Series Device
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-e31x-30E2D8B
> | =C2=A0 | =C2=A0 dboard_0_pid: 272
> | =C2=A0 | =C2=A0 dboard_0_serial: 30CB4AF
> | =C2=A0 | =C2=A0 fs_version: 20210929150239
> | =C2=A0 | =C2=A0 mender_artifact: v4.1.0.4_e310_sg3
> | =C2=A0 | =C2=A0 mpm_sw_version: 4.1.0.4-g25d617ca
> | =C2=A0 | =C2=A0 pid: 30675
> | =C2=A0 | =C2=A0 product: e310_sg3
> | =C2=A0 | =C2=A0 rev: 6
> | =C2=A0 | =C2=A0 rpc_connection: local
> | =C2=A0 | =C2=A0 serial: 30E2D8B
> | =C2=A0 | =C2=A0 type: e3xx
> | =C2=A0 | =C2=A0 MPM Version: 4.0
> | =C2=A0 | =C2=A0 FPGA Version: 6.0
> | =C2=A0 | =C2=A0 FPGA git hash: 6bd0be9.dirty
> | =C2=A0 |
> | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo
> | =C2=A0 | =C2=A0 Clock sources: internal
> | =C2=A0 | =C2=A0 Sensors: ref_locked, gps_locked, temp_fpga, temp_mb,=20
> gps_gpgga, gps_sky, gps_time, gps_tpv
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:
> | =C2=A0 |
> | =C2=A0 | =C2=A0 * 0/Radio#0
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device:
> | =C2=A0 |
> | =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D>0/Radio#0:0
> | =C2=A0 | =C2=A0 * 0/SEP#1:0=3D=3D>0/Radio#0:1
> | =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D>0/SEP#0:0
> | =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D>0/SEP#1:0
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#0
> | =C2=A0 | _____________________________________________________
> | =C2=A0 | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0
> | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx
> | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX
> | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz
> | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB
> | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 st=
ep 0.0 Hz
> | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
> | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
> | =C2=A0 | _____________________________________________________
> | =C2=A0 | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 1
> | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx
> | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX
> | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz
> | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB
> | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 st=
ep 0.0 Hz
> | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
> | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0
> | =C2=A0 | _____________________________________________________
> | =C2=A0 | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0
> | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx
> | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX
> | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz
> | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB
> | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 st=
ep 0.0 Hz
> | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
> | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
> | =C2=A0 | _____________________________________________________
> | =C2=A0 | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1
> | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx
> | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX
> | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz
> | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB
> | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 st=
ep 0.0 Hz
> | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
> | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
>
> I've loaded and changed the image a few times when doing some RFNoC=20
> tests, but nothing seems off to me, do you notice something strange?
>
> Thank you,
> Lautaro.
>
> El jue, 14 abr 2022 a la(s) 00:52, Marcus D. Leech=20
> (patchvonbraun@gmail.com) escribi=C3=B3:
>
>     On 2022-04-13 13:32, Lautaro Lorenzen wrote:
>>     Hi everyone,
>>
>>     I'm trying to run a simple example on an Ettus E310.
>>     I'm using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5.
>>
>>     Everything seems to work okay, but I can not manage to get the
>>     second channel (TRX-B) to transmit anything. FYI: I can receive
>>     from both channels RX-A and RX-B.
>>     The problem came up when I tried to transmit something via
>>     gnu-radio, changing the "subdev" arg to "A:1" instead of leaving
>>     it blank as I normally do.
>>     When I pressed start, everything seemed to compile fine, but the
>>     GUI freezes (something that did not happen when using TRX-A).
>>
>>     To see if gnu-radio was the problem, I logged in the embedded
>>     linux and tried some uhd examples from usr/lib/uhd/examples.
>>     As expected, I ran ./tx_waveforms --rate 1e6 --freq 100e6
>>     --subdev A:0=C2=A0 and the tx light turned on and I could see
>>     something on my oscilloscope. Also, a few "LLLLL" appeared on the
>>     console.
>>
>>     When I ran:
>>     ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:1, everything
>>     looks the same but no light, no signal, and no "LLLLL" are
>>     displayed on the console. Just the message "press ctrl+C to stop
>>     streaming".
>>
>>     Any help would be very much appreciated.
>>     Regards,
>>     Lautaro.
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     IF you run:
>
>     uhd_config_info --version
>
>     On the actual E312, what does it return?
>
>     Also, what does:
>
>     uhd_usrp_probe
>
>     Return (again, on the device itself).
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------Qp2sthh3BWJc6V4rUaMSqwsL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-19 08:40, Lautaro Lorenzen
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOucfAM5s_4oWuUkui6VeoNUq7fuV=3D+=3DhHX-BfuqvDjCTCRhFA@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif">Hi Marcus,</di=
v>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif"><br>
        </div>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif">As Rob
          mentioned, it seems that I do not have the same uhd version on
          the host and on the device. The version I'm running on the
          host is 4.1.0.5, and on the device is 4.0.1.4. Anyhow, I
          assume that all standalone uhd examples should run on the
          device. The command uhd_usrp_probe gives me the following: <br>
        </div>
      </div>
    </blockquote>
    I just tried this on my E310 directly, running UHD 4.1.0.2, and it
    worked straight away--the TX light came on, there were no "LLL".<br>
    <br>
    The only difference is that you're running 4.1.0.4, and I specified
    a --gain of 50<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAOucfAM5s_4oWuUkui6VeoNUq7fuV=3D+=3DhHX-BfuqvDjCTCRhFA@mail.=
gmail.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif">
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif"><br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">[INFO] [UHD]
            linux; GNU C++ version 9.2.0; Boost_107100;
            UHD_4.1.0.4-0-g25d617ca<br>
            [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30E2D8B,fpg=
a=3Dn/a,claimed=3DFalse<br>
            [INFO] [MPM.main] Launching USRP/MPM, version:
            4.1.0.4-g25d617ca<br>
            [INFO] [MPM.main] Spawning RPC process...<br>
            [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility
            check!<br>
            [INFO] [MPM.PeriphManager] Device serial number: 30E2D8B<br>
            [WARNING] [MPM.PeriphManager] Found more EEPROM paths than
            daughterboards. Ignoring some of them.<br>
            [INFO] [MPM.RPCServer] RPC server ready!<br>
            [INFO] [MPM.RPCServer] Spawning watchdog task...<br>
            [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
            [INFO] [MPM.PeriphManager] init() called with device args
            `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,product=3De310_sg3'.<br>
            [INFO] [0/Radio#0] Performing CODEC loopback test on channel
            0 ... <br>
            [INFO] [0/Radio#0] CODEC loopback test passed<br>
            [INFO] [0/Radio#0] Performing CODEC loopback test on channel
            1 ... <br>
            [INFO] [0/Radio#0] CODEC loopback test passed<br>
            =C2=A0 _____________________________________________________<=
br>
            =C2=A0/<br>
            | =C2=A0 =C2=A0 =C2=A0 Device: E300-Series Device<br>
            | =C2=A0 =C2=A0 _____________________________________________=
________<br>
            | =C2=A0 =C2=A0/<br>
            | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-e31x-30E2D8B<br>
            | =C2=A0 | =C2=A0 dboard_0_pid: 272<br>
            | =C2=A0 | =C2=A0 dboard_0_serial: 30CB4AF<br>
            | =C2=A0 | =C2=A0 fs_version: 20210929150239<br>
            | =C2=A0 | =C2=A0 mender_artifact: v4.1.0.4_e310_sg3<br>
            | =C2=A0 | =C2=A0 mpm_sw_version: 4.1.0.4-g25d617ca<br>
            | =C2=A0 | =C2=A0 pid: 30675<br>
            | =C2=A0 | =C2=A0 product: e310_sg3<br>
            | =C2=A0 | =C2=A0 rev: 6<br>
            | =C2=A0 | =C2=A0 rpc_connection: local<br>
            | =C2=A0 | =C2=A0 serial: 30E2D8B<br>
            | =C2=A0 | =C2=A0 type: e3xx<br>
            | =C2=A0 | =C2=A0 MPM Version: 4.0<br>
            | =C2=A0 | =C2=A0 FPGA Version: 6.0<br>
            | =C2=A0 | =C2=A0 FPGA git hash: 6bd0be9.dirty<br>
            | =C2=A0 | =C2=A0 <br>
            | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gps=
do<br>
            | =C2=A0 | =C2=A0 Clock sources: internal<br>
            | =C2=A0 | =C2=A0 Sensors: ref_locked, gps_locked, temp_fpga,=
 temp_mb,
            gps_gpgga, gps_sky, gps_time, gps_tpv<br>
            | =C2=A0 =C2=A0 _____________________________________________=
________<br>
            | =C2=A0 =C2=A0/<br>
            | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:<=
br>
            | =C2=A0 | =C2=A0 <br>
            | =C2=A0 | =C2=A0 * 0/Radio#0<br>
            | =C2=A0 =C2=A0 _____________________________________________=
________<br>
            | =C2=A0 =C2=A0/<br>
            | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this de=
vice:<br>
            | =C2=A0 | =C2=A0 <br>
            | =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/Radio#0:0<br>
            | =C2=A0 | =C2=A0 * 0/SEP#1:0=3D=3D&gt;0/Radio#0:1<br>
            | =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/SEP#0:0<br>
            | =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/SEP#1:0<br>
            | =C2=A0 =C2=A0 _____________________________________________=
________<br>
            | =C2=A0 =C2=A0/<br>
            | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#0<br>
            | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            | =C2=A0 | =C2=A0 =C2=A0/<br>
            | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz=
<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0=
.2 dB<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 400=
00000.0 step
            0.0 Hz<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            | =C2=A0 | =C2=A0 =C2=A0/<br>
            | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 1<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz=
<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0=
.2 dB<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 400=
00000.0 step
            0.0 Hz<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            | =C2=A0 =C2=A0 _____________________________________________=
________<br>
            | =C2=A0 =C2=A0/<br>
            | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0<br>
            | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            | =C2=A0 | =C2=A0 =C2=A0/<br>
            | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz=
<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1=
.0 dB<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 400=
00000.0 step
            0.0 Hz<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            | =C2=A0 | =C2=A0 =C2=A0/<br>
            | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz=
<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1=
.0 dB<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 400=
00000.0 step
            0.0 Hz<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
          </div>
        </div>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif"><br>
        </div>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif">
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">I've loaded
            and changed the image a few times when doing some RFNoC
            tests, but nothing seems off to me, do you notice something
            strange?<br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif"><br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">Thank you, <=
br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">Lautaro.<br>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 abr 2022 a la(s)
          00:52, Marcus D. Leech (<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2022-04-13 13:32, Lautaro Lorenzen wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div class=3D"gmail_default"
                  style=3D"font-family:arial,helvetica,sans-serif">Hi
                  everyone,</div>
                <div class=3D"gmail_default"
                  style=3D"font-family:arial,helvetica,sans-serif"><br>
                </div>
                <div class=3D"gmail_default"
                  style=3D"font-family:arial,helvetica,sans-serif">I'm
                  trying to run a simple example on an Ettus E310. <br>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif">I'm
                    using an E312 with UHD 4.1.0.5 and gnuradio
                    v3.8.0.5. <br>
                  </div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif"><br>
                  </div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif">Ever=
ything
                    seems to work okay, but I can not manage to get the
                    second channel (TRX-B) to transmit anything. FYI: I
                    can receive from both channels RX-A and RX-B.<br>
                  </div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif">The
                    problem came up when I tried to transmit something
                    via gnu-radio, changing the "subdev" arg to "A:1"
                    instead of leaving it blank as I normally do. <br>
                  </div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif">When
                    I pressed start, everything seemed to compile fine,
                    but the GUI freezes (something that did not happen
                    when using TRX-A).</div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif"><br>
                  </div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif">To
                    see if gnu-radio was the problem, I logged in the
                    embedded linux and tried some uhd examples from
                    usr/lib/uhd/examples.</div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif">As
                    expected, I ran ./tx_waveforms --rate 1e6 --freq
                    100e6 --subdev A:0=C2=A0 and the tx light turned on a=
nd I
                    could see something on my oscilloscope. Also, a few
                    "LLLLL" appeared on the console.</div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif"><br>
                  </div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif">When
                    I ran: <br>
                  </div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif">./tx=
_waveforms
                    --rate 1e6 --freq 100e6 --subdev A:1, everything
                    looks the same but no light, no signal, and no
                    "LLLLL" are displayed on the console. Just the
                    message "press ctrl+C to stop streaming".</div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif"><br>
                  </div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif">Any
                    help would be very much appreciated. <br>
                  </div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif">Rega=
rds,</div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif">Laut=
aro.<br>
                  </div>
                  <div class=3D"gmail_default"
                    style=3D"font-family:arial,helvetica,sans-serif"><br>
                  </div>
                </div>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            IF you run:<br>
            <br>
            uhd_config_info --version<br>
            <br>
            On the actual E312, what does it return?<br>
            <br>
            Also, what does:<br>
            <br>
            uhd_usrp_probe <br>
            <br>
            Return (again, on the device itself).<br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------Qp2sthh3BWJc6V4rUaMSqwsL--

--===============0344213763190164094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0344213763190164094==--
