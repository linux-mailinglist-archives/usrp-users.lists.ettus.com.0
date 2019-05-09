Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B8C19046
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 20:36:23 +0200 (CEST)
Received: from [::1] (port=36266 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOnu0-0008ME-ID; Thu, 09 May 2019 14:36:20 -0400
Received: from mail-wm1-f46.google.com ([209.85.128.46]:38836)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <ianb@ionconcepts.com>)
 id 1hOntR-0008Ax-1w
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 14:36:15 -0400
Received: by mail-wm1-f46.google.com with SMTP id f2so4399589wmj.3
 for <usrp-users@lists.ettus.com>; Thu, 09 May 2019 11:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionconcepts-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=do3NqpR7LlTtX4YKpsnnMzGWRFwjpFjZA1gp7NwCXTg=;
 b=M/pO59D9K+hipheAEUJ/0bupOjZdosijpRSQ210MYhc6akNuBwHeK0n97OSZ3L+LOY
 ycFVGOWEWcxBlrNQedoL/ViZkDwPXH0ePagiL7krwsZhSvIzbGgTvLrYdPywU7WD/IW4
 VHZ79BE91VBBv7gfCT2jXNO7QAJQEej3xXOhKWKtkJtZ3ye24nNAkXzw3Yp6oIasshy7
 UeDr8aWEg0IUftafdWmQkSPoYXEVRzopULVH8lu3wjLaBKOmCANB2wN3SqbaCcL4ChEa
 o2KGcAlnw8vqbbB93GWO9kRZ0K0nRvkMv4RvYkvZWk3N11q7RxmrnGopinc7AVbVNkjT
 sm1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=do3NqpR7LlTtX4YKpsnnMzGWRFwjpFjZA1gp7NwCXTg=;
 b=doKP6s7TTxfK7/TWwc79NNjnmLP8/Fh7whdy0BN8WtMToEubtkOi67eD7vPNGGqSrc
 r9wV23qTz5PV7CR2GuCE7+Vb5hvj8/sGk6BgJ3Zhyi/pX526WKuS13u3AMldnvzY5v+j
 o5mRz9a+X7D5iWy9KPArJByN3zSjnd7K72SFevRZHCxjg7mc4OhW/iYaCIKWaOdhJJlM
 NV/QtXBE8xrhCUsO+6HSS8HIwRzmyZTVJoOd+ak6X1NwVD9FpqPdulJcD98Gcj2QITQ1
 3xIXpXeWhKvTetdZbm14vz1Rhwm9ur/c/9AY5Dxu4olnpW+IiCggodTY+ZtH8Qx4A90b
 D1wg==
X-Gm-Message-State: APjAAAUZwYeMDr1iWqQD4qX+Prr7of2qCroc4TMARxeL/6iH7FyYAHXj
 RhKL05EqZq0yAp672VUjS4pQuBl7iXkr8wHuBrNqfhPj
X-Google-Smtp-Source: APXvYqxIsGDr+pZUgRixwJYdSntFCmCJ0H+QDcOjVK0nhJ2ofj6U63didjnueTd1OINMMCcJZdaGr2Q4hLcs3e76FdQ=
X-Received: by 2002:a1c:f407:: with SMTP id z7mr3933876wma.34.1557426903876;
 Thu, 09 May 2019 11:35:03 -0700 (PDT)
MIME-Version: 1.0
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
 <CA+JMMq9oRqxDSVgyACAZucejC2Z3hKwciNCjX_YEJ6taCgUQ-g@mail.gmail.com>
 <CA+JMMq8N5XP6Z9CDUO0JHZxJotHRPfQRRqsvJT5-XwZZVWRv+w@mail.gmail.com>
 <A0F0F533-AE85-4802-A676-EA4C39C9372F@k5so.com>
 <B98CD290-9E92-49CE-AD7D-E19FE82B5657@k5so.com>
 <CA+JMMq9+WVXGDRwBd9WAcwXHXDynDsUYy4nOXuryttxvNKbXCA@mail.gmail.com>
 <19BFE8B3-662A-4DC0-BB72-557E7495F6D0@k5so.com>
 <5F41CEE9-58DF-4868-89C2-5F88876803DF@k5so.com>
 <CAGVTi8VOeNG5B9X-WaMQrvbxkt96UFhm5a6-++9znYCzexfRtQ@mail.gmail.com>
 <9f223faf-add7-74cc-faa1-d4a0ed95e28a@balister.org>
 <2C9C895D-DD6D-4456-9F1D-557F699AB391@k5so.com>
 <5CD36887.5050805@gmail.com> <4F25C7C9-CB61-46DF-9163-2CB0CF86DDCF@k5so.com>
 <F19914AE-5635-4F61-A19B-13C16AE6CE8D@k5so.com>
 <2BBEC239-22F9-4F4C-B777-222484DEC314@k5so.com>
 <BL0PR12MB2340B79E071584EF5599E398AF330@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84612E15-1A0B-40FF-9AA3-A810D7500BE3@k5so.com>
