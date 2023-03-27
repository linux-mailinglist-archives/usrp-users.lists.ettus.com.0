Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 606AC6CA9FF
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 18:08:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 420EC384218
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 12:08:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679933292; bh=R/MPNPqlGx0n0G0rUJCQGoiHYePBIRB716tAt/HODBA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Hjqsy0J5TEBRM5GBBH/lvIbVGB168vMR4G6CBUdrWlrI8UgxbiupGzlR8ObiMbxfI
	 WUOYkxSvKRjQyxoTp/iRQjSrZ0iSCumfx2jlnDfLiW0OyGgat5Dh+xQyvctRnV3zwb
	 fyubzOaR09Qg0VHVExthc1ensmzqLhqAV4HVVjmXKkLww/BapwbRR/XKOGIaBPWOGz
	 lyXXqTf4Og2HMtsybxHu+zcqjCevDcNxE904TUYBmfa7JselQHQAQUREOmVkXvVf/J
	 VVFCQLQRgbO8QllwvhVw6AXyYmssznHqc7iOIYOD1oIBwSwM5s41H67Mb1A2GjBbrO
	 O4motrm2Xb1ng==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id CB6D738476C
	for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 12:06:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PQB9IgDu";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id q88so6985284qvq.13
        for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 09:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679933219;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=asL0aSm3OB3vXSJAS1ia5o6rWKZSICaJJMA7P/LM5m4=;
        b=PQB9IgDualTF3DD8vSah6OBxjRD0/+fobZlGD/DqLrST7zV5+RIhPh7sA9Aqg8aIwq
         Kx3+lPnvtGU4sEJyX57ug5olAUmRIQ+qFkh05GWek+l/MMKjVEBP+BotIx/l6a55/Tro
         mt6k3pZIjdAlL6pJoGywO++jf7x69s23JEQELv7PZiF84aQY+ZCpzHif6IIL1M1qE7dz
         hLTya0zm8lGJ1vuHy5a665X+Nns2w+/YT50FNT071dsd2zWwPEjNR98EivrHyC6MdcqR
         +lwFjGVj5iRsa1R7QwJp0fZphRO3G2BwV/OyhYKHPduzl3ko27NXaGBtV4GxtO7pL5Ni
         YvVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679933219;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=asL0aSm3OB3vXSJAS1ia5o6rWKZSICaJJMA7P/LM5m4=;
        b=i8Z/DAzj3ZjIDXxNE9Z6iW1Y19oxcWeM/Kven7Z/0br7sJViYX8K3TmnhN0rsfwcxM
         f2+VB0R4+uwsuEMLUZuqgmHve2id34TdSgpk5OfRPHTaiEshkWvarmd4Y7ckTgV0bfXQ
         G3zlNTFbnyiaVdox1HEuyax5mf8jG7T3tCOsE6fu46xRJIpDVxNtruz0AT+r2eUY9cDr
         DsQh2G8kbPXqb59XHoWtpKL07f8zdWLjkOFBHudRvfYL/S7hwXFhRB/KD03XMBy0+EnX
         aAv54SWeiUh4U+8O/PifSwL15ZTvAAO7Hg/UtD3Q5ZOSqRUiyUCvHgA5BdB1soFpkLme
         SbVA==
X-Gm-Message-State: AAQBX9evAoUU4VDwQc65n6WHwmzn2b9Y4oyYXP7cn7BInV1D7IdqgOPn
	qTf1B3AAzroAF7Wh74A7wR+oPxGgXq8=
X-Google-Smtp-Source: AKy350bsdV9Ur2boVCXvT9oNi8nmHF5MxM418Jx8CRLxm4R12mVjddgyoAgO7Bh7uO05JDtrSd9B3A==
X-Received: by 2002:a05:6214:230d:b0:56e:afe2:ebca with SMTP id gc13-20020a056214230d00b0056eafe2ebcamr21662462qvb.30.1679933219010;
        Mon, 27 Mar 2023 09:06:59 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id u12-20020a0cec8c000000b005dd8b93458bsm3042371qvo.35.2023.03.27.09.06.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 09:06:58 -0700 (PDT)
Message-ID: <12824671-88d6-a23e-466b-9564b96617d4@gmail.com>
Date: Mon, 27 Mar 2023 12:06:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MAXPR01MB35656AAAFC3637BA53236B80D68B9@MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MAXPR01MB35656AAAFC3637BA53236B80D68B9@MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: USNO24F2TZIC554DM6H7755ZE5HPCEOJ
X-Message-ID-Hash: USNO24F2TZIC554DM6H7755ZE5HPCEOJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timer loopback test failed! in usrp B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/USNO24F2TZIC554DM6H7755ZE5HPCEOJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7990982437275251418=="

