Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7BC40503C
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 14:35:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B6CD384461
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 08:35:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PCKcC6tG";
	dkim-atps=neutral
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 61F44384224
	for <usrp-users@lists.ettus.com>; Thu,  9 Sep 2021 08:34:40 -0400 (EDT)
Received: by mail-qt1-f178.google.com with SMTP id d11so1214441qtw.3
        for <usrp-users@lists.ettus.com>; Thu, 09 Sep 2021 05:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=pP2H8/WiQwSKGRlk5i2xtSTwfaW6DJKVfl4QnMIsNow=;
        b=PCKcC6tGNBfcqhlyCL5CnnvBXh9la/91cLZRnyUplpSdsWB+9E/8ucQ5e++SZXC1nw
         SsxuxMcTkspmvwxGYfsNZ8H/D2rltAWguQ3O16+mHfcUvGY0UO6oC3Dg4lQi1W33sT+C
         aC6aw0oC1ZKibVr1gD3oFJP2QlboaViqsz3NW04xcNOYKwwJip/8lRr/ENsdCJZUNAml
         o0Y9Dwb4p4WXb+xwb0Yxkv77T44xaA6/y3wxd2wNhaXMNm+EhYJYHoosqd65cxvlheJ3
         P7LZkkhfPV2H3VuLL4/nPC7I3SDJEG0CuGqqqafT2KZM+jvg+m9vSdOuh/nASlLmABlg
         KCSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=pP2H8/WiQwSKGRlk5i2xtSTwfaW6DJKVfl4QnMIsNow=;
        b=6Cukd3WRm5uu3oz6KYnq4Mq6deWDOEH8rAtRo72Hva9BaQK2ZkUFiuRknXgidbbNIE
         tmPsqEaNCk8/uO/Tpq8/lkG9QZh607MNnqEy+CdxKEqu9SqcEuWDvG8EnvJ3S151Naw3
         RqWm4/wZMGLjm3vA9/UWyhmEmWcRasnsVYhE9kDs8STzqktqakbqzIYJYo1exSYemjTJ
         eVBSd0mQ09ZWDTa8GGQKdWU8/aDPtMvET0KlyR3D4v5zZ/rOszY/Wdb58iZAbqGEQEMI
         7DDYj5i+eoPPRgEl3ZLV64tQtVVkYDD/1IdSmVNso/gSDluJwcusKb6FwYjay4Unbxrm
         yiEw==
X-Gm-Message-State: AOAM530maCS36m/5MgqXXjpR9CRsHLyFFtsH4IKqZtwN5Q7omqPVN2Up
	xPtymRf43Y+Pvq1B4ZswSLEW0mkhTxyV0g==
X-Google-Smtp-Source: ABdhPJzGhdGaKtLmUHB56ENj/q3ZcZd3gCdYnOsJpEfh/7Rm4qy/udfDYkFGNcwkL8fpkUWi4e29jQ==
X-Received: by 2002:a05:622a:198e:: with SMTP id u14mr2635781qtc.47.1631190879225;
        Thu, 09 Sep 2021 05:34:39 -0700 (PDT)
Received: from [192.168.2.243] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x21sm1179368qkf.76.2021.09.09.05.34.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Sep 2021 05:34:38 -0700 (PDT)
To: Ernest Fardin <efardin@ieee.org>
References: <CADrcXBRRXstQ5O6fGy3dhMueAigqER+yCMCHbX6SyVGV_im1Sw@mail.gmail.com>
 <CADrcXBS_Ph4Oq18F3YHqihEcbThqFLHQ5GY9eDJTvRgAPQ=05g@mail.gmail.com>
 <d05c9447-2ae5-9b27-5766-db6461817cef@gmail.com>
 <CADrcXBQ6RTPgOcd6SONH7QsmG97v_6Vn5GY1j5LoWZspyKUamA@mail.gmail.com>
 <d11f5315-39e4-6558-b10c-6ff515a10eef@gmail.com>
 <CADrcXBSFtRdwCUro6EnA7OvuPdsaZmeAwc9hE-ueSzwy+Y22JA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <f9a63632-a9ce-67bb-89b3-94d5abeb6485@gmail.com>
