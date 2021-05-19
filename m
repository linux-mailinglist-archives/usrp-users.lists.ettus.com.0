Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1D6389A11
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 01:47:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CB3D3866BF
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 19:47:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ouhL+QC3";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D75D385D98
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 19:46:28 -0400 (EDT)
Received: by mail-qk1-f175.google.com with SMTP id f18so14536380qko.7
        for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 16:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=/lgpLhA1x5vXzSxRbnW3QlVg2P3fqdeGVq2c6dVndXs=;
        b=ouhL+QC3Pof2XDJ16SDrGxRpBj7yLAGfPI/UrCjbZLGEtWG6MKS0y9fCHloWyV7gPe
         GMqMSXU6LSK4XZotXCQHnl2oV7qzQ9uL+L0FBJEzW/vOHyOMzcNaF9ieOHfn2i5//Nmi
         WauIelOAyutLvdye08W6JfwN61kPRt2QjeUrsaOCAbx0nd/InxGJmyGFejX1lqzGXjg2
         0QMUFA2AhdvW/OwXxqsVKD4udhs87qqFuIsyZq6z62MeCRzHuNgtQWkZvioIT9FdKB2T
         VdfZLn27m3ZXgn8FOB8VkoIj4j+ycMUw87gYX/SN7vP6HGcF1yX1YvA+1o++PmAFi66s
         5Sew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=/lgpLhA1x5vXzSxRbnW3QlVg2P3fqdeGVq2c6dVndXs=;
        b=RuZj8qP/g54YxBAFDSnhbDTAfdmFdI/fFkfOqBAf1c9KeWlzw7Kq+QxvxiYTbX/NNn
         v2tK6jqSW1UGMp5QQZn2rDg+S+/i3Q6nXezSKQ+zDeykgeYXae/J7PlumVrQW9/JwBOY
         yeMk7dBjquUv8JWIs60paF8z0RCBDf+DK9INOA8w4D3+5WHRUQqwvMazxgWGVRMs8hnD
         xf/6jtufuVuv862pQp4Fp8pYXvfHdadg44/slDDPKXsScqH8ka/Fchyym8XHHP5YL3oP
         b3ULBZRrIs4uCdndp8fgFvxlo5jG+JhsKRHsXLmtO4mO5nfwvWgs2KwhhAJE4drIUNDv
         1R0Q==
X-Gm-Message-State: AOAM532y7iWl8oyVmFBznyzvnJW0bMKs1ytIq/mgIeONNBu/cK7Y86j2
	YwytWtECz1gexgt5DFo3yoWJi5RQ3fw=
X-Google-Smtp-Source: ABdhPJxD/jJwJbobO27VFl5Exoy6fOPV++IDEiCWIBT0y1iOiZIv5A5Sf70/OOMpgAWO2D8gMi7Yxw==
X-Received: by 2002:a37:4396:: with SMTP id q144mr2120647qka.44.1621467987372;
        Wed, 19 May 2021 16:46:27 -0700 (PDT)
Received: from ?IPv6:2600:380:181b:1b01:3819:c4c6:1a74:7f3f? ([2600:380:181b:1b01:3819:c4c6:1a74:7f3f])
        by smtp.gmail.com with ESMTPSA id t63sm953522qkd.25.2021.05.19.16.46.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 16:46:26 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 19 May 2021 19:46:25 -0400
Message-Id: <36ADAA7A-2EBD-4643-B508-728661E5A5C6@gmail.com>
References: <S8Vnwge9bvGrKd6ISZo3x6BvQIKflXPyT80l1wUxfH8@lists.ettus.com>
In-Reply-To: <S8Vnwge9bvGrKd6ISZo3x6BvQIKflXPyT80l1wUxfH8@lists.ettus.com>
To: jcasallas2019@gmail.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: FD753GYABLWCR3I3B6WBISQ2YETFWUBT
X-Message-ID-Hash: FD753GYABLWCR3I3B6WBISQ2YETFWUBT
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting up gr-fosphor on uhd 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FD753GYABLWCR3I3B6WBISQ2YETFWUBT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8639790311659534184=="


