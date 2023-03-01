Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3D26A6E45
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 15:20:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6DC2E38404A
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 09:20:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677680427; bh=00ZIt/vJIaV7Yh+VwCrQR8rT/NEjkNdnONgQIIDgdMQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=NntzDLxK/7+c+tq9uvu53aDEzxZ2nABpDaMovJRKo310PPbmSFQwGVL2aLhPhBlfd
	 Pu3a36Ut/OVeuIx7Ut+uUjj4qSMao0TY/8X/hBa0GRSpjIVlAMjUboZIOnz1W/E8Oh
	 jfnYQf7fdnnb8h/TqURNy02QqsYKWD18GZe3s6UKMRSBi1/ZER0ukuCOD+arfgrXFo
	 tsk3DH0uYvIpBhPe2XqayyRqDncfjYDmNJ70t/1gsv2zqckG8wrPZGwwx9lsGtG9xs
	 xYfxYu33qo9EedwU/H1vLm8w2u3Cc8ieWBtpWUXzl3w6zvh+lGb/kAjLlsBFR4GqUj
	 UwYo4OCp/7thg==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C3D438401D
	for <usrp-users@lists.ettus.com>; Wed,  1 Mar 2023 09:19:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l/Ofq5Oy";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id h16so54382374edz.10
        for <usrp-users@lists.ettus.com>; Wed, 01 Mar 2023 06:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677680389;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TJA//GsHlylKoiZ1HEHlgabPuzuAqq68JT8fMIKyTPs=;
        b=l/Ofq5OyD9AL4GpWRIpg3d/rL4ZIpk4nzfd6/Rkms1nFlQNy419uyP3hHvEaL0LD3S
         zCP6G3VC2tcZ4YYD/iLUMyV9JVhcQLN20GIIbIEB0LBBtrYRfFPAXRdTw1euDAJf/mii
         8a72/6Qp40WcylSFuZ03OC3MSNwssrj/nI3WdtZ7pdTt4rNaUrQgZXDb3YdDptg8lsGU
         JzNszFt5eV6r92Xwp9GcoSx1CZ1fsJlnjRTbdW8eDPAa3rWTpH2izMU2NrlR3kjKQOcP
         r0kNeeH+kGv9v5wj+uNFzko9n1w5h9mAdynneAG1uaugMuI2w+2BL7mw98ulwyUWqZ7q
         Y8EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677680389;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TJA//GsHlylKoiZ1HEHlgabPuzuAqq68JT8fMIKyTPs=;
        b=jnZ48g3bJYlx9b6Wxlf3/dzNI+Xc3h8W6r4ZAOeOTpNa9Iy4n3+9moYtKxrRnSMhtT
         +7X7s2ZjS2iKrhc9jagFGU+k1+GYmhbkeZGhuJwMzVr8X1a14WAgkP2Q6UcF7ZnCL0/y
         mS8DiSVHxQ3j0KC4sHlRCy8PtPRYrUC6BpfSJVQyiduDkzIAYk+CRfyHuQQ26JNcpeP7
         1r0Ng+3we0o2wyW07je7LBLJKjT8DRSKze5biiDD5O9BZmOygCCRBj/2Valer15/g8Kg
         UxDyAjtnEok+4wu3GyYwTPyZ9owmimZAD1O4xk2KUTrwAwNbjzBlWBHcBOWI6D4Glc2y
         Mszw==
X-Gm-Message-State: AO0yUKUViCv4WBU3Qy40MYu12YDhIZOpdy/cZnZLGpbgSAO/nYqm3OL+
	8qEVJHBbBRTv4p9SfvSs6/3nDQeXMahucOUUJX2xYRvJaU8=
X-Google-Smtp-Source: AK7set/aQsUjHSq00wx5FPSRZ/XOGkqtFX8OJwxlDwQ+sfSJFouoyiZMqBJkOB7NMvFScByhd+9Xsc8FBs5dRdQREro=
X-Received: by 2002:a17:907:60cd:b0:8b1:3540:7632 with SMTP id
 hv13-20020a17090760cd00b008b135407632mr11533680ejc.2.1677680388845; Wed, 01
 Mar 2023 06:19:48 -0800 (PST)
MIME-Version: 1.0
References: <PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
 <PH0PR15MB470475B739510FC1329965F2E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAEXYVK76azqDJCxcBx6pN53abV9ACic0EcC1MfHLWoTpaK84Xg@mail.gmail.com> <20230301145718.0d3da2c7@x230>
