Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C1B407461
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 03:21:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 866D7384F0C
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 21:21:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dEzdQoOf";
	dkim-atps=neutral
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 5AEC3384AE8
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 21:20:22 -0400 (EDT)
Received: by mail-wr1-f46.google.com with SMTP id w29so4332001wra.8
        for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 18:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=ylrfAW1pgs8qaYgCT3bJnP61z8uWwU3vntmXuVptqlA=;
        b=dEzdQoOfYJ+fEgpxZ+GToiStiIMjZ0+GTNWMwe73/BC9OsuhruQHHWLz+yX3rdusjM
         g7qZ759uT8LeM6jDHSaVLRzPF3kl8T9rzHKbunw9z52xrDZcxxZgS/yheBPQALgw6B19
         1sd7akdV3ljUHmpqavG5kzpOsuz+1W9OKZ/Wm/XBjDXpg1OqUaNhsAzkt7c0dZD1r8XG
         2Wlmy6uZBXgccSRXynZYLmVWYiIahuFBAwCo7CdVbza6/lZyX4J2Sx67g6sTDPVauvBw
         /tokoiCQ01e3006jBZGJqe8BdnzzMIMi8IB6emnDI92kPerUuFbu7c4Qczm7srHd96CY
         YtVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=ylrfAW1pgs8qaYgCT3bJnP61z8uWwU3vntmXuVptqlA=;
        b=3j2pilA62pABIJyenoyTOL2nhxeEZue+XWx9BTKhyfUbbVrR46vJlF6acbd9WZ+5zY
         Rb7YHQ4NP2ziLqswpWlvfMf8YtZHnLbsG19CMvl/mm2yd4+T2hE28Cy0HgxbWa9Cwe1T
         fAO+iky7reQmTTzW2ZUIhyXBlIJP7+gajd4udQcyr3qxfxmBnTreBM44+cqcMPNM4R7W
         PF7b1xWf1DSpqu/PFUY9EMgjoDs2K4+tuSwzzwJGrd00i5GaLQIxjE9S3M9+GbFYzdQm
         +1ZElEl67w3ShwoQE77+2rzMr3lKeZEBr3Ua2cEO/cqD68hUOn7m0d5QJC+zFXK4KvIP
         Ezrg==
X-Gm-Message-State: AOAM530c9sqVQmCNafTwkGrphUGCKse5syx1GIyepNadRai+JKMTwKmm
	/R3aBmGLigQKGYARZhzCoUugDOM4+dalNA==
X-Google-Smtp-Source: ABdhPJytEPoiZ6N2O8SqECIjEh3K3QsUyqDL8jxtJ0Sy6COKthExAaOiP8JhE8nRbz5Nxh0h8Ib1Fw==
X-Received: by 2002:adf:c10b:: with SMTP id r11mr576281wre.336.1631323220873;
        Fri, 10 Sep 2021 18:20:20 -0700 (PDT)
Received: from ?IPv6:2a02:908:1c11:83a0:711b:5400:643c:491? ([2a02:908:1c11:83a0:711b:5400:643c:491])
        by smtp.gmail.com with ESMTPSA id n4sm223508wra.37.2021.09.10.18.20.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 18:20:20 -0700 (PDT)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <401c2280-1625-fcce-1ae5-a90e95da07e6@gmail.com>
 <75760422-a05d-95d1-10c1-f571ae8dccb2@gmail.com>
 <e255b7bf-ac54-37a7-1c1d-f0c8315b1f83@gmail.com>
 <8c101f57-04d5-6d20-fe37-3e182bb707e0@gmail.com>
 <79146926-b3c3-69d2-5e8a-4323b4c64997@gmail.com>
 <a78f92e5-f732-0849-c172-be4de293c872@gmail.com>
From: msfu <msfu666@gmail.com>
Message-ID: <c1fc2fd6-c069-5a88-75a0-271b35a04878@gmail.com>
Date: Sat, 11 Sep 2021 03:26:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <a78f92e5-f732-0849-c172-be4de293c872@gmail.com>
Content-Language: en-US
Message-ID-Hash: PNW347AFLAZ4NC5RQUTQ3DRDIVCDMDS6
X-Message-ID-Hash: PNW347AFLAZ4NC5RQUTQ3DRDIVCDMDS6
X-MailFrom: msfu666@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use a usrp b210 with external gpsdo and nmea0183 as clock source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PNW347AFLAZ4NC5RQUTQ3DRDIVCDMDS6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2052448724174281892=="

