Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2939A49FDDF
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 17:19:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45BB73851E1
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 11:19:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Gfpg02U8";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 66FE03847A1
	for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 11:18:22 -0500 (EST)
Received: by mail-qt1-f180.google.com with SMTP id j12so5282462qtr.2
        for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 08:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=eyc8Z7yYURAgP5j8DcJ9vE6fulY9CyZmOZDWrITlH5g=;
        b=Gfpg02U8p1bRX7OCKZYyNR6R6SyjgkldRQFkgU2sKODLm9uB8JgIye7wmRvMRcCW3J
         zBkV2VA/GRLNN2cIxnGXG19Ug27+RsxA52nH7jFnpCkSDn0z4l+BzZlGrNc03d8LvT8X
         5IyeuUv+Cm4dR7XcpvEL8aYbNyNpaq9ht1K/bQOMBKOASV8To7INYXFxewKZiH52u5a8
         +yEQ/IoIVxJpTPfkJDaeRDVBBQaXwuWsEJGLT7IxFodOtrPksh/Jr8bTVLW1+pMaj1p/
         3Oam7Gc1hT8unjtQIPkXMYg7uOUZ7aO/NJLEtDQv5RRz/0NXR2uSO20b2x1hy6US/2rx
         ViFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=eyc8Z7yYURAgP5j8DcJ9vE6fulY9CyZmOZDWrITlH5g=;
        b=ZLEpljYe+HfTI62lNJObx3siMXe+AYwUUO7E0MucLfoPIcjUzEsb45gw5/MeJ0DBVY
         pxvRfHzvUCmBxZQsr6d92hAy7R5XFhIo9QBlF8bi22BRkLQBnu2qbib+VUOeOlxQXFVl
         BYwE18iChQ+BJFOvfcTynHKvYA+u4Nds9DcUonqNULTvBXGJZ+/T5sU/h3WKtuWeaMBM
         ZhZk72pN3tgKN4NSwuyvwbvfWlXfrSukiLjiPU3I1JEC/RNGImAGa/13xofH5udXs5JD
         rqh/gMDWxhqR8Kpye8Q1W1sAT8dcb0rwzvKEA0OOCImvQKTksFEQtWj6unB90uTYvm48
         dP9w==
X-Gm-Message-State: AOAM530SKwAe8POVFYw14pkV6OogZwQxoo3VB2YDM90qTmmpYY4Aeaoa
	k8u2Xcs4h3JVuRHKeyF2yw4=
X-Google-Smtp-Source: ABdhPJyvj1m+BgsYsEmppgNFQAQ5RVm54FBFnWLnW1zBllcny9wNDxHt2oqnZn6wkM6ozW3sl2xNpw==
X-Received: by 2002:ac8:7dc3:: with SMTP id c3mr6670941qte.266.1643386701700;
        Fri, 28 Jan 2022 08:18:21 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id n6sm3266940qtx.23.2022.01.28.08.18.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jan 2022 08:18:21 -0800 (PST)
Message-ID: <4f3e2ba0-24d4-1a42-9705-6fc97e2c7260@gmail.com>
Date: Fri, 28 Jan 2022 11:18:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Paul Atreides <maud.dib1984@gmail.com>, Rob Kossler <rkossler@nd.edu>
References: <CAB__hTSjMbfUXf+AmMKWTBP_m2S28iaAnhQdvfi++qPGXPctdg@mail.gmail.com>
 <5C259DE5-E60B-4750-BBBC-EFAF0CAE2E96@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5C259DE5-E60B-4750-BBBC-EFAF0CAE2E96@gmail.com>
Message-ID-Hash: JFZUNSLRRXHAE7IJQMLJQKVQTN5UTIOD
X-Message-ID-Hash: JFZUNSLRRXHAE7IJQMLJQKVQTN5UTIOD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JFZUNSLRRXHAE7IJQMLJQKVQTN5UTIOD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6860717770872420487=="

This is a multi-part message in MIME format.
--===============6860717770872420487==
Content-Type: multipart/alternative;
 boundary="------------jbQhiLqyeAn80QKC3WllRWoz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------jbQhiLqyeAn80QKC3WllRWoz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-28 10:38, Paul Atreides wrote:
> Rob, I=E2=80=99ve been able to extend the functionality of gr-uhd to in=
clude=20
> the enable switch for each LO distribution port. Thank you for the=20
> information.
>
> I am now having synchronization issues with the transmit stream in the=20
> GNURadio. It appears as though the radio channels are not starting at=20
> the same time. Are you aware of any commands that you=E2=80=99ve had to=
 run=20
> from external applications that ensure the start time for both=20
> transmitters is the same?
>
> <end transmission>
>
WHen specifying a "start time" in the GRC UHD Sink block of anything >=3D=
=20
0.0, this code is inserted into the generated Python:

self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(0.5))

Are you using a single 10GiGe link, or using dual links?




--------------jbQhiLqyeAn80QKC3WllRWoz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-28 10:38, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:5C259DE5-E60B-4750-BBBC-EFAF0CAE2E96@gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      Rob, I=E2=80=99ve been able to extend the functionality of gr-uhd t=
o
      include the enable switch for each LO distribution port. Thank you
      for the information.
      <div><br>
      </div>
      <div>I am now having synchronization issues with the transmit
        stream in the GNURadio. It appears as though the radio channels
        are not starting at the same time. Are you aware of any commands
        that you=E2=80=99ve had to run from external applications that en=
sure
        the start time for both transmitters is the same?</div>
      <div><br>
      </div>
      <div>&lt;<span class=3D"Apple-style-span"
          style=3D"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.298);"=
>end
          transmission&gt;</span></div>
      <br>
    </blockquote>
    WHen specifying a "start time" in the GRC UHD Sink block of anything
    &gt;=3D 0.0, this code is inserted into the generated Python:<br>
    <br>
    self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(0.5))<br>
    <br>
    Are you using a single 10GiGe link, or using dual links?<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------jbQhiLqyeAn80QKC3WllRWoz--

--===============6860717770872420487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6860717770872420487==--
