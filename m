Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB3B8814F
	for <lists+usrp-users@lfdr.de>; Fri,  9 Aug 2019 19:34:57 +0200 (CEST)
Received: from [::1] (port=57604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hw8n1-0000cJ-OJ; Fri, 09 Aug 2019 13:34:55 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:36090)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bill1310272059@gmail.com>)
 id 1hw8my-0000TQ-3X
 for usrp-users@lists.ettus.com; Fri, 09 Aug 2019 13:34:52 -0400
Received: by mail-ot1-f52.google.com with SMTP id k18so3447732otr.3
 for <usrp-users@lists.ettus.com>; Fri, 09 Aug 2019 10:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dOWuXvDw4bADkzJEduxiJtSuHMWvbbGiTfb/fV/TS0o=;
 b=an+vpi0laUrNSpAviR+LK8tske54Bdh6LkIBOC52yOF4Lo1gTvIopUWqABfFBYmfeN
 5tycI7pirmLLWHSRvpnYHJQeeCvCIHED1mR7aesxGWNVUFVmIQKwyRaWc/pEsJgmR3L0
 vo5PdrFi6uFv+/QDeyQCiCbET++LFB5k+AnBeOTF8AZgrxd30bjT7AdgjqnOQ8aqxGjQ
 TDdMU/MhTEcB5O9KsjNNy+gsF2TLXHUm/R1YdSMm8yfELkUWVj0Kxh9ZPtzfyAm6l0/7
 sXx+R4D8Cc3DtGYLWPGtN4SFtf2ty6p5EVH9V4mUPYjW5/C0ODHJGGWDnWmOW0fLT56s
 psDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dOWuXvDw4bADkzJEduxiJtSuHMWvbbGiTfb/fV/TS0o=;
 b=r+8UyC2sivFl7CwkGqs4pmgI3p94YEOkwtFHyiM+/wSfISlcw70pYUhPkfRTS0+YMp
 qf26VO1gTIKTYQlW+npAUJdSL6NSjMB3LEhZrhGbGLy2Nf9c9qWAG6/vq3oBN1jpUVcq
 XglLheaWuYW4Kz1ZVXvVOqpniCpSJ8Y3NWkH6wGQ+LYS6xbBdnCsLUWU9iYizB1QuE0+
 0X8os+yrfl1O0Ki5Q1Ad/B5DieeP7zYHs04tTsx9oacOXk9FeakSV7fibmF6oQD6qgeg
 YE6aS47uZ7faAVGE9eVNt9E9HtDDC5+JJeHSpMpB+rrlerQbfq+QIrB6RnmUhmJTjxgI
 84vg==
X-Gm-Message-State: APjAAAXAU/z8EJksxcgVyS2KTK8jVeuDgDwiy7LNozWcN/oVQv7DZVQ0
 P7Icw4oyxL+nWXqSvkcnKVx2VId6hGP1p+5caJ8=
X-Google-Smtp-Source: APXvYqwM37lJAaqssMpuywmpsvG33mSVnlHCnoNGoJ6q7SsJk+kx/jFBVhW+8s5V5nLJZ6n62CMi1yDPQ68CmLUTTMU=
X-Received: by 2002:a6b:6310:: with SMTP id p16mr10790062iog.118.1565372051513; 
 Fri, 09 Aug 2019 10:34:11 -0700 (PDT)
MIME-Version: 1.0
References: <CACBa4aMGrsTbSAi_E8H+9Gs67FZiXqAKBCSw9pfvugcecXjdXw@mail.gmail.com>
 <3d794848-cd21-4a34-848f-94406e829146@www.fastmail.com>
In-Reply-To: <3d794848-cd21-4a34-848f-94406e829146@www.fastmail.com>
Date: Fri, 9 Aug 2019 13:34:00 -0400
Message-ID: <CACBa4aOuMYuO9u4g_NOH2=Sb66y9YCMa8-77aH_yCqrHSyPL6A@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Subject: Re: [USRP-users] How to get code phase from the output of GNSS-SDR?
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
From: "Xu, Zhao via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Xu, Zhao" <ZhaoXu9807@gmail.com>
Cc: USRP Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4597652374314357375=="
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

