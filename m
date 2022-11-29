Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A93463B757
	for <lists+usrp-users@lfdr.de>; Tue, 29 Nov 2022 02:42:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35514384039
	for <lists+usrp-users@lfdr.de>; Mon, 28 Nov 2022 20:42:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669686136; bh=PpVmFrS7+BXOBfZPkejP10JPGMPcyQQGh+F/uPtFu/g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PGuzzDqkWCFwbXSAOlyq6BizFSve3Sj0E6J/J4ukYV2incElYA8eXg7CganG5s7JL
	 3eQ++Pqn89O4XBLlM18/K/0wg63t/42pETEmhcmmCFQJgt7vh/bNmQ+vdLwephBYLI
	 X2YMpfUzlcLYK8GbOhcqyeMdt4xe6KjFhfgFiezcxgZGYtg7esfG0P5/EdyNFV94jx
	 BBaw4OESpPClu0fjnK1TVDKKsiuapVCnSYTzqYauRtYvhPVohkbJL8fgH/6EgZm+Ww
	 JDcvfiZF11CGF7A6G2/XvB7iPQPyr0DRkj5cdeKZoR64Zp7ZHUz4V9HuKwSBW5lLe6
	 xXo/seAPgtciA==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 7FFF4383FB0
	for <usrp-users@lists.ettus.com>; Mon, 28 Nov 2022 20:40:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AYJcXbOV";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id w4so8049164qts.0
        for <usrp-users@lists.ettus.com>; Mon, 28 Nov 2022 17:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Mja/lIzml36ILROZcRhwIitoOsgVxkTXaWNQDsL6DM=;
        b=AYJcXbOV5JW9F4GWaz7F0FOirl1ygaZ74MyU5QKatnwKwZ39Z5St5rJo7R3gigI2sj
         diNQU/NinruqnkimzRO1H6FrrT+umUtjGFEVUiTaaaMGbsdXjOeh16dfeLSWd2nLT1dD
         q6gHgTFSmt/3dGf7FKOXzQ2iN5ac+tO0J/8kXmLiGsMNF61LWUO04m6PHHYTO45rAKuf
         wMzqRfuSu4BPooIFBAwo64KnmUWRvBgf3zq1Y3lY/uEyNZTbVs9zsvLnVwZTM7ajfPqk
         /SxQ9qE9DRFIdCDhWOcEHkD/v/dkwaPuSPLc8HVpD+xnQ29U+42r2/vtyBkbh2QGMhbF
         EulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0Mja/lIzml36ILROZcRhwIitoOsgVxkTXaWNQDsL6DM=;
        b=AWHD5Br9z53dMHEk+bF5XgIBVsNT5DM42oLTTSrz9pXAbPRug3j56SxefjmzJctG46
         r6yLj/W2EbssVjCuO4abT/llX8bhkVS0WcTZsVuvVoibCwvrPvLTpO0CRhHy/YDE9ciy
         O0BGJUvXVfnRa0dcK6zEaubl+JwoTjWPqxD+0D5qQRisCTJobnuhh8Pctb5dDkprLUCP
         8QKm3kUHkno1wnd7JZoTgWVuBwcZijafIUw2RT+g6bL0QZx42s7FUXnypWAe00BQNbNi
         IX0MbRkpqFnR/7epu1Rgb5ZNvNfSGDuDk8KslPrjpDir4ChfamhYlSRwNA1h3tShNkHv
         ywIw==
X-Gm-Message-State: ANoB5plTJgNhs5VTb+vzK02R4RneKBbIH1Df3lKp3xPdomf2h//grB8u
	kKMpO5QsJECzxgaUL8nh2xc8U2DjR0HmIA==
X-Google-Smtp-Source: AA0mqf7D3LDM8jzRsHucC7+bxx5Xz3hJQ4HGdVQAYuSzpr2eUNhbAG1V81Kgc/tOD+HeWmnccLMdhA==
X-Received: by 2002:ac8:4e02:0:b0:3a5:f5:b63e with SMTP id c2-20020ac84e02000000b003a500f5b63emr36050220qtw.492.1669686055655;
        Mon, 28 Nov 2022 17:40:55 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id r9-20020a05622a034900b003a526675c07sm8008749qtw.52.2022.11.28.17.40.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 17:40:55 -0800 (PST)
