Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 733694E3657
	for <lists+usrp-users@lfdr.de>; Tue, 22 Mar 2022 02:59:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3D0AF3850DD
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 21:59:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RhoQO5O1";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 95FD8384752
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 21:58:47 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id q194so13047221qke.5
        for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 18:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=KBdcq2nlc2yRyOXTVwiiajisyCLmVt10UeP0wbQsbA8=;
        b=RhoQO5O1FQrr1G5iF18e45cBVvwnW1LCufb41Cc8bgFK8ls3c5DwoRu3o7Nbib6km4
         bGgMYdajX06ez23kvRADOcKuGPagrXvbHqt6Zq0GgjgO16UB77PxilQBsBfHueVR5Kxz
         ZCqVz92RonJbAlP+bvOxxjvjd79vdLnPDsssHDPab+EAp8dYBXSt5aJEHJtAoF/KXzYh
         tXgVOBU9zmZcBxyo9am6Lr3OD0FNPPX0u1xJoo9+4Of68j1zKlQBvzjVIlU1nQuxudwF
         h8a4bvW7/sGfS0pxX9jZfLHHTC3tGy1njXAsm6GYnykbMuUJzDUqgsRPhn9+wq4/kBv7
         vDfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=KBdcq2nlc2yRyOXTVwiiajisyCLmVt10UeP0wbQsbA8=;
        b=cZqSsTZGCQC0MgUmpHDgDxb23xg2WgGW3PBaRG59D6/uSxVfvhIvHvFfTwuj0iaF+Q
         vDTcmBJAVSHhrm/XAVLhikVCWG2Z6wlUoJo4us2IeFXtn8HNMNwJ2tRIrqXl3S56xI9y
         GcsxFzwrF1nLet/OIUF71l8zsZWUEXP5DQLBqEMC7wfRTWjfeaSo0irNm9ngTymc+Bkt
         jEBKpo/HNeDIApkTNPuBtB91RkzuwySlkpLrcuuFz3jUdp9UGQIGm2W5zAGtOaG7Tqrn
         80e92Zx5s6Zq5ntcPmLKt14ukUqqEhRZg/MPM2xqmpm/ZLE2gLqGo67D6UL/+n6Bl8jp
         8QnQ==
X-Gm-Message-State: AOAM5323SFnHrlKmVyQl9W4ihO/fZfOhWeql/iC7ZQuwpFsoOQsuHMk1
	2SOMxcmCUpKkrPZ42tbHdOCfdkH6LUE=
X-Google-Smtp-Source: ABdhPJyN+k8iQnqn+0cUkQqkSus8ILtixT6j+xit50K7GDhPT/BZKhpOXczO2THd0giX11oT/m6Hjg==
X-Received: by 2002:a37:a54b:0:b0:67b:309c:e9e1 with SMTP id o72-20020a37a54b000000b0067b309ce9e1mr14596791qke.178.1647914327033;
        Mon, 21 Mar 2022 18:58:47 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id y24-20020a37e318000000b0067d43d76184sm8487500qki.97.2022.03.21.18.58.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 18:58:46 -0700 (PDT)
Message-ID: <1ca5d392-f8a4-3975-0e91-1e809b10e52a@gmail.com>
Date: Mon, 21 Mar 2022 21:58:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Wade Fife <wade.fife@ettus.com>, Rob Kossler <rkossler@nd.edu>
References: <AM8P250MB010775DAB5F976813E57AE599B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <77C9127F-86E2-4BC0-9ED0-C477B0F4A586@gmail.com>
 <AM8P250MB0107FE3596073DF1E741B7D89B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <a71545cc-5423-7bb4-e616-a261dd065fbd@gmail.com>
 <CAB__hTRYBFJ_Wkucxz=XLScaVV53DE_R63caFZtSTfQYzUVpTw@mail.gmail.com>
 <CAFche=g=yhcgNfbieDmQC4CJooniGi5vc6ZU2oXSF_TqkKJF6Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFche=g=yhcgNfbieDmQC4CJooniGi5vc6ZU2oXSF_TqkKJF6Q@mail.gmail.com>
