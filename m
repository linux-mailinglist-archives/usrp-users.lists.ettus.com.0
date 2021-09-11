Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 087E7407469
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 03:25:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F01C38537D
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 21:25:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pTdjx29C";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F49D38495D
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 21:24:47 -0400 (EDT)
Received: by mail-qk1-f179.google.com with SMTP id a10so4081566qka.12
        for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 18:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=ZjiIS+L2mR9hPemfxirH/HkfaTzYKF8zMw/zwC7uaRs=;
        b=pTdjx29CLyZVGFpcyZ4Om2fAU7IsBkmSR3BOaMV+l0Pp/U28vSxuNfzDRS0ui5NRup
         BH2dSi5a+QeJTGX3Dsnmxh/saBbXODfiNqgwI773XmD1XJyPO3xI8tEp7AWK6QFWUiEW
         Fx01qrCKfP4nMLfk2cKaodHFTrWODa9juYmVM27BJcPR8co+GLZ+mRQm3BB9hqFx3cOY
         8hKOiOdNGpjYausgrUs7rely9D19x4HU/Ik/9LXUerJbcV9zVaYtuCAUs8OiBZtyXxms
         JeJkXKjcuvBiAVguNSw+RmeA6LTRm5SfhCyFx3cwGl1DDQpqtJHBJxIo3kFkIDDyZmgl
         M+zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=ZjiIS+L2mR9hPemfxirH/HkfaTzYKF8zMw/zwC7uaRs=;
        b=R8lsWKtpAn+1mQnWijK5OoacOOE0xckSz6eqsw+2mlOi4dfw5F3ZAYsIPveWf8dvu0
         YWP39+E/AI+G9eJVbjkpTfMrXfEFIautXp3r6i0KKOD5akzqWtz6DjOd2xkkPZNtU6WB
         nu6fNIqN+qK004glhwDxZ+giWffqaRp9w8E0qkL3fqcMWLaTEyF4Glcno/fXSakVp73I
         +MbT4Lj0kT5ZrqEdd/rPlbtPBFW1pWABhIch7+WzhqT8L75L3fLRArOJSYysPhBmTHNC
         XQIbkUMVFEIJZyjFVtb386rk2CKQ8NFPjGat6hE5P0hvLOIjHQ7upBiDGRcxUGYqAUd3
         qYeQ==
X-Gm-Message-State: AOAM531D9idszbEExCKU3LUbFE4PaMloWCGIobgcT1xEkuWkKQQ9G1p0
	odfs64VpHfNElbsW2o0AUoOlXN7wHql/OQ==
X-Google-Smtp-Source: ABdhPJwRfl0BqUWPkQfkGZoJac/IDTEYrnCxFT3AThVyHD3Eq+NLeNkXFlgiVw1yW6d6aF4sCHTcgg==
X-Received: by 2002:ae9:e012:: with SMTP id m18mr334357qkk.396.1631323486488;
        Fri, 10 Sep 2021 18:24:46 -0700 (PDT)
Received: from [192.168.2.249] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id r23sm225942qtp.60.2021.09.10.18.24.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 18:24:46 -0700 (PDT)
To: msfu <msfu666@gmail.com>, usrp-users@lists.ettus.com
References: <401c2280-1625-fcce-1ae5-a90e95da07e6@gmail.com>
 <75760422-a05d-95d1-10c1-f571ae8dccb2@gmail.com>
 <e255b7bf-ac54-37a7-1c1d-f0c8315b1f83@gmail.com>
 <8c101f57-04d5-6d20-fe37-3e182bb707e0@gmail.com>
 <79146926-b3c3-69d2-5e8a-4323b4c64997@gmail.com>
 <a78f92e5-f732-0849-c172-be4de293c872@gmail.com>
 <c1fc2fd6-c069-5a88-75a0-271b35a04878@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <80e57df9-1257-26a3-a2b3-bec673a5179a@gmail.com>
