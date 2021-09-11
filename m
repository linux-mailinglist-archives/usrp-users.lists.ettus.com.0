Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB33140744B
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 02:56:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8F903846D4
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 20:56:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Mz/YnYnT";
	dkim-atps=neutral
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C4BE3844F0
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 20:56:02 -0400 (EDT)
Received: by mail-wr1-f44.google.com with SMTP id q11so5022443wrr.9
        for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 17:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=G+hkKmYzn12cZhflkx1ZnKlbC9CT19Rimbum2JQEN5s=;
        b=Mz/YnYnTvk1sRnQ12T9WHMPEV8Z2YdiMCFuBPdCXB34hv6b8JaRi5AtHb4sFafsl/E
         PANwc/J77AAIWZyWSNIVvsxohpYs3fKiXjWdrX2opjCldxJwNQnLc/NFLVoDpbYI5h8l
         2+oL/AZtXtPmr1sexkSu8AlrG3onR/sTUkubKUAlZubywK6JdEjaBjddV5VJ5dBdOOOO
         9PzZ3t7g2Ti3NgTDNH3n7xPEhPanb5TqmWAlcmdgjBpafNfLmLWKjTdOYVE68LmxSzB7
         gisIyeW6L6X+GheLhoMGjrcVAyKKEaZdQP83noDg6Lu9SAMFM87Lv6uJMkQPClQ3I0sh
         0sAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=G+hkKmYzn12cZhflkx1ZnKlbC9CT19Rimbum2JQEN5s=;
        b=e2IjLceogZy0vv4JHF394OafAFbGI5JHu2SL3/wXWXbUuraVwy3keKeWkQoE9YMtWO
         T9fNvHyqkQUN0Fl4L+Mkuq7LYObqtQ9tGdNQ5paLv1oWSQwrUpJbf2fhQ9vp9Sz9gsc4
         mBmcFReUh/4WneKMz/A738AZu9953e4O0JsZQLku+IgXrX1YV+kXqlp1f6lJc5fZ0Rxt
         2JSQx6rBxxCt18f/WEzor0MWZ2Z4Z9VT/VUjRPu1LQ78fTDx3pdsiHI8ADaJAnje6BHC
         GV/gM4IiLrvGqHXaVQyWbKS+tOoHQdFpLPzzPlFPMpgKEJE7RbQfbpT8BH6fgHJQNm3b
         Q86A==
X-Gm-Message-State: AOAM532lfvZPoqAR99M9/bng8hDUc7SZpDUjDqeWL5FxF47uUgAOfTnh
	LG96NXaFsN0hOXUF/PTnze7+GImWL2aXlg==
X-Google-Smtp-Source: ABdhPJzezBThwGuZ5N4J/LfnGjPJrgQtLAj9PCgJCpQCAmLYtY4OhBJL0ef5LNdSIGB505o/19787A==
X-Received: by 2002:a5d:64a7:: with SMTP id m7mr492238wrp.171.1631321760921;
        Fri, 10 Sep 2021 17:56:00 -0700 (PDT)
Received: from ?IPv6:2a02:908:1c11:83a0:711b:5400:643c:491? ([2a02:908:1c11:83a0:711b:5400:643c:491])
        by smtp.gmail.com with ESMTPSA id n13sm182471wmq.3.2021.09.10.17.56.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 17:56:00 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <401c2280-1625-fcce-1ae5-a90e95da07e6@gmail.com>
 <75760422-a05d-95d1-10c1-f571ae8dccb2@gmail.com>
 <e255b7bf-ac54-37a7-1c1d-f0c8315b1f83@gmail.com>
 <8c101f57-04d5-6d20-fe37-3e182bb707e0@gmail.com>
