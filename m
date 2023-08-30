Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C937978DEC1
	for <lists+usrp-users@lfdr.de>; Wed, 30 Aug 2023 22:08:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3A8A384CB6
	for <lists+usrp-users@lfdr.de>; Wed, 30 Aug 2023 16:08:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693426129; bh=6VKo4STA/1moDG+EXf7jydubi2z9havi9VfLBZNC69k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gOLc5u55S7FQpEj9aKwPJhSmrfzsfjraLX7Bps+XekEEbyT7usiWBj9WcfihAPQQB
	 BOJJM6MVPiR3nMe4ga/wMbY8/zuc5tTrKS1Wf8f3d+NgiBuBqwvxzyzsYR3g9GgOnK
	 /HVCiyOuVdzJutD2IFbhTPTwMvrV72MMGBNDOJRikhH7RZJh+ujkouHOgzB9/8+fRI
	 Qks/XiGooj60wVSHc6X+XXDOLjrPuBmZaoz+/irlbYHp1G8O7W7ckzsnhbLt5I//yZ
	 t3i7EHtNThOylr+GNQZSk3XgE94X+MQC4VLN+3oYfC0MONuz8J0rVS12HRpRFal+40
	 N1uZGl4Tr/WsA==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F333384C42
	for <usrp-users@lists.ettus.com>; Wed, 30 Aug 2023 16:07:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MxOmQRgV";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-64914f08c65so762626d6.1
        for <usrp-users@lists.ettus.com>; Wed, 30 Aug 2023 13:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693426072; x=1694030872; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T4vRcgwTOb1ix5+7pQLiB+eiVmbR/oPKjMIaOgpJk0M=;
        b=MxOmQRgVizo74acUGGTe3pfqcpFdeh6G3n4aTIRZezoci2BykHUvXz8GKfQl2kg3v+
         sWvCeX7CJtYNBFuAWaQZn0tieka1YRADgKOlTvhSHzv0ZCQsj/kYx0HjKMKgR63sYuFD
         ofGXbVqocg5ekZC31JAJVFeD0PnbUAKe4KnWjhgQko1Pn8MaR/3LZ2GyL5jbzNwtbmlF
         ciJTXBPiy2nhFreRZxVoL1JssR+NDu0MKQ7lilCu6Pwckk+CeRznyWySOGFn3eO3i8tW
         qfkB7gSzydnBgoXFSFcPjtEBib+vb+VVDN/jw/41Anx3kQQduK7Yy+weZYiGJI8VP7kW
         yAEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693426072; x=1694030872;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=T4vRcgwTOb1ix5+7pQLiB+eiVmbR/oPKjMIaOgpJk0M=;
        b=RzeCfo073Y9/oUZeHowUbYcCXNhtOkisLVmUBY1FDoGYbP2n5zVYOxwWxi2ZDa6yJd
         raNXQ3HIY+CzC/1Yb4K52J0kKs+Tqdu9f8ZfYN9E3N0qZPSntba+KkT4L1GS2p4w4jVv
         Ng9eIb2vzgTwJC32OsrZZSr1S9FR5wjdH3VpxMy/Vudr22dyhdcAJg/hVWP+9IztRK5A
         7f/ZldurE5D7qXNIMhiOC4WO7EXd1xwE8FltY/5fysC2wcvoIFSJgjJ7ZcEnSA53HQhw
         jADzx1ht+eZMrTUsRJHHSML6IQmhwYgMbLQZcz7wX2wDz2xlEcKqLQGyobdQV9EYzhsM
         ukjA==
X-Gm-Message-State: AOJu0YzikZwOZnssg28ghUGSJYVnzVe945Xpg7esFi7Y0duqwDMu1dr2
	2qwG5jcrk5XtavJH+yQqtiAlSpE6wMUDWg==
X-Google-Smtp-Source: AGHT+IGCFPrwb/p3l8BVcBjUD8Y+b2vSWeNybW0khU5Jj/jKcvPenyOcwFp9bntWNDOcdODSdz98Uw==
X-Received: by 2002:a05:6214:8e3:b0:651:8efe:2a61 with SMTP id dr3-20020a05621408e300b006518efe2a61mr675359qvb.18.1693426072584;
        Wed, 30 Aug 2023 13:07:52 -0700 (PDT)
Received: from [192.168.2.166] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id d23-20020a0caa17000000b0064f5daff23fsm4379862qvb.15.2023.08.30.13.07.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 13:07:51 -0700 (PDT)
Message-ID: <11e5352d-2416-8b65-1ae3-225798605ba9@gmail.com>
Date: Wed, 30 Aug 2023 16:07:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <f2bpW4ovUAZRhszYyzkqEaoSPb7SMXmZkzBHU3YERVw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <f2bpW4ovUAZRhszYyzkqEaoSPb7SMXmZkzBHU3YERVw@lists.ettus.com>
Message-ID-Hash: LCBSIQO2J4VKYLA6JZE3JFCBTSSZI4IR
X-Message-ID-Hash: LCBSIQO2J4VKYLA6JZE3JFCBTSSZI4IR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GNU Radio and E310 Network Mode Questions
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LCBSIQO2J4VKYLA6JZE3JFCBTSSZI4IR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6750079507805501086=="

