Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A86AB71A9
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 04:53:11 +0200 (CEST)
Received: from [::1] (port=55022 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iAmZA-0001uw-Mp; Wed, 18 Sep 2019 22:53:08 -0400
Received: from mail-wm1-f44.google.com ([209.85.128.44]:37696)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1iAmZ7-0001p3-Nv
 for usrp-users@lists.ettus.com; Wed, 18 Sep 2019 22:53:05 -0400
Received: by mail-wm1-f44.google.com with SMTP id f16so2125556wmb.2
 for <usrp-users@lists.ettus.com>; Wed, 18 Sep 2019 19:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G6QwU+8p2j2JEh+8TS16HVwzVg8Xz0UehW+MGSMN4EE=;
 b=fLojrb7bzrqaryX61e3QefxSKRtF0eiLqklOtVil/jxq0P7KzZz5ePFTnGC9RljlZX
 olcwxFPr8CJUwr25KfRePBOnqueJWdRm4cWWYi5j92Tfxc9QUhrhnZbMuac6vHfoUwAv
 udvm/+kzT0VxNDRHPoHXy0BxrT9UOqQpmFl+LLF1OrzkSF4LS17TPNizMO+BD6GvHPEp
 3ltOS9uvL+ZBQMolbZLzE7V3NprgSp5+ibyiXsL2EG+YN8XbovUz4GtU4ROtmyEOIh+c
 t8cEmxgFyqb6W8R4TqJuJPeoGzyvMMIDkgnw0D34jMDh44FMYVqELGZe8aPKMeH+9rKD
 AVOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G6QwU+8p2j2JEh+8TS16HVwzVg8Xz0UehW+MGSMN4EE=;
 b=rmn0KXASawXDR5Vn13AW7fPRj0WA9meXe86U4UEXC6kLcJK4tHaPTWFu2vDsx0bQfD
 ijRdlAAGfrMuxvgyfwUk2rIVnTFtfH3kdcR3XcCwbynQSj9JY2JxIDgFJ2GyAZS4ZRjF
 NJpZer8QwowMCeh6QFUN7fwxXdQ+srokzFPvSCw+ol85QGgs67higDMMLEgBEQjwvhss
 zu+tDT6IxnoWq+YL/YhPOz4NkAwR0qa/tbnPrgwFpWQiKKIQIgSG2zEs15wTtnzHG8Qp
 6U3J/W0Fl8tidv6ahTgzAluLHFMbvpP1wIzu+qg/nVcpKvXaGRcfJJuU8By9MXa+HszW
 Zj1Q==
X-Gm-Message-State: APjAAAWLtsHDzMSEGGuRM0TmLg/yZgYme3gsGAZAWGQP3Awg0hhASJnm
 lOn+oCi7jTAvLWsvrGgLXvN5IWLoci4n0sEo6D4=
X-Google-Smtp-Source: APXvYqzBP/CnxN0H6IFV/2DbL+Ufw15SbDyRSLvLni7C6W7oXktF/5JqS0EtiGqQT8kEdu994qce03suX2O9io9QclU=
X-Received: by 2002:a7b:c391:: with SMTP id s17mr766589wmj.94.1568861544626;
 Wed, 18 Sep 2019 19:52:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTSy0XTx9ryC+Z4zAm3RBcOV=3-YBBcQAQjUJpcjmiCJpg@mail.gmail.com>
In-Reply-To: <CAB__hTSy0XTx9ryC+Z4zAm3RBcOV=3-YBBcQAQjUJpcjmiCJpg@mail.gmail.com>
Date: Wed, 18 Sep 2019 21:52:11 -0500
Message-ID: <CADRnH21x-5nYH1131h7VNXcftAJ96XKv=ECn4N3CcFgoq=VMpA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] running an rfnoc testbench without installing
 gnuradio
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6012822994519829539=="
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

--===============6012822994519829539==
Content-Type: multipart/alternative; boundary="00000000000011bead0592df0bf4"

