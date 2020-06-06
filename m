Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3321F05F0
	for <lists+usrp-users@lfdr.de>; Sat,  6 Jun 2020 11:36:07 +0200 (CEST)
Received: from [::1] (port=41310 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jhVFE-0002m9-Hs; Sat, 06 Jun 2020 05:36:04 -0400
Received: from mail-lj1-f182.google.com ([209.85.208.182]:34483)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mdyaaseen1995@gmail.com>)
 id 1jhVFA-0002cg-Qg
 for usrp-users@lists.ettus.com; Sat, 06 Jun 2020 05:36:00 -0400
Received: by mail-lj1-f182.google.com with SMTP id b6so14736160ljj.1
 for <usrp-users@lists.ettus.com>; Sat, 06 Jun 2020 02:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=cmHldgTpTPDuvyqW8V/2Gi5E/ASZ9ktEz9fXysBd2Iw=;
 b=PyvtCrx3XgTxoygL0RvQ7Z6IgHAQ9NxIMpyNZh1K7+3SPAREk7wCnMZpOs+po3BsAm
 pFaJG3u8cPhjg7e4CRpPBsBWnSAogskwpgRSvzyJ8jWRdWgnxpZrQQuX/9djD4MC987t
 cUbmC7cLXNRgMRvcnBS/xH1STPWfjIDqHoNEQvcy84Os6hSqhzQWq8ufROZf2pzzdEhm
 +hMMHvGDHULeduztpVvTXD7WYnF3gcxGz+5oap1/J9QcWf1WBx3x8rJNW8Gzec0vKQCc
 RTYlfgd+xojtmXtp6Voaj8jYeMzc+wYg3HDCt/DAFcImmjTmUj6VZiu5qtqBdp8LbWjw
 xGfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cmHldgTpTPDuvyqW8V/2Gi5E/ASZ9ktEz9fXysBd2Iw=;
 b=Em61u7ChXYQldPLN6NT1NDOWt+etfY+zSOYJcp1qgQxNvOIv0MJ4PYgeql0KGfH1GL
 U51RDcAUMP2EqYRrxvLfW4hOqhX9V4VzFDixF96KxsRINMSOQzYyOvPpalcgsAgK8WVQ
 aEygOWX5ufJ2YGhKrWNX/vh2hcvouoxbSoOErs9jxIlG8t2SU58GzkTAjvZqG63WPNEG
 NCBJuhbuyWsSGfEkV9vDVixnRF7pX1r7w6nOTs6q74kYUnE1O/x9yjNJhpkOjIUM4i6p
 oo++R/OmDhWmNzHubUd627BFAck1QF90tuUq9Y7fDcg0ccyJwObofv9yTFQfeGmsV+WM
 exWQ==
X-Gm-Message-State: AOAM531izapjiU7kmZAxy63y8EN7p7OsCM89uMkjO9LFiGv6BnY/VTKB
 sXNpoUZ33vdpqNmn+cAU+k35g6L0NsLmmKwpRDp+hYgVcs4=
X-Google-Smtp-Source: ABdhPJwTw6I1OyNib7Ux5ZIG7U+zrwJxhjtgnw+MhmFcIvTMFUTG2UE5qv/NIpX+oM9cGEq6KvPGx7t7i9Q0Cjtj1qg=
X-Received: by 2002:a2e:9ac6:: with SMTP id p6mr7040957ljj.417.1591436118981; 
 Sat, 06 Jun 2020 02:35:18 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 6 Jun 2020 11:35:07 +0200
Message-ID: <CAN-A3_u1vLFbjH5yCZjakSDAhF52vWG+f6GrnK=6R8QnCDktXw@mail.gmail.com>
To: usrp-users@lists.ettus.com, discuss-gnuradio@gnu.org
Subject: [USRP-users] HELP: needed with RFNoC & gr-ettus & PFB
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
From: Mohamed Yaaseen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
Content-Type: multipart/mixed; boundary="===============6147672176051832576=="
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

--===============6147672176051832576==
Content-Type: multipart/alternative; boundary="0000000000008e007b05a767180e"

--0000000000008e007b05a767180e
Content-Type: text/plain; charset="UTF-8"

Hello Guys,
          recently I have started looking into the RFNoC platform. I have
successfully installed RFNoC and was able to build fpga images with
default pre-built modules like fft etc. I haven't; however started with the
gain module from "Getting started tutorial"  .

My system setup,

USRP x310 ---- with XG image (connected to PC using dual 10 Gig Ethernet)

uhd -------------  UHD 3.15 LTS branch
gnuradio ------   maint-3.8   branch
gr-ettus---------- maint-3.8  branch
vivado system edition (with HLS, Model Composer, DSP system generator)
----- 2018.03v

fpga images and code was submoduled as part of uhd hence they are at\
 ~/{UHD SRC DIR}/fpga-src/usrp3/..