This is a multi-part message in MIME format.
--===============7990982437275251418==
Content-Type: multipart/alternative;
 boundary="------------GEkMtxs7wxvH0lpFW3VQ0rfe"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------GEkMtxs7wxvH0lpFW3VQ0rfe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/03/2023 07:03, Sivanesh Kumar K wrote:
> Dear team,
>
>
> I am using usrpB210 vdoing some test ,uhd version is (tag: v4.4.0.0).=C2=
=A0=20
> when I was connected the board ,I am getting below error please help=20
> me to resolve the issue.
>
> PHY] =C2=A0 Waiting for RUs to be configured ... RC.ru_mask:01
> [PHY] =C2=A0 [INIT] nr_phy_init_RU() ru->num_gNB:1
> [LIBCONFIG] device.recplay: 8/8 parameters successfully set, (8 to=20
> default value)
> [LIBCONFIG] device: 1/1 parameters successfully set, (1 to default valu=
e)
> [LIBCONFIG] loader: 2/2 parameters successfully set, (2 to default valu=
e)
> [LIBCONFIG] loader.oai_device: 2/2 parameters successfully set, (1 to=20
> default value)
> shlib_path liboai_device.so
> [LOADER] library liboai_device.so successfully loaded
> [HW] =C2=A0 openair0_cfg[0].sdr_addrs =3D=3D '(null)'
> [HW] =C2=A0 openair0_cfg[0].clock_source =3D=3D '0' (internal =3D 0, ex=
ternal =3D 1)
> [HW] =C2=A0 UHD version 4.4.0.HEAD-0-g5fac246b (4.4.0)
> [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;=20
> UHD_4.4.0.HEAD-0-g5fac246b
> [INFO] [B200] Loading firmware image:=20
> /usr/local/share/uhd/images/usrp_b200_fw.hex...
> [HW] =C2=A0 Found USRP b200
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Loading FPGA image:=20
> /usr/local/share/uhd/images/usrp_b210_fpga.bin...
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Detecting internal GPSDO....
> [INFO] [GPS] No GPSDO found
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Asking for clock rate 30.720000 MHz...
> [INFO] [B200] Actually got clock rate 30.720000 MHz.
> [HW] =C2=A0 Setting clock source to internal
> [HW] =C2=A0 Setting time source to internal
> -- Using calibration table: calib_table_b210_38
> [INFO] [B200] Asking for clock rate 46.080000 MHz...
> [INFO] [B200] Actually got clock rate 46.080000 MHz.
> [WARNING] [CORES] Timer loopback test failed!
> [WARNING] [CORES] Expecting clock rate: 46.08 MHz
> Approximate clock rate: 0 MHz
>
> [HW] =C2=A0 cal 0: freq 3500000000.000000, offset 44.000000, diff=20
> 119200000.000000
> [HW] =C2=A0 cal 1: freq 2660000000.000000, offset 49.800000, diff=20
> 959200000.000000
> [HW] =C2=A0 cal 2: freq 2300000000.000000, offset 51.000000, diff=20
> 1319200000.000000
> [HW] =C2=A0 cal 3: freq 1880000000.000000, offset 53.000000, diff=20
> 1739200000.000000
> [HW] =C2=A0 cal 4: freq 816000000.000000, offset 57.000000, diff=20
> 2803200000.000000
> [HW] =C2=A0 RX Gain 0 115.000000 (44.000000) =3D> 71.000000 (max 76.000=
000)
> [HW] =C2=A0 USRP TX_GAIN:77.75 gain_range:89.75 tx_gain:12.00
> [HW] =C2=A0 Actual master clock: 46.080000MHz...
> [HW] =C2=A0 Actual clock source internal...
> [HW] =C2=A0 Actual time source internal...
> [HW] =C2=A0 setting rx channel 0
> [HW] =C2=A0 RF board max packet size 1916, size for 100=C2=B5s jitter 4=
608
> [HW] =C2=A0 rx_max_num_samps 1916
> [HW] =C2=A0 RX Channel 0
> [HW] =C2=A0 =C2=A0 Actual RX sample rate: 46.080000MSps...
> [HW] =C2=A0 =C2=A0 Actual RX frequency: 3.619200GHz...
> [HW] =C2=A0 =C2=A0 Actual RX gain: 71.000000...
> [HW] =C2=A0 =C2=A0 Actual RX bandwidth: 40.000000M...
> [HW] =C2=A0 =C2=A0 Actual RX antenna: RX2...
> [HW] =C2=A0 TX Channel 0
> [HW] =C2=A0 =C2=A0 Actual TX sample rate: 46.080000MSps...
> [HW] =C2=A0 =C2=A0 Actual TX frequency: 3.619200GHz...
> [HW] =C2=A0 =C2=A0 Actual TX gain: 77.750000...
> [HW] =C2=A0 =C2=A0 Actual TX bandwidth: 40.000000M...
> [HW] =C2=A0 =C2=A0 Actual TX antenna: TX/RX...
> [HW] =C2=A0 =C2=A0 Actual TX packet size: 1916
> Using Device: Single USRP:
> =C2=A0 Device: B-Series Device
> =C2=A0 Mboard 0: B210
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: 0
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: FE-RX2
> =C2=A0 RX Channel: 1
> =C2=A0 =C2=A0 RX DSP: 1
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: FE-RX1
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: 0
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: FE-TX2
> =C2=A0 TX Channel: 1
> =C2=A0 =C2=A0 TX DSP: 1
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: FE-TX1
>
> [HW] =C2=A0 Device timestamp: 1.168859...
> [HW] =C2=A0 [RAU] has loaded USRP B200 device.
> setup_RU_buffers: frame_parms =3D 0x7f771c2af010
> [PHY] =C2=A0 RU 0 Setting N_TA_offset to 600 samples (factor 1.500000, =
UL=20
> Freq 3600120, N_RB 106, mu 1)
> [PHY] =C2=A0 Signaling main thread that RU 0 is ready, sl_ahead 6
> waiting for sync=20
> (ru_thread,-1/0x555dd422f2d4,0x555dd4b7e4c0,0x555dd4b7e480)
> RC.ru_mask:00
> [PHY] =C2=A0 RUs configured
> ALL RUs READY!
> RC.nb_RU:1
> ALL RUs ready - init gNBs
> Not NFAPI mode - call init_eNB_afterRU()
> [PHY] =C2=A0 init_eNB_afterRU() RC.nb_nr_inst:1
> [PHY] RC.nb_nr_CC[inst:0]:0x7f771bd75010
> [PHY] =C2=A0 [gNB 0] phy_init_nr_gNB() About to wait for gNB to be conf=
igured
> [LIBCONFIG] loader.dfts: 2/2 parameters successfully set, (1 to=20
> default value)
> shlib_path libdfts.so
> [LOADER] library libdfts.so successfully loaded
> [LIBCONFIG] loader.ldpc: 2/2 parameters successfully set, (1 to=20
> default value)
> shlib_path libldpc.so
> [LOADER] library libldpc.so successfully loaded
> [PHY] =C2=A0 Initialise nr transport
> [PHY] =C2=A0 Mapping RX ports from 1 RUs to gNB 0
> [PHY] =C2=A0 gNB->num_RU:1
> [PHY] =C2=A0 Attaching RU 0 antenna 0 to gNB antenna 0
> create a thread for core -1
> create a thread for core -1
> create a thread for core -1
> create a thread for core -1
> create a thread for core -1
> create a thread for core -1
> create a thread for core -1
> create a thread for core -1
> waiting for sync=20
> (L1_stats_thread,-1/0x555dd422f2d4,0x555dd4b7e4c0,0x555dd4b7e480)
> [PHY] =C2=A0 Creating thread for TX reordering and dispatching to RU
> ALL RUs ready - ALL gNBs ready
> Sending sync to all threads
> Entering ITTI signals handler
> TYPE <CTRL-C> TO TERMINATE
> got sync (L1_stats_thread)
> got sync (ru_thread)
> [HW] =C2=A0 current pps at 2.000000, starting streaming at 3.000000
> [PHY] =C2=A0 RU 0 rf device ready
> [PHY] =C2=A0 RU 0 RF started opp_enabled 0
> sleep...
>
>
> Please let me know any other details required
>
> Regards,
> Sivaneshkumar K
This looks like it's just a warning, and has no downstream=20
consequences--but I don't know anything about OAI.


You could try falling back to an older version of UHD--perhaps 4.1 and=20
see if this warning goes away.

I assume that the OAI configuration is only configuring one channel?=C2=A0=
=C2=A0=20
On the B2XX, for two channels, you can't
 =C2=A0 have a clock higher than 32MHz.


>
> Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including=20
> any attachments, is for the sole use of the intended recipient(s) and=20
> may contain proprietary confidential or privileged information or=20
> otherwise be protected by law. Any unauthorized review, use,=20
> disclosure or distribution is prohibited. If you are not the intended=20
> recipient, please notify the sender and destroy all copies and the=20
> original message.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------GEkMtxs7wxvH0lpFW3VQ0rfe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/03/2023 07:03, Sivanesh Kumar K
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MAXPR01MB35656AAAFC3637BA53236B80D68B9@MAXPR01MB3565.INDPRD01=
.PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Dear team,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        I am using usrpB210 vdoing some test ,uhd version is (tag:
        v4.4.0.0).=C2=A0 when I was connected the board ,I am getting bel=
ow
        error please help me to resolve the issue.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        PHY] =C2=A0 Waiting for RUs to be configured ... RC.ru_mask:01
        <div class=3D"ContentPasted1">[PHY] =C2=A0 [INIT] nr_phy_init_RU(=
)
          ru-&gt;num_gNB:1 </div>
        <div class=3D"ContentPasted1">[LIBCONFIG] device.recplay: 8/8
          parameters successfully set, (8 to default value)</div>
        <div class=3D"ContentPasted1">[LIBCONFIG] device: 1/1 parameters
          successfully set, (1 to default value)</div>
        <div class=3D"ContentPasted1">[LIBCONFIG] loader: 2/2 parameters
          successfully set, (2 to default value)</div>
        <div class=3D"ContentPasted1">[LIBCONFIG] loader.oai_device: 2/2
          parameters successfully set, (1 to default value)</div>
        <div class=3D"ContentPasted1">shlib_path liboai_device.so</div>
        <div class=3D"ContentPasted1">[LOADER] library liboai_device.so
          successfully loaded</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 openair0_cfg[0].sdr_add=
