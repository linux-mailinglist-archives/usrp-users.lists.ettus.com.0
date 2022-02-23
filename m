Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCAB4C17E9
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 16:58:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAFA8384EB5
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 10:58:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Q69osLaG";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 96CFD384519
	for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 10:57:37 -0500 (EST)
Received: by mail-qv1-f43.google.com with SMTP id a1so9099501qvl.6
        for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 07:57:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=lJ6k/R0F+PpN+NDht2L4+xdISeV/Fwv38P/eKkCsY78=;
        b=Q69osLaG6SrPkuNa4s0Um9G/RwKVXN8o6kGUAAIGnnyENFXZ3OTt3vHxzAjTTA7bYu
         OBNbafH3SUcygtMkm8SmDOv7qXRlGCWD2/ATw9oQUnniDTJ7JyB8gxgxIsUDXHuhElKP
         AIXJfoFxsSWRpsEUnTQJrgC5oRSrFJMW/3Xbv8HXN7kzwd6y+MCNdXS4gP/FZbcN+F8D
         0kEBWOKLOiEXbpB3l5rLuSnHwh0eMYyApYcnYWWSNPbfIJ5tZb1++SXULp38dYVrNoOc
         d0q/I7GJGHM5f20c7HR1Zin5IR9Ay2SxT4/l+g1iAy9yy2qNa6lc6TmHzk/3OWYHOdcC
         aFow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=lJ6k/R0F+PpN+NDht2L4+xdISeV/Fwv38P/eKkCsY78=;
        b=dzSx9gkw1yPtHE6yHbaHKA4ecPvQQGO9iLkdieqApK9X13tzpkh/UFjn49JJR4RDEy
         axqeDT+y4tHV3yu/TQERbJhiARwn8saYGvY+b5CkGwnUfkdD0UJP4U2v+z0+bQ4TlOPK
         F+nhosZd/9dV/P+AIbKB8ddD9O6Y2KJ+qN//unSdbhAEULiCTyvJcF2TSvrtkPqJnZm+
         kjT26i/5PGirqbMd3vZWQUektOGOLQWwv/FTQVIz7B66hFoS+eiK3s3VToXMDtbPRNdS
         1V31pPdMsyxt6eI0T2c6wZ5cpQ5ZT6pKp0s4xKictlrI7+ErGt5K4Q5SN5il3BeKbp95
         2Qpg==
X-Gm-Message-State: AOAM532P/So1peOzKj7gaDVMIkUokU/fdIzaHbGJ9mGnqZ2As28XcY/N
	p8W4EzctGme9gWYrJTBTGqNTa3j3bhrO4w==
X-Google-Smtp-Source: ABdhPJyyi9Jw3FeNulmlmNSNyQgHKSdge+R9JhcLQsw32sOpMsOw9wyBFc6DdAgw/BgdwXZaD2y10Q==
X-Received: by 2002:ac8:5955:0:b0:2dd:fe3e:1263 with SMTP id 21-20020ac85955000000b002ddfe3e1263mr366606qtz.218.1645631856987;
        Wed, 23 Feb 2022 07:57:36 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id g12sm2111522qko.124.2022.02.23.07.57.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Feb 2022 07:57:36 -0800 (PST)
Message-ID: <2bf6f15d-7a7e-9321-c278-f9732f322b2d@gmail.com>
Date: Wed, 23 Feb 2022 10:57:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Alvaro Pendas Recondo <apruhd@gmail.com>
References: <CAAC=UJPdKrPns+vxyowygXQTK7khtLMu8koQqpsvHGQJAOjnHw@mail.gmail.com>
 <4876156c-b6b9-9fb7-7e9f-d0c56961d4f0@gmail.com>
 <CAAC=UJOtVbZ+L_LmRQRtxs1oUWWHODoosoHpx_6s=F-bqmOo1Q@mail.gmail.com>
 <69d0baa5-45f7-44ff-88e3-d0c0a46d381c@gmail.com>
 <CAAC=UJOKOnQ0W2i9FWoDGcgN8otCV4-43BD7tjtvUoo0AKNtFg@mail.gmail.com>
 <9be7a93d-c746-dcc5-51ec-aa75519b1c24@gmail.com>
 <CAAC=UJNuTseRhHFRtLZEMb+nk4DKCBQkfUD7z91SohT8AqqFOw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAC=UJNuTseRhHFRtLZEMb+nk4DKCBQkfUD7z91SohT8AqqFOw@mail.gmail.com>
Message-ID-Hash: ESTKBMZYEB7R7M3TX7UV4K2C3E6DILMR
X-Message-ID-Hash: ESTKBMZYEB7R7M3TX7UV4K2C3E6DILMR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 4 Rx sync with 2 B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ESTKBMZYEB7R7M3TX7UV4K2C3E6DILMR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8181807965171101479=="

This is a multi-part message in MIME format.
--===============8181807965171101479==
Content-Type: multipart/alternative;
 boundary="------------BpF37yEbPePlVz9u9f7qzMH1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BpF37yEbPePlVz9u9f7qzMH1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-23 07:42, Alvaro Pendas Recondo wrote:
