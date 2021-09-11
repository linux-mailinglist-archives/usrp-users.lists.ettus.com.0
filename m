Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 422CF4078EC
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 16:49:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 892E7384662
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 10:49:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Wb+f9tTP";
	dkim-atps=neutral
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 62D9238455F
	for <usrp-users@lists.ettus.com>; Sat, 11 Sep 2021 10:48:36 -0400 (EDT)
Received: by mail-qv1-f45.google.com with SMTP id r18so3210606qvy.8
        for <usrp-users@lists.ettus.com>; Sat, 11 Sep 2021 07:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=8gdNDcT8XPf5qH0Xh03AuHEvJ/m0/Z9Knqccb4K8hps=;
        b=Wb+f9tTP1ZvDjYHuBxM05YUF+H5F1B/S8i7fPQQaeq7QE6pj6uuJcRvp5GKQWuDLCQ
         B1BYUlw3mKj9SWJKiehsz3EEaKPsFG3tO5DOvllt23niN0elZD8zLg4a/HdHcId5r6OX
         FxawwBtXsgWFe0fwrxz7LOQ4gqeBo5ozw3tbTcJ8Y5MFd2xrtKhbIzcfcrtAK2jkAsqK
         p0ZgBpyVwMbZbpFg4kVOhd0xwYW6g75du1/VarZVFJF6L5NGC0SMp9iTfgHoS2HNBLai
         WsNkU+XgPB2cojK+74TQt0g6tiwaZoeNETfZnUqGhhWx3Sgi87pNswagHzFVX8JWAfA+
         rjfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=8gdNDcT8XPf5qH0Xh03AuHEvJ/m0/Z9Knqccb4K8hps=;
        b=LD58VnBP8Kp63sHHO3FKir32P3dUhmJALpzo+/Vwn3YSo27pgeO04Tf3AqzQ/68U+3
         pnqaRvPODvKihASI+ijhbsvcjrGBeQPPEPUnKe0MF+Vkc84dK6KCklnCaygLrmP2pzym
         MiWEBLjCaABmiJbiWd3uFpFlRvgxjM7JVVrSt02LXzx40lpkemyx9TotLWWoCR7udKJR
         8qzIfg8joF3apsrAz0KVI2oD9hQ07Vzo+4Du1bH+3uuEPy7W5ZK9nqVXFt3Lm5wLwF/Z
         CVf/VX9Bq1MjUpSts98hWiqJDLT4lLQhtPd7TuGjS02FDubbvrebVOx9v1rlxIyqfudA
         DuFA==
X-Gm-Message-State: AOAM530ZSVO3hq+d29eO1oUjwnArvFbKMAdNJ4b+2rPVRyQ9MpObrUNc
	F69etfTvFlxTTcEwSP9ZjO4q3/sZa8AEhg==
X-Google-Smtp-Source: ABdhPJyzpzORJ0EVKj/s7Rut529Nn3e3gXewP4QSiM4rk9lRnb6bR2B+qAwQN8QyWbrVzdUmkWJzLg==
X-Received: by 2002:a05:6214:12eb:: with SMTP id w11mr2698370qvv.10.1631371715612;
        Sat, 11 Sep 2021 07:48:35 -0700 (PDT)
Received: from [192.168.2.249] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id f6sm1312383qko.85.2021.09.11.07.48.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Sep 2021 07:48:35 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es>
 <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com>
 <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com>
 <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com>
 <804336125.2658048.1631299169124@mail.yahoo.com>
 <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com>
 <899213065.2697497.1631311503116@mail.yahoo.com>
 <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com>
 <1020526605.2741269.1631344684410@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <7f537ec4-f64c-3aa1-3a77-63641fe7942d@gmail.com>
Date: Sat, 11 Sep 2021 10:48:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1020526605.2741269.1631344684410@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: MRDKXLK2RCJXD7WZEGIEMQO6OAWYO464
X-Message-ID-Hash: MRDKXLK2RCJXD7WZEGIEMQO6OAWYO464
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP Calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MRDKXLK2RCJXD7WZEGIEMQO6OAWYO464/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4122121400840920213=="

This is a multi-part message in MIME format.
--===============4122121400840920213==
Content-Type: multipart/alternative;
 boundary="------------BCD5EDCCCCC6283FFB05264F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BCD5EDCCCCC6283FFB05264F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-11 3:18 a.m., zhou wrote:
> Hi Marcus,
>
> I have a basic question: how to calibrate USRP? I have N321 and X310=20
> models.
> For X310, we have been calibrating them with loopback connection, that=20
> is, connecting Tx to Rx with a 30dB attenuator between them. This was=20
> suggested by an ettus engineer a few years back.
> I am wondering if I should do the same to N321? or, the new UHD=20
> doesn't need loopback? if no loopback is required, can I leave USRP=20
> connected to other RF device which is our DUT, or I need to disconnect=20
> USRP from it when calibrating?
What type of calibration?=C2=A0 I/Q balance calibration?

I'm not sure that the N321 requires such calibration--unlike the systems=20
with changeable daughtercards, but I could be
 =C2=A0 wrong.=C2=A0 I don't have an N321 in my collection of USRPs, so I=
'm=20
"blind" a little bit.