Message-ID-Hash: 4SO4CDNQ6U2LNWIYOBERKB5KYOVCGFSV
X-Message-ID-Hash: 4SO4CDNQ6U2LNWIYOBERKB5KYOVCGFSV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X410] Change hostname
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4SO4CDNQ6U2LNWIYOBERKB5KYOVCGFSV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1823685202705837013=="

This is a multi-part message in MIME format.
--===============1823685202705837013==
Content-Type: multipart/alternative;
 boundary="------------CzKQRKSH0sjLTW6Zp6oH0wpa"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CzKQRKSH0sjLTW6Zp6oH0wpa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-03-21 18:44, Wade Fife wrote:
> Hi all,
>
> You can change the hostname by creating a file /data/network/hostname=20
> with the desired hostname.
>
> On boot, systemd runs /sbin/usrp_hostname to configure the hostname.=20
> It looks for the /data/network/hostname file. If it doesn't find it,=20
> then it uses a default with the serial number.
>
> Thanks,
>
> Wade
Thanks Wade!

I don't think I would have stumbled over this in a random walk...


>
> On Mon, Mar 21, 2022 at 5:11 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>     perhaps in the file /data/network/eth0.network?
>
>     On Mon, Mar 21, 2022 at 10:43 AM Marcus D. Leech
>     <patchvonbraun@gmail.com> wrote:
>
>         On 2022-03-21 10:34, Tobias Kronauer wrote:
>>         There is no /etc/hostname in /data....
>>         --------------------------------------------------------------=
----------
>>
>         Hmmm.
>
>         According to:
>
>         https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migrati=
on
>
>         You should be able to just modify /etc/hostname, but this
>         doesn't work across reboot.=C2=A0 Even on my E310.
>
>         Clearly, *something* is reconstructing it on reboot, I just
>         can't immediately determine exactly what.
>
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------CzKQRKSH0sjLTW6Zp6oH0wpa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-21 18:44, Wade Fife wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFche=3Dg=3DyhcgNfbieDmQC4CJooniGi5vc6ZU2oXSF_TqkKJF6Q@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div>Hi all,</div>
          <div><br>
          </div>
          <div>You can change the hostname by creating a file
            /data/network/hostname with the desired hostname.</div>
          <div><br>
          </div>
          <div>On boot, systemd runs /sbin/usrp_hostname to configure
            the hostname. It looks for the /data/network/hostname file.
            If it doesn't find it, then it uses a default with the
            serial number.<br>
          </div>
          <div><br>
          </div>
          <div>Thanks,</div>
          <div><br>
          </div>
          <div>Wade<br>
          </div>
        </div>
      </div>
    </blockquote>
    Thanks Wade!<br>
    <br>
    I don't think I would have stumbled over this in a random walk...<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFche=3Dg=3DyhcgNfbieDmQC4CJooniGi5vc6ZU2oXSF_TqkKJF6Q@mail.=
gmail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 21, 2022 at 5:1=
1
          PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">rkos=
sler@nd.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">perhaps in the file /data/network/eth0.network=
?</div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 21, 2022 at
              10:43 AM Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div>
                <div>On 2022-03-21 10:34, Tobias Kronauer wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                    There is no /etc/hostname in /data....<br>
                  </div>
                  <hr style=3D"display:inline-block;width:98%"><br>
                </blockquote>
                Hmmm.=C2=A0=C2=A0 <br>
                <br>
                According to:<br>
                <br>
                <a
                  href=3D"https://files.ettus.com/manual/page_usrp_e3xx.h=
tml#e31x_migration"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">https://files.ettus.com=
/manual/page_usrp_e3xx.html#e31x_migration</a><br>
                <br>
                You should be able to just modify /etc/hostname, but
                this doesn't work across reboot.=C2=A0 Even on my E310.<b=
r>
                <br>
                Clearly, *something* is reconstructing it on reboot, I
                just can't immediately determine exactly what.<br>
                <br>
                <br>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </blockquote>
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

--------------CzKQRKSH0sjLTW6Zp6oH0wpa--

--===============1823685202705837013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1823685202705837013==--