rs =3D=3D
          '(null)'</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 openair0_cfg[0].clock_s=
ource
          =3D=3D '0' (internal =3D 0, external =3D 1)</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 UHD version
          4.4.0.HEAD-0-g5fac246b (4.4.0)</div>
        <div class=3D"ContentPasted1">[INFO] [UHD] linux; GNU C++ version
          11.3.0; Boost_107400; UHD_4.4.0.HEAD-0-g5fac246b</div>
        <div class=3D"ContentPasted1">[INFO] [B200] Loading firmware
          image: /usr/local/share/uhd/images/usrp_b200_fw.hex...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 Found USRP b200</div>
        <div class=3D"ContentPasted1">[INFO] [B200] Detected Device: B210=
</div>
        <div class=3D"ContentPasted1">[INFO] [B200] Loading FPGA image:
          /usr/local/share/uhd/images/usrp_b210_fpga.bin...</div>
        <div class=3D"ContentPasted1">[INFO] [B200] Operating over USB 3.=
</div>
        <div class=3D"ContentPasted1">[INFO] [B200] Detecting internal
          GPSDO.... </div>
        <div class=3D"ContentPasted1">[INFO] [GPS] No GPSDO found</div>
        <div class=3D"ContentPasted1">[INFO] [B200] Initialize CODEC
          control...</div>
        <div class=3D"ContentPasted1">[INFO] [B200] Initialize Radio
          control...</div>
        <div class=3D"ContentPasted1">[INFO] [B200] Performing register
          loopback test... </div>
        <div class=3D"ContentPasted1">[INFO] [B200] Register loopback tes=
