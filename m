Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFC66EAC0D
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 15:49:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7EE4F383FDE
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 09:49:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682084959; bh=V+4XOfZYAqV09PdhstrhUiUULk4RqjlivT5U/EzmxkA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0Q58jO46JEvY21VV4YUL78L1CB7Pj2tQpc8Vm/KXm4nj7VNDDew3Voc9tw0mUuTH8
	 P4HLL3m78YLpeW+XrAOuBwBmrPLpMzu5QcNWdpilj+81YpAcK1OT1Ay7Zrx49pMjbP
	 3v5zcVoMgn435I2YnvbvlXFMkWupr7HaeXPb6x0bhxiABNg4d9p+Au9W2s9b1AAXmw
	 ERgwe+WWIktFI64VStGYPOrHDuWrch9WVESbXra91yddBmaERQBJ3EJycY6c04X/hs
	 xVUOP3m4IJOq3tI6o++IcDmFKn87br/oRLaw1CJsyPkLO2egYGLFDkJ1mvOWwrnfU2
	 IQyZp0SWdfiOA==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B86C380BC8
	for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 09:48:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g3LtySu8";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-3ef3ce7085bso8779631cf.2
        for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 06:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682084916; x=1684676916;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XtfjCun8tzwmhIn6wG0g1SYfq/VTcgS6liCfgUFw4LY=;
        b=g3LtySu8hF6Gfmh+N26cZS1PfLEh4p5RYPWvsXDKOmyKqcZUNrhYE248kqkNd+XYdd
         /qId4ack07CzdRgvUm7TZVztg4umXnXqUmjRz9TnaZq/bsm0F8RhxlXoqXaTI+hznq8/
         /KBPx+I6V+f6qoPhvqWn3P8JRYzZv7uohM6Vd19WgdcTnMcc18O3ME6sT1i13alOiN7u
         Gd/AZC0Ny+FNLTo/7gjSWCwQCBcGyOiAE6xBYlVct3yJu6ZSbNKJ12YhlK32ETNtntEs
         Oxz+yvK4q538v8Miap7Zme1p0hRHM6wDgpu3IekQGrE4gfImWtQidIhbpu8ZUdMzOGFs
         L9vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682084916; x=1684676916;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XtfjCun8tzwmhIn6wG0g1SYfq/VTcgS6liCfgUFw4LY=;
        b=F2RFqttVZGmuWazXkE3Uvj1Z8CAh+x5jZtXb8ajwsU4v8V6A/ncMKSH/VKS2FG2tGF
         OILnQdyxXEeM8K3mKes0oHWpvzRXVFzLdi/InxAl9+eZFbJv3XS9KCsJNjqFv3hIKV+U
         J4+fcP2P2jJaGIvhr1U2h3urpvmKqmyui4UzLhBruGCDBVzQopHot/6TEHVYEKp92nIZ
         L2tpOG+WgGsPGQ8OaVamV3rCuWMmy8LrBDD5yFQ5MvAlXTlOrRRCrjg9U4hqqKTsauBD
         7KDii+c6w8ERLIYc+00Ugbrq5UhrQDz6juMuqCXr2gCZaCbKJIwsJuThJ4xKIrOM3W6u
         xyjg==
X-Gm-Message-State: AAQBX9fQmF7AU/16W4d5mKScdgH+mAZNE3Z8uGWObuBwTDadI4fIaweG
	UGsaN+obY/1WpSWKs4Im4TZ7vi4joe0=
X-Google-Smtp-Source: AKy350ZQ+A9sR95MhXpNvLVhLV8fY0TasArqNzAchgw6Fk15X3ef9Qj3R+Kxl6PYszGOwEte/pbFoQ==
X-Received: by 2002:ac8:5705:0:b0:3e6:6502:16a6 with SMTP id 5-20020ac85705000000b003e6650216a6mr8189787qtw.37.1682084916461;
        Fri, 21 Apr 2023 06:48:36 -0700 (PDT)
Received: from [192.168.2.193] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id r20-20020a05620a299400b0074ac12e0253sm1359791qkp.4.2023.04.21.06.48.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 06:48:36 -0700 (PDT)
Message-ID: <851b1eef-73e5-6ce6-b442-eb7bafe7626d@gmail.com>
Date: Fri, 21 Apr 2023 09:48:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <F31D8B08-5590-4DDF-973A-104B8F61C219@md1tech.co.uk>
 <eaa094dc-31d8-0fe6-8267-77a20d9b2f66@ettus.com>
 <E86D0222-38DB-4F37-A112-F1A4747BDD8D@md1tech.co.uk>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <E86D0222-38DB-4F37-A112-F1A4747BDD8D@md1tech.co.uk>
Message-ID-Hash: RQDBBWFIHGX35LB2NFOFYCCVE3HPY5CI
X-Message-ID-Hash: RQDBBWFIHGX35LB2NFOFYCCVE3HPY5CI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200-mini not detected
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RQDBBWFIHGX35LB2NFOFYCCVE3HPY5CI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3020396466023335922=="

This is a multi-part message in MIME format.
--===============3020396466023335922==
Content-Type: multipart/alternative;
 boundary="------------3EWnOsXRRlAVee0rkCpm03TH"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3EWnOsXRRlAVee0rkCpm03TH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 21/04/2023 09:00, Ian Chodera wrote:
> Hi Cedric and Marcus
>
> Thanks for the replies. Neither of them have helped though
>
> >sudo uhd_find_devices --args 'type=3Db200'
> No UHD Devices Found
>
> I had in fact already tried both option, having trawled the internet=20
> for suggestions before joining this list
>
Three things occur to me:

Is it possible that you're plugged in to a USB-1.1 port?=C2=A0 (This seem=
s=20
unlikely these days, but maybe?)

The UHD library you're using was built without B2xx support because=20
libusb wasn't installed at the time of the build.

You updated the udev rules, but didn't command udev to reload the rules=20
and/or didn't replug the device


--------------3EWnOsXRRlAVee0rkCpm03TH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/04/2023 09:00, Ian Chodera wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:E86D0222-38DB-4F37-A112-F1A4747BDD8D@md1tech.co.uk">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      Hi Cedric and Marcus
      <div><br>
      </div>
      <div>Thanks for the replies. Neither of them have helped though</di=
v>
      <div><br>
      </div>
      <div>
        <div>&gt;sudo uhd_find_devices --args 'type=3Db200'</div>
        <div>No UHD Devices Found</div>
        <div><br>
        </div>
        <div>I had in fact already tried both option, having trawled the
          internet for suggestions before joining this list</div>
        <span></span>
        <div>
          <div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);
            font-family: Helvetica; font-size: 12px; font-style: normal;
            font-variant-caps: normal; font-weight: 400; letter-spacing:
            normal; orphans: auto; text-align: start; text-indent: 0px;
            text-transform: none; white-space: normal; widows: auto;
            word-spacing: 0px; -webkit-text-size-adjust: auto;
            -webkit-text-stroke-width: 0px; text-decoration: none;"><br>
          </div>
        </div>
      </div>
    </blockquote>
    Three things occur to me:<br>
    <br>
    Is it possible that you're plugged in to a USB-1.1 port?=C2=A0 (This
    seems unlikely these days, but maybe?)<br>
    <br>
    The UHD library you're using was built without B2xx support because
    libusb wasn't installed at the time of the build.<br>
    <br>
    You updated the udev rules, but didn't command udev to reload the
    rules and/or didn't replug the device<br>
    <br>
    <br>
  </body>
</html>

--------------3EWnOsXRRlAVee0rkCpm03TH--

--===============3020396466023335922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3020396466023335922==--
