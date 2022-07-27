Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DF9583164
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 20:02:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E39FF383D08
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 14:02:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658944972; bh=sGyY+o7kGEinB+z3zwVRodd2a3AERpOOQE6AOl1xjvU=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HUdUxGrZ0uaqswdRTrUziWXKC7Sc7ouquZNVFBUyTQoMGOdj9M+hWLBWI5K8fTMvt
	 +rp9wbuNuHEvSTDGKa2ig531QoHTZS3YDWfxTnQtZteG/oIPK0vmiA+HlVkPAMeg58
	 Jr7CO8pVoX3fj71WqiL4p5Q+fMnQcvVKqLDYk0LyWO93RWFFUWBKbL6L/BnqUi5hf5
	 6cv7XPyWrSHfdzhzCDfHAv3n5fF1C4Z/5cpa6KQPktilKF0L48DSJew8YcqFc4Q5BX
	 Ml09IwvmRGRmi31HCULiendUy73IjdirEz85fKD9wmybWp9FoUl6HrcAbSehZGQ1rr
	 959Hn/sA+hDbw==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D7DC3837E5
	for <USRP-users@lists.ettus.com>; Wed, 27 Jul 2022 14:00:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FFoUyhrR";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id m16so13834278qka.12
        for <USRP-users@lists.ettus.com>; Wed, 27 Jul 2022 11:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=euOQkihGhpEdGFZ+bsqMMvDEGD9IWHG9NVdgtGN1T5Q=;
        b=FFoUyhrR8npiyaJpnGuCC/7VA3GYfq7xxQgVav8VmgMu98Fv3Lk1O7L7MWloBBCnSh
         RRgSepuyM6g4IZ1ayfRT0gK/WyUAbUHAtxDj+tjmVsnSxCqXuidt2u6Rfh/CkYhRF48S
         nn9LiKxwUjstm9VbwBUZNaB+lP2fTz3heiy/Z2RAr1sBHBkXyTptSRM2jLaTRSBg8Cpn
         gfpId40PZA+v6kmBvglIjPpeul1fTex5IU+N5HrCG3KWfjjZLcrABxd5zSr3stTrXdR6
         VKmohHp1HgyAe1npsCpzhv06V4dMMp/xbCM4lq/h/6IxifjhKlANHSwibPk9ZDduWr9H
         UNXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=euOQkihGhpEdGFZ+bsqMMvDEGD9IWHG9NVdgtGN1T5Q=;
        b=bsJ/xsaNfzklYqEZlGrpi0X6ILzTHNWMAS7vLhe9W8nUGwcUmWDMItOBZhOvaSRsmv
         aV7ZEvPK2GnLPndMIWKL0s5R1BhXSElKx/qcJt+g5cjvoh1n1AaCvmP0IZqZvahnoJU6
         quJWw7yDclPB8yHUuNcEMTzprG/H7BR6Ga8c83C/iHDMAmtTukP+s9NsbTdMayKdmZ7z
         KI/ZJ4pYIeUO/nAd8EGuPYgetYThqsJHDzgSHae7I2h2q38SVqRHXqkFyPkXJYfELm/i
         M6j9vtENL16Mb9MLb7LCNX+Gh0NvJLznKeX2JoBTdXqv/VPaEvjAOwqi8l8CLB+z7pTk
         osfg==
X-Gm-Message-State: AJIora/6j7cZUNhUhAltZZ+s1bCIg8b38cM5J69wPkHb3LvCt2DayoOD
	UAqnFA1NY1Y+H0xTo8FoENs23VvzDIA=
X-Google-Smtp-Source: AGRyM1vtZtBfkNjoCGyDTBMVpQnUAAShCByX2RZ6Cb92HHJMINgbSj6oUL7yL8ZRAxfdbxAmEYzS8g==
X-Received: by 2002:a05:620a:103b:b0:6b5:f6b1:af14 with SMTP id a27-20020a05620a103b00b006b5f6b1af14mr17415717qkk.336.1658944826255;
        Wed, 27 Jul 2022 11:00:26 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id he6-20020a05622a600600b0031f287f58b4sm8052622qtb.51.2022.07.27.11.00.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 11:00:25 -0700 (PDT)
Message-ID: <734245c0-1eb9-9209-c796-c916f7dd2b40@gmail.com>
Date: Wed, 27 Jul 2022 14:00:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Federico Civerchia <federico.civerchia@sma-rty.com>
References: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
 <CAB__hTR2t4CRv_MrEH5ioTBoSC=77F4AhAuPDwyLaBc3vouStw@mail.gmail.com>
 <b95a1d8f-608f-ff79-1e44-3a79b2f6f889@gmail.com>
 <c7d470b2-ff35-b44a-995d-c4e82a8096ad@sma-rty.com>
 <3f2322e2-899c-d9c9-ac96-0d3653663e46@gmail.com>
 <259b855b-6950-9108-3a4c-59235a5f2592@sma-rty.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <259b855b-6950-9108-3a4c-59235a5f2592@sma-rty.com>
Message-ID-Hash: QU656XWOLGTUG34QOP5BP2UKGJHT4YT2
X-Message-ID-Hash: QU656XWOLGTUG34QOP5BP2UKGJHT4YT2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suggested SFP+ for Ettus N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QU656XWOLGTUG34QOP5BP2UKGJHT4YT2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1502174877214360144=="

This is a multi-part message in MIME format.
--===============1502174877214360144==
Content-Type: multipart/alternative;
 boundary="------------tt7Hk8ewfzqehH2SiwCQtXEU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------tt7Hk8ewfzqehH2SiwCQtXEU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-27 12:22, Federico Civerchia wrote:
