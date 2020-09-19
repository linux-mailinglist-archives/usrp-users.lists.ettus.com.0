Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5DC271167
	for <lists+usrp-users@lfdr.de>; Sun, 20 Sep 2020 01:38:24 +0200 (CEST)
Received: from [::1] (port=56656 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kJmQs-0002ol-FQ; Sat, 19 Sep 2020 19:38:18 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:44599)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kJmQo-0002jU-HG
 for usrp-users@lists.ettus.com; Sat, 19 Sep 2020 19:38:14 -0400
Received: by mail-ot1-f67.google.com with SMTP id a2so8970979otr.11
 for <usrp-users@lists.ettus.com>; Sat, 19 Sep 2020 16:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=SNDJsST7OrsMFJvlQazm9xVUCIhyyZiCTWsvPzg4AcY=;
 b=WVb9anJh26eiCGbEsdrjVOsNXzNh0FZQsgBecyZprkI6Vh8RIsqs6F1IJWe89ktMyk
 n6kyLtRmiP8DVv3/iaPcUq9y4bUNI89ZR2qwigvySdFQ6hYsepLgu6GrGY334rVr0heJ
 vzRjB6WRjEa/+jGsvbXURaYFW/0ybjdtGLKMNqJ5glVyNHCqVIalsBE+rLr7GXiob5Nx
 A4zKRQNCDITZLv4IU8pWvulFyILG+TRieI5QRGFn1OiuzCeHAqpB55bUuZfEdIywMIpq
 CpGbb7KvA1GRmfPP1m6NLAalvashoLSJC2FifwlhX/usHH0YgVD9DzA0YrCdwlZwnsLF
 X+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=SNDJsST7OrsMFJvlQazm9xVUCIhyyZiCTWsvPzg4AcY=;
 b=o1ZiBaJPdlH/ooV1Ckjay0LWGv7/T5yn4kjdo/Q89LZqALHYcd3RXfF7sbF4yOOtj2
 D77Dg9hprslgthIIRUkiqSXC480Vm1f5dIVYakDbll41OczwQLLGGRSOze2REcsmLvS7
 tZC+RdO23hS614NTx9Ckp3C2OQSzNuSQmYXJC51gZum0ooiwU9cnkHrKhZvVqkFZwFpU
 Ri8xgb24W4YT8Su03zcCBQj4pUAp8Kmy/Z6rL2cig/aspgFMwWZi8yZBGna47EXkTBGR
 PdFdmId2RPCqziQMxtU2CPHkwdNfmxcFi15d0J4D0b1ZSE9+ibQv04STZQdX3mLecicN
 GvZw==
X-Gm-Message-State: AOAM532cHK5GwMYDtf5k2NL6crgJEDUKl/t2eoJdOYzoi8/TYIG6Y5mh
 iOMrGrjm96Q3pj+m4SM6JzMHMm38ND75e+U45Jrw0mYqXvv/Bg==
X-Google-Smtp-Source: ABdhPJzujCMa9lAo34fmTcr0eqSEyigRLGluXiqsIFxVThlXqg/6jBT7RAO2TjFtwIM+QiST3y+Fn9MDyG7yq9o7wOg=
X-Received: by 2002:a9d:6219:: with SMTP id g25mr27550827otj.58.1600558653248; 
 Sat, 19 Sep 2020 16:37:33 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 19 Sep 2020 19:37:22 -0400
Message-ID: <CAB__hTTEgsfiRZzaYPbQ1THOzNMj2bN0zk34FUn6EckgD0b-6w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Struggles using Xilinx IP OOT in RFNoC 4.0
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4189300372969796383=="
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

--===============4189300372969796383==
Content-Type: multipart/alternative; boundary="000000000000f84c7905afb319a7"

--000000000000f84c7905afb319a7
Content-Type: text/plain; charset="UTF-8"

Hi,
I have been struggling a bit with using Xilinx IP in my OOT blocks
(structured using rfnoc-example as a guide).  Here are a few of the issues:

   - If I try to use one of the Xilinx IP blocks from Ettus (specifically
   complex_multiplier.xci), I get an error when I run the test bench if I
   don't include the xci file in my Makefile.srcs.  So, I copied the Ettus xci
   to my OOT folder and then the testbench ran fine.  But, then when I tried
   to build an image, I ran into 2 issues.
      - First, I get the Vivado error "ERROR: [Common 17-107] Cannot change
      read-only property 'generate_synth_checkpoint'".  I think this is because
      there is no automatic conversion of part ID for this IP so I had
