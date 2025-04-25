Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF15FA9C986
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 14:53:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1A683861A8
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 08:53:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745585638; bh=PqMSmmo4Nom9bP348ZzQV2ea09exsoKKX02oWfBb440=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=fCWfPxL1n2e8JxVYubLwrMq6GvKKVso6b+LG33E8TQbHwrQ1BwGdVc/nVkOrKusDo
	 3zvXhtVA6yAlaI+BuLUdQZbdko6V2CmnqpTMt+jDfP5FaRFrWZy5LGDiWT/8zq21El
	 UUnNM+d6DvBJMdrqdVEMtKxugvvjRKFqdcPNXYfVFg0TQKoZ8bHT/H4izqHADV+ItC
	 CuGAre1Efe2Ey+x0Y2OVMzhkgYwKDYExflOcxowXCEQKNVrAAWXmzhGaBYIKXhPZM1
	 8K48n9EMCgSr1ybjFlSBSKHpdsC4evSG9e9g6YtVIFcEiPYGpEES1kTDQNK7zj691t
	 seVtoQ5kBjSoA==
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 6FC2A385D27
	for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 08:53:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kk2CEDxE";
	dkim-atps=neutral
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54b1095625dso2375021e87.0
        for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 05:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745585621; x=1746190421; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S385cakiI0Eci9BWDpnvARx/3bd0xZOcyNqLgdMkHyo=;
        b=Kk2CEDxEniK0JhLsJtWjqV/hDPFly1tBBkHDNIiWwSOwCATkmJsqsWWoEkJLyaHvVZ
         Rd69nY9LCs+wFy9djAdkjR2/2XCU3tIia7TmxPVr6V1NLJjKZbiGobnmNRdK6KSwzKNO
         j8ntg3GLGwOgo6RtlJGp+OH0XazznR6c6bh+ZeoWWAmXajRjtcIyzXlaBo1SBqp38A1X
         WdLlV/SzH09VkFX8/HKmnf6a3ZXwrBG3mlzWmxe3bqINCGZ2Q951qXfCE+v74l9Fmh8t
         ikpGA3cd0PyWhBeuzn5Zsb9m2fTh1n0sY5NfCxghXGmF8O8CQ/Y7lP1vbFS/ZgczNgOD
         /6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745585621; x=1746190421;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S385cakiI0Eci9BWDpnvARx/3bd0xZOcyNqLgdMkHyo=;
        b=eN17QZwLK7XeTjEOmInxa9/2UAS5DeLFP6j8+CcbckpmKblbR3vV2mn/VmvQAlzHxm
         D7z6a4y/Rr9IfaE52DBqGWCO/xMwER3tAA5c2kPPYSVOThU0t6eOQosLJkAqr0Ym3faX
         w+xt/PpycC4XMBMaq4d5m+8rUAXm2otRTzieg7yIL6KwH9qOSTpvKJT8Y2+hColjiNh8
         sOtS3YFXOnCKWv+hE8oZUDkfNfDxp6BN2VKyaonZUEe1m8THfzX4vyb0+4TL/3GqZzfU
         owrJok92nRQkDULT2wwyguGt4L6hlP6dHZden+aTxun9uBqxKd4KeuqXPsgJSRkRXO44
         ZOJQ==
X-Gm-Message-State: AOJu0YzjbWC26NmSWiIoqIrSBGr25y3usNZBLKMmDONeCV3tdEFcd+cG
	D0Y0owgbKXWW0A3u6UkjZww1xvTzQfMnteGssL57nrqcAPcduObDpJBvRxV96bRG+xBUUP2aUUA
	dAZVlM1EnDlCbvporTZ4blCT36yw=
X-Gm-Gg: ASbGnctdo00vh2Tefzq/8vxijvqL3jaf0CoS1agJrvQ9dXYqLKZZ5QHdWcLEO31Q6zD
	5fY0o6OqBQuK8TxUlghfjhhZ8OWoooMo/vuzmIpJM6Obc50DKDNtHtslj+KRDhGufQKdO36tfz/
	EUJcESCH0DDXvkDlapBsxrU9T6MrgudtIy
