Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14297407452
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 03:08:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 12878384C9E
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 21:08:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V3pahCRl";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 88A7438484B
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 21:07:42 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id z12so2468326qvx.5
        for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 18:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=Ri0gaPMxvEcGoD0vXOLuuHGEXdG/B06xhISlAncuUsw=;
        b=V3pahCRlq9YELLleQgN30azyV+NhlmhNlDIiFXhYS5n7RqpKgNSmF35oJQ6um1oJV2
         CrnV4jQY9xHK1k6p2QIwxbJlzZe66x+WW7lX8kXf2DTGQcQGuD926MLCAZRFcAG+b+2G
         xY9xQUfwVk9SF/kvbT58RZ0pKdB1Z8lgYJfo0QAeIw4Mx/pKTuLbdC6ng1oYuHmSRZZ6
         tmnaZU1AP8O5I8TsvsJfbGRVW5HSW6vSum1jpcQiXONXvCxu9h4GCRrhpacwBC+EeB2u
         UIm/VuXYrGuXgUky0+Vxoyr5xkHBN0nn8VvEIgbwr2J4FEdVpTlzTRKblAXBYblbnP4O
         fgsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=Ri0gaPMxvEcGoD0vXOLuuHGEXdG/B06xhISlAncuUsw=;
        b=dExnnPqLYUwSUG9k0w9XWiJ4tDv7BblkaRXG5D0duWu5398ZgLnVMPwSXnviQev0CK
         TxozFoc3cvVS34Av7jwZpTXetjEFDxRu7OKPMTskw/WS0Urdo22mqicwz2V4a8xy0Yyn
         WWEs7aWgZjYMk8W4MynQlOjRVJ0Ji5xT2/Q34leMbgEN2z4D/KBlcCxcpXIq1BWO2m+l
         wM++K+56sdZVkHZyKTTW3wa43O+hyR/4aUn5nl1/E2JBI89yYZfefqwOdNKYCKAnzooY
         U7mloLaE7eoe/xZuicUFQOr19wIFJTyjIVhv73vLY4du0PdTfo9WlgXeiDcEdZoIf2wa
         bz2Q==
X-Gm-Message-State: AOAM532QaOuY12I9Fq9Qs3GW0DIlotHw0V8WfS9pzbAuZkrp2yfGaJ2n
	KkMU3BIW+abPdyU4pDNMgGIKfds7IundHA==
X-Google-Smtp-Source: ABdhPJyz8CB8oLPQhYV+u9ene/rrSZS4evRggO1Ms9+BLyigfph2P98cVCMdA8yf/CK5PMjSMg9ZRQ==
X-Received: by 2002:a05:6214:122e:: with SMTP id p14mr284836qvv.37.1631322461775;
        Fri, 10 Sep 2021 18:07:41 -0700 (PDT)
Received: from [192.168.2.249] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id p123sm231385qke.94.2021.09.10.18.07.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 18:07:41 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <401c2280-1625-fcce-1ae5-a90e95da07e6@gmail.com>
 <75760422-a05d-95d1-10c1-f571ae8dccb2@gmail.com>
 <e255b7bf-ac54-37a7-1c1d-f0c8315b1f83@gmail.com>
 <8c101f57-04d5-6d20-fe37-3e182bb707e0@gmail.com>
 <79146926-b3c3-69d2-5e8a-4323b4c64997@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <7e876aa4-960b-2c6e-f579-8eaabba70bb4@gmail.com>
Date: Fri, 10 Sep 2021 21:07:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <79146926-b3c3-69d2-5e8a-4323b4c64997@gmail.com>
Content-Language: en-US
Message-ID-Hash: KQFTCYYNFZZWY224Z2GTL7Y24I3Y3TOQ
X-Message-ID-Hash: KQFTCYYNFZZWY224Z2GTL7Y24I3Y3TOQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use a usrp b210 with external gpsdo and nmea0183 as clock source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KQFTCYYNFZZWY224Z2GTL7Y24I3Y3TOQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5856201762451373222=="