--===============8639790311659534184==
Content-Type: multipart/alternative; boundary=Apple-Mail-45F6E80D-B505-42C7-BDA7-9037EF59316B
Content-Transfer-Encoding: 7bit


--Apple-Mail-45F6E80D-B505-42C7-BDA7-9037EF59316B
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Just for sanity, this is the post I used to get all the settings correct.=20=

So far it=E2=80=99s the only documentation I can find for how to set up UHD 4=
.0 with fosphor.=20

http://ettus.80997.x6.nabble.com/USRP-users-setting-up-gr-fosphor-on-uhd-4-t=
d16532.html

I also had some issues with the QT window locking up the widget controls, so=
 I used zmq sockets to pipe the 2 byte streams into another flowgraph that h=
osts the fosphor display.=20

<end transmission>

> On May 19, 2021, at 13:11, jcasallas2019@gmail.com wrote:
>=20
> =EF=BB=BF
> Yes. please have a look.
>=20
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge=
520e3ff
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> [INFO] [X300] Radio 1x clock: 200 MHz
>   _____________________________________________________
>  /
> |       Device: X-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: X310
> |   |   revision: 11
> |   |   revision_compat: 7
> |   |   product: 30818
> |   |   mac-addr0: 00:80:2f:22:ff:b4
> |   |   mac-addr1: 00:80:2f:22:ff:b5
> |   |   gateway: 192.168.10.1
> |   |   ip-addr0: 192.168.10.2
> |   |   subnet0: 255.255.255.0
> |   |   ip-addr1: 192.168.20.2
> |   |   subnet1: 255.255.255.0
> |   |   ip-addr2: 192.168.30.2
> |   |   subnet2: 255.255.255.0
> |   |   ip-addr3: 192.168.40.2
> |   |   subnet3: 255.255.255.0
> |   |   serial: 3176C83
> |   |   FW Version: 6.0
> |   |   FPGA Version: 38.0
> |   |   FPGA git hash: e520e3f-dirty
> |   |
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: internal, external, gpsdo
> |   |   Sensors: gps_servo, gps_gprmc, gps_time, gps_gpgga, gps_locked, re=
f_locked
> |     _____________________________________________________
> |    /
> |   |       RFNoC blocks on this device:
> |   |
> |   |   * 0/DDC#0
> |   |   * 0/DDC#1
> |   |   * 0/DUC#0
> |   |   * 0/DUC#1
> |   |   * 0/FFT#0
> |   |   * 0/Fosphor#0
> |   |   * 0/Radio#0
> |   |   * 0/Radio#1
> |     _____________________________________________________
> |    /
> |   |       Static connections on this device:
> |   |
> |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
> |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
> |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
> |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
> |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
> |   |   * 0/SEP#2:0=3D=3D>0/DUC#1:0
> |   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
> |   |   * 0/Radio#1:0=3D=3D>0/DDC#1:0
> |   |   * 0/DDC#1:0=3D=3D>0/SEP#2:0
> |   |   * 0/Radio#1:1=3D=3D>0/DDC#1:1
> |   |   * 0/DDC#1:1=3D=3D>0/SEP#3:0
> |   |   * 0/SEP#4:0=3D=3D>0/FFT#0:0
> |   |   * 0/FFT#0:0=3D=3D>0/SEP#4:0
> |   |   * 0/SEP#5:0=3D=3D>0/Fosphor#0:0
> |   |   * 0/Fosphor#0:0=3D=3D>0/SEP#5:0
> |   |   * 0/Fosphor#0:1=3D=3D>0/SEP#6:0
> |     _____________________________________________________
> |    /
> |   |       TX Dboard: dboard
> |   |   ID: UBX-160 v2 (0x007d)
> |   |   Serial: 315EA14
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Frontend: 0
> |   |   |   Name: UBX TX
> |   |   |   Antennas: TX/RX, CAL
> |   |   |   Sensors: lo_locked
> |   |   |   Freq range: 10.000 to 6000.000 MHz
> |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> |   |   |   Connection Type: QI
> |   |   |   Uses LO offset: No
> |     _____________________________________________________
> |    /
> |   |       RX Dboard: dboard
> |   |   ID: UBX-160 v2 (0x007e)
> |   |   Serial: 315EA14
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Frontend: 0
> |   |   |   Name: UBX RX
> |   |   |   Antennas: TX/RX, RX2, CAL
> |   |   |   Sensors: lo_locked
> |   |   |   Freq range: 10.000 to 6000.000 MHz
> |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
> |     _____________________________________________________
> |    /
> |   |       TX Dboard: dboard
> |   |   ID: UBX-160 v2 (0x007d)
> |   |   Serial: 3158364
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Frontend: 0
> |   |   |   Name: UBX TX
> |   |   |   Antennas: TX/RX, CAL
> |   |   |   Sensors: lo_locked
> |   |   |   Freq range: 10.000 to 6000.000 MHz
> |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> |   |   |   Connection Type: QI
> |   |   |   Uses LO offset: No
> |     _____________________________________________________
> |    /
> |   |       RX Dboard: dboard
> |   |   ID: UBX-160 v2 (0x007e)
> |   |   Serial: 3158364
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Frontend: 0
> |   |   |   Name: UBX RX
> |   |   |   Antennas: TX/RX, RX2, CAL
> |   |   |   Sensors: lo_locked
> |   |   |   Freq range: 10.000 to 6000.000 MHz
> |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
>=20
>=20
> THANKS
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-45F6E80D-B505-42C7-BDA7-9037EF59316B
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Just for sanity, this is the post I used to=
 get all the settings correct.&nbsp;<div>So far it=E2=80=99s the only docume=
