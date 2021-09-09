Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1421040462F
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 09:29:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E750F38465F
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 03:29:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ieee.org header.i=@ieee.org header.b="Y9C4EkdE";
	dkim-atps=neutral
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 8682D384201
	for <usrp-users@lists.ettus.com>; Thu,  9 Sep 2021 03:28:54 -0400 (EDT)
Received: by mail-ej1-f41.google.com with SMTP id x11so1709326ejv.0
        for <usrp-users@lists.ettus.com>; Thu, 09 Sep 2021 00:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RGfPcDy8PmgkUhVan8CZPfBxWlePD4E9k/KqObdwXYE=;
        b=Y9C4EkdEeF+TtcHgZVo4HQKEYJcCoDQdKKy5x1tDrkC0dubqDrmnfzNmxbnVFpJmLP
         9Kc41FIFqNZtMYI6S9nMjza27Dvou6KCUx3YsNGy3qjZhl7imgaUWNS9Cdlmbbm14kIt
         dfkvH0z9wd7xd8fWnMwh40ZbnctKQC5Ah11iU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RGfPcDy8PmgkUhVan8CZPfBxWlePD4E9k/KqObdwXYE=;
        b=xku89E1rfLob3PfSlX9LSynBAUjVshLg3h1naE4F9Gauju6SuYn+9kkHotqj6DQKGV
         lKJoSYaLB70Ou7aX2yW++4+e7Ao3lsS+x9IEIFuQG0lY3CO0myjC8jid1IIyyRd8VFN2
         +UcId6gAT18j68hIDU5+9u9js+TNM4swD0P6UdaIXxjoxewGyhx/lAw0rSLah7zIWwjI
         /sr6Hi7cJUpQbDXo03x35ryAE8Ejlw1XfMPEDzngJ2Mu5pcvepS3LIHVPvh1aOOLFm4c
         a81b/VW5mSLKMd0M+GZ3L1TtavV7NOxM5iOe5AG1fuCtsddM8QBoL7jMnoCaQS6Onv1d
         g9oQ==
X-Gm-Message-State: AOAM532B6WEC57qnIz4vfm3U/UU2DUm+66NJeNK7Nn09wyFKMAdAKLyZ
	hfxIgcRLAHhgl2XYxvTLfOs4jhwjDxZZzrAnzboTcW7DdmWryw==
X-Google-Smtp-Source: ABdhPJyU1HaLcSeJx7UuXkwlveN3JsaAlLpwaT6JzMr6WA0wp7yt8fuDHugZBPapyPZq+l6a7I5PCIv0XoCrp6Go6bE=
X-Received: by 2002:a17:906:410c:: with SMTP id j12mr1490083ejk.161.1631172532680;
 Thu, 09 Sep 2021 00:28:52 -0700 (PDT)
MIME-Version: 1.0
References: <CADrcXBRRXstQ5O6fGy3dhMueAigqER+yCMCHbX6SyVGV_im1Sw@mail.gmail.com>
 <CADrcXBS_Ph4Oq18F3YHqihEcbThqFLHQ5GY9eDJTvRgAPQ=05g@mail.gmail.com>
 <d05c9447-2ae5-9b27-5766-db6461817cef@gmail.com> <CADrcXBQ6RTPgOcd6SONH7QsmG97v_6Vn5GY1j5LoWZspyKUamA@mail.gmail.com>
 <d11f5315-39e4-6558-b10c-6ff515a10eef@gmail.com>
In-Reply-To: <d11f5315-39e4-6558-b10c-6ff515a10eef@gmail.com>
Date: Thu, 9 Sep 2021 17:28:41 +1000
Message-ID: <CADrcXBSFtRdwCUro6EnA7OvuPdsaZmeAwc9hE-ueSzwy+Y22JA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: ETOGGTIRMUDLOQH7OCSBEY25QBPARTB5
X-Message-ID-Hash: ETOGGTIRMUDLOQH7OCSBEY25QBPARTB5
X-MailFrom: efardin@ieee.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 + UBX Power Calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ETOGGTIRMUDLOQH7OCSBEY25QBPARTB5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ernest Fardin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ernest Fardin <efardin@ieee.org>
Content-Type: multipart/mixed; boundary="===============1101784413241115210=="

