Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1952863C676
	for <lists+usrp-users@lfdr.de>; Tue, 29 Nov 2022 18:32:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54667384290
	for <lists+usrp-users@lfdr.de>; Tue, 29 Nov 2022 12:32:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669743142; bh=q/flpv8nJy+LUeEcYGtg8KYexxIIB8S1UH0SjAXkMKw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Rgn67cbBpvKjnLeylsPEoW3FcxVmUEgSDkGJYVhbuBxi8GTR1Ucvyik63kJ7b4bdI
	 LNt67H2J2Ue9fyLGIQIjOj7y0X8dEdnLxDqAR60c6QC6SkyiXEObGr2p+LxXkskaqI
	 Wj+N2uZ//UTkEmsfC7leKM7moHQOIh6PQvXTXeOW5tNNnoi2jSF16LlDvioIvnQIZo
	 pKr0z7ZBKs/YrC5xB0IJtLRfWCPAjuP41YnEqAi8i6WZm6MgHLOocDSVxyXn9e+oX/
	 KogXm5aAq2C2AfBPgCczszlYWzP2xjynkn8LouY+IHBRq2N+Pl60qcC8dHpJPoFuaf
	 e0uiLbNzji/3w==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id C2F51384247
	for <usrp-users@lists.ettus.com>; Tue, 29 Nov 2022 12:31:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KuHyQGn9";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id jr1so1268258qtb.7
        for <usrp-users@lists.ettus.com>; Tue, 29 Nov 2022 09:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lzIpXPRYOaJW5/i37u8qc9PhOu28CLVKc8HkVX0oHvY=;
        b=KuHyQGn9h1liVIwGIF1TijDcNl69fA1IMHqmLh4NmG1YOzMALEo0vXw5LXEzFgLAbZ
         g3J+AMxG3jLQ/GDBI0R8jYzWHKg+JSBihk25Yp+ib9LN+ttwSUzn5JdhdSHsmqM67LLn
         otlDhsZmcwBwxFzqza2e01qMsQ1mbvyz3YQorW30CeE0fkHSslu1jbfE/AJyfb4zf6Tj
         YiDZcujJzREGl0KDYaQdFYYsojm4CvMCWrkzNzTwr+SAsKNkHLz+MmDUmbuxBWByp2GQ
         +hCW+Y8QuGg2HtJDXIOygim6iPKuL0g6uGuVaZpodmbpfyc6q3RLiCFz0/rWP9oZ5alZ
         hVOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lzIpXPRYOaJW5/i37u8qc9PhOu28CLVKc8HkVX0oHvY=;
        b=XnZ2nJeXXZaQLBFQk9rV0p1Sa9n1Tbms1+rSIr/bIxsD8jUYTc4o+D85rIA7aGL8Jl
         sxRegl3cL2KP1t8hKCF/M9tNgAq9xZbkcJa/qAQB/Yrhnr4KaC/ev6Vh7K7ib4wrzgPH
         TG6TikXHA8Ac0BqNfbQ4yVaJK3blXMvQHyOwWUvzfJmOT1P3JBfnkMoG1NrjMhC4R6fF
         74jUmQmk7TVBYXJVSupWfjy/lm90IcbxiWsZq0vNMZ4Rg1Dm2Qx6gviucNeS4VFIBBdz
         e9HI6y5wmWpNpdJJ2ttMTlKgWg08XZcMNHoFHQbTQxpwOKvwszXYHFhH8BAPZaknb50A
         KZiQ==
X-Gm-Message-State: ANoB5plbmxsNrsPS49Thmq1dcRgMEXm/DrUqDcXXIEWmaEK4Rbndd8fR
	/AQaFE4ebUO0WsyM5gtRxyMd91i3nHZS1Q==
X-Google-Smtp-Source: AA0mqf5I6vpW+E8MeKt/ecNbSix/UEGQABmlnxfOCs9fpT/eqQ3WJxwEggu1ry+bklS18RTx+wGNGw==
X-Received: by 2002:a05:622a:5c92:b0:3a4:fb85:6059 with SMTP id ge18-20020a05622a5c9200b003a4fb856059mr39323913qtb.102.1669743059888;
        Tue, 29 Nov 2022 09:30:59 -0800 (PST)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id d4-20020a05620a240400b006fa43e139b5sm11056142qkn.59.2022.11.29.09.30.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 09:30:59 -0800 (PST)
