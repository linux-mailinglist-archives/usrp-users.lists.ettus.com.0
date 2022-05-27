Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BB9535726
	for <lists+usrp-users@lfdr.de>; Fri, 27 May 2022 02:37:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A479B3845EC
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 20:37:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653611870; bh=DucHAI++ZEl0nGQD4QP1Vi8ukHKlCoZ8z72U7L0kEC4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RrVzyg7YpM+fPuUa4ywJVt2wKf3e1JlEFC+chBrCM6LxuGq1FGyWXjYU0ZS4/+iBU
	 Z1qJbFfxNULN1YsNkz5hCghQ6Pw7oBBz+kTlxYZXzfGUbHzJ0G8X/PCDKeNTh4FZOa
	 mUG47DpcEt6JFFbGbyVbhV3tV+a0XXj5v/j0momxBYQro2nfrSir/0mr9IMILkxyib
	 f3r75Kl2Fb/ZThutBEVd3amdxLs3ah5S0rTD5SCHFJzmJIcYdnxGrb1hP9euJ+jAMO
	 DYjKrobkLRnDpavAosooWwZpqcwN/2CmrREGIz7+u+ic+vzC/8fuzzoNW5XLVFO1PR
	 TxU1pLEbOHjMg==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B79B3847FE
	for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 20:36:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qfs+QNBj";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id j3so2779053qvn.0
        for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 17:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=DC8Lf/7AaMv7k9M2/zhH2VPKsbAJeFlQgNMVr1wQE1o=;
        b=qfs+QNBjwM4P9dWC3VL4U/qe1LCFlS7Wd5q62Be08li796UNdB80JXUy7MuCAZgZKX
         CjnY2e7uKksIaLTn2T48lBS6BngYD4GY6gvPn5J8Fk4HAzN/8w7sGHwTzL32hATlyE1s
         An81a6RDZZWDMi8RncNYoKqjw9aTeEep0JDCd4JDlv8oUJrTgsZxmDxgiIhjS0ePxpcM
         UUqj12KjYuBi2UKFySGacMir7pRN13NwQnk0+pRgpvXs2rgcwttGXDlShb1MhNRDdW0u
         pFk6BtZSPfu/2Vo8SpzLMELOM7KP2Wc5UpNurEjmGzEZJt/5BGAZBAdROSQh50UAv5KJ
         43Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=DC8Lf/7AaMv7k9M2/zhH2VPKsbAJeFlQgNMVr1wQE1o=;
        b=FZuCAdKwRsMo/OVSvbTlll90TwMgwnKjtWgEVznX0j2P51nRjADmZTANVkoZxnAUSN
         2IcGNEO81SL4Cydz12VH4c9FBqmUGLaZkrildcwhwVRiZayjD10Pa6jXhwrNGEO+Q8/s
         sB8gup2+XM7b3fKBVQLDZFBkyjYm4uNLU0r/g+CUD+IJjFEh3zqy2nxxl1DarftVaqLi
         ioURqOtj9Etj/q9uY3qjxYon7Y6gkhng8lSGvQoycU5rR0CN5DMoGMYKjNOSUP6Tx+kg
         ez+IfOKWu42DDB9nmWnOlxQOARQHhalf5wcbbgANyGD7QCZGXFeHODZM7/IRwZasjWxu
         rAIg==
X-Gm-Message-State: AOAM5333GOYX/Nb8PPKTOKknp+iVcOCo4plpW0pr1N8AGD4NimmJe+OP
	bDcnhva1jhciEdUOR8d254YNlZhZThI=
X-Google-Smtp-Source: ABdhPJy1jl4APE6d4UXb7N+1KAedTpjQWRlDSgnrgawfJh/apOUmHJQEzsdpiOKAsUskytoWNlweEw==
X-Received: by 2002:a05:6214:887:b0:462:5da8:ad42 with SMTP id cz7-20020a056214088700b004625da8ad42mr12893101qvb.69.1653611809615;
        Thu, 26 May 2022 17:36:49 -0700 (PDT)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id p1-20020a37bf01000000b0069fc13ce1e3sm2060263qkf.20.2022.05.26.17.36.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 May 2022 17:36:49 -0700 (PDT)
