Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A82143F5597
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 03:52:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E18853840A0
	for <lists+usrp-users@lfdr.de>; Mon, 23 Aug 2021 21:52:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ajQmzkGR";
	dkim-atps=neutral
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 5BBD33818C7
	for <usrp-users@lists.ettus.com>; Mon, 23 Aug 2021 21:51:18 -0400 (EDT)
Received: by mail-ot1-f54.google.com with SMTP id k12-20020a056830150c00b0051abe7f680bso36673537otp.1
        for <usrp-users@lists.ettus.com>; Mon, 23 Aug 2021 18:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IOh0cKmm5wfcipC5/MYlbWGyW6Eo6ZdXpdNvINb8jBg=;
        b=ajQmzkGRjZhq3aVqmvlsjHjm9gGrY38UXJ42JU7M9mALVbLXOjNg0Ir5klYxm619TD
         NRWuqDe8AB/9RcmpI9L0HGf4aGesEPhSdEV0RqG1c78VnLlL6Ujg1YbXF+BpJ2GJcc9I
         J7QCyMxaxUPmSIzMx6jCC6dE2tF76RvzvXld/U9sZVIvYnhId44Zemt9G6lMBS3yD+8P
         +G8erZwycmdwhdVNW4wmw6HZcRHmztlAExz3cJtg/oaguG2iAzQb1zmBOBwRWI0eHM4g
         lvD5XQmViGxbYRYuzsq2JC7nMqX7647mlKoYtA8SK6qrtP8fx/IAU6StHA1LNhCOQlvm
         Kd+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IOh0cKmm5wfcipC5/MYlbWGyW6Eo6ZdXpdNvINb8jBg=;
        b=QK9LAihLIdGKbUs/CZR5yKsiSDibkcK+p6D+59owpJIHoWin4pyiy4RzTWHZ1R79oT
         5jIFs4JI+qF1YW5urq76rFFW3jVPW912wmyFHixRmkkRywHFgt1F/g/GGrzaAcTc0GfY
         w20z84m0QxEfM23KSxKAShjLLbjH7CdCRJeLIVeW172sEPC3JA2ohoSOHvYdJe0NSWmB
         YQEGD7lmnmVSYmSZnKyTdVs9D+Ef3KPKTcH4olrfMkw2QJ68G+ogMh8iv4eNjSF53+HM
         gkB/0dlcmeZi8nlfHUzwQUjAAbUhdw1Bti6CjMD2WCbwsYfsuhQhqrG6ZCX94HQ4yyxq
         W77Q==
X-Gm-Message-State: AOAM531cn+b9cUqUc6JTdfx+Zx3bvgKw2cwgraRDugPDzGYtTz0AVavf
	sTBOo0KeAlAAE6ewYVYJ0QLw3KSDkdwUScbTEWtUJg==
X-Google-Smtp-Source: ABdhPJxrHZi6IewAgKTY0vgGCYinxzU3IbPbOVp1wfEgmuTrdY6/cSSn9wiz7/bp/oGWad16z20PsMLP8uH2MCmf9zU=
X-Received: by 2002:aca:eb97:: with SMTP id j145mr333899oih.33.1629769877376;
 Mon, 23 Aug 2021 18:51:17 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR03MB4685293037E591CA42220DC1D3C49@MN2PR03MB4685.namprd03.prod.outlook.com>
In-Reply-To: <MN2PR03MB4685293037E591CA42220DC1D3C49@MN2PR03MB4685.namprd03.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 23 Aug 2021 21:51:06 -0400
Message-ID: <CAB__hTQs=VagLG5Am9Fy5Btok=94+uwZi8ZP8caqnL-aKAYZ-w@mail.gmail.com>
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Message-ID-Hash: I4CZ63YE5YDWD5CCKAWBRLJLX4JBILG6
X-Message-ID-Hash: I4CZ63YE5YDWD5CCKAWBRLJLX4JBILG6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Mender update error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I4CZ63YE5YDWD5CCKAWBRLJLX4JBILG6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6981177000714424712=="

--===============6981177000714424712==
Content-Type: multipart/alternative; boundary="0000000000009ba77405ca445ef8"

--0000000000009ba77405ca445ef8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lorenzo,
Do you have the ability to remove the SD card and write it directly? If so,
I would suggest doing this (rather than mender) and using the bmaptool
method. This is way faster than mender.  I do recall having issues updating
with mender but I'm not 100% certain if the issues were exactly the same as
yours. It could be that upgrading from 3.x to 4.x with mender is broken.
In the end, I lost patience with mender and used the other method.
Rob

On Mon, Aug 23, 2021 at 7:32 PM Minutolo, Lorenzo <minutolo@caltech.edu>
wrote:

> Hi,
> I'm trying to update the filesystem on my N321 to use UHD 4.1. I'm
> running into some troubles.
>
> After installing UHD 4.1, downloading and copying the image, logging in
> into the N321:
>
> root@ni-n3xx-xxxxxxx:~# mender install usrp_n3xx_fs.menderINFO[0000] Load=
ed configuration file: /var/lib/mender/mender.conf INFO[0000] Loaded config=
uration file: /etc/mender/mender.conf INFO[0000] No dual rootfs configurati=
on present         INFO[0000] Start updating from local image file: [usrp_n=
3xx_fs.mender]
> Installing Artifact of size 395053568...INFO[0000] No public key was prov=
ided for authenticating the artifact INFO[0000] Update Module path "/usr/sh=
are/mender/modules/v3" could not be opened (open /usr/share/mender/modules/=
v3: no such file or directory). Update modules will not be available ERRO[0=
000] Reading headers failed: installer: failed to read Artifact: Artifact P=
ayload type 'rootfs-image' is not supported by this Mender Client. Ensure t=
hat the Mender Client is fully integrated and that the RootfsPartA/B config=
uration variables are set correctly in 'mender.conf' ERRO[0000] installer: =
failed to read Artifact: Artifact Payload type 'rootfs-image' is not suppor=
ted by this Mender Client. Ensure that the Mender Client is fully integrate=
d and that the RootfsPartA/B configuration variables are set correctly in '=
mender.conf'
>
> I also tried
>
> root@ni-n3xx-xxxxxxx:~# mender install usrp_n3xx_fs.mender --force
>
> with the same result. I did not touch any configuration file since we got=
 the N321.
> How do I update the filesystem?
>
> Thanks,
> Lorenzo
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009ba77405ca445ef8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Lorenzo,<div>Do you have the ability t=
o remove the SD card and write it directly? If so, I would suggest doing th=
is (rather than mender) and using the bmaptool method. This is way faster t=
han mender.=C2=A0 I do recall having issues updating with mender but I&#39;=
m not 100% certain if the issues were exactly the same as yours. It could b=
e that upgrading from 3.x to 4.x with mender is broken.=C2=A0 In the end, I=
 lost patience with mender and used the other method.</div><div>Rob</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Aug 23, 2021 at 7:32 PM Minutolo, Lorenzo &lt;<a href=3D"mailto:minut=
olo@caltech.edu">minutolo@caltech.edu</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:calibri,arial,helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0);background-color:rgba(0,0,0,0)">I&#39;m tryin</span><spa=
n style=3D"font-family:calibri,arial,helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgba(0,0,0,0)">g
 to update t</span><span style=3D"font-family:calibri,arial,helvetica,sans-=
serif;font-size:12pt;color:rgb(0,0,0);background-color:rgba(0,0,0,0)">he fi=
lesystem on my N321 to use UHD 4.1. I&#39;m running into some troubles.</sp=
an></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:calibri,arial,helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0);background-color:rgba(0,0,0,0)"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:calibri,arial,helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0);background-color:rgba(0,0,0,0)">After installing UHD 4.1=
, downloading and copying the image, logging in into the N321:<br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<pre>root@ni-n3xx-xxxxxxx:~# mender install usrp_n3xx_fs.mender
<font color=3D"#06989A">INFO</font>[0000] Loaded configuration file: /var/l=
ib/mender/mender.conf=20
<font color=3D"#06989A">INFO</font>[0000] Loaded configuration file: /etc/m=
ender/mender.conf=20
<font color=3D"#06989A">INFO</font>[0000] No dual rootfs configuration pres=
ent =C2=A0 =C2=A0 =C2=A0 =C2=A0=20
<font color=3D"#06989A">INFO</font>[0000] Start updating from local image f=
ile: [usrp_n3xx_fs.mender]=20
Installing Artifact of size 395053568...
<font color=3D"#06989A">INFO</font>[0000] No public key was provided for au=
thenticating the artifact=20
<font color=3D"#06989A">INFO</font>[0000] Update Module path &quot;/usr/sha=
re/mender/modules/v3&quot; could not be opened (open /usr/share/mender/modu=
les/v3: no such file or directory). Update modules will not be available=20
<font color=3D"#CC0000">ERRO</font>[0000] Reading headers failed: installer=
: failed to read Artifact: Artifact Payload type &#39;rootfs-image&#39; is =
not supported by this Mender Client. Ensure that the Mender Client is fully=
 integrated and that the RootfsPartA/B configuration variables are set corr=
ectly in &#39;mender.conf&#39;=20
<font color=3D"#CC0000">ERRO</font>[0000] installer: failed to read Artifac=
t: Artifact Payload type &#39;rootfs-image&#39; is not supported by this Me=
nder Client. Ensure that the Mender Client is fully integrated and that the=
 RootfsPartA/B configuration variables are set correctly in &#39;mender.con=
f&#39;=20
</pre>
I also tried <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<pre>root@ni-n3xx-xxxxxxx:~# mender install usrp_n3xx_fs.mender --force<br>=
<br><span style=3D"font-family:Arial,Helvetica,sans-serif">with the same re=
sult. I did not touch any configuration file since we got the N321.</span><=
br><span style=3D"font-family:Arial,Helvetica,sans-serif">How do I update t=
he filesystem?<br><br>Thanks,<br>Lorenzo<br></span></pre>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000009ba77405ca445ef8--

--===============6981177000714424712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6981177000714424712==--
