Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C7F60F705
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 14:19:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B43D03837B2
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 08:19:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666873186; bh=bhPFLRomr0oGj+Sp0Z+mLOiqBLG+6jgGAUjELut9h1o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rzjf4Ji1bgx48tBpI+ySQbDjhXetvS5doE/5FxNcl1CUqt0GHuNvNje2QK7lALt+T
	 KHYbPxl+BAyECddk/h/VPwfB4NOmNUhoTbyT69pTrqSOIfWKf3+AG7VIu3/3rSzjvv
	 SnHXMIzVgUNfX7e6J4Hjbw9l/CNyrv83XG7/bMcr2DdKsyeSsbIPxxU+A8Ij0CW3b+
	 VNDaDBkVcgOB7qDLtGj0QB3AP9Wfa44cXhOzZEkmWOI/bSy3FiqrJ2uYX3Hx6SIE8B
	 D/qduskswvuyWe6ta6QzgHBrzcfBA4nWcy7ru/mF/cpkPb1Bkpe2qSSO96HaXThLBh
	 6b/wRu+XZT4wQ==
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by mm2.emwd.com (Postfix) with ESMTPS id D31AD380E26
	for <usrp-users@lists.ettus.com>; Thu, 27 Oct 2022 08:16:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kGkGxR5y";
	dkim-atps=neutral
Received: by mail-il1-f171.google.com with SMTP id o2so833845ilo.8
        for <usrp-users@lists.ettus.com>; Thu, 27 Oct 2022 05:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I0fFkEwAc6DaAyzdXcnW0hSVX9omfZ4W/8oENJae3ko=;
        b=kGkGxR5yffpJ6odApa01C8y1R3V1QrpWzgMZAxHkdJ2EYUBauscHVb7aST+5/wbXje
         5ibNBaUWdezudtJ6BpaS6QcG0OtV7du7n8+r7V75SvxfN1+SOgFjWLLkl5J4906/4RY9
         2AT1TA/a8SEeavAD1htEpv5fpGS9AKSK/ghOMNBPwD+ykDqQBeV4pe5bMniBI92BRGUM
         NIGMudxcuWa0ManOcMrrbp1ZhWPrm/1CfmSN0IkngBrge6NiJrHW8FeEI5w/XdMr0JQe
         yHCeE7XTueazvI+RZObzp4Hxg8lfRDYR2wZeFbUJDImXrwmQ1Wkkep3WIVoCRkS1LZHY
         8ngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I0fFkEwAc6DaAyzdXcnW0hSVX9omfZ4W/8oENJae3ko=;
        b=8DMkFphJldiVVU4VsjuNzuk5ikpla2laAyP64ARYqUFbGtdwWMP/sdCewkr1fnQLat
         6jCpQ8IWUQd+6VbxbRCnWp3lIY/xs+2kycgaD+WFr8dHSRFoMjB8OWon2giRNvs4+8b6
         mYUb8766M6HG+oT4D1eDaUzBDtApnBH1RYhG24bcw400ASuKmlr9aLuGmCIM0sBPTvoA
         KCvQCJ+ZO9w9NowEybVo3oZ1+jc5KLhciPtt9jYmKAUz53G1oh8RWibvnrjVD5okY+Sz
         lfD0C34vKbCngQ/4P+PrRJJg7Q3Eaut5F2cmzz+cxa3xXC3offg7GQDbx/0iorcMncJN
         pz0g==
X-Gm-Message-State: ACrzQf1Bsm6BMijC3RpSub0FACXjJuXPyPGvrbIiCoXhkR2VAtr0bUZ+
	pzvqHEo0H79WKviH4PSSzU9GgvzmRZo=
X-Google-Smtp-Source: AMsMyM78OMfyBclifWajwvFZ51IEy8xqLXL9LMirP9zgzOIGiHpa8B5xH/RE3yDkAmapAmYgvkLEHw==
X-Received: by 2002:a05:6e02:2147:b0:300:184b:702f with SMTP id d7-20020a056e02214700b00300184b702fmr5250019ilv.88.1666873001007;
        Thu, 27 Oct 2022 05:16:41 -0700 (PDT)
