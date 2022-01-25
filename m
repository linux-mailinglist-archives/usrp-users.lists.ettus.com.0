Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2556449B7CF
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 16:41:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B699384675
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 10:41:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="c71yzdCh";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id BC687384413
	for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 10:40:39 -0500 (EST)
Received: by mail-qk1-f170.google.com with SMTP id a12so9965174qkk.9
        for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 07:40:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=efmxarVJ8HcfImOj3yloUneKQx0dqbhkfbxz0gKr6m4=;
        b=c71yzdChUx+PKuTW3akg3OQCJTVgpNqy7mXMpwyoau+qIRs0S8j4cPhSvi8VagL5Go
         EqWI8RH2Pj51AbnY6xF8UasQShnin6LQnshFVW84/o/+SxPYveAdV3WJno7tCd8tM7iu
         8WcyjzUYp2ipnl8rJJp5PGDoJBN09IMczXtIoFaqeQRoAZNL52JmAqJA8uNrDNVHWgbb
         dmnyQ7+jiDTijuGdF09SqsJVPxPpwwvLgpIKaS+NXYhr2sX3QGrPz6G4zySJsGWMf9e+
         sRIHYwngAsywLmPwgcV4MYLxNab472wK8CewjwBjT3Nf35060ksQPF+RiqAxliiY0COW
         cYLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=efmxarVJ8HcfImOj3yloUneKQx0dqbhkfbxz0gKr6m4=;
        b=eunR6+WoDFP0dAz+MWKNoy9/3kLSyeTQFcI3VWIPDtzFdcgELfifIhj47hhVLrAEtJ
         yWVNAeKN5tdIHYDh8PBKPwcjtYq3NsekzokeMJ1xt0RtHcPa41xt7DPIehG+9XEIRQ7b
         vp5G9BluAU9imY1K49lcpeqlAjPoyIf8m6MDTo5FkaZXBJN8HzQ/FKx/0YmjS8SgrK9h
         WIl9U6YFa1p+44gLHoTkYHN0MbRQ+XAIkuFd+puDQJDoVPZseUDf9qfi0gSxtKyz33gY
         8ZFZICYbcVC2iiuGuaHAgMRkVG70OB4915VWjSyTHZ60rVamlADLmDfaxVZ5oPU/LJpO
         GBxQ==
X-Gm-Message-State: AOAM531gcNNQycuDnSrOQ7GauYZ2+vB6XPILVENE9xX6frbXIQUSEgJ1
	cET0vKJrsXWU29pHhAqiP0n9svu75TUg9g==
X-Google-Smtp-Source: ABdhPJwc1q6J/d2Vxx0ebkz40QMyMa8oGAY6cxF33o1hMAHZ1yNr9oujNnJoNmHwuPqIPBrmy3nksg==
X-Received: by 2002:a05:620a:f06:: with SMTP id v6mr15267687qkl.149.1643125238991;
        Tue, 25 Jan 2022 07:40:38 -0800 (PST)
Received: from [192.168.2.221] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id bp35sm1538887qkb.99.2022.01.25.07.40.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jan 2022 07:40:38 -0800 (PST)
Message-ID: <b190375f-9565-ddc8-5289-6af588630efe@gmail.com>
Date: Tue, 25 Jan 2022 10:40:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAKhiL6XkCaqTqbx3S3AbCUh1Cdkg2JQ-hQwp367K2DkogscniQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAKhiL6XkCaqTqbx3S3AbCUh1Cdkg2JQ-hQwp367K2DkogscniQ@mail.gmail.com>
Message-ID-Hash: V44CHE76RVTIQA7X6BOK57YLVZU27SE4
X-Message-ID-Hash: V44CHE76RVTIQA7X6BOK57YLVZU27SE4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synchronization of two USRP x310s
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V44CHE76RVTIQA7X6BOK57YLVZU27SE4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2948547283946547560=="

This is a multi-part message in MIME format.
--===============2948547283946547560==
Content-Type: multipart/alternative;
 boundary="------------KWpbf7EYRbJTlwGfT5CQGGx0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------KWpbf7EYRbJTlwGfT5CQGGx0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-24 20:53, LoyCurtis Smith via USRP-users wrote:
