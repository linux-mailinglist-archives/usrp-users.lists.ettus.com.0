Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C66754878BB
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 15:15:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7B42384BC8
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 09:15:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kYa93xFO";
	dkim-atps=neutral
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 6DEF03849E0
	for <usrp-users@lists.ettus.com>; Fri,  7 Jan 2022 09:14:27 -0500 (EST)
Received: by mail-il1-f178.google.com with SMTP id 2so526868ilj.4
        for <usrp-users@lists.ettus.com>; Fri, 07 Jan 2022 06:14:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=+LSBXSRZMjlw94yTyU+fwoNbOymIACGbcgIb6E7SQv0=;
        b=kYa93xFOb7KvrKA23oipG7iF9H8eGHs4BhUP86QeNYapwU8b8dF+dJ0hmh8BkirWnV
         HoMTfewTcOBtjznxCgHc4HqPwJBMTQJMfCH8HcIDqohwjenORP8YS9KmwVPDJOQsQbJb
         0xdpZoT499wY5PDOdluTpbR3ZYpz2m7Qh0QLdQlqhl4Ap7sL9nBon+0ImpfwJfXOmJHw
         l5O1NstGx0jreByvqAjcU252L7U2MriQMIrPX9NHNLaigbO2ijYp1RTWqM3g/9RdM+pM
         Ul/LCziADDBRHklMN7lbjdjjmp4JjEWpqCd6RNuuH4nIdpXuM2HRR6P969F3W7PwC8o6
         /RpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=+LSBXSRZMjlw94yTyU+fwoNbOymIACGbcgIb6E7SQv0=;
        b=avc5q7TtpE6h032RvN02Z5vNLbbr+qs0sGGcg9Yap3pLtRW9RsfC7wyBj161knU98q
         nBS6EyOd7OfXDowp7U4vjzrx3Tg1ZwSIRDhSopSFybMhXi5rUVPlp3CHQdaI9e+kMdDy
         kBuzGQQoI7pCa5rWoWiIVZBHrJ2bshkaTy3IDxZsvujdWSejcoQin3J2deqR6naGmYH7
         XLjP/za/Zo6yKcCT8doFVj9pyUOhyufXJpttuLcPrtmf88J5gbxG0T7uKFUbO9LYShYE
         TVdkgER/QGqBVRJMFe0SqfDOb+5a6AdE/qYNxEv3yofJVBf75iDxgtPAluCuC4G7jlhP
         Y8MQ==
X-Gm-Message-State: AOAM531PjyU+vUDJJO3ZDYSjAUb1qNfoEiztGrd58rrIyW8V84d5kldE
	pDJVZx0B070ZP6xoZOjOuYonjeMWDz//Uw==
X-Google-Smtp-Source: ABdhPJyWrQLWl3fLTPNCgkZeFjPe9FbgByDgJonoJRrU6OA31VDFT8V2+jcGzIIs1KcJ8rZZAaHR8w==
X-Received: by 2002:a05:6e02:1107:: with SMTP id u7mr3167588ilk.207.1641564866684;
        Fri, 07 Jan 2022 06:14:26 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id j3sm2935120ilu.64.2022.01.07.06.14.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 06:14:26 -0800 (PST)
Message-ID: <348a66b6-8360-73fd-f572-59e0cb701c69@gmail.com>
Date: Fri, 7 Jan 2022 09:14:25 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DzlYJ6WpT1TLTMHtaOmhXOiWQsPb9t8gSCCNuCmmjM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DzlYJ6WpT1TLTMHtaOmhXOiWQsPb9t8gSCCNuCmmjM@lists.ettus.com>
Message-ID-Hash: DCJW56NWGWOAEA3XYLIFMR73HZDIMO33
X-Message-ID-Hash: DCJW56NWGWOAEA3XYLIFMR73HZDIMO33
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 device IOError: Could not find path for image: usrp_b200_fw.hex
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DCJW56NWGWOAEA3XYLIFMR73HZDIMO33/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3085869302115760658=="

