Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F98060D706
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 00:26:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CA3D383964
	for <lists+usrp-users@lfdr.de>; Tue, 25 Oct 2022 18:26:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666736772; bh=iTy14Gng4VrE8yzi2UgzGeGfVK4ewZmSSMF6+M9VxJw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=V53zzGXFSp6d3+xH66HWRHHTpjUwcQ/HKBhneKM6nYZVN+fX3lCn7w7dHSRWwlwZY
	 nUmNdhDrlBgj5EEML3/D3wnz1ayTP5dh76u18eMznijMyTZx0v5zslRkBp/RiHKrgE
	 ViMehu9fFgsYQzu50w2792uSJGq66xjdbxIYGVkh82MHyCEbZdBU60C9AwpdzQcxnD
	 /QKhKlHFk5pJQAHBJSkv1Oty5FgKp5L9QBb/sbji4BJtclwgZoEgSkmQk5T34adCmG
	 KNALNOLnDW+IVC863xHRBE10UPGlHyxoTr1dS0zHL+y0WCkX7ga+VPEK4VZ+UuVvLl
	 1EhfUe4sSeD5A==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 48BC4380FF6
	for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 18:25:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IozX6N5V";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id a18so9309752qko.0
        for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 15:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hLXvtfA7P4+g9pCrEYZjp6Yc/Wpp1LxZ4ubtmBdDgXo=;
        b=IozX6N5VRYvkkBuHEaSO6TBi+dowTNtHnF0QUwSQCRhYv6H9+WJ0REOd2RyW45T6Dn
         BTmL2FR3KnzQ7+IMSdtFg5ibDb8dWw0fVvfRNWFvkNXQYjQQZQNjUD6O/sfY90pDzbsg
         WV+zdMyKo48bALtttfNpjUUC0rpJQNTSWKR1KcVbB/xktbUTjoporXpl9RCINyuuWHy0
         2xpQET7R7wPpObydsKyTBpPWhxLy8Etqwsib7IfT2MJTfNHhC5dySMLZ7lPmAWIdKabC
         GatXrvzmNC8aX/s/jyViXatBmouyY9CsDpJOl6YOPEYm4jBG6FpH+4iJkE9KHK08RrTt
         EmZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hLXvtfA7P4+g9pCrEYZjp6Yc/Wpp1LxZ4ubtmBdDgXo=;
        b=bqDLiTGM6uU9G5OrevdIOHhQmrz4Iz6Vj1UM8NWC6n87sQ7PGqRIu434OiKMOFlG5q
         XSsn5fWpzI2iqdm3QVfWEv0FhvO8tVcjOLOXAVvlHtcWOUiVj4oSUi8VfwXP5td9FtfW
         eC0/+cGimUs+bki0Td9yW7oqaa+kXHgtYR0bt9jIuJrDdHCv9Ml9fHmwTMK7E4gOm9lw
         Em+4HQF8UT0R3xDSQfjV0iLlmU4OWLg7JxJBcICxS795VvAmECGq0Qi4Oz6GotPPfxQT
         kXPxpSa7eHZZNacfZBVsuQr4lzuO//Uizetc2Ipazq7tW3ChXFhqgT3qAdMEwzTq1n1w
         dA6A==
X-Gm-Message-State: ACrzQf0ncY32RmZIV5M5YoM6DEdw2id1UidkxM1lQca0hLKlMjTnB9g/
	4oDgSTvRYqnoMnzAL1r5GkDw+Dhbu8o=
X-Google-Smtp-Source: AMsMyM5FZ9On6yct0NPQYkrgfsZk48Ci1Gv+Fv2xlMePZstGMY+jSEKVVGj1O9soaOh5pXlNMm30IA==
X-Received: by 2002:a05:620a:2b93:b0:6f3:a298:31e4 with SMTP id dz19-20020a05620a2b9300b006f3a29831e4mr12037017qkb.595.1666736720535;
        Tue, 25 Oct 2022 15:25:20 -0700 (PDT)