This is a multi-part message in MIME format.
--===============5856201762451373222==
Content-Type: multipart/alternative;
 boundary="------------936B6821C0845E0C7D646A36"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------936B6821C0845E0C7D646A36
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-10 9:01 p.m., msfu wrote:
>
> the output of uhd_usrp_probe --args type=3Db200 is
>
> msfu@dragonos:~$ uhd_usrp_probe --args type=3Db200 [INFO] [UHD] linux;=20
> GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.0.0-2build5=20
> [INFO] [B200] Detected Device: B210 [INFO] [B200] Loading FPGA image:=20
> /usr/share/uhd/images/usrp_b210_fpga.bin... [INFO] [B200] Operating=20
> over USB 3. [INFO] [B200] Detecting internal GPSDO.... [INFO] [GPS] No=20
> GPSDO found [INFO] [B200] Initialize CODEC control... [INFO] [B200]=20
> Initialize Radio control... [INFO] [B200] Performing register loopback=20
> test... [INFO] [B200] Register loopback test passed [INFO] [B200]=20
> Performing register loopback test... [INFO] [B200] Register loopback=20
> test passed [INFO] [B200] Setting master clock rate selection to=20
> 'automatic'. [INFO] [B200] Asking for clock rate 16.000000 MHz...=20
> ^[[B^[[B^[[B[INFO] [B200] Actually got clock rate 16.000000 MHz.=20
> ^[[B^[[B^[[B _____________________________________________________ / |=20
> Device: B-Series Device |=20
> _____________________________________________________ | / | | Mboard:=20
> B210 | | serial: 8000545 | | name: Zhixun-wireless | | product: 2 | |=20
> revision: 4 | | FW Version: 8.0 | | FPGA Version: 16.0 | | | | Time=20
> sources: none, internal, external, gpsdo | | Clock sources: internal,=20
> external, gpsdo | | Sensors: ref_locked | |=20
> _____________________________________________________ | | / | | | RX=20
> DSP: 0 | | | | | | Freq range: -8.000 to 8.000 MHz | |=20
> _____________________________________________________ | | / | | | RX=20
> DSP: 1 | | | | | | Freq range: -8.000 to 8.000 MHz | |=20
> _____________________________________________________ | | / | | | RX=20
> Dboard: A | | | _____________________________________________________=20
> | | | / | | | | RX Frontend: A | | | | Name: FE-RX2 | | | | Antennas:=20
> TX/RX, RX2 | | | | Sensors: temp, rssi, lo_locked | | | | Freq range:=20
> 50.000 to 6000.000 MHz | | | | Gain range PGA: 0.0 to 76.0 step 1.0 dB=20
> | | | | Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | | |=20
> Connection Type: IQ | | | | Uses LO offset: No | | |=20
> _____________________________________________________ | | | / | | | |=20
> RX Frontend: B | | | | Name: FE-RX1 | | | | Antennas: TX/RX, RX2 | | |=20
> | Sensors: temp, rssi, lo_locked | | | | Freq range: 50.000 to=20
> 6000.000 MHz | | | | Gain range PGA: 0.0 to 76.0 step 1.0 dB | | | |=20
> Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | | | Connection=20
> Type: IQ | | | | Uses LO offset: No | | |=20
> _____________________________________________________ | | | / | | | |=20
> RX Codec: A | | | | Name: B210 RX dual ADC | | | | Gain Elements: None=20
> | | _____________________________________________________ | | / | | |=20
> TX DSP: 0 | | | | | | Freq range: -8.000 to 8.000 MHz | |=20
> _____________________________________________________ | | / | | | TX=20
> DSP: 1 | | | | | | Freq range: -8.000 to 8.000 MHz | |=20
> _____________________________________________________ | | / | | | TX=20
> Dboard: A | | | _____________________________________________________=20
> | | | / | | | | TX Frontend: A | | | | Name: FE-TX2 | | | | Antennas:=20
> TX/RX | | | | Sensors: temp, lo_locked | | | | Freq range: 50.000 to=20
> 6000.000 MHz | | | | Gain range PGA: 0.0 to 89.8 step 0.2 dB | | | |=20
> Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | | | Connection=20
> Type: IQ | | | | Uses LO offset: No | | |=20
> _____________________________________________________ | | | / | | | |=20
> TX Frontend: B | | | | Name: FE-TX1 | | | | Antennas: TX/RX | | | |=20
> Sensors: temp, lo_locked | | | | Freq range: 50.000 to 6000.000 MHz |=20
> | | | Gain range PGA: 0.0 to 89.8 step 0.2 dB | | | | Bandwidth range:=20
> 200000.0 to 56000000.0 step 0.0 Hz | | | | Connection Type: IQ | | | |=20
> Uses LO offset: No | | |=20
> _____________________________________________________ | | | / | | | |=20
> TX Codec: A | | | | Name: B210 TX dual DAC | | | | Gain Elements: None =
=09
>
> =09
>
> and no, there is no internal gpsdo. ;)
>
> i am not a software developer,... i am an rf enthusiast which is=20
> playing with dragon os, a distro for sdr.
>
> the application i want to start is Crocodilehunter. all is running=20
> fine, but the gps can't get no fix so the application is breaking.
>
> i think it has to do with the communication between usrp and pll-gpsdo.
>
>
If your GPS "Mouse" cannot get a fix, that has NOTHING, ZERO, NADA, to=20
do with the USRP.=C2=A0 Utterly unrelated.


--------------936B6821C0845E0C7D646A36
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-10 9:01 p.m., msfu wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:79146926-b3c3-69d2-5e8a-4323b4c64997@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>the output of uhd_usrp_probe --args type=3Db200 is</p>
      <table width=3D"100%" cellspacing=3D"2" cellpadding=3D"2" border=3D=
"1">
        <tbody>
          <tr>
            <td valign=3D"top">msfu@dragonos:~$ uhd_usrp_probe --args
              type=3Db200 [INFO] [UHD] linux; GNU C++ version 9.2.1
              20200304; Boost_107100; UHD_3.15.0.0-2build5 [INFO] [B200]
              Detected Device: B210 [INFO] [B200] Loading FPGA image:
              /usr/share/uhd/images/usrp_b210_fpga.bin... [INFO] [B200]
              Operating over USB 3. [INFO] [B200] Detecting internal
              GPSDO.... [INFO] [GPS] No GPSDO found [INFO] [B200]
              Initialize CODEC control... [INFO] [B200] Initialize Radio
              control... [INFO] [B200] Performing register loopback
              test... [INFO] [B200] Register loopback test passed [INFO]
              [B200] Performing register loopback test... [INFO] [B200]
              Register loopback test passed [INFO] [B200] Setting master
              clock rate selection to 'automatic'. [INFO] [B200] Asking
              for clock rate 16.000000 MHz... ^[[B^[[B^[[B[INFO] [B200]
              Actually got clock rate 16.000000 MHz. ^[[B^[[B^[[B
              _____________________________________________________ / |
              Device: B-Series Device |
              _____________________________________________________ | /
              | | Mboard: B210 | | serial: 8000545 | | name:
              Zhixun-wireless | | product: 2 | | revision: 4 | | FW
              Version: 8.0 | | FPGA Version: 16.0 | | | | Time sources:
              none, internal, external, gpsdo | | Clock sources:
              internal, external, gpsdo | | Sensors: ref_locked | |
              _____________________________________________________ | |
              / | | | RX DSP: 0 | | | | | | Freq range: -8.000 to 8.000
              MHz | |
              _____________________________________________________ | |
              / | | | RX DSP: 1 | | | | | | Freq range: -8.000 to 8.000
              MHz | |
              _____________________________________________________ | |
              / | | | RX Dboard: A | | |
              _____________________________________________________ | |
              | / | | | | RX Frontend: A | | | | Name: FE-RX2 | | | |
              Antennas: TX/RX, RX2 | | | | Sensors: temp, rssi,
              lo_locked | | | | Freq range: 50.000 to 6000.000 MHz | | |
              | Gain range PGA: 0.0 to 76.0 step 1.0 dB | | | |
              Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | |
              | Connection Type: IQ | | | | Uses LO offset: No | | |
              _____________________________________________________ | |
              | / | | | | RX Frontend: B | | | | Name: FE-RX1 | | | |
              Antennas: TX/RX, RX2 | | | | Sensors: temp, rssi,
              lo_locked | | | | Freq range: 50.000 to 6000.000 MHz | | |
              | Gain range PGA: 0.0 to 76.0 step 1.0 dB | | | |
              Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | |
              | Connection Type: IQ | | | | Uses LO offset: No | | |
              _____________________________________________________ | |
              | / | | | | RX Codec: A | | | | Name: B210 RX dual ADC | |
              | | Gain Elements: None | |
              _____________________________________________________ | |
              / | | | TX DSP: 0 | | | | | | Freq range: -8.000 to 8.000
              MHz | |
              _____________________________________________________ | |
              / | | | TX DSP: 1 | | | | | | Freq range: -8.000 to 8.000
              MHz | |
              _____________________________________________________ | |
              / | | | TX Dboard: A | | |
              _____________________________________________________ | |
              | / | | | | TX Frontend: A | | | | Name: FE-TX2 | | | |
              Antennas: TX/RX | | | | Sensors: temp, lo_locked | | | |
              Freq range: 50.000 to 6000.000 MHz | | | | Gain range PGA:
              0.0 to 89.8 step 0.2 dB | | | | Bandwidth range: 200000.0
              to 56000000.0 step 0.0 Hz | | | | Connection Type: IQ | |
              | | Uses LO offset: No | | |
              _____________________________________________________ | |
              | / | | | | TX Frontend: B | | | | Name: FE-TX1 | | | |
              Antennas: TX/RX | | | | Sensors: temp, lo_locked | | | |
              Freq range: 50.000 to 6000.000 MHz | | | | Gain range PGA:
              0.0 to 89.8 step 0.2 dB | | | | Bandwidth range: 200000.0
              to 56000000.0 step 0.0 Hz | | | | Connection Type: IQ | |
              | | Uses LO offset: No | | |
              _____________________________________________________ | |
              | / | | | | TX Codec: A | | | | Name: B210 TX dual DAC | |
              | | Gain Elements: None </td>
            <td valign=3D"top"><br>
            </td>
          </tr>
          <tr>
            <td valign=3D"top"><br>
            </td>
            <td valign=3D"top"><br>
            </td>
          </tr>
        </tbody>
      </table>
      <p>and no, there is no internal gpsdo. ;)</p>
      <p>i am not a software developer,... i am an rf enthusiast which
        is playing with dragon os, a distro for sdr.</p>
      <p>the application i want to start is Crocodilehunter. all is
        running fine, but the gps can't get no fix so the application is
        breaking.<br>
      </p>
      <p>i think it has to do with the communication between usrp and
        pll-gpsdo.</p>
      <br>
    </blockquote>
    If your GPS "Mouse" cannot get a fix, that has NOTHING, ZERO, NADA,
    to do with the USRP.=C2=A0 Utterly unrelated.<br>
    <br>
  </body>
</html>

--------------936B6821C0845E0C7D646A36--

--===============5856201762451373222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5856201762451373222==--