ntation I can find for how to set up UHD 4.0 with fosphor.&nbsp;</div><div><=
br></div><div><p style=3D"margin: 0px; font-stretch: normal; font-size: 12px=
; line-height: normal; font-family: Helvetica;"><a href=3D"http://ettus.8099=
7.x6.nabble.com/USRP-users-setting-up-gr-fosphor-on-uhd-4-td16532.html">http=
://ettus.80997.x6.nabble.com/USRP-users-setting-up-gr-fosphor-on-uhd-4-td165=
32.html</a></p><div><br></div><div>I also had some issues with the QT window=
 locking up the widget controls, so I used zmq sockets to pipe the 2 byte st=
reams into another flowgraph that hosts the fosphor display.&nbsp;</div><br>=
<div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-h=
ighlight-color: rgba(26, 26, 26, 0.298);">end transmission&gt;</span></div><=
div dir=3D"ltr"><br><blockquote type=3D"cite">On May 19, 2021, at 13:11, jca=
sallas2019@gmail.com wrote:<br><br></blockquote></div><blockquote type=3D"ci=
te"><div dir=3D"ltr">=EF=BB=BF<p>Yes. please have a look.</p><pre><code>[INFO=
] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff=

[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30818
|   |   mac-addr0: 00:80:2f:22:ff:b4
|   |   mac-addr1: 00:80:2f:22:ff:b5
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 3176C83
|   |   FW Version: 6.0
|   |   FPGA Version: 38.0
|   |   FPGA git hash: e520e3f-dirty
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: gps_servo, gps_gprmc, gps_time, gps_gpgga, gps_locked, ref_=
locked
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/FFT#0
|   |   * 0/Fosphor#0
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0
|   |   * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0
|   |   * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0
|   |   * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0
|   |   * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1
|   |   * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0
|   |   * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0
|   |   * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0
|   |   * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0
|   |   * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0
|   |   * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1
|   |   * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0
|   |   * 0/SEP#4:0=3D=3D&gt;0/FFT#0:0
|   |   * 0/FFT#0:0=3D=3D&gt;0/SEP#4:0
|   |   * 0/SEP#5:0=3D=3D&gt;0/Fosphor#0:0
|   |   * 0/Fosphor#0:0=3D=3D&gt;0/SEP#5:0
|   |   * 0/Fosphor#0:1=3D=3D&gt;0/SEP#6:0
|     _____________________________________________________
|    /
|   |       TX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 315EA14
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 315EA14
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 3158364
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: dboard
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 3158364
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No


THANKS</code></pre><pre><code><br></code></pre>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-45F6E80D-B505-42C7-BDA7-9037EF59316B--

--===============8639790311659534184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8639790311659534184==--
