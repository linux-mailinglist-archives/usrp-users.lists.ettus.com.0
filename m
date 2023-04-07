Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7E86DB56F
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 22:47:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42DCA384ADB
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 16:47:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680900435; bh=DESCxz8xqsztsBHKDuNCKcti61LnxQ7sjTE1W5oSeA0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SPwYVw8R+vpLNI3lZeV89zBWKbAviob5Z6y5532GunJZekFkAWhiszF3CmaqPTZ6p
	 kT/ygdGKJfbdrkbUcn/hHuAZKanA04U+Eg6PRNkpeljSLgq74NBhc7ZfHnPngrFKXk
	 0/yGVqFbWQyhBoeWGPFZneWDY8l9EdK4EGIyUaWkf9WO18bpmjyYIpKSysJhZO8GzI
	 b4bcepBTPS6T4svzr8OnpvjIXYs2IkIVvPvvzO6GARSWUJH+TG4aW+ZtndXANQ3xLA
	 jQM36EIKCi+WsQJ2oANmK9OgAlaXXAVtGhe15M5HOBtmHVfAZgkWEmZuhzAR74HUTe
	 KIYmp5TtKGQjA==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id E678B384ADB
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 16:47:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Jj+li0Kz";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id om8so873672qvb.3
        for <usrp-users@lists.ettus.com>; Fri, 07 Apr 2023 13:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680900427; x=1683492427;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JHkZFCSWb1SF3/KO8rePCTT4PUSep2jVbU5A5CVy03M=;
        b=Jj+li0KzV96IBk+H0Hw4ILc8RPQ79ZIsZWPPDMBe2EZY8QwqWjRkQ5oFUAy+M/BvUq
         ssxKoU/nGjlKzbeKj0/YNLR7CQDnCOguWhYMof4I7+OHOt8JRp2Bbik1m9ZvpER80K5M
         g0Ebjl/x24r4Zs2HWEFgW3uV7qvDaEIVGxzgpxvUlDnclflvLWA2fjFA5IxoCWnb2NTx
         H4g8OIBr55jbA69UFKoCtgkRMvu8HD0myLg1oGAjeMgj+DcHuBKhnEvF4P7GZeWVuCH4
         Mv2XjgH5m+l2sesgo/C6BzNDMzStKEVqoigwquKOJXRNVm8hWgxU7zUZZZHaPl7zuJSo
         82Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680900427; x=1683492427;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JHkZFCSWb1SF3/KO8rePCTT4PUSep2jVbU5A5CVy03M=;
        b=54dTKmFXuVzbBuCsAoA8k+Zqo/K+0GnDehu9jfhDzTFqRamdX/KiK3hk3bWUNVXcU2
         hkdujOJyQ1TIHDWhh8o1yBfMAGCpUE/1hZH/9VAKSCyRwHOURu2OFFDPcPP4ASbLNVEZ
         jZAW86nUvluo5XPwOCvotxUhDau3ZufkyyDk4Umk36K9lAyiyM7OWWQaL2pbpgzwbtoy
         k1NJnrc9ov+jsL/9MjT5fCS4zGKhgw8bRCFDgPg6nVqYeLPsHmUtreNX6M9hTt3bCSLU
         UqvMoSOGO/XruXWxSKP0loVqg/0lNSyBPsurTwLGhb1HgOjlCDIF0bfE3Ixpz5Rdw5tN
         um2A==
X-Gm-Message-State: AAQBX9fYKopYuNPrjKFrtIv5AOuDqyYCHQLaK9DdZyliXHWCrSaGFzAj
	J5eCk+MC1hCFmO4IbZUaqX2b3pji7WY=
X-Google-Smtp-Source: AKy350bV+KLdh85GaP1So6Zx9s8LFeM8Pi7ZuvOQiKTz8AyhK8z4V3HC1/3nBS4jfU0Q9aFieF31HQ==
X-Received: by 2002:ad4:5941:0:b0:571:698:eac9 with SMTP id eo1-20020ad45941000000b005710698eac9mr12254185qvb.18.1680900427055;
        Fri, 07 Apr 2023 13:47:07 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-111.dsl.bell.ca. [174.93.2.111])
        by smtp.googlemail.com with ESMTPSA id ma7-20020a0562145b0700b005dd8b9345ddsm1591605qvb.117.2023.04.07.13.47.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 13:47:06 -0700 (PDT)
Message-ID: <b175f6a6-3982-2f1a-e964-b7d4bc064aa0@gmail.com>
Date: Fri, 7 Apr 2023 16:47:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR12MB38713F1EFAF747DDFF801068AF969@MN2PR12MB3871.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB38713F1EFAF747DDFF801068AF969@MN2PR12MB3871.namprd12.prod.outlook.com>
Message-ID-Hash: 57MQNOTAJ5QLHTCEHA4UDXRVF6DGT4HZ
X-Message-ID-Hash: 57MQNOTAJ5QLHTCEHA4UDXRVF6DGT4HZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: time tags seem don't seem to match sample count
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/57MQNOTAJ5QLHTCEHA4UDXRVF6DGT4HZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7064057772121051630=="

