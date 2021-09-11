Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB28A4078F5
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 17:00:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E9853848A6
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 11:00:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="p0CuqKRD";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 551DE38485B
	for <usrp-users@lists.ettus.com>; Sat, 11 Sep 2021 10:59:16 -0400 (EDT)
Received: by mail-qt1-f181.google.com with SMTP id x5so4279276qtq.13
        for <usrp-users@lists.ettus.com>; Sat, 11 Sep 2021 07:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=u8VKxmwojSruMaC5poZiTO/GVLAiWR7W0CziEeMcP0E=;
        b=p0CuqKRDEb6ZstZVy+uC0acESUNCX114A8vQDPgbrbgogR3U63xyxxTttf5to+GrGH
         hgyXKkKAgsSDa3TqHkCV8TGha+M7suurgMqFW2SgOEfr+RDJbIVfZ0sCBDkbczVP4unG
         HWGxoexGS9Ip4NishK8BzaNkDkLgCZHNK6kKF4gkzrXZ5JR0omVMScnNZUvtHxteDxhD
         YqXvUN3VVQWpqgcR5du32IXv39kNRuQQzb9jxsN1cZ0IuFB0YQUD1y8V2ORUmKY4dVj3
         M6LHsFYLHLCMLh7lMC57TDrGGw1qMn2aiuqZJOGsf9cMGv+VNLJ7iEr8g8Z4JkGKE+oQ
         AvdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=u8VKxmwojSruMaC5poZiTO/GVLAiWR7W0CziEeMcP0E=;
        b=fET3v4Gp7sa0nn49uxCVf/VL6qCHnnpnaPc5EzFlEGSCHlbgBb5iWYeyUxHgKF7swy
         hPFnfTy1K3pxJNrpNwAUiCJsGqlz4Se+voci6x2AxfAGKDZdbhRCQtPtgfPMQUKfmM3B
         Bw06yBNIGYfeK835ZZH9rbIKkDEnHPD1+BwhHHZ382qFoq1+WZmRphy26xVtDsMl3WUg
         b0dBdkvb85h62z0vcVUZASAqNjnK+RCDiSlA1BwKcV/ZhO2xRF71jgMo7Kcs4w4N3mSm
         h4f6NbzPT/s91j8gq3fB2e7TWB+SWlnbpgsIFf/qccCEe4oGpjDwuscvxyi53cbMDxbP
         SCBg==
X-Gm-Message-State: AOAM533+fk4N5IHzK8uXb7Xy3muE0QHpL9CohfVLeiOLjPduDD+mkb37
	a8ry4oiRpHEoDtzWujbpG1DS5f+RH/596g==
X-Google-Smtp-Source: ABdhPJwjyTMBhA8b96LmImthwXAV7PTCSxxkD46CrwfFNk09iNQ7s4aSVbseezbQ5AIL5HZHlTkeXg==
X-Received: by 2002:a05:622a:44f:: with SMTP id o15mr2470603qtx.260.1631372355619;
        Sat, 11 Sep 2021 07:59:15 -0700 (PDT)
Received: from [192.168.2.249] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x83sm1325804qkb.118.2021.09.11.07.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Sep 2021 07:59:15 -0700 (PDT)
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
Message-ID: <23a0ed5c-a4a9-e39c-51f6-bdb27b057aae@gmail.com>
Date: Sat, 11 Sep 2021 10:59:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1020526605.2741269.1631344684410@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: SQYORXHCLJFJIFVW2S5ROUC34543CVRJ
X-Message-ID-Hash: SQYORXHCLJFJIFVW2S5ROUC34543CVRJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP Calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SQYORXHCLJFJIFVW2S5ROUC34543CVRJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6848579612649281643=="

This is a multi-part message in MIME format.
--===============6848579612649281643==
Content-Type: multipart/alternative;
 boundary="------------32560B48B385B3EF18FD70B9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------32560B48B385B3EF18FD70B9
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
>
> Thanks.
>
>
>
Just looked things up for N321--it IS supported by the i/q calibration=20
utilities, and it has a separate CAL pathway.=C2=A0 I would still remove
 =C2=A0 any other devices connected to it during calibration--which shoul=
d=20
only need to be done ONCE, as it creates calibration files that
 =C2=A0 UHD will use for future sessions.



--------------32560B48B385B3EF18FD70B9
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
    Just looked things up for N321--it IS supported by the i/q
    calibration utilities, and it has a separate CAL pathway.=C2=A0 I wou=
ld
    still remove<br>
    =C2=A0 any other devices connected to it during calibration--which sh=
ould
    only need to be done ONCE, as it creates calibration files that<br>
    =C2=A0 UHD will use for future sessions.<br>
    <br>
    <br>
  </body>
</html>

--------------32560B48B385B3EF18FD70B9--

--===============6848579612649281643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6848579612649281643==--
