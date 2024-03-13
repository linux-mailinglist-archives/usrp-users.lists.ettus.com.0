Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5486487A242
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 05:23:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1223385068
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 00:23:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710303808; bh=JlnKoeoAOazSLNGhj918S5MTDRezuoNQeWZvAGUz6qE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=fSYzzJzKKgPsqFnIL26L2lhUvOVk6kGy3bIubqe7eYWMgBxJL4+lGOIu5I1rbbTNk
	 RVXoPFmxIDzAP3M/FABa8HGpF28/QdtTVEmiEYadfLT202Tza3n8mGtcw02vqB6eX9
	 IZk6cBy8YR3pHHW5WWP4f+z5aLt8R9plZ9ULtAv4Fj+JMLrg0u/IkOT2UpITueH+BC
	 2OrmOGM1iKYhvL9H9TZKf/SspK2IjNQBC+bJkroPY6kid077IrJVRMkjxXTrrYXYFH
	 XryQAJtdP9G+gLmncH5s2fMz5C9BzW8EoJ7UnSUNWHCQneCT0xf2w5DgUe0IYzce4D
	 VwSEaBbh/e7CA==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C829384FEC
	for <usrp-users@lists.ettus.com>; Wed, 13 Mar 2024 00:23:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="26fKIL8N";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a449c5411e1so81079766b.1
        for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 21:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1710303788; x=1710908588; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+braCRbI7Vr1WAu8MmEHj91YjdM+fK2wKo9pMiImC3k=;
        b=26fKIL8N+dx2msnc7q00Caj2aDSSYgajn4ziCJE2N/s7VrLh8hoLhJfF3iZW6XXiGa
         hE/4H1qyrJOb5hbPRW+DIpaAHDf1qNCDMI4AC7e5sqjmm0dCSyfLcyrvxXSBbesrrH32
         yEbbrg78w/Bz8L6zH2LS8JJ27vw0tGMsv8C7qS6ozKb1dzv4tJ16HHhPmeN62arbQV89
         uIDHDJRy7xcGpufSTJevMh6dbrkRJuD7Xdl7by+7I7o+fwfm+fjTmxTeP4Y6kN0AdY3x
         UgxWP6ZisEKucUJKI6VhI8yq0qxGDsqwp7bnrOetuzfpEQr9NOwWMG1GWWWxsICnUDfG
         YgEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710303788; x=1710908588;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+braCRbI7Vr1WAu8MmEHj91YjdM+fK2wKo9pMiImC3k=;
        b=uFUMJtOsMBUifWH5Gs9VyYaUyJP4oDM3hkmjGiFuHSpAsekWpks1RlTFte6bYeH0v9
         4HsZ54SL7yCSd7vkuaRZvJiKZS1Nrgelhwz2fnA14zI5Lh7MX7wm4+6RDFUnXrIRW5c1
         LRHx0MCl2MW7RJSZpcKw3+uADBe0BeVdOJeUJqB6B0NrU/pHeXJK2MqhNbXMD4HTI/TX
         O8ZkKS2O4iFt7nuzicigDDdQ6BP2+cwBqHWMT5jiJNNKjSbcqaWlzMZ2VXa00bFs//l/
         QgVqczFfNkCHiMnoGhE/U5vqJmuPiHYpskAt/7wcBTaOUpdArjXH1sqDYZ2+LayTWtvm
         O5pQ==
X-Gm-Message-State: AOJu0YwlNLOHA17bkPLy4G2FOtytC0N6VD0ztdROMANklkA0+3ehDb3X
	5Vj5WkUAda/5jCnvI20Uxcosq4dSrQCi48LNwf6MTsVSYNaKtoJbF2TKHno66/hl01BspG0xPOb
	GnBcoAltn1BWfce+TWuZe9/ysE2NEK1eepBFcqMyvzk93rP/u/TIkDg==
X-Google-Smtp-Source: AGHT+IGwaVHFFVQbT+ca/KFOQANmlOySy+CDDGATuHOGviG8BdQUekfv3QAP+F2cYAfLa7v9cno8K+cB4aYwoGmOvSA=
X-Received: by 2002:a17:906:19c4:b0:a46:36af:11f8 with SMTP id
 h4-20020a17090619c400b00a4636af11f8mr1319566ejd.40.1710303787616; Tue, 12 Mar
 2024 21:23:07 -0700 (PDT)