Date: Thu, 9 Sep 2021 08:34:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CADrcXBSFtRdwCUro6EnA7OvuPdsaZmeAwc9hE-ueSzwy+Y22JA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: IM3WXME524CGGLKK7ZE2NKOEKFJSWTTW
X-Message-ID-Hash: IM3WXME524CGGLKK7ZE2NKOEKFJSWTTW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 + UBX Power Calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IM3WXME524CGGLKK7ZE2NKOEKFJSWTTW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9039339059355235939=="

This is a multi-part message in MIME format.
--===============9039339059355235939==
Content-Type: multipart/alternative;
 boundary="------------71FA1AB0C23EA91217E5B26A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------71FA1AB0C23EA91217E5B26A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-09 3:28 a.m., Ernest Fardin wrote:
> Thanks Marcus,
>
> Basically, I'd like to have a rough idea of the power at the antenna=20
> input of the SDR, within say =C2=B10.5 dB.
>
> Measuring two different UBX DB's on the same N210 MB, there's a=20
> significant difference in the response, especially below 100 MHz. The=20
> measurement setup was a sig gen connected to a power splitter, with=20
> one side feeding the N210 and the other connected to a power sensor.=20
> UBX gain setting was 0 dB.
> ubx_freq_resp_fm_comp_rf1_1.png
> It's of course possible to store the calibration table in a file and=20
> then apply it at run time for each DB. However, because we're dealing=20
> with 15+ different N210+UBX devices, it would be useful to be able to=20
> store the table in the UBX EEPROM and then load it from there at run=20
> time. That's where I was going with this thread :-)
>
> Regards,
>
> Ernest
>
Given that the UBX is endowed with a whopping 512 *bytes* of EEPROM=20
space, I'm not sure how you'd store the necessarily-extensive=20
calibration tables in them.
 =C2=A0 Even using the NV storage in the CPLD (1Kbyte) that's not enough=20
room, as far as I can tell.



>
> On Thu, Sep 9, 2021 at 11:50 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 2021-09-08 7:28 p.m., Ernest Fardin wrote:
>>     Thanks Marcus,
>>
>>     A couple more questions on this:
>>
>>     [1] Would it be possible for us to buy a USRP X310 (which
>>     supports the reference power API), run uhd_power_cal and then
>>     transfer the UBX DB to the N210 and expect calibrated power
>>     measurements? Or does the reference power API need to be working
>>     on the N210 in order to apply the calibration data?
>     I believe that the caibration is for the ENTIRE CHAIN (which makes
>     sense), so simply moving it to an N210 would not be meaningful.
>
>>     [2] In order to get the reference power API to work on the N210,
>>     would that require changes to the N210 firmware, or just UHD?
>     Probably just UHD -- taking a VERY cursory look at the CAL code,
>     it looks like it can store CAL data in a host-based file database,
>     so even if
>     =C2=A0 the hardware doesn't have enough EEPROM or FLASH storage for=
 the
>     tables, it can be stored in a file on the host.=C2=A0 It looks like
>     there would need to be work
>     =C2=A0 in usrp_calibrator.py to define a N200Calibrator class and
>     override the relevant things from the base class.=C2=A0=C2=A0 But I=
'm not
>     the person who developed this,
>     =C2=A0 so I'm speaking entirely from a cursory inspection of the co=
de.
>
>     What is it you ACTUALLY want to achieve?=C2=A0=C2=A0 Turn your USRP=
 into a
>     laboratory instrument?=C2=A0 Have some vague notion of how much pow=
er
>     you're receiving at the
>     =C2=A0 antenna input?=C2=A0 Because for a limited parameter space, =
it's
>     fairly easy to do that yourself.=C2=A0 The Cal/Reference API was on=
ly
>     VERY recently added and people
>     =C2=A0 have been doing without it with USRP products since 2004 or =
so.=C2=A0
>     It's a VERY young API, and provides only very limited device
>     coverage--for example, I can't
>     =C2=A0 really determine if it understands the concept of pluggable
>     daughtercards, so that the total index is composed of both the
>     motherboard AND daughtercard
>     =C2=A0 serial numbers.=C2=A0 Because, without that, any calibration=
 data are
