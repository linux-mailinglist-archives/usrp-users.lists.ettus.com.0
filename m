Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C64EB540264
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 17:27:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0FF84383F91
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 11:27:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654615675; bh=kTgcBb+mI9xGYOyMIQ8AUVqAifBcxrDIF/gwc8o8Y4Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=sz7WBN3fiw1YLTQwkenB7LpcM/bn1OVY7nxGKNPmMwcz7QPSW+cCWRzhodIqtp19u
	 7j5fIkqdR/nIWzXpO6XSzFJTdsJ+HVrYieOFXQn3IeTO5Yk1sI9isaebLWFJOBl/3f
	 G542j8xcKRGECIisBblDUYmC1Eyy8O9/KHSAjkNJxaR7olPcC42iFozEbD+Bice8wb
	 Koqhe3qZpyZdFiQ7sYcW587rXkEGmh1Zzo9eEbCDizdJCvmvfbwRBRFNhCeuJhYiR5
	 pxbvlPBl8fbhcBPnaUH4i5gjRbBEcTqtxZEZL6WFNvMDjBidqNJWVxDFd11ejbWNE/
	 hBgQlnumcdm5w==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 660A1383EB2
	for <usrp-users@lists.ettus.com>; Tue,  7 Jun 2022 11:26:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IGtJyK7g";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id y15so12867848qtx.4
        for <usrp-users@lists.ettus.com>; Tue, 07 Jun 2022 08:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=1YOqi+4aWK2q8iUbRS31B1h4dlEpuXU7dlYAeTlFlX4=;
        b=IGtJyK7gCexjFxXyuCBGuh2aCXE16GJRBvi81iA3kPDc5YS+2jnlzzXcQb6UpWHHfB
         3HhMfnJDgxPfPyHYOZApnX0FQwsG9i2zyquaEeFGCrpnfRGvRQYSxPIFOaVGJ3HaoaSa
         6FVl1IO+otxMzcst8GF944AKiRHphMEyQmNfEB7hRwABTBWsbc0PGKUZ4Uul38Wy+FAX
         yZFi1BeLfR0GvlA0JDaSaQsl24AlFfQFoEv4Ce9ngTtIrUx/vUsyFNi9vlHLRVoKMYXa
         Q8vpqec5JzIbi+s7vnvUyvO2eFXIKPDubokVmyMOUws3eFPo09PPgTJxe+o2IUGN8y30
         DpYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=1YOqi+4aWK2q8iUbRS31B1h4dlEpuXU7dlYAeTlFlX4=;
        b=ZSNunhYxGhdo0JEwp0oqob2prd40jDA6zNMclHGRQ6g7t7Ie1tjdBohYh5fyNzasWX
         L8Ccc8SK68HhoaZJTrQNMx7No+AlsN4emWAm2SvP+zAzjSy2bG+2HTpi6eKg/7pe2I7F
         6QgrXuWwEkPI8Y1EbSBR7hKU3LHT7IQVdNkH382yjRF2K3mzk2eLk3SSd+UxtJQl1tLh
         eUZ+oLPDD0TZPIcpsymwMdP4pEtcQLtAorW1yU+7VZ2VbkBAPNg1xIDpr+KSbxyRjVFF
         ye/FtMn/nDA2rnfCjytXe4JkPtZwps62PPcrxPzrBc1gj9O94IHEJI0Ut5KCRDOcuQf0
         unYA==
X-Gm-Message-State: AOAM532yjcVYc9fB/9Ur2i+5/zSED3oP5d5Dx7dgyMC/e0oNHXCCoRZi
	DYoIcUqHGJO3dqvJQfC71bNL0LOwhfho9hQ7
X-Google-Smtp-Source: ABdhPJxT33edQxQaen+Og3OjYvK7JbuYmfnftYlAgpiZwpVt09dqMO6+Tj3xTnpxVirvNBBSM08iwg==
X-Received: by 2002:a05:622a:1053:b0:304:b6ac:3c21 with SMTP id f19-20020a05622a105300b00304b6ac3c21mr22958857qte.61.1654615602502;
        Tue, 07 Jun 2022 08:26:42 -0700 (PDT)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id t22-20020a05620a451600b006a6a7e70211sm4482906qkp.96.2022.06.07.08.26.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 08:26:42 -0700 (PDT)
