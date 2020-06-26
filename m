Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 695CD20B54E
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 17:52:42 +0200 (CEST)
Received: from [::1] (port=57964 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1joqec-0000ha-PC; Fri, 26 Jun 2020 11:52:38 -0400
Received: from mail-il1-f169.google.com ([209.85.166.169]:35000)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cherif.chibane@gmail.com>)
 id 1joqeY-0000M0-A4
 for usrp-users@lists.ettus.com; Fri, 26 Jun 2020 11:52:34 -0400
Received: by mail-il1-f169.google.com with SMTP id k1so7711288ils.2
 for <usrp-users@lists.ettus.com>; Fri, 26 Jun 2020 08:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Px+ekFMhNFB/XBV1cPRxUx4kB+xGFCWjSHTHbVg8Wxw=;
 b=cvoc/R9PoUhmD51ocLYtHUiaGAMSGNT5KylA+s6yQkQa+gm6HCH4L1UOohb3G09GsB
 i32riSZ9l6OgTCZMqiAZuTTeMDvvQeuBg4Rph4i/H9mvgycRYVuoR1xvI6bJKWUeNwDX
 T79ximXgQUYewachCt0FwAOCLYD8yAyujXk1Lj/mhUq1IoI2oHOPiXU8POosEBsOAEIO
 N5eI6Mc/uLYFKr7YUd8z/F6iahk2OeCL7Sma8JDgNuw7NIKK8rlItJiCp6YC6OkmI/n6
 3wm1bp+26djRdwZa6TiUTzKfxjp84UL+wJIv1/v1xYEP4omA4fqaPnerQg06MAxyhOr/
 NCuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Px+ekFMhNFB/XBV1cPRxUx4kB+xGFCWjSHTHbVg8Wxw=;
 b=TftOUtGbkVJ+nEDAYcckTBGy3yH0b7O3nf03FMgU3aJXsVLlxLa79JHnmIJAO9+i4J
 0SJXKGhN78JTQk0xP9S3UKMCqGG9ix4Hym+fl+KZUitJ7aNSYH70yzGU8fOOe5VxCU/g
 zZsbve7H7RMxvF4dOyHbt7Kou5s2orm5ENh7GQGhJHySfB8zxkIKq9VAr7XloRiWO15Y
 5domPmcN1C/qVFTYxHq/S6YvZEzUKzPfCBjGenCoaRM7ayxCDrYiOqO2rvLqr9IG1Z7n
 klf9DLIg4wr2yxqcfYitcHLGyQvb47xMLRg2fKRtqk79fnFbd2f6Sj3rMNE0qLKVbPD8
 suxQ==
X-Gm-Message-State: AOAM531RMn4oUgZ6PLYpzEPOcf0sE4L7+cXV1KKJpC6i0F68EGMYOP0T
 XD8f+XOZX6Q8uR7n1193Cya/kE1ci+hVgtilvF8=
X-Google-Smtp-Source: ABdhPJzN+MChQxc855eN3VdMdKZD3mWfYqSOmdG7HbiYRe7kZU74NTFfg7ai7Jm4fXvCgHsPY+cMkw+yP2azRl+X9zY=
X-Received: by 2002:a92:502:: with SMTP id q2mr3492409ile.61.1593186713529;
 Fri, 26 Jun 2020 08:51:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAN-A3_uAoXfcs4zvHt1PSvVN2fB78a7u=nXgiE7FB2S8tWeMVQ@mail.gmail.com>
In-Reply-To: <CAN-A3_uAoXfcs4zvHt1PSvVN2fB78a7u=nXgiE7FB2S8tWeMVQ@mail.gmail.com>
Date: Fri, 26 Jun 2020 11:51:43 -0400
Message-ID: <CAN6+Rz=X+bMsvMuYUiJHc6yE8d-HURJFq-bmCPGnf2wKtZHgOg@mail.gmail.com>
To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
Cc: discuss-gnuradio@gnu.org, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] NEED HELP: RFNoC OOT tutorial
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
From: cherif chibane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: cherif chibane <cherif.chibane@gmail.com>
Content-Type: multipart/mixed; boundary="===============6674768150764819705=="
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

--===============6674768150764819705==
Content-Type: multipart/alternative; boundary="0000000000001ef27305a8feb0f3"

--0000000000001ef27305a8feb0f3
Content-Type: text/plain; charset="UTF-8"

Hi Moahmmed,

I am in the process going that RFOC tutorial in:

https://www.youtube.com/watch?v=j-EfyPVpaJ8

He seems to be using UHD 4.0.0 and yet  he uses XML for binding the RFNoC
module he created. Am I missing something?

Thanks,
Cherif



