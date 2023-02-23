Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E86DD6A10F2
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 20:59:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AA31384157
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 14:59:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677182369; bh=PnDYq6AaI0wP/LfqJGMyxfsw26NZretCjV0VmeSCBQM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NxViDNAxJ0nu/c4bB9FFgUK0fsXF5ReufSS+CFMlFK/V2wwo3dE//E3sWYvjaA3Jn
	 rVBcIzXqL6aCOK3iUUguQOJft6X/xWkuFw6Pr6aIreWFZFRIsdMMbgkYzU1yv8ei/1
	 H+Rz4YTJiMJNygrO5kad+SBf3OAAA5pUJG4qWTK0ws71UGx5m/yj9U1Hn/7BKBfr4y
	 P7hTf5+rw9updGXnZa47tec8qPUU81/6WxOGtwR17ey1uZ6tiluzA3Hd8Mx1Zpmf7T
	 4OlTQ+LdAMljlLM8VbISr36Pwp4uWjyrih4VoBWqMkWyO1lj9CQ0kUoVkmMX4pXMri
	 E0iWRITYXAF6A==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 590333840C9
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 14:58:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XyhJL2jN";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id nf5so11954917qvb.5
        for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 11:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lZ1OTZ27X8iidX1GBKqatm0P2zru+dc7Igf8cqZobfs=;
        b=XyhJL2jNl8V8PWZQPpu3n3/wWKb9kJ1c6sgmWvV0F3gJW6uUTrrdfGGpAYyPw14g5Q
         /AtFIqlm8q9mi8FfotT72zZ2XqQybdOvH2Q4pGBcQXjpegrQGFrOHgZv45KAs0TBpVB/
         Tqdk90ddA9mTAivqI/UY1olkoYr7OBb6nHn1P0flDAN0mWJd5v4vEfHsTdcGR8oHVXdg
         yAl2Q6iWPIp2skKLPxeiVeLpkpDD3/Oarn4wAl+BLEiIw0pZyiIKrX5/SeuFAjFAYyhS
         Hmk47jok13mvsTgehRnAEaQJrRxSCXtPSvtewPZzkrqY2r5M9aBzRvgnjNAU1wotVFUi
         ptNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lZ1OTZ27X8iidX1GBKqatm0P2zru+dc7Igf8cqZobfs=;
        b=RkxoLzzUxh3fijM2Cv6bGx2rcbekDds9EuWhVYch8ujd9lUQKMP1o2QmqzNx7orhq8
         sfZSQ13OJgzW47757HFIqZpLqTOm9prlU4bRI1pmjrB+kkoYN5UWOyIZZ9/UNV6ykdrt
         6+yuZc+ggFY8Y/bfCtbAXshFkfQCAJ5ukv+F8sKKgI+OZrT63r8JPrvWkrZ+AeUjxLNT
         3frHFg4rEV2dWmnPQ7F3tuoErijVllrvxBttCXjHiuFzj/GcwTCoz0KNK2dN/lOLo8GG
         maEaAUN6hC0QXSx7/o7VnChs3GYLAVm/wED3KF+Sx4cRbjQZsqVgzm9nYG31EguQ7CuK
         1JJQ==
X-Gm-Message-State: AO0yUKWpgEuM7Xt2M74YLLX7c5sftRTJJinzxaK5e357X0IzLzH6BXmO
	rQZ557DfC7/svAKSC5tOxGyJH8yM6Zg=
X-Google-Smtp-Source: AK7set/ZlAzq2EX//X5XQYjlGWo0su7qRArhxp6I5kkkGrghoSQ900jO29OiytFK41fYONvTiNIcgA==
X-Received: by 2002:a05:6214:c8f:b0:56e:ff20:57c2 with SMTP id r15-20020a0562140c8f00b0056eff2057c2mr23403267qvr.10.1677182323647;
        Thu, 23 Feb 2023 11:58:43 -0800 (PST)
Received: from [192.168.2.154] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id j62-20020a37b941000000b0073baa5ec0besm3650223qkf.115.2023.02.23.11.58.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 11:58:43 -0800 (PST)
Message-ID: <3bd50bd9-3a9b-834c-b5ea-4176b94da617@gmail.com>
Date: Thu, 23 Feb 2023 14:58:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <793986517.66025.1677182001996.ref@mail.yahoo.com>
 <793986517.66025.1677182001996@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <793986517.66025.1677182001996@mail.yahoo.com>
Message-ID-Hash: H5NM34ETUO2TWE7O6ZWUTVC7PQ5G237B
X-Message-ID-Hash: H5NM34ETUO2TWE7O6ZWUTVC7PQ5G237B
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Active GPS Antenna For USRPs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H5NM34ETUO2TWE7O6ZWUTVC7PQ5G237B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7184335004396414301=="

This is a multi-part message in MIME format.
--===============7184335004396414301==
Content-Type: multipart/alternative;
 boundary="------------U6R5lAJAwjpo0Ry8Db6YlgOs"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------U6R5lAJAwjpo0Ry8Db6YlgOs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 23/02/2023 14:53, Hamed Al-Zubi via USRP-users wrote:
> Hello,
>
> I am just wondering why the 3V active GPS antenna for the USRP N210 is=20
> compatible with the USRP X300/X310?
> I have 3-5V active antenna manufactured from china, but it does not=20
> work with USRP X300. However, it works perfectly fine with N210.
> The 5G Active GPS antenna=C2=A0 for USRP X300/X310 manufactured by ettu=
s is=20
> expensive.
>
> Regards,
> HA
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I have absolutely used a cheaper active GPS antenna with the X310 and it=20
works just fine.=C2=A0=C2=A0=C2=A0 I'm using one right now
 =C2=A0 with an Octoclock-G (which I think uses the same GPS module as in=
side=20
the X310) and it has been working flawlessly 24/7
 =C2=A0 for months.


--------------U6R5lAJAwjpo0Ry8Db6YlgOs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 23/02/2023 14:53, Hamed Al-Zubi via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:793986517.66025.1677182001996@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue=
,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hello,=C2=A0<br>
          <br>
          I am just wondering why the 3V active GPS antenna for the USRP
          N210 is compatible with the USRP X300/X310?<br>
          I have 3-5V active antenna manufactured from china, but it
          does not work with USRP X300. However, it works perfectly fine
          with N210.=C2=A0<br>
          The 5G Active GPS antenna=C2=A0 for USRP X300/X310 manufactured=
 by
          ettus is expensive.<br>
          <br>
          Regards,<br>
          HA</div>
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
    I have absolutely used a cheaper active GPS antenna with the X310
    and it works just fine.=C2=A0=C2=A0=C2=A0 I'm using one right now<br>
    =C2=A0 with an Octoclock-G (which I think uses the same GPS module as
    inside the X310) and it has been working flawlessly 24/7<br>
    =C2=A0 for months.<br>
    <br>
    <br>
  </body>
</html>

--------------U6R5lAJAwjpo0Ry8Db6YlgOs--

--===============7184335004396414301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7184335004396414301==--
