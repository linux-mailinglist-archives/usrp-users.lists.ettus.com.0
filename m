Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27863482535
	for <lists+usrp-users@lfdr.de>; Fri, 31 Dec 2021 17:52:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CEA4384502
	for <lists+usrp-users@lfdr.de>; Fri, 31 Dec 2021 11:52:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="M1tHCfEp";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id B078E3844B0
	for <usrp-users@lists.ettus.com>; Fri, 31 Dec 2021 11:51:48 -0500 (EST)
Received: by mail-qt1-f177.google.com with SMTP id v22so24569383qtx.8
        for <usrp-users@lists.ettus.com>; Fri, 31 Dec 2021 08:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=o+3qsTCHoAIBxN+ePTFAVNVAZ+ipCXDLzrU0eBaTKcg=;
        b=M1tHCfEp/RMyaVJeO8GQfShHdnl6zkmEJ2vKmu8gjn5e51viIqkPBxJQvOIkgOudHe
         Ffkf68jqxIF44oGY2Mp7LNGE0bFHeegs+j/MzEqkPuLKt7IElBPfDaRhkZVY5Ii59IaG
         6+VtF40TKWQnXQhKQpCI81lQ/jkmP+YwF7FkE/EPCHAfp17wy19HrFqyxnoJzwY19dBn
         Q7SyNbvyDCeNZ+6z3OOqkfqWG0/1g7FKHeAEOuVNnbcCB82HO0BMev8QcGx120OAGqY4
         +pWxAJrTxyyjZxpuLUlPzK7oiRgtKp4jIREUmKMjOTuEIjsEUZtEN4meNtWePUomlY36
         ZwxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=o+3qsTCHoAIBxN+ePTFAVNVAZ+ipCXDLzrU0eBaTKcg=;
        b=w74RBzz70TxiS45UUGCgLlIKCnQ+CbbYSU4pwYJ5sTkw7yffQtzKuHdeZ3APTuIfTg
         ljiZNFnSLmoMVqQ8x6HwWn+tXb2IyZUlmf/Q8ELIBFmVoZceS5sRHb0DzbbKCJFOpxeW
         xTBcjqE/201dWiPi1LcgJ0tvDc67YgSERiMqFTh2VUS29Zqsak8XD5UnfIcWOOC3J/Jb
         OMq05IMYtXsLx7K5JWexW1+JOhR5V6+LgfmwgGs7dty67NpiAhhqOEnztbXvIQS5mBzj
         MbTO8C8a9sVgTMBliBWzoIOQJE3LHDB5KIVwYif4C9mtyS0p1PxjjMV5NLG5LgqOehbs
         G3Wg==
X-Gm-Message-State: AOAM532xgUSswN0EuHWcpn9KhU+Lm9ooHy4hYOE+SncgB1vXqDMKOVRZ
	HUHUgiRet27r5pRO4YHoqqeQ+/WmLtiuWQ==
X-Google-Smtp-Source: ABdhPJzimGiE4rQJ8Jjq0ktQaCaqk8e6L4szBTvjW0rbYn+z2MlsdnhXlEzv1SxKzq4NHTUuMco7dg==
X-Received: by 2002:ac8:5e4f:: with SMTP id i15mr31624460qtx.408.1640969507958;
        Fri, 31 Dec 2021 08:51:47 -0800 (PST)
Received: from [192.168.2.184] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id d17sm21826437qtb.71.2021.12.31.08.51.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Dec 2021 08:51:47 -0800 (PST)
Message-ID: <206f406f-1a62-a632-a9b3-edc4e414920f@gmail.com>
Date: Fri, 31 Dec 2021 11:51:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <sjEvDNANLukVoCbhzxV7xMygWvUECGpPDNqyyu5Tyc@lists.ettus.com>
 <CAE0dfYYh1vyqL9VykdDyF3oOgdcd5XH-r9SrU8kuQU34=fq5LQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAE0dfYYh1vyqL9VykdDyF3oOgdcd5XH-r9SrU8kuQU34=fq5LQ@mail.gmail.com>
