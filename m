Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0597053AB2E
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 18:44:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0144384690
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 12:44:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654101855; bh=Escga5wdpwRD+hMMfoe35RZFLKaHrsmQKUbRpITAfRE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AR11zFYIbmyoKk/M6O+QnkedrgNWff+KXArl/5z1y2j3pVg7QAR9SPXtkZtjNz84J
	 mkkoie3ERzEHvVVqehJ5kXOZMvcm6+iheAFMaQjR4agrv5lk+ROIZX4MRzhZAsW9EC
	 kl+HEWglK3+HafbadDhW/MOvcwme1mzUrVELgwD2ruaPKfLr4QIAirnkAjLiglWWUU
	 rzTpNYPWEokw1cKHT19qeSBDJiN9XNpFnpkx/qoYKz96we8Ahekpr3qjyG45T5DJi6
	 CrqEXMArQCwmUnNij7JyDHTn5RY0RDyJYHct/JsPZieF6sPsmI4cLlfxP3g7XFcfpB
	 DmIJLiMpGzl5w==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 8714F3844F1
	for <usrp-users@lists.ettus.com>; Wed,  1 Jun 2022 12:43:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B5vdGPVi";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id k6so1586062qtq.3
        for <usrp-users@lists.ettus.com>; Wed, 01 Jun 2022 09:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=Pkkbut5+d78uvx8CryRj3X0QvzYZBq9yxAguJhFc3M8=;
        b=B5vdGPViLxh7UtFv538ijslYDi9pjlNB58kHXGWQL4z9Htr+DgzN6KKJBQSYVC365B
         /Uw7oTK/GwNYcb5D7rrDxvkxaa75p4jYK4c4yx+uI5q08CuUEgsuic47yNdBg177tUfF
         Tstz828GsG6yzV2tEXDsnPP6KMn5h3hMFhkWkoSqsF1NuEc1NH4DhcyfJ2zuaBAUGKF7
         OynJ7ebkzfoS9ojBbhPn7ntSTs/XqAsqeGzDTFzkcYVK3wcwjjPoXgQSHStMU1ZqZHEd
         Boa/gfPbA3Q3bMHYm/O64bBvkCpGb+l6vMBiMI2EdvdOrBdS6wc8ciucbHEssZa1U5Ag
         OGGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=Pkkbut5+d78uvx8CryRj3X0QvzYZBq9yxAguJhFc3M8=;
        b=j7/jGhnlAp7V2gPmgVB7ioJz2AvtQlQYw6yw9zngN1ZCwOPIwHvgZZIJfAwlaFkzQh
         XhwfVuRxlLfzsNTikdt0GYe59m2qlOYsCFr03OGRNRp2mSzM+cbmnF3e3ckf3l+ROpQd
         itp8ufSiUOZF24gzuxL1LTOH1g8E5m/v8GgokLREM+PY3JiHA6aQadEMdP5z20u9+/dR
         Qw7upAzZv9GfHomixDpj+tCbTKremCd6/Wb4bJTnTRE6vNDO3Kg/QATPrG0zsFcuyf13
         mN3Aws9fVU5aBkinEKtMkiaS4cTxjBIrSFE7Eu5qg8y5dQN4W5ncLPFzYEAVnxKmkAUO
         1g7Q==
X-Gm-Message-State: AOAM531Myuzi89UGn1/9ETGUO/T/1sw9GUtN71VMF7i4Z5F5WjJeZX9M
	ZVJ+leHSs2YcGVma5OL+RGCuimgh23Y=
X-Google-Smtp-Source: ABdhPJzPbwdSAvM3J38thyWNzRJsgCqfbEG/Ka4jLADHuD8yEWhUulPqRCxMyDwb9xtyS1OcCpbcSg==
X-Received: by 2002:a05:622a:1053:b0:304:b6ac:3c21 with SMTP id f19-20020a05622a105300b00304b6ac3c21mr461382qte.61.1654101782610;
        Wed, 01 Jun 2022 09:43:02 -0700 (PDT)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id d69-20020ae9ef48000000b006a62faa7f73sm1470942qkg.96.2022.06.01.09.43.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 09:43:02 -0700 (PDT)
Message-ID: <64c3344d-6e3e-3242-eaab-f42c2c10870c@gmail.com>
Date: Wed, 1 Jun 2022 12:43:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAJ28uHF+da1ghihZpZty73+VGq+8KB3cxFZQJFAoC1=5HAUcZw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAJ28uHF+da1ghihZpZty73+VGq+8KB3cxFZQJFAoC1=5HAUcZw@mail.gmail.com>
Message-ID-Hash: AJHMCYVAZIQ7GU35IMSTCGEMNNI5KMCM
X-Message-ID-Hash: AJHMCYVAZIQ7GU35IMSTCGEMNNI5KMCM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS invalid reply
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AJHMCYVAZIQ7GU35IMSTCGEMNNI5KMCM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5280707290601245499=="

