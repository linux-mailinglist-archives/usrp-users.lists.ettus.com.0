Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8341534174
	for <lists+usrp-users@lfdr.de>; Wed, 25 May 2022 18:24:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7E7CE385022
	for <lists+usrp-users@lfdr.de>; Wed, 25 May 2022 12:24:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653495852; bh=1Vvhl6SVfKo5ip8pR4iz0LGZbWfYSJxslSr8xNtziS8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jEeS59c1GVIZRLByrXEJpdBfTtqdDeWxVXeP25xxgt9lkCxiLrnoscm8qD08ReRi9
	 +Uu6Tqqg6nn/NI3MPtwDpL8Xxdz5gHUifFY25r6Zm92YQJYw9LvcZxWormFwMRUoDv
	 x4MUKmmPYwIXrfZN8GDyBWevnQSN/LqAFFfnvvSwWpZo36cqQ4QJiOW62WxovYNy8s
	 6dIWdtelA38+cso2Ngdz2Jey0sTJzaDLXN+ulw5jy39Ol2P3ieZTYZU6FzKXbePmJ1
	 LudYHWf/odIiEtgKi8hgsiOi560ADMfy3cvHDLp94LnbmZJB6BcjXi1hO+4QDgEc1I
	 n41RRMqyXItHQ==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id C3A23384CE0
	for <usrp-users@lists.ettus.com>; Wed, 25 May 2022 12:23:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WMAjYU0w";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id x7so14203511qta.6
        for <usrp-users@lists.ettus.com>; Wed, 25 May 2022 09:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=OO31y0MdzMA3LWNyXmyd07tWlEbY+/Ky9NoBnNZ4zuM=;
        b=WMAjYU0wt9lfo7t91Pf/YZ5thpBGOr8a6x4xpM/dSQx++m1ui0PKS/NgjOJo5+W3U2
         Y3F0b5epsSciDpqfT57249WdLxNOQN9CeUuHp2p0WTYpPNBzk1ADvciVLNECLcHc7p5P
         TfcSkyfjrdzsIEPkFdANdcf4HghOwFtzfdhHfVmlwZCShib2sD1OkxnZu7vkTeWpt8/+
         VNwGFML/Nz26imoKZLAsCNnBo5+jvAwuntODVW3EA8QaEetSO3M/OjyondnFsDUqP6QF
         KH24aasC6MPclSE+AL6V9bWxzrlBXtw+dsw774GwvfYqppgXhK/0b7kWw/r+HTxgD4Qq
         Ez0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=OO31y0MdzMA3LWNyXmyd07tWlEbY+/Ky9NoBnNZ4zuM=;
        b=FXeetL/m0R1PvtjCiMAZ5dFqOpg5KQeqrhY8PHJbpnm7vEVX1ErOqE0rNHHoHm2skG
         ljyIHcND/rtDfrFOq+BW6QpqnSZPDV5y/13iaBAfpmrNQ/qWTUDNzPyNGvusK+J7pM9Y
         SzTPGLTHiZdK9RejdTjC4n2TA+Z5sF0eL7IWBW8Cqb+tKEjrsAZr70uj02tG/0sjlxbv
         Kh8V3XyNByuRYi93r9T+qeKD3oSgkpKEXd1A7uvHHg2ElHCS8mSOa1VzNKo1ioV1EuPb
         2uhDovGKz8Q5yCEtg6pngosmp4skd0K9C5he4xh9abuZffFXsph24bVmX24eC4iiSsZ0
         wcNw==
X-Gm-Message-State: AOAM533bN8yJHUKar18evjZyBTkd7V4fiptUN662xVeIJxieozpzIPF2
	HCl7n6sZYsG4NzeRrUlp0Z0k9NdriPs=
X-Google-Smtp-Source: ABdhPJynckQ9I5HK21Xk3dMbsdM5Ox1ZJ52XA+0j4vLOWNBnN/5Vs7Ma6q4rfZxpb1e00Ll6tmWLqQ==
X-Received: by 2002:a05:622a:15ce:b0:2f9:2461:f90a with SMTP id d14-20020a05622a15ce00b002f92461f90amr18370975qty.114.1653495786997;
        Wed, 25 May 2022 09:23:06 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id cf20-20020a05622a401400b002f94388d447sm1572558qtb.28.2022.05.25.09.23.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 May 2022 09:23:06 -0700 (PDT)
