Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB5E43CDF0
	for <lists+usrp-users@lfdr.de>; Wed, 27 Oct 2021 17:48:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28D53384713
	for <lists+usrp-users@lfdr.de>; Wed, 27 Oct 2021 11:48:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aHtrL844";
	dkim-atps=neutral
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 640CB38458D
	for <usrp-users@lists.ettus.com>; Wed, 27 Oct 2021 11:48:15 -0400 (EDT)
Received: by mail-il1-f173.google.com with SMTP id y17so3404449ilb.9
        for <usrp-users@lists.ettus.com>; Wed, 27 Oct 2021 08:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=vCYG9XvBHwFoT7F7r25q2vJRQIhakt5igL+kGPO3Jig=;
        b=aHtrL844HJu/9jICIMLcHlvucz1h8h2jIwjhVrQZuIrBoyCLY8Iuqdihab4Gpn+BOY
         zxNYFRgqG6mYGaqKygD5m+IMUFljUBgaMQ/BMLzxmL8zz+y1eCK5OxULJsyl/L5SmkVb
         +tKI1KJO0Gvt+P8ofZ2ft9noXq99CjgdupRd59eWGqYPrCzz2B5X7RsbYSTymvPr7ytj
         abl5Tlhcw5oUKneb32JAiEU0xz3OXp7T8lfLBqN3iGgI0J3gUjwU9piflUTjy4gyQILc
         9p0BEfeWGBq72ZmlORu8QxSd5UNzC/PVlFu+pxYAgUplE+dhiz+GI0euLMAICzZEdJOk
         YvCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=vCYG9XvBHwFoT7F7r25q2vJRQIhakt5igL+kGPO3Jig=;
        b=brwdt3J40VJCy8Fs4G8d2Rv8gIgKx4Mg9By2WLAQxlpRH6VHaEPxzG7Vy203vRWa9w
         FhjN9LCZDRIFc7t/7CWPrANAPXsB+HzE8eTR6vf+0Jy01S8QLTX5ey3Wz5imYziJbYrY
         uH+MsIsdVecPntsecnCT8Ey8VVABFUQsODFykEizgG6+qsuelo830rKurJyyhK4pRug8
         I0sYgi1IL28pKBQFpQOALe3/s/RxM4wofZVsfN6idRuE+NqoU9voWaImXyr5gTvU6izG
         ZzKrzFOt76ksTGx5Qw47D0NgiLvy+ZOQG7oSWhaC9NbIjexzk0uoxgyHjh+yAkSnmBV6
         9iYA==
X-Gm-Message-State: AOAM533TfNrpCFtOcgfCF5xFnQpdKNtdL/aAZ7xBn5n4TXaZaaD1mskN
	H8Nj2u5o5JJJJVwisAbj2kY=
X-Google-Smtp-Source: ABdhPJyJ9kcP4zGFlN82HQTwhqGJcBWBc3zK0ATKvHZMBFI7pakXvzYKXHORiqpPcX1b+CXyg8R9hw==
X-Received: by 2002:a05:6e02:1747:: with SMTP id y7mr19667812ill.95.1635349694677;
        Wed, 27 Oct 2021 08:48:14 -0700 (PDT)
Received: from [192.168.2.240] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id w2sm157110iou.0.2021.10.27.08.48.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Oct 2021 08:48:14 -0700 (PDT)
Message-ID: <a937c74e-a7a2-ac21-f0bb-2ce70661dff6@gmail.com>
Date: Wed, 27 Oct 2021 11:48:12 -0400
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
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFPzw1=msL8DRnJ52tPNyx6QqJxxU3MXTWsCSJbQ53ap2WxJ_g@mail.gmail.com>
Message-ID-Hash: I5WWYX4TSCL5HR6SJUV2UZWUPSXDM5Q5
X-Message-ID-Hash: I5WWYX4TSCL5HR6SJUV2UZWUPSXDM5Q5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I5WWYX4TSCL5HR6SJUV2UZWUPSXDM5Q5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2599115636369747057=="