t
          passed</div>
        <div class=3D"ContentPasted1">[INFO] [B200] Performing register
          loopback test... </div>
        <div class=3D"ContentPasted1">[INFO] [B200] Register loopback tes=
t
          passed</div>
        <div class=3D"ContentPasted1">[INFO] [B200] Asking for clock rate
          30.720000 MHz... </div>
        <div class=3D"ContentPasted1">[INFO] [B200] Actually got clock
          rate 30.720000 MHz.</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 Setting clock source to
          internal</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 Setting time source to
          internal</div>
        <div class=3D"ContentPasted1">-- Using calibration table:
          calib_table_b210_38</div>
        <div class=3D"ContentPasted1">[INFO] [B200] Asking for clock rate
          46.080000 MHz... </div>
        <div class=3D"ContentPasted1">[INFO] [B200] Actually got clock
          rate 46.080000 MHz.</div>
        <div class=3D"ContentPasted1"><span style=3D"background-color:
            rgb(255, 255, 0);">[WARNING] [CORES] Timer loopback test
            failed!</span></div>
        <div class=3D"ContentPasted1"><span style=3D"background-color:
            rgb(255, 255, 0);">[</span><span style=3D"background-color:
            rgb(255, 255, 0);">WARNING] [CORES] Expecting clock rate:
            46.08 MHz</span></div>
        <div class=3D"ContentPasted1"><span style=3D"background-color:
            rgb(255, 255, 0);">Approximate clock rate: 0 MHz</span></div>
        <div><br class=3D"ContentPasted1">
        </div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 cal 0: freq
          3500000000.000000, offset 44.000000, diff 119200000.000000</div=