--===============4597652374314357375==
Content-Type: multipart/alternative; boundary="00000000000012678f058fb295b9"

--00000000000012678f058fb295b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much!

Zhao Xu

Michael Dickens <michael.dickens@ettus.com> =E4=BA=8E2019=E5=B9=B48=E6=9C=
=889=E6=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8B=E5=8D=881:33=E5=86=99=E9=81=93=EF=
=BC=9A

> Hi Zhao Xu - Your query is really about GNSS-SDR, not about USRP (or GNU
> Radio). Hence it is better suited for their email list <
> https://sourceforge.net/p/gnss-sdr/mailman/gnss-sdr-developers/ >, or
> directly to one of their development team < https://gnss-sdr.org/team/ >,
> or maybe on their GitHub < https://github.com/gnss-sdr/gnss-sdr >. I've
> always had good success in contacting the GNSS-SDR team via various of
> these methods; hopefully you will too! - MLD
>
> On Fri, Aug 9, 2019, at 1:19 PM, Xu, Zhao via USRP-users wrote:
>
> Hello, I am trying to use USRP N210 to get the code phase of the received
> satellite signal. And I have the output of Acquisition and Tracking Block=
s
> after running gnss-sdr command according to the instructions (
> https://gnss-sdr.org/conf/ ).
>
> However, I cannot understand the usage of these data and I also cannot
> find some detailed explanation of the output file. I have the following
> data and could you please tell me how I can calculate the code phase?
>
>
>

--=20
Sincerely,
Zhao Xu

--00000000000012678f058fb295b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thank you very much!=C2=A0<br><div><br></=
div><div>Zhao Xu</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">Michael Dickens &lt;<a href=3D"mailto:michael.dickens=
@ettus.com">michael.dickens@ettus.com</a>&gt; =E4=BA=8E2019=E5=B9=B48=E6=9C=
=889=E6=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8B=E5=8D=881:33=E5=86=99=E9=81=93=EF=
=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u><d=
iv><div style=3D"font-family:Arial">Hi=C2=A0Zhao Xu - Your query is really =
about GNSS-SDR, not about USRP (or GNU Radio). Hence it is better suited fo=
r their email list &lt;=C2=A0<a href=3D"https://sourceforge.net/p/gnss-sdr/=
mailman/gnss-sdr-developers/" target=3D"_blank">https://sourceforge.net/p/g=
nss-sdr/mailman/gnss-sdr-developers/</a>=C2=A0&gt;, or directly to one of t=
heir development team &lt; <a href=3D"https://gnss-sdr.org/team/" target=3D=
"_blank">https://gnss-sdr.org/team/</a>=C2=A0&gt;, or maybe on their GitHub=
 &lt;=C2=A0<a href=3D"https://github.com/gnss-sdr/gnss-sdr" target=3D"_blan=
k">https://github.com/gnss-sdr/gnss-sdr</a> &gt;. I&#39;ve always had good =
success in contacting the GNSS-SDR team via various of these methods; hopef=
ully you will too! - MLD</div><div style=3D"font-family:Arial"><br></div><d=
iv>On Fri, Aug 9, 2019, at 1:19 PM, Xu, Zhao via USRP-users wrote:<br></div=
><blockquote type=3D"cite" id=3D"gmail-m_2672723423152898439qt"><div dir=3D=
"ltr"><div style=3D"font-family:Arial">Hello, I am trying to use USRP N210 =
to get the code phase of the received satellite signal. And I have the outp=
ut of Acquisition and Tracking Blocks after running gnss-sdr command accord=
ing to the instructions ( <a href=3D"https://gnss-sdr.org/conf/" target=3D"=
_blank">https://gnss-sdr.org/conf/</a>=C2=A0).<br></div><div><br></div><div=
>However, I cannot understand the usage of these data and I also cannot fin=
d some detailed explanation of the output file. I have the following data a=
nd could you please tell me how I can calculate the code phase?<br></div></=
div></blockquote><div style=3D"font-family:Arial"><br></div></div></blockqu=
ote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D=
"gmail_signature"><div dir=3D"ltr">Sincerely,<div>Zhao Xu</div></div></div>=
</div>

--00000000000012678f058fb295b9--


--===============4597652374314357375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4597652374314357375==--