Received: from [192.168.2.173] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id e10-20020a05622a110a00b0039cb9ef50b5sm2291209qty.26.2022.10.25.15.25.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 15:25:20 -0700 (PDT)
Message-ID: <4b2620f0-2a51-8c32-42b3-495fa9940e9e@gmail.com>
Date: Tue, 25 Oct 2022 18:25:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR14MB419214F8506DB89A597490BACD319@MN2PR14MB4192.namprd14.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR14MB419214F8506DB89A597490BACD319@MN2PR14MB4192.namprd14.prod.outlook.com>
Message-ID-Hash: QGYBR2VU4KOHUWXZE6IASOGHJIY54H7J
X-Message-ID-Hash: QGYBR2VU4KOHUWXZE6IASOGHJIY54H7J
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4.3 FPGA version
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QGYBR2VU4KOHUWXZE6IASOGHJIY54H7J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7419234176253155857=="

This is a multi-part message in MIME format.
--===============7419234176253155857==
Content-Type: multipart/alternative;
 boundary="------------M3FXg07v8qKLr8mleS1nBr9f"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------M3FXg07v8qKLr8mleS1nBr9f
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-25 18:20, Xingjian Chen wrote:
> Hi there,
> For FPGA programming, which GitHub branch and tag has=C2=A0FPGA=20
> compatibility number 39.0? I tried to use UHD 4.3, however, it seems=20
> that the FPGA (38) and Host (39) versions are mismatched after I git=20
> clone the master repository. I also tried to checkout the tag v4.3.0=20
> for UHD-4.3, but it seems not matched too. What is the correct way to=20
> download the folder with the suitable versions for both fpga and host=20
> codes?
> PS. uhd_images_downloader works fine for me to match fpga images after=20
> build and install the UHD 4.3.
>
>
You build and install UHD host, then, as you observe, run=20
uhd_images_downloader to get the FPGA code.

On MASTER they bumped the FPGA version compat numbers.

Using "uhd_images_downloader" should always yield a matching FPGA=20
image.=C2=A0 Don't forget you have to power-cycle the
 =C2=A0 device, typically, after changing the FPGA image.=C2=A0 You didn'=
t mention=20
what type of device?


--------------M3FXg07v8qKLr8mleS1nBr9f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-25 18:20, Xingjian Chen
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR14MB419214F8506DB89A597490BACD319@MN2PR14MB4192.namprd14=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Hi there,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        For FPGA programming, which GitHub branch and tag has=C2=A0FPGA
        compatibility number 39.0? I tried to use UHD 4.3, however, it
        seems that the FPGA (38) and Host (39) versions are mismatched
        after I git clone the master repository. I also tried to
        checkout the tag v4.3.0 for=C2=A0<span
          style=3D"background-color:rgb(255, 255, 255);display:inline
          !important" class=3D"ContentPasted3">UHD-4.3, but it seems not
          matched too.=C2=A0</span>What is the correct way to download th=
e
        folder with the suitable versions for both fpga and host codes?</=
div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1
        ContentPasted2">
        PS. uhd_images_downloader works fine for me to match fpga images
        after build and install the UHD 4.3.=C2=A0<br>
      </div>
      <div class=3D"elementToProof">
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
      </div>
      <br>
    </blockquote>
    You build and install UHD host, then, as you observe, run
    uhd_images_downloader to get the FPGA code.<br>
    <br>
    On MASTER they bumped the FPGA version compat numbers.<br>
    <br>
    Using "uhd_images_downloader" should always yield a matching FPGA
    image.=C2=A0 Don't forget you have to power-cycle the<br>
    =C2=A0 device, typically, after changing the FPGA image.=C2=A0 You di=
dn't
    mention what type of device?<br>
    <br>
    <br>
  </body>
</html>

--------------M3FXg07v8qKLr8mleS1nBr9f--

--===============7419234176253155857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7419234176253155857==--