X-Google-Smtp-Source: AGHT+IHB2mQ/Zso3tHt1Wd4wmSKauB3xWSOoUciDPwv1/9IyXG6o8oML8h2nZKI6AnzyUK0lSE7q248+WSTDASP5bgU=
X-Received: by 2002:a05:6512:684:b0:549:9143:4ce1 with SMTP id
 2adb3069b0e04-54e8d0530e9mr666096e87.3.1745585620706; Fri, 25 Apr 2025
 05:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Pu8SFzGudO-BRav6JMVQS2s61uzxHMta9RNcw3AKCh_xw@mail.gmail.com>
 <CAFOi1A4aLzJLjoCt7df8TVCAOPBaMAgaSKSMSw88zYkqaHAXig@mail.gmail.com>
In-Reply-To: <CAFOi1A4aLzJLjoCt7df8TVCAOPBaMAgaSKSMSw88zYkqaHAXig@mail.gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Fri, 25 Apr 2025 16:23:29 +0330
X-Gm-Features: ATxdqUE_fHyjZsqW0psyutwGffrBMtkxz02kwqq_PhL8NXo5WgNEoSeMn7b3zrs
Message-ID: <CAA=S3Pv21gs71mxSPKYqKET9kdqocuMCRSKVeOMvnC5y_jmtdA@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: FJXHHTXWX5UY24GHDGRXJP2JCOUR76EH
X-Message-ID-Hash: FJXHHTXWX5UY24GHDGRXJP2JCOUR76EH
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: When i removed rfnoc block in YML file USRP FPGA image, it is not released resources for rfnoc block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FJXHHTXWX5UY24GHDGRXJP2JCOUR76EH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3551086351480501629=="

--===============3551086351480501629==
Content-Type: multipart/alternative; boundary="000000000000d8ee0d063399d2b8"

--000000000000d8ee0d063399d2b8
Content-Type: text/plain; charset="UTF-8"

I'm sure about file location and reading it in rfnoc_image_builder is
correct. But for test reducing resource when i reduce buffer size in yml
file it had effect. Thanks very much

ep0: # Stream endpoint name
ctrl: True # Endpoint passes control traffic
data: True # Endpoint passes data traffic
buff_size: 4096 # Ingress buffer size for data

>
>

--000000000000d8ee0d063399d2b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I&#39;m sure about file location and read=
ing it in rfnoc_image_builder is correct. But for test reducing resource wh=
en i reduce buffer size in yml file it had effect. Thanks very much</div><d=
iv dir=3D"ltr"><br></div><div dir=3D"ltr"><div style=3D"color:rgb(0,0,0);fo=
nt-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;font-=
size:12px"> <span style=3D"color:rgb(128,0,0)">ep0</span>:                 =
      <span style=3D"color:rgb(0,128,0)"># Stream endpoint name</span></div=
><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&qu=
ot;monospace&quot;,monospace;font-size:12px">    <span style=3D"color:rgb(1=
28,0,0)">ctrl</span>: <span style=3D"color:rgb(0,0,255)">True</span>       =
               <span style=3D"color:rgb(0,128,0)"># Endpoint passes control=
 traffic</span></div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid=
 Sans Mono&quot;,&quot;monospace&quot;,monospace;font-size:12px">    <span =
style=3D"color:rgb(128,0,0)">data</span>: <span style=3D"color:rgb(0,0,255)=
">True</span>                      <span style=3D"color:rgb(0,128,0)"># End=
point passes data traffic</span></div><div style=3D"color:rgb(0,0,0);font-f=
amily:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;font-size=
:12px">    <span style=3D"color:rgb(128,0,0)">buff_size</span>: <span style=
=3D"color:rgb(9,134,88)">4096</span>                <span style=3D"color:rg=
b(0,128,0)"># Ingress buffer size for data</span></div></div><div class=3D"=
gmail_quote gmail_quote_container"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><br>
</blockquote></div></div>

--000000000000d8ee0d063399d2b8--

--===============3551086351480501629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3551086351480501629==--