>
        <div class=3D"ContentPasted1">[HW] =C2=A0 cal 1: freq
          2660000000.000000, offset 49.800000, diff 959200000.000000</div=
>
        <div class=3D"ContentPasted1">[HW] =C2=A0 cal 2: freq
          2300000000.000000, offset 51.000000, diff 1319200000.000000</di=
v>
        <div class=3D"ContentPasted1">[HW] =C2=A0 cal 3: freq
          1880000000.000000, offset 53.000000, diff 1739200000.000000</di=
v>
        <div class=3D"ContentPasted1">[HW] =C2=A0 cal 4: freq 816000000.0=
00000,
          offset 57.000000, diff 2803200000.000000</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 RX Gain 0 115.000000
          (44.000000) =3D&gt; 71.000000 (max 76.000000)</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 USRP TX_GAIN:77.75
          gain_range:89.75 tx_gain:12.00</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 Actual master clock:
          46.080000MHz...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 Actual clock source
          internal...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 Actual time source
          internal...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 setting rx channel 0</d=
iv>
        <div class=3D"ContentPasted1">[HW] =C2=A0 RF board max packet siz=
e
          1916, size for 100=C2=B5s jitter 4608
        </div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 rx_max_num_samps 1916</=
div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 RX Channel 0</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 =C2=A0 Actual RX sample=
 rate:
          46.080000MSps...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 =C2=A0 Actual RX freque=
ncy:
          3.619200GHz...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 =C2=A0 Actual RX gain:
          71.000000...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 =C2=A0 Actual RX bandwi=
dth:
          40.000000M...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 =C2=A0 Actual RX antenn=
a: RX2...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 TX Channel 0</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 =C2=A0 Actual TX sample=
 rate:
          46.080000MSps...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 =C2=A0 Actual TX freque=
ncy:
          3.619200GHz...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 =C2=A0 Actual TX gain:
          77.750000...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 =C2=A0 Actual TX bandwi=
dth:
          40.000000M...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 =C2=A0 Actual TX antenn=
a: TX/RX...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 =C2=A0 Actual TX packet=
 size: 1916</div>
        <div class=3D"ContentPasted1">Using Device: Single USRP:</div>
        <div class=3D"ContentPasted1">=C2=A0 Device: B-Series Device</div=
>
        <div class=3D"ContentPasted1">=C2=A0 Mboard 0: B210</div>
        <div class=3D"ContentPasted1">=C2=A0 RX Channel: 0</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 RX DSP: 0</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 RX Dboard: A</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 RX Subdev: FE-RX2</di=
v>
        <div class=3D"ContentPasted1">=C2=A0 RX Channel: 1</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 RX DSP: 1</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 RX Dboard: A</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 RX Subdev: FE-RX1</di=
v>
        <div class=3D"ContentPasted1">=C2=A0 TX Channel: 0</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 TX DSP: 0</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 TX Dboard: A</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 TX Subdev: FE-TX2</di=
v>
        <div class=3D"ContentPasted1">=C2=A0 TX Channel: 1</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 TX DSP: 1</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 TX Dboard: A</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 TX Subdev: FE-TX1</di=
v>
        <div><br class=3D"ContentPasted1">
        </div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 Device timestamp: 1.168=
859...</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 [RAU] has loaded USRP B=
200
          device.</div>
        <div class=3D"ContentPasted1">setup_RU_buffers: frame_parms =3D
          0x7f771c2af010</div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 RU 0 Setting N_TA_offs=
et to
          600 samples (factor 1.500000, UL Freq 3600120, N_RB 106, mu 1)<=
/div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 Signaling main thread =
that
          RU 0 is ready, sl_ahead 6</div>
        <div class=3D"ContentPasted1">waiting for sync
          (ru_thread,-1/0x555dd422f2d4,0x555dd4b7e4c0,0x555dd4b7e480)</di=
