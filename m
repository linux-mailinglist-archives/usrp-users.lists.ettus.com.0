Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D409B426BE0
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 15:45:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2276A384821
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 09:45:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="mLgKoQZe";
	dkim-atps=neutral
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	by mm2.emwd.com (Postfix) with ESMTPS id AA985384845
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 09:44:12 -0400 (EDT)
Received: by mail-io1-f52.google.com with SMTP id i189so3060943ioa.1
        for <usrp-users@lists.ettus.com>; Fri, 08 Oct 2021 06:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SDXehfcHPezK2gkINGUaj8YEuntOjhsP8e+tJjfrT+Q=;
        b=mLgKoQZeH9te4UkxPOE9AprOs0ZYUwoId8D7D8dIJVDKyK8KHnAmOp7w87bngsJBy4
         XM6yBefmi1LLNlRISP9bLdNUkhGWWyucTIPq0692CKLk6TP6iR4b0hSyJJU+rqX3Lpls
         kbmIPAjCpXGY7FzLlCSiE67KvM3kNVcSV2c0PXygnNbXaGciSkd2paZ9eLF7sa18ctGj
         aubpYWsjoXhtPsIrs6BoCZX27mbFqeYbUtnt7X64tXruBYjC58OKK0k9fXg8tgu/JFmW
         4VTU+TOfaaibQolvwgJY8AdB+DKPK5BTH4R+yTfSHXqV/gXIQiR2ETOjwSm4I8Lx6T21
         Ldrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SDXehfcHPezK2gkINGUaj8YEuntOjhsP8e+tJjfrT+Q=;
        b=1NB25zuOJLarXvq1uk2vaEPpCGtLu6C/MBqNtwkBlWm3gL7sEVW/TybMRY3d2qukBj
         Oqotgia+SlL/ZsMDCr9MH5bytVkaGj2Z80lXddLVLLuu4Gt2TpAuekGBot5IUHHJAEIF
         NLAxXJHQycp1BAYojWHtaOrm7g680kPJHkZoNXMN/dkb8EO/yly5viQrTig11j47NsRB
         5IDnmOPBP1ZXCBLPDWh5Fz8goNBKGeR9724q0HE38OOFJHhTzGTfp9YI9pl9j9WZShCM
         J5h0Ss1Fru6Hw8UxMOcXwNLRZsXfWFF/niJF+0nBy9bLp2XepYYltdhorlMDH1P8Fl0t
         1dVg==
X-Gm-Message-State: AOAM531OxRhPlexoi+XC8JzpEYHL31GuUVri6zNfvWyCUo2kVUEPgDqq
	uQf4rAjw5owqX3JJhnwym3p8Af4VjRWVTFagJYp8TfyZr09BcBdVM0Q=
X-Google-Smtp-Source: ABdhPJyBODqt3CbC5qoLX30C3kF9UAUT9qWsvtZRMS2HKJM4GTAJZOEfXtQHmRYVdYkjM33OakL+Yop8tVVYphZwtok=
X-Received: by 2002:a05:6602:1591:: with SMTP id e17mr7504772iow.146.1633700651938;
 Fri, 08 Oct 2021 06:44:11 -0700 (PDT)
MIME-Version: 1.0
References: <7K2pj4EW5Eoa1fgH0mUuDdejmP10OEa0P2hqRhsqI@lists.ettus.com>
In-Reply-To: <7K2pj4EW5Eoa1fgH0mUuDdejmP10OEa0P2hqRhsqI@lists.ettus.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Fri, 8 Oct 2021 08:43:36 -0500
Message-ID: <CACaXmv9RQCX75vo_im4XFKpp8LOQbxaScUjGGMoj8cyeDYZ+Og@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Message-ID-Hash: ESDSSHKSGDQPC6ZJG3KTFREWP754IMQL
X-Message-ID-Hash: ESDSSHKSGDQPC6ZJG3KTFREWP754IMQL
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Possible to change the name of an N320?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ESDSSHKSGDQPC6ZJG3KTFREWP754IMQL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4249729455488915900=="

--===============4249729455488915900==
Content-Type: multipart/alternative; boundary="000000000000074b0205cdd793e7"

--000000000000074b0205cdd793e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Jason:

Yeah, there is a "name" field in the EEPROM that you can write with the
"usrp_burn_mb_eeprom" utility.  Run "usrp_burn_mb_eeprom --read-all" to
view the current EEPROM contents.

--Neel Pandeya



On Fri, 8 Oct 2021 at 07:47, <jason@gardettoengineering.com> wrote:

> I have a series of N320s sprinkled across our lab and I would like to
> change their names so it is clear where they are located (as opposed to
> keeping a list of which serial number is where), is this possible? i coul=
d
> have sworn I could do this with a different Ettus device in the past, but=
 I
> can=E2=80=99t recall which one. I know some of them could have their host=
names
> changed, but I don=E2=80=99t think that it is possible to do that statica=
lly on the
> N320. Thoughts?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000074b0205cdd793e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Jason:</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">Yeah, there is a &quot;name&quot; field in th=
e EEPROM that you can write with the &quot;usrp_burn_mb_eeprom&quot; utilit=
y.=C2=A0 Run &quot;usrp_burn_mb_eeprom --read-all&quot; to view the current=
 EEPROM contents.</div><div class=3D"gmail_default" style=3D"font-family:ve=
rdana,sans-serif"><br></div><div><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><font face=3D"ver=
dana, sans-serif">--Neel Pandeya</font></div><div><br></div></div></div></d=
iv><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, 8 Oct 2021 at 07:47, &lt;<a href=3D"mailto:jason@gardettoeng=
ineering.com">jason@gardettoengineering.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><p>I have a series of N320s spri=
nkled across our lab and I would like to change their names so it is clear =
where they are located (as opposed to keeping a list of which serial number=
 is where), is this possible?  i could have sworn I could do this with a di=
fferent Ettus device in the past, but I can=E2=80=99t recall which one.  I =
know some of them could have their hostnames changed, but I don=E2=80=99t t=
hink that it is possible to do that statically on the N320.  Thoughts?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000074b0205cdd793e7--

--===============4249729455488915900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4249729455488915900==--
