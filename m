Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8A9404090
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 23:35:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7355738410B
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 17:34:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="c5+4vz23";
	dkim-atps=neutral
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 6398F3840A8
	for <usrp-users@lists.ettus.com>; Wed,  8 Sep 2021 17:34:07 -0400 (EDT)
Received: by mail-il1-f178.google.com with SMTP id v16so3842159ilo.10
        for <usrp-users@lists.ettus.com>; Wed, 08 Sep 2021 14:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=X4q2Wv+02HSXJKa8DtIoN/MFlk59vBGA/kblI3ngufc=;
        b=c5+4vz23m6bpYa7vVF2spMsVMd8F+BeaHmwzL2Ad7YomaE01MqEi+2vXoeIYNvsAMq
         V02xe9xG6/xVk76ixbCF0TL4pp45EQNtdZxpWCSgyZBVEpsCu3AP+XlHhkoQOSZiP0J+
         4ONByeG/fD5Vun2tSyNCL/KGsff6CJ3m6vclAGWe+Gsq8dlaJ/3em1J4/Eh0nQo9dJoA
         NBCEZC85oq5XLdy8v7/9keqDSM6/di5ti7JGuq23LKjSoCCGrBwIbXW37vnil4YbFh66
         9QE2+XNfpJG3MhB2LbJj7w7hEWCjYUsESS5lchyeTljPxDC/yrtgOujKUavVLe3GMEyC
         /tbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=X4q2Wv+02HSXJKa8DtIoN/MFlk59vBGA/kblI3ngufc=;
        b=S6vaKb0YP9gRrvkL/wKjg/EOZx/6E8GAHypyi9v9R+VxOkv7e1cVzuq+rgYietZXVj
         HioUR/4grhG4TA/AUkB9sCgV0GP80eFD0y0ZiEhWeQBlfEqtGtIZcCsP37l8jOD9/0yN
         2w+hgxKkCvaqJtVwr//rdvV4qksVRzxqG0/OJaoZo1BLWEqlTYhEmuAJj+m0RZgbI6hT
         S0NdSx3evT8dabaIhIh5glyvv8kk9moSMqCAXZMTr0z+Ev2gQoqpMq+RccWUwWq5TaUC
         KWuOSxYE9OF2dbkcdEb/VlCO93ztXe/EDKnE8LRTLMjNGchKxKUuRPe4+KX6tMNebi9d
         WP+A==
X-Gm-Message-State: AOAM532I3UKhBOEkUxsdtNiGP0OKMXE1LcYewhM3UltsLaQWcwyxMrdy
	F0obvj2/htdWCub1/Xpv1o/HGORni7W2ng==
X-Google-Smtp-Source: ABdhPJzDyxzCGpbcNUyP0OG4di5U3c8E2g7bbXdSBPrwHZpivjfjQcXcULOgBS5oqMmxkx0AM7+oLQ==
X-Received: by 2002:a05:6e02:6ca:: with SMTP id p10mr237433ils.269.1631136846533;
        Wed, 08 Sep 2021 14:34:06 -0700 (PDT)
Received: from [192.168.2.243] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id s10sm160705iom.40.2021.09.08.14.34.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 14:34:06 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CADrcXBRRXstQ5O6fGy3dhMueAigqER+yCMCHbX6SyVGV_im1Sw@mail.gmail.com>
 <CADrcXBS_Ph4Oq18F3YHqihEcbThqFLHQ5GY9eDJTvRgAPQ=05g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <d05c9447-2ae5-9b27-5766-db6461817cef@gmail.com>
Date: Wed, 8 Sep 2021 17:34:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CADrcXBS_Ph4Oq18F3YHqihEcbThqFLHQ5GY9eDJTvRgAPQ=05g@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: PM6LU4Z4ANNO5ZKKY72OTIL6OAJF73GF
X-Message-ID-Hash: PM6LU4Z4ANNO5ZKKY72OTIL6OAJF73GF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 + UBX Power Calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PM6LU4Z4ANNO5ZKKY72OTIL6OAJF73GF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1599342845005567319=="

This is a multi-part message in MIME format.
--===============1599342845005567319==
Content-Type: multipart/alternative;
 boundary="------------15CCD2A76068AE510CC60EBE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------15CCD2A76068AE510CC60EBE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-08 5:27 p.m., Ernest Fardin via USRP-users wrote:
> Hi,
>
> Following up on this, the question I'm trying to answer is: "Can I=20
> calibrate the rx power on an N210=C2=A0+ UBX platform?"
>
> With the N210, has_rx_power_reference()=20
> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af=
0307aa83d1454e92a7ec91fb4100b98>=20
> returns False. Can I conclude from this that an rx power calibration=20
> is not possible on this device?
It means that there is no reference calibration API available for this=20
device.

