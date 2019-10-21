Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC9DDF1B5
	for <lists+usrp-users@lfdr.de>; Mon, 21 Oct 2019 17:38:22 +0200 (CEST)
Received: from [::1] (port=58258 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMZlB-0002tT-OE; Mon, 21 Oct 2019 11:38:17 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:39205)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iMZl8-0002oC-4Q
 for usrp-users@lists.ettus.com; Mon, 21 Oct 2019 11:38:14 -0400
Received: by mail-ot1-f54.google.com with SMTP id s22so11368259otr.6
 for <usrp-users@lists.ettus.com>; Mon, 21 Oct 2019 08:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6iNrpYS/TjzistGI8ZbOgjm5IGb5tbPNmPQzUrL5vqY=;
 b=PqlE8K3/pLJTjGbBJ1hNOg/3VVLLqPg79+c9fryibkCLXwn6EVXzJelwJWK+CdoDXL
 rD0ZHC6G07mY6Pk9tMfP2m7ybLMxttbYxwje3ENsqAZsh56P6/LtIQWrrPiSc5p1Nog6
 EuXBg4AyX+2UkBIIc+p3bKbU6NkIk+pfthWdyzXXDRcwpwmJ7iCgiujGgSXsBf1sBa+v
 m309QiwDxVuqMlihtTimB9chA4bwcFZZl2PZVwjyp37xpCENz+2V+BXqsUBYqzH9/ubh
 WgdeqO5zAR99JIzHcc8mHK6CDhBezMuUqhtYTF67dC0rkMEjn/3315aTs876/EKAeqyj
 JlsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6iNrpYS/TjzistGI8ZbOgjm5IGb5tbPNmPQzUrL5vqY=;
 b=TpgkTYod3cw3y1oHen0OFMdwJvhzbNJEAUTGRImjuZ1kIwmOLlhzWhsvejk4f5ApgC
 8qINtKNoTQsE7tbSEGIRYZkuRJ2JsmKGT1rJzscuwH9uHpu7NXBOGc4uSdvv4Ai4sHHN
 pZ6LaAW183DJIiX6hQ/pS/LE0KRERMOH0nLRH4PALF8fWMj2TgTLTvUJ5SQSZkYM1SKO
 Hf7ACN3rg6PGgG13vmpVgR0vgYHohrP6yAu8jeTRiOINpIGRtL6Ou5WxDlBACUwF+pgl
 7fecvchGN704Cpk/FiJsADOjbTA+R/+IQWHwI6yZc2xhKXfMHlageysKfUhK++ebbZx9
 ToMw==
X-Gm-Message-State: APjAAAVimDrhDS09clgEYB135+y/kqOzD+gUDRqjIYr8njcvTycOFsbc
 E4EceYQlMCKT0JsKbXLJZ7BM/ySmHk4HmqkOgPJpZ/Ml2Xb/PQ==
X-Google-Smtp-Source: APXvYqxvsuiNc6Q665wuuBFAsGtA5+aOFge7fkd/nLqbOjGJOlMHMfx3Q4018ZCRoIW5aOmHbzO/ObDzd6UJGq856K0=
X-Received: by 2002:a9d:6a50:: with SMTP id h16mr19312066otn.120.1571672253248; 
 Mon, 21 Oct 2019 08:37:33 -0700 (PDT)
MIME-Version: 1.0
References: <003001d5881a$bf794260$3e6bc720$@wanadoo.fr>
In-Reply-To: <003001d5881a$bf794260$3e6bc720$@wanadoo.fr>
Date: Mon, 21 Oct 2019 11:37:22 -0400
Message-ID: <CAGNhwTPcboHkAeqdXw-FSexN3vSM+H3Z3AW6eWJO4h12LGKdew@mail.gmail.com>
To: jjm_f1ehn@wanadoo.fr
Subject: Re: [USRP-users] X310 - Long init time under Matlab / W10
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9141428996084213633=="
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

--===============9141428996084213633==
Content-Type: multipart/alternative; boundary="0000000000005bcb9e05956d7605"

--0000000000005bcb9e05956d7605
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi JJ - The UHD MATLAB interface is provided and supported by The
MathWorks. Please contact them with any queries / issues. - MLD

On Mon, Oct 21, 2019 at 10:21 AM F1EHN via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear users,
>
>
>
> The running of my host computer with my X310 platform is OK.
>
> The data acquisition with a TwinRx board runs very well in real time.
>
>
>
> But my application (Matlab or Simulink) takes very long time to init the
> USRP platform (send of the radio parameters) and to catch the true data
> from X310 (the first frame returns null data (not a problem) but takes lo=
ng
> time).
>
> The init phase can take 1 minut and the first frame return takes about 15
> sec.
>
>
>
> So these performances seem very long regarding the few tens of second to
> init the object (comm.SDRuReceiver) and the duration of the data (around =
10
> sec for my radioastronomy application).
>
>
>
> I have open a request service to Mathworks to get help..
>
>
>
> Here I am looking for the true init time I can expect with this platform
> (and my computer =E2=80=93 today a DELL M4800 laptop enough at this time =
for the
> real time running)  (parameters and first data frame) ?
>
>
>
> I have included the time measurement I did under Matlab 2019B (pdf). I
> also get the same result with Simulink..  using =E2=80=9Cfaststart=E2=80=
=9D function the
> platform runs well (confirming the init / parameters long time duration).
>
>
>
> Thank you for help / comments & best regards
>
>
>
> JJ
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

--0000000000005bcb9e05956d7605
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi JJ - The UHD MATLAB interface is provided and supported=
 by The MathWorks. Please contact them with any queries / issues. - MLD</di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On M=
on, Oct 21, 2019 at 10:21 AM F1EHN via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"FR"><div cl=
ass=3D"gmail-m_2266264328796431801WordSection1"><p class=3D"MsoNormal">Dear=
 users,<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">The running of my host computer wi=
th my X310 platform is OK. <u></u><u></u></span></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">The data acquisition with a TwinRx board runs very wel=
l in real time. <u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">But my application (Matlab or Simulink) takes very long time to =
init the USRP platform (send of the radio parameters) and to catch the true=
 data from X310 (the first frame returns null data (not a problem) but take=
s long time). <u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">The init phase can take 1 minut and the first frame return takes ab=
out 15 sec. <u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">So these performances seem very long regarding the few tens of second=
 to init the object (comm.SDRuReceiver) and the duration of the data (aroun=
d 10 sec for my radioastronomy application). <u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">I have open a request service to Mat=
hworks to get help..<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">Here I am looking for the true init time I can expect with th=
is platform (and my computer =E2=80=93 today a DELL M4800 laptop enough at =
this time for the real time running) =C2=A0(parameters and first data frame=
) ? <u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I =
have included the time measurement I did under Matlab 2019B (pdf). I also g=
et the same result with Simulink.. =C2=A0using =E2=80=9Cfaststart=E2=80=9D =
function the platform runs well (confirming the init / parameters long time=
 duration).<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">Thank you for help / comments &amp; best regards<u></u><u></u></span><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">JJ <u></u><u></u></span></p>=
</div></div>_______________________________________________<br>
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

--0000000000005bcb9e05956d7605--


--===============9141428996084213633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9141428996084213633==--