v>
        <div class=3D"ContentPasted1">RC.ru_mask:00</div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 RUs configured</div>
        <div class=3D"ContentPasted1">ALL RUs READY!</div>
        <div class=3D"ContentPasted1">RC.nb_RU:1</div>
        <div class=3D"ContentPasted1">ALL RUs ready - init gNBs</div>
        <div class=3D"ContentPasted1">Not NFAPI mode - call
          init_eNB_afterRU()</div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 init_eNB_afterRU()
          RC.nb_nr_inst:1</div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0
          RC.nb_nr_CC[inst:0]:0x7f771bd75010</div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 [gNB 0] phy_init_nr_gN=
B()
          About to wait for gNB to be configured</div>
        <div class=3D"ContentPasted1">[LIBCONFIG] loader.dfts: 2/2
          parameters successfully set, (1 to default value)</div>
        <div class=3D"ContentPasted1">shlib_path libdfts.so</div>
        <div class=3D"ContentPasted1">[LOADER] library libdfts.so
          successfully loaded</div>
        <div class=3D"ContentPasted1">[LIBCONFIG] loader.ldpc: 2/2
          parameters successfully set, (1 to default value)</div>
        <div class=3D"ContentPasted1">shlib_path libldpc.so</div>
        <div class=3D"ContentPasted1">[LOADER] library libldpc.so
          successfully loaded</div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 Initialise nr transpor=
t</div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 Mapping RX ports from =
1 RUs
          to gNB 0</div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 gNB-&gt;num_RU:1</div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 Attaching RU 0 antenna=
 0 to
          gNB antenna 0</div>
        <div class=3D"ContentPasted1">create a thread for core -1</div>
        <div class=3D"ContentPasted1">create a thread for core -1</div>
        <div class=3D"ContentPasted1">create a thread for core -1</div>
        <div class=3D"ContentPasted1">create a thread for core -1</div>
        <div class=3D"ContentPasted1">create a thread for core -1</div>
        <div class=3D"ContentPasted1">create a thread for core -1</div>
        <div class=3D"ContentPasted1">create a thread for core -1</div>
        <div class=3D"ContentPasted1">create a thread for core -1</div>
        <div class=3D"ContentPasted1">waiting for sync
          (L1_stats_thread,-1/0x555dd422f2d4,0x555dd4b7e4c0,0x555dd4b7e48=
0)</div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 Creating thread for TX
          reordering and dispatching to RU</div>
        <div class=3D"ContentPasted1">ALL RUs ready - ALL gNBs ready</div=
>
        <div class=3D"ContentPasted1">Sending sync to all threads</div>
        <div class=3D"ContentPasted1">Entering ITTI signals handler</div>
        <div class=3D"ContentPasted1">TYPE &lt;CTRL-C&gt; TO TERMINATE</d=
iv>
        <div class=3D"ContentPasted1">got sync (L1_stats_thread)</div>
        <div class=3D"ContentPasted1">got sync (ru_thread)</div>
        <div class=3D"ContentPasted1">[HW] =C2=A0 current pps at 2.000000=
,
          starting streaming at 3.000000</div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 RU 0 rf device ready</=
div>
        <div class=3D"ContentPasted1">[PHY] =C2=A0 RU 0 RF started opp_en=
abled
          0</div>
        <div class=3D"ContentPasted1">sleep...</div>
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        Please let me know any other details required</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        Regards,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        Sivaneshkumar K<br>
      </div>
    </blockquote>
    This looks like it's just a warning, and has no downstream
    consequences--but I don't know anything about OAI.<br>
    <br>
    <br>
    You could try falling back to an older version of UHD--perhaps 4.1
    and see if this warning goes away.<br>
    <br>
    I assume that the OAI configuration is only configuring one
    channel?=C2=A0=C2=A0 On the B2XX, for two channels, you can't<br>
    =C2=A0 have a clock higher than 32MHz.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:MAXPR01MB35656AAAFC3637BA53236B80D68B9@MAXPR01MB3565.INDPRD01=
.PROD.OUTLOOK.COM">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message,
      including any attachments, is for the sole use of the intended
      recipient(s) and may contain proprietary confidential or
      privileged information or otherwise be protected by law. Any
      unauthorized review, use, disclosure or distribution is
      prohibited. If you are not the intended recipient, please notify
      the sender and destroy all copies and the original message.
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------GEkMtxs7wxvH0lpFW3VQ0rfe--

--===============7990982437275251418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7990982437275251418==--
