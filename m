Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB2A93A7A6
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 21:21:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74281385A0D
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 15:21:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721762499; bh=L4Cy4jzL3Ab1AtTLMnw2JtxxLvBkgXPd8ZO76wQkevs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tfiCKxZPtYwDutEtbVy74kSHs7HEDTqKsjPB7tnkLwRVlvT4oEutCMXTJnZX0Pvpe
	 Ga32hs1qqPsil+9clY+CxPFLFwg8IDx1h52ykfGT0SQ+5dxhkdkXnvIJCn5hQv3paD
	 xbkE2PifEHVUYQko92iioHkjtO/ynovcR/ORq3jLHdI33hI8nXY481teV8RsRdlUWq
	 vP0ytHRIz722mF/Y2aceWXqlYRNIzpjoWtcnyAyQJMf1qNDPVzQvtABCpOhlkphXZX
	 PlnPjyZuC8X1T+oD39YvOxpzf6FGuaSjRSPbwnqf/mE0KOQdvX1VJmGqlYkgNSQKzH
	 Pecs4Rp/Tbiyw==
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 1BC8C3858B7
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 15:20:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UxEuSHE1";
	dkim-atps=neutral
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52efd08e6d9so4582640e87.1
        for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 12:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721762440; x=1722367240; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pd9Nd2+4khgxvwsNr9EFg/JxKQRjHBwwaxnTuGpyAro=;
        b=UxEuSHE1dzsm+OotaTIr/NzcyFWIhG/fYW0Utx8Z43vmyJT6pjYtvGIpyP/IJLgecO
         i4P+ED62nfAwUxLZpbNY5kQjzrVlvb0m+0QrRVHcmhQtw+YHMAvLrdQdABKdLtD1+0AH
         VLQomqZCC8aoX7saaRQCwfQluqJ1xwtq/CtZUfjMGRdr6P2jKQisfjnLz8rkbF+5pMrV
         k1jQhgjoEtm9c+sXzsNOjHFtdgCxmZaHLdo9EiuMRSEe+2pejJqibVUsuhp2x1u0BZ6r
         IC1MJwOHYK49zYistQkFaP07QBayN3CHTu4Sud1GG9rsyaIBMs/Sxjlq6iMCcnBO0KYt
         WS7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721762440; x=1722367240;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pd9Nd2+4khgxvwsNr9EFg/JxKQRjHBwwaxnTuGpyAro=;
        b=hQLtlkUDHP3fx83mLPkSlwNSzvLaN1Lv9H0VTgpwX85eavyRM8C3s1VsZMeEgtNX3D
         vzXG2TsOkyC/AIQaXu+ftMnR8o5cnW47ozP0OtM7Q66rwtyp6r6Dy2ousYdRLQp2DREV
         /QqnMZOi3nEpvuT4lTQtA8/sIE3CxiuqFtjFZwffJK/63TpSOdY/uz9L5LuGJTr/tNT8
         F5PLTqrgTaZHJeKlDR8GEt1VO/LytQr3RCqHlGQxqWmS0VNo3VPOUxBT9M09Dre+r48e
         rvFl6Wt0tyraZUXSlFyEucMhJzj7KegjKYkjLYwACFX/Xtm0t2mdLiKKz6YWcMA9XEfl
         yktQ==
X-Gm-Message-State: AOJu0YyIfWx5cuxpsWrVTo/E1fwJzg+DKpX4T1XkEL31Zjk/BRrqT/r1
	sVP6JH93Eu5o6ogl7yMHP5sOJuJkPgQY1q+dWANJBthbRJFmHoivi6b4jg==
X-Google-Smtp-Source: AGHT+IGAGm6ld708Lp4Xj6NU6OaG+2SlZiLe5eRA2gQV554n0xi6bKS3ZUxjXSQhvEWhCAx6pkmD1Q==
X-Received: by 2002:a05:6512:a95:b0:52c:6461:e913 with SMTP id 2adb3069b0e04-52fc404548emr3028777e87.16.1721762439833;
        Tue, 23 Jul 2024 12:20:39 -0700 (PDT)