Message-ID: <f276da5b-aff2-2bea-6a49-a86b372cf08f@gmail.com>
Date: Wed, 25 May 2022 12:23:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHqKquykntg2BXbxMoZd21KPjmF1w_KZ7ahtghdj=MkbDHGdRQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHqKquykntg2BXbxMoZd21KPjmF1w_KZ7ahtghdj=MkbDHGdRQ@mail.gmail.com>
Message-ID-Hash: 7YWGJ4FNTKQBPKE756457S7PAMSDRNZP
X-Message-ID-Hash: 7YWGJ4FNTKQBPKE756457S7PAMSDRNZP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: unmet dependencies libuhd4.2.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7YWGJ4FNTKQBPKE756457S7PAMSDRNZP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6121313276950765884=="

This is a multi-part message in MIME format.
--===============6121313276950765884==
Content-Type: multipart/alternative;
 boundary="------------co3uEyUDE3NNYBP02oNy5Dlg"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------co3uEyUDE3NNYBP02oNy5Dlg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-25 04:27, rouba zeitoun wrote:
> Hello USRP Support
>
> Hope you have a nice day.
>
> I was trying to upgrade my system and i got this message
>
> *You might want to run 'apt --fix-broken install' to correct these.
> The following packages have unmet dependencies:
> =C2=A0libuhd-dev : Depends: libuhd4.2.0 (=3D 4.2.0.0-0ubuntu1~bionic1) =
but it=20
> is not installed
> =C2=A0uhd-host : Depends: libuhd4.2.0 (=3D 4.2.0.0-0ubuntu1~bionic1) bu=
t it=20
> is not installed
> E: Unmet dependencies. Try 'apt --fix-broken install' with no packages=20
> (or specify a solution).*
>
> after i tried *' sudo apt --fix-broken install' *i got this=C2=A0error
>
> *dpkg: error processing archive=20
> /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_amd64.deb=20
> (--unpack):
> =C2=A0trying to overwrite '/usr/share/uhd/cal/cal_metadata.fbs', which =
is=20
> also in package libuhd4.1.0:amd64 4.1.0.4-0ubuntu1~bionic1
> Errors were encountered while processing:
> =C2=A0/var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_amd6=
4.deb
> E: Sub-process /usr/bin/dpkg returned an error code (1)*
> *
> *
> How may I solve this=C2=A0problem?
>
> Kind Regards
> Rouba
>
How did you install UHD initially?=C2=A0 What did you do to try to upgrad=
e?=C2=A0=C2=A0=20
I'll note that "Bionic" is a version of Ubuntu that is quite out-of-date=20
at this point, but there do
 =C2=A0 appear=C2=A0 to be PPA for UHD 4.2 for bionic.




--------------co3uEyUDE3NNYBP02oNy5Dlg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-25 04:27, rouba zeitoun
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHqKquykntg2BXbxMoZd21KPjmF1w_KZ7ahtghdj=3DMkbDHGdRQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hello USRP Support
        <div><br>
        </div>
        <div>Hope you have a nice day.</div>
        <div><br>
        </div>
        <div>I was trying to upgrade my system and i got this message=C2=A0=
=C2=A0</div>
        <div><br>
        </div>
        <div><b>You might want to run 'apt --fix-broken install' to
            correct these.<br>
            The following packages have unmet dependencies:<br>
            =C2=A0libuhd-dev : Depends: libuhd4.2.0 (=3D
            4.2.0.0-0ubuntu1~bionic1) but it is not installed<br>
            =C2=A0uhd-host : Depends: libuhd4.2.0 (=3D
            4.2.0.0-0ubuntu1~bionic1) but it is not installed<br>
            E: Unmet dependencies. Try 'apt --fix-broken install' with
            no packages (or specify a solution).</b><br>
        </div>
        <div><br>
        </div>
        <div>after i tried=C2=A0<b>' sudo apt --fix-broken install' </b>i
          got this=C2=A0error</div>
        <div><br>
        </div>
        <div><b>dpkg: error processing archive
            /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_=
amd64.deb
            (--unpack):<br>
            =C2=A0trying to overwrite '/usr/share/uhd/cal/cal_metadata.fb=
s',
            which is also in package libuhd4.1.0:amd64
            4.1.0.4-0ubuntu1~bionic1<br>
            Errors were encountered while processing:<br>
=C2=A0/var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_amd64.=
deb<br>
            E: Sub-process /usr/bin/dpkg returned an error code (1)</b><b=
r>
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
    How did you install UHD initially?=C2=A0 What did you do to try to
    upgrade?=C2=A0=C2=A0 I'll note that "Bionic" is a version of Ubuntu t=
hat is
    quite out-of-date at this point, but there do<br>
    =C2=A0 appear=C2=A0 to be PPA for UHD 4.2 for bionic.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------co3uEyUDE3NNYBP02oNy5Dlg--

--===============6121313276950765884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6121313276950765884==--
