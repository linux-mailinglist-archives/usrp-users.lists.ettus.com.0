Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB696F0BCB
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 20:19:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6154C3848A6
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 14:18:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682619539; bh=oLlXiFePd9vN7M5uA9dpnbecEUnWN1DCUpS0NqQ/R78=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KJ4HBzmSldPzZwUMXbzS0NXyWZYR03tOadz5KjCiAOFZz2iNt04G8Os8vWNvM35h7
	 20cjgricmrQm3VAnVGWfoCMDiWbSHZoNOVSh6dDxZn6cAHNU0mOcK9mBob08Ybdobi
	 6/v/NJQaUxjZFAXE1bAr6YPhTOCKg+6JIt04lq+yrWsjn8RPZpniKXdDfBtGQod79J
	 882vtnuxxPDlyXIoEErpLyg01cSURrMLYjxbpq9rICDRHona/3MZB0lAM58yvaOXqt
	 YAF8i+9zSpFgM4rJklLT+bCP8Gd0DENnRbSYeLFGSkyaPQSvG+t6RhPcRWyVoo1vVH
	 mEsOGCMSVcymw==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 5DE4438485A
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 14:18:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SBu0j70Y";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-3ef34e948b1so42914551cf.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 11:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682619498; x=1685211498;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vezo0zzJ8rQ4WgovR5XNMwE685fsVUNVScDvpF+WEK4=;
        b=SBu0j70YC3L6FoQfK5R76wNcspO5RdUM9098B1mce1cxAObsXmVP+FSZGWx/0gBwGH
         9/vlBPAoBVp7OcYXc6D9lY/xHqcgv86lxSFoXCBvCtw1eU+gxAJFkw8U844z/Txi+NRX
         SHEWTXiLpr5PllqsjibvbOBo7omUfBOR/87kaxxjRVktGvSvEF3/9BBnQGXBdw8TOSVV
         KbipvYSW+vZ1ci2PJNkHH4WsAl1mdjBx3aneGqg0yrkGDnQ+GG7sWe7sY4F/PT4JIZDz
         a2rpeqBxri63xu3gFx2aasDd5HWAnWbqrGjhDo7a7jyPF20warZoDw9+KQLQLJ2ff5N8
         KlGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682619498; x=1685211498;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Vezo0zzJ8rQ4WgovR5XNMwE685fsVUNVScDvpF+WEK4=;
        b=UbPvUyFSQgEqN7jI3b3zwVCn+ynx3qSsRcdoxbKhOazTmEWYEjoRNNctz1CcOeYrC+
         k87/zAHmdrktQ9pax6lcY/ikDulF8ZsthsMXz93PXbdZ2XR+IjojBXpKrhSTJwpe9Eub
         dkyrjlB/cvEFZKMDZ7v2n7hWlo3IqT1nMY9gfejuW0DRAGQTmNEmTVz7EgenIHoilcxL
         /chYJTBQqVVb/Re9J92kyGYR02JaYuC/+kHoTMqR8M7Ua8jf+w6U+NvKYhJpfw+jPavU
         qOP+S9xLLvW1+xyQe/WhVlFH8cVWSG/wSBK2WIdsNUGgIrEGiXvM1oq32BcishIO2P6c
         whpQ==
X-Gm-Message-State: AC+VfDwJs9JMMrOEfOVatLviULgQkwvt6MW/Ocwi/7+wmhA2/qnW+Ebo
	328ah5bAYgu54Vdy1eDt1QEGP/CqLe8=
X-Google-Smtp-Source: ACHHUZ4B3rUuDfT5aC4Z6zFnFMlLSff4A7yr+ZrUfxsMVaQ+KzP9togG6xsGb0bKzwfCjGKKpWBymw==
X-Received: by 2002:ac8:5bc6:0:b0:3ef:5733:29e4 with SMTP id b6-20020ac85bc6000000b003ef573329e4mr4272299qtb.64.1682619498271;
        Thu, 27 Apr 2023 11:18:18 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id ed27-20020a05620a491b00b0074e2da97de4sm5908147qkb.33.2023.04.27.11.18.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 11:18:18 -0700 (PDT)
