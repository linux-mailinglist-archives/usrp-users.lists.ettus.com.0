Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E2E60E07D
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 14:17:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54738383E41
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 08:17:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666786667; bh=f/tsrvRY1yZ9jy7JUL3u5/BRn45yAXDTSNgNKUckirk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NLTEwOPXdUtcf8zyudI/9R55lJYi2FBkRkGD7bOOFOgjm6cIByQfix7/fky8w+5Vb
	 C8mytn7/80vt3GEM5vqWH5eSN4tY79FsB1HSMhzfhJJdl+tjQQY5a1lJK5rH3Lkg11
	 knM7aOC87UIN/lPXIgdd8KY5b+s4uHN+2wu6teF2mFg2hh0OII2VV+jjxALO9dt387
	 pxsgEL/KWQ0NTrfvu2HdJzWcsuihrfLWp4SEkYMKttbADVDMWVkYjDfDeZM0mu+6bD
	 MM/lxkGTwUTpAlXXmocojE1DuhJpXO2SVBApjITRwYQ0U0AWQC+dK+1Mpo2CIHjjAh
	 EJNsZaAexAdmQ==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 10AA63813E4
	for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 08:15:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Vidofsk5";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id w29so2582062qtv.9
        for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 05:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AC4eJvx8v8Sys3P5Dpta4/cFu28osOBU2At0B1GXyOs=;
        b=Vidofsk5C7cFSDSDX4tkui+eRwLnLNoD7dyZGmbSXuy79Zp/jZF2t2oTXsRMmfomsS
         0OCoeSw3Qt8Qixb6ktfd6MdrBHNaRJwOlSgnX/BMMZqoJnga5Ldvofo0Bmh3vIvKyODY
         UO109whM+Lnvn1LKWZbTxMsd/4qsNzSeAsM/JZwOblMvVk5PBWPDTfGw4Dgrj7Hp9/gp
         OjUZJJbreCpWqvzoHX90StGSGXSV08HjusOHiT9B978J7E7dvfZ+UzcXZ1fcGsJv2D/h
         Payn/KFEsyBTo/928BqGRTcrBV6uzJ3tKuT89juyKFc9Uiy8x1AzSn8Vf968p0Nq6IZl
         mBjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AC4eJvx8v8Sys3P5Dpta4/cFu28osOBU2At0B1GXyOs=;
        b=QvZKdyyrG76XdXYi0sv6HHFRgF/qxgdM/UDpG3bwOj1bYhF8NphTt+80x3RrpuWubJ
         7Qn3ZT3IqzxR/bny+9wS7WN4e7kSY/IGmOA0x11wapgjMiQ6n1itz12J8lst0SXf3V4R
         EC0vFq4owAZY9AwDxh4Vst5DK1GoGAsmtiYH00DgLgQ6FqDtVGy6MAlQElOzbsVmhpWu
         7OTfUc7qAkPFocZyIHvwOFyQckhPeWwdauWay+4IR9vbc7eL9HxtTrucsKSmHz7/igeM
         0mYMzzF5oNKuX1V7NveB27IWJNr5Nh8AfC21HnnSOPTnB+e1vBzhs21EM6nDcUaGu0NI
         SemQ==
X-Gm-Message-State: ACrzQf2rJdcHZ26DUQGkhguBqccI9Ju0TkP00P8BN2gNRDX/z5kfLIaI
	M3CjMMyBgP4Qnzd34I/FhvdgE333c6s=
X-Google-Smtp-Source: AMsMyM5KD5JAUZZnUkV69XguE/HvEBo9fbP6yUkNBNqm1s3fTHEeWfTtJeouwKQ0OvVQND84AXnYWw==
X-Received: by 2002:ac8:58d2:0:b0:39d:ac0:b5da with SMTP id u18-20020ac858d2000000b0039d0ac0b5damr27080555qta.631.1666786552216;
        Wed, 26 Oct 2022 05:15:52 -0700 (PDT)
