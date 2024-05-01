Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0738B8B0A
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 15:19:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BBC1F3852EB
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 09:19:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714569589; bh=sU0b3p8meiBXXom1aXP/v7FYhHamt5pEOnH/KbpZGqQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zMuv1X1hT6TLdpERAZVRl1laCl/1tOEqe1kW0rD3JyvLnhO1xtlQfimdS0WIRaqJX
	 nJT2ldRRfHaqUCPmz0dieisNni7uokj2+w+VzAC+HhEM1jFognumk0BxFptnwgk361
	 aUkMmQGNG9pPSMhXe/VmvBMLJNffwjODapG5ypuVo7exwUHlfmZU6v6fYoZOHrGQI5
	 mU0dLB36BjD5bSFcre/x9lzZf2o0nrJlqpjLA/fPFiL0sLwGJAQM3fG1sjvIEztyTA
	 rN41caIuN58bw6jsYaijOMMaCV7FvsOZxK39xCLsg4I87yj8hTQbvaPk8CKKyilrM6
	 sjaCaASgVEAqw==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 203693852BB
	for <usrp-users@lists.ettus.com>; Wed,  1 May 2024 09:19:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g9KNdoB6";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-78f0440656eso429478785a.1
        for <usrp-users@lists.ettus.com>; Wed, 01 May 2024 06:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714569577; x=1715174377; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G37o0sbGYwfdXofxtD9D1XuH4Uo3J4l1DisGM9N821E=;
        b=g9KNdoB61mSeBp76OdvYoqLYpRf5r76KY1a8tTf5JLHqeBiThAcsds+9tNFMImj8JY
         vm5BbJQzwIzIeoK27pycbqADYiQx2jj3FFVnNNmWIdu5b/ulVuSZOESULdQz8hEmHX32
         iUfDk6Nd3KUuoMHmS5qIIRMS9HpMyDyqPhGhTC+mxSEmFCiaAJ3v9qw9yCDeQq6FAZEX
         b2eeq6oYNGyWLENnxRTr6oanVVacLneZBv2tvTC8epg2wmUhMGmxV5v6Uk8ZE5+8At5U
         jtPAtw9ozNRCf41m25Q1xb17o57w2nDichadedDaknabg1WXNESRJRE6uV4C87D7qsnp
         LHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714569577; x=1715174377;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G37o0sbGYwfdXofxtD9D1XuH4Uo3J4l1DisGM9N821E=;
        b=MnbU9bxgEqtDTPBeCIttnsRVegIOcfUxA4pRoeoKFwPZuNCEjSBLXnimz7qje3T4Z/
         qrPkTxH7J7tWxjGlBrf+sC886JN4iLXzjEUqehlqV0gldaWAOHLdJhUh9/lEAl4mssOe
         59JzpPn8GWb93PW5O9/VePDOIilrnLoLp4TQ38GhLGUhItkc++WxSISiTz8g8Wo9ytqN
         5knuTHr1f6B5zFKfpFtpGNVgZNDgutgEKv+qOwoPuHvGGNt5c2qecoebcMYfOocg4FbW
         zGxcx53PW6GwCyI0kNuVFVHHZfCuz7seeFavYVzOuqYCnWLgiJOWAs9nC8tJOgZwQVPX
         m/RA==
X-Gm-Message-State: AOJu0Yx1KftfFwX4oXBrGEUSeyQm58T+BnWmjpvu2UjMavZ9AIulS+4j
	lIfYQy+pZovo0g4IWegbH2bmqz/Jt4X9AEhu5jAtIhGwZ+7y1887ASHDFg==
X-Google-Smtp-Source: AGHT+IHNZ12fXcU5S6AH7mbFKJPot/Ova2zJIE3h35ISMU5StgHA0fShH0jkiWcuKD2dQluc0OAE6A==
X-Received: by 2002:a05:6214:268d:b0:6a0:d465:6102 with SMTP id gm13-20020a056214268d00b006a0d4656102mr2463800qvb.6.1714569576956;
        Wed, 01 May 2024 06:19:36 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id o2-20020a0cecc2000000b006a0ddff6523sm1579890qvq.1.2024.05.01.06.19.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 06:19:36 -0700 (PDT)
Message-ID: <8fb7d502-818c-41e8-a5d7-455fa7778e38@gmail.com>
Date: Wed, 1 May 2024 09:19:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com>
 <e39abf8d-6490-481e-bbbc-b89593e88d2f@gmail.com>
 <336160565.3149887.1714566315941@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <336160565.3149887.1714566315941@mail.yahoo.com>
