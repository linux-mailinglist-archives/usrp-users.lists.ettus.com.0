Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 926064CC07F
	for <lists+usrp-users@lfdr.de>; Thu,  3 Mar 2022 15:59:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 563C1384C4E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Mar 2022 09:59:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hkL0Vboc";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 1AA94384D93
	for <usrp-users@lists.ettus.com>; Thu,  3 Mar 2022 09:58:51 -0500 (EST)
Received: by mail-qv1-f44.google.com with SMTP id b12so4300609qvk.1
        for <usrp-users@lists.ettus.com>; Thu, 03 Mar 2022 06:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=7WHCMq1+u/D/Wc02TTmjoA/jrEBpsKM9c2HVU7ynSTM=;
        b=hkL0VbocDC7b0PW9+8eUPb+bcVL+ILlAsL+h7450Okkc10PITHn3mvMy6l6mZXJw3W
         013EJrqvsVb7zBcvZ50PDAWh/2GFH5YRQjFBUUTknLPyTpDEPBI3CQ3vH04yiY8fFqEu
         gAOrJFE+dXqPuLI9DParwM3o4V0AqTqnNQcZWaBfmsUti9b18amgqcUFiEP7sQd2/m29
         EAxzhECu968I8dmw+i+XzmdjYp8jfg2Lri9U+NkBmzgzeBl35RHhPqeK5OzE1JOWqxAD
         C91XvW4NLNoIlARB5lxOzfrPDE0xm/fvYMF134K7xNX4t7psyEJQnpPj245x3J3o2EHX
         pPHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=7WHCMq1+u/D/Wc02TTmjoA/jrEBpsKM9c2HVU7ynSTM=;
        b=7goN2zEHjiGmWv3eg2qY3vUnkG2D8L3Bxvv9gVOO8a0l1dZb1FVkZqz45f4x21DYMS
         pv9i2fCzatHPXLu9NNCxWzKRnW2niUzS7fGGq0HAlhofqhT+XtdtpQusu6iUaBQ5JRy+
         H+7843rA4/wW0JUXmfuOUIfpX9yw3xfK5OQ81zBWqMXuyJctVIAVsDr208/EiG4EA7kL
         m++ggPzPrKLH1Wx7FZVClkr7NAddskai8OOnDmOvPe2w1+oWGtWls0gTUUbKhcMRsAbH
         7/89t3Pxe/Fr+D21CmL/Z3QBQ5kni20AXzogg60aDhIi79wo/3XreLYfUFlkBT1ZlFJE
         3mOg==
X-Gm-Message-State: AOAM532bB72RI/RKp8OavDCAMPkzJjNtyBhi7HMKFsj4RFraerzoy5Bm
	+2INA5dAJkQ1Yr2jO/XQoguReXzJhQ7Jlw==
X-Google-Smtp-Source: ABdhPJws/MetuZiCBFJ0UJatCHuGA6PNgFnqOflyxoqt85whY1k9SQh/SEj1YjcYF+Jeb1dFfh8sXQ==
X-Received: by 2002:ad4:5cca:0:b0:42c:3a47:5bc with SMTP id iu10-20020ad45cca000000b0042c3a4705bcmr24811851qvb.69.1646319530234;
        Thu, 03 Mar 2022 06:58:50 -0800 (PST)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id o18-20020a05622a139200b002de25b59013sm1654611qtk.84.2022.03.03.06.58.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 06:58:49 -0800 (PST)
Message-ID: <4100823f-e252-70fa-c6ce-24cf57f65c0b@gmail.com>
Date: Thu, 3 Mar 2022 09:58:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHqKquzTK=JtmcEXrBJy_dDODYvYHnf_Y-XXGimrDhv87ompLg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHqKquzTK=JtmcEXrBJy_dDODYvYHnf_Y-XXGimrDhv87ompLg@mail.gmail.com>
Message-ID-Hash: 6IJXU7QPKUACYQNKK36NRMU242MDFGSU
X-Message-ID-Hash: 6IJXU7QPKUACYQNKK36NRMU242MDFGSU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transmission problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6IJXU7QPKUACYQNKK36NRMU242MDFGSU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6258359766462423829=="