>
> Yes, errors with UHD benchmarks, ping packet loss and iperf3 packet=20
> loss on both setups.
>
> The patch cables are new and 3mt long (always bought from FS)
>
> Federico
>
Is this two different N310 on two different computers, or a single N310=20
on two computers?

Have you tried with just a *single* 10GiGe connection?=C2=A0 What are the=
=20
setups of your 10GIGe NIC cards in terms of ip address settings, etc?


> On 27/07/22 18:18, Marcus D. Leech wrote:
>> On 2022-07-27 12:15, Federico Civerchia wrote:
>>>
>>> Hi Rob, Marcus,
>>>
>>> thank you for your answers.
>>>
>>> Yes, I have packet loss with ping and also with iperf3 (considering=20
>>> udp) at low rates (500Mb, 1Gb).
>>> From the host side I can also see continuous disconnection and=20
>>> re-connection of the link. For the Intel X520-DA2 NIC, I have bought=20
>>> Intel SFP+ (E10GSFPSR) but this does not resolve the issue.
>>> I would like to clarify my setup, maybe it can help to find out what=20
>>> is going wrong:
>>>
>>>   * First setup:
>>>       o Dell PowerEdge R550 (2xXeon Gold) equipped with dual port
>>>         Broadcom BCM57414 NetXtreme-E 10Gb/25Gb.
>>>       o USRP Ettus N310
>>>       o 4x SFP+ FS transceiver at 850nm (SR)
>>>       o 2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables
>>>   * Second setup:
>>>       o Dell Precision tower 3650 (Intel core i9) equipped with dual
>>>         port Intel X520-DA2 10Gb
>>>       o USRP Ettus N310
>>>       o 2x SFP+ FS transceiver at 850nm (SR)
>>>       o 2x Intel E10GSFPSR
>>>       o 2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables
>>>
>>> For the USRP, I considered UHD 4.2.0, 4.0.0 and 3.15.0. All of them=20
>>> highlight an unstable connection (packet loss and flapping)
>>>
>>> Do you have other hints?
>>>
>>> Thank you
>>>
>>> Federico
>>>
>>>
>> Same thing is happening on both setups?=C2=A0=C2=A0 How long are your =
patch cables?
>>
>>

--------------tt7Hk8ewfzqehH2SiwCQtXEU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-27 12:22, Federico Civerchi=
a
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:259b855b-6950-9108-3a4c-59235a5f2592@sma-rty.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Yes, errors with UHD benchmarks, ping packet loss and iperf3
        packet loss on both setups.<br>
      </p>
      <p>The patch cables are new and 3mt long (always bought from FS)</p=
>
      <p>Federico<br>
      </p>
    </blockquote>
    Is this two different N310 on two different computers, or a single
    N310 on two computers?<br>
    <br>
    Have you tried with just a *single* 10GiGe connection?=C2=A0 What are=
 the
    setups of your 10GIGe NIC cards in terms of ip address settings,
    etc?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:259b855b-6950-9108-3a4c-59235a5f2592@sma-rty.com">
      <p> </p>
      <div class=3D"moz-cite-prefix">On 27/07/22 18:18, Marcus D. Leech
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:3f2322e2-899c-d9c9-ac96-0d3653663e46@gmail.com">
        <meta http-equiv=3D"Content-Type" content=3D"text/html;
          charset=3DUTF-8">
        <div class=3D"moz-cite-prefix">On 2022-07-27 12:15, Federico
          Civerchia wrote:<br>
        </div>
        <blockquote type=3D"cite"
          cite=3D"mid:c7d470b2-ff35-b44a-995d-c4e82a8096ad@sma-rty.com">
          <meta http-equiv=3D"Content-Type" content=3D"text/html;
            charset=3DUTF-8">
          <p>Hi Rob, Marcus,<br>
          </p>
          <p>thank you for your answers.</p>
          <p>Yes, I have packet loss with ping and also with iperf3
            (considering udp) at low rates (500Mb, 1Gb).<br>
            From the host side I can also see continuous disconnection
            and re-connection of the link. For the Intel X520-DA2 NIC, I
            have bought Intel SFP+ (E10GSFPSR) but this does not resolve
            the issue.<br>
            I would like to clarify my setup, maybe it can help to find
            out what is going wrong:</p>
          <ul>
            <li>First setup:</li>
            <ul>
              <li>Dell PowerEdge R550 (2xXeon Gold) equipped with dual
                port Broadcom BCM57414 NetXtreme-E 10Gb/25Gb. <br>
              </li>
              <li>USRP Ettus N310 <br>
              </li>
              <li>4x SFP+ FS transceiver at 850nm (SR)</li>
              <li>2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch
                cables</li>
            </ul>
            <li> Second setup:</li>
            <ul>
              <li>Dell Precision tower 3650 (Intel core i9) equipped
                with dual port Intel X520-DA2 10Gb</li>
              <li>USRP Ettus N310</li>
              <li>2x SFP+ FS transceiver at 850nm (SR)</li>
              <li>2x Intel E10GSFPSR</li>
              <li>2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch
                cables</li>
            </ul>
          </ul>
          <p>For the USRP, I considered UHD 4.2.0, 4.0.0 and 3.15.0. All
            of them highlight an unstable connection (packet loss and
            flapping)</p>
          <p>Do you have other hints?</p>
          <p>Thank you</p>
          <p>Federico<br>
          </p>
          <br>
        </blockquote>
        Same thing is happening on both setups?=C2=A0=C2=A0 How long are =
your
        patch cables?<br>
        <br>
        <br>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------tt7Hk8ewfzqehH2SiwCQtXEU--

--===============1502174877214360144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1502174877214360144==--