>
> BTW, I find some information on gain range in N321 datasheet spec=20
> obtained from=20
> https://www.ettus.com/wp-content/uploads/2019/03/USRP-N321-Datasheet-5.=
pdf=20
> <https://www.ettus.com/wp-content/uploads/2019/03/USRP-N321-Datasheet-5=
.pdf>
> On the 3rd page, the Rx gain range is -16dB to 34dB, and Tx gain range=20
> is -30 to 25dB. How can the gains be negative? does this mean=20
> attenuation of signal in device? The small text on the bottom says RX=20
> and TX path gain does not correlate to UHD gain settings. How to=20
> understand this?
> In page 5 and 6, the Tx gain and Rx gain ranges are from 0 to 60dB.
> The uhd_usrp_probe command gives 0 - 60dB gain range.
All gain control is implemented in RF chains with variable attenuators.=C2=
=A0=20
In most cases, there's usually a low-noise gain
 =C2=A0 stage "up front" followed by a variable attenuator, followed by=20
another gain stage, or two.=C2=A0 Sometimes, it's more
 =C2=A0 complex than that.=C2=A0 I assume that the "-16dB" means taking t=
otal gain=20
below the gain of the first stage.=C2=A0 At the end of
 =C2=A0 the day, what you need to worry about is that your gain setting=20
provides adequate SNR (without clipping) for the signals
 =C2=A0 of interest.

One should NOT confuse "gain control range" with "total system gain".=C2=A0=
=20
In most RF chains, there are many stages of
 =C2=A0 both gain and loss, and it's important not to confuse the *contro=
l=20
range* with *total system gain*.


>
> Thanks.
>
>
>


--------------BCD5EDCCCCC6283FFB05264F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-11 3:18 a.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1020526605.2741269.1631344684410@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpe4b21b20yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I have a basic question: h=
ow
          to calibrate USRP? I have N321 and X310 models.</div>
        <div dir=3D"ltr" data-setdir=3D"false">For X310, we have been
          calibrating them with loopback connection, that is, connecting
          Tx to Rx with a 30dB attenuator between them. This was
          suggested by an ettus engineer a few years back.</div>
        <div dir=3D"ltr" data-setdir=3D"false">I am wondering if I should=
 do
          the same to N321? or, the new UHD doesn't need loopback? if no
          loopback is required, can I leave USRP connected to other RF
          device which is our DUT, or I need to disconnect USRP from it
          when calibrating?</div>
      </div>
    </blockquote>
    What type of calibration?=C2=A0 I/Q balance calibration?<br>
    <br>
    I'm not sure that the N321 requires such calibration--unlike the
    systems with changeable daughtercards, but I could be<br>
    =C2=A0 wrong.=C2=A0 I don't have an N321 in my collection of USRPs, s=
o I'm
    "blind" a little bit.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1020526605.2741269.1631344684410@mail.yahoo.com">
      <div class=3D"ydpe4b21b20yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">BTW, I find some informati=
on
          on gain range in N321 datasheet spec obtained from=C2=A0<a
href=3D"https://www.ettus.com/wp-content/uploads/2019/03/USRP-N321-Datash=
eet-5.pdf"
            rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"true">h=
ttps://www.ettus.com/wp-content/uploads/2019/03/USRP-N321-Datasheet-5.pdf=
</a></div>
        <div dir=3D"ltr" data-setdir=3D"false">On the 3rd page, the Rx ga=
in
          range is -16dB to 34dB, and Tx gain range is -30 to 25dB. How
          can the gains be negative? does this mean attenuation of
          signal in device? The small text on the bottom says RX and TX
          path gain does not correlate to UHD gain settings. How to
          understand this?</div>
        <div dir=3D"ltr" data-setdir=3D"false">In page 5 and 6, the Tx ga=
in
          and Rx gain ranges are from 0 to 60dB.</div>
        <div dir=3D"ltr" data-setdir=3D"false">The uhd_usrp_probe command
          gives 0 - 60dB gain range.</div>
      </div>
    </blockquote>
    All gain control is implemented in RF chains with variable
    attenuators.=C2=A0 In most cases, there's usually a low-noise gain<br=
>
    =C2=A0 stage "up front" followed by a variable attenuator, followed b=
y
    another gain stage, or two.=C2=A0 Sometimes, it's more<br>
    =C2=A0 complex than that.=C2=A0 I assume that the "-16dB" means takin=
g total
    gain below the gain of the first stage.=C2=A0 At the end of<br>
    =C2=A0 the day, what you need to worry about is that your gain settin=
g
    provides adequate SNR (without clipping) for the signals<br>
    =C2=A0 of interest.=C2=A0 <br>
    <br>
    One should NOT confuse "gain control range" with "total system
    gain".=C2=A0 In most RF chains, there are many stages of<br>
    =C2=A0 both gain and loss, and it's important not to confuse the *con=
trol
    range* with *total system gain*.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1020526605.2741269.1631344684410@mail.yahoo.com">
      <div class=3D"ydpe4b21b20yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks.<br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydpa9293dyahoo_quoted_2032414123"
        class=3D"ydpa9293dyahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------BCD5EDCCCCC6283FFB05264F--

--===============4122121400840920213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4122121400840920213==--
