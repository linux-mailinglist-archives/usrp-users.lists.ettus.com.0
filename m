Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E9E7E7D4C
	for <lists+usrp-users@lfdr.de>; Fri, 10 Nov 2023 16:12:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4343E384DF4
	for <lists+usrp-users@lfdr.de>; Fri, 10 Nov 2023 10:12:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699629168; bh=5CYTGvAYhZYIYibLdtcgVdnO7qWWAEKhU4vkM5B9G9k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=v0WeDtOSdvBth7F5rR4MK7WExJqKaqvOXstvKec3DrsE2Uc703+Le6UWjbyqujof0
	 La7EkhS2z9e7sgCMNpcsyTbWdZ2YAJGu17dpRqFmHnJHmAQZBJvkQ8x4FKuAo75RWm
	 +oJHHwe6cbelembG3EeoIZFBG8muYredAMBf4RAHCm5Q7Qn/i+udVcK8sZ4a0K9n2p
	 Osxji2p7qCw20QaBseFogmgmYuOaWgrUX+TMzQaZYdKUeT30es+W0ZiNu15YZH3XNw
	 0NmZuPY3jkGmvggWkVje91fgHF3KkrSnnmEwQMSHIcV5K6nQgnca2B46A1goX9E1NW
	 or4nNvLPnEu5w==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id A45FC384BEB
	for <usrp-users@lists.ettus.com>; Fri, 10 Nov 2023 10:12:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CtXlnKlh";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-66d17bdabe1so13993506d6.0
        for <usrp-users@lists.ettus.com>; Fri, 10 Nov 2023 07:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699629131; x=1700233931; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z5YysyO1L0six4vRIiyKRaXPdP00U9RnizMW692juwg=;
        b=CtXlnKlhjWyH5O8qM8YVdVTDDPXepqbOvFxvjUpmxPx9rwXqbnT62oiCwBrd9Wn6ZC
         /x09UsBdlfkrEgZG0cIO9qs4GpueEf9fxZyW6IdvsvtNNH5qYM1r2DzpRf3LF1W+AtKj
         CRrA1Oowxm3ekVlzbe4Oh2FXNLliRGiSbt/CrFj1/9rkjPKJiUxAQF+5YX/sNn46XUAW
         I60AN1iaNmlQNmal+LdKdFuA4nx5V9uo8ntpDZ3BIY1JRoU3Pu+fAp2vKtDuSi87TKWu
         JevSVulF3uLSxEau5jXPu3w36wsqT6c0ve9bEV4bLSOLjSudaj9ctuBDCAc5Ak07NNWe
         OPAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699629131; x=1700233931;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Z5YysyO1L0six4vRIiyKRaXPdP00U9RnizMW692juwg=;
        b=SrsxZCHtfqUySlE9E85bNodEM1iHME+bZuebLVV8wwssMBxcmED/pRshIPqUjoq1xL
         XRf97hY6a2gLsKp3eXwPYr4uytkC/cMhjppqCoH+EVrjZWEy+tiG1uZE/QL3DSSFygn3
         n5qd03YIq/XneDvYzQuin2HvZyXzKiePRLWfvISx5VLlVhqn2RXeW2wWOaElavUo5t7o
         inNuOIsYSiU7xCi/bJMl1RuBksM6yTP30aiq9JUKOyUs+fb6SD4Wq/bWI0x1VmSgjb68
         LC4M5U/Jn0NgBfulEZY3L1VAOCg8mrwgqQEyUdVhdFN1OXyFhRGxwyQqxrZSNF/UIdpe
         cI9w==
X-Gm-Message-State: AOJu0Yx41BWe8DW1gXAOc+UvN3jReUsSwryYPPJ9JPUp8jO9THSrefRS
	LuF+87UAAtUTxEhrKLjulFMgJ0GjVx0=
X-Google-Smtp-Source: AGHT+IGSW5LKFa2GALUiuptKCLjNnIudQ5cd5cLA8KkfWKJB/ZogfYPBNYwjGERj2/3Mmw7E4uFW6w==
X-Received: by 2002:a05:6214:3008:b0:66d:1ae6:2a5a with SMTP id ke8-20020a056214300800b0066d1ae62a5amr7965412qvb.7.1699629130753;
        Fri, 10 Nov 2023 07:12:10 -0800 (PST)