This is a multi-part message in MIME format.
--===============2052448724174281892==
Content-Type: multipart/alternative;
 boundary="------------EB5FE20A98648735D17C5538"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------EB5FE20A98648735D17C5538
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 9/11/21 3:04 AM, Marcus D. Leech wrote:
> On 2021-09-10 9:01 p.m., msfu wrote:
>>
>> the output of uhd_usrp_probe --args type=3Db200 is
>>
>> msfu@dragonos:~$ uhd_usrp_probe --args type=3Db200 [INFO] [UHD] linux;
>> GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.0.0-2build5
>> [INFO] [B200] Detected Device: B210 [INFO] [B200] Loading FPGA image:
>> /usr/share/uhd/images/usrp_b210_fpga.bin... [INFO] [B200] Operating
>> over USB 3. [INFO] [B200] Detecting internal GPSDO.... [INFO] [GPS]
>> No GPSDO found [INFO] [B200] Initialize CODEC control... [INFO]
>> [B200] Initialize Radio control... [INFO] [B200] Performing register
>> loopback test... [INFO] [B200] Register loopback test passed [INFO]
>> [B200] Performing register loopback test... [INFO] [B200] Register
>> loopback test passed [INFO] [B200] Setting master clock rate
>> selection to 'automatic'. [INFO] [B200] Asking for clock rate
>> 16.000000 MHz... ^[[B^[[B^[[B[INFO] [B200] Actually got clock rate
>> 16.000000 MHz. ^[[B^[[B^[[B
>> _____________________________________________________ / | Device:
>> B-Series Device |
>> _____________________________________________________ | / | | Mboard:
>> B210 | | serial: 8000545 | | name: Zhixun-wireless | | product: 2 | |
>> revision: 4 | | FW Version: 8.0 | | FPGA Version: 16.0 | | | | Time
>> sources: none, internal, external, gpsdo | | Clock sources: internal,
>> external, gpsdo | | Sensors: ref_locked | |
>> _____________________________________________________ | | / | | | RX
>> DSP: 0 | | | | | | Freq range: -8.000 to 8.000 MHz | |
>> _____________________________________________________ | | / | | | RX
>> DSP: 1 | | | | | | Freq range: -8.000 to 8.000 MHz | |
>> _____________________________________________________ | | / | | | RX
>> Dboard: A | | | _____________________________________________________
>> | | | / | | | | RX Frontend: A | | | | Name: FE-RX2 | | | | Antennas:
>> TX/RX, RX2 | | | | Sensors: temp, rssi, lo_locked | | | | Freq range:
>> 50.000 to 6000.000 MHz | | | | Gain range PGA: 0.0 to 76.0 step 1.0
>> dB | | | | Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | |
>> | Connection Type: IQ | | | | Uses LO offset: No | | |
>> _____________________________________________________ | | | / | | | |
>> RX Frontend: B | | | | Name: FE-RX1 | | | | Antennas: TX/RX, RX2 | |
>> | | Sensors: temp, rssi, lo_locked | | | | Freq range: 50.000 to
>> 6000.000 MHz | | | | Gain range PGA: 0.0 to 76.0 step 1.0 dB | | | |
>> Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | | |
>> Connection Type: IQ | | | | Uses LO offset: No | | |
>> _____________________________________________________ | | | / | | | |
>> RX Codec: A | | | | Name: B210 RX dual ADC | | | | Gain Elements:
>> None | | _____________________________________________________ | | /
>> | | | TX DSP: 0 | | | | | | Freq range: -8.000 to 8.000 MHz | |
>> _____________________________________________________ | | / | | | TX
>> DSP: 1 | | | | | | Freq range: -8.000 to 8.000 MHz | |
>> _____________________________________________________ | | / | | | TX
>> Dboard: A | | | _____________________________________________________
>> | | | / | | | | TX Frontend: A | | | | Name: FE-TX2 | | | | Antennas:
>> TX/RX | | | | Sensors: temp, lo_locked | | | | Freq range: 50.000 to
>> 6000.000 MHz | | | | Gain range PGA: 0.0 to 89.8 step 0.2 dB | | | |
>> Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | | | |
>> Connection Type: IQ | | | | Uses LO offset: No | | |
>> _____________________________________________________ | | | / | | | |
>> TX Frontend: B | | | | Name: FE-TX1 | | | | Antennas: TX/RX | | | |
>> Sensors: temp, lo_locked | | | | Freq range: 50.000 to 6000.000 MHz |
>> | | | Gain range PGA: 0.0 to 89.8 step 0.2 dB | | | | Bandwidth
>> range: 200000.0 to 56000000.0 step 0.0 Hz | | | | Connection Type: IQ
>> | | | | Uses LO offset: No | | |
>> _____________________________________________________ | | | / | | | |
>> TX Codec: A | | | | Name: B210 TX dual DAC | | | | Gain Elements: None=
 =09
>>
>> =09
>>
>> and no, there is no internal gpsdo. ;)
>>
>> i am not a software developer,... i am an rf enthusiast which is
>> playing with dragon os, a distro for sdr.
>>
>> the application i want to start is Crocodilehunter. all is running
>> fine, but the gps can't get no fix so the application is breaking.
>>
>> i think it has to do with the communication between usrp and pll-gpsdo=
.
>>
>>
> Well, connect your GPSDO 10MHz and 1PPS outputs to the appropriate
> inputs of the USRP B210, and then perhaps ask the devs of
> CrocoDileHunter to add provision
> =C2=A0 for clock setup for external clocks.
>
> The native clock on the B210 is actually fairly decent--2.5PPM.=C2=A0 B=
ut
> that may not be good enough for some cellular implementations.
>
yes, i use it for cellular applications like crodilehunter.

i will ask the devs of this tool for provision. maybe i have luck

=C2=A0but can you just tell me how to determine the adress of the usrp to
comunicate with it via cli? if it has nothing to do with the gps
receiver, maybe its just a configuration failure.=C2=A0

>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------EB5FE20A98648735D17C5538
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 9/11/21 3:04 AM, Marcus D. Leech
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:a78f92e5-f732-0849-c172-be4de293c872@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"moz-cite-prefix">On 2021-09-10 9:01 p.m., msfu wrote:=
<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:79146926-b3c3-69d2-5e8a-4323b4c64997@gmail.com">
        <meta http-equiv=3D"Content-Type" content=3D"text/html;
          charset=3DUTF-8">
        <p>the output of uhd_usrp_probe --args type=3Db200 is</p>
        <table width=3D"100%" cellspacing=3D"2" cellpadding=3D"2" border=3D=
"1">
          <tbody>
            <tr>
              <td valign=3D"top">msfu@dragonos:~$ uhd_usrp_probe --args
                type=3Db200 [INFO] [UHD] linux; GNU C++ version 9.2.1
                20200304; Boost_107100; UHD_3.15.0.0-2build5 [INFO]
                [B200] Detected Device: B210 [INFO] [B200] Loading FPGA
                image: /usr/share/uhd/images/usrp_b210_fpga.bin...
                [INFO] [B200] Operating over USB 3. [INFO] [B200]
                Detecting internal GPSDO.... [INFO] [GPS] No GPSDO found
                [INFO] [B200] Initialize CODEC control... [INFO] [B200]
                Initialize Radio control... [INFO] [B200] Performing
                register loopback test... [INFO] [B200] Register
                loopback test passed [INFO] [B200] Performing register
                loopback test... [INFO] [B200] Register loopback test
                passed [INFO] [B200] Setting master clock rate selection
                to 'automatic'. [INFO] [B200] Asking for clock rate
                16.000000 MHz... ^[[B^[[B^[[B[INFO] [B200] Actually got
                clock rate 16.000000 MHz. ^[[B^[[B^[[B
                _____________________________________________________ /
                | Device: B-Series Device |
                _____________________________________________________ |
                / | | Mboard: B210 | | serial: 8000545 | | name:
                Zhixun-wireless | | product: 2 | | revision: 4 | | FW
                Version: 8.0 | | FPGA Version: 16.0 | | | | Time
                sources: none, internal, external, gpsdo | | Clock
                sources: internal, external, gpsdo | | Sensors:
                ref_locked | |
                _____________________________________________________ |
                | / | | | RX DSP: 0 | | | | | | Freq range: -8.000 to
                8.000 MHz | |
                _____________________________________________________ |
                | / | | | RX DSP: 1 | | | | | | Freq range: -8.000 to
                8.000 MHz | |
                _____________________________________________________ |
                | / | | | RX Dboard: A | | |
                _____________________________________________________ |
                | | / | | | | RX Frontend: A | | | | Name: FE-RX2 | | |
                | Antennas: TX/RX, RX2 | | | | Sensors: temp, rssi,
                lo_locked | | | | Freq range: 50.000 to 6000.000 MHz | |
                | | Gain range PGA: 0.0 to 76.0 step 1.0 dB | | | |
                Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | |
                | | Connection Type: IQ | | | | Uses LO offset: No | | |
                _____________________________________________________ |
                | | / | | | | RX Frontend: B | | | | Name: FE-RX1 | | |
                | Antennas: TX/RX, RX2 | | | | Sensors: temp, rssi,
                lo_locked | | | | Freq range: 50.000 to 6000.000 MHz | |
                | | Gain range PGA: 0.0 to 76.0 step 1.0 dB | | | |
                Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz | |
                | | Connection Type: IQ | | | | Uses LO offset: No | | |
                _____________________________________________________ |
                | | / | | | | RX Codec: A | | | | Name: B210 RX dual ADC
                | | | | Gain Elements: None | |
                _____________________________________________________ |
                | / | | | TX DSP: 0 | | | | | | Freq range: -8.000 to
                8.000 MHz | |
                _____________________________________________________ |
                | / | | | TX DSP: 1 | | | | | | Freq range: -8.000 to
                8.000 MHz | |
                _____________________________________________________ |
                | / | | | TX Dboard: A | | |
                _____________________________________________________ |
                | | / | | | | TX Frontend: A | | | | Name: FE-TX2 | | |
                | Antennas: TX/RX | | | | Sensors: temp, lo_locked | | |
                | Freq range: 50.000 to 6000.000 MHz | | | | Gain range
                PGA: 0.0 to 89.8 step 0.2 dB | | | | Bandwidth range:
                200000.0 to 56000000.0 step 0.0 Hz | | | | Connection
                Type: IQ | | | | Uses LO offset: No | | |
                _____________________________________________________ |
                | | / | | | | TX Frontend: B | | | | Name: FE-TX1 | | |
                | Antennas: TX/RX | | | | Sensors: temp, lo_locked | | |
                | Freq range: 50.000 to 6000.000 MHz | | | | Gain range
                PGA: 0.0 to 89.8 step 0.2 dB | | | | Bandwidth range:
                200000.0 to 56000000.0 step 0.0 Hz | | | | Connection
                Type: IQ | | | | Uses LO offset: No | | |
                _____________________________________________________ |
                | | / | | | | TX Codec: A | | | | Name: B210 TX dual DAC
                | | | | Gain Elements: None </td>
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
          running fine, but the gps can't get no fix so the application
          is breaking.<br>
        </p>
        <p>i think it has to do with the communication between usrp and
          pll-gpsdo.</p>
        <br>
      </blockquote>
      Well, connect your GPSDO 10MHz and 1PPS outputs to the appropriate
      inputs of the USRP B210, and then perhaps ask the devs of
      CrocoDileHunter to add provision<br>
      =C2=A0 for clock setup for external clocks.<br>
      <br>
      The native clock on the B210 is actually fairly decent--2.5PPM.=C2=A0
      But that may not be good enough for some cellular implementations.<=
br>
      <br>
    </blockquote>
    <p>yes, i use it for cellular applications like crodilehunter.</p>
    <p>i will ask the devs of this tool for provision. maybe i have luck
      <br>
    </p>
    <p>=C2=A0but can you just tell me how to determine the adress of the =
usrp
      to comunicate with it via cli? if it has nothing to do with the
      gps receiver, maybe its just a configuration failure.=C2=A0 <br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:a78f92e5-f732-0849-c172-be4de293c872@gmail.com"> <br>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------EB5FE20A98648735D17C5538--

--===============2052448724174281892==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2052448724174281892==--