Received: from [192.168.2.176] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id n23-20020a027117000000b00375126ae55fsm523306jac.58.2022.10.27.05.16.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 05:16:40 -0700 (PDT)
Message-ID: <492835ae-7a8a-28fa-8be5-2338aabb58bc@gmail.com>
Date: Thu, 27 Oct 2022 08:16:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: luteo <xdcple@163.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <665f49e9.5052.18412cbb604.Coremail.xdcple@163.com>
 <860b77c7-433c-bbd7-4b47-e84394058a95@gmail.com>
 <e08d7d7.38aa.18417bb0aba.Coremail.xdcple@163.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <e08d7d7.38aa.18417bb0aba.Coremail.xdcple@163.com>
Message-ID-Hash: ZMXONB3FUVF6URDMB7XUIBOSRBLRBSEU
X-Message-ID-Hash: ZMXONB3FUVF6URDMB7XUIBOSRBLRBSEU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The signal received by B205mini is unstable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZMXONB3FUVF6URDMB7XUIBOSRBLRBSEU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8995222291615928677=="

This is a multi-part message in MIME format.
--===============8995222291615928677==
Content-Type: multipart/alternative;
 boundary="------------pgrEha3NpDVrwR3P0gE0dvMU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------pgrEha3NpDVrwR3P0gE0dvMU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/10/2022 00:37, luteo wrote:
>
> Thank you very much for your reply!
>
>
> I have two B205minis in my hand. Both of them have the phenomenon=20
> described previously, but the same antenna does not have this=20
> phenomenon on the B210.
>
>
> Refer to the two videos of B205mini operating under GQRX ("B205 DuPont=20
> line. mp4"&"B205 DuPont line Acrylic. mp4") , I use the probe to=20
> insert it into the SMA interface, and the signal will be lost after=20
> changing different directions. My understanding is that the inner hole=20
> of the SMA interface should be the same as the metal probe on any=20
> surface. However, in the actual test, the two B205minis all show that=20
> the signal will be lost at the same position, which is also my confusio=
n.
>
>
> If you can, you can also test it in my way.
>
>
>
I just watched your videos.=C2=A0=C2=A0=C2=A0 That's not the way SMA conn=
ectors are=20
intended to be used.=C2=A0=C2=A0 The internet construction of
 =C2=A0 different SMA connectors will behave somewhat differently under t=
hese=20
circumstances (with a random piece of wire
 =C2=A0 jammed into the SMA socket).=C2=A0=C2=A0 Furthermore, the interna=
l spring=20
socket can get permanently deformed by doing that.
 =C2=A0 Please don't.=C2=A0=C2=A0=C2=A0 Ettus/NI cannot guarantee perform=
ance if you aren't=20
using the SMA connector the way SMA connectors
 =C2=A0 were intended to be used.


>
>
>
> At 2022-10-26 20:15:51, "Marcus D. Leech" <patchvonbraun@gmail.com> wro=
te:
>
>     On 2022-10-26 01:37, luteo wrote:
>>
>>     When testing the B205mini, we found that the SMA connector was
>>     tightened to the most tight, but there may be no signal or the
>>     signal is weak.
>>
>>
>>     Of course not always. Sometimes it is better to loosen the SMA
>>     connector a little.
>>
>>
>>     In short, the reception effect requires repeated adjustment of
>>     the sma connector. Even after the sma is tightened, applying an
>>     external force on the plug position may change the quality of the
>>     received signal.
>>
>>
>>     There is no similar problem on other types of USRP boards. It is
>>     determined that it is not an antenna problem.
>>
>>
>>     We used B210 and B205mini for comparison. See the attachment for
>>     video results. =E2=80=9CB205-antenna.mp4=E2=80=9D & =E2=80=9CB210-=
antenna.mp4=E2=80=9D
>>
>>
>>     We used another B205mini for comparison. The phenomenon is the
>>     same. See the attachment for video results. =E2=80=9CB205-DuPont
>>     line.mp4=E2=80=9D & =E2=80=9CB205-DuPont line-Acrylic.mp4=E2=80=9D
>>
>>
>>     We are not sure whether this phenomenon is caused by the absence
>>     of a shielded enclosure. But we don't think it will have such a
>>     big impact.
>>
>>
>>     I want to ask if there is any way to solve this problem.
>>
>     I haven't seen this problem with the several B205-mini that I have.
>
>     Check your cables.
>
>     Make sure that you aren't *over* tightening the SMA connector and
>     breaking it at the shield.
>
>     Make sure that your source is well matched to 50 ohms. Impedance
>     mismatches (significant ones can cause high shield
>     =C2=A0 currents, making the performance inconsistent, and even subj=
ect
>     to placement of the input cable.
>
>
>>     *=E4=BB=8E=E7=BD=91=E6=98=93163=E9=82=AE=E7=AE=B1=E5=8F=91=E6=9D=A5=
=E7=9A=84=E8=B6=85=E5=A4=A7=E9=99=84=E4=BB=B6*
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3dMzeTYb=
DfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>
>>     B205-antenna.mp4
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3dMzeTYb=
DfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>(3.61M,
>>     2022=E5=B9=B411=E6=9C=8825=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)
>>     =E5=9C=A8=E7=BA=BF=E9=A2=84=E8=A7=88
>>     <http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4=
wg5EhEj3dMzeTYbDfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&title=3DThe%20=
signal%20received%20by%20B205mini%20is%20unstable>
>>     | =E4=B8=8B=E8=BD=BD
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3dMzeTYb=
DfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvLDq8jg3S=
yyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>
>>     B205-DuPont line.mp4
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvLDq8jg3S=
yyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>(2.75M,
>>     2022=E5=B9=B411=E6=9C=8825=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)
>>     =E5=9C=A8=E7=BA=BF=E9=A2=84=E8=A7=88
>>     <http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2=
Ud3W3QvLDq8jg3SyyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&title=3DThe%20=
signal%20received%20by%20B205mini%20is%20unstable>
>>     | =E4=B8=8B=E8=BD=BD
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvLDq8jg3S=
yyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8TDiQCPyA=
3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>
>>     B205-DuPont line-Acrylic.mp4
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8TDiQCPyA=
3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>(17.49M,
>>     2022=E5=B9=B411=E6=9C=8825=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)
>>     =E5=9C=A8=E7=BA=BF=E9=A2=84=E8=A7=88
>>     <http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpnK9WW40=
9V6W8S8TDiQCPyA3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&title=3DThe%20=
signal%20received%20by%20B205mini%20is%20unstable>
>>     | =E4=B8=8B=E8=BD=BD
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8TDiQCPyA=
3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5pltUyAgi5f=
Q2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>
>>     B210-antenna.mp4
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5pltUyAgi5f=
Q2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>(4.56M,
>>     2022=E5=B9=B411=E6=9C=8825=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)
>>     =E5=9C=A8=E7=BA=BF=E9=A2=84=E8=A7=88
>>     <http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpp2k2utm=
exby5pltUyAgi5fQ2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&title=3DThe%20=
signal%20received%20by%20B205mini%20is%20unstable>
>>     | =E4=B8=8B=E8=BD=BD
>>     <https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5pltUyAgi5f=
Q2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&title=3DThe%20signal%20receiv=
ed%20by%20B205mini%20is%20unstable>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>

--------------pgrEha3NpDVrwR3P0gE0dvMU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/10/2022 00:37, luteo wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:e08d7d7.38aa.18417bb0aba.Coremail.xdcple@163.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div
        style=3D"line-height:1.7;color:#000000;font-size:14px;font-family=
:Arial">
        <p style=3D"margin: 0;">Thank you very much for your reply!</p>
        <p style=3D"margin: 0;"><br>
        </p>
        <p style=3D"margin: 0;">I have two B205minis in my hand. Both of
          them have the phenomenon described previously, but the same
          antenna does not have this phenomenon on the B210.</p>
        <p style=3D"margin: 0;"><br>
        </p>
        <p style=3D"margin: 0;">Refer to the two videos of B205mini
          operating under GQRX ("B205 DuPont line. mp4"&amp;"B205 DuPont
          line Acrylic. mp4") , I use the probe to insert it into the
          SMA interface, and the signal will be lost after changing
          different directions. My understanding is that the inner hole
          of the SMA interface should be the same as the metal probe on
          any surface. However, in the actual test, the two B205minis
          all show that the signal will be lost at the same position,
          which is also my confusion.</p>
        <p style=3D"margin: 0;"><br>
        </p>
        <p style=3D"margin: 0;">If you can, you can also test it in my
          way.</p>
        <p style=3D"margin: 0;"><br>
        </p>
        <p style=3D"margin: 0;"><br>
        </p>
      </div>
    </blockquote>
    I just watched your videos.=C2=A0=C2=A0=C2=A0 That's not the way SMA =
connectors are
    intended to be used.=C2=A0=C2=A0 The internet construction of<br>
    =C2=A0 different SMA connectors will behave somewhat differently unde=
r
    these circumstances (with a random piece of wire<br>
    =C2=A0 jammed into the SMA socket).=C2=A0=C2=A0 Furthermore, the inte=
rnal spring
    socket can get permanently deformed by doing that.<br>
    =C2=A0 Please don't.=C2=A0=C2=A0=C2=A0 Ettus/NI cannot guarantee perf=
ormance if you
    aren't using the SMA connector the way SMA connectors<br>
    =C2=A0 were intended to be used.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:e08d7d7.38aa.18417bb0aba.Coremail.xdcple@163.com">
      <div
        style=3D"line-height:1.7;color:#000000;font-size:14px;font-family=
:Arial">
        <p style=3D"margin: 0;"><br>
        </p>
        <p style=3D"margin: 0;"><br>
        </p>
        <p style=3D"margin: 0;"><br>
        </p>
        <p>At 2022-10-26 20:15:51, "Marcus D. Leech"
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun=
@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote:</p>
        <blockquote id=3D"isReplyContent" style=3D"PADDING-LEFT: 1ex;
          MARGIN: 0px 0px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid">
          <div class=3D"moz-cite-prefix">On 2022-10-26 01:37, luteo wrote=
:<br>
          </div>
          <blockquote type=3D"cite"
            cite=3D"mid:665f49e9.5052.18412cbb604.Coremail.xdcple@163.com=
">
            <div
              style=3D"line-height:1.7;color:#000000;font-size:14px;font-=
family:Arial">
              <div style=3D"line-height: 1.7;">
                <p style=3D"margin: 0px;">When testing the B205mini, we
                  found that the SMA connector was tightened to the most
                  tight, but there may be no signal or the signal is
                  weak.</p>
                <p style=3D"margin: 0px;"><br>
                </p>
                <p style=3D"margin: 0px;">Of course not always. Sometimes
                  it is better to loosen the SMA connector a little.</p>
                <p style=3D"margin: 0px;"><br>
                </p>
                <p style=3D"margin: 0px;">In short, the reception effect
                  requires repeated adjustment of the sma connector.
                  Even after the sma is tightened, applying an external
                  force on the plug position may change the quality of
                  the received signal.</p>
                <p style=3D"margin: 0px;"><br>
                </p>
                <p style=3D"margin: 0px;">There is no similar problem on
                  other types of USRP boards. It is determined that it
                  is not an antenna problem.</p>
                <p style=3D"margin: 0px;"><br>
                </p>
                <p style=3D"margin: 0px;">We used B210 and B205mini for
                  comparison. See the attachment for video results. =E2=80=
=9C<span
                    style=3D"background-color: rgb(227, 234, 244); color:
                    rgb(102, 102, 102); font-family: &quot;Microsoft
                    Yahei&quot;, verdana; font-size: 12px; white-space:
                    nowrap;">B205-antenna.mp4</span>=E2=80=9D &amp; =E2=80=
=9C<span
                    style=3D"background-color: rgb(227, 234, 244); color:
                    rgb(102, 102, 102); font-family: &quot;Microsoft
                    Yahei&quot;, verdana; font-size: 12px; white-space:
                    nowrap;">B210-antenna.mp4</span>=E2=80=9D</p>
                <p style=3D"margin: 0px;"><br>
                </p>
                <p style=3D"margin: 0px;">We used another B205mini for
                  comparison. The phenomenon is the same. See the
                  attachment for video results. =E2=80=9C<span
                    style=3D"background-color: rgb(227, 234, 244); color:
                    rgb(102, 102, 102); font-family: &quot;Microsoft
                    Yahei&quot;, verdana; font-size: 12px; white-space:
                    nowrap;">B205-DuPont line.mp4</span>=E2=80=9D &amp; =E2=
=80=9C<span
                    style=3D"background-color: rgb(227, 234, 244); color:
                    rgb(102, 102, 102); font-family: &quot;Microsoft
                    Yahei&quot;, verdana; font-size: 12px; white-space:
                    nowrap;">B205-DuPont line-Acrylic.mp4</span>=E2=80=9D=
</p>
                <p style=3D"margin: 0px;"><br>
                </p>
                <p style=3D"margin: 0px;">We are not sure whether this
                  phenomenon is caused by the absence of a shielded
                  enclosure. But we don't think it will have such a big
                  impact.</p>
                <p style=3D"margin: 0px;"><br>
                </p>
                <p style=3D"margin: 0px;">I want to ask if there is any
                  way to solve this problem.</p>
              </div>
            </div>
          </blockquote>
          I haven't seen this problem with the several B205-mini that I
          have.<br>
          <br>
          Check your cables.<br>
          <br>
          Make sure that you aren't *over* tightening the SMA connector
          and breaking it at the shield.<br>
          <br>
          Make sure that your source is well matched to 50 ohms.=C2=A0
          Impedance mismatches (significant ones can cause high shield<br=
>
          =C2=A0 currents, making the performance inconsistent, and even
          subject to placement of the input cable.<br>
          <br>
          <br>
          <blockquote type=3D"cite"
            cite=3D"mid:665f49e9.5052.18412cbb604.Coremail.xdcple@163.com=
">
            <div id=3D"divNeteaseBigAttach"
style=3D"clear:both;margin-top:10px;margin-bottom:15px;background:#DEE8F2=
;padding:4px;font-family:verdana,Arial,Helvetica,sans-serif">
              <div style=3D"font-size:14px;padding:4px 8px 8px
                8px;line-height:16px"><b>=E4=BB=8E=E7=BD=91=E6=98=93163=E9=
=82=AE=E7=AE=B1=E5=8F=91=E6=9D=A5=E7=9A=84=E8=B6=85=E5=A4=A7=E9=99=84=E4=BB=
=B6</b></div>
              <div style=3D"background:#fff;padding:4px">
                <div style=3D"clear:both;height:36px;padding:6px 4px">
                  <div style=3D"float:left;width:36px"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3dMz=
eTYbDfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                      moz-do-not-send=3D"true"><img
                        src=3D"https://mimg.127.net/xm/all/fj/ico-bfile-2=
8.gif"
                        moz-do-not-send=3D"true" border=3D"0"></a></div>
                  <div>
                    <div
                      style=3D"padding:0px;font-size:12px;line-height:14p=
x"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3dMz=
eTYbDfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
download=3D"https://mail.163.com/large-attachment-download/index.html?p=3D=
X-NETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3=
dMzeTYbDfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&amp;title=3DThe%20sign=
al%20received%20by%20B205mini%20is%20unstable"
preview=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpokrr=
FG4wg5EhEj3dMzeTYbDfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&amp;title=3D=
The%20signal%20received%20by%20B205mini%20is%20unstable"
                        fileid=3D"undefined" filename=3D"B205-antenna.mp4=
"
                        filesize=3D"3781934" expiretime=3D"1669354526418"
                        target=3D"_blank"
                        style=3D"color:#000;text-decoration:none"
                        moz-do-not-send=3D"true">B205-antenna.mp4</a><spa=
n
                        style=3D"color:#bbb"> (3.61M, 2022=E5=B9=B411=E6=9C=
=8825=E6=97=A5 13:35
                        =E5=88=B0=E6=9C=9F)</span></div>
                    <div style=3D"padding:4px
                      0px;font-size:12px;line-height:14px"><a
href=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4=
wg5EhEj3dMzeTYbDfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&amp;title=3DTh=
e%20signal%20received%20by%20B205mini%20is%20unstable"
                        moz-do-not-send=3D"true">=E5=9C=A8=E7=BA=BF=E9=A2=
=84=E8=A7=88</a> | <a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3dMz=
eTYbDfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                        moz-do-not-send=3D"true">=E4=B8=8B=E8=BD=BD</a></=
div>
                  </div>
                </div>
                <div style=3D"clear:both;height:36px;padding:6px 4px">
                  <div style=3D"float:left;width:36px"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvLDq8=
jg3SyyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                      moz-do-not-send=3D"true"><img
                        src=3D"https://mimg.127.net/xm/all/fj/ico-bfile-2=
8.gif"
                        moz-do-not-send=3D"true" border=3D"0"></a></div>
                  <div>
                    <div
                      style=3D"padding:0px;font-size:12px;line-height:14p=
x"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvLDq8=
jg3SyyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
download=3D"https://mail.163.com/large-attachment-download/index.html?p=3D=
X-NETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvL=
Dq8jg3SyyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&amp;title=3DThe%20sign=
al%20received%20by%20B205mini%20is%20unstable"
preview=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpiA1l=
NE2Ud3W3QvLDq8jg3SyyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&amp;title=3D=
The%20signal%20received%20by%20B205mini%20is%20unstable"
                        fileid=3D"undefined" filename=3D"B205-DuPont
                        line.mp4" filesize=3D"2881646"
                        expiretime=3D"1669354528730" target=3D"_blank"
                        style=3D"color:#000;text-decoration:none"
                        moz-do-not-send=3D"true">B205-DuPont line.mp4</a>=
<span
                        style=3D"color:#bbb"> (2.75M, 2022=E5=B9=B411=E6=9C=
=8825=E6=97=A5 13:35
                        =E5=88=B0=E6=9C=9F)</span></div>
                    <div style=3D"padding:4px
                      0px;font-size:12px;line-height:14px"><a
href=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2=
Ud3W3QvLDq8jg3SyyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&amp;title=3DTh=
e%20signal%20received%20by%20B205mini%20is%20unstable"
                        moz-do-not-send=3D"true">=E5=9C=A8=E7=BA=BF=E9=A2=
=84=E8=A7=88</a> | <a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvLDq8=
jg3SyyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                        moz-do-not-send=3D"true">=E4=B8=8B=E8=BD=BD</a></=
div>
                  </div>
                </div>
                <div style=3D"clear:both;height:36px;padding:6px 4px">
                  <div style=3D"float:left;width:36px"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8TDiQ=
CPyA3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                      moz-do-not-send=3D"true"><img
                        src=3D"https://mimg.127.net/xm/all/fj/ico-bfile-2=
8.gif"
                        moz-do-not-send=3D"true" border=3D"0"></a></div>
                  <div>
                    <div
                      style=3D"padding:0px;font-size:12px;line-height:14p=
x"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8TDiQ=
CPyA3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
download=3D"https://mail.163.com/large-attachment-download/index.html?p=3D=
X-NETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8T=
DiQCPyA3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&amp;title=3DThe%20sign=
al%20received%20by%20B205mini%20is%20unstable"
preview=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpnK9W=
W409V6W8S8TDiQCPyA3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&amp;title=3D=
The%20signal%20received%20by%20B205mini%20is%20unstable"
                        fileid=3D"undefined" filename=3D"B205-DuPont
                        line-Acrylic.mp4" filesize=3D"18342554"
                        expiretime=3D"1669354530303" target=3D"_blank"
                        style=3D"color:#000;text-decoration:none"
                        moz-do-not-send=3D"true">B205-DuPont
                        line-Acrylic.mp4</a><span style=3D"color:#bbb">
                        (17.49M, 2022=E5=B9=B411=E6=9C=8825=E6=97=A5 13:3=
5 =E5=88=B0=E6=9C=9F)</span></div>
                    <div style=3D"padding:4px
                      0px;font-size:12px;line-height:14px"><a
href=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpnK9WW40=
9V6W8S8TDiQCPyA3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&amp;title=3DTh=
e%20signal%20received%20by%20B205mini%20is%20unstable"
                        moz-do-not-send=3D"true">=E5=9C=A8=E7=BA=BF=E9=A2=
=84=E8=A7=88</a> | <a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8TDiQ=
CPyA3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                        moz-do-not-send=3D"true">=E4=B8=8B=E8=BD=BD</a></=
div>
                  </div>
                </div>
                <div style=3D"clear:both;height:36px;padding:6px 4px">
                  <div style=3D"float:left;width:36px"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5pltUyA=
gi5fQ2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                      moz-do-not-send=3D"true"><img
                        src=3D"https://mimg.127.net/xm/all/fj/ico-bfile-2=
8.gif"
                        moz-do-not-send=3D"true" border=3D"0"></a></div>
                  <div>
                    <div
                      style=3D"padding:0px;font-size:12px;line-height:14p=
x"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5pltUyA=
gi5fQ2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
download=3D"https://mail.163.com/large-attachment-download/index.html?p=3D=
X-NETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5plt=
UyAgi5fQ2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&amp;title=3DThe%20sign=
al%20received%20by%20B205mini%20is%20unstable"
preview=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpp2k2=
utmexby5pltUyAgi5fQ2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&amp;title=3D=
The%20signal%20received%20by%20B205mini%20is%20unstable"
                        fileid=3D"undefined" filename=3D"B210-antenna.mp4=
"
                        filesize=3D"4779643" expiretime=3D"1669354539896"
                        target=3D"_blank"
                        style=3D"color:#000;text-decoration:none"
                        moz-do-not-send=3D"true">B210-antenna.mp4</a><spa=
n
                        style=3D"color:#bbb"> (4.56M, 2022=E5=B9=B411=E6=9C=
=8825=E6=97=A5 13:35
                        =E5=88=B0=E6=9C=9F)</span></div>
                    <div style=3D"padding:4px
                      0px;font-size:12px;line-height:14px"><a
href=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpp2k2utm=
exby5pltUyAgi5fQ2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&amp;title=3DTh=
e%20signal%20received%20by%20B205mini%20is%20unstable"
                        moz-do-not-send=3D"true">=E5=9C=A8=E7=BA=BF=E9=A2=
=84=E8=A7=88</a> | <a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5pltUyA=
gi5fQ2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                        moz-do-not-send=3D"true">=E4=B8=8B=E8=BD=BD</a></=
div>
                  </div>
                </div>
              </div>
            </div>
            <br>
            <fieldset class=3D"moz-mime-attachment-header"></fieldset>
            <pre class=3D"moz-quote-pre" wrap=3D"">______________________=
_________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated moz-txt-l=
ink-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D=
"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated moz-=
txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz-d=
o-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
          </blockquote>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------pgrEha3NpDVrwR3P0gE0dvMU--

--===============8995222291615928677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8995222291615928677==--