Message-ID: <b47df687-ef8c-f21e-bc28-cb675c982d23@gmail.com>
Date: Thu, 26 May 2022 20:36:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: rouba zeitoun <roubazeitoun@gmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAHqKquykntg2BXbxMoZd21KPjmF1w_KZ7ahtghdj=MkbDHGdRQ@mail.gmail.com>
 <f276da5b-aff2-2bea-6a49-a86b372cf08f@gmail.com>
 <CAHqKquwxtYRHdaX503VP-eRwo+p9NU9Eu-fLi85vzjagW1y9AQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHqKquwxtYRHdaX503VP-eRwo+p9NU9Eu-fLi85vzjagW1y9AQ@mail.gmail.com>
Message-ID-Hash: 7OLMRP5YJPS6MXJS2BVGKXPEAAZLGAA2
X-Message-ID-Hash: 7OLMRP5YJPS6MXJS2BVGKXPEAAZLGAA2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: unmet dependencies libuhd4.2.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7OLMRP5YJPS6MXJS2BVGKXPEAAZLGAA2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3979255507279926797=="

This is a multi-part message in MIME format.
--===============3979255507279926797==
Content-Type: multipart/alternative;
 boundary="------------uxOgb7HzNxsSlaOV2UaWKGdJ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------uxOgb7HzNxsSlaOV2UaWKGdJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-26 02:56, rouba zeitoun wrote:
> Hello=C2=A0Marcus,
>
> I had installed it a couple of months ago, it was a general upgrade=20
> through the terminal (using "sudo apt upgrade"), also i checked my=20
> ubuntu version and yes it is bionic.
>
> thank you for your support
>
> Kind Regards
> Rouba
What I would try to do is to completely uninstall UHD first, then try to=20
do a 4.2 install from the PPA.=C2=A0=C2=A0=C2=A0 But, to be honest, I'm a=
 bit surprised=20
that sometime
 =C2=A0 as modern as UHD 4.2 will even build for Ubuntu 18.04.=C2=A0 The =
current=20
LTS release of Ubuntu is 22.04, and I've been running 21.10 for over a ye=
ar.

sudo apt remove uhd uhd-host


>
> On Wed, May 25, 2022 at 7:23 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2022-05-25 04:27, rouba zeitoun wrote:
>>     Hello USRP Support
>>
>>     Hope you have a nice day.
>>
>>     I was trying to upgrade my system and i got this message
>>
>>     *You might want to run 'apt --fix-broken install' to correct these=
.
>>     The following packages have unmet dependencies:
>>     =C2=A0libuhd-dev : Depends: libuhd4.2.0 (=3D 4.2.0.0-0ubuntu1~bion=
ic1)
>>     but it is not installed
>>     =C2=A0uhd-host : Depends: libuhd4.2.0 (=3D 4.2.0.0-0ubuntu1~bionic=
1) but
>>     it is not installed
>>     E: Unmet dependencies. Try 'apt --fix-broken install' with no
>>     packages (or specify a solution).*
>>
>>     after i tried *' sudo apt --fix-broken install' *i got this=C2=A0e=
rror
>>
>>     *dpkg: error processing archive
>>     /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_amd64=
.deb
>>     (--unpack):
>>     =C2=A0trying to overwrite '/usr/share/uhd/cal/cal_metadata.fbs', w=
hich
>>     is also in package libuhd4.1.0:amd64 4.1.0.4-0ubuntu1~bionic1
>>     Errors were encountered while processing:
>>     =C2=A0/var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1=
_amd64.deb
>>     E: Sub-process /usr/bin/dpkg returned an error code (1)*
>>     *
>>     *
>>     How may I solve this=C2=A0problem?
>>
>>     Kind Regards
>>     Rouba
>>
>     How did you install UHD initially?=C2=A0 What did you do to try to
>     upgrade?=C2=A0=C2=A0 I'll note that "Bionic" is a version of Ubuntu=
 that is