Message-ID: <3d13e506-9856-20ec-3426-f88efd660b37@gmail.com>
Date: Tue, 7 Jun 2022 11:26:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <6R1y3tFAgiak8lWeNrN2Sgbnf0PinRmM3omxKLaxzA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <6R1y3tFAgiak8lWeNrN2Sgbnf0PinRmM3omxKLaxzA@lists.ettus.com>
Message-ID-Hash: AEI7MYLFBWCSPFTBOORR7ZFCXJWKJS6I
X-Message-ID-Hash: AEI7MYLFBWCSPFTBOORR7ZFCXJWKJS6I
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AEI7MYLFBWCSPFTBOORR7ZFCXJWKJS6I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5359668623019181589=="

This is a multi-part message in MIME format.
--===============5359668623019181589==
Content-Type: multipart/alternative;
 boundary="------------3RfHjOf7wYBF9tfl2xovBzHt"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3RfHjOf7wYBF9tfl2xovBzHt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-06-07 11:24, ri28856@mit.edu wrote:
>
> Wade Fife wrote:
>
>     I'm not very familiar with how those tune commands get translated
>     into register transactions, but one thought I had is that it may
>     also be issuing timed commands to the radio. If so, you also might
>     need to make the radio's control FIFO deeper by updating the "512"
>     number to the depth you need. It should be a power of 2, so I
>     would try 1024 or 2048, etc. It needs to be updated in two places
>     to the same value:
>
>     https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9=
ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_r=
adio.v#L148
>
>     https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9=
ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_r=
adio.v#L195
>
>     Wade
>
> I=E2=80=99m using UHD 3.13 because I work in an airgapped environment a=
nd I=20
> haven=E2=80=99t had time to upgrade. It appears noc_shell_radio.v was a=
dded=20
> around UHD 4.0, is there a 3.0 equivalent?
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The other thing to consider is that once the RF synthesizer is on=20
frequency, if you set the rf_freq_policy to NONE, that will prevent it=20
from touching the synthesizer tuning at all.


--------------3RfHjOf7wYBF9tfl2xovBzHt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-06-07 11:24, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:ri28856@mit.edu">ri28856@mit.edu</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:6R1y3tFAgiak8lWeNrN2Sgbnf0PinRmM3omxKLaxzA@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Wade Fife wrote:</p>
      <blockquote>
        <p>I'm not very familiar with how those tune commands get
          translated into
          register transactions, but one thought I had is that it may
          also be issuing
          timed commands to the radio. If so, you also might need to
          make the radio's
          control FIFO deeper by updating the "512" number to the depth
          you need. It
          should be a power of 2, so I would try 1024 or 2048, etc. It
          needs to be
          updated in two places to the same value:</p>
        <p><a class=3D"moz-txt-link-freetext" href=3D"https://github.com/=
EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp=
3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L148">https://gith=
ub.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fp=
ga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L148</a></p=
>
        <p><a class=3D"moz-txt-link-freetext" href=3D"https://github.com/=
EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp=
3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L195">https://gith=
ub.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fp=
ga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L195</a></p=
>
        <p>Wade</p>
      </blockquote>
      <p>I=E2=80=99m using UHD 3.13 because I work in an airgapped enviro=
nment
        and I haven=E2=80=99t had time to upgrade. It appears noc_shell_r=
adio.v
        was added around UHD 4.0, is there a 3.0 equivalent?</p>
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
    The other thing to consider is that once the RF synthesizer is on
    frequency, if you set the rf_freq_policy to NONE, that will prevent
    it from touching the synthesizer tuning at all.<br>
    <br>
    <br>
  </body>
</html>

--------------3RfHjOf7wYBF9tfl2xovBzHt--

--===============5359668623019181589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5359668623019181589==--
