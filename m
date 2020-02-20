Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7721663B1
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2020 18:01:08 +0100 (CET)
Received: from [::1] (port=56400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4pCF-00080v-Jy; Thu, 20 Feb 2020 12:01:07 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:44570)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1j4pBX-0004P7-FR
 for usrp-users@lists.ettus.com; Thu, 20 Feb 2020 12:00:23 -0500
Received: by mail-ot1-f51.google.com with SMTP id h9so4289158otj.11
 for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2020 09:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U7D7zV2PQ7ILpNXZ0iWAIdwp6ZIGdon69CJFOa6ccrQ=;
 b=WcWRedUJPaqJns+rAIFh5Jox2xLysZC6h9txaqHluRpWha2nTZYRuH3rPMV+qFkthF
 aozW1f+GbHQvaBX6Znc/PNDtddzrpZEKylHV2NhfNlC7vS3DhJ1RUV3+tRijAk/hnTUv
 Yg7yWvfUCog5kumzlMjyPr2xPGCTljVtWHg9Ydv6mlfiNNHv3rAZWUDvr/us2Q4UdJGe
 PBtHob7Vg0iDQvYOOtqD8AeToFboMSyH2YcslXezOfV0YX9rFBXRU8lNg9byMuyjNYKI
 GVFvURDUPAdDZeOge2liU7aAqecvMyV/Ezzh1ArSiPNAHrgp8Bytd8D7s6BebaqH/O6Y
 01AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U7D7zV2PQ7ILpNXZ0iWAIdwp6ZIGdon69CJFOa6ccrQ=;
 b=G0MUjDTsihk8aqXJddMkM8lHsnFVheO2+RardDTq2RdFsYPCdddHVEHUnHxVUE53OA
 A/5fw+qf0bxW4rJrcGuSn7/CMJwKVL8r8weizbOYkTxrWkAWmn1ZKB+J82GVMq0MEgjt
 kZe8pCtdL8ZoH4hRJOYEdUAETDPyeOt0QB+0LiG07cOk/dWsS/9DiP5n8g2fzwSLqZ1Z
 gLYpriL9hukd3RJKsVqshZA1ayNF59/F36y1E4qquvh7mMGqi5ZsIfYuGrgmUmg71/QV
 G3xh5aBe/HcB07Ev35GuYMjN+gajn6bi3I66mCtkIuMHAk5SAzA0A4RKtOiY7W3S+x55
 s3/A==
X-Gm-Message-State: APjAAAVeDMJz2wJyOVSF3dxW5dzFw+OqG2zjqaZ7aSh+2cf57o35Lk+q
 jSY7DlNhbAIiZ+OcOtyDwjh77YWrww7N5h4MrMWfg5hdm41JRA==
X-Google-Smtp-Source: APXvYqwkt265zDCN/tskeuYkOVqIoPAFebcws40fBJl9PjcL5tW7QsqZn22lorxA1zBdc48pyZyyhjCeFZnaQJ0w+jg=
X-Received: by 2002:a05:6830:124b:: with SMTP id
 s11mr23862896otp.333.1582217982312; 
 Thu, 20 Feb 2020 08:59:42 -0800 (PST)
MIME-Version: 1.0
References: <105801d5e7ff$f7f2aa10$e7d7fe30$@sdr-radio.com>
In-Reply-To: <105801d5e7ff$f7f2aa10$e7d7fe30$@sdr-radio.com>
Date: Thu, 20 Feb 2020 11:59:31 -0500
Message-ID: <CAGNhwTPXJP3j6xNmpjwom-+BEKf11Vv=EmYHxLK+Wd=o6YpCTw@mail.gmail.com>
To: simon@sdr-radio.com
Subject: Re: [USRP-users] UHD 3.15 LTS, X310 performance
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2004805031162931744=="
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

--===============2004805031162931744==
Content-Type: multipart/alternative; boundary="000000000000cb0e0a059f04d45d"

--000000000000cb0e0a059f04d45d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Simon - When you say "but performance is not great" ... beyond CPU load:
do you get good Tx and Rx rates (e.g., if you run "benchmark_rate") without
underruns / overflows / late packets (etc)? What is the MTU set to for this
ENET link? 1 GbE or 10 GbE? Can you provide a little more detail for us to
work with here? Thx! - MLD

On Thu, Feb 20, 2020 at 10:11 AM Simon G4ELI via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
>
>
> Now using UDB 3.15 LTZ instead of UHD 4.0 and a user=E2=80=99s X310 works=
 but
> performance is not great:
>
>
>
>    - CPU load high,
>    - MTU size results in only 364 samples per buffer which I believe to
>    indirectly cause the high CPU.
>
>
>
> I=E2=80=99ve not found much on the Ettus site apart from ensuring the MTU=
 size is
> correct, so the question is: how on earth do I get better streaming from
> the X310?
>
>
>
> As I=E2=80=99m compiling 3.15 LTS from source making changes is easy.
>
>
>
> Simon Brown, G4ELI
>
> https://www.sdr-radio.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--000000000000cb0e0a059f04d45d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Simon - When you say &quot;but performance is not great=
&quot; ... beyond CPU load: do you get good Tx and Rx rates (e.g., if you r=
un &quot;benchmark_rate&quot;) without underruns / overflows / late packets=
 (etc)? What is the MTU set to for this ENET link? 1 GbE or 10 GbE? Can you=
 provide a little more detail for us to work with here? Thx! - MLD</div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, F=
eb 20, 2020 at 10:11 AM Simon G4ELI via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-GB"><di=
v class=3D"gmail-m_-1039429921645581786WordSection1"><p class=3D"MsoNormal"=
>Hi,<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p cla=
ss=3D"MsoNormal">Now using UDB 3.15 LTZ instead of UHD 4.0 and a user=E2=80=
=99s X310 works but performance is not great:<u></u><u></u></p><p class=3D"=
MsoNormal"><u></u>=C2=A0<u></u></p><ul style=3D"margin-top:0cm" type=3D"dis=
c"><li class=3D"gmail-m_-1039429921645581786MsoListParagraph" style=3D"marg=
in-left:0cm">CPU load high,<u></u><u></u></li><li class=3D"gmail-m_-1039429=
921645581786MsoListParagraph" style=3D"margin-left:0cm">MTU size results in=
 only 364 samples per buffer which I believe to indirectly cause the high C=
PU.<u></u><u></u></li></ul><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><=
p class=3D"MsoNormal">I=E2=80=99ve not found much on the Ettus site apart f=
rom ensuring the MTU size is correct, so the question is: how on earth do I=
 get better streaming from the X310?<u></u><u></u></p><p class=3D"MsoNormal=
"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">As I=E2=80=99m compiling 3=
.15 LTS from source making changes is easy.<u></u><u></u></p><p class=3D"Ms=
oNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><span>Simon Brown, =
G4ELI<u></u><u></u></span></p><p class=3D"MsoNormal"><span><a href=3D"https=
://www.sdr-radio.com" target=3D"_blank">https://www.sdr-radio.com</a><u></u=
><u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></d=
iv>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--000000000000cb0e0a059f04d45d--


--===============2004805031162931744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2004805031162931744==--