Message-ID: <db80c4d3-bc78-dd18-ed56-7691c98ffd1c@gmail.com>
Date: Thu, 27 Apr 2023 14:18:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <HqaJ3sSYkYeuuV2NWQjvnHzVEQyjtDVpmMkEHeQ@lists.ettus.com>
 <CAGNhwTPnT70USqmU2Z8V3EqAHVk5-jTCSSS2X4KhW4sKym2rcg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAGNhwTPnT70USqmU2Z8V3EqAHVk5-jTCSSS2X4KhW4sKym2rcg@mail.gmail.com>
Message-ID-Hash: DHPH75SQWHOPQMQ6GPUYYT4A2ZU4ELVF
X-Message-ID-Hash: DHPH75SQWHOPQMQ6GPUYYT4A2ZU4ELVF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DHPH75SQWHOPQMQ6GPUYYT4A2ZU4ELVF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0426386357425557317=="

This is a multi-part message in MIME format.
--===============0426386357425557317==
Content-Type: multipart/alternative;
 boundary="------------lFgoAz0Hkii47Myh4WsELHC5"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lFgoAz0Hkii47Myh4WsELHC5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/04/2023 14:13, Michael Dickens wrote:
> I've used=C2=A0this for both USRP and general networking: Generic 10GBA=
SE-T=20
> SFP+ Copper RJ45 Transceiver Module - FS.com=20
> <https://www.fs.com/products/74680.html?attribute=3D26&id=3D412>=C2=A0.=
 The=20
> USRP is brand agnostic, so I generally just get "generic" branding. If=20
> you need more of these for specific brand devices, then I'd say to get=20
> for those brands. There are lots of manufacturers=C2=A0of these adapter=
s. I=20
> and others have found FS to be high quality at reasonable prices. I=20
> hope this is useful! - MLD
I got both my SFP+ 10G adaptors and optical cable from FS.com=C2=A0 -- I =
went=20
with optical rather than copper (I have about 20m
 =C2=A0 distance between the radio and the computer).




>
> On Thu, Apr 27, 2023 at 1:58=E2=80=AFPM <jmaloyan@umass.edu> wrote:
>
>     What adapters do you recommend?
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------lFgoAz0Hkii47Myh4WsELHC5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/04/2023 14:13, Michael Dickens
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAGNhwTPnT70USqmU2Z8V3EqAHVk5-jTCSSS2X4KhW4sKym2rcg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I've used=C2=A0this for both USRP and general
        networking:=C2=A0<a
          href=3D"https://www.fs.com/products/74680.html?attribute=3D26&a=
mp;id=3D412"
          moz-do-not-send=3D"true">Generic 10GBASE-T SFP+ Copper RJ45
          Transceiver Module - FS.com</a>=C2=A0. The USRP is brand agnost=
ic,
        so I generally just get "generic" branding. If you need more of
        these for specific brand devices, then I'd say to get for those
        brands. There are lots of manufacturers=C2=A0of these adapters. I=
 and
        others have found FS to be high quality at reasonable prices. I
        hope this is useful! - MLD</div>
    </blockquote>
    I got both my SFP+ 10G adaptors and optical cable from FS.com=C2=A0 -=
- I
    went with optical rather than copper (I have about 20m<br>
    =C2=A0 distance between the radio and the computer).<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGNhwTPnT70USqmU2Z8V3EqAHVk5-jTCSSS2X4KhW4sKym2rcg@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 27, 2023 at
          1:58=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@umass.edu"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">jmal=
oyan@umass.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <p>What adapters do you recommend?</p>
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

--------------lFgoAz0Hkii47Myh4WsELHC5--

--===============0426386357425557317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0426386357425557317==--