This is a multi-part message in MIME format.
--===============5280707290601245499==
Content-Type: multipart/alternative;
 boundary="------------mXKQed0ceHLEYCgpXMyZMSgt"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------mXKQed0ceHLEYCgpXMyZMSgt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-06-01 11:19, gokul sani wrote:
> Dear USRP Community,
>
> I am using usrp b210 with gpsdo. But "uhd_usrp_probe" gave me an error.
> -*-[ERROR] [GPS] GPS invalid reply "scpi > *IDN?*
> The gps antenna is tested with a different b210 and received the lock.
> last week, it was working fine. No apparent changes were made.! Please=20
> provide any insights of yours.
>
>
> uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;=20
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [B200] Loading firmware image:=20
> /usr/local/share/uhd/images/usrp_b200_fw.hex...
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Loading FPGA image:=20
> /usr/local/share/uhd/images/usrp_b210_fpga.bin...
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Detecting internal GPSDO....
> *[ERROR] [GPS] GPS invalid reply "scpi > *IDN?
> ", assuming none available*
> [INFO] [GPS] No GPSDO found
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> =C2=A0 _____________________________________________________
> =C2=A0/
> | =C2=A0 =C2=A0 =C2=A0 Device: B-Series Device
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
>
> ..
> .
> ..
>
>
> Thank you,
> Gokul
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You could try carefully re-seating your GPSDO module.=C2=A0 Is this modul=
e=20
one supplied by Ettus or an after-market one?


--------------mXKQed0ceHLEYCgpXMyZMSgt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-06-01 11:19, gokul sani wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJ28uHF+da1ghihZpZty73+VGq+8KB3cxFZQJFAoC1=3D5HAUcZw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Dear USRP Community,</div>
        <div><br>
        </div>
        <div>I am using usrp b210 with gpsdo. But "uhd_usrp_probe" gave
          me an error. <br>
        </div>
        <div>-<b>-[ERROR] [GPS] GPS invalid reply "scpi &gt; *IDN?</b></d=
iv>
        <div>The gps antenna is tested with a different b210 and
          received the lock.</div>
        <div>
          <div>last week, it was working fine. No apparent changes were
            made.! Please provide any insights of yours.</div>
          <br>
        </div>
        <div><br>
        </div>
        <div>uhd_usrp_probe <br>
          [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
          Boost_105800; UHD_3.15.0.HEAD-0-gaea0e2de<br>
          [INFO] [B200] Loading firmware image:
          /usr/local/share/uhd/images/usrp_b200_fw.hex...<br>
          [INFO] [B200] Detected Device: B210<br>
          [INFO] [B200] Loading FPGA image:
          /usr/local/share/uhd/images/usrp_b210_fpga.bin...<br>
          [INFO] [B200] Operating over USB 3.<br>
          [INFO] [B200] Detecting internal GPSDO.... <br>
          <b>[ERROR] [GPS] GPS invalid reply "scpi &gt; *IDN?<br>
            ", assuming none available</b><br>
          [INFO] [GPS] No GPSDO found<br>
          [INFO] [B200] Initialize CODEC control...<br>
          [INFO] [B200] Initialize Radio control...<br>
          [INFO] [B200] Performing register loopback test... <br>
          [INFO] [B200] Register loopback test passed<br>
          [INFO] [B200] Performing register loopback test... <br>
          [INFO] [B200] Register loopback test passed<br>
          [INFO] [B200] Setting master clock rate selection to
          'automatic'.<br>
          [INFO] [B200] Asking for clock rate 16.000000 MHz... <br>
          [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
          =C2=A0 _____________________________________________________<br=
>
          =C2=A0/<br>
          | =C2=A0 =C2=A0 =C2=A0 Device: B-Series Device<br>
          | =C2=A0 =C2=A0 _______________________________________________=
______<br>
          | =C2=A0 =C2=A0/</div>
        <div><br>
        </div>
        <div>..</div>
        <div>.</div>
        <div>..</div>
        <div><br>
        </div>
        <div> </div>
        <div><br>
        </div>
        <div>Thank you,</div>
        <div>Gokul<br>
        </div>
      </div>
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
    You could try carefully re-seating your GPSDO module.=C2=A0 Is this
    module one supplied by Ettus or an after-market one?<br>
    <br>
    <br>
  </body>
</html>

--------------mXKQed0ceHLEYCgpXMyZMSgt--

--===============5280707290601245499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5280707290601245499==--