Received: from [192.168.2.174] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id r5-20020a05620a298500b006ee7e223bb8sm3883811qkp.39.2022.10.26.05.15.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 05:15:51 -0700 (PDT)
Message-ID: <860b77c7-433c-bbd7-4b47-e84394058a95@gmail.com>
Date: Wed, 26 Oct 2022 08:15:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <665f49e9.5052.18412cbb604.Coremail.xdcple@163.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <665f49e9.5052.18412cbb604.Coremail.xdcple@163.com>
Message-ID-Hash: QMHVCHBZVUCWFQND4GYRV4LSGR6PBBXW
X-Message-ID-Hash: QMHVCHBZVUCWFQND4GYRV4LSGR6PBBXW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The signal received by B205mini is unstable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QMHVCHBZVUCWFQND4GYRV4LSGR6PBBXW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5011350051727121460=="

This is a multi-part message in MIME format.
--===============5011350051727121460==
Content-Type: multipart/alternative;
 boundary="------------nMFvZwa0xMcglxGrmYXmGzyE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------nMFvZwa0xMcglxGrmYXmGzyE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-26 01:37, luteo wrote:
>
> When testing the B205mini, we found that the SMA connector was=20
> tightened to the most tight, but there may be no signal or the signal=20
> is weak.
>
>
> Of course not always. Sometimes it is better to loosen the SMA=20
> connector a little.
>
>
> In short, the reception effect requires repeated adjustment of the sma=20
> connector. Even after the sma is tightened, applying an external force=20
> on the plug position may change the quality of the received signal.
>
>
> There is no similar problem on other types of USRP boards. It is=20
> determined that it is not an antenna problem.
>
>
> We used B210 and B205mini for comparison. See the attachment for video=20
> results. =E2=80=9CB205-antenna.mp4=E2=80=9D & =E2=80=9CB210-antenna.mp4=
=E2=80=9D
>
>
> We used another B205mini for comparison. The phenomenon is the same.=20
> See the attachment for video results. =E2=80=9CB205-DuPont line.mp4=E2=80=
=9D &=20
> =E2=80=9CB205-DuPont line-Acrylic.mp4=E2=80=9D
>
>
> We are not sure whether this phenomenon is caused by the absence of a=20
> shielded enclosure. But we don't think it will have such a big impact.
>
>
> I want to ask if there is any way to solve this problem.
>
I haven't seen this problem with the several B205-mini that I have.

Check your cables.

Make sure that you aren't *over* tightening the SMA connector and=20
breaking it at the shield.