This is a multi-part message in MIME format.
--===============3085869302115760658==
Content-Type: multipart/alternative;
 boundary="------------0caeO4nB6YYoTUwdpXbbD07Q"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0caeO4nB6YYoTUwdpXbbD07Q
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-07 04:13, mobizmn--- via USRP-users wrote:
>
> I am trying to run the tx_timed_sample example of UHD with USRP B210.=20
> When I run uhd_find_devices or uhd_usrp_probe, the USRP device is=20
> detected correctly and the details are shown correctly. But when I try=20
> to run the code by |./tx_timed_samples, |I get the following error:
>
> |[WARNING] [B200] EnvironmentError: IOError: Could not find path for=20
> image: usrp_b200_fw.hex|
>
> |Using images directory: <no images directory located>|
>
> |Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow=20
> the below instructions to download the images package.|
>
> |Please run:|
>
> |"/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"|
>
> But if I run the python examples, they work perfectly fine. The file=20
> =E2=80=9C|uhd_images_downloader.py|=E2=80=9C is not actually location o=
n the address=20
> specified in the above error.
>
>
> I tried the solution here=20
> <https://blog.actorsfit.com/a?ID=3D01550-735cb626-f122-4f20-941b-ad1ad9=
280ba6>=20
> and ran sudo cp -r /usr/local/share/uhd/images /usr/share/uhd, but the=20
> problem was still not resolved.
>
>
> On this <https://github.com/EttusResearch/uhd/issues/43> page, they=20
> suggested to do this:
>
> *|export UHD_IMAGES_DIR=3D/usr/local/share/uhd/images|*
>
> But that also did not work for me.
>
>
> Can anybody help me with how I can locate the image directory?
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
How did you install Gnu Radio?=C2=A0 Is this on a recent version of Ubunt=
u?=C2=A0=20
I noticed the same thing on Ubuntu, and I just put the setting of=20
UHD_IMAGES_DIR in
 =C2=A0 my ~/.bashrc and it's all fine.

Remember that in Linux, environment variables propagate *downwards* in=20
the process tree.=C2=A0 So if you set the variable on the command-line in=
 one=20
window,
 =C2=A0 it will absolutely *NOT* affect any other process tree.=C2=A0=C2=A0=
 Which is=20
why you put it in your .bashrc.


--------------0caeO4nB6YYoTUwdpXbbD07Q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-07 04:13, mobizmn--- via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:DzlYJ6WpT1TLTMHtaOmhXOiWQsPb9t8gSCCNuCmmjM@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I am trying to run the tx_timed_sample example of UHD with USRP
        B210. When I run uhd_find_devices or uhd_usrp_probe, the USRP
        device is detected correctly and the details are shown
        correctly. But when I try to run the code by <code>./tx_timed_sam=
ples,
        </code>I get the following error:</p>
      <p><code>[WARNING] [B200] EnvironmentError: IOError: Could not
          find path for image: usrp_b200_fw.hex</code></p>
      <p><code>Using images directory: &lt;no images directory
          located&gt;</code></p>
      <p><code>Set the environment variable 'UHD_IMAGES_DIR'
          appropriately or follow the below instructions to download the
          images package.</code></p>
      <p><code>Please run:</code></p>
      <p><code>
          "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"<=
/code></p>
      <p>But if I run the python examples, they work perfectly fine. The
        file =E2=80=9C<code>uhd_images_downloader.py</code>=E2=80=9C is n=
ot actually
        location on the address specified in the above error. </p>
      <p><br>
      </p>
      <p>I tried the solution <a
href=3D"https://blog.actorsfit.com/a?ID=3D01550-735cb626-f122-4f20-941b-a=
d1ad9280ba6"
          title=3D"" moz-do-not-send=3D"true">here</a> and ran sudo cp -r
        /usr/local/share/uhd/images /usr/share/uhd, but the problem was
        still not resolved.</p>
      <p><br>
      </p>
      <p>On <a href=3D"https://github.com/EttusResearch/uhd/issues/43"
          title=3D"" moz-do-not-send=3D"true">this</a> page, they suggest=
ed
        to do this: </p>
      <p><strong><code>export UHD_IMAGES_DIR=3D/usr/local/share/uhd/image=
s</code></strong></p>
      <p>But that also did not work for me.</p>
      <p><br>
      </p>
      <p>Can anybody help me with how I can locate the image directory?</=
p>
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
    How did you install Gnu Radio?=C2=A0 Is this on a recent version of
    Ubuntu?=C2=A0 I noticed the same thing on Ubuntu, and I just put the
    setting of UHD_IMAGES_DIR in<br>
    =C2=A0 my ~/.bashrc and it's all fine.<br>
    <br>
    Remember that in Linux, environment variables propagate *downwards*
    in the process tree.=C2=A0 So if you set the variable on the command-=
line
    in one window,<br>
    =C2=A0 it will absolutely *NOT* affect any other process tree.=C2=A0=C2=
=A0 Which is
    why you put it in your .bashrc.<br>
    <br>
    <br>
  </body>
</html>
--------------0caeO4nB6YYoTUwdpXbbD07Q--

--===============3085869302115760658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3085869302115760658==--
