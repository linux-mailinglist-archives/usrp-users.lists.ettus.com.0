Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B741930C834
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 18:46:10 +0100 (CET)
Received: from [::1] (port=49240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6zkZ-00010W-GK; Tue, 02 Feb 2021 12:46:03 -0500
Received: from mail-ot1-f54.google.com ([209.85.210.54]:45125)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1l6zkW-0000vj-6U
 for usrp-users@lists.ettus.com; Tue, 02 Feb 2021 12:46:00 -0500
Received: by mail-ot1-f54.google.com with SMTP id n42so20626766ota.12
 for <usrp-users@lists.ettus.com>; Tue, 02 Feb 2021 09:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9EpEUn33M/D0pk7oz19uhOaXb33YuuIKWKVab0y5lPU=;
 b=uoP8ZJGLqtjvJqtA519iMgTkxlpoczI4RDdJACRqdjeHkbCf1g6ry+3ou9fgfzdwgf
 onOMJxtQ5e3heIPnyIkcBq/R6NnuHbb4ylqo7VD06LRwSzo+R1IlkLyIut8VjCF84Mu1
 GypO9Lackh0xirdwOJ7C2P9h00C7mlJLyBtZcNDwP2VkXoHG0MF1Ss32u4ACT3veuTmX
 r3lZZkcA6PH9pqkkz0mDY5ttzIbs+/pfYu+ukQPFogVyNrELQsbrJAc0juebCJXk5C79
 x0l+PQVO6wzPX4L4B312EveWVHqfbsEQDExeMdCXYs1fhrwjEjEAsial9jNKvvBx9Tcs
 4+ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9EpEUn33M/D0pk7oz19uhOaXb33YuuIKWKVab0y5lPU=;
 b=F138UKEmm8a2sc/DyxIO8Ef7IttOIZE33WnZD0JgTHCGr5uclEGRjO3q+GaiNTl/qw
 nbtAxKo7bhvJH23mkYiL5OQAZgYBEIXVwbzMNC4TD9ziKaOKMTi0E725sPxuUI2MRUWS
 4OmEM7JBNf3cO3KK7g/95bibBp6CXcuPja11Jea9UCs1jomY4wo18RRzqVuPkQmao9Ae
 ltk6ZGGpw9StS7qYQAgsVwfx1wv87b7vIErQK+ygb18MWs7ry7YuP/vFAGgvK1EZG58G
 n0VQF8EJq8StUP4q1MkXGjclfMXJ1nE3wcgW7SMO5DGg96ROcpLftijKqYIE988Pruzw
 +ZYw==
X-Gm-Message-State: AOAM530aYL4vsEBhWut2ENQvTuUhIV1xFS1mveQdRZoAA9wHFtt2DijS
 Tlg2wMz2uIn2Ync1LKO9rdsch36KsKAyEJP68LlvN4SuR8BPah5J
X-Google-Smtp-Source: ABdhPJxlf5Vwqzt4OQqjWGtl37EJWC2jo1MI98bM/JlAcA/FBWY8VsSTTrPLI528JpmWBHJiAZpF4VSiYPHjwfJr+30=
X-Received: by 2002:a9d:19aa:: with SMTP id k39mr16132746otk.28.1612287919279; 
 Tue, 02 Feb 2021 09:45:19 -0800 (PST)
MIME-Version: 1.0
References: <LNXP123MB372437DE53B4243C99065495CAB59@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <LNXP123MB37243B9CFF15D54ADF43B60BCAB59@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <LNXP123MB37243B9CFF15D54ADF43B60BCAB59@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Date: Tue, 2 Feb 2021 11:45:08 -0600
Message-ID: <CAFche=ho_+V79hQNdL7BoyQCF8x4SJtuo303QwifKJ-urtdTgg@mail.gmail.com>
To: Mark D <md964@hmgcc.gov.uk>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Opening Vivado GUI during FPGA image build
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============7074617135667389933=="
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

--===============7074617135667389933==
Content-Type: multipart/alternative; boundary="000000000000b466c505ba5e08d5"

--000000000000b466c505ba5e08d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mark,

This is curious. If I recall, someone else was having trouble with -g, but
it worked for me last time I tried it. I will try it again to see if I can
reproduce anything. In the meantime, you can run rfnoc_image_builder and
make in separate steps. See if this works:

# Generate the build files only; don't build the image
rfnoc_image_builder -y e320_my_fpga.yml -t E320_1G --generate-only
# Build the image with the GUI
make E320_1G GUI=3D1

Thanks,

Wade

On Tue, Feb 2, 2021 at 9:10 AM Mark D via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Just noticed that I=E2=80=99d put uhd_image_builder, I did of course mean
> rfnoc_image_builder.
>
>
>
> Still not having any luck with this, seems to just ignore the -g option.
>
>
>
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of *Ma=
rk
> D via USRP-users
> *Sent:* 02 February 2021 11:05
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Opening Vivado GUI during FPGA image build
>
>
>
> I=E2=80=99m using UHD 4.0 and building an FPGA for the E320 USRP.
>
>
>
> I=E2=80=99m trying to follow the guide for debugging FPGA images on the E=
ttus
> website AN-121.
>
>
>
> I=E2=80=99m using the rfnoc_image_builder command to build the image, and=
 have
> added the -g option to open the GUI during the build process:
> udd_image_builder -7 e320_my_fpga.yml -t E320_1G -g
>
>
>
> However the build runs to completion without stopping to open up Vivado.
>
>
>
> uhd_image_builder -h shows that the option of -g or =E2=80=93GUI is liste=
d as
> opening the Vivado GUI during the build. I=E2=80=99ve tried both -g and =
=E2=80=93GUI and
> neither had any effect.
>
>
>
> Any ideas? AN-121 is a few years old, is the -g option still supported by
> uhd_image_builder?
>
>
>
> Thanks,
>
>
>
> Mark
> ------------------------------
>
> This email and any files transmitted with it are confidential and intende=
d
> solely for the use of the individual or entity to whom they are addressed=
.
> If you have received this email in error please notify the system manager=
.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b466c505ba5e08d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Mark,</div><div><br></div><div>This is curious. If=
 I recall, someone else was having trouble with -g, but it worked for me la=
st time I tried it. I will try it again to see if I can reproduce anything.=
 In the meantime, you can run rfnoc_image_builder and make in separate step=
s. See if this works:<br></div><div><br></div><div># Generate the build fil=
es only; don&#39;t build the image<br></div><div>rfnoc_image_builder -y e32=
0_my_fpga.yml -t E320_1G --generate-only</div><div># Build the image with t=
he GUI<br></div><div>make E320_1G GUI=3D1</div><div><br></div><div>Thanks,<=
/div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 2, 2021 at 9:10 AM Mark =
D via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-GB">
<div class=3D"gmail-m_4744435335075909835WordSection1">
<p class=3D"MsoNormal">Just noticed that I=E2=80=99d put uhd_image_builder,=
 I did of course mean rfnoc_image_builder.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Still not having any luck with this, seems to just i=
gnore the -g option.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0cm 0cm"=
>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus=
.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Mark D via USRP-users<br>
<b>Sent:</b> 02 February 2021 11:05<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Opening Vivado GUI during FPGA image build<u><=
/u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m using UHD 4.0 and building an FPGA for t=
he E320 USRP.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m trying to follow the guide for debugging=
 FPGA images on the Ettus website AN-121.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m using the rfnoc_image_builder command to=
 build the image, and have added the -g option to open the GUI during the b=
uild process: udd_image_builder -7 e320_my_fpga.yml -t E320_1G -g<u></u><u>=
</u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">However the build runs to completion without stoppin=
g to open up Vivado.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">uhd_image_builder -h shows that the option of -g or =
=E2=80=93GUI is listed as opening the Vivado GUI during the build. I=E2=80=
=99ve tried both -g and =E2=80=93GUI and neither had any effect.<u></u><u><=
/u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any ideas? AN-121 is a few years old, is the -g opti=
on still supported by uhd_image_builder?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Mark<u></u><u></u></p>
<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><span=
>
<hr width=3D"100%" size=3D"2" align=3D"center">
</span></div>
<p class=3D"MsoNormal"><span>This email and any files transmitted with it a=
re confidential and intended solely for the use of the individual or entity=
 to whom they are addressed. If you have received this email in error pleas=
e
 notify the system manager. <u></u><u></u></span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b466c505ba5e08d5--


--===============7074617135667389933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7074617135667389933==--