> I finally managed to make it work by setting both blocks with "No=20
> sync" (in my first scheme one of them was configured with=20
> "Unknown=C2=A0PPS" by accident). There is still the problem with the=20
> decrease of the maximum sampling rate when doing MIMO with B210.=20
> Anyway, in this case I was just doing a simple characterization of the=20
> devices, so I will keep in mind that some problems may appear when=20
> synchronizing multiple B2xx=C2=A0externally. I am also aware that N210 =
is=20
> the model recommended=C2=A0for that.
>
> Thank you very much for your help.
The decrease in maximum sample rate when using two channels has to do=20
with the way data are clocked out of the AD9361 RFFE chip, and is a=20
design limitation of that chip.


>
> El mar, 22 feb 2022 a las 20:10, Marcus D. Leech=20
> (<patchvonbraun@gmail.com>) escribi=C3=B3:
>
>     On 2022-02-22 12:05, Alvaro Pendas Recondo wrote:
>     > Yes, I am aware of the 4-channel, but I just forget about it when
>     > doing comparison. The explanation behind is that I only have 3
>     > antennas right now, so I am actually working with 3 Rx.
>     > About setting Sync to "Unknown PPS", I had tried before, with no
>     > result, but I have setted=C2=A0again. However, I have never tried=
 to
>     modify
>     > the "start time", which in GNU Radio is -1.0 by default. The
>     > interesting thing is that if I try to set a positive value I get
>     the error
>     > gr::log :WARN: usrp_source1 - USRP Source Block caught rx error:
>     > ERROR_CODE_LATE_COMMAND
>     >
>     Yeah, this is going to require a bit of custom coding on your part =
to
>     make sure that both B210 agree on what time it is when the PPS
>     arrives.
>     I think that having
>     =C2=A0=C2=A0 *both* of them set to "Unknown PPS" won't work very we=
ll,
>     because the
>     first one will *wait* before the code even gets to the second one, =
so
>     they'll be in disagreement
>     =C2=A0=C2=A0 about timing.
>
>     You'll likely have to do the PPS synchronization "dance" yourself.
>
>

--------------BpF37yEbPePlVz9u9f7qzMH1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-23 07:42, Alvaro Pendas
      Recondo wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAC=3DUJNuTseRhHFRtLZEMb+nk4DKCBQkfUD7z91SohT8AqqFOw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I finally managed to make it work by setting both
        blocks with "No sync" (in my first scheme one of them was
        configured with "Unknown=C2=A0PPS" by accident). There is still t=
he
        problem with the decrease of the maximum sampling rate when
        doing MIMO with B210. Anyway, in this case I was just doing a
        simple characterization of the devices, so I will keep in mind
        that some problems may appear when synchronizing multiple
        B2xx=C2=A0externally. I am also aware that N210 is the model
        recommended=C2=A0for that.
        <div><br>
        </div>
        <div>Thank you very much for your help.</div>
      </div>
    </blockquote>
    The decrease in maximum sample rate when using two channels has to
    do with the way data are clocked out of the AD9361 RFFE chip, and is
    a design limitation of that chip.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAC=3DUJNuTseRhHFRtLZEMb+nk4DKCBQkfUD7z91SohT8AqqFOw@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El mar, 22 feb 2022 a las
          20:10, Marcus D. Leech (&lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          2022-02-22 12:05, Alvaro Pendas Recondo wrote:<br>
          &gt; Yes, I am aware of the 4-channel, but I just forget about
          it when <br>
          &gt; doing comparison. The explanation behind is that I only
          have 3 <br>
          &gt; antennas right now, so I am actually working with 3 Rx.<br=
>
          &gt; About setting Sync to "Unknown PPS", I had tried before,
          with no <br>
          &gt; result, but I have setted=C2=A0again. However, I have neve=
r
          tried to modify <br>
          &gt; the "start time", which in GNU Radio is -1.0 by default.
          The <br>
          &gt; interesting thing is that if I try to set a positive
          value I get the error<br>
          &gt; gr::log :WARN: usrp_source1 - USRP Source Block caught rx
          error: <br>
          &gt; ERROR_CODE_LATE_COMMAND<br>
          &gt;<br>
          Yeah, this is going to require a bit of custom coding on your
          part to <br>
          make sure that both B210 agree on what time it is when the PPS
          arrives.=C2=A0 <br>
          I think that having<br>
          =C2=A0=C2=A0 *both* of them set to "Unknown PPS" won't work ver=
y well,
          because the <br>
          first one will *wait* before the code even gets to the second
          one, so <br>
          they'll be in disagreement<br>
          =C2=A0=C2=A0 about timing.<br>
          <br>
          You'll likely have to do the PPS synchronization "dance"
          yourself.<br>
          <br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------BpF37yEbPePlVz9u9f7qzMH1--

--===============8181807965171101479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8181807965171101479==--