In-Reply-To: <84612E15-1A0B-40FF-9AA3-A810D7500BE3@k5so.com>
Date: Thu, 9 May 2019 11:34:51 -0700
Message-ID: <CAM_0ocHPiAfxGGUND037U3mzSDoN_+odmwZX=tzDLq-=_JjH7A@mail.gmail.com>
To: Joe Martin <k5so@k5so.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Need a little help with running legacy prebuilt
 UHD versions
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ian Buckley via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ian Buckley <ianb@ionconcepts.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6441730644193093713=="
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

--===============6441730644193093713==
Content-Type: multipart/alternative; boundary="0000000000005e9fe4058878b5a5"

--0000000000005e9fe4058878b5a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Joe,
So I scratched my head about this a little late last night and looked back
through the development repository for the N210 and as far as I can tell
there was never customer facing FPGA code for a Rev2 N210. Chatting with
Matt this morning he shared my feeling that a Rev2 wasn't sold to
customers, so I'm curious if you have a unit that has a factory label that
says N210Rev2 or if you have seen "usrp2 rev2.0" on the PCB (which can be
missleading).

Also have you tried booting into the safe image and verifying that it at
least pings on 192.168.10.2?

If we can conclusively identify which rev of h/w you have I can probably
help further.

Ian

On Thu, May 9, 2019, 8:05 AM Joe Martin via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Argh.  Yes, maybe that=E2=80=99s what I will need to do then.  I=E2=80=99=
ll try it.
>
> Looks like the earliest vintage of UHD that=E2=80=99s available is Feb 20=
14
> (v3.4.0), which is about 4 years after the Rev2 N210, I think.  So that U=
HD
> version may still be too recent to work with the Rev2 N210.  That=E2=80=
=99ll be my
> last attempt before abandoning the thing as you did with yours.
>
> Thanks for the comments and help, Jason.  Good luck with your projects!
>
> Joe
>
> On May 9, 2019, at 8:20 AM, Jason Matusiak <jason@gardettoengineering.com=
>
> wrote:
>
> Maybe try running a VM of a version of Ubuntu that is roughly the vintage
> of that version of UHD?
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Joe
> Martin via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Thursday, May 9, 2019 9:53 AM
> *To:* Joe Martin
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Need a little help with running legacy prebuilt
> UHD versions
>
> I need a bit of help to understand how to run legacy prebuilt UHD version=
s
> from the files.ettus.com/binaries/uhd repository.
>
> I would like to try various UHD versions to try to find a version that
> will run with an elderly (Rev 2) N210 with unknown firmware/fpga images i=
n
> it.  After downloading a legacy version, e.g.,
> uhd_003.004.000-release_Ubuntu-11.10-x86_64.deb, and clicking =E2=80=9Cin=
stall=E2=80=9D I
> am not understanding what I need to do next to actually run the version, =
as
> uhd_usrp_probe =E2=80=94version reports the version of UHD that I origina=
lly had
> installed, not the legacy version I intended to install.
>
> I am running Ubuntu 18.04, should I expect to be able to run the legacy
> versions labeled, for example, *_Ubuntu-11.10-x86_64.deb, as in the examp=
le
> above ?
>
> Clearly I=E2=80=99m missing something fundamental, and likely simple, in =
my
> understanding about how to use these prebuilt older versions.  I have had
> no problem building, installing, and running UHD versions from source but=
 I
> have never tried to run a =E2=80=9Cprebuilt=E2=80=9D version before.
>
> Joe
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005e9fe4058878b5a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Joe,<div dir=3D"auto">So I scratched my head about this a=
 little late last night and looked back through the development repository =
for the N210 and as far as I can tell there was never customer facing FPGA =
code for a Rev2 N210. Chatting with Matt this=C2=A0morning he shared my fee=
ling that a Rev2 wasn&#39;t sold to customers, so I&#39;m curious if you ha=
ve a unit that has a factory label that says N210Rev2 or if you have seen &=
quot;usrp2 rev2.0&quot; on the PCB (which can be missleading).</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Also have you tried booting into the=
 safe image and verifying that it at least pings on 192.168.10.2?</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">If we can conclusively identify w=
