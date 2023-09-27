Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7103A7B0E52
	for <lists+usrp-users@lfdr.de>; Wed, 27 Sep 2023 23:47:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB95638513D
	for <lists+usrp-users@lfdr.de>; Wed, 27 Sep 2023 17:47:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695851239; bh=8EJOgYyRCU0iQztlZsWzX3paNdMLPiu/34jqqe982Ig=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jps0qaQdrEU1a856um0FoAQdS9l7S31q8rc9/a138dFB7FBiw1P+8tgnKiZXMx5u6
	 rEjPDYyZjhH0xAYGlB9p8U/1lgvQ6xUwnCw5Ji6PT31HlH+K5K+9orFrQ9pYk4YxxX
	 n3LHwoXcmzfhaSGxy+W6VDOUsmmpV5PHwHrdcd/DaNdcgNWEn9rkku2h26ngk7Iuux
	 zGo5BEcm0SufUWwHQfGSLZ0ugByUKHIB42mkbKv+L9rD9+t/sMQ2ACN3SFaSonx4om
	 2k27dHmdlJtF+smgkg56d1RuEerpgnbGU0Hn4YMmAmEtou2AEFENxBV3hLt4ChML69
	 d27evZM8n/nig==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id C0D01384C40
	for <usrp-users@lists.ettus.com>; Wed, 27 Sep 2023 17:47:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i/nl5/ql";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-65cff300946so12112796d6.3
        for <usrp-users@lists.ettus.com>; Wed, 27 Sep 2023 14:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695851236; x=1696456036; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1ZInQ1u3uP2kQFB9pzeNW3EciDl2v5cOuelLQT7aSWg=;
        b=i/nl5/qlO40RVWr1nz1P5SMRBkz1FWTKz8R7dG+pvmx0xg19f1j8SDmic5GKdB08xc
         esfcpunw5umfe+J6RGeickjbJvGjemnfCtxhtE5w/VyqzF1R/S/p2EZ8SbXFp3SxU5b0
         ShPOZhz4JhDRYxu0i4Dm4esdUyapu+LkB9f3+MDu9gSNR50rTgpbSbFUQKE0eTcrt+2C
         JP7UOgSoCmjChssVZCEiyXC3AWn7cf3ZA6EVA+gUNlAU6WmTWHF4wh2TDjnxZt2gxZBZ
         JESxoi2I8fxskjjmdFthG4krQLcCrKurwCzqxhjBUCoIksXIosYsYACiJCs8XiHlFavF
         9tJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695851236; x=1696456036;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1ZInQ1u3uP2kQFB9pzeNW3EciDl2v5cOuelLQT7aSWg=;
        b=vU2Y+35jkm5ub0DNlfEASmEpydbXPiLpNlAFAoh6FIYCxTEmTHT2Kpit/9swPXtcny
         oLpCwr7WJouLv0CLEYpzjATflXpj28jN7cn2J2KhRHdSG/gUfzo5jQNHBO8KuNvhuMdw
         GgkhD4jyaXvyZfxefRLDb76Jz5MkUMB0UgN3LEsR48aXftmqyN8HMQhAOdNMfn3FXsCP
         e1nrGJV0dwqunoOkrP69iZ0vE4Kjdwk3xfxs4z4FDb7l39vPutyWDG6jzfMOferclSjI
         4QQhjqGokIi9Ic8LL126Qufv3YMSWd4PYEWK67bYujXW1RuOBbM4FaF2M0qSUCnWW5ZC
         SKkA==
X-Gm-Message-State: AOJu0YzcIGFG/VIKUW+L3wfP+o9R3Vo5EzsHFI80xG9Q+imxwyWQf9bT
	Gok+e2Qea0FcDs8K1SA3QD+ghOtOpxsBpA==
X-Google-Smtp-Source: AGHT+IHxGV3Ypa5L/CZ8eP44UDDYDTvgaO/iEXF6y/8a6CD+tmTsrqKWG6sFGEsGhlLJ8quM43ZgzA==
X-Received: by 2002:a0c:b443:0:b0:65b:1114:f99f with SMTP id e3-20020a0cb443000000b0065b1114f99fmr3091889qvf.26.1695851235819;
        Wed, 27 Sep 2023 14:47:15 -0700 (PDT)