>     suspect, etc.
>
>
>
>
>
>>
>>     Regards,
>>
>>     Ernest
>>
>>     On Thu, Sep 9, 2021 at 7:34 AM Marcus D. Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>         On 2021-09-08 5:27 p.m., Ernest Fardin via USRP-users wrote:
>>>         Hi,
>>>
>>>         Following up on this, the question I'm trying to answer is:
>>>         "Can I calibrate the rx power on an N210=C2=A0+ UBX platform?=
"
>>>
>>>         With the N210, has_rx_power_reference()
>>>         <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__us=
rp.html#af0307aa83d1454e92a7ec91fb4100b98>
>>>         returns False. Can I conclude from this that an rx power
>>>         calibration is not possible on this device?
>>         It means that there is no reference calibration API available
>>         for this device.
>>
>>         The calibration reference API is fairly new, so it will only
>>         be available (at least initially) on newer devices.=C2=A0=C2=A0=
 The
>>         N2xx series is about 10 years old
>>         =C2=A0at this point.
>>
>>
>>>
>>>         On Tue, Sep 7, 2021 at 9:00 PM Ernest Fardin
>>>         <efardin@ieee.org <mailto:efardin@ieee.org>> wrote:
>>>
>>>             Hi,
>>>
>>>             I'm trying to calibrate the receive power on a USRP N210
>>>             with a UBX daughterboard. Using UHD 4.0, I can get
>>>             uhd_power_cal.py to run by adding an
>>>             N210Calibrator=C2=A0class to usrp_calibrator.py.
>>>             N210Calibrator overloads the USRPCalibratorBase class.
>>>
>>>             class N210Calibrator(USRPCalibratorBase):
>>>             =C2=A0 =C2=A0 """
>>>             =C2=A0 =C2=A0 N210/UBX Calibration
>>>             =C2=A0 =C2=A0 """
>>>             =C2=A0 =C2=A0 mboard_ids =3D ('N210r4',)
>>>             =C2=A0 =C2=A0 default_rate =3D 2.5e6
>>>             =C2=A0 =C2=A0 min_freq =3D 50e6
>>>             =C2=A0 =C2=A0 max_freq =3D 50e6
>>>             =C2=A0 =C2=A0 tune_settling_time =3D .5
>>>
>>>             When the calibration completes, the store() method in
>>>             usrp_calibrator attempts to write the calibration table
>>>             to the UBX with
>>>
>>>             =C2=A0 =C2=A0 =C2=A0 =C2=A0 database.write_cal_data(
>>>             =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_key,
>>>             =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_serial,
>>>             =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_data.serial=
ize())
>>>
>>>             The chan_info string returned by the N210 is:
>>>
>>>             {'mboard_id': 'N210r4', 'mboard_name': '',
>>>             'mboard_serial': '318EFF3', 'rx_antenna': 'TX/RX',
>>>             'rx_id': 'UBX-40 v2 (0x007c)', 'rx_serial': '318D55F',
>>>             'rx_subdev_name': 'UBX RX', 'rx_subdev_spec': 'A:0'}
>>>
>>>             What values to use for cal_key and cal_serial?
>>>
>>>             Thanks in advance!
>>>
>>>             Ernest
>>>
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list --usrp-users@lists.ettus.com  <mailto=
:usrp-users@lists.ettus.com>
>>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.c=
om  <mailto:usrp-users-leave@lists.ettus.com>
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>
>>         To unsubscribe send an email to
>>         usrp-users-leave@lists.ettus.com
>>         <mailto:usrp-users-leave@lists.ettus.com>
>>
>


--------------71FA1AB0C23EA91217E5B26A
Content-Type: multipart/related;
 boundary="------------854BF84F2109B58D0AC263B2"


--------------854BF84F2109B58D0AC263B2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-09 3:28 a.m., Ernest Fardin
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CADrcXBSFtRdwCUro6EnA7OvuPdsaZmeAwc9hE-ueSzwy+Y22JA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thanks Marcus,
        <div><br>
        </div>
        <div>Basically, I'd like to have a rough idea of the power at
          the antenna input of the SDR, within say =C2=B10.5 dB.=C2=A0</d=
