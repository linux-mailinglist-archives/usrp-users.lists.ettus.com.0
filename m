Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BCA40433E
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 03:51:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F27E384749
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 21:51:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pXWNUBYU";
	dkim-atps=neutral
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	by mm2.emwd.com (Postfix) with ESMTPS id ED2F6384574
	for <usrp-users@lists.ettus.com>; Wed,  8 Sep 2021 21:50:43 -0400 (EDT)
Received: by mail-il1-f173.google.com with SMTP id q14so307827ils.5
        for <usrp-users@lists.ettus.com>; Wed, 08 Sep 2021 18:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=Hxl+zB1BEXxlfbZSpv7xl49ZzvFF40un0rNReGAzPO0=;
        b=pXWNUBYU3M0+khsgUb67Wz7yw/XSrKoVFnZ0i8rCrbF8Sopgn+XCGf5HeXzT6JDr5Z
         LHUUofd8YRxSQZWFOjJ2UG5UwG6RHp5WbdFmJn7B0Mz3dtFM/MBnU9rvXaWdYJVc0qCa
         Dectl7HfMybsCNKmH7eGRNUCfDqK93l/ti9jaEeDj+VLsDmAe78HTdsDgVJSyeOs4Dir
         L2iqQkiUtt1pLjl7jOq4X5T4Feu5GNiTMrvajMGmRlRjarPcXUHsOf7zyI2ozzO2NGWQ
         L+tl6W9FVc1DPr9n8KAnog0dP91XDCPdUUbPW+GxuIeE+/Xi2vx9iqtv4SdCJxu48itn
         /aSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=Hxl+zB1BEXxlfbZSpv7xl49ZzvFF40un0rNReGAzPO0=;
        b=09sjtW/EFRB6s9fQ9C9an2jRbJTtN2bPmDV7Rww7pZrdyUydPKZZli+TQGqdz89XE3
         QEvN7VdWHsw/NDhRWomplib4FwXGj6u/sHDpdFjnYi2N0PebZe1e1k7iHUOR150p+gKY
         lwGq9w2zkstfe9DiKYhMkdcbBBZkRRDd9JRnUbR3wIWNphnAX0RUCp5NBn0FrHtdxR4G
         rK6Liqgs0us4gFj9RbvMAw2V5xaaqVafRlRuZKUcHZzXsjSD54q4DZByQbxN9EmRXb76
         gSZGSiEvCfWoivdK16z10BA/Vfi69kYKCvaMiXm7QeKSFRwOdZ26VGTeTEEyLUaVY5m3
         3tZQ==
X-Gm-Message-State: AOAM5317VDx1LiTEZKD2nUsnimzIYk0NS5KBlaT9SwMmc4vHTwaMondC
	dOBA1pYB6t+l+0j/ecEd783mGHm/tTylhg==
X-Google-Smtp-Source: ABdhPJzd76LV0oPW/O5/o/QUL7L4rFqNL6TWGpKMAAN/ULi0xCu/aYm2121vTtNJ/2tk18pAGP8Vig==
X-Received: by 2002:a05:6e02:2163:: with SMTP id s3mr434194ilv.172.1631152242913;
        Wed, 08 Sep 2021 18:50:42 -0700 (PDT)
Received: from [192.168.2.243] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id t17sm193540iln.24.2021.09.08.18.50.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 18:50:42 -0700 (PDT)
To: Ernest Fardin <efardin@ieee.org>
References: <CADrcXBRRXstQ5O6fGy3dhMueAigqER+yCMCHbX6SyVGV_im1Sw@mail.gmail.com>
 <CADrcXBS_Ph4Oq18F3YHqihEcbThqFLHQ5GY9eDJTvRgAPQ=05g@mail.gmail.com>
 <d05c9447-2ae5-9b27-5766-db6461817cef@gmail.com>
 <CADrcXBQ6RTPgOcd6SONH7QsmG97v_6Vn5GY1j5LoWZspyKUamA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <d11f5315-39e4-6558-b10c-6ff515a10eef@gmail.com>