This is a multi-part message in MIME format.
--===============2599115636369747057==
Content-Type: multipart/alternative;
 boundary="------------lXjQQhywSvNTESsr3cChC0Ib"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lXjQQhywSvNTESsr3cChC0Ib
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-27 11:37, Anabel Almodovar wrote:
> Hello,
>
> When I run a benchmark_rate example it indicates that there are no=20
> sample losses even with 30s of acquisition.
> /*
> */
> /*rack_2021@rack-HP-Z4-G4-Workstation:~/workarea-uhd/uhd/host/examples/=
build$=20
> sudo ./benchmark_rate=20
> --args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=
=3D900000000"=20
> --channels=3D"0,1" --rx_rate 200e6 --duration 30 --rx_subdev=3D"A:0 B:0=
"
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;=20
> UHD_4.1.0.HEAD-0-gd21735d5
> [00:00:00.000677] Creating the usrp device with:=20
> addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D9000000=
00...
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Using Device: Single USRP:
> =C2=A0 Device: X-Series Device
> =C2=A0 Mboard 0: X310
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: 0
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: UBX RX
> =C2=A0 RX Channel: 1
> =C2=A0 =C2=A0 RX DSP: 1
> =C2=A0 =C2=A0 RX Dboard: B
> =C2=A0 =C2=A0 RX Subdev: UBX RX
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: 0
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: UBX TX
> =C2=A0 TX Channel: 1
> =C2=A0 =C2=A0 TX DSP: 1
> =C2=A0 =C2=A0 TX Dboard: B
> =C2=A0 =C2=A0 TX Subdev: UBX TX
>
> [00:00:02.923799498] Setting device timestamp to 0...
> [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at pps edge
> [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps (synchronously)
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> [00:00:04.262875535] Testing receive rate 200.000000 Msps on 2 channels
> [00:00:34.313774651] Benchmark complete.
>
> Benchmark rate summary:
> =C2=A0 Num received samples: =C2=A0 =C2=A0 12000000380
> =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00
> =C2=A0 Num overruns detected: =C2=A0 =C2=A00
> =C2=A0 Num transmitted samples: =C2=A00
> =C2=A0 Num sequence errors (Tx): 0
> =C2=A0 Num sequence errors (Rx): 0
> =C2=A0 Num underruns detected: =C2=A0 0
> =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00
> =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
> =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
>
> Done!*/
>
> However, when I run rx_samples_to_file I get overflows from 8 sec for=20
> a single receiving channel.
>
> /*sudo ./rx_samples_to_file=20
> =C2=A0--file=3D"/home/rack_2021/Escritorio/pruebas_codigos_agosto/usrp_=
samples.dat"=20
> --duration 8=20
> --args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=
=3D900000000"=20
> --channel=3D"0" --subdev=3D"A:0" --rate 200e6 --bw 200e6 --gain 5 --fre=
q 800e6
>
> Creating the usrp device with:=20
> addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D9000000=
00...
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;=20
> UHD_4.1.0.HEAD-0-gd21735d5
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Using Device: Single USRP:
> =C2=A0 Device: X-Series Device
> =C2=A0 Mboard 0: X310
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: 0
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: UBX RX
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: 0
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: UBX TX
> =C2=A0 TX Channel: 1
> =C2=A0 =C2=A0 TX DSP: 1
> =C2=A0 =C2=A0 TX Dboard: B
> =C2=A0 =C2=A0 TX Subdev: UBX TX
>
> Setting RX Rate: 200.000000 Msps...
> Actual RX Rate: 200.000000 Msps...
>
> Setting RX Freq: 800.000000 MHz...
> Setting RX LO Offset: 0.000000 MHz...
> Actual RX Freq: 800.000000 MHz...
>
> Setting RX Gain: 5.000000 dB...
> Actual RX Gain: 5.000000 dB...
>
> Setting RX Bandwidth: 200.000000 MHz...
> Actual RX Bandwidth: 200.000000 MHz...
>
> Waiting for "lo_locked": ++++++++++ locked.
>
> Press Ctrl + C to stop streaming...
> O
> Done!*/
>
> I am using a native Ubuntu, not a VM and I have the CPU governor set=20
> to "performance".
>
> I have managed to patch the code that worked for me before updating=20
> the system to the new versions of Ubuntu and UHD, so I ask for more=20
> samples than I want since I have observed that the recv () reception=20
> buffer is not always constant and it does not always acquire the=20
> maximum number of samples as I request (1996 samples), at least not at=20
> the beginning. But I would like to know the cause of this so that I=20
> can fix it and why GNU Radio keeps giving me the same error.
>
> Thanks in advance.
> Regards,
> Anabel
>
The recv() call doesn't necessarily guarantee that you'll get all the=20
samples you asked for in that call, as far as I know. It isn't=20
surprising that there would be slight differences
 =C2=A0 in behavior across different versions of UHD and OS versions in t=
his=20
regard.=C2=A0 You always have to be prepared to receive fewer samples tha=
n=20
you asked for.

If Gnu Radio applications are producing overruns, that is firmly in the=20
territory of Gnu Radio, and NOT UHD.=C2=A0=C2=A0 Clearly, on your machine=
, UHD is=20
able to sustain 200e6 SPS.
 =C2=A0 But as you add layers of application processing, the system is mo=
