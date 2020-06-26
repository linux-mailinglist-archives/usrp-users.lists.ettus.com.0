Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DF520B43D
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 17:14:12 +0200 (CEST)
Received: from [::1] (port=57722 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1joq3M-0004bg-Rf; Fri, 26 Jun 2020 11:14:08 -0400
Received: from mail-vs1-f45.google.com ([209.85.217.45]:34542)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mdyaaseen1995@gmail.com>)
 id 1joq3J-0004Ui-KL
 for usrp-users@lists.ettus.com; Fri, 26 Jun 2020 11:14:05 -0400
Received: by mail-vs1-f45.google.com with SMTP id f24so5695391vsg.1
 for <usrp-users@lists.ettus.com>; Fri, 26 Jun 2020 08:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=rAtGB6cOdDnVDT8JutaGc9DnDtfD/k142oJ1pVqIOVk=;
 b=LccfTC7iNy6kz3uZOqnZEjpGahCaZFnIuvI7mXj2zm+F2UclS4AT23rnDJ4lUo1Jde
 q1TKXnD76PGhnSUJW19j8E+QhKTGfMoB9X1XM94php5CNoACWouWLyfMtq8Xd2CJam65
 TOmxp18hZS9+aea4bOB2FbSSE+L76vTF7K7UCBEE57LrnwsROYzmCZRmlymHPLGlsRkh
 kQyP3rcIpvpny/U56FfIxz5+wj0jnNNtwY0jWMC0xLQOe21bz0lNAQ1keTAXf6PpJBlP
 Pq8424OLJcQTiirWZ3LL5rG1WXMP5Xb+qbDqlYJetuVMeCSOmPdwTJh33dt/lKpAKJRa
 apnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rAtGB6cOdDnVDT8JutaGc9DnDtfD/k142oJ1pVqIOVk=;
 b=nkfHibcDughJ23xv8fYktJtGaxfUD8qx1EbxovE/Q1VypJBg0OmmQ6ToHsATuCKmAd
 iTzHY5o/ajv5KWnuptkoHSMMAjVuNut5S9yUKJrBgzlshVRnYebAzpHeHFmjacmiTXLd
 rV8w/CR0MdTg6OAzNZxl2wbLnQ+By51JDphfL5PKpty0P9Ukyll4WiWAsCf3PVspEkUb
 +a41iJyN2XDHWTdSfleSYBnE2848b9xUU6Ewv0A3wtrTZyqDZN/lJ6WgIlOc039Wu/Mk
 IEQJ9QN38lTkfxtJtUqYlvz828XyDdTw1yIlEObA5Ryr+R1aUH5zT++IM4qVtlOOabHo
 4+IA==
X-Gm-Message-State: AOAM530lOM27YuP5KncnxVsplL1w4hb46vM3QtwcRUwWMa2X6LWMbrE4
 AaSRRmCHBRjlEWCabTfOdLkWOFL/pa/RZVzAd5Y=
X-Google-Smtp-Source: ABdhPJwCs4x2QjrM6LmEMRocdhRH3jlOjC2rf2N4YzpYTiCXghBBmIJaWzIZbAR5o5HUWtazZhPRLQ2sKbYVwWGtYOg=
X-Received: by 2002:a67:2c45:: with SMTP id s66mr2804897vss.49.1593184405000; 
 Fri, 26 Jun 2020 08:13:25 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 26 Jun 2020 17:12:08 +0200
Message-ID: <CAN-A3_uAoXfcs4zvHt1PSvVN2fB78a7u=nXgiE7FB2S8tWeMVQ@mail.gmail.com>
To: discuss-gnuradio@gnu.org, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] NEED HELP: RFNoC OOT tutorial
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
From: Mohamed Yaaseen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
Content-Type: multipart/mixed; boundary="===============1755543125771138517=="
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

--===============1755543125771138517==
Content-Type: multipart/alternative; boundary="0000000000008595b005a8fe269f"

--0000000000008595b005a8fe269f
Content-Type: text/plain; charset="UTF-8"

Hello Guys,

    I am following the rfnoc getting started tutorial, to develop a gain