to modify
      the IP in Vivado for the correct N310 part number.
      - Second, then I get a complaint about having 2 complex_multipliers
      because of the duplicate in the Ettus tree.  So, I'm wondering how I can
      use an Ettus provided IP in an OOT block without having to copy
and rename
      it.
      - Note that I also tried just referencing the Ettus-provided
      complex_multiplier.xci file in my Makefile.srcs (using a
relative path from
      my OOT folder to the Ettus in-tree folder), but then there is an issue
      while running the testbench related to the in-tree cmul.v
   - Next, when I tried to use a separate xci file (that was not a
   duplicate of one that Ettus uses), I included the xci filename in my
   Makefile.srcs and the testbench ran fine.  However, during build, I had 2
   issues:
      - First, I had the same 'generate_synth_checkpoint' issue because my
      xci file was for the E310 and I was building an image for the N310 and
      there was no automatic part conversion
      - Second, after about 8 minutes, the build bombed because it couldn't
      find my IP. So, somehow the OOT xci build files are not integrating into
      the overall build correctly (or, more likely, I have something
      mis-configured)

In any event, I went back to the old trusty build-in-tree method by adding
my custom IP to the Ettus ../fpga/usrp/lib/ip/ folder and adjusted
Makefiles accordingly.  Now it builds fine.

Any advice on how to make this work OOT would be appreciated.  Thanks.
Rob

--000000000000f84c7905afb319a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I have been struggling a bit with using Xilinx IP =
in my OOT blocks (structured using rfnoc-example as a guide).=C2=A0 Here ar=
e a few of the issues:</div><div><ul><li>If I try to use one of the Xilinx =
IP blocks from Ettus (specifically complex_multiplier.xci), I get an error =
when I run the test bench if I don&#39;t include the xci file in my Makefil=
e.srcs.=C2=A0 So, I copied the Ettus xci to my OOT folder and then the test=
bench ran fine.=C2=A0 But, then when I tried to build an image, I ran into =
2 issues.=C2=A0</li><ul><li>First, I get the Vivado error &quot;ERROR: [Com=
mon 17-107] Cannot change read-only property &#39;generate_synth_checkpoint=
&#39;&quot;.=C2=A0 I think this is because there is no automatic conversion=
 of part ID for this IP so I had to modify the IP in Vivado for the correct=
 N310 part number.=C2=A0=C2=A0</li><li>Second, then I get a complaint about=
 having 2 complex_multipliers because of the duplicate in the Ettus tree.=
=C2=A0 So, I&#39;m wondering how I can use an Ettus provided IP in an OOT b=
lock without having to copy and rename it.</li><li>Note that I also tried j=
ust referencing the Ettus-provided complex_multiplier.xci file in my Makefi=
le.srcs (using a relative path from my OOT folder to the Ettus in-tree fold=
er), but then there is an issue while running the testbench related to the =
in-tree cmul.v=C2=A0</li></ul><li>Next, when I tried to use a separate xci =
file (that was not a duplicate of one that Ettus uses), I included the xci =
filename in my Makefile.srcs and the testbench ran fine.=C2=A0 However, dur=
ing build, I had 2 issues:</li><ul><li>First, I had the same &#39;generate_=
synth_checkpoint&#39; issue because my xci file was for the E310 and I was =
building an=C2=A0image for the N310 and there was no automatic part convers=
ion</li><li>Second, after about 8 minutes, the build bombed because it coul=
dn&#39;t find my IP. So, somehow the OOT xci build files are not integratin=
g into the overall build correctly (or, more likely, I have something mis-c=
onfigured)</li></ul></ul><div>In any event, I went back to the old trusty b=
uild-in-tree method by adding my custom IP to the Ettus ../fpga/usrp/lib/ip=
/ folder and adjusted Makefiles accordingly.=C2=A0 Now it builds fine.</div=
></div><div><br></div><div>Any advice on how to make this work OOT would=C2=
=A0be appreciated.=C2=A0 Thanks.</div><div>Rob</div><div><br></div></div>

--000000000000f84c7905afb319a7--


--===============4189300372969796383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4189300372969796383==--