--===============1101784413241115210==
Content-Type: multipart/related; boundary="00000000000061516b05cb8af3bc"

--00000000000061516b05cb8af3bc
Content-Type: multipart/alternative; boundary="00000000000061516a05cb8af3bb"

--00000000000061516a05cb8af3bb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus,

Basically, I'd like to have a rough idea of the power at the antenna input
of the SDR, within say =C2=B10.5 dB.

Measuring two different UBX DB's on the same N210 MB, there's a significant
difference in the response, especially below 100 MHz. The measurement setup
was a sig gen connected to a power splitter, with one side feeding the N210
and the other connected to a power sensor. UBX gain setting was 0 dB.
[image: ubx_freq_resp_fm_comp_rf1_1.png]
It's of course possible to store the calibration table in a file and then
apply it at run time for each DB. However, because we're dealing with 15+
different N210+UBX devices, it would be useful to be able to store the
table in the UBX EEPROM and then load it from there at run time. That's
where I was going with this thread :-)

Regards,

Ernest


On Thu, Sep 9, 2021 at 11:50 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-09-08 7:28 p.m., Ernest Fardin wrote:
>
> Thanks Marcus,
>
> A couple more questions on this:
>
> [1] Would it be possible for us to buy a USRP X310 (which supports the
> reference power API), run uhd_power_cal and then transfer the UBX DB to t=
he
> N210 and expect calibrated power measurements? Or does the reference powe=
r
> API need to be working on the N210 in order to apply the calibration data=
?
>
> I believe that the caibration is for the ENTIRE CHAIN (which makes sense)=
,
> so simply moving it to an N210 would not be meaningful.
>
> [2] In order to get the reference power API to work on the N210, would
> that require changes to the N210 firmware, or just UHD?
>
> Probably just UHD -- taking a VERY cursory look at the CAL code, it looks
> like it can store CAL data in a host-based file database, so even if
>   the hardware doesn't have enough EEPROM or FLASH storage for the tables=
,
> it can be stored in a file on the host.  It looks like there would need t=
o
> be work
>   in usrp_calibrator.py to define a N200Calibrator class and override the
> relevant things from the base class.   But I'm not the person who develop=
ed
> this,
>   so I'm speaking entirely from a cursory inspection of the code.
>
> What is it you ACTUALLY want to achieve?   Turn your USRP into a
> laboratory instrument?  Have some vague notion of how much power you're
> receiving at the
>   antenna input?  Because for a limited parameter space, it's fairly easy
> to do that yourself.  The Cal/Reference API was only VERY recently added
> and people
>   have been doing without it with USRP products since 2004 or so.  It's a
> VERY young API, and provides only very limited device coverage--for
> example, I can't
>   really determine if it understands the concept of pluggable
> daughtercards, so that the total index is composed of both the motherboar=
d
> AND daughtercard
>   serial numbers.  Because, without that, any calibration data are
> suspect, etc.
>
>
>
>
>
>
> Regards,
>
> Ernest
>
> On Thu, Sep 9, 2021 at 7:34 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2021-09-08 5:27 p.m., Ernest Fardin via USRP-users wrote:
>>
>> Hi,
>>
>> Following up on this, the question I'm trying to answer is: "Can I
>> calibrate the rx power on an N210 + UBX platform?"
>>
>> With the N210, has_rx_power_reference()
>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af0=
307aa83d1454e92a7ec91fb4100b98>
>> returns False. Can I conclude from this that an rx power calibration is =
not
>> possible on this device?
>>
>> It means that there is no reference calibration API available for this
>> device.
>>
>> The calibration reference API is fairly new, so it will only be availabl=
e
>> (at least initially) on newer devices.   The N2xx series is about 10 yea=
rs
>> old
>>  at this point.
>>
>>
>>
>> On Tue, Sep 7, 2021 at 9:00 PM Ernest Fardin <efardin@ieee.org> wrote:
>>
>>> Hi,
>>>
>>> I'm trying to calibrate the receive power on a USRP N210 with a UBX
>>> daughterboard. Using UHD 4.0, I can get uhd_power_cal.py to run by addi=
ng
>>> an N210Calibrator class to usrp_calibrator.py. N210Calibrator overloads=
 the