re=20
heavily loaded.=C2=A0 Gnu Radio actually "does things" with the samples,=20
which means the
 =C2=A0 instructions-per-sample is MUCH higher than your simple=20
rx_samples_to_file test.


--------------lXjQQhywSvNTESsr3cChC0Ib
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-27 11:37, Anabel Almodovar
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFPzw1=3DmsL8DRnJ52tPNyx6QqJxxU3MXTWsCSJbQ53ap2WxJ_g@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hello,</div>
        <div><br>
        </div>
        <div>When I run a benchmark_rate example it indicates that there
          are no sample losses even with 30s of acquisition. <br>
        </div>
        <div><i><b><br>
            </b></i></div>
        <div><i><b>rack_2021@rack-HP-Z4-G4-Workstation:~/workarea-uhd/uhd=
/host/examples/build$
              sudo ./benchmark_rate
--args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D=
900000000"
              --channels=3D"0,1" --rx_rate 200e6 --duration 30
              --rx_subdev=3D"A:0 B:0" <br>
              <br>
              [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
              UHD_4.1.0.HEAD-0-gd21735d5<br>
              [00:00:00.000677] Creating the usrp device with:
              addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_si=
ze=3D900000000...<br>
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
              [00:00:02.923799498] Setting device timestamp to 0...<br>
              [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition =
at pps
              edge<br>
              [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps
              (synchronously)<br>
              [WARNING] [0/Radio#0] Attempting to set tick rate to 0.
              Skipping.<br>
              [WARNING] [0/Radio#1] Attempting to set tick rate to 0.
              Skipping.<br>
              [00:00:04.262875535] Testing receive rate 200.000000 Msps
              on 2 channels<br>
              [00:00:34.313774651] Benchmark complete.<br>
              <br>
              Benchmark rate summary:<br>
              =C2=A0 Num received samples: =C2=A0 =C2=A0 12000000380<br>
              =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00<br>
              =C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>
              =C2=A0 Num transmitted samples: =C2=A00<br>
              =C2=A0 Num sequence errors (Tx): 0<br>
              =C2=A0 Num sequence errors (Rx): 0<br>
              =C2=A0 Num underruns detected: =C2=A0 0<br>
              =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
              =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
              =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
              <br>
              Done!</b></i><br>
        </div>
        <div><br>
        </div>
        <div>However, when I run rx_samples_to_file I get overflows from
          8 sec for a single receiving channel.</div>
        <div><br>
        </div>
        <div><i><b>sudo ./rx_samples_to_file
=C2=A0--file=3D"/home/rack_2021/Escritorio/pruebas_codigos_agosto/usrp_sa=
mples.dat"
              --duration 8
--args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D=
900000000"
              --channel=3D"0" --subdev=3D"A:0" --rate 200e6 --bw 200e6
              --gain 5 --freq 800e6<br>
              <br>
              Creating the usrp device with:
              addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_si=
ze=3D900000000...<br>
              [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
              UHD_4.1.0.HEAD-0-gd21735d5<br>
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
        <div>I am using a native Ubuntu, not a VM and I have the CPU
          governor set to "performance".</div>
        <div><br>
        </div>
        <div>I have managed to patch the code that worked for me before
          updating the system to the new versions of Ubuntu and UHD, so
          I ask for more samples than I want since I have observed that
          the recv () reception buffer is not always constant and it
          does not always acquire the maximum number of samples as I
          request (1996 samples), at least not at the beginning. But I
          would like to know the cause of this so that I can fix it and
          why GNU Radio keeps giving me the same error.</div>
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
    The recv() call doesn't necessarily guarantee that you'll get all
    the samples you asked for in that call, as far as I know. It isn't
    surprising that there would be slight differences<br>
    =C2=A0 in behavior across different versions of UHD and OS versions i=
n
    this regard.=C2=A0 You always have to be prepared to receive fewer
    samples than you asked for.<br>
    <br>
    If Gnu Radio applications are producing overruns, that is firmly in
    the territory of Gnu Radio, and NOT UHD.=C2=A0=C2=A0 Clearly, on your=
 machine,
    UHD is able to sustain 200e6 SPS.<br>
    =C2=A0 But as you add layers of application processing, the system is
    more heavily loaded.=C2=A0 Gnu Radio actually "does things" with the
    samples, which means the<br>
    =C2=A0 instructions-per-sample is MUCH higher than your simple
    rx_samples_to_file test.<br>
    <br>
    <br>
  </body>
</html>
--------------lXjQQhywSvNTESsr3cChC0Ib--

--===============2599115636369747057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2599115636369747057==--