This is a multi-part message in MIME format.
--===============6750079507805501086==
Content-Type: multipart/alternative;
 boundary="------------GVabOV3vPEmIclnO1NOF6jRS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------GVabOV3vPEmIclnO1NOF6jRS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 30/08/2023 15:45, marcivanmanalac@gmail.com wrote:
>
> Host specs: Ubuntu 20.04, UHD v4.4.0, GNU Radio V3.10.7
>
> USRP Specs: E310 f-model, UHD v4.4.0
>
>
> Hello everyone,
>
> I am fairly new to the SDR space and am learning as I go. I am trying=20
> to run a simple FM RX flowgraph from GNU Radio on my host machine to=20
> my USRP E310. I have verified that they are in the same network as I=20
> am able to access the USRP via SSH, ping both machines on either side,=20
> and can identify one another using /uhd_find_devices =E2=80=94args=20
> addr=3D<USRP_IP_ADDR>/ and /uhd_usrp_probe =E2=80=94args addr=3D<URSP_I=
P_ADDR>./
>
>
> When I generate and run the flowgraph, I get a runtime error stating:
> /in __init__/
>
> /self.uhd_usrp_source_0=3Duhd.usrp_source(
> rpc::timeout:Timeout of 2000ms while calling RPC function =E2=80=98get_=
num_xbars=E2=80=99/
>
>
> uhd_usrp_probe does give me a few warnings:
>
> /[MPM.PeriphManager] Skipping Hw/SW compatibility check!/
>
> /[MPM.PeriphManager] Found more EEPROM paths than daughterboards.=20
> Ignoring some of them./
>
> /[UHD] The buffer could not be resized sufficiently. Target sock buff=20
> size 2500000. Actual sock buff size 1048576./
>
> I ran /sudo sysctl -w net.core.wmem_max=3D2500000/ to increase the=20
> buffer size.
>
>
> My questions are, does this appear to be a problem with my flowgraph,=20
> the USRP settings, or host settings? What are somethings I should look=20
> into to solve this?
>
>
What happens if we ignore Gnu Radio for a second, and use an example=20
program like "rx_samples_to_file" ??



--------------GVabOV3vPEmIclnO1NOF6jRS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 30/08/2023 15:45,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:marcivanmanala=
c@gmail.com">marcivanmanalac@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:f2bpW4ovUAZRhszYyzkqEaoSPb7SMXmZkzBHU3YERVw@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Host specs: Ubuntu 20.04, UHD v4.4.0, GNU Radio V3.10.7</p>
      <p>USRP Specs: E310 f-model, UHD v4.4.0</p>
      <p><br>
      </p>
      <p>Hello everyone, </p>
      <p>I am fairly new to the SDR space and am learning as I go. I am
        trying to run a simple FM RX flowgraph from GNU Radio on my host
        machine to my USRP E310. I have verified that they are in the
        same network as I am able to access the USRP via SSH, ping both
        machines on either side, and can identify one another using <em>u=
hd_find_devices
          =E2=80=94args addr=3D&lt;USRP_IP_ADDR&gt;</em> and <em>uhd_usrp=
_probe
          =E2=80=94args addr=3D&lt;URSP_IP_ADDR&gt;.</em></p>
      <p><br>
      </p>
      <p>When I generate and run the flowgraph, I get a runtime error
        stating:<br>
        <em>in __init__</em></p>
      <p><em>self.uhd_usrp_source_0=3Duhd.usrp_source(<br>
          rpc::timeout:Timeout of 2000ms while calling RPC function
          =E2=80=98get_num_xbars=E2=80=99</em></p>
      <p><br>
      </p>
      <p>uhd_usrp_probe does give me a few warnings:</p>
      <p><em>[MPM.PeriphManager] Skipping Hw/SW compatibility check!</em>=
</p>
      <p><em>[MPM.PeriphManager] Found more EEPROM paths than
          daughterboards. Ignoring some of them.</em></p>
      <p><em>[UHD] The buffer could not be resized sufficiently. Target
          sock buff size 2500000. Actual sock buff size 1048576.</em></p>
      <p>I ran <em>sudo sysctl -w net.core.wmem_max=3D2500000</em> to
        increase the buffer size.</p>
      <p><br>
      </p>
      <p>My questions are, does this appear to be a problem with my
        flowgraph, the USRP settings, or host settings? What are
        somethings I should look into to solve this?</p>
      <br>
    </blockquote>
    What happens if we ignore Gnu Radio for a second, and use an example
    program like "rx_samples_to_file" ??<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------GVabOV3vPEmIclnO1NOF6jRS--

--===============6750079507805501086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6750079507805501086==--