Received: from [192.168.1.7] (host-79-55-111-138.retail.telecomitalia.it. [79.55.111.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7aae904299sm5120966b.124.2024.07.23.12.20.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 12:20:39 -0700 (PDT)
Message-ID: <86a13c1b-8c99-40fc-a9da-a38c31363baa@gmail.com>
Date: Tue, 23 Jul 2024 21:20:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <5f14a3e6-a2aa-4a58-9e00-7c2466e5971b@gmail.com>
 <d53b4426-7d8a-4549-8d71-7fc02b1cf997@gmail.com>
Content-Language: it
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
In-Reply-To: <d53b4426-7d8a-4549-8d71-7fc02b1cf997@gmail.com>
Message-ID-Hash: 63JLRLE5A3LODAPXW5NTRXVIT7OX6K6J
X-Message-ID-Hash: 63JLRLE5A3LODAPXW5NTRXVIT7OX6K6J
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: White Rabbit and N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/63JLRLE5A3LODAPXW5NTRXVIT7OX6K6J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7092891861987046015=="

This is a multi-part message in MIME format.
--===============7092891861987046015==
Content-Type: multipart/alternative;
 boundary="------------ihEeMG0887h5HfnZ1vTDWfpj"
Content-Language: it

This is a multi-part message in MIME format.
--------------ihEeMG0887h5HfnZ1vTDWfpj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Thanks. And so are WX and WG two different version of FPGA?

Il 23/07/2024 20:24, Marcus D. Leech ha scritto:
> On 23/07/2024 11:12, Giuseppe Santaromita wrote:
>>
>> Hi all,
>>
>> I need to use some N310s with White Rabbit (WR) and I have some questi=
on:
>>
>> Why in "Features" here (N310): link=20
>> <https://www.ettus.com/all-products/usrp-n310/> there is no White=20
>> Rabbit, while here (N321): link=20
>> <https://www.ettus.com/all-products/usrp-n321/> yes? Here: link=20
>> <https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP=
%E2%84%A2_N3xx_Devices>=20
>> the link talk about the N3xx generic. So, seems to be an error on the=20
>> website?
>>
>> Here link=20
>> <https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP=
%E2%84%A2_N3xx_Devices>=20
>> I find: "The USRP N3xx use the SFP+ 0 port for White Rabbit and SFP+=20
>> 1 port for IQ streaming. This port configuration requires the White=20
>> Rabbit =E2=80=9CWX=E2=80=9D FPGA bitfile".
>>
>> Here link=20
>> <https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#D=
ual_10Gb_Streaming_SFP_Ports_0.2F1>=20
>> says that all possible FPGA are XG, HG and WG. How about the WX? Is=20
>> WG? Is the same? Was a typo?
>>
>> Again, same link, says that "The XG FPGA image must be loaded for SFP=20
>> Port 0 to operate at 10 Gb speeds. If the HG image is loaded, the=20
>> port will be unresponsive at 10 Gb speeds". How about the WG?
>>
>> It is sure that White Rabbit can work with the N310? If the WX FPGA=20
>> it's flashed, teoretically I can use one=C2=A0 SFP+ port for WR and on=
e=20
>> SFP+ port for I/Q streaming. I need to be sure that the speed of the=20
>> second port is 10 GbE (and not reduced to 1 GbE).
>>
>> Thanks in advance
>>
>> Giuseppe
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
> According to my contacts, the N310_WX indeed puts WR on sfp0, and=20
> 10GiGe on sfp1.
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------ihEeMG0887h5HfnZ1vTDWfpj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Thanks. And so are WX and WG two different version of FPGA?<br>
    </p>
    <div class=3D"moz-cite-prefix">Il 23/07/2024 20:24, Marcus D. Leech h=
a
      scritto:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:d53b4426-7d8a-4549-8d71-7fc02b1cf997@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"moz-cite-prefix">On 23/07/2024 11:12, Giuseppe
        Santaromita wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:5f14a3e6-a2aa-4a58-9e00-7c2466e5971b@gmail.com">
        <meta http-equiv=3D"content-type"
          content=3D"text/html; charset=3DUTF-8">
        <p>Hi all,<br>
        </p>
        <p>I need to use some N310s with White Rabbit (WR) and I have
          some question:</p>
        <p>Why in "Features" here (N310): <a
            href=3D"https://www.ettus.com/all-products/usrp-n310/"
            moz-do-not-send=3D"true">link</a> there is no White Rabbit,
          while here (N321): <a
            href=3D"https://www.ettus.com/all-products/usrp-n321/"
            moz-do-not-send=3D"true">link</a> yes? Here: <a
href=3D"https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_=
USRP%E2%84%A2_N3xx_Devices"
            moz-do-not-send=3D"true">link</a> the link talk about the N3x=
x
          generic. So, seems to be an error on the website?<br>
          <br>
          Here <a
href=3D"https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_=
USRP%E2%84%A2_N3xx_Devices"
            moz-do-not-send=3D"true">link</a> I find: "The USRP N3xx use
          the SFP+ 0 port for White Rabbit and SFP+ 1 port for IQ
          streaming. This port configuration requires the White Rabbit
          =E2=80=9CWX=E2=80=9D FPGA bitfile".=C2=A0</p>
        <p>Here <a
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de#Dual_10Gb_Streaming_SFP_Ports_0.2F1"
            moz-do-not-send=3D"true">link</a> says that all possible FPGA
          are XG, HG and WG. How about the WX? Is WG? Is the same? Was a
          typo?<br>
        </p>
        <p>Again, same link, says that "The XG FPGA image must be loaded
          for SFP Port 0 to operate at 10 Gb speeds. If the HG image is
          loaded, the port will be unresponsive at 10 Gb speeds". How
          about the WG?</p>
        <p>It is sure that White Rabbit can work with the N310? If the
          WX FPGA it's flashed, teoretically I can use one=C2=A0 SFP+ por=
t
          for WR and one SFP+ port for I/Q streaming. I need to be sure
          that the speed of the second port is 10 GbE (and not reduced
          to 1 GbE).</p>
        <p>Thanks in advance</p>
        <p>Giuseppe<br>
        </p>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"tru=
e">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users-leave@lists.ettus.com"
        moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
      According to my contacts, the N310_WX indeed puts WR on sfp0, and
      10GiGe on sfp1.<br>
      <br>
      <br>
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

--------------ihEeMG0887h5HfnZ1vTDWfpj--

--===============7092891861987046015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7092891861987046015==--