Message-ID-Hash: Q2OGSE32SVVXPMHDZDZ5MYFNVAVPFDMK
X-Message-ID-Hash: Q2OGSE32SVVXPMHDZDZ5MYFNVAVPFDMK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Freq synchronization between
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q2OGSE32SVVXPMHDZDZ5MYFNVAVPFDMK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3838343023373986258=="

This is a multi-part message in MIME format.
--===============3838343023373986258==
Content-Type: multipart/alternative;
 boundary="------------Mlrt0HHjJwjJir0tMCNC3FPD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Mlrt0HHjJwjJir0tMCNC3FPD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 01/05/2024 08:25, zhou via USRP-users wrote:
> Hi All,
>
> I am trying to use 4Rx and 4Tx antennas from two X310 USRPs. I hope=20
> the received signals have stable phase relationship but they don't=20
> seem to be. I am wondering why and how to fix it.
>
> I measured the phase using the connection as below:
> Inline image
> cos(t)+i*sin(t) signal is split into and received on four Rx antennas.=20
> Two X310s are connected to the same OctoClock for 10MHz Ref and PPS.=20
> Tx and Rx commands are all timed. The measurement results are as below:
>
>
> The Tx signal is continuous during test. I measured phase every second=20
> for 20 sec. In the 2nd USRP, the phases are stable on both antennas=20
> while it is not in the 1st. If I change the Tx signal to the 1st USRP,=20
> then the results swap - phases become stable in the 1st USRP and=20
> unstable in the 2nd.
>
> My first though was that there might be small CFO between USRPs even=20
> though both are connected to the OctoClock, but CFO should have caused=20
> linear change. Here, the phase offset is not linear and kind of random=20
> within 20 second measurement.
>
> What can be the reason? Any suggestion will be appreciated.
>
> Kind regards,
> H.
Are you setting up clocking identically for both USRPs?=C2=A0=C2=A0 That =
is=20
setting the reference clock to "external" and the 1PPS source to=20
"external" on both devices?=C2=A0=C2=A0 Are you using a single multi_usrp=
 object=20
for all RX channels?

What type of daughtercards are in your X310?


--------------Mlrt0HHjJwjJir0tMCNC3FPD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 01/05/2024 08:25, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:336160565.3149887.1714566315941@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpc723dc89yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi All,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I am trying to use 4Rx and
          4Tx antennas from two X310 USRPs. I hope the received signals
          have stable phase relationship but they don't seem to be. I am
          wondering why and how to fix it.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I measured the phase using
          the connection as below:</div>
        <div dir=3D"ltr" data-setdir=3D"false"><img title=3D"Inline image=
"
            alt=3D"Inline image"
            src=3D"cid:4a0bfcc2-0386-5ffc-b824-ac2ae13b1672@yahoo.com"
            class=3D"yahoo-inline-image" draggable=3D"false"
            style=3D"max-width: 800px;"
            data-inlineimagemanipulating=3D"true"
data-id=3D"&lt;4a0bfcc2-0386-5ffc-b824-ac2ae13b1672@yahoo.com&gt;"
            moz-do-not-send=3D"true"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">cos(t)+i*sin(t) signal is
          split into and received on four Rx antennas.=C2=A0<span><span
style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Ari=
al, sans-serif;">Two
              X310s are connected to the same OctoClock for 10MHz Ref
              and PPS. Tx and Rx commands are all timed. The measurement
              results are as below:</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
          <span></span>The Tx signal is continuous during test. I
          measured phase every second for 20 sec. In the 2nd USRP, the
          phases are stable on both antennas while it is not in the 1st.
          If I change the Tx signal to the 1st USRP, then the results
          swap - phases become stable in the 1st USRP and unstable in
          the 2nd.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">My first though was that
          there might be small CFO between USRPs even though both are
          connected to the OctoClock, but CFO should have caused linear
          change. Here, the phase offset is not linear and kind of
          random within 20 second measurement.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">What can be the reason? An=
y
          suggestion will be appreciated.<br>
          <span></span><br>
          <span></span>Kind regards,</div>
        <div dir=3D"ltr" data-setdir=3D"false">H.</div>
      </div>
    </blockquote>
    Are you setting up clocking identically for both USRPs?=C2=A0=C2=A0 T=
hat is
    setting the reference clock to "external" and the 1PPS source to
    "external" on both devices?=C2=A0=C2=A0 Are you using a single multi_=
usrp
    object for all RX channels?<br>
    <br>
    What type of daughtercards are in your X310?<br>
    <br>
    <br>
  </body>
</html>

--------------Mlrt0HHjJwjJir0tMCNC3FPD--

--===============3838343023373986258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3838343023373986258==--
