Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C772404085
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 23:28:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5795838410B
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 17:28:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ieee.org header.i=@ieee.org header.b="YGWm7nC3";
	dkim-atps=neutral
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 9454D383EF0
	for <usrp-users@lists.ettus.com>; Wed,  8 Sep 2021 17:27:30 -0400 (EDT)
Received: by mail-ed1-f51.google.com with SMTP id q3so4828335edt.5
        for <usrp-users@lists.ettus.com>; Wed, 08 Sep 2021 14:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=ydtuPl/x7+jeBgnVb93LLuDtrodePL7CiyCF7xwodLQ=;
        b=YGWm7nC3iwZXY7oCHijGso1hCL4gCL1GytxWo/c/vKBlZ0GI+nPeNtwUY+m2eKXRMr
         XMfrkZ8Log+52BokYbLbCHaoel0gml2BeBifhDOa6i/XhwgPIIMWAZ9VPwBp5XdjYEG0
         8cb1NfBbW3UwUhST2dXG0W4BB5UqGPexJoXq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ydtuPl/x7+jeBgnVb93LLuDtrodePL7CiyCF7xwodLQ=;
        b=sQe9DUTPgeOSTFeTjE1BaAaPoiLX2VzpKhLy8e6B48hj7pGkNaqwLScp1vGfjoH9XZ
         HQ4IrduqYPjK1WE6rwqYQz63YIp+osYL5JN+flQpEsq89//PIwByVxbPAZIK7c43hfU9
         YLcled9a3/jW717uykJmUyg/WNCVssCXNlPJz8J08eQYw9SS1Oc+tUbLHcWNpNvxecvD
         PAxI9PrD1OH8ETW75+g4N9X54rYiUKyZ5jeetk6UZFiUKBIGNO1ZrZkuhDdr2rfPyirD
         ImBGCoB+pvKsuwP+Tu4PxmAqMjweVfvoqHpXaMm+y7e8mh7bqOidYC6cZPt6sCgzRjBR
         tW2w==
X-Gm-Message-State: AOAM531Nu9dC3rCUVOYtfyGpWBFNxlUsvDRQCVid8bdqcIAbyJ0aLfuv
	fKj6Q97s7/tOScxwjrohpifHmNOdduydEbQWZkYCxaSxSsqBEw==
X-Google-Smtp-Source: ABdhPJxK5IrSR5WOyrBQD3YicUb2FjK2+WIgNfkRxvWliRNLQ/M58vJ/LEIxAcD7msvf/UMN2o5SGJJANZoWTV05uBo=
X-Received: by 2002:a50:d4dc:: with SMTP id e28mr213454edj.106.1631136449207;
 Wed, 08 Sep 2021 14:27:29 -0700 (PDT)
MIME-Version: 1.0
References: <CADrcXBRRXstQ5O6fGy3dhMueAigqER+yCMCHbX6SyVGV_im1Sw@mail.gmail.com>
In-Reply-To: <CADrcXBRRXstQ5O6fGy3dhMueAigqER+yCMCHbX6SyVGV_im1Sw@mail.gmail.com>
Date: Thu, 9 Sep 2021 07:27:18 +1000
Message-ID: <CADrcXBS_Ph4Oq18F3YHqihEcbThqFLHQ5GY9eDJTvRgAPQ=05g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: NJU57TPA4MFHUFMI4MBGDBABOSPLUKD7
X-Message-ID-Hash: NJU57TPA4MFHUFMI4MBGDBABOSPLUKD7
X-MailFrom: efardin@ieee.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 + UBX Power Calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NJU57TPA4MFHUFMI4MBGDBABOSPLUKD7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ernest Fardin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ernest Fardin <efardin@ieee.org>
Content-Type: multipart/mixed; boundary="===============4894981115101632741=="

--===============4894981115101632741==
Content-Type: multipart/alternative; boundary="000000000000a3107605cb828c0c"

--000000000000a3107605cb828c0c
Content-Type: text/plain; charset="UTF-8"

Hi,

Following up on this, the question I'm trying to answer is: "Can I
calibrate the rx power on an N210 + UBX platform?"

With the N210, has_rx_power_reference()
<https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af0307aa83d1454e92a7ec91fb4100b98>
returns False. Can I conclude from this that an rx power calibration is not
possible on this device?

On Tue, Sep 7, 2021 at 9:00 PM Ernest Fardin <efardin@ieee.org> wrote:

> Hi,
>
> I'm trying to calibrate the receive power on a USRP N210 with a UBX
> daughterboard. Using UHD 4.0, I can get uhd_power_cal.py to run by adding
> an N210Calibrator class to usrp_calibrator.py. N210Calibrator overloads the
> USRPCalibratorBase class.
>
> class N210Calibrator(USRPCalibratorBase):
>     """
>     N210/UBX Calibration
>     """
>     mboard_ids = ('N210r4',)
>     default_rate = 2.5e6
>     min_freq = 50e6
>     max_freq = 50e6
>     tune_settling_time = .5
>
> When the calibration completes, the store() method in usrp_calibrator
> attempts to write the calibration table to the UBX with
>
>         database.write_cal_data(
>             cal_key,
>             cal_serial,
>             cal_data.serialize())
>
> The chan_info string returned by the N210 is:
>
> {'mboard_id': 'N210r4', 'mboard_name': '', 'mboard_serial': '318EFF3',
> 'rx_antenna': 'TX/RX', 'rx_id': 'UBX-40 v2 (0x007c)', 'rx_serial':
> '318D55F', 'rx_subdev_name': 'UBX RX', 'rx_subdev_spec': 'A:0'}
>
> What values to use for cal_key and cal_serial?
>
> Thanks in advance!
>
> Ernest
>
>

--000000000000a3107605cb828c0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Following up on this, the question =
I&#39;m trying to answer is: &quot;Can I calibrate the rx power on an N210=
=C2=A0+ UBX platform?&quot;</div><div><br></div><div>With the N210,=C2=A0<a=
 href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.htm=
l#af0307aa83d1454e92a7ec91fb4100b98">has_rx_power_reference()</a> returns F=
alse. Can I conclude from this that an rx power calibration is not possible=
 on this device?</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, Sep 7, 2021 at 9:00 PM Ernest Fardin &lt;<a h=
ref=3D"mailto:efardin@ieee.org">efardin@ieee.org</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><b=
r></div><div>I&#39;m trying to calibrate the receive power on a USRP N210 w=
ith a UBX daughterboard. Using UHD 4.0, I can get uhd_power_cal.py to run b=
y adding an N210Calibrator=C2=A0class to usrp_calibrator.py. N210Calibrator=
 overloads the USRPCalibratorBase class.</div><div><br></div><div>class N21=
0Calibrator(USRPCalibratorBase):<br>=C2=A0 =C2=A0 &quot;&quot;&quot;<br>=C2=
=A0 =C2=A0 N210/UBX Calibration<br>=C2=A0 =C2=A0 &quot;&quot;&quot;<br>=C2=
=A0 =C2=A0 mboard_ids =3D (&#39;N210r4&#39;,)<br>=C2=A0 =C2=A0 default_rate=
 =3D 2.5e6<br>=C2=A0 =C2=A0 min_freq =3D 50e6<br>=C2=A0 =C2=A0 max_freq =3D=
 50e6<br>=C2=A0 =C2=A0 tune_settling_time =3D .5<br></div><div><br></div><d=
iv>When the calibration completes, the store() method in usrp_calibrator at=
tempts to write the calibration table to the UBX with=C2=A0</div><div><br><=
/div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 database.write_cal_data(<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_key,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 cal_serial,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cal_=
data.serialize())<br></div><div><br></div><div>The chan_info string returne=
d by the N210 is:</div><div><br></div><div>{&#39;mboard_id&#39;: &#39;N210r=
4&#39;, &#39;mboard_name&#39;: &#39;&#39;, &#39;mboard_serial&#39;: &#39;31=
8EFF3&#39;, &#39;rx_antenna&#39;: &#39;TX/RX&#39;, &#39;rx_id&#39;: &#39;UB=
X-40 v2 (0x007c)&#39;, &#39;rx_serial&#39;: &#39;318D55F&#39;, &#39;rx_subd=
ev_name&#39;: &#39;UBX RX&#39;, &#39;rx_subdev_spec&#39;: &#39;A:0&#39;}<br=
></div><div><br></div><div>What values to use for cal_key and cal_serial?<b=
r></div><div><br></div><div>Thanks in advance!</div><div><br></div><div>Ern=
est</div><div><br></div></div>
</blockquote></div>

--000000000000a3107605cb828c0c--

--===============4894981115101632741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4894981115101632741==--
