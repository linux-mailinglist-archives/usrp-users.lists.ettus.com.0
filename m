Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB4265C2C8
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 16:12:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8851A384074
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 10:12:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672758775; bh=s1JKovRGE6Mrj8twUN96M3wADxv2NKXXS1BD70o7TiE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pPtYeHYDIzJh9adK78k09a7zPVUttsVXniGcmEisIH9YteY9vl/0wdSTgbv74P9vH
	 6JggvXUFOOqkE3f9OgkKtbL9YIfcuXE9kzhzNnI/DLf4RLgJIfxZh65X+cH/opbGBv
	 T5wixgXaqj+vuf3jmCzOtkEwaMwoe52jFEZ5NMCwzfIRhftU+g6PwVIb002AfBiHGD
	 jOPJ+w+gUseWmNQug9x8wrbFGT6aIPv8yYJBSjvjZmmPE2OX8KxUgiAkcFK3zVqgkH
	 QVy1J7yNRyDHwmEWi7VxoYnC79A0XZUrinthWCXlKdHLj6ZoXVZQfIvqmkAJ3i+5V3
	 Y/T6hijGGXahg==
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 86998384072
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 10:11:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="F/nCdG3i";
	dkim-atps=neutral
Received: by mail-wm1-f51.google.com with SMTP id c65-20020a1c3544000000b003cfffd00fc0so26554256wma.1
        for <usrp-users@lists.ettus.com>; Tue, 03 Jan 2023 07:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nO33qVeEIHQVw35iCBngpD5NpZiYHmM8vxWaokUEWTI=;
        b=F/nCdG3ikL7mhp1TPZpFvvfkSE6ZuPBGk14RMX2yR6+86dMD0Js7wgxXXajz+01t67
         y59ORGWBmrpTxMEeWfAKwMOAhL4Is8iGe7eGwq6JfwvkE8fOxaktZtfaTe8uMFJ9/K/H
         utwJ3sZhb451VNhCeI5cl8Cd29Z1rKXxRfqSvpZFa/ArmF0I36YRQoW3K9Dkz5Al9bxh
         +lzG7EVTkLXEdStuw3dUejQ6m7aOaL/G7kn1hB91mrgJQ4aX93CZ9rDd2zq+nz9Zsx/V
         62nQzpMorTxg961Vdr+GXgsaFywTBg9aGFO8TXMcGx+A3aSoiCJA2GA4MImbLMg6cC9Q
         xPSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nO33qVeEIHQVw35iCBngpD5NpZiYHmM8vxWaokUEWTI=;
        b=4RVNlPXklO//6RtA0tLyGFy+kjZP7qdvtQljFSoFGQe+MgOYgcRA4F4SzcKIaLPVA+
         JNkfrYYzZbGKgqZ2GHEHhGLV+TaISzOCyWhLW18Ogc0W4Q/HmZOqI3qXOdcNWGLQXkXH
         3KyVRtneFBnrssjuIFIin+a5lMjsyfITtgkpWlT8kgmJs5fIg0+fCJnF5dQHKIYo5EIo
         w2ypnrw/9STcpo8CU143Rv0kla4Gi0lpMFi+mFpFn+1GWhk8uYzJA5gqxqGj+ZUgUV6z
         LVHzz7oTaUTTKFthKDuHeKOzJCfw8betbzbwND3dN90Qlq7tl334BkijuCF5n36O1EDA
         DWmQ==
X-Gm-Message-State: AFqh2kpfxyIqjf5KfLNWPMBgYV05df3W1tmmOmUx5n+VElFkgvmPjymw
	BvkBdTnXYe/oITuwdShVgmqt6A39hHshWEE0kRM=
X-Google-Smtp-Source: AMrXdXsOAOFqh0eG36oNCuvcdU4/4/W2M1ztdxCM1rJsjrbtyBcnOXQc34OLmcY+bJnnANZxT6RckA==
X-Received: by 2002:a05:600c:1ca3:b0:3d3:591a:bfda with SMTP id k35-20020a05600c1ca300b003d3591abfdamr34588673wms.27.1672758681135;
        Tue, 03 Jan 2023 07:11:21 -0800 (PST)
