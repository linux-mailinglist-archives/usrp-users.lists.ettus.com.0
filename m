Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E41F424C9D
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 06:51:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E53E73844AC
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 00:51:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kku00vjI";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id A06EA38443E
	for <usrp-users@lists.ettus.com>; Thu,  7 Oct 2021 00:50:49 -0400 (EDT)
Received: by mail-qt1-f177.google.com with SMTP id r16so4982768qtw.11
        for <usrp-users@lists.ettus.com>; Wed, 06 Oct 2021 21:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=FQuOczxXqb56B4veNdg3v1nLE++y3V4E/BToR+cXOGg=;
        b=Kku00vjIR1nFCDr1npdmWrdQ70ktfVUpgLcvb9I2/Nn9k7hwlCY2rhhXTf4+MjFsbU
         +mW97et3Wr2i+RK+QlMrmUkeN3dSolTVzs/V+hUpHwCIXvNohxKnai4LWSAWHbVeyZQ5
         RsaWgeAT/AXmVzuqgGnZT21OJ47Vd5AVYXVGPh301983HQJTCiMJrdM3VOuhT8rtfwwd
         P1LtF38gBmp4fUFM+Rh4ET17yutaRMHqiVB3y1+8dvuzRIcH2lWpL7n52uurpYLdyYPd
         iTi5zJsIoInSseaUKhhPPVhsbo7gzkkTzUVtVl0cvAfqEKKUUpSrakHP5bqXvGble3AC
         dXpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=FQuOczxXqb56B4veNdg3v1nLE++y3V4E/BToR+cXOGg=;
        b=vvOxmfWYTiNFrS6rkqSR1mK8uMiBAwE0YZKZH3w02bCW8dV+rkU8Z1nuh2/AfnW+Mz
         CtB9Ti1d1/B7tSabEeaVbGPXHNBheQc9X1URmNfh0ESwn0OIffeQCOuNTUc97IYTb1au
         cmv0oeW+tLZNfH4vfb/uep967w4tReMnElSMGuiKtPMb+PGNQbF7AnnnU5MAGOZmdpj2
         dzSa/HYSz6tPd2CZavZdBxf+Y4ZKxUYUtWwDj488P7OwEpcZNgO3r3/k9KNpWSjuXRGH
         jTgheNfsE5ZU8FVEh9/THEdCqW7sHjNVhaDk2jCPURp3CD39vbY7DEEeJvy1RTguWzzk
         ABCQ==
X-Gm-Message-State: AOAM533ybohD4AQZpebT5ttT7bY4GL/cEP66oHmmH79WM2lTrbnijLaF
	uaH9Mn7AAeB5zYQVq8Vs7tvk3HDK0O4=
X-Google-Smtp-Source: ABdhPJxKj/pFPcs2IbYZ3qgbXhOFYsL6vqKy4JYKd2aJIm71ShTR6skjfZB/GjcPYbRIFdxzBzI/yA==
X-Received: by 2002:ac8:1e0e:: with SMTP id n14mr2500987qtl.95.1633582248886;
        Wed, 06 Oct 2021 21:50:48 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id u21sm2145841qke.63.2021.10.06.21.50.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 21:50:48 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <d3036862-9b4a-8c37-328b-92c432b6b061@gmail.com>
Date: Thu, 7 Oct 2021 00:50:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: 5C3FBJSAHHAQEXYOPI57POAMKCBO5A7D
X-Message-ID-Hash: 5C3FBJSAHHAQEXYOPI57POAMKCBO5A7D
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set RX power reference using a power calibration database
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5C3FBJSAHHAQEXYOPI57POAMKCBO5A7D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4817018327982701428=="

This is a multi-part message in MIME format.
--===============4817018327982701428==
Content-Type: multipart/alternative;
 boundary="------------A32E5628845E63F9B4700531"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A32E5628845E63F9B4700531
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-06 7:15 a.m., arjan.feta@unifi.it wrote:
>
> Hi all,
>
> I am trying to calibrate a twinrx (rx direction) using=20
> uhd_power_cal.py. This script generates a outputfile.pickle. How is=20
> this file passed in order to be able to set a power reference level?
>
> I deduce it needs the calibration data for setting the power reference=20
> level since I get this error:
>
> /*radio_block.set_rx_power_reference(-4.0,0)*/
>
> /Traceback (most recent call last):/
>
> /File "<ipython-input-5-092ddd34efe0>", line 1, in <module>/
>
> /radio_block.set_rx_power_reference(-4.0,0)/
>
> /RuntimeError: RuntimeError: Attempting to set power for key=20
> x3xx_pwr_twinrx_rx_rx1, but no cal data available!/
>
> Regards,
>
>
> Arjan
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
The default place in lieu of an explicit setting of either XDG_DATA_HOME=20
or UHD_CAL_DATA_PATH=A0 environment variables is:

$HOME/.local/share/uhd/cal

The $HOME/.local/share=A0 seems to be a place where lots of apps under=20
Linux store configuration data.=A0 Lots, but not all.







--------------A32E5628845E63F9B4700531
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-06 7:15 a.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:arjan.feta@uni=
fi.it">arjan.feta@unifi.it</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html;
        charset=3Dwindows-1252">
      <p>Hi all,</p>
      <p>I am trying to calibrate a twinrx (rx direction) using
        uhd_power_cal.py. This script generates a outputfile.pickle. How
        is this file passed in order to be able to set a power reference
        level?</p>
      <p>I deduce it needs the calibration data for setting the power
        reference level since I get this error:</p>
      <p><em><strong>radio_block.set_rx_power_reference(-4.0,0)</strong><=
/em></p>
      <p><em>Traceback (most recent call last):</em></p>
      <p><em> File "&lt;ipython-input-5-092ddd34efe0&gt;", line 1, in
          &lt;module&gt;</em></p>
      <p><em> radio_block.set_rx_power_reference(-4.0,0)</em></p>
      <p><em>RuntimeError: RuntimeError: Attempting to set power for key
          x3xx_pwr_twinrx_rx_rx1, but no cal data available!</em></p>
      <p>Regards,</p>
      <p><br>
      </p>
      <p>Arjan</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    The default place in lieu of an explicit setting of either
    XDG_DATA_HOME or UHD_CAL_DATA_PATH=A0 environment variables is:<br>
    <br>
    $HOME/.local/share/uhd/cal<br>
    <br>
    The $HOME/.local/share=A0 seems to be a place where lots of apps unde=
r
    Linux store configuration data.=A0 Lots, but not all.<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------A32E5628845E63F9B4700531--

--===============4817018327982701428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4817018327982701428==--
