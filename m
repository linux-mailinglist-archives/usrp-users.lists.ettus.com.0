Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F15E466653
	for <lists+usrp-users@lfdr.de>; Thu,  2 Dec 2021 16:20:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5F3D38517D
	for <lists+usrp-users@lfdr.de>; Thu,  2 Dec 2021 10:20:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JD8xrKEO";
	dkim-atps=neutral
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D09D385131
	for <usrp-users@lists.ettus.com>; Thu,  2 Dec 2021 10:19:18 -0500 (EST)
Received: by mail-io1-f44.google.com with SMTP id z18so35669990iof.5
        for <usrp-users@lists.ettus.com>; Thu, 02 Dec 2021 07:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=cX/SdO3ySd/CE+m7Lm19hZFgwiOVdrCAvf0IP94WPMo=;
        b=JD8xrKEOpwSnjqvunnhFNogVlm6y3Czxaz8dWzmyUGzPCdQ/3L0mLT4Ibf9D1Swdp4
         2D4aZs6qyAJDaoNrC9t9E81SSpiTtC+CSIldgUxDKAyJslcarEc1lZrcy87lWqYAAjhJ
         ao5eUvA1zWFcCHIMnmnKf8YeE27AOQDXLnP5n83k3jLPfppSYHOykAOiIAtZAWsrzn6s
         LLe57hzrN/ZQIFtqtVXTpL+PM6oCbcMzEq/DQF88SyjNFTeaMQEnNt+5McaqwL0Stht+
         R0wJXeVnVKXeEBqdZNZFcbwAL9gczmGSeGB+GivTi2EcjisCdl8tR0tp5w/8xFcEqyrG
         /uSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=cX/SdO3ySd/CE+m7Lm19hZFgwiOVdrCAvf0IP94WPMo=;
        b=Nf3DjUjDlActHpaiQ5C9wUaOr4jtcuSU21B+BW6CFcColE5Zx/PiqpLdodqpRnz6LZ
         HyDJB4+T0/PHb7bAEC/YtkkRHuzVtCqrf2sSN6QCvDPOYDYB2gEeqPA6R3+T5sfItKn+
         N4vGeoqHWLew31QPolk2MFGM59IYYfux2aZqTRSLlPxOk12VijJMtkoC9owJj/Y914p7
         Nwi7Zm3xtojAOhdhxU/p4WZLFtB5FqVQiIkMC1ijBaZlko1FIUuEdA8l2B89auxvkF6i
         ir2zR2CjExhmjkR1g8h5+qyFZpy6L0zb5RGoHIHMK0k+PcfgbzLZOvUugGJxDDZ2x+lc
         zYhQ==
X-Gm-Message-State: AOAM531G0J/pVc1093WdtegIn4e9+Xbcw8bffPsV6C0PbZUTOV+GR7kC
	v/kn93WVN15kN0zq5mwjoNFC/FUHxzg=
X-Google-Smtp-Source: ABdhPJwy01tmggTl8YTbJguwQlUDRNGS8VzR2hJFhK/UILVwv84+1brISw+K+4Vm5cU/AMB4ULNu1g==
X-Received: by 2002:a05:6602:2c09:: with SMTP id w9mr16974428iov.78.1638458358227;
        Thu, 02 Dec 2021 07:19:18 -0800 (PST)
Received: from [192.168.2.221] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id i1sm36889iov.10.2021.12.02.07.19.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Dec 2021 07:19:17 -0800 (PST)
Message-ID: <8d491278-6333-3ffb-10c5-cbf6324522fb@gmail.com>
Date: Thu, 2 Dec 2021 10:19:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <filM9E2IGJ3i0TLposo9O696ysoGWupcNd3iWP2bkw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <filM9E2IGJ3i0TLposo9O696ysoGWupcNd3iWP2bkw@lists.ettus.com>
Message-ID-Hash: FBVG455HO4U2UUCVV62LE4SD5I3YPMOF
X-Message-ID-Hash: FBVG455HO4U2UUCVV62LE4SD5I3YPMOF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n320 power calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FBVG455HO4U2UUCVV62LE4SD5I3YPMOF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2552960746442031969=="

This is a multi-part message in MIME format.
--===============2552960746442031969==
Content-Type: multipart/alternative;
 boundary="------------1iauzg09vV3q0dE5Bb5pFDCe"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1iauzg09vV3q0dE5Bb5pFDCe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-02 08:43, seckinoncu8070@gmail.com wrote:
>
> Hello,
>
>
> Ignore my first message, I was trying to enroll to the list. My=20
> questions are following:
>
>
> 1) When I try to do iq balance and dc offset calibrations of n320, I=20
> got the error as seen in figure 1.
>
Looking quickly at the code for that utility, it seems to want to=20
operate at whatever the default sample-rate is for the device, which may=20
be too high to
 =C2=A0 stream reliably onto the N320 CPU itself.=C2=A0=C2=A0 Re-try usin=
g a fast host=20
computer, using it in network mode rather than embedded mode.

> 2) When I try to calibrate the power of n320 by visa power meter, it=20
> detects the power meter but it gives an error of /=E2=80=9Cno USRP cali=
brator=20
> object found for device type: n320=E2=80=9D. /As seen in Figure2/./ Is=E2=
=80=99nt=20
> there any power calibration utility for n320?
>
Yes, that means that there's no support module for power calibration for=20
N320.=C2=A0 The power-calibration interface is new, experimental, and onl=
y=20
available for certain types
 =C2=A0 of devices.=C2=A0 I'm not sure when that will be extended to N320=
.

> 3) Can you show me the path to get a full calibrated (especially power=20
> calibrated) n320?
>
I'll note that the mixer used in the N320 already has pretty-good=20
guarantees of I/Q phase and amplitude balance, but as I noted above, you=20
should be able to
 =C2=A0 do I/Q calibration if you move your I/Q calibration to the host.

For power calibration are you interested in RX power calibration or TX=20
power calibration or both?=C2=A0=C2=A0 IF you're operating at only a few=20
frequencies and gain settings, you can
 =C2=A0 do the calibration yourself, in your own software, manually.=C2=A0=
 This is=20
how it has been done for many many years prior to the partial=20
introduction of the power calibration
 =C2=A0 API.

If you have RF power calibration equipment in your laboratory already,=20
this shouldn't be too onerous.


> Thanks
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------1iauzg09vV3q0dE5Bb5pFDCe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-02 08:43,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:seckinoncu8070=
@gmail.com">seckinoncu8070@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:filM9E2IGJ3i0TLposo9O696ysoGWupcNd3iWP2bkw@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p><br>
      </p>
      <p>Ignore my first message, I was trying to enroll to the list. My
        questions are following: </p>
      <p><br>
      </p>
      <p>1) When I try to do iq balance and dc offset calibrations of
        n320, I got the error as seen in figure 1. </p>
    </blockquote>
    Looking quickly at the code for that utility, it seems to want to
    operate at whatever the default sample-rate is for the device, which
    may be too high to<br>
    =C2=A0 stream reliably onto the N320 CPU itself.=C2=A0=C2=A0 Re-try u=
sing a fast
    host computer, using it in network mode rather than embedded mode.<br=
>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:filM9E2IGJ3i0TLposo9O696ysoGWupcNd3iWP2bkw@lists.ettus.=
com">
      <p>2) When I try to calibrate the power of n320 by visa power
        meter, it detects the power meter but it gives an error of <em>=E2=
=80=9Cno
          USRP calibrator object found for device type: n320=E2=80=9D. </=
em>As
        seen in Figure2<em>.</em> Is=E2=80=99nt there any power calibrati=
on
        utility for n320?</p>
    </blockquote>
    Yes, that means that there's no support module for power calibration
    for N320.=C2=A0 The power-calibration interface is new, experimental,=
 and
    only available for certain types<br>
    =C2=A0 of devices.=C2=A0 I'm not sure when that will be extended to N=
320.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:filM9E2IGJ3i0TLposo9O696ysoGWupcNd3iWP2bkw@lists.ettus.=
com">
      <p>3) Can you show me the path to get a full calibrated
        (especially power calibrated) n320?</p>
    </blockquote>
    I'll note that the mixer used in the N320 already has pretty-good
    guarantees of I/Q phase and amplitude balance, but as I noted above,
    you should be able to<br>
    =C2=A0 do I/Q calibration if you move your I/Q calibration to the hos=
t.<br>
    <br>
    For power calibration are you interested in RX power calibration or
    TX power calibration or both?=C2=A0=C2=A0 IF you're operating at only=
 a few
    frequencies and gain settings, you can<br>
    =C2=A0 do the calibration yourself, in your own software, manually.=C2=
=A0 This
    is how it has been done for many many years prior to the partial
    introduction of the power calibration<br>
    =C2=A0 API.<br>
    <br>
    If you have RF power calibration equipment in your laboratory
    already, this shouldn't be too onerous.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:filM9E2IGJ3i0TLposo9O696ysoGWupcNd3iWP2bkw@lists.ettus.=
com">
      <p>Thanks</p>
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
    <br>
  </body>
</html>
--------------1iauzg09vV3q0dE5Bb5pFDCe--

--===============2552960746442031969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2552960746442031969==--
