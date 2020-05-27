Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AB31E4A68
	for <lists+usrp-users@lfdr.de>; Wed, 27 May 2020 18:38:07 +0200 (CEST)
Received: from [::1] (port=49476 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jdz47-0002A8-Tu; Wed, 27 May 2020 12:38:03 -0400
Received: from mail-yb1-f169.google.com ([209.85.219.169]:32842)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1jdz43-0001gm-PK
 for usrp-users@lists.ettus.com; Wed, 27 May 2020 12:37:59 -0400
Received: by mail-yb1-f169.google.com with SMTP id g79so11903319ybf.0
 for <usrp-users@lists.ettus.com>; Wed, 27 May 2020 09:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K+3Omu26ghQ/F6CIFU3/QCWNisBJL6VUAUwdYbdQlto=;
 b=XcJWUH0mloQsEqXtKkMv7dbwZiH0i8xnlBbJ0jjnAf1ZM9813oTAtaZQOWFUUG3azU
 zaUqIiwyEfKIl7FOWix/ZQNfsSpI4Q953jV3OisdFHYk5+4amaZ7lnGpOrR+1ZQiPSoy
 13sCwbkHW/LnU0fbfgxZe2ZmeYUnrUnVrmSneNvNxuxcnUaqN+HfAf3LMfJ9TNW5WQlu
 hs0kRn6pg5OTSLaJ3XKkVoWb9P0FwkN87xgZkW91YPfUjSckSiG2Nt862cP+z5AvcXjE
 lyelnQwPENtGpF8MZyg6MWAUqT1aEevNaKwAUdz1Zlmxe0fXwl0iqX2uNguIosNx9t/O
 XuIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K+3Omu26ghQ/F6CIFU3/QCWNisBJL6VUAUwdYbdQlto=;
 b=QAICQ5nqTa/HJ3tItjNQcftT3RHfaMJbWEWL/NwTMq/6skIXYThKeL0Ag7fBsP4IhZ
 LRlXCdAZF2d3w9njEsASWqKYkerfb7awxOZiPfmGhrO12LjjiEVz9O96qdhc7UxfLuiO
 nlqhw8sNvap9YN37LhbxfENaLjltwHRMxNyId3MrUe2cS0GKODDGs8lPXWaT07NSb2EU
 ovCNqsBPJhr/ozOPoSbvQ1q4AjGbftojHjwL1xRbE6Bi57OjAKf3ce8ZNdvxEhIqbraZ
 LIAmjWPLEdWCPnxIykAp9HCgAVCFerWBGGfLA5Ey63oA9aUoRxV4ZK7jPjlnVzNP3lLm
 m5Tg==
X-Gm-Message-State: AOAM532P+SHBMEUvwttNfrN1JWgOKlt8gjZgUPELLi1keY18zlsz3UBA
 9Xddy21m2VQtSOLeuoskLOOjL2OYI/NzNFFEGFU2eQ==
X-Google-Smtp-Source: ABdhPJx7o1FFI1d5T4y6f/q+bC9URKabZATxyMPvo4GdXela+PIFwRbT7bH8XwnN3/gJDFUFspL+NA1r7cJ2CwyN3+Y=
X-Received: by 2002:a25:9d0e:: with SMTP id i14mr10918543ybp.64.1590597439035; 
 Wed, 27 May 2020 09:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <b85e909970a544ebb9fd74f25661599f@fhooembox2.fhooe.at>
In-Reply-To: <b85e909970a544ebb9fd74f25661599f@fhooembox2.fhooe.at>
Date: Wed, 27 May 2020 11:37:07 -0500
Message-ID: <CADBWrHhNXXfDzx8gLT-d1ypATCFLznosSo4E=B9fkMRS1ThL+Q@mail.gmail.com>
To: Haberleitner David - S1810567006 <S1810567006@students.fh-hagenberg.at>
Subject: Re: [USRP-users] X310: control frontend with custom RFNoC blocks
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter8@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4802851840851080908=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4802851840851080908==
Content-Type: multipart/alternative; boundary="000000000000559dc405a6a3d3a6"

--000000000000559dc405a6a3d3a6
Content-Type: text/plain; charset="UTF-8"

David,

Do you know ahead of time what the frequency sweeps are going to be, or do
you need to have your RFNoC block creating and scheduling them dynamically?

If you know your frequency sweep list ahead of time, a much easier
technique would be for you to send your tune requests from host to radio as
timed commands. This way you can queue up hops that will execute at a
precise timestamp in your data  stream. Depending on the length of your
frequency list, you may need to expand the size of the command queue in
your FPGA image, but that would be a much more manageable task than
creating a block that constructs and issues commands.

-Sam

On Wed, May 27, 2020 at 7:04 AM Haberleitner David - S1810567006 via
USRP-users <usrp-users@lists.ettus.com> wrote:

> Hi everyone,
>
>
> for our project we would like to control frontend settings directly from
> the hardware to perform fast frequency sweeps.
> Is there a way to do that?
>
>
> From out research it seems that the frontend chips (UBX160 in our case)
> are controlled via a SPI register in the Radio-NoC block. But we haven't
> figured out how to control this register from our custom block (via the
> Command Interface?).
>
>
> Thanks,
> David
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000559dc405a6a3d3a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">David,<div><br></div><div>Do you know ahead of time what t=
he frequency sweeps are going to be, or do you need to have your RFNoC bloc=
k creating and scheduling them dynamically?</div><div><br></div><div>If you=
 know your frequency sweep list ahead of time, a much easier technique woul=
d be for you to send your tune requests from host to radio as timed command=
s. This way you can queue up hops that will execute at a precise timestamp =
in your data=C2=A0 stream. Depending on the length of your frequency list, =
you may need to expand the size of the command queue in your FPGA image, bu=
t that would be a much more manageable task than creating a block that cons=
tructs and issues commands.=C2=A0</div><div><br></div><div>-Sam</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, May 27, 2020 at 7:04 AM Haberleitner David - S1810567006 via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);background-color:=
rgb(255,255,255);font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi everyone,</p>
<p><br>
</p>
<p>for our project we would like to control frontend settings directly from=
 the hardware to perform fast frequency sweeps.<br>
Is there a way to do that?</p>
<p><br>
</p>
<p>From out research it seems that the frontend chips (UBX160 in our case) =
are controlled via a SPI register in the Radio-NoC block. But we haven&#39;=
t figured out how to control this register from our custom block (via the C=
ommand Interface?).</p>
<p><br>
</p>
<p>Thanks,<br>
David<br>
</p>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000559dc405a6a3d3a6--


--===============4802851840851080908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4802851840851080908==--