iv>
        <div><br>
        </div>
        <div>Measuring two different UBX DB's on the same N210 MB,
          there's a significant difference in the response, especially
          below 100 MHz. The measurement setup was a sig gen connected
          to a power splitter, with one side feeding the N210 and the
          other connected to a power sensor. UBX gain setting was 0 dB.</=
div>
        <img src=3D"cid:part1.78C3F4DC.6BE647DC@gmail.com"
          alt=3D"ubx_freq_resp_fm_comp_rf1_1.png" class=3D"" width=3D"456=
"
          height=3D"342"><br>
        <div>It's of course possible to store the calibration table in a
          file and then apply it at run time for each DB. However,
          because we're dealing with 15+ different N210+UBX devices, it
          would be useful to be able to store the table in the UBX
          EEPROM and then load it from there at run time. That's where I
          was going with this thread :-)</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div><br>
        </div>
        <div>Ernest<br>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    Given that the UBX is endowed with a whopping 512 *bytes* of EEPROM
    space, I'm not sure how you'd store the necessarily-extensive
    calibration tables in them.<br>
    =C2=A0 Even using the NV storage in the CPLD (1Kbyte) that's not enou=
gh
    room, as far as I can tell.<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CADrcXBSFtRdwCUro6EnA7OvuPdsaZmeAwc9hE-ueSzwy+Y22JA@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 9, 2021 at 11:5=
0
          AM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-09-08 7:28 p.m., Ernest Fardin wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thanks Marcus,
                <div><br>
                </div>
                <div>A couple more questions on this:</div>
                <div><br>
                </div>
                <div>[1] Would it be possible for us to buy a USRP X310
                  (which supports the reference power API), run
                  uhd_power_cal and then transfer the UBX DB to the N210
                  and expect calibrated power measurements? Or does the
                  reference power API need to be working on the N210 in
                  order to apply the calibration data?</div>
              </div>
            </blockquote>
            I believe that the caibration is for the ENTIRE CHAIN (which
            makes sense), so simply moving it to an N210 would not be
            meaningful.<br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>[2] In order to get the reference power API to work
                  on the N210, would that require changes to the N210
                  firmware, or just UHD?</div>
              </div>
            </blockquote>
            Probably just UHD -- taking a VERY cursory look at the CAL
            code, it looks like it can store CAL data in a host-based
            file database, so even if<br>
            =C2=A0 the hardware doesn't have enough EEPROM or FLASH stora=
ge
            for the tables, it can be stored in a file on the host.=C2=A0=
 It
            looks like there would need to be work<br>
            =C2=A0 in usrp_calibrator.py to define a N200Calibrator class=
 and
            override the relevant things from the base class.=C2=A0=C2=A0=
 But I'm
            not the person who developed this,<br>
            =C2=A0 so I'm speaking entirely from a cursory inspection of =
the
            code.<br>
            <br>
            What is it you ACTUALLY want to achieve?=C2=A0=C2=A0 Turn you=
r USRP
            into a laboratory instrument?=C2=A0 Have some vague notion of=
 how
            much power you're receiving at the<br>
            =C2=A0 antenna input?=C2=A0 Because for a limited parameter s=
pace,
            it's fairly easy to do that yourself.=C2=A0 The Cal/Reference=
 API
            was only VERY recently added and people<br>
            =C2=A0 have been doing without it with USRP products since 20=
04
            or so.=C2=A0 It's a VERY young API, and provides only very
            limited device coverage--for example, I can't<br>
            =C2=A0 really determine if it understands the concept of
            pluggable daughtercards, so that the total index is composed
            of both the motherboard AND daughtercard<br>
            =C2=A0 serial numbers.=C2=A0 Because, without that, any calib=
ration
            data are suspect, etc.<br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div><br>
                </div>
                <div>Regards,</div>
                <div><br>
                </div>
                <div>Ernest</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 9, 2021=
 at
                  7:34 AM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true">patchvonbr=
aun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 2021-09-08 5:27 p.m., Ernest Fardin via
                      USRP-users wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Hi,
                        <div><br>
                        </div>
                        <div>Following up on this, the question I'm
                          trying to answer is: "Can I calibrate the rx
                          power on an N210=C2=A0+ UBX platform?"</div>
                        <div><br>
                        </div>
                        <div>With the N210,=C2=A0<a