Message-ID: <ed9aaa0e-a84f-d15f-3339-6283bdd2b095@gmail.com>
Date: Mon, 28 Nov 2022 20:40:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MD7U6L3Js9JcHnIQw5DtSDnJAdG9XRQUjlLmPqTbKSw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MD7U6L3Js9JcHnIQw5DtSDnJAdG9XRQUjlLmPqTbKSw@lists.ettus.com>
Message-ID-Hash: X73LTLQ5UESYQRZWGYQHY5QGFBXEPPMN
X-Message-ID-Hash: X73LTLQ5UESYQRZWGYQHY5QGFBXEPPMN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 temperature sensor calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X73LTLQ5UESYQRZWGYQHY5QGFBXEPPMN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4912584422661803082=="

This is a multi-part message in MIME format.
--===============4912584422661803082==
Content-Type: multipart/alternative;
 boundary="------------7sboB0RmljlFuHadYzk0M69u"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7sboB0RmljlFuHadYzk0M69u
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 28/11/2022 20:29, Krishna Makhija via USRP-users wrote:
>
> Hello,
>
>
> I intend to calibrate the gain of my B210 across different=20
> temperatures so I can make adjustments to my data in post-processing.=20
> Has anyone ever attempted something like this? I have some questions:
>
>
> 1.
>
>     Where is the temperature sensor physically located on the B210? Is
>     it representative of the RF front-end?
>
> 2.
>
>     Is there a GNURadio way of getting temperature sensor data and
>     saving it to a separate file as metadata? I have this working
>     somewhat but it is a very roundabout Rube Goldberg implementation.
>     Is there some GNURadio Companion block that will let me output
>     this data and save to a separate file?
>
> Thanks!
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I'm not certain that the AD9361 temperature-sensor is "mapped" by the=20
UHD API, and Gnu Radio doesn't in general have
 =C2=A0 generic mechanisms for dealing with these "auxiliary data sources=
".

You can use:

uhd_usrp_probe --tree

To see if the temp sensor is mapped into the UHD "property tree", and=20
then use the property-tree functions within UHD
 =C2=A0 (but not mapped into Gnu Radio or gr-uhd really) to get values fr=
om=20
the property tree.


--------------7sboB0RmljlFuHadYzk0M69u
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 28/11/2022 20:29, Krishna Makhija
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:MD7U6L3Js9JcHnIQw5DtSDnJAdG9XRQUjlLmPqTbKSw@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p><br>
      </p>
      <p>I intend to calibrate the gain of my B210 across different
        temperatures so I can make adjustments to my data in
        post-processing. Has anyone ever attempted something like this?
        I have some questions:</p>
      <p><br>
      </p>
      <ol>
        <li>
          <p>Where is the temperature sensor physically located on the
            B210? Is it representative of the RF front-end?</p>
        </li>
        <li>
          <p>Is there a GNURadio way of getting temperature sensor data
            and saving it to a separate file as metadata? I have this
            working somewhat but it is a very roundabout Rube Goldberg
            implementation. Is there some GNURadio Companion block that
            will let me output this data and save to a separate file?</p>
        </li>
      </ol>
      <p>Thanks!</p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    I'm not certain that the AD9361 temperature-sensor is "mapped" by
    the UHD API, and Gnu Radio doesn't in general have<br>
    =C2=A0 generic mechanisms for dealing with these "auxiliary data
    sources".<br>
    <br>
    You can use:<br>
    <br>
    uhd_usrp_probe --tree<br>
    <br>
    To see if the temp sensor is mapped into the UHD "property tree",
    and then use the property-tree functions within UHD<br>
    =C2=A0 (but not mapped into Gnu Radio or gr-uhd really) to get values
    from the property tree.<br>
    <br>
    <br>
  </body>
</html>

--------------7sboB0RmljlFuHadYzk0M69u--

--===============4912584422661803082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4912584422661803082==--