>>> USRPCalibratorBase class.
>>>
>>> class N210Calibrator(USRPCalibratorBase):
>>>     """
>>>     N210/UBX Calibration
>>>     """
>>>     mboard_ids =3D ('N210r4',)
>>>     default_rate =3D 2.5e6
>>>     min_freq =3D 50e6
>>>     max_freq =3D 50e6
>>>     tune_settling_time =3D .5
>>>
>>> When the calibration completes, the store() method in usrp_calibrator
>>> attempts to write the calibration table to the UBX with
>>>
>>>         database.write_cal_data(
>>>             cal_key,
>>>             cal_serial,
>>>             cal_data.serialize())
>>>
>>> The chan_info string returned by the N210 is:
>>>
>>> {'mboard_id': 'N210r4', 'mboard_name': '', 'mboard_serial': '318EFF3',
>>> 'rx_antenna': 'TX/RX', 'rx_id': 'UBX-40 v2 (0x007c)', 'rx_serial':
>>> '318D55F', 'rx_subdev_name': 'UBX RX', 'rx_subdev_spec': 'A:0'}
>>>
>>> What values to use for cal_key and cal_serial?
>>>
>>> Thanks in advance!
>>>
>>> Ernest
>>>
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--00000000000061516a05cb8af3bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Marcus,<div><br></div><div>Basically, I&#39;d like =
to have a rough idea of the power at the antenna input of the SDR, within s=
ay =C2=B10.5 dB.=C2=A0</div><div><br></div><div>Measuring two different UBX=
 DB&#39;s on the same N210 MB, there&#39;s a significant difference in the =
response, especially below 100 MHz. The measurement setup was a sig gen con=
nected to a power splitter, with one side feeding the N210 and the other co=
nnected to a power sensor. UBX gain setting was 0 dB.</div><img src=3D"cid:=
ii_ktclket81" alt=3D"ubx_freq_resp_fm_comp_rf1_1.png" width=3D"456" height=
=3D"342"><br><div>It&#39;s of course possible to store the calibration tabl=
e in a file and then apply it at run time for each DB. However, because we&=
#39;re dealing with 15+ different N210+UBX devices, it would be useful to b=
e able to store the table in the UBX EEPROM and then load it from there at =
run time. That&#39;s where I was going with this thread :-)</div><div><br><=
/div><div>Regards,</div><div><br></div><div>Ernest<br><div><br></div></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, Sep 9, 2021 at 11:50 AM Marcus D. Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-09-08 7:28 p.m., Ernest Fardin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
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
          working on the N210 in order to apply the calibration data?</div>
      </div>
    </blockquote>
    I believe that the caibration is for the ENTIRE CHAIN (which makes
    sense), so simply moving it to an N210 would not be meaningful.<br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>[2] In order to get the reference power API to work on the
          N210, would that require changes to the N210 firmware, or just
          UHD?</div>
      </div>
    </blockquote>
    Probably just UHD -- taking a VERY cursory look at the CAL code, it
    looks like it can store CAL data in a host-based file database, so
    even if<br>
    =C2=A0 the hardware doesn&#39;t have enough EEPROM or FLASH storage for=
 the
    tables, it can be stored in a file on the host.=C2=A0 It looks like the=
re
    would need to be work<br>
    =C2=A0 in usrp_calibrator.py to define a N200Calibrator class and
    override the relevant things from the base class.=C2=A0=C2=A0 But I&#39=
;m not the
    person who developed this,<br>
    =C2=A0 so I&#39;m speaking entirely from a cursory inspection of the co=
de.<br>
    <br>
    What is it you ACTUALLY want to achieve?=C2=A0=C2=A0 Turn your USRP int=
