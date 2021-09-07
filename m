Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AFD40277F
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 13:01:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EAD94383FE7
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 07:01:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ieee.org header.i=@ieee.org header.b="Vs/hKtqA";
	dkim-atps=neutral
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C9AA383E44
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 07:00:59 -0400 (EDT)
Received: by mail-ed1-f47.google.com with SMTP id u19so13337993edb.3
        for <usrp-users@lists.ettus.com>; Tue, 07 Sep 2021 04:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=nIkJUDbCk4JDFpTRvdpBWrHdWBEYHXOE4geYiZfUad8=;
        b=Vs/hKtqAPiz5UOHQywtPJVyuPgW16EeSRhv1jdyJ7uS6t0WP0w+ln/SPOoIRxz1PG4
         lXNf4DoNMLZRNs6OkQPjsLxdFhkAmQ6zeBEvau4gEP877tjOoOOAPYZFHz0EVbscazfm
         rn67paKBD7l+EGFQTR+dD81EsEsmMq/v1Yf88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=nIkJUDbCk4JDFpTRvdpBWrHdWBEYHXOE4geYiZfUad8=;
        b=gqdiY+bfEcCdPpWhk0C3Ypte5w5qPo0voyBJ7tqWcBHiW4YTa3dL3aetsPYBd54xjW
         MlbNn8zbmLTy81e/LaYViDkkL6+b5L+55fdKjC185Pro04zNP3iy3btKISS6pfnMFggE
         yhShIyTWloFvtcwb2L8ydhaGEu9oXFEwbKZMWMBc9o74je+sIRTmkaazMWKBN5JYRMVa
         VZSgsnVL2yyp4mFsjdCFD3w1X/oNoNHzQTuAsWewOMlLjIBsoNaxOnw9BGWflZ77QO66
         kG9tvQXiRcV9l7vYCPYEKE6ONNEZf3YhxkT0zp059GTKz9BRADRVd/YvvdbAH4GEAnaY
         Y0Ew==
X-Gm-Message-State: AOAM531/jdTAQDfQXBiDY5/2NE0VLOiT3fuac6JOvOS4G6hHkn69TmPM
	GV7o9i+VWChAlYbxHD31U7rfAbpoCTUHaQucxVrnbtpDZeLC/g==
X-Google-Smtp-Source: ABdhPJxZoQVm8dhLDhev794aH4mrGbWsOxKH4RWSDPuPKC7X+DGMvPeufSgNDMmIDCLiCEgryYTmtw7vgp7LXo1xlkk=
X-Received: by 2002:a05:6402:6d1:: with SMTP id n17mr17221438edy.106.1631012458649;
 Tue, 07 Sep 2021 04:00:58 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 7 Sep 2021 21:00:47 +1000
Message-ID: <CADrcXBRRXstQ5O6fGy3dhMueAigqER+yCMCHbX6SyVGV_im1Sw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: BMCMZ5JAKZ3FPIQ22G7O6IE7I2X3MKLN
X-Message-ID-Hash: BMCMZ5JAKZ3FPIQ22G7O6IE7I2X3MKLN
X-MailFrom: efardin@ieee.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N210 + UBX Power Calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BMCMZ5JAKZ3FPIQ22G7O6IE7I2X3MKLN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ernest Fardin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ernest Fardin <efardin@ieee.org>
Content-Type: multipart/mixed; boundary="===============5670012944210018269=="

--===============5670012944210018269==
Content-Type: multipart/alternative; boundary="00000000000039300c05cb65ae37"

--00000000000039300c05cb65ae37
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to calibrate the receive power on a USRP N210 with a UBX
daughterboard. Using UHD 4.0, I can get uhd_power_cal.py to run by adding
an N210Calibrator class to usrp_calibrator.py. N210Calibrator overloads the
USRPCalibratorBase class.

class N210Calibrator(USRPCalibratorBase):
    """
    N210/UBX Calibration
    """
    mboard_ids = ('N210r4',)
    default_rate = 2.5e6
    min_freq = 50e6
    max_freq = 50e6
    tune_settling_time = .5

When the calibration completes, the store() method in usrp_calibrator
attempts to write the calibration table to the UBX with

        database.write_cal_data(
            cal_key,
            cal_serial,
            cal_data.serialize())

The chan_info string returned by the N210 is:

{'mboard_id': 'N210r4', 'mboard_name': '', 'mboard_serial': '318EFF3',
'rx_antenna': 'TX/RX', 'rx_id': 'UBX-40 v2 (0x007c)', 'rx_serial':
'318D55F', 'rx_subdev_name': 'UBX RX', 'rx_subdev_spec': 'A:0'}

What values to use for cal_key and cal_serial?

Thanks in advance!

Ernest

--00000000000039300c05cb65ae37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m trying to calibrate the rec=
eive power on a USRP N210 with a UBX daughterboard. Using UHD 4.0, I can ge=
t uhd_power_cal.py to run by adding an N210Calibrator=C2=A0class to usrp_ca=
librator.py. N210Calibrator overloads the USRPCalibratorBase class.</div><d=
iv><br></div><div>class N210Calibrator(USRPCalibratorBase):<br>=C2=A0 =C2=
=A0 &quot;&quot;&quot;<br>=C2=A0 =C2=A0 N210/UBX Calibration<br>=C2=A0 =C2=
=A0 &quot;&quot;&quot;<br>=C2=A0 =C2=A0 mboard_ids =3D (&#39;N210r4&#39;,)<=
br>=C2=A0 =C2=A0 default_rate =3D 2.5e6<br>=C2=A0 =C2=A0 min_freq =3D 50e6<=
br>=C2=A0 =C2=A0 max_freq =3D 50e6<br>=C2=A0 =C2=A0 tune_settling_time =3D =
.5<br></div><div><br></div><div>When the calibration completes, the store()=
 method in usrp_calibrator attempts to write the calibration table to the U=
BX with=C2=A0</div><div><br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 database=
.write_cal_data(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_key,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_serial,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 cal_data.serialize())<br></div><div><br></div><div=
>The chan_info string returned by the N210 is:</div><div><br></div><div>{&#=
39;mboard_id&#39;: &#39;N210r4&#39;, &#39;mboard_name&#39;: &#39;&#39;, &#3=
9;mboard_serial&#39;: &#39;318EFF3&#39;, &#39;rx_antenna&#39;: &#39;TX/RX&#=
39;, &#39;rx_id&#39;: &#39;UBX-40 v2 (0x007c)&#39;, &#39;rx_serial&#39;: &#=
39;318D55F&#39;, &#39;rx_subdev_name&#39;: &#39;UBX RX&#39;, &#39;rx_subdev=
_spec&#39;: &#39;A:0&#39;}<br></div><div><br></div><div>What values to use =
for cal_key and cal_serial?<br></div><div><br></div><div>Thanks in advance!=
</div><div><br></div><div>Ernest</div><div><br></div></div>

--00000000000039300c05cb65ae37--

--===============5670012944210018269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5670012944210018269==--