This is a multi-part message in MIME format.
--===============6258359766462423829==
Content-Type: multipart/alternative;
 boundary="------------2fj0MPshziaW4ZPqUx0FGNwY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2fj0MPshziaW4ZPqUx0FGNwY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-03-03 02:53, rouba zeitoun wrote:
>
> Dear USRP experts
>
>
> I am currently working on a project that consists of sending live=20
> stream video from one SDR to another with GNURadio (on the transmitter=20
> side I am using USRP N210 and on the receiver i am using hackrf). I am=20
> also using Gstreamer to create a pipeline between 2 computers.
>
> Unfortunately, I am repetitively facing the same problem where after=20
> 30 sec a message pops up
>
> *" WARNING debug information: gstbasesink.c(2902):=20
> gst_base_sink_is_too_late ():=20
> /GstPlayBin:playbin/GstPlaySink:playsink/GstBin:vbin/GstXvImageSink:xvi=
magesink0:*
>
> *There may be a timestamping problem, or this computer is too slow "*
>
> and the receiver stops receiving the video. I tried decreasing the=20
> bitrate which allowed longer sending time but it still stops after a=20
> while.
>
> What advice can you give me to solve this problem?
>
> the commands i used on terminals are:
>
> *for Tx:*=C2=A0gst-launch-1.0 -v v4l2src device=3D"/dev/video0" !=20
> videoconvert ! x264enc tune=3Dzerolatency bitrate=3D300 ! mpegtsmux !=20
> filesink location=3Dvideo1.ts
>
> *for Rx:*=C2=A0gst-play-1.0 video3.ts
>
>
> Thank you in advance !
>
>
Your issue is clearly with a piece of software called "gst-launch",=20
which is not related directly to UHD or USRPs, so I'd suggest
 =C2=A0 asking the good folks who support "gst-launch".


--------------2fj0MPshziaW4ZPqUx0FGNwY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-03 02:53, rouba zeitoun
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHqKquzTK=3DJtmcEXrBJy_dDODYvYHnf_Y-XXGimrDhv87ompLg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">
        <div style=3D"font-size:12.8px" dir=3D"auto">
          <div style=3D"width:380.19px;margin:16px 0px">
            <div>
              <div dir=3D"rtl">
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px">Dear
                  USRP experts</p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px"><br>
                </p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px">I am
                  currently working on a project that consists of
                  sending live stream video from one SDR to another with
                  GNURadio (on the transmitter side I am using USRP N210
                  and on the receiver i am using hackrf). I am also
                  using Gstreamer to create a pipeline between 2
                  computers.</p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px">Unfort=
unately,
                  I am repetitively facing the same problem where after
                  30 sec a message pops up</p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px"><b>"
                    WARNING debug information: gstbasesink.c(2902):
                    gst_base_sink_is_too_late ():
/GstPlayBin:playbin/GstPlaySink:playsink/GstBin:vbin/GstXvImageSink:xvima=
gesink0:</b></p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px"><b>The=
re
                    may be a timestamping problem, or this computer is
                    too slow "</b></p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px">and th=
e
                  receiver stops receiving the video. I tried decreasing
                  the bitrate which allowed longer sending time but it
                  still stops after a while.</p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px">What
                  advice can you give me to solve this problem?</p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px">the
                  commands i used on terminals are:</p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px"><b>for
                    Tx:</b>=C2=A0gst-launch-1.0 -v v4l2src
                  device=3D"/dev/video0" ! videoconvert ! x264enc
                  tune=3Dzerolatency bitrate=3D300 ! mpegtsmux ! filesink
                  location=3Dvideo1.ts</p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px"><b>for
                    Rx:</b>=C2=A0gst-play-1.0 video3.ts<br>
                </p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px"><br>
                </p>
                <p dir=3D"ltr"
                  style=3D"margin-bottom:0in;line-height:16.512px">Thank
                  you in advance !<br>
                </p>
              </div>
            </div>
          </div>
        </div>
        <br>
      </div>
    </blockquote>
    Your issue is clearly with a piece of software called "gst-launch",
    which is not related directly to UHD or USRPs, so I'd suggest<br>
    =C2=A0 asking the good folks who support "gst-launch".<br>
    <br>
    <br>
  </body>
</html>

--------------2fj0MPshziaW4ZPqUx0FGNwY--

--===============6258359766462423829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6258359766462423829==--