Date: Wed, 8 Sep 2021 21:50:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CADrcXBQ6RTPgOcd6SONH7QsmG97v_6Vn5GY1j5LoWZspyKUamA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: CUIQYMB5UZ34ENS6ZLFO6EYKGNR5PU2Q
X-Message-ID-Hash: CUIQYMB5UZ34ENS6ZLFO6EYKGNR5PU2Q
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 + UBX Power Calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CUIQYMB5UZ34ENS6ZLFO6EYKGNR5PU2Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4793971201362274453=="

This is a multi-part message in MIME format.
--===============4793971201362274453==
Content-Type: multipart/alternative;
 boundary="------------6B2F7DF03E8B07A4CA07CBD0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6B2F7DF03E8B07A4CA07CBD0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-08 7:28 p.m., Ernest Fardin wrote:
> Thanks Marcus,
>
> A couple more questions on this:
>
> [1] Would it be possible for us to buy a USRP X310 (which supports the=20
> reference power API), run uhd_power_cal and then transfer the UBX DB=20
> to the N210 and expect calibrated power measurements? Or does the=20
> reference power API need to be working on the N210 in order to apply=20
> the calibration data?
I believe that the caibration is for the ENTIRE CHAIN (which makes=20
sense), so simply moving it to an N210 would not be meaningful.

> [2] In order to get the reference power API to work on the N210, would=20
> that require changes to the N210 firmware, or just UHD?
Probably just UHD -- taking a VERY cursory look at the CAL code, it=20
looks like it can store CAL data in a host-based file database, so even i=
f
 =C2=A0 the hardware doesn't have enough EEPROM or FLASH storage for the=20
tables, it can be stored in a file on the host.=C2=A0 It looks like there=
=20
would need to be work
 =C2=A0 in usrp_calibrator.py to define a N200Calibrator class and overri=
de=20
the relevant things from the base class.=C2=A0=C2=A0 But I'm not the pers=
on who=20
developed this,
 =C2=A0 so I'm speaking entirely from a cursory inspection of the code.

What is it you ACTUALLY want to achieve?=C2=A0=C2=A0 Turn your USRP into =
a=20
laboratory instrument?=C2=A0 Have some vague notion of how much power you=
're=20
receiving at the
 =C2=A0 antenna input?=C2=A0 Because for a limited parameter space, it's =
fairly=20
easy to do that yourself.=C2=A0 The Cal/Reference API was only VERY recen=
tly=20
added and people
 =C2=A0 have been doing without it with USRP products since 2004 or so. I=
t's=20
a VERY young API, and provides only very limited device coverage--for=20
example, I can't
 =C2=A0 really determine if it understands the concept of pluggable=20
daughtercards, so that the total index is composed of both the=20
motherboard AND daughtercard
 =C2=A0 serial numbers.=C2=A0 Because, without that, any calibration data=
 are=20
suspect, etc.





>
> Regards,
>
> Ernest
>
> On Thu, Sep 9, 2021 at 7:34 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 2021-09-08 5:27 p.m., Ernest Fardin via USRP-users wrote:
>>     Hi,
>>
>>     Following up on this, the question I'm trying to answer is: "Can
>>     I calibrate the rx power on an N210=C2=A0+ UBX platform?"
>>
>>     With the N210, has_rx_power_reference()
>>     <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.ht=
ml#af0307aa83d1454e92a7ec91fb4100b98>
>>     returns False. Can I conclude from this that an rx power
>>     calibration is not possible on this device?
>     It means that there is no reference calibration API available for
>     this device.
>
>     The calibration reference API is fairly new, so it will only be
>     available (at least initially) on newer devices.=C2=A0=C2=A0 The N2=
xx series
>     is about 10 years old
>     =C2=A0at this point.
>
>
>>
>>     On Tue, Sep 7, 2021 at 9:00 PM Ernest Fardin <efardin@ieee.org
>>     <mailto:efardin@ieee.org>> wrote:
>>
>>         Hi,
>>
>>         I'm trying to calibrate the receive power on a USRP N210 with
>>         a UBX daughterboard. Using UHD 4.0, I can get
>>         uhd_power_cal.py to run by adding an N210Calibrator=C2=A0class=
 to
