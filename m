Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA1D3E4D13
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 21:28:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BF2F3851BF
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 15:28:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YRK06VYv";
	dkim-atps=neutral
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by mm2.emwd.com (Postfix) with ESMTPS id D3E1D380D86
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 15:27:17 -0400 (EDT)
Received: by mail-ot1-f50.google.com with SMTP id d10-20020a9d4f0a0000b02904f51c5004e3so14845799otl.9
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 12:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=blNQOPV68AAsZptlYO5wx49T2QMSkjL/hXvbldTdqBg=;
        b=YRK06VYv0TsnvUAVPahEHXCZP5wqPQQdVYVNH7PlMaLRsbWDcOXWzXSzjnmAPRPib5
         bepfh85miE0rylrN6y3oDFD+zHytOQdF57htd5gHZ5MsGexufmtNFuFiL6kuEgwZtwvS
         G7tMUrtTEE1U1hWljsKKlOycgf4Z0c8+Cazw4tl6+JAlhPL9CiR9y9PlpshJGVLuDELO
         S6Ry3/Zs0NEVp7L27Uq5qYWCMGq0+Ip6gQOF1lcNQL9FMSKYZCtJ9+IAfRb6Q3T8VD+0
         KvSfz/5I5EDqZcTzi2SNkb+ojn+Cr5P/nYAcA6ekyVZRJuIk4clRdKHEzjAYdYxnBik7
         ILoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=blNQOPV68AAsZptlYO5wx49T2QMSkjL/hXvbldTdqBg=;
        b=EiYd2lHOE7b67ANanYzH4GWi/1v+CT6gzutDFloCwc1E0TwUAs1meX2HV2DJ8P0OSM
         U5GzfiqvT5DtaF3VYV5CPBIonQRnyXpGPJF3WPJIzpx/XxdMDXowFQps9L05k0z4bBHi
         ie9RXxIwpoK4g5a+h+k66zae/qA00ISPm/kV7jrYS8iBmoloRZ8ixjqV2nCnJmMeGaOJ
         MnRsSlMRoe4k8RGGEhnqMdu542I/ekAji4SPsiv5a6JcW8nc690ue+CV4ddgnb7OCOV3
         /2lLJ9vbIVm95/6K5UjJiX9XTXNmU2+1tKOUzXEAPVOu7X3oilt1wkrDmmCWrCrqRwPs
         zAIQ==
X-Gm-Message-State: AOAM531diyTFyGV4W64PgckTJ57/0LvEST7IF7dSZvbpkf0eqdmJy0/z
	EUzCboO4PUyDcNkQvP3dBabEelRPKf8h1lFsHgI=
X-Google-Smtp-Source: ABdhPJyYM+IIxCIsiBoQ7xDzLLgLtW4veUP7tD0GUcLdleqHQRlZ6islh0aK4eWFCnAAsASUvl2faE2GCLVvv/LLYy4=
X-Received: by 2002:a9d:1441:: with SMTP id h59mr12671874oth.15.1628537237088;
 Mon, 09 Aug 2021 12:27:17 -0700 (PDT)
MIME-Version: 1.0
References: <A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.com>
 <CAEXYVK5o4sfq-rC4x34Hoq5cP7ahXksBhMdg4rtzp07sGGMWVw@mail.gmail.com>
 <BN1P110MB01323D8769737F7F320EB88D95F69@BN1P110MB0132.NAMP110.PROD.OUTLOOK.COM>
 <CAEXYVK4=93B2Xef37C0K4+R6yHB=2OKa0VWNkgg4VFjAPqVSuA@mail.gmail.com> <BN1P110MB0132F8220CA4ECAE995955E595F69@BN1P110MB0132.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN1P110MB0132F8220CA4ECAE995955E595F69@BN1P110MB0132.NAMP110.PROD.OUTLOOK.COM>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 9 Aug 2021 15:27:06 -0400
Message-ID: <CAEXYVK6NtvOpBhMj15Bg1stF3jSKO6-XvPFkAEzSLWt8k7E5mA@mail.gmail.com>
To: "Black, Robert" <RBlack@d16.swri.us>
Message-ID-Hash: GZXWHI3IAQG4Y4KL4HJY23CALPFPFBQK
X-Message-ID-Hash: GZXWHI3IAQG4Y4KL4HJY23CALPFPFBQK
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "rblack@swri.org" <rblack@swri.org>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 RFNoc radio block question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GZXWHI3IAQG4Y4KL4HJY23CALPFPFBQK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5933482468956844158=="

--===============5933482468956844158==
Content-Type: multipart/alternative; boundary="000000000000852c3e05c9255f36"

--000000000000852c3e05c9255f36
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 9, 2021 at 2:01 PM Black, Robert <RBlack@d16.swri.us> wrote:

> In my case I could do all the processing that I need to do within a
> 25MSample rate data stream, with definitely no need for  =E2=80=9Coversam=
pling=E2=80=9D
> beyond what the 25MSamp rate provides.  If it were possible to magically
> change the initial sample rate of the radio (combined with the  existing
> input filter), I could a) get rid of an unnecessary firmware block b)
> reduce processing load and power c) eliminate the latency involved in the
> DDC filtering.
>

Which daughterboard are you using?

Brian

>

--000000000000852c3e05c9255f36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Aug 9, 2021 at 2:01 PM Black, Rob=
ert &lt;<a href=3D"mailto:RBlack@d16.swri.us">RBlack@d16.swri.us</a>&gt; wr=
ote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-6043426701549503704WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:rgb(31,73,125)">In my case I could do all the processing that =
I need to do within a 25MSample rate data stream, with definitely no need f=
or =C2=A0=E2=80=9Coversampling=E2=80=9D beyond what the 25MSamp
 rate provides.=C2=A0 If it were possible to magically change the initial s=
ample rate of the radio (combined with the =C2=A0existing input filter), I =
could a) get rid of an unnecessary firmware block b) reduce processing load=
 and power c) eliminate the latency involved
 in the DDC filtering.</span></p></div></div></blockquote><div><br></div><d=
iv>Which daughterboard are you using?</div><div><br></div><div>Brian</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div c=
lass=3D"gmail-m_-6043426701549503704WordSection1"><div><div><div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--000000000000852c3e05c9255f36--

--===============5933482468956844158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5933482468956844158==--