Make sure that your source is well matched to 50 ohms.=C2=A0 Impedance=20
mismatches (significant ones can cause high shield
 =C2=A0 currents, making the performance inconsistent, and even subject t=
o=20
placement of the input cable.


> *=E4=BB=8E=E7=BD=91=E6=98=93163=E9=82=AE=E7=AE=B1=E5=8F=91=E6=9D=A5=E7=9A=
=84=E8=B6=85=E5=A4=A7=E9=99=84=E4=BB=B6*
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3dMzeTYbDfSr3=
lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>
> B205-antenna.mp4=20
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3dMzeTYbDfSr3=
lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>(3.61M,=20
> 2022=E5=B9=B411=E6=9C=8825=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)
> =E5=9C=A8=E7=BA=BF=E9=A2=84=E8=A7=88=20
> <http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5Eh=
Ej3dMzeTYbDfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&title=3DThe%20signa=
l%20received%20by%20B205mini%20is%20unstable>=20
> | =E4=B8=8B=E8=BD=BD=20
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3dMzeTYbDfSr3=
lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvLDq8jg3SyyUkX=
84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>
> B205-DuPont line.mp4=20
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvLDq8jg3SyyUkX=
84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>(2.75M,=20
> 2022=E5=B9=B411=E6=9C=8825=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)
> =E5=9C=A8=E7=BA=BF=E9=A2=84=E8=A7=88=20
> <http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3=
QvLDq8jg3SyyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&title=3DThe%20signa=
l%20received%20by%20B205mini%20is%20unstable>=20
> | =E4=B8=8B=E8=BD=BD=20
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvLDq8jg3SyyUkX=
84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8TDiQCPyA3VeV6=
FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>
> B205-DuPont line-Acrylic.mp4=20
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8TDiQCPyA3VeV6=
FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>(17.49M,=20
> 2022=E5=B9=B411=E6=9C=8825=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)
> =E5=9C=A8=E7=BA=BF=E9=A2=84=E8=A7=88=20
> <http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8=
S8TDiQCPyA3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&title=3DThe%20signa=
l%20received%20by%20B205mini%20is%20unstable>=20
> | =E4=B8=8B=E8=BD=BD=20
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8TDiQCPyA3VeV6=
FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5pltUyAgi5fQ2rtJ=
aqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>
> B210-antenna.mp4=20
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5pltUyAgi5fQ2rtJ=
aqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>(4.56M,=20
> 2022=E5=B9=B411=E6=9C=8825=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)
> =E5=9C=A8=E7=BA=BF=E9=A2=84=E8=A7=88=20
> <http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5=
pltUyAgi5fQ2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&title=3DThe%20signa=
l%20received%20by%20B205mini%20is%20unstable>=20
> | =E4=B8=8B=E8=BD=BD=20
> <https://mail.163.com/large-attachment-download/index.html?p=3DX-NETEAS=
E-HUGE-ATTACHMENT&file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5pltUyAgi5fQ2rtJ=
aqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&title=3DThe%20signal%20received%20=
by%20B205mini%20is%20unstable>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------nMFvZwa0xMcglxGrmYXmGzyE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-26 01:37, luteo wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:665f49e9.5052.18412cbb604.Coremail.xdcple@163.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div
        style=3D"line-height:1.7;color:#000000;font-size:14px;font-family=
:Arial">
        <div style=3D"line-height: 1.7;">
          <p style=3D"margin: 0px;">When testing the B205mini, we found
            that the SMA connector was tightened to the most tight, but
            there may be no signal or the signal is weak.</p>
          <p style=3D"margin: 0px;"><br>
          </p>
          <p style=3D"margin: 0px;">Of course not always. Sometimes it is
            better to loosen the SMA connector a little.</p>
          <p style=3D"margin: 0px;"><br>
          </p>
          <p style=3D"margin: 0px;">In short, the reception effect
            requires repeated adjustment of the sma connector. Even
            after the sma is tightened, applying an external force on
            the plug position may change the quality of the received
            signal.</p>
          <p style=3D"margin: 0px;"><br>
          </p>
          <p style=3D"margin: 0px;">There is no similar problem on other
            types of USRP boards. It is determined that it is not an
            antenna problem.</p>
          <p style=3D"margin: 0px;"><br>
          </p>
          <p style=3D"margin: 0px;">We used B210 and B205mini for
            comparison. See the attachment for video results. =E2=80=9C<s=
pan
              style=3D"background-color: rgb(227, 234, 244); color:
              rgb(102, 102, 102); font-family: &quot;Microsoft
              Yahei&quot;, verdana; font-size: 12px; white-space:
              nowrap;">B205-antenna.mp4</span>=E2=80=9D &amp; =E2=80=9C<s=
pan
              style=3D"background-color: rgb(227, 234, 244); color:
              rgb(102, 102, 102); font-family: &quot;Microsoft
              Yahei&quot;, verdana; font-size: 12px; white-space:
              nowrap;">B210-antenna.mp4</span>=E2=80=9D</p>
          <p style=3D"margin: 0px;"><br>
          </p>
          <p style=3D"margin: 0px;">We used another B205mini for
            comparison. The phenomenon is the same. See the attachment
            for video results. =E2=80=9C<span style=3D"background-color: =
rgb(227,
              234, 244); color: rgb(102, 102, 102); font-family:
              &quot;Microsoft Yahei&quot;, verdana; font-size: 12px;
              white-space: nowrap;">B205-DuPont line.mp4</span>=E2=80=9D =
&amp; =E2=80=9C<span
              style=3D"background-color: rgb(227, 234, 244); color:
              rgb(102, 102, 102); font-family: &quot;Microsoft
              Yahei&quot;, verdana; font-size: 12px; white-space:
              nowrap;">B205-DuPont line-Acrylic.mp4</span>=E2=80=9D</p>
          <p style=3D"margin: 0px;"><br>
          </p>
          <p style=3D"margin: 0px;">We are not sure whether this
            phenomenon is caused by the absence of a shielded enclosure.
            But we don't think it will have such a big impact.</p>
          <p style=3D"margin: 0px;"><br>
          </p>
          <p style=3D"margin: 0px;">I want to ask if there is any way to
            solve this problem.</p>
        </div>
      </div>
    </blockquote>
    I haven't seen this problem with the several B205-mini that I have.<b=
r>
    <br>
    Check your cables.<br>
    <br>
    Make sure that you aren't *over* tightening the SMA connector and
    breaking it at the shield.<br>
    <br>
    Make sure that your source is well matched to 50 ohms.=C2=A0 Impedanc=
e
    mismatches (significant ones can cause high shield<br>
    =C2=A0 currents, making the performance inconsistent, and even subjec=
t to
    placement of the input cable.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:665f49e9.5052.18412cbb604.Coremail.xdcple@163.com">
      <div id=3D"divNeteaseBigAttach"
style=3D"clear:both;margin-top:10px;margin-bottom:15px;background:#DEE8F2=
;padding:4px;font-family:verdana,Arial,Helvetica,sans-serif">
        <div style=3D"font-size:14px;padding:4px 8px 8px
          8px;line-height:16px"><b>=E4=BB=8E=E7=BD=91=E6=98=93163=E9=82=AE=
=E7=AE=B1=E5=8F=91=E6=9D=A5=E7=9A=84=E8=B6=85=E5=A4=A7=E9=99=84=E4=BB=B6<=
/b></div>
        <div style=3D"background:#fff;padding:4px">
          <div style=3D"clear:both;height:36px;padding:6px 4px">
            <div style=3D"float:left;width:36px"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3dMz=
eTYbDfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                moz-do-not-send=3D"true"><img
                  src=3D"https://mimg.127.net/xm/all/fj/ico-bfile-28.gif"
                  moz-do-not-send=3D"true" border=3D"0"></a></div>
            <div>
              <div style=3D"padding:0px;font-size:12px;line-height:14px">=
<a
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
                  fileid=3D"undefined" filename=3D"B205-antenna.mp4"
                  filesize=3D"3781934" expiretime=3D"1669354526418"
                  target=3D"_blank"
                  style=3D"color:#000;text-decoration:none"
                  moz-do-not-send=3D"true">B205-antenna.mp4</a><span
                  style=3D"color:#bbb"> (3.61M, 2022=E5=B9=B411=E6=9C=882=
5=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)</span></div>
              <div style=3D"padding:4px
                0px;font-size:12px;line-height:14px"><a
href=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4=
wg5EhEj3dMzeTYbDfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&amp;title=3DTh=
e%20signal%20received%20by%20B205mini%20is%20unstable"
                  moz-do-not-send=3D"true">=E5=9C=A8=E7=BA=BF=E9=A2=84=E8=
=A7=88</a> | <a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpokrrFG4wg5EhEj3dMz=
eTYbDfSr3lygA3p9yWJTf8RpsEiHvF7oIAGV5j9A5bObShQ&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                  moz-do-not-send=3D"true">=E4=B8=8B=E8=BD=BD</a></div>
            </div>
          </div>
          <div style=3D"clear:both;height:36px;padding:6px 4px">
            <div style=3D"float:left;width:36px"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvLDq8=
jg3SyyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                moz-do-not-send=3D"true"><img
                  src=3D"https://mimg.127.net/xm/all/fj/ico-bfile-28.gif"
                  moz-do-not-send=3D"true" border=3D"0"></a></div>
            <div>
              <div style=3D"padding:0px;font-size:12px;line-height:14px">=
<a
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
                  fileid=3D"undefined" filename=3D"B205-DuPont line.mp4"
                  filesize=3D"2881646" expiretime=3D"1669354528730"
                  target=3D"_blank"
                  style=3D"color:#000;text-decoration:none"
                  moz-do-not-send=3D"true">B205-DuPont line.mp4</a><span
                  style=3D"color:#bbb"> (2.75M, 2022=E5=B9=B411=E6=9C=882=
5=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)</span></div>
              <div style=3D"padding:4px
                0px;font-size:12px;line-height:14px"><a
href=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2=
Ud3W3QvLDq8jg3SyyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&amp;title=3DTh=
e%20signal%20received%20by%20B205mini%20is%20unstable"
                  moz-do-not-send=3D"true">=E5=9C=A8=E7=BA=BF=E9=A2=84=E8=
=A7=88</a> | <a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpiA1lNE2Ud3W3QvLDq8=
jg3SyyUkX84aeua9IwvDNKuSyBwBnqjWHYmxI8meJOpD52w&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                  moz-do-not-send=3D"true">=E4=B8=8B=E8=BD=BD</a></div>
            </div>
          </div>
          <div style=3D"clear:both;height:36px;padding:6px 4px">
            <div style=3D"float:left;width:36px"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8TDiQ=
CPyA3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                moz-do-not-send=3D"true"><img
                  src=3D"https://mimg.127.net/xm/all/fj/ico-bfile-28.gif"
                  moz-do-not-send=3D"true" border=3D"0"></a></div>
            <div>
              <div style=3D"padding:0px;font-size:12px;line-height:14px">=
<a
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
                  moz-do-not-send=3D"true">B205-DuPont line-Acrylic.mp4</=
a><span
                  style=3D"color:#bbb"> (17.49M, 2022=E5=B9=B411=E6=9C=88=
25=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)</span></div>
              <div style=3D"padding:4px
                0px;font-size:12px;line-height:14px"><a
href=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpnK9WW40=
9V6W8S8TDiQCPyA3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&amp;title=3DTh=
e%20signal%20received%20by%20B205mini%20is%20unstable"
                  moz-do-not-send=3D"true">=E5=9C=A8=E7=BA=BF=E9=A2=84=E8=
=A7=88</a> | <a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpnK9WW409V6W8S8TDiQ=
CPyA3VeV6FYSWlC7OJsCFwBCqLvbG56A7iheLpntgQeC5TQ&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                  moz-do-not-send=3D"true">=E4=B8=8B=E8=BD=BD</a></div>
            </div>
          </div>
          <div style=3D"clear:both;height:36px;padding:6px 4px">
            <div style=3D"float:left;width:36px"><a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5pltUyA=
gi5fQ2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                moz-do-not-send=3D"true"><img
                  src=3D"https://mimg.127.net/xm/all/fj/ico-bfile-28.gif"
                  moz-do-not-send=3D"true" border=3D"0"></a></div>
            <div>
              <div style=3D"padding:0px;font-size:12px;line-height:14px">=
<a
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
                  fileid=3D"undefined" filename=3D"B210-antenna.mp4"
                  filesize=3D"4779643" expiretime=3D"1669354539896"
                  target=3D"_blank"
                  style=3D"color:#000;text-decoration:none"
                  moz-do-not-send=3D"true">B210-antenna.mp4</a><span
                  style=3D"color:#bbb"> (4.56M, 2022=E5=B9=B411=E6=9C=882=
5=E6=97=A5 13:35 =E5=88=B0=E6=9C=9F)</span></div>
              <div style=3D"padding:4px
                0px;font-size:12px;line-height:14px"><a
href=3D"http://fs.163.com/fs/preview/?file=3DSy2W9lTU-w7vguqZrlWFpp2k2utm=
exby5pltUyAgi5fQ2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&amp;title=3DTh=
e%20signal%20received%20by%20B205mini%20is%20unstable"
                  moz-do-not-send=3D"true">=E5=9C=A8=E7=BA=BF=E9=A2=84=E8=
=A7=88</a> | <a
href=3D"https://mail.163.com/large-attachment-download/index.html?p=3DX-N=
ETEASE-HUGE-ATTACHMENT&amp;file=3DSy2W9lTU-w7vguqZrlWFpp2k2utmexby5pltUyA=
gi5fQ2rtJaqIl00803xa-rfjWzJBwQaU-iS4kQWfkEF12fA&amp;title=3DThe%20signal%=
20received%20by%20B205mini%20is%20unstable"
                  moz-do-not-send=3D"true">=E4=B8=8B=E8=BD=BD</a></div>
            </div>
          </div>
        </div>
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

--------------nMFvZwa0xMcglxGrmYXmGzyE--

--===============5011350051727121460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5011350051727121460==--