Message-ID-Hash: FD3HERP24L5SHVZMRXATNKCXPZ4YBWL7
X-Message-ID-Hash: FD3HERP24L5SHVZMRXATNKCXPZ4YBWL7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO leakage cancelation
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FD3HERP24L5SHVZMRXATNKCXPZ4YBWL7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2462115447612528203=="

This is a multi-part message in MIME format.
--===============2462115447612528203==
Content-Type: multipart/alternative;
 boundary="------------2rLMwFdwlDKsFjIoskn83OcO"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2rLMwFdwlDKsFjIoskn83OcO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-31 08:31, Alex Humberstone wrote:
> Hey=C2=A0Seckin,
>
> You need to fix those U that you see in the console. Those are=20
> underruns. What's your sampling rate? What kind of Ethernet are you usi=
ng?
>
> Sincerely,
> Alex-M-Humberstone
> PhD Student
> Klipsch School of Electrical Engineering
> New Mexico State University (NMSU)
> Las Cruces, New Mexico, USA
>
>
>
> On Fri, 31 Dec 2021 at 02:29, <seckinoncu8070@gmail.com> wrote:
>
>     I=E2=80=99ll try it Marcus, but I remember that I got this error (a=
ttached
>     figure 1) when I try to do that.
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The application doesn't actually set the sample rate as far as I can=20
tell, relying on whatever the default is for that device.=C2=A0 In this c=
ase,=20
that might be too high.


--------------2rLMwFdwlDKsFjIoskn83OcO
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-31 08:31, Alex Humberstone
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAE0dfYYh1vyqL9VykdDyF3oOgdcd5XH-r9SrU8kuQU34=3Dfq5LQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default"
          style=3D"font-family:monospace;font-size:large">Hey=C2=A0Seckin=
,</div>
        <div class=3D"gmail_default"
          style=3D"font-family:monospace;font-size:large"><br>
        </div>
        <div class=3D"gmail_default"
          style=3D"font-family:monospace;font-size:large">You need to fix
          those U that you see in the console. Those are underruns.
          What's your sampling rate? What kind of Ethernet are you
          using?</div>
        <div class=3D"gmail_default"
          style=3D"font-family:monospace;font-size:large"><br>
        </div>
        <div>
          <div dir=3D"ltr" class=3D"gmail_signature"
            data-smartmail=3D"gmail_signature">
            <div dir=3D"ltr"><font size=3D"4"><span
                  style=3D"font-family:monospace">Sincerely,<br>
                </span></font>
              <div><font size=3D"4"><span style=3D"font-family:monospace"=
>Alex-M-Humberstone</span></font></div>
              <div><font size=3D"4"><span style=3D"font-family:monospace"=
>PhD
                    Student</span></font></div>
              <div><font size=3D"4"><span style=3D"font-family:monospace"=
>Klipsch
                    School of Electrical Engineering<br>
                  </span></font></div>
              <div><font size=3D"4"><span style=3D"font-family:monospace"=
>New
                    Mexico State University (NMSU)<br>
                    <span><span>Las Cruces, </span></span>New Mexico,
                    USA</span></font></div>
              <div><font size=3D"4"><span style=3D"font-family:monospace"=
><br>
                  </span></font></div>
              <div><font size=3D"4"><span style=3D"font-family:monospace"=
></span></font></div>
            </div>
          </div>
        </div>
        <br>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, 31 Dec 2021 at 02:2=
9,
          &lt;<a href=3D"mailto:seckinoncu8070@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">seck=
inoncu8070@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <p>I=E2=80=99ll try it Marcus, but I remember that I got this e=
rror
            (attached figure 1) when I try to do that. </p>
          <p><br>
          </p>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
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
    The application doesn't actually set the sample rate as far as I can
    tell, relying on whatever the default is for that device.=C2=A0 In th=
is
    case, that might be too high.<br>
    <br>
    <br>
  </body>
</html>
--------------2rLMwFdwlDKsFjIoskn83OcO--

--===============2462115447612528203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2462115447612528203==--