Received: from ?IPV6:2001:9e8:3867:8800:998f:ca6a:6065:3212? ([2001:9e8:3867:8800:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id a18-20020adfed12000000b0027cfd9463d7sm24483270wro.110.2023.01.03.07.11.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 07:11:20 -0800 (PST)
Message-ID: <e55e5607-13e2-d6a9-6819-9a60c17540b5@ettus.com>
Date: Tue, 3 Jan 2023 16:11:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=RN2T-zYCxY2nZxbTyw@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=RN2T-zYCxY2nZxbTyw@mail.gmail.com>
Message-ID-Hash: N6XLQDFAKBRBSN737VFBOCQ65PJLEJLC
X-Message-ID-Hash: N6XLQDFAKBRBSN737VFBOCQ65PJLEJLC
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SDR environment with USRP & external FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N6XLQDFAKBRBSN737VFBOCQ65PJLEJLC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5114835647610246237=="

This is a multi-part message in MIME format.
--===============5114835647610246237==
Content-Type: multipart/alternative;
 boundary="------------dnkg8qNj0xr3qQuZE0WmfD3I"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------dnkg8qNj0xr3qQuZE0WmfD3I
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Mr Pereira,

the directest access you get to samples in the N210 is the ethernet conne=
ction =E2=80=93 and that=20
has no downside for GNSS applications, as the VITA49 samples fully repres=
ent the RF=20
signal, thanks to Shannon-Nyquist.

That is, of course, unless you start modifying the FPGA image of the N210=
, and make it a=20
completely different product. It's kind of unlikely you want to do that.

Greetings,
Marcus

On 03.01.23 14:25, Pedro Pereira wrote:

> Greetings,
>
> I have 2 USRP front-ends - N210 and N310. I want to develop a GNSS Rece=
iver inside my=20
> FGPA - xilinx ZCU102 - and use one of the USRP devices only as the fron=
t-end. The=20
> receiver is quite large so I need an external board for all the signal =
processing chain.=20
> The receiver has two implementations - software-only & hybrid. In hybri=
d mode some tasks=20
> of the processing chain are accelerated in hardware.
>
> The software-only version of the receiver running on my ZCU102 is able =
to configure the=20
> N210 and read packets over ethernet correctly. However, with the hybrid=
 version of the=20
> receiver, I want to read the digital IQ samples from the front end dire=
ctly in hardware.
>
> For example, I am able to do this with the ZCU102 connected to FMComm2/=
3 using the FMC=20
> connection on the FPGA. AD provides HDL reference designs to support co=
mmunication=20
> between multiple front-ends and multiple FPGAs.
>
> Is there a similar way to read the digital samples directly in hardware=
 using the N210?=20
> The N210 only has the ethernet and a MIMO port.
>
> Thanks in advance.
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------dnkg8qNj0xr3qQuZE0WmfD3I
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Mr Pereira,</p>
    <p>the directest access you get to samples in the N210 is the
      ethernet connection =E2=80=93 and that has no downside for GNSS
      applications, as the VITA49 samples fully represent the RF signal,
      thanks to Shannon-Nyquist.</p>
    <p>That is, of course, unless you start modifying the FPGA image of
      the N210, and make it a completely different product. It's kind of
      unlikely you want to do that.</p>
    <p>Greetings,<br>
      Marcus<br>
    </p>
    <p>On 03.01.23 14:25, Pedro Pereira wrote:</p>
    <blockquote type=3D"cite"
cite=3D"mid:CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=3DRN2T-zYCxY2nZxbTyw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Greetings,
        <div><br>
        </div>
        <div>I have 2 USRP front-ends - N210 and N310. I want to develop
          a GNSS Receiver inside my FGPA - xilinx ZCU102 - and use one
          of the USRP devices only as the front-end. The receiver is
          quite large so I need an external board for all the signal
          processing chain. The receiver has two implementations -
          software-only &amp; hybrid. In hybrid mode some tasks of the
          processing chain are accelerated in hardware.</div>
        <div><br>
        </div>
        <div>The software-only version of the receiver running on my
          ZCU102 is able to configure the N210 and read packets over
          ethernet correctly. However, with the hybrid version of the
          receiver, I want to read the digital IQ samples from the front
          end directly in hardware.=C2=A0</div>
        <div><br>
        </div>
        <div>For example, I am able to do this with the ZCU102 connected
          to=C2=A0<span
            style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helveti=
ca
            Neue&quot;,Helvetica,Arial,&quot;Lucida
            Grande&quot;,sans-serif;font-size:14px">FMComm2/3 using the
            FMC connection on the FPGA. AD provides HDL reference
            designs to support communication between multiple front-ends
            and multiple FPGAs.=C2=A0</span></div>
        <div><span
            style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helveti=
ca
            Neue&quot;,Helvetica,Arial,&quot;Lucida
            Grande&quot;,sans-serif;font-size:14px"><br>
          </span></div>
        <div><span
            style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helveti=
ca
            Neue&quot;,Helvetica,Arial,&quot;Lucida
            Grande&quot;,sans-serif;font-size:14px">Is there a similar
            way to read the digital samples directly in hardware using
            the N210? The N210 only has the ethernet and a MIMO port.</sp=
an></div>
        <div><span
            style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helveti=
ca
            Neue&quot;,Helvetica,Arial,&quot;Lucida
            Grande&quot;,sans-serif;font-size:14px"><br>
          </span></div>
        <div><font face=3D"Barlow, Helvetica Neue, Helvetica, Arial,
            Lucida Grande, sans-serif" color=3D"#11171a"><span
              style=3D"font-size:14px">Thanks in advance.</span></font></=
div>
        <div><span
            style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helveti=
ca
            Neue&quot;,Helvetica,Arial,&quot;Lucida
            Grande&quot;,sans-serif;font-size:14px"><br>
          </span></div>
        <div><span
            style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helveti=
ca
            Neue&quot;,Helvetica,Arial,&quot;Lucida
            Grande&quot;,sans-serif;font-size:14px"><br>
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
  </body>
</html>

--------------dnkg8qNj0xr3qQuZE0WmfD3I--

--===============5114835647610246237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5114835647610246237==--