From: msfu <msfu666@gmail.com>
Message-ID: <79146926-b3c3-69d2-5e8a-4323b4c64997@gmail.com>
Date: Sat, 11 Sep 2021 03:01:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <8c101f57-04d5-6d20-fe37-3e182bb707e0@gmail.com>
Content-Language: en-US
Message-ID-Hash: FGZPYQZCTXFCNK2MBNNWIFWMNV6SBQP3
X-Message-ID-Hash: FGZPYQZCTXFCNK2MBNNWIFWMNV6SBQP3
X-MailFrom: msfu666@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use a usrp b210 with external gpsdo and nmea0183 as clock source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FGZPYQZCTXFCNK2MBNNWIFWMNV6SBQP3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0054289013202557123=="

This is a multi-part message in MIME format.
--===============0054289013202557123==
Content-Type: multipart/alternative;
 boundary="------------0BCD1EC554633A513394BCE4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0BCD1EC554633A513394BCE4
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

the output of uhd_usrp_probe --args type=3Db200 is

msfu@dragonos:~$ uhd_usrp_probe --args type=3Db200 [INFO] [UHD] linux; GN=
U
C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.0.0-2build5 [INFO]
[B200] Detected Device: B210 [INFO] [B200] Loading FPGA image:
/usr/share/uhd/images/usrp_b210_fpga.bin... [INFO] [B200] Operating over
USB 3. [INFO] [B200] Detecting internal GPSDO.... [INFO] [GPS] No GPSDO
found [INFO] [B200] Initialize CODEC control... [INFO] [B200] Initialize
Radio control... [INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed [INFO] [B200] Performing
register loopback test... [INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'. [INFO]
[B200] Asking for clock rate 16.000000 MHz... ^[[B^[[B^[[B[INFO] [B200]
Actually got clock rate 16.000000 MHz. ^[[B^[[B^[[B
_____________________________________________________ / | Device:
B-Series Device | _____________________________________________________
| / | | Mboard: B210 | | serial: 8000545 | | name: Zhixun-wireless | |
product: 2 | | revision: 4 | | FW Version: 8.0 | | FPGA Version: 16.0 |
| | | Time sources: none, internal, external, gpsdo | | Clock sources:
internal, external, gpsdo | | Sensors: ref_locked | |
_____________________________________________________ | | / | | | RX
DSP: 0 | | | | | | Freq range: -8.000 to 8.000 MHz | |
_____________________________________________________ | | / | | | RX
DSP: 1 | | | | | | Freq range: -8.000 to 8.000 MHz | |
_____________________________________________________ | | / | | | RX
Dboard: A | | | _____________________________________________________ |
| | / | | | | RX Frontend: A | | | | Name: FE-RX2 | | | | Antennas:
TX/RX, RX2 | | | | Sensors: temp, rssi, lo_locked | | | | Freq range:
50.000 to 6000.000 MHz | | | | Gain range PGA: 0.0 to 76.0 step 1.0 dB |
| | | Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | | |
Connection Type: IQ | | | | Uses LO offset: No | | |
_____________________________________________________ | | | / | | | | RX
Frontend: B | | | | Name: FE-RX1 | | | | Antennas: TX/RX, RX2 | | | |
Sensors: temp, rssi, lo_locked | | | | Freq range: 50.000 to 6000.000
MHz | | | | Gain range PGA: 0.0 to 76.0 step 1.0 dB | | | | Bandwidth
range: 200000.0 to 56000000.0 step 0.0 Hz | | | | Connection Type: IQ |
| | | Uses LO offset: No | | |
_____________________________________________________ | | | / | | | | RX
Codec: A | | | | Name: B210 RX dual ADC | | | | Gain Elements: None | |
_____________________________________________________ | | / | | | TX
DSP: 0 | | | | | | Freq range: -8.000 to 8.000 MHz | |
_____________________________________________________ | | / | | | TX
DSP: 1 | | | | | | Freq range: -8.000 to 8.000 MHz | |
_____________________________________________________ | | / | | | TX
Dboard: A | | | _____________________________________________________ |
| | / | | | | TX Frontend: A | | | | Name: FE-TX2 | | | | Antennas:
TX/RX | | | | Sensors: temp, lo_locked | | | | Freq range: 50.000 to
6000.000 MHz | | | | Gain range PGA: 0.0 to 89.8 step 0.2 dB | | | |
Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | | | Connection
Type: IQ | | | | Uses LO offset: No | | |
_____________________________________________________ | | | / | | | | TX
Frontend: B | | | | Name: FE-TX1 | | | | Antennas: TX/RX | | | |
Sensors: temp, lo_locked | | | | Freq range: 50.000 to 6000.000 MHz | |
| | Gain range PGA: 0.0 to 89.8 step 0.2 dB | | | | Bandwidth range:
200000.0 to 56000000.0 step 0.0 Hz | | | | Connection Type: IQ | | | |
Uses LO offset: No | | |
_____________________________________________________ | | | / | | | | TX
Codec: A | | | | Name: B210 TX dual DAC | | | | Gain Elements: None =09

=09

and no, there is no internal gpsdo. ;)

i am not a software developer,... i am an rf enthusiast which is playing
with dragon os, a distro for sdr.

the application i want to start is Crocodilehunter. all is running fine,
but the gps can't get no fix so the application is breaking.

i think it has to do with the communication between usrp and pll-gpsdo.



On 9/11/21 1:44 AM, Marcus D. Leech wrote:
> On 2021-09-10 6:55 p.m., msfu wrote:
>>
>>
>> what does a command look like to set clock and time_source to external=
?
> Setting the clock configuration is something that every application
> that uses a USRP has to do
> =C2=A0 as part of establishing a session with the USRP device.
>>
>> i don*t really know how to handle API Calls.
> So, you're not really a software developer, but are using some
> *APPLICATION* that happens
> =C2=A0 to use USRPs?=C2=A0 What is the application?=C2=A0 There are hun=
dreds and
> hundreds of SDR-using
> =C2=A0 applications out in the field that use USRPs and other SDRs.=C2=A0=
 We
> can't possibly tell you
> =C2=A0 how to use and configure each of those.
>
> That *application* would need to provide a way to configure the clock
> and 1PPS sources when
> =C2=A0it starts a session with the device.
>>
>> I am trying to set the external gpsdo with 10MHz and 1PPS as time and
>> clock source for my GPS because its far more exactly so far as i know.=
.
> Please share with us the output of:
>
> uhd_usrp_probe --args type=3Db200
>
>
>>
>> do i really have to disconnect the internal gpsdo? can't i even change
>> the source on software base?
> Yes, like I said, the 10MHz line is shared, and there's no way to have
> the hardware do the right thing
> =C2=A0 if you have an internal GPSDO and want to use an external clock.=
 If
> you have an *internal* GPSDO, there's
> =C2=A0 ZERO need to use an external one unless you need to share 1PPS a=
nd
> 10MHz clock among multiple
> =C2=A0 devices.=C2=A0 It doesn't sound like you need that.=C2=A0 The ou=
tput of
> uhd_usrp_probe will tell us some things, like
> =C2=A0 whether you actually have an on-board GPSDO or not.
>
>
>>
>> thank you
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
>>>>
>>>> thanks in advance
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------0BCD1EC554633A513394BCE4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>the output of uhd_usrp_probe --args type=3Db200 is</p>
    <table width=3D"100%" cellspacing=3D"2" cellpadding=3D"2" border=3D"1=
">
      <tbody>
        <tr>
          <td valign=3D"top">msfu@dragonos:~$ uhd_usrp_probe --args
            type=3Db200 [INFO] [UHD] linux; GNU C++ version 9.2.1
            20200304; Boost_107100; UHD_3.15.0.0-2build5
            [INFO] [B200] Detected Device: B210
            [INFO] [B200] Loading FPGA image:
            /usr/share/uhd/images/usrp_b210_fpga.bin...
            [INFO] [B200] Operating over USB 3.
            [INFO] [B200] Detecting internal GPSDO.... [INFO] [GPS] No
            GPSDO found
            [INFO] [B200] Initialize CODEC control...
            [INFO] [B200] Initialize Radio control...
            [INFO] [B200] Performing register loopback test... [INFO]
            [B200] Register loopback test passed [INFO] [B200]
            Performing register loopback test... [INFO] [B200] Register
            loopback test passed [INFO] [B200] Setting master clock rate
            selection to 'automatic'. [INFO] [B200] Asking for clock
            rate 16.000000 MHz... ^[[B^[[B^[[B[INFO] [B200] Actually got
            clock rate 16.000000 MHz. ^[[B^[[B^[[B
            _____________________________________________________ / |
            Device: B-Series Device |
            _____________________________________________________ | / |
            | Mboard: B210 | | serial: 8000545 | | name: Zhixun-wireless
            | | product: 2
            | | revision: 4
            | | FW Version: 8.0
            | | FPGA Version: 16.0
            | | | | Time sources: none, internal, external, gpsdo
            | | Clock sources: internal, external, gpsdo
            | | Sensors: ref_locked
            | | _____________________________________________________
            | | /
            | | | RX DSP: 0
            | | | | | | Freq range: -8.000 to 8.000 MHz
            | | _____________________________________________________
            | | /
            | | | RX DSP: 1
            | | | | | | Freq range: -8.000 to 8.000 MHz
            | | _____________________________________________________
            | | /
            | | | RX Dboard: A
            | | | _____________________________________________________
            | | | /
            | | | | RX Frontend: A
            | | | | Name: FE-RX2
            | | | | Antennas: TX/RX, RX2
            | | | | Sensors: temp, rssi, lo_locked
            | | | | Freq range: 50.000 to 6000.000 MHz
            | | | | Gain range PGA: 0.0 to 76.0 step 1.0 dB
            | | | | Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
            | | | | Connection Type: IQ
            | | | | Uses LO offset: No
            | | | _____________________________________________________
            | | | /
            | | | | RX Frontend: B
            | | | | Name: FE-RX1
            | | | | Antennas: TX/RX, RX2
            | | | | Sensors: temp, rssi, lo_locked
            | | | | Freq range: 50.000 to 6000.000 MHz
            | | | | Gain range PGA: 0.0 to 76.0 step 1.0 dB
            | | | | Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
            | | | | Connection Type: IQ
            | | | | Uses LO offset: No
            | | | _____________________________________________________
            | | | /
            | | | | RX Codec: A
            | | | | Name: B210 RX dual ADC
            | | | | Gain Elements: None
            | | _____________________________________________________
            | | /
            | | | TX DSP: 0
            | | | | | | Freq range: -8.000 to 8.000 MHz
            | | _____________________________________________________
            | | /
            | | | TX DSP: 1
            | | | | | | Freq range: -8.000 to 8.000 MHz
            | | _____________________________________________________
            | | /
            | | | TX Dboard: A
            | | | _____________________________________________________
            | | | /
            | | | | TX Frontend: A
            | | | | Name: FE-TX2
            | | | | Antennas: TX/RX
            | | | | Sensors: temp, lo_locked
            | | | | Freq range: 50.000 to 6000.000 MHz
            | | | | Gain range PGA: 0.0 to 89.8 step 0.2 dB
            | | | | Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
            | | | | Connection Type: IQ
            | | | | Uses LO offset: No
            | | | _____________________________________________________
            | | | /
            | | | | TX Frontend: B
            | | | | Name: FE-TX1
            | | | | Antennas: TX/RX
            | | | | Sensors: temp, lo_locked
            | | | | Freq range: 50.000 to 6000.000 MHz
            | | | | Gain range PGA: 0.0 to 89.8 step 0.2 dB
            | | | | Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
            | | | | Connection Type: IQ
            | | | | Uses LO offset: No
            | | | _____________________________________________________
            | | | /
            | | | | TX Codec: A
            | | | | Name: B210 TX dual DAC
            | | | | Gain Elements: None
          </td>
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
    <p>i am not a software developer,... i am an rf enthusiast which is
      playing with dragon os, a distro for sdr.</p>
    <p>the application i want to start is Crocodilehunter. all is
      running fine, but the gps can't get no fix so the application is
      breaking.<br>
    </p>
    <p>i think it has to do with the communication between usrp and
      pll-gpsdo.</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 9/11/21 1:44 AM, Marcus D. Leech
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:8c101f57-04d5-6d20-fe37-3e182bb707e0@gmail.com">On
      2021-09-10 6:55 p.m., msfu wrote:
      <br>
      <blockquote type=3D"cite">
        <br>
        <br>
        what does a command look like to set clock and time_source to
        external?
        <br>
      </blockquote>
      Setting the clock configuration is something that every
      application that uses a USRP has to do
      <br>
      =C2=A0 as part of establishing a session with the USRP device.
      <br>
      <blockquote type=3D"cite">
        <br>
        i don*t really know how to handle API Calls.
        <br>
      </blockquote>
      So, you're not really a software developer, but are using some
      *APPLICATION* that happens
      <br>
      =C2=A0 to use USRPs?=C2=A0 What is the application?=C2=A0 There are=
 hundreds and
      hundreds of SDR-using
      <br>
      =C2=A0 applications out in the field that use USRPs and other SDRs.=
=C2=A0 We
      can't possibly tell you
      <br>
      =C2=A0 how to use and configure each of those.
      <br>
      <br>
      That *application* would need to provide a way to configure the
      clock and 1PPS sources when
      <br>
      =C2=A0it starts a session with the device.
      <br>
      <blockquote type=3D"cite">
        <br>
        I am trying to set the external gpsdo with 10MHz and 1PPS as
        time and
        <br>
        clock source for my GPS because its far more exactly so far as i
        know..
        <br>
      </blockquote>
      Please share with us the output of:
      <br>
      <br>
      uhd_usrp_probe --args type=3Db200
      <br>
      <br>
      <br>
      <blockquote type=3D"cite">
        <br>
        do i really have to disconnect the internal gpsdo? can't i even
        change
        <br>
        the source on software base?
        <br>
      </blockquote>
      Yes, like I said, the 10MHz line is shared, and there's no way to
      have the hardware do the right thing
      <br>
      =C2=A0 if you have an internal GPSDO and want to use an external cl=
ock.
      If you have an *internal* GPSDO, there's
      <br>
      =C2=A0 ZERO need to use an external one unless you need to share 1P=
PS
      and 10MHz clock among multiple
      <br>
      =C2=A0 devices.=C2=A0 It doesn't sound like you need that.=C2=A0 Th=
e output of
      uhd_usrp_probe will tell us some things, like
      <br>
      =C2=A0 whether you actually have an on-board GPSDO or not.
      <br>
      <br>
      <br>
      <blockquote type=3D"cite">
        <br>
        thank you
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <blockquote type=3D"cite">
          <blockquote type=3D"cite">
            <br>
            thanks in advance
            <br>
            _______________________________________________
            <br>
            USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviat=
ed" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com=
</a>
            <br>
            To unsubscribe send an email to
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
            <br>
          </blockquote>
          _______________________________________________
          <br>
          USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated=
" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>
          <br>
          To unsubscribe send an email to
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users=
-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
          <br>
        </blockquote>
        _______________________________________________
        <br>
        USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
        <br>
        To unsubscribe send an email to <a class=3D"moz-txt-link-abbrevia=
ted" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@li=
sts.ettus.com</a>
        <br>
      </blockquote>
      _______________________________________________
      <br>
      USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
      <br>
      To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviate=
d" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@list=
s.ettus.com</a>
      <br>
    </blockquote>
  </body>
</html>

--------------0BCD1EC554633A513394BCE4--

--===============0054289013202557123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0054289013202557123==--
