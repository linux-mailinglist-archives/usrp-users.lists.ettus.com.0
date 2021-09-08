Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C75A94041C4
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 01:29:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A9CD4384B07
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 19:29:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ieee.org header.i=@ieee.org header.b="RHljEmD1";
	dkim-atps=neutral
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id C6D8A383DE9
	for <usrp-users@lists.ettus.com>; Wed,  8 Sep 2021 19:28:36 -0400 (EDT)
Received: by mail-ej1-f54.google.com with SMTP id jg16so7539955ejc.1
        for <usrp-users@lists.ettus.com>; Wed, 08 Sep 2021 16:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fKdd/5uHhOavTBjl0ITmc/sONmC7h7iyw8g+u9vPe5s=;
        b=RHljEmD1pJ3K7JT02pPmw+VgwouBz3EtmEZ9JTijMgbVfnFQGQe/3RrRZajndNcVkq
         xRBKVkVuhMa6poF0/DIRMFa+Gqw5P1m607LLw7mGl2tbIjJOu94JdluNk3Y8iGhMf68M
         cdFyyl4HqFgC9iQXPwQ4XrFdKAkX5JY9eSIEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fKdd/5uHhOavTBjl0ITmc/sONmC7h7iyw8g+u9vPe5s=;
        b=CzHh7r4P104cryKTn66Hm81tJuJS42MgUwjnWOeGzoTWaLTUrwby/v+8AjKZDXOlvH
         h/fSmVDcQJDukyLCJOp2uK3c2HdEhLwu8FgxXcOa3Kq6FqHYzXF2xRb9xepqH65fUcET
         I7NAong1jujeldth07hDVpmwmQ29V6kL1I+ojq78Xo7M4fRChBRLWqwTBHElVVcj7IrF
         ZgCO+pdq4/RPuX9M5VhKmAae17NSqzHg4+jnzYrVUnU2+qVnPBiICceBMJ67XabaFl7C
         HiBTHO2x76giTgiarD7NCdDQRyWvG0v2GA2bfKbBsWDXXdY6iI5o2cyDjeI+/A/R6Lfw
         GZMA==
X-Gm-Message-State: AOAM530eEuSHm75iGaDHUobM2yVWkEicQ/VlPDILCP5oId5C9GL/BeEi
	2JeGLcKLDD/Q/bv702VMvZhfeZCqz8DFN2DvU0h2ccx9r4o=
X-Google-Smtp-Source: ABdhPJxemSFD1DzprK7rTtOxi8CIkbKh0/IhUTo9kpNUox/FCg7IJzSknXNS4MWjkdf8sJ2CqgtEeosMalB9SnlGUjk=
X-Received: by 2002:a17:906:c1c9:: with SMTP id bw9mr165852ejb.3.1631143715625;
 Wed, 08 Sep 2021 16:28:35 -0700 (PDT)
MIME-Version: 1.0
References: <CADrcXBRRXstQ5O6fGy3dhMueAigqER+yCMCHbX6SyVGV_im1Sw@mail.gmail.com>
 <CADrcXBS_Ph4Oq18F3YHqihEcbThqFLHQ5GY9eDJTvRgAPQ=05g@mail.gmail.com> <d05c9447-2ae5-9b27-5766-db6461817cef@gmail.com>
In-Reply-To: <d05c9447-2ae5-9b27-5766-db6461817cef@gmail.com>
Date: Thu, 9 Sep 2021 09:28:24 +1000
Message-ID: <CADrcXBQ6RTPgOcd6SONH7QsmG97v_6Vn5GY1j5LoWZspyKUamA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: D74KROGSNH5D23YLN44RMGSDPDX6STYO
X-Message-ID-Hash: D74KROGSNH5D23YLN44RMGSDPDX6STYO
X-MailFrom: efardin@ieee.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 + UBX Power Calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D74KROGSNH5D23YLN44RMGSDPDX6STYO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ernest Fardin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ernest Fardin <efardin@ieee.org>
Content-Type: multipart/mixed; boundary="===============1160819447379158376=="

--===============1160819447379158376==
Content-Type: multipart/alternative; boundary="000000000000bfca2005cb843dd1"

--000000000000bfca2005cb843dd1
Content-Type: text/plain; charset="UTF-8"

Thanks Marcus,

A couple more questions on this:

[1] Would it be possible for us to buy a USRP X310 (which supports the
reference power API), run uhd_power_cal and then transfer the UBX DB to the
N210 and expect calibrated power measurements? Or does the reference power
API need to be working on the N210 in order to apply the calibration data?
[2] In order to get the reference power API to work on the N210, would that
require changes to the N210 firmware, or just UHD?

Regards,

Ernest

