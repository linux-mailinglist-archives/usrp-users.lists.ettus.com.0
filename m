Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2285C65C69C
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 19:45:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0944C384297
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 13:45:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672771555; bh=N3If5KON/fjQuGg+NcGYws7a6oVreitzUAcyBEyPEDE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bpLQ2CsHClaHOV3tzwLPpHcbQaZ6embHmsk+o9sUgMirNox/yrxojIpM3O/Uuyt9E
	 0m/P6jRISWcHJxpaoeQ9U9BrIUvhroQQFD+RnHmKevlJhAe6EI/c2pdL7B7OVUfpF0
	 RH2fZsK/v9yZR8L955n9GSmO6IebYz7B+ZgKUz5xNAsf7jFLRJpgo2zFcUWcSh6LyX
	 +vgKYfrhQF3eLR5RyOvNOx+/sKXGNBGoqciVuXtpeAEtK4vNutLj2cFBwy/wFq3GZy
	 CVBEqWDwEg+OgkzssI/kK+/8psiHFLCXtcv0uAYlOBeUxpbtrBycYUIgmR7VDxqBUa
	 BgLwMd0AW18cA==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 95D18380B20
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 13:45:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="yaZT8n8e";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id fy8so12214187ejc.13
        for <usrp-users@lists.ettus.com>; Tue, 03 Jan 2023 10:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=teSuhwoNO1PeoJY54C8qlPepqI0birvs8CkCt3SC31U=;
        b=yaZT8n8e0o4YCq0Q3/QGCcXLZa4i2KF1pi2Hp6gIaRVclqKJ92PiOijHUhm+FOkX9q
         jIJCOdgEHP2ucjCHA/T9NGmvXZg2VBghMmO3l1O1mFiopIeWoxz/gxAsVOo6MT3dNgYa
         9k0ChK5de+nCEgFbuR3v9fs3VEISyMjNl8b7QC7YQokkI7QK4qSRelUdgBhORVFHiR20
         OsHsrHoDYhIPh9PxIHigVIaKd11VaauUlofl4qiqK5/MtrKkS9Rl+AOP8j4r3FaPdlDD
         zdPqs8C7PbSmrnW18PIgNQPphprWnJm+5y9T1jGC6CgxBgiOKhkA3zYaPBbFBfD5yzj+
         Zf9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=teSuhwoNO1PeoJY54C8qlPepqI0birvs8CkCt3SC31U=;
        b=5PHmZNUMAq8CQDOs7SbyEi4DyTLSW1DBq2lJoUVycHhRw7zmxYl2JYGAi8jOUAwwlz
         o9QE3aP3w/GMAQKEO3wamVKtOHjhADUl2juKM/g6OW4nM6t2ZqD5bCuEOjyxrJ5BMSEX
         M1bFOgv5e26E9AQ6HU3ZsDmdRe0vnQWgqB8yOsZdkQKoD8+6URVnAn5HSlf/fffULDau
         u6I5DoHgKAmZdlcDUl3Fd8MYsmtW9s+74wPw+AxJ6SFrSG+pSFOAEsVaSAw6A32cIEOQ
         zfJBdjrczrU65gqR+IaKBMYHfXMaMZ/vo5dtRGsjjLZLUgw4/GLcya+EE97UH8pheCMv
         94Fw==
X-Gm-Message-State: AFqh2krb5/+Tm0JskzMZFxwUJeCnBL6ftkP+/3Y8Pja1xyw8HvYCDSg1
	K9k04S3HTfI3dHEPggoHY3iKjf+XnjDA9gkJIvqES0pIcsnrhikU
X-Google-Smtp-Source: AMrXdXu/qEEkmkaHe/tQ7ZK3UZ/4uKP3dGZ3veoI3LBAQ6tMPRpYRDvzPXw7+/vqbuVxQJ3SwnoZPjxYXHEazGvm+8c=
X-Received: by 2002:a17:906:fb0a:b0:7c0:b6e2:a1c8 with SMTP id
 lz10-20020a170906fb0a00b007c0b6e2a1c8mr2465478ejb.398.1672771547532; Tue, 03
 Jan 2023 10:45:47 -0800 (PST)
MIME-Version: 1.0
References: <CAEXYVK7+9nOrxQyhTziEHpXowH89ow7DNU1uRwnHT4jTK14_XA@mail.gmail.com>
In-Reply-To: <CAEXYVK7+9nOrxQyhTziEHpXowH89ow7DNU1uRwnHT4jTK14_XA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 3 Jan 2023 12:45:31 -0600
Message-ID: <CAFche=izAC6qur0zEOKOep0b0XKkH7n=jPrAKSvngq2MSTF0kw@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: WHNGJ4ZE4N7EA5GQYJATDJDRPHUG72XY
X-Message-ID-Hash: WHNGJ4ZE4N7EA5GQYJATDJDRPHUG72XY
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC OOT Xilinx IP not XCI Based
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WHNGJ4ZE4N7EA5GQYJATDJDRPHUG72XY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7059174079853747344=="

--===============7059174079853747344==
Content-Type: multipart/alternative; boundary="000000000000e1a63505f16079e6"

--000000000000e1a63505f16079e6
Content-Type: text/plain; charset="UTF-8"

FPGA IP output products are generated as part of the make process for FPGA
builds. There's no mechanism in rfnoc_image_builder itself to do anything
IP related since rfnoc_image_builder just runs make for the FPGA target.
The UHD repo has examples of IP using XCI, BD, and TCL that describes a BD
(Vivado has a way to export and import BD's as a TCL file). I think you
could create a Makefile for your IP that tells Vivado to run a TCL script
that generates the IP output products, but I've never tried it and I don't
know of any examples like that.

Wade

On Thu, Dec 29, 2022 at 9:21 AM Brian Padalino <bpadalino@gmail.com> wrote:

> I really don't like using XCI files for IP projects since Vivado wants to
> target them specifically for a single device and a single version of
> Vivado.  Instead, I like being able to define the IP in a tcl script.
>
> With that being said, is there a way to tell rfnoc_image_builder to source
> some set of tcl scripts to create the IP I want after creating the project,
> but before building it?
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e1a63505f16079e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>FPGA IP output products are generated as part of the =
make process for FPGA builds. There&#39;s no mechanism in rfnoc_image_build=
er itself to do anything IP related since rfnoc_image_builder just runs mak=
e for the FPGA target. The UHD repo has examples of IP using XCI, BD, and T=
CL that describes a BD (Vivado has a way to export and import BD&#39;s as a=
 TCL file). I think you could create a Makefile for your IP that tells Viva=
do to run a TCL script that generates the IP output products, but I&#39;ve =
never tried it and I don&#39;t know of any examples like that.<br></div><di=
v><br></div><div>Wade<br> </div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 29, 2022 at 9:21 AM Brian Padal=
ino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">I really don&#39;t like using XCI files for IP projects since Viva=
do wants to target them specifically=C2=A0for a single device and a single =
version of Vivado.=C2=A0 Instead, I like being able to define the IP in a t=
cl script.<div><br></div><div>With that being said, is there a way to tell =
rfnoc_image_builder to source some set of tcl scripts to create the IP I wa=
nt after creating the project, but before building it?</div><div><br></div>=
<div>Thanks,</div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e1a63505f16079e6--

--===============7059174079853747344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7059174079853747344==--