href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.ht=
ml#af0307aa83d1454e92a7ec91fb4100b98"
                            target=3D"_blank" moz-do-not-send=3D"true">ha=
s_rx_power_reference()</a>
                          returns False. Can I conclude from this that
                          an rx power calibration is not possible on
                          this device?</div>
                      </div>
                    </blockquote>
                    It means that there is no reference calibration API
                    available for this device.<br>
                    <br>
                    The calibration reference API is fairly new, so it
                    will only be available (at least initially) on newer
                    devices.=C2=A0=C2=A0 The N2xx series is about 10 year=
s old<br>
                    =C2=A0at this point.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep=
 7,
                          2021 at 9:00 PM Ernest Fardin &lt;<a
                            href=3D"mailto:efardin@ieee.org"
                            target=3D"_blank" moz-do-not-send=3D"true">ef=
ardin@ieee.org</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">Hi,
                            <div><br>
                            </div>
                            <div>I'm trying to calibrate the receive
                              power on a USRP N210 with a UBX
                              daughterboard. Using UHD 4.0, I can get
                              uhd_power_cal.py to run by adding an
                              N210Calibrator=C2=A0class to
                              usrp_calibrator.py. N210Calibrator
                              overloads the USRPCalibratorBase class.</di=
v>
                            <div><br>
                            </div>
                            <div>class
                              N210Calibrator(USRPCalibratorBase):<br>
                              =C2=A0 =C2=A0 """<br>
                              =C2=A0 =C2=A0 N210/UBX Calibration<br>
                              =C2=A0 =C2=A0 """<br>
                              =C2=A0 =C2=A0 mboard_ids =3D ('N210r4',)<br=
>
                              =C2=A0 =C2=A0 default_rate =3D 2.5e6<br>
                              =C2=A0 =C2=A0 min_freq =3D 50e6<br>
                              =C2=A0 =C2=A0 max_freq =3D 50e6<br>
                              =C2=A0 =C2=A0 tune_settling_time =3D .5<br>
                            </div>
                            <div><br>
                            </div>
                            <div>When the calibration completes, the
                              store() method in usrp_calibrator attempts
                              to write the calibration table to the UBX
                              with=C2=A0</div>
                            <div><br>
                            </div>
                            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 database.wri=
te_cal_data(<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 c=
al_key,<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 c=
al_serial,<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 c=
al_data.serialize())<br>
                            </div>
                            <div><br>
                            </div>
                            <div>The chan_info string returned by the
                              N210 is:</div>
                            <div><br>
                            </div>
                            <div>{'mboard_id': 'N210r4', 'mboard_name':
                              '', 'mboard_serial': '318EFF3',
                              'rx_antenna': 'TX/RX', 'rx_id': 'UBX-40 v2
                              (0x007c)', 'rx_serial': '318D55F',
                              'rx_subdev_name': 'UBX RX',
                              'rx_subdev_spec': 'A:0'}<br>
                            </div>
                            <div><br>
                            </div>
                            <div>What values to use for cal_key and
                              cal_serial?<br>
                            </div>
                            <div><br>
                            </div>
                            <div>Thanks in advance!</div>
                            <div><br>
                            </div>
                            <div>Ernest</div>
                            <div><br>
                            </div>
                          </div>
                        </blockquote>
                      </div>
                      <br>
                      <fieldset></fieldset>
                      <pre>______________________________________________=
_
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@li=
sts.ettus.com</a>
</pre>
                    </blockquote>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true">usrp-users=
@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true">usrp-users=
-leave@lists.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------854BF84F2109B58D0AC263B2
Content-Type: image/png;
 name="ubx_freq_resp_fm_comp_rf1_1.png"
Content-Transfer-Encoding: base64
Content-ID: <part1.78C3F4DC.6BE647DC@gmail.com>
Content-Disposition: inline;
 filename="ubx_freq_resp_fm_comp_rf1_1.png"

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
AAAASUVORK5CYII=
--------------854BF84F2109B58D0AC263B2--

--------------71FA1AB0C23EA91217E5B26A--

--===============9039339059355235939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9039339059355235939==--
