Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA86871FF2
	for <lists+usrp-users@lfdr.de>; Tue,  5 Mar 2024 14:20:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCD5E3853E5
	for <lists+usrp-users@lfdr.de>; Tue,  5 Mar 2024 08:20:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709644848; bh=SVRl1I6o7UxL1Kyr/WLL2wKJ4zv8JqVv2LSzKDzWtUM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0yAiQ2KP/VtcIe2aaHCVBnKZWErjbmMqe4I1kt+U0K+Tn5GvrCIByRZSqm+XXteu6
	 yux1UIvGXcdqi6UJa0UtEAHlEkbxPlfubs+la8dCRO9fhBJJdB++Op7jOh3uz0W6N3
	 UcGa96C9PJkGWu1KkHlNr/L5Fpj/Y6F/Rtyn5dsG3+xUBtSMAOY4c0zPS5UiuGhxGE
	 zCbCUsITo7n0Y2IqRvtVjuLoRT2CBrsu1lhXPsAL9kWZ5JTb7kvOZV+v9DQxwCZGYX
	 TBrDx6SO88l6bdz5YyiUsty9zcpUA53ZbiB+sGYuODfIgqTFtOopvQa+Fc94RlKgtn
	 6vj8Ojyvi7YUg==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id E47E73853D1
	for <usrp-users@lists.ettus.com>; Tue,  5 Mar 2024 08:19:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fmfsmpW4";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6908e2a53e9so978056d6.0
        for <usrp-users@lists.ettus.com>; Tue, 05 Mar 2024 05:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709644798; x=1710249598; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+0oBYwkow4lxaFoYei/DqzyaafXm0i2DfFf0iwXZduM=;
        b=fmfsmpW4qs9RN0z/6zRPWiS1oGtI2dFBmdpnq2UsZuOwYwMrOVPDDcYSFsKymEUQcE
         +KAXxfVeHjGNRyQCmY3dATVykPBwwt21wTYmcRw7KqUSFzzi/AVhG02i4xM5e7naDULP
         +onuS4CInfL3dWpVx4BERdiTjjpgoD9ryMReB8CWfh9OeniUWWtF3k5ymEGG+Iw2ZzVm
         CbQiR0W/BDGLdS4IEpgDllkKdJ1uj9mQIJAR71g55hDHXXxPKfBh/07sg2KeDoqDA+mw
         +7JTaEGsZu3gEGM5ab0Z439/MZhlRJ0UdOJWDs4RIelY0h/muuJIy0Kpz+L1DmdjK8jL
         k32A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709644798; x=1710249598;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+0oBYwkow4lxaFoYei/DqzyaafXm0i2DfFf0iwXZduM=;
        b=CQkKWOaWrNrpynGn9SCCm0IXD8AVjkXaNqMNueiScLP6ZPzG2do7ghcLJnkGqOBm7j
         8S3U4KLkn6fIOJ+270+pG1yHHn2V7fld+/es06xIRXd/jU3TUATXK+iMEXsRNnPxJiCU
         T7l2sKDdY5MZBazo5M8vCByJV5cG0+ogM8p6c9Fe+73yjMoQ1LQG5UH4DdK/8kLdaCmh
         v7Oets6U+3Rv0/YwCp5r/AT8EXCnBq4tm5ZS0HboZTrwxfku9qQZ8IsN+pi7cC3lJSKS
         wFjcDva7CqY7Lp8baq3bsngtyfwRDZQd/zCsB7hiTqq4+81IFUjQv2PbVAWuKjgWKqVa
         pLVg==
X-Gm-Message-State: AOJu0YxDUmb/4kOQykJItzUc54Sk+KXnetFoUIgFVwEmp9BhGyhjoZ5e
	QM59PPq4oVQ7u8FhwbA0Vp2uIFqvutHdQ/34bzmwp+dxxjNjslFnDvkUDS2SUI4=
X-Google-Smtp-Source: AGHT+IF2uXqlR5MOhIlV57qEaXPcCc/lQcb9IX7tDf8LS5ieR114sb9aKv93fO/RczUtdr8N1h0Xjw==
X-Received: by 2002:ad4:584d:0:b0:68f:f0ab:23c3 with SMTP id de13-20020ad4584d000000b0068ff0ab23c3mr1862546qvb.38.1709644798047;
        Tue, 05 Mar 2024 05:19:58 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id lr10-20020a0562145bca00b0068d191dfa9fsm6169040qvb.94.2024.03.05.05.19.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 05:19:57 -0800 (PST)