block. I am using the following branches of UHD, gr-ettus, gnuradio.
UHD - 3.15 LTS
gr-ettus - maint-3.8
gnuradio - maint-3.8
All installed in a custom prefix without using pybombs:
~/workspace/installs/stable

I have created the gain oot module using rfnocmodtool with all the
testbench and also have created the FPGA image. Now to create a gnuradio
grc bindings, the tutorial uses the xml file.
Since I am using gnuradio 3.8, it requires a yaml file. But even though I
am using gr-ettus maint-3.8 branch it's rfnocmodtools is not updated to
have yaml files. So, I am  stuck with xml.
Yea, I can just convert xml to yaml file manually, But, I find many extra
parameter with the xml file
and I am also not sure  how  I should change the CMakeLists.txt so that the
yaml files get installed correctly, while installing the OOT module.
I need some help on how I can create a yaml file for rfnoc oot in a  proper
way ?

My second question is: Currently, I can see that in the master branch of
UHD, the entire RFNoC work flow is  changing. I couldn't find
uhd_image_builder.py and gr-ettus is going to be removed etc.
I will  be working with RFNoC for the next couple of months, so I would
like to know If I should be moving to UHD 4.0.0 before I begin developing
my actual rfnoc application. And if so, is there any guide or how-to page
for RFNoC getting started UHD - 4.0.0 ? The current AN seems pretty
outdated even for UHD-3.15-LTS version

Looking forward to your suggestions, tips and answers ..!!

Thanks, stay safe and healthy !!

Regards,
Mohamed Yaaseen

--0000000000008595b005a8fe269f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Guys,</div><div>=C2=A0=C2=A0</div><div>=C2=A0=
=C2=A0=C2=A0 I am following the rfnoc getting started tutorial, to develop =
a gain block. I am using the following branches of UHD, gr-ettus, gnuradio.=
</div><div><div>UHD - 3.15 LTS</div><div>gr-ettus - maint-3.8</div><div>gnu=
radio - maint-3.8</div><div>All installed in a custom prefix without using =
pybombs: ~/workspace/installs/stable<br></div></div><div><br></div><div>I h=
ave created the gain oot module using rfnocmodtool with all the testbench a=
nd also have created the FPGA image. Now to create a gnuradio grc bindings,=
 the tutorial uses the xml file.</div><div>Since I am using gnuradio 3.8, i=
t requires a yaml file. But even though I am using gr-ettus maint-3.8 branc=
h it&#39;s rfnocmodtools is not updated to have yaml files. So, I am=C2=A0 =
stuck with xml.</div><div>Yea, I can just convert xml to yaml file manually=
, But, I find many extra parameter with the xml file</div><div>and I am als=
o not sure=C2=A0 how=C2=A0 I should change the CMakeLists.txt so that the y=
aml files get installed correctly, while installing the OOT module.</div><d=
iv>I need some help on how I can create a yaml file for rfnoc oot in a=C2=
=A0 proper way ?<br></div><div><br></div><div>My second question is: Curren=
tly, I can see that in the master branch of UHD, the entire RFNoC work flow=
 is=C2=A0 changing. I couldn&#39;t find uhd_image_builder.py and gr-ettus i=
s going to be removed etc. <br></div><div>I will=C2=A0 be working with RFNo=
C for the next couple of months, so I would like to know If I should be mov=
ing to UHD 4.0.0 before I begin developing=C2=A0 my actual rfnoc applicatio=
n. And if so, is there any guide or how-to page for RFNoC getting started U=
HD - 4.0.0 ? The current AN seems pretty outdated even for UHD-3.15-LTS ver=
sion</div><div><br></div><div>Looking forward to your suggestions, tips and=
 answers ..!!<br></div><div><br></div><div>Thanks, stay safe and healthy !!=
<br></div><div> <br></div><div><div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Regards,<div>Mohamed Yaaseen=
</div></div></div></div></div></div></div></div></div></div></div></div>

--0000000000008595b005a8fe269f--


--===============1755543125771138517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1755543125771138517==--