In-Reply-To: <20230301145718.0d3da2c7@x230>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 1 Mar 2023 09:19:37 -0500
Message-ID: <CAEXYVK7YHU+XYUtTcn0k6WijONQn9eQSA22mHR0VAS5uRxrHHw@mail.gmail.com>
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Message-ID-Hash: AKALRAR3VQBHWAEY3UJMH7SN3UWW5V2J
X-Message-ID-Hash: AKALRAR3VQBHWAEY3UJMH7SN3UWW5V2J
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What do I need to do to make uhd_usrp_probe see my custom RFNOC module?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AKALRAR3VQBHWAEY3UJMH7SN3UWW5V2J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8725945710177111645=="

--===============8725945710177111645==
Content-Type: multipart/alternative; boundary="0000000000009fb45905f5d767f0"

--0000000000009fb45905f5d767f0
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 1, 2023 at 8:59 AM Gwenhael Goavec-Merou <gwenj@trabucayre.com>
wrote:

> On Wed, 1 Mar 2023 07:20:22 -0500
> Brian Padalino <bpadalino@gmail.com> wrote:
>
> > On Wed, Mar 1, 2023 at 5:40 AM Vermeulen, Bas (Consultant) via
> USRP-users <
> > usrp-users@lists.ettus.com> wrote:
> >
> > > Just to answer my own question:
> > >
> > > Run uhd_usrp_probe with LD_PRELOAD=/usr/lib/librfnoc-module.so
> > > uhd_usrp_probe and it will be able to find the RFNOC modules.
> > > The same for any test programs you use, those need the LD_PRELOAD as
> well.
> > >
> >
> > While this is a way to do it, I believe the preferred method is using the
> > UHD_MODULE_PATH environment variable.
> >
> > Set that to a location which contains all the .so files for any RFNoC
> > modules, and UHD will load them automatically.  Note that if any non-.so
> > files are in that path, you will get a warning about not being able to
> load
> > the library.
> >
> > Brian
>
> /usr/lib is a default path for libraries.
> Maybe using (as root) ldconfig to rebuild/refresh the cache used by the
> runtime
> linker?
>

No - this doesn't make sense.  Use UHD_MODULE_PATH.

You can put your modules in ~/mymodules and point your UHD_MODULE_PATH to
~/mymodules and things will work fine.

There is no need to play with LD_PRELOAD or worry about being root or
install to default library paths.

Use UHD_MODULE_PATH.

Brian

--0000000000009fb45905f5d767f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Mar 1, 2023 at 8:59 AM Gwenhael G=
oavec-Merou &lt;<a href=3D"mailto:gwenj@trabucayre.com">gwenj@trabucayre.co=
m</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">On Wed, 1 Mar 2023 07:20:22 -0500<br>
Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank"=
>bpadalino@gmail.com</a>&gt; wrote:<br>
<br>
&gt; On Wed, Mar 1, 2023 at 5:40 AM Vermeulen, Bas (Consultant) via USRP-us=
ers &lt;<br>
&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; Just to answer my own question:<br>
&gt; &gt;<br>
&gt; &gt; Run uhd_usrp_probe with LD_PRELOAD=3D/usr/lib/librfnoc-module.so<=
br>
&gt; &gt; uhd_usrp_probe and it will be able to find the RFNOC modules.<br>
&gt; &gt; The same for any test programs you use, those need the LD_PRELOAD=
 as well.<br>
&gt; &gt;=C2=A0 <br>
&gt; <br>
&gt; While this is a way to do it, I believe the preferred method is using =
the<br>
&gt; UHD_MODULE_PATH environment variable.<br>
&gt; <br>
&gt; Set that to a location which contains all the .so files for any RFNoC<=
br>
&gt; modules, and UHD will load them automatically.=C2=A0 Note that if any =
non-.so<br>
&gt; files are in that path, you will get a warning about not being able to=
 load<br>
&gt; the library.<br>
&gt; <br>
&gt; Brian<br>
<br>
/usr/lib is a default path for libraries.<br>
Maybe using (as root) ldconfig to rebuild/refresh the cache used by the run=
time<br>
linker?<br></blockquote><div><br></div><div>No - this doesn&#39;t make sens=
e.=C2=A0 Use UHD_MODULE_PATH.</div><div><br></div><div>You can put your mod=
ules in ~/mymodules and point your UHD_MODULE_PATH to ~/mymodules and thing=
s will work fine.</div><div><br></div><div>There is no need to play with LD=
_PRELOAD or worry about being root or install to default library paths.</di=
v><div><br></div><div>Use UHD_MODULE_PATH.</div><div><br></div><div>Brian</=
div></div></div>

--0000000000009fb45905f5d767f0--

--===============8725945710177111645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8725945710177111645==--
