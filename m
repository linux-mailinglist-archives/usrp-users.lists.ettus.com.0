Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF9F66D3E8
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 02:45:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4746938433F
	for <lists+usrp-users@lfdr.de>; Mon, 16 Jan 2023 20:45:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673919948; bh=kNfBFACs/W2qvhJPabAPDmu5c49MB0ClIqKj1X7pOus=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VCnhboAvkz3iLpdKwgaUT6iZeR2FXqxKoPbyELaAUyIVawcbGAu7ozS7SHPmhI/8m
	 FgsaDP+1Gq10ZnkyTOv/lq/hL8NR4fmt0A/MPHaqMlyU35vgJt9YotMHMouzprtTU6
	 zJxLZ5CQIhcY9ecKj7X7WN5FlftozURD6XTmP1/UgD8yxFvdWYZqKxaW9ABsB09CLG
	 ziME5tCEWq49SholHroRlxV29Pabh2Gh51bjuCMgu26kMhqX5OgpqtmvC1mI5D7Qvh
	 em4Kyh5A/fzZMGpS2rn1bdDE/5L5bRySNEE0+EzAqWEHEjqnSgX0PUSitWzm0xdDFD
	 /iLBDqkfzjbFA==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 07EF938407F
	for <usrp-users@lists.ettus.com>; Mon, 16 Jan 2023 20:45:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bIkrE7SK";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id fd15so16177235qtb.9
        for <usrp-users@lists.ettus.com>; Mon, 16 Jan 2023 17:45:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1BSMX3d4N3ZH70VQxl+j9IBZ22qjiOpq4sFEYF+RKIo=;
        b=bIkrE7SKvmg/y/zc0HeZfUCvPkVfcBSLLMnexbORETiDe7rTEfJPnLZ3lEwDiUzCJ7
         CHjeGXfL3qq2krDrrCBKhAbQDTIoD6ZFXz4JAQxiOYkUOVXTiHxnUMam2wJCuVd9sh64
         +tZUo/6DW12/lTDl0Hm+1YvTT4sDOv7iaS5JKA+jj3J6/rR3OUZ7U76IDc15k5Pjrc3C
         e1pO8tr39T/LusnVtUR+udp6E3+bTDVS+AneJvpJY/E/Ztx+1kn7PnchUTlYnCQ9vEiO
         N7024D08c+Q/OxiYnQH+X6JN5nbfvMWiWn0eKcIy1dnqAKchkAjsa6T0N2bcwqlYVaeH
         utqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1BSMX3d4N3ZH70VQxl+j9IBZ22qjiOpq4sFEYF+RKIo=;
        b=MLyfI75G5aGqpTfB2EdoiLZjJ0fEm6GOKZo6OKEgOujpAXbddm80/Viug6vmIniIiJ
         e3mTdRnCYjEiizbdONXS454ocU3jIP/WWPmHq9GENRMO4KA1GEZzs8z/r+XYJQd35PU0
         rjGyaJx9kEII33oNn4h0plmbi1pfcXkJg2pRKVTjUlpSjU86hXF8HC9usHd5WQE7TmxQ
         dRzyXFYBzMSHANiL5wvyCn9B3TOYXrmJXbAA2GHGEEa5SIvz4/dsqslrubiLHeEKIkGz
         B6SPnUlmb/3kY2h7i4YLhvI3VkRKAgkreuJMNN5Kk3R4IIU9lecDwV7d07iVkaZpADr0
         j9dg==
X-Gm-Message-State: AFqh2krbM6R1jPsnqAkQSYfkZGPTkWq8aIE4Db5giMdMuhFQM0MNpOx5
	loQGAP3E0anU3jQSsMXKOV2Ehnv80EA=
X-Google-Smtp-Source: AMrXdXsfGRoQIcgk3HX2O/RuxeRD5a7U2qaMOTbVHAe0IphFz9ezNQTPSTAJsYoMKm8dX9RKhFGbhQ==
X-Received: by 2002:ac8:6891:0:b0:3b0:8493:233a with SMTP id m17-20020ac86891000000b003b08493233amr1570171qtq.10.1673919902276;
        Mon, 16 Jan 2023 17:45:02 -0800 (PST)
Received: from [192.168.2.174] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id s11-20020a05620a0bcb00b00704a9942708sm19326915qki.73.2023.01.16.17.45.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 17:45:01 -0800 (PST)
Message-ID: <f14005a5-8624-de3c-3d22-0e825ebe1915@gmail.com>
Date: Mon, 16 Jan 2023 20:45:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <fSfpS1KhB3kz3iGNO2RbaKQnTkhbk5pH9FskJJMqQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <fSfpS1KhB3kz3iGNO2RbaKQnTkhbk5pH9FskJJMqQ@lists.ettus.com>
Message-ID-Hash: PPTDLE7D6JMC65JLINMOF7UKQN3R6YY6
X-Message-ID-Hash: PPTDLE7D6JMC65JLINMOF7UKQN3R6YY6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Which image to use for Ettus n321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PPTDLE7D6JMC65JLINMOF7UKQN3R6YY6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6666089302339374953=="

This is a multi-part message in MIME format.
--===============6666089302339374953==
Content-Type: multipart/alternative;
 boundary="------------mK8YSOsqajqWktnCMNlRWpSy"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------mK8YSOsqajqWktnCMNlRWpSy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 16/01/2023 20:40, jmaloyan@umass.edu wrote:
>
> Hello,
>
> I ran uhd_images_downloader and I get the following output=E2=80=A6
>
> |[INFO] Images destination: /usr/local/share/uhd/images|
>
> |[INFO] Target x4xx_x410_fpga_default is up to date.|
>
> |[INFO] Target x3xx_x310_fpga_default is up to date.|
>
> |[INFO] Target x3xx_x300_fpga_default is up to date.|
>
> |[INFO] Target e3xx_e310_sg1_fpga_default is up to date.|
>
> |[INFO] Target e3xx_e310_sg3_fpga_default is up to date.|
>
> |[INFO] Target e3xx_e320_fpga_default is up to date.|
>
> |[INFO] Target n3xx_n310_fpga_default is up to date.|
>
> |[INFO] Target n3xx_n300_fpga_default is up to date.|
>
> |[INFO] Target n3xx_n320_fpga_default is up to date.|
>
> |[INFO] Target b2xx_b200_fpga_default is up to date.|
>
> |[INFO] Target b2xx_b200mini_fpga_default is up to date.|
>
> |[INFO] Target b2xx_b210_fpga_default is up to date.|
>
> |[INFO] Target b2xx_b205mini_fpga_default is up to date.|
>
> |[INFO] Target b2xx_common_fw_default is up to date.|
>
> |[INFO] Target usrp2_usrp2_fw_default is up to date.|
>
> |[INFO] Target usrp2_usrp2_fpga_default is up to date.|
>
> |[INFO] Target usrp2_n200_fpga_default is up to date.|
>
> |[INFO] Target usrp2_n200_fw_default is up to date.|
>
> |[INFO] Target usrp2_n210_fpga_default is up to date.|
>
> |[INFO] Target usrp2_n210_fw_default is up to date.|
>
> |[INFO] Target usrp1_usrp1_fpga_default is up to date.|
>
> |[INFO] Target usrp1_b100_fpga_default is up to date.|
>
> |[INFO] Target usrp1_b100_fw_default is up to date.|
>
> |[INFO] Target octoclock_octoclock_fw_default is up to date.|
>
> |[INFO] Target usb_common_windrv_default is up to date.|
>
> I have an ettus n321, however, It does not appear any of the images=20
> can be used for it according to their names. Is it safe to just use=20
> the image =E2=80=9Cn3xx_n320_fpga_default=E2=80=9D
>
>
> Thanks,
>
> Joe
>
>
I believe that the N320 and N321 run the same system image, and that=20
image knows how to figure out which hardware it's on...



--------------mK8YSOsqajqWktnCMNlRWpSy
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 16/01/2023 20:40, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:fSfpS1KhB3kz3iGNO2RbaKQnTkhbk5pH9FskJJMqQ@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p>I ran uhd_images_downloader and I get the following output=E2=80=
=A6</p>
      <p><code>[INFO] Images destination: /usr/local/share/uhd/images</co=
de></p>
      <p><code>[INFO] Target x4xx_x410_fpga_default is up to date.</code>=
</p>
      <p><code>[INFO] Target x3xx_x310_fpga_default is up to date.</code>=
</p>
      <p><code>[INFO] Target x3xx_x300_fpga_default is up to date.</code>=
</p>
      <p><code>[INFO] Target e3xx_e310_sg1_fpga_default is up to date.</c=
ode></p>
      <p><code>[INFO] Target e3xx_e310_sg3_fpga_default is up to date.</c=
ode></p>
      <p><code>[INFO] Target e3xx_e320_fpga_default is up to date.</code>=
</p>
      <p><code>[INFO] Target n3xx_n310_fpga_default is up to date.</code>=
</p>
      <p><code>[INFO] Target n3xx_n300_fpga_default is up to date.</code>=
</p>
      <p><code>[INFO] Target n3xx_n320_fpga_default is up to date.</code>=
</p>
      <p><code>[INFO] Target b2xx_b200_fpga_default is up to date.</code>=
</p>
      <p><code>[INFO] Target b2xx_b200mini_fpga_default is up to date.</c=
ode></p>
      <p><code>[INFO] Target b2xx_b210_fpga_default is up to date.</code>=
</p>
      <p><code>[INFO] Target b2xx_b205mini_fpga_default is up to date.</c=
ode></p>
      <p><code>[INFO] Target b2xx_common_fw_default is up to date.</code>=
</p>
      <p><code>[INFO] Target usrp2_usrp2_fw_default is up to date.</code>=
</p>
      <p><code>[INFO] Target usrp2_usrp2_fpga_default is up to date.</cod=
e></p>
      <p><code>[INFO] Target usrp2_n200_fpga_default is up to date.</code=
></p>
      <p><code>[INFO] Target usrp2_n200_fw_default is up to date.</code><=
/p>
      <p><code>[INFO] Target usrp2_n210_fpga_default is up to date.</code=
></p>
      <p><code>[INFO] Target usrp2_n210_fw_default is up to date.</code><=
/p>
      <p><code>[INFO] Target usrp1_usrp1_fpga_default is up to date.</cod=
e></p>
      <p><code>[INFO] Target usrp1_b100_fpga_default is up to date.</code=
></p>
      <p><code>[INFO] Target usrp1_b100_fw_default is up to date.</code><=
/p>
      <p><code>[INFO] Target octoclock_octoclock_fw_default is up to
          date.</code></p>
      <p><code>[INFO] Target usb_common_windrv_default is up to date.</co=
de></p>
      <p>I have an ettus n321, however, It does not appear any of the
        images can be used for it according to their names. Is it safe
        to just use the image =E2=80=9Cn3xx_n320_fpga_default=E2=80=9D</p=
>
      <p><br>
      </p>
      <p>Thanks,</p>
      <p>Joe</p>
      <br>
    </blockquote>
    I believe that the N320 and N321 run the same system image, and that
    image knows how to figure out which hardware it's on...<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------mK8YSOsqajqWktnCMNlRWpSy--

--===============6666089302339374953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6666089302339374953==--