Date: Fri, 10 Sep 2021 21:24:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <c1fc2fd6-c069-5a88-75a0-271b35a04878@gmail.com>
Content-Language: en-US
Message-ID-Hash: EEQNL7ZO2TBTMOW5QEMMCZSYTCQM3BFE
X-Message-ID-Hash: EEQNL7ZO2TBTMOW5QEMMCZSYTCQM3BFE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use a usrp b210 with external gpsdo and nmea0183 as clock source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EEQNL7ZO2TBTMOW5QEMMCZSYTCQM3BFE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6680099146230383511=="

This is a multi-part message in MIME format.
--===============6680099146230383511==
Content-Type: multipart/alternative;
 boundary="------------13199AD7895E651644FE1A6A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------13199AD7895E651644FE1A6A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-10 9:26 p.m., msfu wrote:
>
>
> On 9/11/21 3:04 AM, Marcus D. Leech wrote:
>> On 2021-09-10 9:01 p.m., msfu wrote:
>>>
>>> the output of uhd_usrp_probe --args type=3Db200 is
>>>
>>> msfu@dragonos:~$ uhd_usrp_probe --args type=3Db200 [INFO] [UHD] linux=
;=20
>>> GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.0.0-2build5=20
>>> [INFO] [B200] Detected Device: B210 [INFO] [B200] Loading FPGA=20
>>> image: /usr/share/uhd/images/usrp_b210_fpga.bin... [INFO] [B200]=20
>>> Operating over USB 3. [INFO] [B200] Detecting internal GPSDO....=20
>>> [INFO] [GPS] No GPSDO found [INFO] [B200] Initialize CODEC=20
>>> control... [INFO] [B200] Initialize Radio control... [INFO] [B200]=20
>>> Performing register loopback test... [INFO] [B200] Register loopback=20
>>> test passed [INFO] [B200] Performing register loopback test...=20
>>> [INFO] [B200] Register loopback test passed [INFO] [B200] Setting=20
>>> master clock rate selection to 'automatic'. [INFO] [B200] Asking for=20
>>> clock rate 16.000000 MHz... ^[[B^[[B^[[B[INFO] [B200] Actually got=20
>>> clock rate 16.000000 MHz. ^[[B^[[B^[[B=20
>>> _____________________________________________________ / | Device:=20
>>> B-Series Device |=20
>>> _____________________________________________________ | / | |=20
>>> Mboard: B210 | | serial: 8000545 | | name: Zhixun-wireless | |=20
>>> product: 2 | | revision: 4 | | FW Version: 8.0 | | FPGA Version:=20
>>> 16.0 | | | | Time sources: none, internal, external, gpsdo | | Clock=20
>>> sources: internal, external, gpsdo | | Sensors: ref_locked | |=20
>>> _____________________________________________________ | | / | | | RX=20
>>> DSP: 0 | | | | | | Freq range: -8.000 to 8.000 MHz | |=20
>>> _____________________________________________________ | | / | | | RX=20
>>> DSP: 1 | | | | | | Freq range: -8.000 to 8.000 MHz | |=20
>>> _____________________________________________________ | | / | | | RX=20
>>> Dboard: A | | |=20
>>> _____________________________________________________ | | | / | | |=20
>>> | RX Frontend: A | | | | Name: FE-RX2 | | | | Antennas: TX/RX, RX2 |=20
>>> | | | Sensors: temp, rssi, lo_locked | | | | Freq range: 50.000 to=20
>>> 6000.000 MHz | | | | Gain range PGA: 0.0 to 76.0 step 1.0 dB | | | |=20
>>> Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | | |=20
>>> Connection Type: IQ | | | | Uses LO offset: No | | |=20
>>> _____________________________________________________ | | | / | | |=20
>>> | RX Frontend: B | | | | Name: FE-RX1 | | | | Antennas: TX/RX, RX2 |=20
>>> | | | Sensors: temp, rssi, lo_locked | | | | Freq range: 50.000 to=20
>>> 6000.000 MHz | | | | Gain range PGA: 0.0 to 76.0 step 1.0 dB | | | |=20
>>> Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | | |=20
>>> Connection Type: IQ | | | | Uses LO offset: No | | |=20
>>> _____________________________________________________ | | | / | | |=20
>>> | RX Codec: A | | | | Name: B210 RX dual ADC | | | | Gain Elements:=20
>>> None | | _____________________________________________________ | | /=20
>>> | | | TX DSP: 0 | | | | | | Freq range: -8.000 to 8.000 MHz | |=20
>>> _____________________________________________________ | | / | | | TX=20
>>> DSP: 1 | | | | | | Freq range: -8.000 to 8.000 MHz | |=20
>>> _____________________________________________________ | | / | | | TX=20
>>> Dboard: A | | |=20
>>> _____________________________________________________ | | | / | | |=20
>>> | TX Frontend: A | | | | Name: FE-TX2 | | | | Antennas: TX/RX | | |=20
>>> | Sensors: temp, lo_locked | | | | Freq range: 50.000 to 6000.000=20
>>> MHz | | | | Gain range PGA: 0.0 to 89.8 step 0.2 dB | | | |=20
>>> Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | | |=20
>>> Connection Type: IQ | | | | Uses LO offset: No | | |=20
>>> _____________________________________________________ | | | / | | |=20
>>> | TX Frontend: B | | | | Name: FE-TX1 | | | | Antennas: TX/RX | | |=20
>>> | Sensors: temp, lo_locked | | | | Freq range: 50.000 to 6000.000=20
>>> MHz | | | | Gain range PGA: 0.0 to 89.8 step 0.2 dB | | | |=20
>>> Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | | |=20
>>> Connection Type: IQ | | | | Uses LO offset: No | | |=20
>>> _____________________________________________________ | | | / | | |=20
>>> | TX Codec: A | | | | Name: B210 TX dual DAC | | | | Gain Elements:=20
>>> None =09
>>>
>>> =09
>>>
>>> and no, there is no internal gpsdo. ;)
>>>
>>> i am not a software developer,... i am an rf enthusiast which is=20
>>> playing with dragon os, a distro for sdr.
>>>
>>> the application i want to start is Crocodilehunter. all is running=20
>>> fine, but the gps can't get no fix so the application is breaking.
>>>
>>> i think it has to do with the communication between usrp and pll-gpsd=
o.
>>>
>>>
>> Well, connect your GPSDO 10MHz and 1PPS outputs to the appropriate=20
>> inputs of the USRP B210, and then perhaps ask the devs of=20
>> CrocoDileHunter to add provision
>> =C2=A0 for clock setup for external clocks.
>>
>> The native clock on the B210 is actually fairly decent--2.5PPM. But=20
>> that may not be good enough for some cellular implementations.
>>
> yes, i use it for cellular applications like crodilehunter.
>
> i will ask the devs of this tool for provision. maybe i have luck
>
> =C2=A0but can you just tell me how to determine the adress of the usrp =
to=20
> comunicate with it via cli? if it has nothing to do with the gps=20
> receiver, maybe its just a configuration failure.
>
I'm saying that the inability for you to get a "fix" from your GPS mouse=20
has nothing to do with the USRP.

There are lots of cli "example" apps for the USRP, but NONE of those=20
will be of any use helping you get "CrocodileHunter" working, and I=20
suspect that you have
 =C2=A0 only the very haziest of understandings of how any of this stuff=20
works, and are hoping that we can help you get CrocodileHunter working.=C2=
=A0=20
This is not the
 =C2=A0 right forum for that at all.=C2=A0 Contact the authors of=20
CrocodileHunter--they may be of more help than here, since THEY are the=20
ones who "architected" the application,
 =C2=A0 and its requirements, and that doesn't overlap at all with what t=
his=20
mailing list is for.


>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com


--------------13199AD7895E651644FE1A6A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-10 9:26 p.m., msfu wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:c1fc2fd6-c069-5a88-75a0-271b35a04878@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p><br>
      </p>
      <div class=3D"moz-cite-prefix">On 9/11/21 3:04 AM, Marcus D. Leech
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:a78f92e5-f732-0849-c172-be4de293c872@gmail.com">
        <meta http-equiv=3D"Content-Type" content=3D"text/html;
          charset=3DUTF-8">
        <div class=3D"moz-cite-prefix">On 2021-09-10 9:01 p.m., msfu
          wrote:<br>
        </div>
        <blockquote type=3D"cite"
          cite=3D"mid:79146926-b3c3-69d2-5e8a-4323b4c64997@gmail.com">
          <meta http-equiv=3D"Content-Type" content=3D"text/html;
            charset=3DUTF-8">
          <p>the output of uhd_usrp_probe --args type=3Db200 is</p>
          <table width=3D"100%" cellspacing=3D"2" cellpadding=3D"2" borde=
r=3D"1">
            <tbody>
              <tr>
                <td valign=3D"top">msfu@dragonos:~$ uhd_usrp_probe --args
                  type=3Db200 [INFO] [UHD] linux; GNU C++ version 9.2.1
                  20200304; Boost_107100; UHD_3.15.0.0-2build5 [INFO]
                  [B200] Detected Device: B210 [INFO] [B200] Loading
                  FPGA image:
                  /usr/share/uhd/images/usrp_b210_fpga.bin... [INFO]
                  [B200] Operating over USB 3. [INFO] [B200] Detecting
                  internal GPSDO.... [INFO] [GPS] No GPSDO found [INFO]
                  [B200] Initialize CODEC control... [INFO] [B200]
                  Initialize Radio control... [INFO] [B200] Performing
                  register loopback test... [INFO] [B200] Register
                  loopback test passed [INFO] [B200] Performing register
                  loopback test... [INFO] [B200] Register loopback test
                  passed [INFO] [B200] Setting master clock rate
                  selection to 'automatic'. [INFO] [B200] Asking for
                  clock rate 16.000000 MHz... ^[[B^[[B^[[B[INFO] [B200]
                  Actually got clock rate 16.000000 MHz. ^[[B^[[B^[[B
                  _____________________________________________________
                  / | Device: B-Series Device |
                  _____________________________________________________
                  | / | | Mboard: B210 | | serial: 8000545 | | name:
                  Zhixun-wireless | | product: 2 | | revision: 4 | | FW
                  Version: 8.0 | | FPGA Version: 16.0 | | | | Time
                  sources: none, internal, external, gpsdo | | Clock
                  sources: internal, external, gpsdo | | Sensors:
                  ref_locked | |
                  _____________________________________________________
                  | | / | | | RX DSP: 0 | | | | | | Freq range: -8.000
                  to 8.000 MHz | |
                  _____________________________________________________
                  | | / | | | RX DSP: 1 | | | | | | Freq range: -8.000
                  to 8.000 MHz | |
                  _____________________________________________________
                  | | / | | | RX Dboard: A | | |
                  _____________________________________________________
                  | | | / | | | | RX Frontend: A | | | | Name: FE-RX2 |
                  | | | Antennas: TX/RX, RX2 | | | | Sensors: temp,
                  rssi, lo_locked | | | | Freq range: 50.000 to 6000.000
                  MHz | | | | Gain range PGA: 0.0 to 76.0 step 1.0 dB |
                  | | | Bandwidth range: 200000.0 to 56000000.0 step 0.0
                  Hz | | | | Connection Type: IQ | | | | Uses LO offset:
                  No | | |
                  _____________________________________________________
                  | | | / | | | | RX Frontend: B | | | | Name: FE-RX1 |
                  | | | Antennas: TX/RX, RX2 | | | | Sensors: temp,
                  rssi, lo_locked | | | | Freq range: 50.000 to 6000.000
                  MHz | | | | Gain range PGA: 0.0 to 76.0 step 1.0 dB |
                  | | | Bandwidth range: 200000.0 to 56000000.0 step 0.0
                  Hz | | | | Connection Type: IQ | | | | Uses LO offset:
                  No | | |
                  _____________________________________________________
                  | | | / | | | | RX Codec: A | | | | Name: B210 RX dual
                  ADC | | | | Gain Elements: None | |
                  _____________________________________________________
                  | | / | | | TX DSP: 0 | | | | | | Freq range: -8.000
                  to 8.000 MHz | |
                  _____________________________________________________
                  | | / | | | TX DSP: 1 | | | | | | Freq range: -8.000
                  to 8.000 MHz | |
                  _____________________________________________________
                  | | / | | | TX Dboard: A | | |
                  _____________________________________________________
                  | | | / | | | | TX Frontend: A | | | | Name: FE-TX2 |
                  | | | Antennas: TX/RX | | | | Sensors: temp, lo_locked
                  | | | | Freq range: 50.000 to 6000.000 MHz | | | |
                  Gain range PGA: 0.0 to 89.8 step 0.2 dB | | | |
                  Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz |
                  | | | Connection Type: IQ | | | | Uses LO offset: No |
                  | |
                  _____________________________________________________
                  | | | / | | | | TX Frontend: B | | | | Name: FE-TX1 |
                  | | | Antennas: TX/RX | | | | Sensors: temp, lo_locked
                  | | | | Freq range: 50.000 to 6000.000 MHz | | | |
                  Gain range PGA: 0.0 to 89.8 step 0.2 dB | | | |
                  Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz |
                  | | | Connection Type: IQ | | | | Uses LO offset: No |
                  | |
                  _____________________________________________________
                  | | | / | | | | TX Codec: A | | | | Name: B210 TX dual
                  DAC | | | | Gain Elements: None </td>
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
          <p>i am not a software developer,... i am an rf enthusiast
            which is playing with dragon os, a distro for sdr.</p>
          <p>the application i want to start is Crocodilehunter. all is
            running fine, but the gps can't get no fix so the
            application is breaking.<br>
          </p>
          <p>i think it has to do with the communication between usrp
            and pll-gpsdo.</p>
          <br>
        </blockquote>
        Well, connect your GPSDO 10MHz and 1PPS outputs to the
        appropriate inputs of the USRP B210, and then perhaps ask the
        devs of CrocoDileHunter to add provision<br>
        =C2=A0 for clock setup for external clocks.<br>
        <br>
        The native clock on the B210 is actually fairly decent--2.5PPM.=C2=
=A0
        But that may not be good enough for some cellular
        implementations.<br>
        <br>
      </blockquote>
      <p>yes, i use it for cellular applications like crodilehunter.</p>
      <p>i will ask the devs of this tool for provision. maybe i have
        luck <br>
      </p>
      <p>=C2=A0but can you just tell me how to determine the adress of th=
e
        usrp to comunicate with it via cli? if it has nothing to do with
        the gps receiver, maybe its just a configuration failure.=C2=A0 <=
br>
      </p>
    </blockquote>
    I'm saying that the inability for you to get a "fix" from your GPS
    mouse has nothing to do with the USRP.=C2=A0 <br>
    <br>
    There are lots of cli "example" apps for the USRP, but NONE of those
    will be of any use helping you get "CrocodileHunter" working, and I
    suspect that you have<br>
    =C2=A0 only the very haziest of understandings of how any of this stu=
ff
    works, and are hoping that we can help you get CrocodileHunter
    working.=C2=A0 This is not the<br>
    =C2=A0 right forum for that at all.=C2=A0 Contact the authors of
    CrocodileHunter--they may be of more help than here, since THEY are
    the ones who "architected" the application,<br>
    =C2=A0 and its requirements, and that doesn't overlap at all with wha=
t
    this mailing list is for.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:c1fc2fd6-c069-5a88-75a0-271b35a04878@gmail.com">
      <p> </p>
      <blockquote type=3D"cite"
        cite=3D"mid:a78f92e5-f732-0849-c172-be4de293c872@gmail.com"> <br>
        <br>
        <fieldset class=3D"mimeAttachmentHeader"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"true">usrp-users@li=
sts.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com" moz-do-not-send=3D"true">us=
rp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------13199AD7895E651644FE1A6A--

--===============6680099146230383511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6680099146230383511==--