> My system setup is as follows:
>
>   * 2 x USRP x310 with CBX-120 daughterboard
>   * 2 x Ubuntu 18.04 workstation
>   * 2 x Taoglas 45.8113 antenna
>   * 2 x=C2=A0 Internal Reference Clock (Master Clock set at 184.32 MHz)
>   * 2 x Internal Time source
>   * 2 x Connected via 1 Gig-E interfaces
>   * 2 x Using UHD 4.1
>
> The devices have been in two setups: stacked and a few inches apart.
>
> I am attempting to deploy a 5G network using the openairinterface=20
> (OAI) software system. Both devices synchronize initially, then they=20
> fail. With openairinterface, I am using frequency offset compensation=20
> at the UE. Its a useful parameter when running over the air and/or=20
> without an external clock/time source=20
> (https://gitlab.eurecom.fr/oai/openairinterface5g/blob/develop/doc/RUNM=
ODEM.md)
>
> Is there a way to synchronize the reference clock/timing of both USRP=20
> x310s over the air? In the future, I will be attempting to connect a=20
> third USRP x310. My setup will include one base station and two user=20
> devices.
>
> V/r
>
> LoyCurtis Smith
>
>
Unless OAI provides some mechanism for that, the answer would be no.=C2=A0=
=20
You need a shared reference clock.



--------------KWpbf7EYRbJTlwGfT5CQGGx0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-24 20:53, LoyCurtis Smith
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAKhiL6XkCaqTqbx3S3AbCUh1Cdkg2JQ-hQwp367K2DkogscniQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>My system setup is as follows:=C2=A0</div>
        <div>
          <ul>
            <li>2 x USRP x310 with CBX-120 daughterboard</li>
            <li>2 x Ubuntu 18.04 workstation</li>
            <li>2 x Taoglas 45.8113 antenna</li>
            <li>2 x=C2=A0 Internal Reference Clock (Master Clock set at
              184.32 MHz)</li>
            <li>2 x Internal Time source=C2=A0</li>
            <li>2 x Connected via 1 Gig-E interfaces</li>
            <li>2 x Using UHD 4.1</li>
          </ul>
          <div>The devices have been in two setups: stacked and a few
            inches apart.=C2=A0</div>
          <div><br>
          </div>
          <div>I am attempting to deploy a 5G network using the
            openairinterface (OAI) software system. Both devices
            synchronize initially, then they fail. With
            openairinterface, I am using frequency offset compensation
            at the UE. Its a useful parameter when running over the air
            and/or without an external clock/time source (<a
href=3D"https://gitlab.eurecom.fr/oai/openairinterface5g/blob/develop/doc=
/RUNMODEM.md"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://gitlab.eurecom.fr/oai/openairinterface5g/blob/develop/doc/RUNMODEM.=
md</a>)</div>
          <div><br>
          </div>
          <div>Is there a way to synchronize the reference clock/timing
            of both USRP x310s over the air? In the future, I will be
            attempting to connect a third USRP x310. My setup will
            include one base station and two user devices.=C2=A0</div>
          <div>
            <div dir=3D"ltr" class=3D"gmail_signature"
              data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr">
                <div>
                  <div dir=3D"ltr"><font color=3D"#073763"><br>
                    </font></div>
                  <div dir=3D"ltr"><font color=3D"#073763">V/r</font>
                    <div><span style=3D"background-color:rgb(255,255,255)=
"><font
                          color=3D"#073763"><br>
                        </font></span></div>
                    <div><span style=3D"background-color:rgb(255,255,255)=
"><font
                          color=3D"#073763">LoyCurtis Smith</font></span>=
</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <br>
    </blockquote>
    Unless OAI provides some mechanism for that, the answer would be
    no.=C2=A0 You need a shared reference clock.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------KWpbf7EYRbJTlwGfT5CQGGx0--

--===============2948547283946547560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2948547283946547560==--
