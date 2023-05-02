Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A8F6F47E6
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 18:04:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1F5F38481C
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 12:04:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683043467; bh=iLLgTk//+eZ7IQLVzLek8cIhRmm/34FkbiIwmXj1G/0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DVkLMn5ZMoTJBNeSWz8GCttckwFGeK1VEXWE/xd4cedGckuhj1buXjKtyGuro0zfV
	 /aLdLNHOfR3vRrBmm0I9fo++K6gCzXXes5HkS6VXt77dzlwexrBRoAD4iEdwxm2Al5
	 FdfnOKyfzfoZaewXVXg/RijqDPTl0oz8/yNEFgmcqbVoR3zs1YYTE9e7y22lXTpdyZ
	 QCjC4llPyj8noshhW8tYyELh60051GOscZ26SF3FzVRzpOhIfxSkvBFrUiL3I/0tkp
	 XE3dZlTwfvSs07hq+1jHxMEU3oB8+cTzIqtbnLN178jPfmmFeyzbtSjQo773yFWWcy
	 QCyI1jRIJpRuw==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 4C3B5384799
	for <usrp-users@lists.ettus.com>; Tue,  2 May 2023 12:03:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qdhY/pAD";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-61b71b7803bso88726d6.1
        for <usrp-users@lists.ettus.com>; Tue, 02 May 2023 09:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683043423; x=1685635423;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TiFFelVunRpARD5zONHgwMIR3EH181CsPD816sWi4NU=;
        b=qdhY/pADeIg0gr4qs12fTq5IEIbmCCyY/deSxClHava4y6pC6vRiVSxTr39AZFGHpK
         JskqGWDfu05KJUZlcxP71A+QqaH9jPGZEa1LPwF/hswRYXVP1OglSIs+CpiJA5oLo4e2
         TBIJG0obJeuH/acItofvCRBWRrKfZrdrenB+EABVcIKJ6DYKA2EPkmIrLmawqL6382Vt
         Frn7EkknfHnU+2fRA3X45qEpno0Wun0uQwOlq0lUq6XNYjp2EK1dZnSfrw/c3CyeFV+X
         P4T7Bfa+uhpdbcE3fAClmrFdwelL2fw65gpIRr3SoP5mMav3MqJ+0M360wBVrA3SLkKb
         sZZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683043423; x=1685635423;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TiFFelVunRpARD5zONHgwMIR3EH181CsPD816sWi4NU=;
        b=HEOeiIAS7O/NiG1RJx0Oew1XVxy4/EDk4CR2pMD4r0nD9C7Ok1ncub8mZ0XNQHeEK+
         KAZ7pfEwlt6aUrsNwpfiBzmm4TEWf+QUWNdEfIbyq1aMVyz1I6hESo15OuI8lHM0Cuy4
         4ffiyinhzcEk9VnOS2CkPi27BLZvhWHK4jDIWwqzhQnBSHBOSrIGUOi+ePRJCL+6/9fS
         /8Sim0b5PFL8la+dBIIiVeoJxrNsZqkb1hLafy2E4EnNlscuTwicik0O/Oi+yg7BtHjj
         HNbdfZOtEc7AJxMZVeHdKqDknGs97jP9H3ZWT7yK1bHPKfU6eLljrjXgCvKQGN/EZTP5
         uyPw==
X-Gm-Message-State: AC+VfDwWnagg/O+7SmBMXV2VxsQ+euzHmE+fptvH114KhRqVG/8qnshw
	sXmeSKn6yvOwU+vzs2E6+tTyJlKUkRo=
X-Google-Smtp-Source: ACHHUZ5HPCR11/G9HavWU68q95KHR7KV0uz81Lf6yRagozREu1b5mWWEp8oSelgDKYXo6lG7VeYZmg==
X-Received: by 2002:a05:6214:1cc5:b0:5ef:82d5:460c with SMTP id g5-20020a0562141cc500b005ef82d5460cmr5636448qvd.29.1683043423517;
        Tue, 02 May 2023 09:03:43 -0700 (PDT)