>     quite out-of-date at this point, but there do
>     =C2=A0 appear=C2=A0 to be PPA for UHD 4.2 for bionic.
>
>
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------uxOgb7HzNxsSlaOV2UaWKGdJ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-26 02:56, rouba zeitoun
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHqKquwxtYRHdaX503VP-eRwo+p9NU9Eu-fLi85vzjagW1y9AQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hello=C2=A0Marcus,
        <div><br>
        </div>
        <div>I had installed it a couple of months ago, it was a general
          upgrade through the terminal (using "sudo apt upgrade"), also
          i checked my ubuntu version and yes it is bionic.</div>
        <div><br>
        </div>
        <div>thank you for your support</div>
        <div><br>
        </div>
        <div>Kind Regards</div>
        <div>Rouba</div>
      </div>
    </blockquote>
    What I would try to do is to completely uninstall UHD first, then
    try to do a 4.2 install from the PPA.=C2=A0=C2=A0=C2=A0 But, to be ho=
nest, I'm a
    bit surprised that sometime<br>
    =C2=A0 as modern as UHD 4.2 will even build for Ubuntu 18.04.=C2=A0 T=
he
    current LTS release of Ubuntu is 22.04, and I've been running 21.10
    for over a year.<br>
    <br>
    sudo apt remove uhd uhd-host<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAHqKquwxtYRHdaX503VP-eRwo+p9NU9Eu-fLi85vzjagW1y9AQ@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 25, 2022 at 7:2=
3
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2022-05-25 04:27, rouba zeitoun wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hello USRP Support
                <div><br>
                </div>
                <div>Hope you have a nice day.</div>
                <div><br>
                </div>
                <div>I was trying to upgrade my system and i got this
                  message=C2=A0=C2=A0</div>
                <div><br>
                </div>
                <div><b>You might want to run 'apt --fix-broken install'
                    to correct these.<br>
                    The following packages have unmet dependencies:<br>
                    =C2=A0libuhd-dev : Depends: libuhd4.2.0 (=3D
                    4.2.0.0-0ubuntu1~bionic1) but it is not installed<br>
                    =C2=A0uhd-host : Depends: libuhd4.2.0 (=3D
                    4.2.0.0-0ubuntu1~bionic1) but it is not installed<br>
                    E: Unmet dependencies. Try 'apt --fix-broken
                    install' with no packages (or specify a solution).</b=
><br>
                </div>
                <div><br>
                </div>
                <div>after i tried=C2=A0<b>' sudo apt --fix-broken instal=
l' </b>i
                  got this=C2=A0error</div>
                <div><br>
                </div>
                <div><b>dpkg: error processing archive
                    /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~=
bionic1_amd64.deb
                    (--unpack):<br>
                    =C2=A0trying to overwrite
                    '/usr/share/uhd/cal/cal_metadata.fbs', which is also
                    in package libuhd4.1.0:amd64
                    4.1.0.4-0ubuntu1~bionic1<br>
                    Errors were encountered while processing:<br>
=C2=A0/var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_amd64.=
deb<br>
                    E: Sub-process /usr/bin/dpkg returned an error code
                    (1)</b><br>
                </div>
                <div><b><br>
                  </b></div>
                <div>How may I solve this=C2=A0problem?</div>
                <div><br>
                </div>
                <div>Kind Regards</div>
                <div>Rouba</div>
              </div>
              <br>
            </blockquote>
            How did you install UHD initially?=C2=A0 What did you do to t=
ry
            to upgrade?=C2=A0=C2=A0 I'll note that "Bionic" is a version =
of Ubuntu
            that is quite out-of-date at this point, but there do<br>
            =C2=A0 appear=C2=A0 to be PPA for UHD 4.2 for bionic.<br>
            <br>
            <br>
            <br>
            <br>
          </div>
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
    </blockquote>
    <br>
  </body>
</html>

--------------uxOgb7HzNxsSlaOV2UaWKGdJ--

--===============3979255507279926797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3979255507279926797==--