Message-ID: <64d25a4e-dfbb-4ca0-b2eb-e97fc265953f@gmail.com>
Date: Tue, 5 Mar 2024 08:19:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DB6P190MB0486B2BD86DFFDB6F19174A9F9222@DB6P190MB0486.EURP190.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DB6P190MB0486B2BD86DFFDB6F19174A9F9222@DB6P190MB0486.EURP190.PROD.OUTLOOK.COM>
Message-ID-Hash: 4I4CGA7MG5BWGSYN3COAVU63DXRQ4NE7
X-Message-ID-Hash: 4I4CGA7MG5BWGSYN3COAVU63DXRQ4NE7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210: transmit without streaming?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4I4CGA7MG5BWGSYN3COAVU63DXRQ4NE7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3991397526841393595=="

This is a multi-part message in MIME format.
--===============3991397526841393595==
Content-Type: multipart/alternative;
 boundary="------------3BAHlsc54qe1S03mxUOKxeKT"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3BAHlsc54qe1S03mxUOKxeKT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/03/2024 07:28, Erik Heinz wrote:
> Hi,
>
> I would like to know if it is possible to trick a B210 into sending a=20
> continuous RF signal without streaming, by providing a DC from the DACs=
.
> Since sending a constant stream does work (e.g. with tx_waveforms),=20
> this should in principle be possible. The question is, if the software=20
> does support it.
> Does ist? And how? Thank you.
>
> Best regards,
> Erik
There's no support for that in the software. The firmware could be modifi=
ed.

But really, if what you want is a narrowband CW tone generator, there=20
are much simpler ways to do that, TBH.

>
> --
> =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
> Supracon AG
> Dr. Erik Heinz
> An der Lehmgrube 11
> 07751 Jena
> Tel.: +49 3641 2328-165
> Fax: +49 3641 2328-109
> Internet: http://www.supracon.com/
> =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
> Kaufm. Vorstand: =C2=A0 =C2=A0 =C2=A0 Matthias Meyer
> Vorsitz Aufsichtsrat: =C2=A0Prof. Dr. Michael Siegel
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------3BAHlsc54qe1S03mxUOKxeKT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 05/03/2024 07:28, Erik Heinz wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:DB6P190MB0486B2BD86DFFDB6F19174A9F9222@DB6P190MB0486.EURP190.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">
        Hi,</div>
      <div class=3D"elementToProof"
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">
        I would like to know if it is possible to trick a B210 into
        sending a continuous RF signal without streaming, by providing a
        DC from the DACs.</div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">Since
          sending a constant stream does work (e.g. with tx_waveforms),
          this should in principle be possible. The question is, if the
          software does support it.</span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">Does
          ist? And how? Thank you.</span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);"><br>
        </span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">Best
          regards,</span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">Erik</span></div>
    </blockquote>
    There's no support for that in the software. The firmware could be
    modified.<br>
    <br>
    But really, if what you want is a narrowband CW tone generator,
    there are much simpler ways to do that, TBH.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:DB6P190MB0486B2BD86DFFDB6F19174A9F9222@DB6P190MB0486.EURP190.=
PROD.OUTLOOK.COM">
      <div class=3D"elementToProof"
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">
        <br>
      </div>
      <div id=3D"Signature">
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">--</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">Supracon
            AG</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">Dr.
            Erik Heinz</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">An
            der Lehmgrube 11</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">07751
            Jena</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">Tel.:
            +49 3641 2328-165</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">Fax:
            +49 3641 2328-109</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 10pt; co=
lor: rgb(0, 0, 0);">Internet:
            <a class=3D"moz-txt-link-freetext" href=3D"http://www.supraco=
n.com/">http://www.supracon.com/</a></span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 10pt; co=
lor: rgb(0, 0, 0);">=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 10pt; co=
lor: rgb(0, 0, 0);">Kaufm.
            Vorstand: =C2=A0 =C2=A0 =C2=A0 Matthias Meyer</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 10pt; co=
lor: rgb(0, 0, 0);">Vorsitz
            Aufsichtsrat: =C2=A0Prof. Dr. Michael Siegel</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);"><br>
          </span></div>
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
    <br>
  </body>
</html>

--------------3BAHlsc54qe1S03mxUOKxeKT--

--===============3991397526841393595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3991397526841393595==--