o a
    laboratory instrument?=C2=A0 Have some vague notion of how much power
    you&#39;re receiving at the<br>
    =C2=A0 antenna input?=C2=A0 Because for a limited parameter space, it&#=
39;s fairly
    easy to do that yourself.=C2=A0 The Cal/Reference API was only VERY
    recently added and people<br>
    =C2=A0 have been doing without it with USRP products since 2004 or so.=
=C2=A0
    It&#39;s a VERY young API, and provides only very limited device
    coverage--for example, I can&#39;t<br>
    =C2=A0 really determine if it understands the concept of pluggable
    daughtercards, so that the total index is composed of both the
    motherboard AND daughtercard<br>
    =C2=A0 serial numbers.=C2=A0 Because, without that, any calibration dat=
a are
    suspect, etc.<br>
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
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 9, 2021 at 7:34 A=
M
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-09-08 5:27 p.m., Ernest Fardin via USRP-users
              wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hi,
                <div><br>
                </div>
                <div>Following up on this, the question I&#39;m trying to
                  answer is: &quot;Can I calibrate the rx power on an N210=
=C2=A0+
                  UBX platform?&quot;</div>
                <div><br>
                </div>
                <div>With the N210,=C2=A0<a href=3D"https://files.ettus.com=
/manual/classuhd_1_1usrp_1_1multi__usrp.html#af0307aa83d1454e92a7ec91fb4100=
b98" target=3D"_blank">has_rx_power_reference()</a>
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
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 7, 2021 a=
t
                  9:00 PM Ernest Fardin &lt;<a href=3D"mailto:efardin@ieee.=
org" target=3D"_blank">efardin@ieee.org</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">Hi,
                    <div><br>
                    </div>
                    <div>I&#39;m trying to calibrate the receive power on a
                      USRP N210 with a UBX daughterboard. Using UHD 4.0,
                      I can get uhd_power_cal.py to run by adding an
                      N210Calibrator=C2=A0class to usrp_calibrator.py.
                      N210Calibrator overloads the USRPCalibratorBase
                      class.</div>
                    <div><br>
                    </div>
                    <div>class N210Calibrator(USRPCalibratorBase):<br>
                      =C2=A0 =C2=A0 &quot;&quot;&quot;<br>
                      =C2=A0 =C2=A0 N210/UBX Calibration<br>
                      =C2=A0 =C2=A0 &quot;&quot;&quot;<br>
                      =C2=A0 =C2=A0 mboard_ids =3D (&#39;N210r4&#39;,)<br>
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
                    <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 database.write_cal_dat=
a(<br>
                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_key,<br=
>
                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_serial,=
<br>
                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_data.se=
rialize())<br>
                    </div>
                    <div><br>
                    </div>
                    <div>The chan_info string returned by the N210 is:</div=
>
                    <div><br>
                    </div>
                    <div>{&#39;mboard_id&#39;: &#39;N210r4&#39;, &#39;mboar=
d_name&#39;: &#39;&#39;,
                      &#39;mboard_serial&#39;: &#39;318EFF3&#39;, &#39;rx_a=
ntenna&#39;: &#39;TX/RX&#39;,
                      &#39;rx_id&#39;: &#39;UBX-40 v2 (0x007c)&#39;, &#39;r=
x_serial&#39;:
                      &#39;318D55F&#39;, &#39;rx_subdev_name&#39;: &#39;UBX=
 RX&#39;,
                      &#39;rx_subdev_spec&#39;: &#39;A:0&#39;}<br>
                    </div>
                    <div><br>
                    </div>
                    <div>What values to use for cal_key and cal_serial?<br>
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
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--00000000000061516a05cb8af3bb--

--00000000000061516b05cb8af3bc
Content-Type: image/png; name="ubx_freq_resp_fm_comp_rf1_1.png"
Content-Disposition: inline; filename="ubx_freq_resp_fm_comp_rf1_1.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_ktclket81>
X-Attachment-Id: ii_ktclket81

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
AMBMtVJt8ezyl08AAAAASUVORK5CYII=
--00000000000061516b05cb8af3bc--

--===============1101784413241115210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1101784413241115210==--