Message-ID: <5f61655a-e553-6417-c6f3-9e9be0a82515@gmail.com>
Date: Tue, 29 Nov 2022 12:30:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <RtxUC3eJyhLAQROVi6cmmo73cq9PXu8wJS9Nm5t514@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <RtxUC3eJyhLAQROVi6cmmo73cq9PXu8wJS9Nm5t514@lists.ettus.com>
Message-ID-Hash: DDUUQ7VFJEZZ4ZHMQPZIYK6EVNF7Y5OT
X-Message-ID-Hash: DDUUQ7VFJEZZ4ZHMQPZIYK6EVNF7Y5OT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 E312 E313 how to send power off request to ublox 6 GPS chip via UART interface?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DDUUQ7VFJEZZ4ZHMQPZIYK6EVNF7Y5OT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2205858655090070726=="

This is a multi-part message in MIME format.
--===============2205858655090070726==
Content-Type: multipart/alternative;
 boundary="------------MUdevjHX8OjMsLZoSagD07Z3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MUdevjHX8OjMsLZoSagD07Z3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 29/11/2022 12:25, kun_dave@hotmail.com wrote:
>
> Is it possible to send a power off request to the ublox 6 GPS chip=20
> (AMY-6M) using the UART interface on the E31x series? Note, the UART=20
> pins are connected to the PS side of the Zynq Xilinx FPGA.
>
> Supporting information:
>
> 1.
>
>     From ublox receiver description (including protocol description)
>     that describes the power on/off request
>
> image-2022-11-29-00-58-39-598.png
>
> 2.
>
>     details of the RXM-PMREQ
>
> image-2022-11-29-00-57-25-445.png
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Fairly sure that UHD "owns" the serial interface to that chip.=C2=A0=C2=A0=
 On the=20
latest system image for E310/E312, that means that
 =C2=A0 the MPM server "owns" it.=C2=A0=C2=A0 You might have to dig into =
the MPM source=20
code to get access to it.


--------------MUdevjHX8OjMsLZoSagD07Z3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 29/11/2022 12:25,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:kun_dave@hotma=
il.com">kun_dave@hotmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:RtxUC3eJyhLAQROVi6cmmo73cq9PXu8wJS9Nm5t514@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Is it possible to send a power off request to the ublox 6 GPS
        chip (AMY-6M) using the UART interface on the E31x series? Note,
        the UART pins are connected to the PS side of the Zynq Xilinx
        FPGA.</p>
      <p>Supporting information:</p>
      <ol>
        <li>
          <p>From ublox receiver description (including protocol
            description) that describes the power on/off request</p>
        </li>
      </ol>
      <p><img
src=3D"https://aerosource2.aero.org/jira/secure/attachment/605377/image-2=
022-11-29-00-58-39-598.png"
          alt=3D"image-2022-11-29-00-58-39-598.png" draggable=3D"true"
          moz-do-not-send=3D"true" contenteditable=3D"false"><br>
      </p>
      <ol start=3D"2">
        <li>
          <p>details of the RXM-PMREQ</p>
        </li>
      </ol>
      <p><img
src=3D"https://aerosource2.aero.org/jira/secure/attachment/605376/image-2=
022-11-29-00-57-25-445.png"
          alt=3D"image-2022-11-29-00-57-25-445.png" draggable=3D"true"
          moz-do-not-send=3D"true" contenteditable=3D"false"><br>
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
    Fairly sure that UHD "owns" the serial interface to that chip.=C2=A0=C2=
=A0 On
    the latest system image for E310/E312, that means that<br>
    =C2=A0 the MPM server "owns" it.=C2=A0=C2=A0 You might have to dig in=
to the MPM
    source code to get access to it.<br>
    <br>
    <br>
  </body>
</html>

--------------MUdevjHX8OjMsLZoSagD07Z3--

--===============2205858655090070726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2205858655090070726==--