--00000000000011bead0592df0bf4
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

I do this often. Usually I just clone uhd-fpga adjacent to my repo under
test and then basically call `make xsim` in the testbench folder.

Here's a couple example testbenches:
https://gitlab.com/theseus-cores/theseus-cores/tree/master/fpga-rfnoc/testbenches

With an example script running in a CI system:
https://gitlab.com/theseus-cores/theseus-cores/blob/master/.gitlab-ci.yml#L24

As an aside, you can also do something similar to build rfnoc FPGA images
without needing a gnuradio install. I've set up this repo to contain git
submodules pointing to compatible versions of uhd-fpga and theseus-cores:
https://gitlab.com/theseus-cores/theseus-uhd-builder Just clone with the
extra `--recursive` flag and it will pull the corresponding repos at the
correct SHA1s.

Hope this helps!

EJ

On Wed, Sep 18, 2019, 9:31 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I have been designing custom noc blocks and successfully building images
> and running testbenches using a local workstation for which I have sudo
> permission.  But, now I would like to do my builds and run my testbenches
> on a server which is administered by the university for which I do not have
> such permission.
>
> The administrator has installed Vivado 2018.3 and I have successfully run
> the uhd_image_builder script to build the default image for the E310.
> However, now I am wondering if it is possible to run testbenches without
> first installing / building UHD / gnuradio, gr-ettus and perhaps lots of
> other pre-reqs.  Is it possible for me to run testbenches without these
> things?
>
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000011bead0592df0bf4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Rob,<div dir=3D"auto"><br></div><div dir=3D"auto">I do=
 this often. Usually I just clone uhd-fpga adjacent to my repo under test a=
nd then basically call `make xsim` in the testbench folder.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Here&#39;s a couple example testbench=
es:=C2=A0<a href=3D"https://gitlab.com/theseus-cores/theseus-cores/tree/mas=
ter/fpga-rfnoc/testbenches" target=3D"_blank" rel=3D"noreferrer">https://gi=
tlab.com/theseus-cores/theseus-cores/tree/master/fpga-rfnoc/testbenches</a>=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">With an example script =
running in a CI system:=C2=A0<a href=3D"https://gitlab.com/theseus-cores/th=
eseus-cores/blob/master/.gitlab-ci.yml#L24" target=3D"_blank" rel=3D"norefe=
rrer">https://gitlab.com/theseus-cores/theseus-cores/blob/master/.gitlab-ci=
.yml#L24</a></div><div dir=3D"auto"><br></div><div dir=3D"auto">As an aside=
, you can also do something similar to build rfnoc FPGA images without need=
ing a gnuradio install. I&#39;ve set up this repo to contain git submodules=
 pointing to compatible versions of uhd-fpga and theseus-cores:=C2=A0<a hre=
f=3D"https://gitlab.com/theseus-cores/theseus-uhd-builder">https://gitlab.c=
om/theseus-cores/theseus-uhd-builder</a> Just clone with the extra `--recur=
sive` flag and it will pull the corresponding repos at the correct SHA1s.</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">Hope this helps!</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">EJ</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 18, 2019, 9:=
31 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<br=
><div>I have been designing=C2=A0custom noc blocks and successfully buildin=
g images and running testbenches using a local workstation for which I have=
 sudo permission.=C2=A0 But, now I would like to do my builds and run my te=
stbenches on a server which is administered=C2=A0by the university for whic=
h I do not have such permission.=C2=A0=C2=A0</div><div><br></div><div>The a=
dministrator=C2=A0has installed Vivado 2018.3 and I have successfully run t=
he uhd_image_builder script to build the default image for the E310.=C2=A0 =
However, now I am wondering if it is possible to run testbenches without fi=
rst installing / building UHD / gnuradio, gr-ettus and perhaps lots of othe=
r pre-reqs.=C2=A0 Is it possible for me to run testbenches without these th=
ings?</div><div><br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000011bead0592df0bf4--


--===============6012822994519829539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6012822994519829539==--