>>         usrp_calibrator.py. N210Calibrator overloads the
>>         USRPCalibratorBase class.
>>
>>         class N210Calibrator(USRPCalibratorBase):
>>         =C2=A0 =C2=A0 """
>>         =C2=A0 =C2=A0 N210/UBX Calibration
>>         =C2=A0 =C2=A0 """
>>         =C2=A0 =C2=A0 mboard_ids =3D ('N210r4',)
>>         =C2=A0 =C2=A0 default_rate =3D 2.5e6
>>         =C2=A0 =C2=A0 min_freq =3D 50e6
>>         =C2=A0 =C2=A0 max_freq =3D 50e6
>>         =C2=A0 =C2=A0 tune_settling_time =3D .5
>>
>>         When the calibration completes, the store() method in
>>         usrp_calibrator attempts to write the calibration table to
>>         the UBX with
>>
>>         =C2=A0 =C2=A0 =C2=A0 =C2=A0 database.write_cal_data(
>>         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_key,
>>         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_serial,
>>         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_data.serialize()=
)
>>
>>         The chan_info string returned by the N210 is:
>>
>>         {'mboard_id': 'N210r4', 'mboard_name': '', 'mboard_serial':
>>         '318EFF3', 'rx_antenna': 'TX/RX', 'rx_id': 'UBX-40 v2
>>         (0x007c)', 'rx_serial': '318D55F', 'rx_subdev_name': 'UBX
>>         RX', 'rx_subdev_spec': 'A:0'}
>>
>>         What values to use for cal_key and cal_serial?
>>
>>         Thanks in advance!
>>
>>         Ernest
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp=
-users@lists.ettus.com>
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <=
mailto:usrp-users-leave@lists.ettus.com>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------6B2F7DF03E8B07A4CA07CBD0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-08 7:28 p.m., Ernest Fardin
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CADrcXBQ6RTPgOcd6SONH7QsmG97v_6Vn5GY1j5LoWZspyKUamA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thanks Marcus,
        <div><br>
        </div>
        <div>A couple more questions on this:</div>
        <div><br>
        </div>
        <div>[1] Would it be possible for us to buy a USRP X310 (which
          supports the reference power API), run uhd_power_cal and then
          transfer the UBX DB to the N210 and expect calibrated power
          measurements? Or does the reference power API need to be
          working on the N210 in order to apply the calibration data?</di=
v>
      </div>
    </blockquote>
    I believe that the caibration is for the ENTIRE CHAIN (which makes
    sense), so simply moving it to an N210 would not be meaningful.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CADrcXBQ6RTPgOcd6SONH7QsmG97v_6Vn5GY1j5LoWZspyKUamA@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>[2] In order to get the reference power API to work on the
          N210, would that require changes to the N210 firmware, or just
          UHD?</div>
      </div>
    </blockquote>
    Probably just UHD -- taking a VERY cursory look at the CAL code, it
    looks like it can store CAL data in a host-based file database, so
    even if<br>
    =C2=A0 the hardware doesn't have enough EEPROM or FLASH storage for t=
he
    tables, it can be stored in a file on the host.=C2=A0 It looks like t=
here
    would need to be work<br>
    =C2=A0 in usrp_calibrator.py to define a N200Calibrator class and
    override the relevant things from the base class.=C2=A0=C2=A0 But I'm=
 not the
    person who developed this,<br>
    =C2=A0 so I'm speaking entirely from a cursory inspection of the code=
.<br>
    <br>
    What is it you ACTUALLY want to achieve?=C2=A0=C2=A0 Turn your USRP i=
nto a
    laboratory instrument?=C2=A0 Have some vague notion of how much power
    you're receiving at the<br>
    =C2=A0 antenna input?=C2=A0 Because for a limited parameter space, it=
's fairly
    easy to do that yourself.=C2=A0 The Cal/Reference API was only VERY
    recently added and people<br>
    =C2=A0 have been doing without it with USRP products since 2004 or so=
.=C2=A0
    It's a VERY young API, and provides only very limited device
    coverage--for example, I can't<br>
    =C2=A0 really determine if it understands the concept of pluggable
    daughtercards, so that the total index is composed of both the
    motherboard AND daughtercard<br>
    =C2=A0 serial numbers.=C2=A0 Because, without that, any calibration d=
ata are
    suspect, etc.<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CADrcXBQ6RTPgOcd6SONH7QsmG97v_6Vn5GY1j5LoWZspyKUamA@mail.gmai=
l.com">
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
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 9, 2021 at 7:34=
 AM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-09-08 5:27 p.m., Ernest Fardin via USRP-users
              wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hi,
                <div><br>
                </div>
                <div>Following up on this, the question I'm trying to
                  answer is: "Can I calibrate the rx power on an N210=C2=A0=
+
                  UBX platform?"</div>
                <div><br>
                </div>
                <div>With the N210,=C2=A0<a
href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.ht=
ml#af0307aa83d1454e92a7ec91fb4100b98"
                    target=3D"_blank" moz-do-not-send=3D"true">has_rx_pow=
er_reference()</a>
                  returns False. Can I conclude from this that an rx
                  power calibration is not possible on this device?</div>
              </div>
            </blockquote>
            It means that there is no reference calibration API
            available for this device.<br>
            <br>
            The calibration reference API is fairly new, so it will only
            be available (at least initially) on newer devices.=C2=A0=C2=A0=
 The
            N2xx series is about 10 years old<br>
            =C2=A0at this point.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 7, 2021=
 at
                  9:00 PM Ernest Fardin &lt;<a
                    href=3D"mailto:efardin@ieee.org" target=3D"_blank"
                    moz-do-not-send=3D"true">efardin@ieee.org</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">Hi,
                    <div><br>
                    </div>
                    <div>I'm trying to calibrate the receive power on a
                      USRP N210 with a UBX daughterboard. Using UHD 4.0,
                      I can get uhd_power_cal.py to run by adding an
                      N210Calibrator=C2=A0class to usrp_calibrator.py.
                      N210Calibrator overloads the USRPCalibratorBase
                      class.</div>
                    <div><br>
                    </div>
                    <div>class N210Calibrator(USRPCalibratorBase):<br>
                      =C2=A0 =C2=A0 """<br>
                      =C2=A0 =C2=A0 N210/UBX Calibration<br>
                      =C2=A0 =C2=A0 """<br>
                      =C2=A0 =C2=A0 mboard_ids =3D ('N210r4',)<br>
                      =C2=A0 =C2=A0 default_rate =3D 2.5e6<br>
                      =C2=A0 =C2=A0 min_freq =3D 50e6<br>
                      =C2=A0 =C2=A0 max_freq =3D 50e6<br>
                      =C2=A0 =C2=A0 tune_settling_time =3D .5<br>
                    </div>
                    <div><br>
                    </div>
                    <div>When the calibration completes, the store()
                      method in usrp_calibrator attempts to write the
                      calibration table to the UBX with=C2=A0</div>
                    <div><br>
                    </div>
                    <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 database.write_cal_d=
ata(<br>
                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_key,<=
br>
                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_seria=
l,<br>
                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_data.=
serialize())<br>
                    </div>
                    <div><br>
                    </div>
                    <div>The chan_info string returned by the N210 is:</d=
iv>
                    <div><br>
                    </div>
                    <div>{'mboard_id': 'N210r4', 'mboard_name': '',
                      'mboard_serial': '318EFF3', 'rx_antenna': 'TX/RX',
                      'rx_id': 'UBX-40 v2 (0x007c)', 'rx_serial':
                      '318D55F', 'rx_subdev_name': 'UBX RX',
                      'rx_subdev_spec': 'A:0'}<br>
                    </div>
                    <div><br>
                    </div>
                    <div>What values to use for cal_key and cal_serial?<b=
r>
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
              <pre>_______________________________________________
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
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------6B2F7DF03E8B07A4CA07CBD0--

--===============4793971201362274453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4793971201362274453==--