This is a multi-part message in MIME format.
--===============7064057772121051630==
Content-Type: multipart/alternative;
 boundary="------------rgdUZmKEgMtI9YLeswckb6Vh"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rgdUZmKEgMtI9YLeswckb6Vh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/04/2023 08:26, Jason Matusiak wrote:
> I have been trying to work on a gnuradio block to fill in the dropped=20
> samples in a USRP stream.=C2=A0 While testing things out, I came across=
=20
> something odd.=C2=A0 I am using an X310 as my test device and am changi=
ng=20
> the sample rate.=C2=A0 I was at 100Msps, let it run for some time, and =
then=20
> changed it to 10Msps; sometimes this works, sometimes I need to change=20
> a few times to get dropped samples.=C2=A0 Sometimes, if I look, the tim=
e=20
> between the last tag and the tag when I changed the sample rate was=20
> 37.4225 seconds (for example).=C2=A0 If I count the number of samples=20
> between those two tags, I get=C2=A0374232036 samples.=C2=A0 That is mor=
e samples=20
> than should have happened in that time at 100Msps.
>
> I am guessing that tweaking sample rates does something weird to the=20
> sample buffers and probably means that my sample packing approach will=20
> only work with lost samples caused by freq changes or other driver=20
> slowdowns.
>
> Does anyone have any insight to what might be going on here?=C2=A0 I kn=
ow=20
> that it is wasted cycles for most people, but it would be nice if the=20
> USRP/UHD would report the number of lost samples when it retags at the=20
> beginning of good samples.
The command stream is entirely asynchronous to the sample stream. So=20
when you change sample rates, AFAIR, you don't
 =C2=A0 know which samples correspond to the sample-rate change.

The underlying UHD API has timestamps on every frame of samples from the=20
hardware.=C2=A0 But the GR interface
 =C2=A0 only issues a new timestamp tag when something requiring a new ta=
g is=20
required--like overrun.

I don't think the case of rate-change+overrun was a use case that was=20
particularly explicitly addressed in the GR interface
 =C2=A0 into UHD.

Another issue is that if you're changing *master clock* in the middle,=20
that's not supported on X310, and the master-clock
 =C2=A0 rate can only be specified reliably when you create the session, =
not=20
in the middle of streaming.



--------------rgdUZmKEgMtI9YLeswckb6Vh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 07/04/2023 08:26, Jason Matusiak
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB38713F1EFAF747DDFF801068AF969@MN2PR12MB3871.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        I have been trying to work on a gnuradio block to fill in the
        dropped samples in a USRP stream.=C2=A0 While testing things out,=
 I
        came across something odd.=C2=A0 I am using an X310 as my test de=
vice
        and am changing the sample rate.=C2=A0 I was at 100Msps, let it r=
un
        for some time, and then changed it to 10Msps; sometimes this
        works, sometimes I need to change a few times to get dropped
        samples.=C2=A0 Sometimes, if I look, the time between the last ta=
g
        and the tag when I changed the sample rate was 37.4225 seconds
        (for example).=C2=A0 If I count the number of samples between tho=
se
        two tags, I get=C2=A0374232036 samples.=C2=A0 That is more sample=
s than
        should have happened in that time at 100Msps.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        I am guessing that tweaking sample rates does something weird to
        the sample buffers and probably means that my sample packing
        approach will only work with lost samples caused by freq changes
        or other driver slowdowns.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        Does anyone have any insight to what might be going on here?=C2=A0=
 I
        know that it is wasted cycles for most people, but it would be
        nice if the USRP/UHD would report the number of lost samples
        when it retags at the beginning of good samples.</div>
    </blockquote>
    The command stream is entirely asynchronous to the sample stream.=C2=A0
    So when you change sample rates, AFAIR, you don't<br>
    =C2=A0 know which samples correspond to the sample-rate change.<br>
    <br>
    The underlying UHD API has timestamps on every frame of samples from
    the hardware.=C2=A0 But the GR interface<br>
    =C2=A0 only issues a new timestamp tag when something requiring a new=
 tag
    is required--like overrun.<br>
    <br>
    I don't think the case of rate-change+overrun was a use case that
    was particularly explicitly addressed in the GR interface<br>
    =C2=A0 into UHD.<br>
    <br>
    Another issue is that if you're changing *master clock* in the
    middle, that's not supported on X310, and the master-clock<br>
    =C2=A0 rate can only be specified reliably when you create the sessio=
n,
    not in the middle of streaming.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------rgdUZmKEgMtI9YLeswckb6Vh--

--===============7064057772121051630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7064057772121051630==--