all installed in a custom prefix (~/workspace/installs/stable) without
pybombs.
I have couple of questions and errors I got  that I want help with


   1.  As of this branch UHD 3.15 LTS, it was mentioned I should use
   uhd_image_builder_gui.py or uhd_image_builder.py script. So, when I used
   it, I couldn't find target type  X310_RFNOC_HLS_HG . Is it removed or what
   up with that ?
   2.  Second is with respect to gr-ettus (I came to know that there are
   some major changes going with this in upcoming UHD 4.0 I will come to that
   in later points). So, as per tutorial we have to use rfnodmodtools which is
   part of gr-ettus to create our own OOT  RFNoC module. But, I faced one
   error with it and I  fixed that error (I am not sure if it is a correct
   fix). I have raised an issue here in gr-ettus repo. please anyone let me
   know if this is a issue or if I was doing something wrong. Because the is
   is with respect to path of rfnocmodtools template. Here is the link for the
   issue: https://github.com/EttusResearch/gr-ettus/issues/45
   3. Third, as this will be my first time working with RFNoC and FPGA
   (atleast with Xilinx, I have some experience from my studies).  My main
   interest with RFNoC is that I wanna create a channelizer, for 160MHz and
   split up into 80 channels each of 2 MHz (critically sampled). and take
   everything to the PC for 80x demod & 80x symbol sync. What is the latest
   development in that direction? I got to know a repo called gr-theseus. Is
   it maintained still ? Can I start from there or should I start from
   scratch. I am looking to connect with is anyone working/worked with PFB
   4. Last one, how is the structure gonna change in future with UHD 4.0 &
   gr-ettus gonna, it would really helpful if someone could explain (very
   confucsed with this coz i couldn't find uhd_image_builder etc.) this
   workflow with new updates and what you guys recommend should start with
   3.15 LTS or switch UHD 4.0 because by the I finish PFB i might have to port
   to a completely new workflow. But in any case, I need gnuradio integration


I know it is a lot of questions, sorry guys. But, when I started setup with
RFNoC, I faced many questions like this, and I felt others might have these
too. These points will allow people who might need them to get their
answers in a single place.

Any help, answers, suggestions  or improvements  for these questions will
be really helpful and are highly welcomed !

Thanks and Regards.
Yaaseen

--0000000000008e007b05a767180e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello Guys,</div><d=
iv>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 recently I have started looking into =
the RFNoC platform. I have successfully installed RFNoC and was able to bui=
ld fpga images with default=C2=A0pre-built modules like fft etc. I haven&#3=
9;t; however started with the gain module from &quot;Getting started tutori=
al&quot;=C2=A0 .=C2=A0</div><div><br></div><div>My system setup,</div><div>=
<br></div><div>USRP x310 ---- with XG image (connected to PC using dual 10 =
Gig Ethernet)<br></div><div><br></div><div>uhd -------------=C2=A0 UHD 3.15=
 LTS branch</div><div>gnuradio ------=C2=A0 =C2=A0maint-3.8=C2=A0=C2=A0

branch

</div><div>gr-ettus---------- maint-3.8=C2=A0

branch

</div><div>vivado system edition (with HLS, Model Composer, DSP system gene=
rator) ----- 2018.03v</div><div><br></div><div>fpga images and code was sub=
moduled as part of uhd hence they are at\</div><div>=C2=A0~/{UHD SRC DIR}/f=
pga-src/usrp3/..</div><div><br></div><div>all installed in a custom=C2=A0pr=
efix=C2=A0(~/workspace/installs/stable)=C2=A0without pybombs.=C2=A0</div><d=
iv>I have couple of questions and errors I got=C2=A0 that I want help with<=
/div><div><br></div><div><ol><li>=C2=A0As of this branch UHD 3.15 LTS, it w=
as mentioned I should use uhd_image_builder_gui.py or uhd_image_builder.py =
script. So, when I used it, I couldn&#39;t find target type=C2=A0=20
X310_RFNOC_HLS_HG

. Is it removed or what up with that ?</li><li>=C2=A0Second is with respect=
 to gr-ettus (I came to know that there are some major changes going with t=
his in upcoming UHD 4.0 I will come to that in later points). So, as per tu=
torial we have to use rfnodmodtools=C2=A0which is part of gr-ettus to creat=
e our own OOT=C2=A0 RFNoC module. But, I faced one error with it and I=C2=
=A0 fixed that error (I am not sure if it is a correct fix). I have raised =
an issue here in gr-ettus repo. please anyone let me know if this is a issu=
e or if I was doing something wrong. Because the is is with respect to path=
 of rfnocmodtools=C2=A0template. Here is the link for the issue:=C2=A0<a hr=
ef=3D"https://github.com/EttusResearch/gr-ettus/issues/45">https://github.c=
om/EttusResearch/gr-ettus/issues/45</a></li><li>Third, as this will be my f=
irst time working with RFNoC and FPGA (atleast with Xilinx, I have some exp=
erience from my studies).=C2=A0 My main interest with RFNoC is that I wanna=
 create a channelizer, for 160MHz and split up into 80 channels each of 2 M=
Hz (critically sampled). and take everything to the PC for 80x demod &amp; =
80x symbol sync. What is the latest development=C2=A0in that direction? I g=
ot to know a repo called gr-theseus. Is it maintained still ? Can I start f=
rom there or should I start from scratch. I am looking to connect with=20

is anyone=C2=A0working/worked with PFB

</li><li>Last one, how is the structure gonna change in future with UHD 4.0=
 &amp;=C2=A0 gr-ettus gonna, it would really helpful if someone could expla=
in (very confucsed with this coz i couldn&#39;t find uhd_image_builder etc.=
) this workflow with new updates and what you guys recommend should start w=
ith 3.15 LTS or switch UHD 4.0 because by the I finish PFB i might have to =
port to a completely=C2=A0new workflow. But in any case, I need gnuradio in=
tegration</li></ol></div><div><br></div><div>I know it is a lot of question=
s, sorry guys. But, when I started setup with RFNoC, I faced many questions=
 like this, and I felt others might have these too. These points will allow=
 people who might need them to get their answers in a single place.=C2=A0</=
div><div><br></div><div><div>Any help, answers, suggestions=C2=A0 or improv=
ements=C2=A0 for these questions will be really helpful and are highly=C2=
=A0welcomed !</div></div><div><br></div><div>Thanks and Regards.</div><div>=
Yaaseen</div></div></div></div>

--0000000000008e007b05a767180e--


--===============6147672176051832576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6147672176051832576==--