On Thu, Sep 9, 2021 at 7:34 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-09-08 5:27 p.m., Ernest Fardin via USRP-users wrote:
>
> Hi,
>
> Following up on this, the question I'm trying to answer is: "Can I
> calibrate the rx power on an N210 + UBX platform?"
>
> With the N210, has_rx_power_reference()
> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af0307aa83d1454e92a7ec91fb4100b98>
> returns False. Can I conclude from this that an rx power calibration is not
> possible on this device?
>
> It means that there is no reference calibration API available for this
> device.
>
> The calibration reference API is fairly new, so it will only be available
> (at least initially) on newer devices.   The N2xx series is about 10 years
> old
>  at this point.
>
>
>
> On Tue, Sep 7, 2021 at 9:00 PM Ernest Fardin <efardin@ieee.org> wrote:
>
>> Hi,
>>
>> I'm trying to calibrate the receive power on a USRP N210 with a UBX
>> daughterboard. Using UHD 4.0, I can get uhd_power_cal.py to run by adding
>> an N210Calibrator class to usrp_calibrator.py. N210Calibrator overloads the
>> USRPCalibratorBase class.
>>
>> class N210Calibrator(USRPCalibratorBase):
>>     """
>>     N210/UBX Calibration
>>     """
>>     mboard_ids = ('N210r4',)
>>     default_rate = 2.5e6
>>     min_freq = 50e6
>>     max_freq = 50e6
>>     tune_settling_time = .5
>>
>> When the calibration completes, the store() method in usrp_calibrator
>> attempts to write the calibration table to the UBX with
>>
>>         database.write_cal_data(
>>             cal_key,
>>             cal_serial,
>>             cal_data.serialize())
>>
>> The chan_info string returned by the N210 is:
>>
>> {'mboard_id': 'N210r4', 'mboard_name': '', 'mboard_serial': '318EFF3',
>> 'rx_antenna': 'TX/RX', 'rx_id': 'UBX-40 v2 (0x007c)', 'rx_serial':
>> '318D55F', 'rx_subdev_name': 'UBX RX', 'rx_subdev_spec': 'A:0'}
>>
>> What values to use for cal_key and cal_serial?
>>
>> Thanks in advance!
>>
>> Ernest
>>
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000bfca2005cb843dd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Marcus,<div><br></div><div>A couple more questions =
on this:</div><div><br></div><div>[1] Would it be possible for us to buy a =
USRP X310 (which supports the reference power API), run uhd_power_cal and t=
hen transfer the UBX DB to the N210 and expect calibrated power measurement=
s? Or does the reference power API need to be working on the N210 in order =
to apply the calibration data?</div><div>[2] In order to get the reference =
power API to work on the N210, would that require changes to the N210 firmw=
are, or just UHD?</div><div><br></div><div>Regards,</div><div><br></div><di=
v>Ernest</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Sep 9, 2021 at 7:34 AM Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-09-08 5:27 p.m., Ernest Fardin
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>Following up on this, the question I&#39;m trying to answer is=
:
          &quot;Can I calibrate the rx power on an N210=C2=A0+ UBX platform=
?&quot;</div>
        <div><br>
        </div>
        <div>With the N210,=C2=A0<a href=3D"https://files.ettus.com/manual/=
classuhd_1_1usrp_1_1multi__usrp.html#af0307aa83d1454e92a7ec91fb4100b98" tar=
get=3D"_blank">has_rx_power_reference()</a> returns
          False. Can I conclude from this that an rx power calibration
          is not possible on this device?</div>
      </div>
    </blockquote>
    It means that there is no reference calibration API available for
    this device.<br>
    <br>
    The calibration reference API is fairly new, so it will only be
    available (at least initially) on newer devices.=C2=A0=C2=A0 The N2xx s=
eries
    is about 10 years old<br>
    =C2=A0at this point.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 7, 2021 at 9:00 P=
M
          Ernest Fardin &lt;<a href=3D"mailto:efardin@ieee.org" target=3D"_=
blank">efardin@ieee.org</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">Hi,
            <div><br>
            </div>
            <div>I&#39;m trying to calibrate the receive power on a USRP
              N210 with a UBX daughterboard. Using UHD 4.0, I can get
              uhd_power_cal.py to run by adding an N210Calibrator=C2=A0clas=
s
              to usrp_calibrator.py. N210Calibrator overloads the
              USRPCalibratorBase class.</div>
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
            <div>When the calibration completes, the store() method in
              usrp_calibrator attempts to write the calibration table to
              the UBX with=C2=A0</div>
            <div><br>
            </div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 database.write_cal_data(<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_key,<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_serial,<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_data.serialize(=
))<br>
            </div>
            <div><br>
            </div>
            <div>The chan_info string returned by the N210 is:</div>
            <div><br>
            </div>
            <div>{&#39;mboard_id&#39;: &#39;N210r4&#39;, &#39;mboard_name&#=
39;: &#39;&#39;,
              &#39;mboard_serial&#39;: &#39;318EFF3&#39;, &#39;rx_antenna&#=
39;: &#39;TX/RX&#39;,
              &#39;rx_id&#39;: &#39;UBX-40 v2 (0x007c)&#39;, &#39;rx_serial=
&#39;: &#39;318D55F&#39;,
              &#39;rx_subdev_name&#39;: &#39;UBX RX&#39;, &#39;rx_subdev_sp=
ec&#39;: &#39;A:0&#39;}<br>
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
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000bfca2005cb843dd1--

--===============1160819447379158376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1160819447379158376==--