Received: from [192.168.2.168] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id i9-20020a0c9c89000000b006168277998csm3976088qvf.58.2023.05.02.09.03.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 09:03:43 -0700 (PDT)
Message-ID: <08b71dd3-4125-c8dd-cf2c-962d271c99aa@gmail.com>
Date: Tue, 2 May 2023 12:03:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Gx3Ebnyi2jdLIB5hO8uItoCTpVQvDiCvo1zccf9nbeU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Gx3Ebnyi2jdLIB5hO8uItoCTpVQvDiCvo1zccf9nbeU@lists.ettus.com>
Message-ID-Hash: DYD7E35PJKKOQQQTZWYH6EST4KCQVCD2
X-Message-ID-Hash: DYD7E35PJKKOQQQTZWYH6EST4KCQVCD2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DYD7E35PJKKOQQQTZWYH6EST4KCQVCD2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0913962500051370899=="

This is a multi-part message in MIME format.
--===============0913962500051370899==
Content-Type: multipart/alternative;
 boundary="------------AGo3jESSjk5mlRfoKk0XQl00"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------AGo3jESSjk5mlRfoKk0XQl00
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/05/2023 11:54, david.fernandes@viveris.fr wrote:
>
> Hi Marcus,
>
> I performed some tests with a spectrum analyser and a signal generator=20
> as you have suggested and the problem seems to be in the RX side. Here=20
> are the results :
>
>  *
>
>     If I do 1 way transmission [RF0, TX/RX] =3D=3D> [RF1, RX2] : OK, it
>     works everytime
>
>  *
>
>     If I do 1 way transmission [RF1, TX/RX] =3D=3D> [RF0, RX2] : OK, it
>     works everytime
>
>  *
>
>     If I do both ways transmission (Full Duplex [RF0, TX/RX] =3D=3D> [R=
F1,
>     RX2] & [RF1, TX/RX] =3D=3D> [RF0, RX2]) : NOT OK, I see that the TX
>     works well everytime (I see the signals in the Spectrum Analyser)
>     but the RX only works sometimes even when I use a signal generator
>     replacing the USRP TX.
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Can you try upgrading to a newer release of UHD?=C2=A0=C2=A0=C2=A0 Or eve=
n fall-back to=20
UHD 3.15?


--------------AGo3jESSjk5mlRfoKk0XQl00
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/05/2023 11:54,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:david.fernande=
s@viveris.fr">david.fernandes@viveris.fr</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:Gx3Ebnyi2jdLIB5hO8uItoCTpVQvDiCvo1zccf9nbeU@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>I performed some tests with a spectrum analyser and a signal
        generator as you have suggested and the problem seems to be in
        the RX side. Here are the results : </p>
      <ul>
        <li>
          <p>If I do 1 way transmission [RF0, TX/RX] =3D=3D&gt; [RF1, RX2=
] :
            OK, it works everytime</p>
        </li>
        <li>
          <p>If I do 1 way transmission [RF1, TX/RX] =3D=3D&gt; [RF0, RX2=
] :
            OK, it works everytime</p>
        </li>
        <li>
          <p>If I do both ways transmission (Full Duplex [RF0, TX/RX]
            =3D=3D&gt; [RF1, RX2] &amp; [RF1, TX/RX] =3D=3D&gt; [RF0, RX2=
]) :
            NOT OK, I see that the TX works well everytime (I see the
            signals in the Spectrum Analyser) but the RX only works
            sometimes even when I use a signal generator replacing the
            USRP TX.</p>
        </li>
      </ul>
      <p><br>
      </p>
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
    Can you try upgrading to a newer release of UHD?=C2=A0=C2=A0=C2=A0 Or=
 even
    fall-back to UHD 3.15?<br>
    <br>
    <br>
  </body>
</html>

--------------AGo3jESSjk5mlRfoKk0XQl00--

--===============0913962500051370899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0913962500051370899==--
