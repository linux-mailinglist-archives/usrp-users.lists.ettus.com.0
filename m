Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C09D487996
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 16:16:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7522E384BFD
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 10:16:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ITXlRy/j";
	dkim-atps=neutral
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F5F6384B4A
	for <usrp-users@lists.ettus.com>; Fri,  7 Jan 2022 09:57:18 -0500 (EST)
Received: by mail-il1-f177.google.com with SMTP id r16so3075335ile.8
        for <usrp-users@lists.ettus.com>; Fri, 07 Jan 2022 06:57:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=dzSueR4K8ErXjUVj8UMdcLv2yVIxxFSsi5B4sXJ+KbQ=;
        b=ITXlRy/jWRBmdvOP8hSJbrAicnIYWkJfn5xbwPprKqUhoz4eAv7Ho155YE3up4b4Ft
         K+3jPvK4v0V7oxtB25r65y2BEivquEmt32kxFso/nOr0r7+OuNHidNBy8hH9koDmaVpL
         cn/EqpktytgizeThuq0F/+7TUDmyxxGivzO2ujgWFuGJeXM2WmDiXtTO/dAwaMrIX3Mw
         qFLO1YkCnfAcrhg8U99EzSCyVUA5QELSZrq1i03o+jqiO9ilcG+3RiINombARperhHgJ
         950cM3Etu3bsAleZMNMQgCQXRrrk1MIKh9bFV3k6+UrzthZu1K8JtUciETv+kYOiVllc
         G2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=dzSueR4K8ErXjUVj8UMdcLv2yVIxxFSsi5B4sXJ+KbQ=;
        b=WBdgz3IdJreYrh+Dq9ZzRVh1IaUZOvXy2sLeGPAxPi50M5N0d52kHelXsail14nHdp
         X4deIpEtiP8HO08dXM9g2b1/C6chWxh9FlmU8BCkUaDOdZWQSr3jHR8QOYZmjVusHlt/
         5GiyDzSeE+cEqn10wAw5fsxDLcEw7juJGNiqIjv/AIhUwLq/iauYRdODDIwbSk4bEo6X
         CbdKLL+mB+6YAH3UXCayLgnjaT1ed0oL4iKAb72oaYRm6QW3+HA9uYctZbo9/Ar8YHuA
         KdSSdE7Dd/qJnp8kprft1RP+2HpTRS/lE4v/TIx9NiXy15yUEBR1SufShqyyZs2EkF+u
         TZ5A==
X-Gm-Message-State: AOAM532tVjaDFJjemLBbkVGdOkt9PUG/7PSSf05v2V5gKOoUAgmklRv7
	3QdESgXZ1nATfn2gdF5aZgcskFphc9deMQ==
X-Google-Smtp-Source: ABdhPJwIijLToI/ljjlL8z7ueVKPprKXXjtbfk3eMC6SVQ0YdjRlocd6P3V5e4zF7or4yzRy1KagmQ==
X-Received: by 2002:a92:c7c4:: with SMTP id g4mr30596619ilk.112.1641567437731;
        Fri, 07 Jan 2022 06:57:17 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id g8sm3123809ilf.17.2022.01.07.06.57.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 06:57:17 -0800 (PST)
Message-ID: <eec27186-6984-823d-2d21-621bb9fb244e@gmail.com>
Date: Fri, 7 Jan 2022 09:57:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3PttH=YrGduoAwVbx77Rur2cVTFnMwSCNwJKzoGY2iLFZQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3PttH=YrGduoAwVbx77Rur2cVTFnMwSCNwJKzoGY2iLFZQ@mail.gmail.com>
Message-ID-Hash: WZZ37ZWJ2DH7OF3FQJLBKB6L33D3CXOT
X-Message-ID-Hash: WZZ37ZWJ2DH7OF3FQJLBKB6L33D3CXOT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How I can create a correlate RFNOC block, I need a where that buffer radio samples...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WZZ37ZWJ2DH7OF3FQJLBKB6L33D3CXOT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6123832895229353006=="

This is a multi-part message in MIME format.
--===============6123832895229353006==
Content-Type: multipart/alternative;
 boundary="------------OG4flwgDaAzuV4AXZNNx9EnH"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------OG4flwgDaAzuV4AXZNNx9EnH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-07 09:20, sp h wrote:
> How I can create a=C2=A0correlate RFNOC block, I need a where that=C2=A0=
buffer=20
> radio samples...
> For more information (time-domain) correlate formula please refer to=20
> the below link:
> https://en.wikipedia.org/wiki/Cross-correlation
>
> I have a reference signal that should be correlated=C2=A0with the input=
=20
> signal=C2=A0received from the radio core(In USRP)...
> It is possible to buffer radio samples in=C2=A0RAM for some operations?=
??
> any idea that I developed an optimized RFNOC correlate block?
> I don't use FFT for correlating, I want to do it in the time-domain=20
> method...
> thanks in advance
>
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I would look at how existing RFNoC blocks like the FFT block or FIR=20
filter blocks buffer samples and then "do things with them".=C2=A0=C2=A0 =
That is=20
perhaps a vague answer,
 =C2=A0 but I'm not an RFNoC developer myself.=C2=A0 But other existing R=
FNoC=20
blocks have the same "buffer' samples" requirement.


--------------OG4flwgDaAzuV4AXZNNx9EnH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-07 09:20, sp h wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3PttH=3DYrGduoAwVbx77Rur2cVTFnMwSCNwJKzoGY2iLFZQ@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">How I can create a=C2=A0correlate RFNOC block, I n=
eed a
        where that=C2=A0buffer radio samples...
        <div>For more information (time-domain) correlate formula please
          refer to the below link:<br>
          <div><a href=3D"https://en.wikipedia.org/wiki/Cross-correlation=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://en.wikipedia.org/wiki/Cross-correlation</a></div>
          <div><br>
          </div>
          <div>I have a reference signal that should be correlated=C2=A0w=
ith
            the input signal=C2=A0received from the radio core(In USRP)..=
.</div>
          <div>It is possible to buffer radio samples in=C2=A0RAM for som=
e
            operations???=C2=A0</div>
          <div>any idea that I developed an optimized RFNOC correlate
            block?</div>
          <div>I don't use FFT for correlating, I want to do it in the
            time-domain method...</div>
          <div style=3D"text-align:left">thanks in advance</div>
          <div><br>
          </div>
          <div><br>
            <div><br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    I would look at how existing RFNoC blocks like the FFT block or FIR
    filter blocks buffer samples and then "do things with them".=C2=A0=C2=
=A0 That
    is perhaps a vague answer,<br>
    =C2=A0 but I'm not an RFNoC developer myself.=C2=A0 But other existin=
g RFNoC
    blocks have the same "buffer' samples" requirement.<br>
    <br>
    <br>
  </body>
</html>
--------------OG4flwgDaAzuV4AXZNNx9EnH--

--===============6123832895229353006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6123832895229353006==--