Received: from [192.168.2.161] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id q17-20020a0ce211000000b0065655bb349csm1941541qvl.141.2023.09.27.14.47.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 14:47:15 -0700 (PDT)
Message-ID: <c777ab9b-0284-af3a-8de4-12f607649082@gmail.com>
Date: Wed, 27 Sep 2023 17:47:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <zP5lDefL4PI9LPxwTGSK8UXVw3M0v1GMJGaTNXYu0icvrj4DczzMUJDcogRl9IrqJ4x2_oQRfHftMRAaL-PmItJupVbQlvjBYz213OUciJU=@protonmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <zP5lDefL4PI9LPxwTGSK8UXVw3M0v1GMJGaTNXYu0icvrj4DczzMUJDcogRl9IrqJ4x2_oQRfHftMRAaL-PmItJupVbQlvjBYz213OUciJU=@protonmail.com>
Message-ID-Hash: S7DU4K7ULJLFM4IJZPQVCOL2SI2S5SAR
X-Message-ID-Hash: S7DU4K7ULJLFM4IJZPQVCOL2SI2S5SAR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 10Gb Eth to X310 via PCIe Card Expansion Systems
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S7DU4K7ULJLFM4IJZPQVCOL2SI2S5SAR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2188946466132286146=="

This is a multi-part message in MIME format.
--===============2188946466132286146==
Content-Type: multipart/alternative;
 boundary="------------0yuFudKQGySinoOLC0McFsn8"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0yuFudKQGySinoOLC0McFsn8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/09/2023 05:15, Olo via USRP-users wrote:
> Hello,
> I want to connect X310 with my laptop through 10Gb eth connection and=20
> I want to ask:
>
>  1. If *Intel* *X710*=C2=A0(Dual 10Gb card) with *Sonnttech Echo Expres=
s SE
>     I*=C2=A0(PCIe Card Expansion Systems)
>     (https://www.sonnettech.com/product/echo-express-se1-tb3/overview.h=
tml)
>     will work (or if you have any experience with it).
>  2. Which card do you recommend me to use? (In documentation for 10G
>     eth connection
>     (https://files.ettus.com/manual/page_usrp_x3x0.html) it is
>     recommended to use *Intel* *X520-DA2* card but you onlysell on
>     your website *X710-DA2 card* ).
>
>
> Thank you for your answear.
> Olo
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
There are a large number of Intel X520-DA1 and DA2 cards available on=20
Amazon--with SFP interfaces.=C2=A0 ANY of those should work.
 =C2=A0 I picked one up a couple of years ago and it worked out of the bo=
x.=C2=A0=20
Might have been a 10GTek card, but I can't precisely recall.


--------------0yuFudKQGySinoOLC0McFsn8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/09/2023 05:15, Olo via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:zP5lDefL4PI9LPxwTGSK8UXVw3M0v1GMJGaTNXYu0icvrj4DczzMUJDcogRl9=
IrqJ4x2_oQRfHftMRAaL-PmItJupVbQlvjBYz213OUciJU=3D@protonmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">Hel=
lo,</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">I
        want to connect X310 with my laptop through 10Gb eth connection
        and I want to ask:</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">
        <ol>
          <li>If <b>Intel</b> <b>X710</b>=C2=A0(Dual 10Gb card) with <b>S=
onnttech
              Echo Express SE I</b>=C2=A0(<span>PCIe Card Expansion Syste=
ms</span>)
            (<span><a target=3D"_blank" rel=3D"noreferrer nofollow noopen=
er"
href=3D"https://www.sonnettech.com/product/echo-express-se1-tb3/overview.=
html"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://www.sonnettech.com/product/echo-express-se1-tb3/overview.html</a>=
</span>)
            will work (or if you have any experience with it).</li>
          <li>Which card do you recommend me to use? (In documentation
            for 10G eth connection (<span><a target=3D"_blank"
                rel=3D"noreferrer nofollow noopener"
                href=3D"https://files.ettus.com/manual/page_usrp_x3x0.htm=
l"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://files.ettus.com/manual/page_usrp_x3x0.html</a></span>)
            it is recommended to use <b>Intel</b>=C2=A0<b>X520<span
                style=3D"display: inline !important; background-color:
                rgb(255, 255, 255);">-DA2</span></b> card but you=C2=A0<s=
pan
              style=3D"display: inline !important; background-color:
              rgb(255, 255, 255);">only<span>=C2=A0</span></span>sell on =
your
            website=C2=A0<b>X710-DA2 card</b> ).</li>
        </ol>
        <div><br>
        </div>
        <div><span>Thank you for your answear.=C2=A0</span></div>
        <div><span>Olo</span></div>
      </div>
      <div class=3D"protonmail_signature_block" style=3D"font-family: Ari=
al,
        sans-serif; font-size: 14px;">
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
    There are a large number of Intel X520-DA1 and DA2 cards available
    on Amazon--with SFP interfaces.=C2=A0 ANY of those should work.<br>
    =C2=A0 I picked one up a couple of years ago and it worked out of the
    box.=C2=A0 Might have been a 10GTek card, but I can't precisely recal=
l.<br>
    <br>
    <br>
  </body>
</html>

--------------0yuFudKQGySinoOLC0McFsn8--

--===============2188946466132286146==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2188946466132286146==--