The calibration reference API is fairly new, so it will only be=20
available (at least initially) on newer devices.=C2=A0=C2=A0 The N2xx ser=
ies is=20
about 10 years old
 =C2=A0at this point.


>
> On Tue, Sep 7, 2021 at 9:00 PM Ernest Fardin <efardin@ieee.org=20
> <mailto:efardin@ieee.org>> wrote:
>
>     Hi,
>
>     I'm trying to calibrate the receive power on a USRP N210 with a
>     UBX daughterboard. Using UHD 4.0, I can get uhd_power_cal.py to
>     run by adding an N210Calibrator=C2=A0class to usrp_calibrator.py.
>     N210Calibrator overloads the USRPCalibratorBase class.
>
>     class N210Calibrator(USRPCalibratorBase):
>     =C2=A0 =C2=A0 """
>     =C2=A0 =C2=A0 N210/UBX Calibration
>     =C2=A0 =C2=A0 """
>     =C2=A0 =C2=A0 mboard_ids =3D ('N210r4',)
>     =C2=A0 =C2=A0 default_rate =3D 2.5e6
>     =C2=A0 =C2=A0 min_freq =3D 50e6
>     =C2=A0 =C2=A0 max_freq =3D 50e6
>     =C2=A0 =C2=A0 tune_settling_time =3D .5
>
>     When the calibration completes, the store() method in
>     usrp_calibrator attempts to write the calibration table to the UBX
>     with
>
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 database.write_cal_data(
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_key,
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_serial,
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_data.serialize())
>
>     The chan_info string returned by the N210 is:
>
>     {'mboard_id': 'N210r4', 'mboard_name': '', 'mboard_serial':
>     '318EFF3', 'rx_antenna': 'TX/RX', 'rx_id': 'UBX-40 v2 (0x007c)',
>     'rx_serial': '318D55F', 'rx_subdev_name': 'UBX RX',
>     'rx_subdev_spec': 'A:0'}
>
>     What values to use for cal_key and cal_serial?
>
>     Thanks in advance!
>
>     Ernest
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------15CCD2A76068AE510CC60EBE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-08 5:27 p.m., Ernest Fardin
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CADrcXBS_Ph4Oq18F3YHqihEcbThqFLHQ5GY9eDJTvRgAPQ=3D05g@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>Following up on this, the question I'm trying to answer is:
          "Can I calibrate the rx power on an N210=C2=A0+ UBX platform?"<=
/div>
        <div><br>
        </div>
        <div>With the N210,=C2=A0<a
href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.ht=
ml#af0307aa83d1454e92a7ec91fb4100b98"
            moz-do-not-send=3D"true">has_rx_power_reference()</a> returns
          False. Can I conclude from this that an rx power calibration
          is not possible on this device?</div>
      </div>
    </blockquote>
    It means that there is no reference calibration API available for
    this device.<br>
    <br>
    The calibration reference API is fairly new, so it will only be
    available (at least initially) on newer devices.=C2=A0=C2=A0 The N2xx=
 series
    is about 10 years old<br>
    =C2=A0at this point.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CADrcXBS_Ph4Oq18F3YHqihEcbThqFLHQ5GY9eDJTvRgAPQ=3D05g@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 7, 2021 at 9:00=
 PM
          Ernest Fardin &lt;<a href=3D"mailto:efardin@ieee.org"
            moz-do-not-send=3D"true">efardin@ieee.org</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">Hi,
            <div><br>
            </div>
            <div>I'm trying to calibrate the receive power on a USRP
              N210 with a UBX daughterboard. Using UHD 4.0, I can get
              uhd_power_cal.py to run by adding an N210Calibrator=C2=A0cl=
ass
              to usrp_calibrator.py. N210Calibrator overloads the
              USRPCalibratorBase class.</div>
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
            <div>When the calibration completes, the store() method in
              usrp_calibrator attempts to write the calibration table to
              the UBX with=C2=A0</div>
            <div><br>
            </div>
            <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 database.write_cal_data(<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_key,<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_serial,<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_data.serializ=
e())<br>
            </div>
            <div><br>
            </div>
            <div>The chan_info string returned by the N210 is:</div>
            <div><br>
            </div>
            <div>{'mboard_id': 'N210r4', 'mboard_name': '',
              'mboard_serial': '318EFF3', 'rx_antenna': 'TX/RX',
              'rx_id': 'UBX-40 v2 (0x007c)', 'rx_serial': '318D55F',
              'rx_subdev_name': 'UBX RX', 'rx_subdev_spec': 'A:0'}<br>
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
    <br>
  </body>
</html>

--------------15CCD2A76068AE510CC60EBE--

--===============1599342845005567319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1599342845005567319==--