MIME-Version: 1.0
References: <i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg@lists.ettus.com> <aad5784b-d31a-4a2c-af38-e61a4b3793f9@gmail.com>
In-Reply-To: <aad5784b-d31a-4a2c-af38-e61a4b3793f9@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 12 Mar 2024 23:22:51 -0500
Message-ID: <CAFche=im8-GJA8FRjUtY02PngjoGzkyed0+-3yrFHDomC+7-Ug@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: DKLXGP2OYA7IIELAOVVRG7U375OWKGXZ
X-Message-ID-Hash: DKLXGP2OYA7IIELAOVVRG7U375OWKGXZ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Non-Unique Device MAC Address's After Mender F.S. Update
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DKLXGP2OYA7IIELAOVVRG7U375OWKGXZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4718861003681270047=="

--===============4718861003681270047==
Content-Type: multipart/alternative; boundary="000000000000b8285d06138321a1"

--000000000000b8285d06138321a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The MAC address should come from the EEPROM. You can run eeprom-dump on the
device to see what MAC addresses are programmed in it. You can use
eeprom-init to program the EEPROM. Run either with --help to see the syntax=
.

https://github.com/EttusResearch/uhd/blob/master/mpm/tools/README.md

I'm curious if your devices somehow have the same MAC in the EEPROM or if
it's reverting to some default because it can't read the EEPROM, or the
EEPROM isn't properly programmed.

Wade

On Mon, Mar 11, 2024 at 12:01=E2=80=AFPM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 11/03/2024 11:42, edenmclaughlin123@gmail.com wrote:
>
> Hi,
>
> We had a need for a multiple device - single subnet setup. After updating
> multiple E320=E2=80=99s to a newer UHD version, me and my colleague, we r=
ealized
> that all of the devices share a common MAC address. This results in
> unstable connections within the network. As for in this thread
> <https://lists.ettus.com/empathy/thread/POYUYNB4RH5MFPADPFYTSLLKVAWT64M6?=
hash=3DPOYUYNB4RH5MFPADPFYTSLLKVAWT64M6#POYUYNB4RH5MFPADPFYTSLLKVAWT64M6>
> is there a non-third party, Ettus supported, homegrown way of
> restoring/updating the MAC address of a network device, specifically E320=
?
>
> Thanks.
>
> Trying to attract R&D's attention on this.  I know we went through this
> with E310 years and years ago, but it was resolved.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b8285d06138321a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The MAC address should come from the EEPROM. You can =
run eeprom-dump on the device to see what MAC addresses are programmed in i=
t. You can use eeprom-init to program the EEPROM. Run either with --help to=
 see the syntax.<br></div><div><br></div><div><a href=3D"https://github.com=
/EttusResearch/uhd/blob/master/mpm/tools/README.md">https://github.com/Ettu=
sResearch/uhd/blob/master/mpm/tools/README.md</a></div><div><br></div><div>=
I&#39;m curious if your devices somehow have the same MAC in the EEPROM or =
if it&#39;s reverting to some default because it can&#39;t read the EEPROM,=
 or the EEPROM isn&#39;t properly programmed.</div><div><br></div><div>Wade=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Mar 11, 2024 at 12:01=E2=80=AFPM Marcus D. Leech &lt;<a h=
ref=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 11/03/2024 11:42,
      <a href=3D"mailto:edenmclaughlin123@gmail.com" target=3D"_blank">eden=
mclaughlin123@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hi,</p>
      <p>We had a need for a multiple device - single subnet
        setup. After updating multiple E320=E2=80=99s to a newer UHD versio=
n, me
        and my colleague, we realized that all of the devices share a
        common MAC address. This results in unstable connections within
        the network. As for in <a href=3D"https://lists.ettus.com/empathy/t=
hread/POYUYNB4RH5MFPADPFYTSLLKVAWT64M6?hash=3DPOYUYNB4RH5MFPADPFYTSLLKVAWT6=
4M6#POYUYNB4RH5MFPADPFYTSLLKVAWT64M6" title=3D"E310: Change MAC Address?" t=
arget=3D"_blank">this
          thread</a> is there a non-third party, Ettus supported,
        homegrown way of restoring/updating the MAC address of a network
        device, specifically E320?</p>
      <p>Thanks.</p>
      <br>
    </blockquote>
    Trying to attract R&amp;D&#39;s attention on this.=C2=A0 I know we went
    through this with E310 years and years ago, but it was resolved.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b8285d06138321a1--

--===============4718861003681270047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4718861003681270047==--