Received: from [192.168.2.196] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id p16-20020a05621415d000b00647386a3234sm2959861qvz.85.2023.11.10.07.12.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 07:12:10 -0800 (PST)
Message-ID: <62e42840-43c1-4b49-8c31-5825294f458b@gmail.com>
Date: Fri, 10 Nov 2023 10:12:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <RENjmpG4fQWu92tJCtVPF8JLko8p06mOv82dMFulD8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <RENjmpG4fQWu92tJCtVPF8JLko8p06mOv82dMFulD8@lists.ettus.com>
Message-ID-Hash: QIVYHEKRHICPUHFGVN5LYFNP4F4HKDHX
X-Message-ID-Hash: QIVYHEKRHICPUHFGVN5LYFNP4F4HKDHX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP cannot use external GPSDO as reference clock
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QIVYHEKRHICPUHFGVN5LYFNP4F4HKDHX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4099985047324375450=="

This is a multi-part message in MIME format.
--===============4099985047324375450==
Content-Type: multipart/alternative;
 boundary="------------D0YGsVo3RFts0TSDN7KVm68n"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------D0YGsVo3RFts0TSDN7KVm68n
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/11/2023 10:07, gengzy096@gmail.com wrote:
>
> Thanks for your reply.
>
>     Select "PC TIme on Next PPS", and use Time source: External and Clo=
ck
>     Source: External
>
> Another question is that Leo Bodnar=C2=A0GPSDO only connects the REF CL=
OCK=20
> of USRP, so the clock source should be set to external. But the PPS IN=20
> of USRP doesn=E2=80=99t connect anything, so should the time source als=
o be=20
> set to external? In addition, in this situation(PPS IN of USRP doesn=E2=
=80=99t=20
> connect anything), should we select "PC TIme on Next PPS"?
>
Oh, I wasn't aware that it didn't provide a 1PPS output.=C2=A0 In which c=
ase,=20
use "PC Time on Next PPS", and configure the PPS input
 =C2=A0for "default".=C2=A0 Really, it's not at all ideal if it doesn't p=
rovide a=20
1PPS output, AND you care about absolute time being
 =C2=A0accurate.



> Also, I was wondering if there is a way to know that usrp is=20
> successfully using an external clock reference?
>
There's a ref-locked sensor that you can query, but I think in the=20
startup headers produced by the library, it will note
 =C2=A0 whether it has locked to the external REF clock.



>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------D0YGsVo3RFts0TSDN7KVm68n
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/11/2023 10:07,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:gengzy096@gmai=
l.com">gengzy096@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:RENjmpG4fQWu92tJCtVPF8JLko8p06mOv82dMFulD8@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Thanks for your reply.</p>
      <blockquote>
        <p>Select "PC TIme on Next PPS", and use Time source: External
          and Clock<br>
          Source: External</p>
      </blockquote>
      <p>Another question is that Leo Bodnar=C2=A0GPSDO only connects the=
 REF
        CLOCK of USRP, so the clock source should be set to external.
        But the PPS IN of USRP doesn=E2=80=99t connect anything, so shoul=
d the
        time source also be set to external? In addition, in this
        situation(PPS IN of USRP doesn=E2=80=99t connect anything), shoul=
d we
        select "PC TIme on Next PPS"?</p>
    </blockquote>
    Oh, I wasn't aware that it didn't provide a 1PPS output.=C2=A0 In whi=
ch
    case, use "PC Time on Next PPS", and configure the PPS input<br>
    =C2=A0for "default".=C2=A0 Really, it's not at all ideal if it doesn'=
t provide
    a 1PPS output, AND you care about absolute time being<br>
    =C2=A0accurate.<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:RENjmpG4fQWu92tJCtVPF8JLko8p06mOv82dMFulD8@lists.ettus.com">
      <p>Also, I was wondering if there is a way to know that usrp is
        successfully using an external clock reference?<br>
      </p>
    </blockquote>
    There's a ref-locked sensor that you can query, but I think in the
    startup headers produced by the library, it will note<br>
    =C2=A0 whether it has locked to the external REF clock.<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:RENjmpG4fQWu92tJCtVPF8JLko8p06mOv82dMFulD8@lists.ettus.com">
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
    <br>
  </body>
</html>

--------------D0YGsVo3RFts0TSDN7KVm68n--

--===============4099985047324375450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4099985047324375450==--