hich rev of h/w you have I can probably help further.</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Ian</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 9, 2019, 8:05 AM Joe Mar=
tin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div style=3D"word-wrap:break-word;line-break:after-white-space">Argh.=C2=
=A0 Yes, maybe that=E2=80=99s what I will need to do then.=C2=A0 I=E2=80=99=
ll try it.=C2=A0<div><br></div><div>Looks like the earliest vintage of UHD =
that=E2=80=99s available is Feb 2014 (v3.4.0), which is about 4 years after=
 the Rev2 N210, I think.=C2=A0 So that UHD version may still be too recent =
to work with the Rev2 N210.=C2=A0 That=E2=80=99ll be my last attempt before=
 abandoning the thing as you did with yours. =C2=A0<div><br></div><div>Than=
ks for the comments and help, Jason.=C2=A0 Good luck with your projects!</d=
iv><div><br></div><div>Joe<br><div><div><br><blockquote type=3D"cite"><div>=
On May 9, 2019, at 8:20 AM, Jason Matusiak &lt;<a href=3D"mailto:jason@gard=
ettoengineering.com" target=3D"_blank" rel=3D"noreferrer">jason@gardettoeng=
ineering.com</a>&gt; wrote:</div><br class=3D"m_-6828260562029000969Apple-i=
nterchange-newline"><div><div style=3D"font-style:normal;font-variant-caps:=
normal;font-weight:normal;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decorati=
on:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">Mayb=
e try running a VM of a version of Ubuntu that is roughly the vintage of th=
at version of UHD?</div><div id=3D"m_-6828260562029000969Signature" style=
=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-cap=
s:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decora=
tion:none"><div><div id=3D"m_-6828260562029000969appendonsend"></div><div s=
tyle=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br>=
</div><hr style=3D"display:inline-block;width:782.03125px"><div id=3D"m_-68=
28260562029000969divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-ser=
if" style=3D"font-size:11pt"><b>From:</b><span class=3D"m_-6828260562029000=
969Apple-converted-space">=C2=A0</span>USRP-users &lt;<a href=3D"mailto:usr=
p-users-bounces@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-=
users-bounces@lists.ettus.com</a>&gt; on behalf of Joe Martin via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=
=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;<br><b>Sent:</b><span cla=
ss=3D"m_-6828260562029000969Apple-converted-space">=C2=A0</span>Thursday, M=
ay 9, 2019 9:53 AM<br><b>To:</b><span class=3D"m_-6828260562029000969Apple-=
converted-space">=C2=A0</span>Joe Martin<br><b>Cc:</b><span class=3D"m_-682=
8260562029000969Apple-converted-space">=C2=A0</span><a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@list=
s.ettus.com</a><br><b>Subject:</b><span class=3D"m_-6828260562029000969Appl=
e-converted-space">=C2=A0</span>[USRP-users] Need a little help with runnin=
g legacy prebuilt UHD versions</font><div>=C2=A0</div></div><div style=3D"w=
ord-wrap:break-word">I need a bit of help to understand how to run legacy p=
rebuilt UHD versions from the<span class=3D"m_-6828260562029000969Apple-con=
verted-space">=C2=A0</span><a href=3D"http://files.ettus.com/binaries/uhd" =
target=3D"_blank" rel=3D"noreferrer">files.ettus.com/binaries/uhd</a>=C2=A0=
repository. =C2=A0<div><br></div><div>I would like to try various UHD versi=
ons to try to find a version that will run with an elderly (Rev 2) N210 wit=
h unknown firmware/fpga images in it.=C2=A0 After downloading a legacy vers=
ion, e.g., uhd_003.004.000-release_Ubuntu-11.10-x86_64.deb, and clicking =
=E2=80=9Cinstall=E2=80=9D I am not understanding what I need to do next to =
actually run the version, as uhd_usrp_probe =E2=80=94version reports the ve=
rsion of UHD that I originally had installed, not the legacy version I inte=
nded to install. =C2=A0<div><br></div><div>I am running Ubuntu 18.04, shoul=
d I expect to be able to run the legacy versions labeled, for example, *_Ub=
untu-11.10-x86_64.deb, as in the example above ?=C2=A0</div><div><br></div>=
<div>Clearly I=E2=80=99m missing something fundamental, and likely simple, =
in my understanding about how to use these prebuilt older versions.=C2=A0 I=
 have had no problem building, installing, and running UHD versions from so=
urce but I have never tried to run a =E2=80=9Cprebuilt=E2=80=9D version bef=
ore.=C2=A0</div><div><br></div><div>Joe</div></div></div></div></div></div>=
</blockquote></div><br></div></div></div></div>____________________________=
___________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000005e9fe4058878b5a5--


--===============6441730644193093713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6441730644193093713==--