On Fri, Jun 26, 2020 at 11:14 AM Mohamed Yaaseen via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello Guys,
>
>     I am following the rfnoc getting started tutorial, to develop a gain
> block. I am using the following branches of UHD, gr-ettus, gnuradio.
> UHD - 3.15 LTS
> gr-ettus - maint-3.8
> gnuradio - maint-3.8
> All installed in a custom prefix without using pybombs:
> ~/workspace/installs/stable
>
> I have created the gain oot module using rfnocmodtool with all the
> testbench and also have created the FPGA image. Now to create a gnuradio
> grc bindings, the tutorial uses the xml file.
> Since I am using gnuradio 3.8, it requires a yaml file. But even though I
> am using gr-ettus maint-3.8 branch it's rfnocmodtools is not updated to
> have yaml files. So, I am  stuck with xml.
> Yea, I can just convert xml to yaml file manually, But, I find many extra
> parameter with the xml file
> and I am also not sure  how  I should change the CMakeLists.txt so that
> the yaml files get installed correctly, while installing the OOT module.
> I need some help on how I can create a yaml file for rfnoc oot in a
> proper way ?
>
> My second question is: Currently, I can see that in the master branch of
> UHD, the entire RFNoC work flow is  changing. I couldn't find
> uhd_image_builder.py and gr-ettus is going to be removed etc.
> I will  be working with RFNoC for the next couple of months, so I would
> like to know If I should be moving to UHD 4.0.0 before I begin developing
> my actual rfnoc application. And if so, is there any guide or how-to page
> for RFNoC getting started UHD - 4.0.0 ? The current AN seems pretty
> outdated even for UHD-3.15-LTS version
>
> Looking forward to your suggestions, tips and answers ..!!
>
> Thanks, stay safe and healthy !!
>
> Regards,
> Mohamed Yaaseen
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000001ef27305a8feb0f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Moahmmed,</div><div><br></div><div>I am in the pro=
cess going that RFOC tutorial in:</div><div><br></div><div><a href=3D"https=
://www.youtube.com/watch?v=3Dj-EfyPVpaJ8">https://www.youtube.com/watch?v=
=3Dj-EfyPVpaJ8</a></div><div><br></div><div>He seems to be using UHD 4.0.0 =
and yet=C2=A0 he uses XML for binding the RFNoC module he created. Am I mis=
sing something?</div><div><br></div><div>Thanks,</div><div>Cherif<br></div>=
<div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><br></div></div></div><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 2=
6, 2020 at 11:14 AM Mohamed Yaaseen via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>H=
ello Guys,</div><div>=C2=A0=C2=A0</div><div>=C2=A0=C2=A0=C2=A0 I am followi=
ng the rfnoc getting started tutorial, to develop a gain block. I am using =
the following branches of UHD, gr-ettus, gnuradio.</div><div><div>UHD - 3.1=
5 LTS</div><div>gr-ettus - maint-3.8</div><div>gnuradio - maint-3.8</div><d=
iv>All installed in a custom prefix without using pybombs: ~/workspace/inst=
alls/stable<br></div></div><div><br></div><div>I have created the gain oot =
module using rfnocmodtool with all the testbench and also have created the =
FPGA image. Now to create a gnuradio grc bindings, the tutorial uses the xm=
l file.</div><div>Since I am using gnuradio 3.8, it requires a yaml file. B=
ut even though I am using gr-ettus maint-3.8 branch it&#39;s rfnocmodtools =
is not updated to have yaml files. So, I am=C2=A0 stuck with xml.</div><div=
>Yea, I can just convert xml to yaml file manually, But, I find many extra =
parameter with the xml file</div><div>and I am also not sure=C2=A0 how=C2=
=A0 I should change the CMakeLists.txt so that the yaml files get installed=
 correctly, while installing the OOT module.</div><div>I need some help on =
how I can create a yaml file for rfnoc oot in a=C2=A0 proper way ?<br></div=
><div><br></div><div>My second question is: Currently, I can see that in th=
e master branch of UHD, the entire RFNoC work flow is=C2=A0 changing. I cou=
ldn&#39;t find uhd_image_builder.py and gr-ettus is going to be removed etc=
. <br></div><div>I will=C2=A0 be working with RFNoC for the next couple of =
months, so I would like to know If I should be moving to UHD 4.0.0 before I=
 begin developing=C2=A0 my actual rfnoc application. And if so, is there an=
y guide or how-to page for RFNoC getting started UHD - 4.0.0 ? The current =
AN seems pretty outdated even for UHD-3.15-LTS version</div><div><br></div>=
<div>Looking forward to your suggestions, tips and answers ..!!<br></div><d=
iv><br></div><div>Thanks, stay safe and healthy !!<br></div><div> <br></div=
><div><div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div><div dir=3D"ltr">Regards,<div>Mohamed Yaaseen</div></div=
></div></div></div></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000001ef27305a8feb0f3--


--===============6674768150764819705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6674768150764819705==--

