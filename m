Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E47B846D971
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 18:15:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DC12384AE1
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 12:15:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="d0xCFv9P";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id B972B3846F3
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 12:14:12 -0500 (EST)
Received: by mail-yb1-f180.google.com with SMTP id x32so7468525ybi.12
        for <usrp-users@lists.ettus.com>; Wed, 08 Dec 2021 09:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zGf+yrqa4cuXPn1fFW8gkYJtzradZmjHFwfXza39t04=;
        b=d0xCFv9Pd5SVrDPeKC6rPydLanMqvJ/BxaMlMaTpeifacGt1LBtpxbZ7iOIxJCqRJz
         AecTD0nv3uXr2bPzxJjjcy51L6b9sceYRMj4O268UehIu3PycLIp4aZhkCZIWHkTyay6
         RsC1sdguwlrDOSELEkyb2FoyrXAreOFb7DzDcXzk25lKSNw60Pp5mdK0DtFGZKNCf7fc
         +zNGKU/BJEzf2dxyXaJSm9X/2W3CQs1SRQhdCPoSDpwnpWZeaI1QLdKPVUmyPa8x9YVx
         X96aCKAD/VT+Ymg2Q6zSyZ2wfqNmYaQxzSE7dMuYvzNTdDmS7Hc6Sfv3SjBkn4UkF3VU
         eXgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zGf+yrqa4cuXPn1fFW8gkYJtzradZmjHFwfXza39t04=;
        b=smWQC5+fuzJzbcb9OylpfT9RB+76iX1a3mWtEfkVU+32q0HLGOIBYoOUZss++IqixP
         kjGYJbS+mSANzcSKcFgXc/2H98Okc5hICkBGM203Xbi92DAJ8S+ZoVoe29C9YduzqFod
         1dmarC+jjJ0gmsyGGaVSjUnIJ1XMzo0AhsZl1V1uulYl83ZJL+p2mwak6Vhhee1ZnXYg
         C92GjmwicYkQ3OYeq47pWWdAsS7IKCyXolgeo6n8q3cTmamUD5Kub+yR4BlkNjHEcLG1
         JSypdvx6NMvRa00LSrcMzcwe5U6ANw/vh1gSjxDNEbXhm77JDJlEqs2RuS0Qy/w6ywqF
         shqw==
X-Gm-Message-State: AOAM532hBKA8K25G+OHqihF2b1VhZFDV2NgbohEgEuZ706P9q2MP3a6T
	X6fWd6+Qwy/crxhJCyVthXd4Bmq0N9HflzABjc7xlQ==
X-Google-Smtp-Source: ABdhPJyOytqk6ksJhFPXpA6VNQzb17vm9G4C8ZTa7qyPasekBb8s795BBGmdsNqyX3yUj1U8Oe5HCzmGfccC+ghGb50=
X-Received: by 2002:a25:b3c1:: with SMTP id x1mr59729645ybf.647.1638983651884;
 Wed, 08 Dec 2021 09:14:11 -0800 (PST)
MIME-Version: 1.0
References: <00f301d7c978$ef03a150$cd0ae3f0$@zengyi-tech.com>
 <e2940e0e-515d-a2ac-96a1-5d97c503fa6a@gmail.com> <018b01d7ca10$592a2260$0b7e6720$@zengyi-tech.com>
 <cf1cae96-1611-bcc4-9bd3-b62e6d809ab6@gmail.com> <01cd01d7ca1f$4e75f830$eb61e890$@zengyi-tech.com>
 <a607d825-1dba-d69b-4520-be2a17e4a2a5@gmail.com> <007601d7cae0$bd7649d0$3862dd70$@zengyi-tech.com>
 <ebb155d7-5462-260b-016f-3aa0a469dd52@gmail.com> <00c401d7cb01$d9ee5500$8dcaff00$@zengyi-tech.com>
 <4f7665d5-76b9-d6ae-c16d-e80c49fee5e7@gmail.com> <CAGNhwTMZyxqyA-FJC7Xb-g--QR4kWSy7Yjy-dmYxe0nuBN9_oQ@mail.gmail.com>
 <00bb01d7ea5f$f907a720$eb16f560$@zengyi-tech.com> <815c8938-9ece-3cf3-ff13-11834c9d51f7@gmail.com>
 <01a301d7ec02$0612e3f0$1238abd0$@zengyi-tech.com> <a2256403-9562-27c3-f50e-bd221a684014@gmail.com>
In-Reply-To: <a2256403-9562-27c3-f50e-bd221a684014@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 8 Dec 2021 12:14:01 -0500
Message-ID: <CAB__hTQWnQpDwyepWJWUs8S2vjin8DBVqSr07BUFfaF=jByWqQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: XBBNLHK26FF4XIXVPJEYMNNDGFLMRB3N
X-Message-ID-Hash: XBBNLHK26FF4XIXVPJEYMNNDGFLMRB3N
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: zeyuan.li@zengyi-tech.com, USRP list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogUmU6IOetlOWkjTogUmU6IOetlOWkjTogUmU6IOetlOWkjTog562U5aSNOiBSZTog562U5aSNOiBSZTogSG93IHRvIHVzZSBFeHRlcm5hbCBMTyBvbiBOMzEwIGRldmljZT8=?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XBBNLHK26FF4XIXVPJEYMNNDGFLMRB3N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5563275204201995239=="

--===============5563275204201995239==
Content-Type: multipart/alternative; boundary="0000000000005d3fca05d2a59e76"

--0000000000005d3fca05d2a59e76
Content-Type: text/plain; charset="UTF-8"

I searched the code for "rx_lo_source=external" and
"tx_lo_source=external", but didn't find anything related. It seems that
the device args should include these.

On Wed, Dec 8, 2021 at 11:02 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-12-08 02:05, zeyuan.li@zengyi-tech.com wrote:
>
> I do not set TX or RX.This is my python code.Please give me some
> suggestions.
>
> Thinks.
>
>
>
>
>
> Ah, you're using Gnu Radio.  I'll have to think about how to meet the
> constraints of external-LO use when using Gnu Radio.
>
> Has anyone else done this?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005d3fca05d2a59e76
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I searched the code for &quot;rx_lo_source=3Dexternal&quot=
; and &quot;tx_lo_source=3Dexternal&quot;, but didn&#39;t find=C2=A0anythin=
g related. It seems that the device args should include these.=C2=A0=C2=A0<=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, Dec 8, 2021 at 11:02 AM Marcus D. Leech &lt;<a href=3D"mailto:patchv=
onbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-12-08 02:05,
      <a href=3D"mailto:zeyuan.li@zengyi-tech.com" target=3D"_blank">zeyuan=
.li@zengyi-tech.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=
=E7=AD=89=E7=BA=BF" lang=3D"EN-US">I do
            not set TX or RX.This is my python code.Please give me some
            suggestions.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=
=E7=AD=89=E7=BA=BF" lang=3D"EN-US">Thinks.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=
=E7=AD=89=E7=BA=BF" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
        <div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
          <br>
        </div>
      </div>
    </blockquote>
    Ah, you&#39;re using Gnu Radio.=C2=A0 I&#39;ll have to think about how =
to meet
    the constraints of external-LO use when using Gnu Radio.<br>
    <br>
    Has anyone else done this?<br>
    <br>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005d3fca05d2a59e76--

--===============5563275204201995239==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5563275204201995239==--
