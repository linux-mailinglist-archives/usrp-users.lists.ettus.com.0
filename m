Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E9B4A8204
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 11:00:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 952CD385812
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 05:00:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LoxVUPXN";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 12FEE3855D5
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 04:59:47 -0500 (EST)
Received: by mail-yb1-f175.google.com with SMTP id 124so6590323ybw.6
        for <usrp-users@lists.ettus.com>; Thu, 03 Feb 2022 01:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=F4VudUVoeJOPfHGXovlOBO5Raj7Q3FSe+czh/Gd2i5E=;
        b=LoxVUPXN8uLJkXTWppT/I4+jw/w6Z1gEKLGCx7/cs9jjOTj8Q2eKIVI9TkUnuLVBQf
         8ERt6lcqmyaYVO6n97OXctqqq/2/lnfhKKGCTbUNYqo+m82LvPWOm8sq/jbI8eMj887n
         eF6tlZRRHP8l0k+nf4lu+uFPPC/xM2p4DHErdA71ZVtvpJD+I09+ZfJ8u4Gs7DjVIOPE
         sRYOD40KQsGqPSfQCDX3X7NQ0ch3fYMMvx76Y1nWnYeHlrrprfqlUfnGTKHqPTzY5osk
         +2xvALhJ0iuzo3GBpsv2RGXiyKX4EYXQ7uaVjf7S5aSEW2RT5EfNo0fNqxWqAcSCVZS9
         tbZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=F4VudUVoeJOPfHGXovlOBO5Raj7Q3FSe+czh/Gd2i5E=;
        b=QHK0vCyJ1gkEqhmdME+VFbm9zU1f5Fu2/6cj9q2jmCxZf0bsl8noKvX66WqP6tl2Oj
         t2NsJCf5W4MLBkdkM8dQNy4ddepk3xcjyRMYPMvAzLA2Gqqb2r2kth6g7cl3odsSyhRm
         wr9WORAkEIU6fYFy3vyuEMxoM5HucjUKDXtFzlCiVd/hDJmxIC4BHUx3wgLeGnkeMo8F
         ZlE+z17uLLevd5KI27BhdoKihSPOce3+dyDky9HquWxRUfpDniS9BPlOJ7xe0I47jdOK
         k0wTR7nRDkyAGbSwBD3/EnsSD1t4zkR+6eZZyFJa0VdFo41HgqsFqFOY9YCV54vUwvnw
         0Onw==
X-Gm-Message-State: AOAM533Ri1Rxj3hpeADlKA1Tr+bQ9Dvxx/0/ehoO9JvXcg3UY26l2Tk4
	5q12u8T7XsO1SSwXOPzXDGfVJoDg7fAnc9ou2yuQAuLex495MadT
X-Google-Smtp-Source: ABdhPJzgpI5u33qKqtPqDkl5UrZKvHDzB+JX92m/BUMmEHAzHqF7HLizi0VeH2kbm3pJ0J7UQHu0uWYRX09wrTeLjtg=
X-Received: by 2002:a25:e744:: with SMTP id e65mr649374ybh.40.1643882386449;
 Thu, 03 Feb 2022 01:59:46 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Thu, 3 Feb 2022 13:29:29 +0330
Message-ID: <CAA=S3PsErhg-2ScEfGRxKxjF7j1dO1bifVg8_bmY4vHUMipPHw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="000000000000b2a21d05d71a3119"
Message-ID-Hash: QNUABCOYWNX4PFPZU2N3TFMH6XLWTZDI
X-Message-ID-Hash: QNUABCOYWNX4PFPZU2N3TFMH6XLWTZDI
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building FPGA [00:12:48] Process terminated. Status: Failure How much can I debug?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QNUABCOYWNX4PFPZU2N3TFMH6XLWTZDI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000b2a21d05d71a3119
Content-Type: multipart/alternative; boundary="000000000000b2a21a05d71a3117"

--000000000000b2a21a05d71a3117
Content-Type: text/plain; charset="UTF-8"

When I want to build a new image configuration for USRP X300 I was faced
with  [00:12:48] Process terminated. Status: Failure
my new RFNOC core image YAML file, I attached here...
*And when I want to build I used these commands:*

source setupenv.sh  --vivado-path=/home/sp/xilinx/Vivado
rfnoc_image_builder -y x300_with_fft.yml -t X300_HG
--fpga-dir=/home/sp/Documents/uhd-4.1.0.5/fpga
--vivado-path=/home/sp/xilinx/Vivado

*Errors: I was faced with these errors...*

[00:12:48] Current task: Synthesis +++ Current Phase: Finished
[00:12:48] Process terminated. Status: Failure

========================================================
Warnings:           715
Critical Warnings:  30
Errors:             0

make[1]: *** [Makefile.x300.inc:127: bin] Error 1
make[1]: Leaving directory
'/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
make: *** [Makefile:90: X300_HG] Error 2

*Build log file:*
I added the end part of the build log file here, I don't see any errors...

*my question is how can solve my problem? How much can I debug? as in the
build log file and terminal I can not see any errors?*
*thanks in advance*

genblk1[73].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
'cic_interpolate:/genblk1[74].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
'cic_interpolate:/genblk1[75].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
'cic_interpolate:/genblk1[76].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
'cic_interpolate:/genblk1[77].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
'cic_interpolate:/genblk1[78].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
'cic_interpolate:/genblk1[79].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
'cic_interpolate:/genblk1[80].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[82].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[83].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[84].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[85].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[86].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[87].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[88].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[89].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[90].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[91].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[92].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[93].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[94].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[95].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[96].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[97].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[98].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[99].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[100].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
'cic_interpolate:/genblk1[101].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[103].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[104].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[105].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[106].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[107].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[108].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[109].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[110].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[111].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[112].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[113].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[114].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[115].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[116].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[117].axi_round'
INFO: [Synth 8-223] decloning instance
'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
'cic_interpolate:/genblk1[118].axi_round'
INFO: [Common 17-14] Message 'Synth 8-223' appears 100 times and further
instances of the messages will be disabled. Use the Tcl command
set_msg_config to change the current settings.

--000000000000b2a21a05d71a3117
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>When I want to build a new image configuration for US=
RP X300 I was faced with=C2=A0=C2=A0[00:12:48] Process terminated. Status: =
Failure<br><div>my new RFNOC core image YAML file, I attached here...</div>=
<div><b>And when I want to build I used these commands:</b></div><div><br><=
/div><div>source setupenv.sh =C2=A0--vivado-path=3D/home/sp/xilinx/Vivado<b=
r></div><div>rfnoc_image_builder -y x300_with_fft.yml -t X300_HG =C2=A0 --f=
pga-dir=3D/home/sp/Documents/uhd-4.1.0.5/fpga =C2=A0 --vivado-path=3D/home/=
sp/xilinx/Vivado =C2=A0<br><br></div><div><b>Errors: I was=C2=A0faced with =
these errors...</b></div><div><br></div><div>[00:12:48] Current task: Synth=
esis +++ Current Phase: Finished<br>[00:12:48] Process terminated. Status: =
Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warnings: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 715<br>Critical Warnings: =C2=A030<br>Errors: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 0<br><br>make[1]: *** [Makefile.x300.inc:127: bin] Err=
or 1<br>make[1]: Leaving directory &#39;/home/sp/Documents/uhd-4.1.0.5/fpga=
/usrp3/top/x300&#39;<br>make: *** [Makefile:90: X300_HG] Error 2<br></div><=
div><br></div><div><b>Build log file:</b></div><div>I added the end part of=
 the build log file here, I don&#39;t see any errors...</div><div><br></div=
><div><b>my question is how can solve my problem? How much=C2=A0can I debug=
? as in the build log file and terminal I can not see any errors?</b></div>=
<div><b>thanks in advance</b></div></div><div><br></div><div>genblk1[73].ax=
i_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate=
:/genblk1[65].axi_round&#39; (axi_round__parameterized16) to &#39;cic_inter=
polate:/genblk1[74].axi_round&#39;<br>INFO: [Synth 8-223] decloning instanc=
e &#39;cic_interpolate:/genblk1[65].axi_round&#39; (axi_round__parameterize=
d16) to &#39;cic_interpolate:/genblk1[75].axi_round&#39;<br>INFO: [Synth 8-=
223] decloning instance &#39;cic_interpolate:/genblk1[65].axi_round&#39; (a=
xi_round__parameterized16) to &#39;cic_interpolate:/genblk1[76].axi_round&#=
39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1=
[65].axi_round&#39; (axi_round__parameterized16) to &#39;cic_interpolate:/g=
enblk1[77].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;ci=
c_interpolate:/genblk1[65].axi_round&#39; (axi_round__parameterized16) to &=
#39;cic_interpolate:/genblk1[78].axi_round&#39;<br>INFO: [Synth 8-223] decl=
oning instance &#39;cic_interpolate:/genblk1[65].axi_round&#39; (axi_round_=
_parameterized16) to &#39;cic_interpolate:/genblk1[79].axi_round&#39;<br>IN=
FO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[65].axi_=
round&#39; (axi_round__parameterized16) to &#39;cic_interpolate:/genblk1[80=
].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpo=
late:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_i=
nterpolate:/genblk1[82].axi_round&#39;<br>INFO: [Synth 8-223] decloning ins=
tance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__paramete=
rized17) to &#39;cic_interpolate:/genblk1[83].axi_round&#39;<br>INFO: [Synt=
h 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39=
; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[84].axi_rou=
nd&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/gen=
blk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolat=
e:/genblk1[85].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#3=
9;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) =
to &#39;cic_interpolate:/genblk1[86].axi_round&#39;<br>INFO: [Synth 8-223] =
decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_ro=
und__parameterized17) to &#39;cic_interpolate:/genblk1[87].axi_round&#39;<b=
r>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].=
axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk=
1[88].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_int=
erpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;c=
ic_interpolate:/genblk1[89].axi_round&#39;<br>INFO: [Synth 8-223] decloning=
 instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__para=
meterized17) to &#39;cic_interpolate:/genblk1[90].axi_round&#39;<br>INFO: [=
Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round=
&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[91].axi=
_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:=
/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interp=
olate:/genblk1[92].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance=
 &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized=
17) to &#39;cic_interpolate:/genblk1[93].axi_round&#39;<br>INFO: [Synth 8-2=
23] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (ax=
i_round__parameterized17) to &#39;cic_interpolate:/genblk1[94].axi_round&#3=
9;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[=
81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/ge=
nblk1[95].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic=
_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#=
39;cic_interpolate:/genblk1[96].axi_round&#39;<br>INFO: [Synth 8-223] declo=
ning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__=
parameterized17) to &#39;cic_interpolate:/genblk1[97].axi_round&#39;<br>INF=
O: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_r=
ound&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[98]=
.axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpol=
ate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_in=
terpolate:/genblk1[99].axi_round&#39;<br>INFO: [Synth 8-223] decloning inst=
ance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameter=
ized17) to &#39;cic_interpolate:/genblk1[100].axi_round&#39;<br>INFO: [Synt=
h 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39=
; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[101].axi_ro=
und&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/ge=
nblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpol=
ate:/genblk1[103].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance =
&#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized=
18) to &#39;cic_interpolate:/genblk1[104].axi_round&#39;<br>INFO: [Synth 8-=
223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (=
axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[105].axi_round=
&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genbl=
k1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate=
:/genblk1[106].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#3=
9;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18)=
 to &#39;cic_interpolate:/genblk1[107].axi_round&#39;<br>INFO: [Synth 8-223=
] decloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi=
_round__parameterized18) to &#39;cic_interpolate:/genblk1[108].axi_round&#3=
9;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[=
102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/g=
enblk1[109].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;c=
ic_interpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to=
 &#39;cic_interpolate:/genblk1[110].axi_round&#39;<br>INFO: [Synth 8-223] d=
ecloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_ro=
und__parameterized18) to &#39;cic_interpolate:/genblk1[111].axi_round&#39;<=
br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102=
].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genb=
lk1[112].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_=
interpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#=
39;cic_interpolate:/genblk1[113].axi_round&#39;<br>INFO: [Synth 8-223] decl=
oning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round=
__parameterized18) to &#39;cic_interpolate:/genblk1[114].axi_round&#39;<br>=
INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].a=
xi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1=
[115].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_int=
erpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;=
cic_interpolate:/genblk1[116].axi_round&#39;<br>INFO: [Synth 8-223] decloni=
ng instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__p=
arameterized18) to &#39;cic_interpolate:/genblk1[117].axi_round&#39;<br>INF=
O: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_=
round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[11=
8].axi_round&#39;<br>INFO: [Common 17-14] Message &#39;Synth 8-223&#39; app=
ears 100 times and further instances of the messages will be disabled. Use =
the Tcl command set_msg_config to change the current settings.<br></div></d=
iv>

--000000000000b2a21a05d71a3117--

--000000000000b2a21d05d71a3119
Content-Type: application/x-yaml; name="x300_with_fft.yml"
Content-Disposition: attachment; filename="x300_with_fft.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_kz6t3url0>
X-Attachment-Id: f_kz6t3url0

IyBHZW5lcmFsIHBhcmFtZXRlcnMKIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQpzY2hlbWE6IHJmbm9jX2ltYWdlYnVpbGRlcl9hcmdzICAgICAgICAgIyBJZGVudGlm
aWVyIGZvciB0aGUgc2NoZW1hIHVzZWQgdG8gdmFsaWRhdGUgdGhpcyBmaWxlCmNvcHlyaWdodDog
J0V0dHVzIFJlc2VhcmNoLCBBIE5hdGlvbmFsIEluc3RydW1lbnRzIEJyYW5kJyAjIENvcHlyaWdo
dCBpbmZvcm1hdGlvbiB1c2VkIGluIGZpbGUgaGVhZGVycwpsaWNlbnNlOiAnU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IExHUEwtMy4wLW9yLWxhdGVyJyAjIExpY2Vuc2UgaW5mb3JtYXRpb24gdXNl
ZCBpbiBmaWxlIGhlYWRlcnMKdmVyc2lvbjogJzEuMCcgICAgICAgICAgICAgICAgICAgICAgICAg
ICMgRmlsZSB2ZXJzaW9uCnJmbm9jX3ZlcnNpb246ICcxLjAnICAgICAgICAgICAgICAgICAgICAj
IFJGTm9DIHByb3RvY29sIHZlcnNpb24KY2hkcl93aWR0aDogNjQgICAgICAgICAgICAgICAgICAg
ICAgICAgICMgQml0IHdpZHRoIG9mIHRoZSBDSERSIGJ1cyBmb3IgdGhpcyBpbWFnZQpkZXZpY2U6
ICd4MzAwJwpkZWZhdWx0X3RhcmdldDogJ1gzMDBfSEcnCgojIEEgbGlzdCBvZiBhbGwgc3RyZWFt
IGVuZHBvaW50cyBpbiBkZXNpZ24KIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCnN0cmVhbV9lbmRwb2ludHM6CiAgZXAwOiAgICAgICAgICAgICAgICAgICAgICAgIyBT
dHJlYW0gZW5kcG9pbnQgbmFtZQogICAgY3RybDogVHJ1ZSAgICAgICAgICAgICAgICAgICAgICAj
IEVuZHBvaW50IHBhc3NlcyBjb250cm9sIHRyYWZmaWMKICAgIGRhdGE6IFRydWUgICAgICAgICAg
ICAgICAgICAgICAgIyBFbmRwb2ludCBwYXNzZXMgZGF0YSB0cmFmZmljCiAgICBidWZmX3NpemU6
IDMyNzY4ICAgICAgICAgICAgICAgICMgSW5ncmVzcyBidWZmZXIgc2l6ZSBmb3IgZGF0YQogIGVw
MTogICAgICAgICAgICAgICAgICAgICAgICMgU3RyZWFtIGVuZHBvaW50IG5hbWUKICAgIGN0cmw6
IEZhbHNlICAgICAgICAgICAgICAgICAgICAgIyBFbmRwb2ludCBwYXNzZXMgY29udHJvbCB0cmFm
ZmljCiAgICBkYXRhOiBUcnVlICAgICAgICAgICAgICAgICAgICAgICMgRW5kcG9pbnQgcGFzc2Vz
IGRhdGEgdHJhZmZpYwogICAgYnVmZl9zaXplOiAwICAgICAgICAgICAgICAgICAgICAjIEluZ3Jl
c3MgYnVmZmVyIHNpemUgZm9yIGRhdGEKICBlcDI6ICAgICAgICAgICAgICAgICAgICAgICAjIFN0
cmVhbSBlbmRwb2ludCBuYW1lCiAgICBjdHJsOiBGYWxzZSAgICAgICAgICAgICAgICAgICAgICMg
RW5kcG9pbnQgcGFzc2VzIGNvbnRyb2wgdHJhZmZpYwogICAgZGF0YTogVHJ1ZSAgICAgICAgICAg
ICAgICAgICAgICAjIEVuZHBvaW50IHBhc3NlcyBkYXRhIHRyYWZmaWMKICAgIGJ1ZmZfc2l6ZTog
MzI3NjggICAgICAgICAgICAgICAgIyBJbmdyZXNzIGJ1ZmZlciBzaXplIGZvciBkYXRhCiAgZXAz
OiAgICAgICAgICAgICAgICAgICAgICAgIyBTdHJlYW0gZW5kcG9pbnQgbmFtZQogICAgY3RybDog
RmFsc2UgICAgICAgICAgICAgICAgICAgICAjIEVuZHBvaW50IHBhc3NlcyBjb250cm9sIHRyYWZm
aWMKICAgIGRhdGE6IFRydWUgICAgICAgICAgICAgICAgICAgICAgIyBFbmRwb2ludCBwYXNzZXMg
ZGF0YSB0cmFmZmljCiAgICBidWZmX3NpemU6IDAgICAgICAgICAgICAgICAgICAgICMgSW5ncmVz
cyBidWZmZXIgc2l6ZSBmb3IgZGF0YQogIGVwNDogICAgICAgICAgICAgICAgICAgICAgICMgU3Ry
ZWFtIGVuZHBvaW50IG5hbWUKICAgIGN0cmw6IEZhbHNlICAgICAgICAgICAgICAgICAgICAgIyBF
bmRwb2ludCBwYXNzZXMgY29udHJvbCB0cmFmZmljCiAgICBkYXRhOiBUcnVlICAgICAgICAgICAg
ICAgICAgICAgICMgRW5kcG9pbnQgcGFzc2VzIGRhdGEgdHJhZmZpYwogICAgYnVmZl9zaXplOiA0
MDk2ICAgICAgICAgICAgICAgICAjIEluZ3Jlc3MgYnVmZmVyIHNpemUgZm9yIGRhdGEKICBlcDU6
ICAgICAgICAgICAgICAgICAgICAgICAjIFN0cmVhbSBlbmRwb2ludCBuYW1lCiAgICBjdHJsOiBG
YWxzZSAgICAgICAgICAgICAgICAgICAgICMgRW5kcG9pbnQgcGFzc2VzIGNvbnRyb2wgdHJhZmZp
YwogICAgZGF0YTogVHJ1ZSAgICAgICAgICAgICAgICAgICAgICAjIEVuZHBvaW50IHBhc3NlcyBk
YXRhIHRyYWZmaWMKICAgIGJ1ZmZfc2l6ZTogNDA5NiAgICAgICAgICAgICAgICAgIyBJbmdyZXNz
IGJ1ZmZlciBzaXplIGZvciBkYXRhCiAgZXBfZmZ0OiAgICAgICAgICAgICAgICAjIFRoZSBuYW1l
IGNhbiBiZSBpbmNyZW1lbnRlZCBmcm9tIHByZXZpb3VzIFNFUAogICAgY3RybDogRmFsc2UgICAg
ICAgICAgIyBPbmx5IHRoZSBmaXJzdCBTRVAgbmVlZHMgY29udHJvbCB0cmFmZmljCiAgICBkYXRh
OiBUcnVlICAgICAgICAgICAjIFdlIGRvIHdhbnQgdG8gcGFzcyBkYXRhIHRocm91Z2ggdGhpcyBT
RVAKICAgIGJ1ZmZfc2l6ZTogMzI3NjggICAgICMgSW5ncmVzcyBidWZmZXIgc2l6ZSBmb3IgZGF0
YQoKIyBBIGxpc3Qgb2YgYWxsIE5vQyBibG9ja3MgaW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQpub2NfYmxvY2tzOgogIGR1YzA6ICAgICAgICAgICAgICAgICAg
ICAgICMgTm9DIGJsb2NrIG5hbWUKICAgIGJsb2NrX2Rlc2M6ICdkdWMueW1sJyAgICAjIEJsb2Nr
IGRldmljZSBkZXNjcmlwdG9yIGZpbGUKICAgIHBhcmFtZXRlcnM6CiAgICAgIE5VTV9QT1JUUzog
MQogIGRkYzA6CiAgICBibG9ja19kZXNjOiAnZGRjLnltbCcKICAgIHBhcmFtZXRlcnM6CiAgICAg
IE5VTV9QT1JUUzogMgogIHJhZGlvMDoKICAgIGJsb2NrX2Rlc2M6ICdyYWRpb18yeDY0LnltbCcK
ICBkdWMxOgogICAgYmxvY2tfZGVzYzogJ2R1Yy55bWwnCiAgICBwYXJhbWV0ZXJzOgogICAgICBO
VU1fUE9SVFM6IDEKICBkZGMxOgogICAgYmxvY2tfZGVzYzogJ2RkYy55bWwnCiAgICBwYXJhbWV0
ZXJzOgogICAgICBOVU1fUE9SVFM6IDIKICByYWRpbzE6CiAgICBibG9ja19kZXNjOiAncmFkaW9f
Mng2NC55bWwnCiAgcmVwbGF5MDoKICAgIGJsb2NrX2Rlc2M6ICdyZXBsYXkueW1sJwogICAgcGFy
YW1ldGVyczoKICAgICAgTlVNX1BPUlRTOiAyCiAgICAgIE1FTV9BRERSX1c6IDMwCiAgZmZ0MDog
ICAgICAgICAgICAgICAgICAgICAgICAgICMgRkZUIGJsb2NrIG5hbWUKICAgIGJsb2NrX2Rlc2M6
ICdmZnRfMXg2NC55bWwnICAgIyBCbG9jayBZQU1MIGRlc2NyaXB0b3IgZmlsZQogICAgcGFyYW1l
dGVyczogICAgICAgICAgICAgICAgICAjIFNwZWNpZnkgYW55IFZlcmlsb2cgbW9kdWxlIHBhcmFt
ZXRlcnMgKG9wdGlvbmFsKQogICAgICBFTl9GRlRfU0hJRlQ6IDEgCgojIEEgbGlzdCBvZiBhbGwg
c3RhdGljIGNvbm5lY3Rpb25zIGluIGRlc2lnbgojIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQojIEZvcm1hdDogQSBsaXN0IG9mIGNvbm5lY3Rpb24gbWFwcyAobGlz
dCBvZiBrZXktdmFsdWUgcGFpcnMpIHdpdGggdGhlIGZvbGxvd2luZyBrZXlzCiMgICAgICAgICAt
IHNyY2JsayAgPSBTb3VyY2UgYmxvY2sgdG8gY29ubmVjdAojICAgICAgICAgLSBzcmNwb3J0ID0g
UG9ydCBvbiB0aGUgc291cmNlIGJsb2NrIHRvIGNvbm5lY3QKIyAgICAgICAgIC0gZHN0YmxrICA9
IERlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKIyAgICAgICAgIC0gZHN0cG9ydCA9IFBvcnQg
b24gdGhlIGRlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKY29ubmVjdGlvbnM6CiAgIyBlcDAg
dG8gcmFkaW8wKDApIC0gUkZBIFRYCiAgLSB7IHNyY2JsazogZXAwLCAgICBzcmNwb3J0OiBvdXQw
LCAgZHN0YmxrOiBkdWMwLCAgIGRzdHBvcnQ6IGluXzAgfQogIC0geyBzcmNibGs6IGR1YzAsICAg
c3JjcG9ydDogb3V0XzAsIGRzdGJsazogcmFkaW8wLCBkc3Rwb3J0OiBpbl8wIH0KICAjIHJhZGlv
KDApIHRvIGVwMCAtIFJGQSBSWAogIC0geyBzcmNibGs6IHJhZGlvMCwgc3JjcG9ydDogb3V0XzAs
IGRzdGJsazogZGRjMCwgICBkc3Rwb3J0OiBpbl8wIH0KICAtIHsgc3JjYmxrOiBkZGMwLCAgIHNy
Y3BvcnQ6IG91dF8wLCBkc3RibGs6IGVwMCwgICAgZHN0cG9ydDogaW4wICB9CiAgIyByYWRpbzAo
MSkgdG8gZXAxIC0gUkZBIFJYCiAgLSB7IHNyY2JsazogcmFkaW8wLCBzcmNwb3J0OiBvdXRfMSwg
ZHN0YmxrOiBkZGMwLCAgIGRzdHBvcnQ6IGluXzEgfQogIC0geyBzcmNibGs6IGRkYzAsICAgc3Jj
cG9ydDogb3V0XzEsIGRzdGJsazogZXAxLCAgICBkc3Rwb3J0OiBpbjAgIH0KICAjIGVwMiB0byBy
YWRpbzEoMCkgLSBSRkEgVFgKICAtIHsgc3JjYmxrOiBlcDIsICAgIHNyY3BvcnQ6IG91dDAsICBk
c3RibGs6IGR1YzEsICAgZHN0cG9ydDogaW5fMCB9CiAgLSB7IHNyY2JsazogZHVjMSwgICBzcmNw
b3J0OiBvdXRfMCwgZHN0YmxrOiByYWRpbzEsIGRzdHBvcnQ6IGluXzAgfQogICMgcmFkaW8xKDAp
IHRvIGVwMiAtIFJGQSBSWAogIC0geyBzcmNibGs6IHJhZGlvMSwgc3JjcG9ydDogb3V0XzAsIGRz
dGJsazogZGRjMSwgICBkc3Rwb3J0OiBpbl8wIH0KICAtIHsgc3JjYmxrOiBkZGMxLCAgIHNyY3Bv
cnQ6IG91dF8wLCBkc3RibGs6IGVwMiwgICAgZHN0cG9ydDogaW4wICB9CiAgIyByYWRpbzAoMSkg
dG8gZXAzIC0gUkZBIFJYCiAgLSB7IHNyY2JsazogcmFkaW8xLCBzcmNwb3J0OiBvdXRfMSwgZHN0
YmxrOiBkZGMxLCAgIGRzdHBvcnQ6IGluXzEgfQogIC0geyBzcmNibGs6IGRkYzEsICAgc3JjcG9y
dDogb3V0XzEsIGRzdGJsazogZXAzLCAgICBkc3Rwb3J0OiBpbjAgIH0KICAjIGVwNCB0byByZXBs
YXkwKDApCiAgLSB7IHNyY2JsazogZXA0LCAgICAgc3JjcG9ydDogb3V0MCwgIGRzdGJsazogcmVw
bGF5MCwgZHN0cG9ydDogaW5fMCB9CiAgIyByZXBsYXkwKDApIHRvIGVwNAogIC0geyBzcmNibGs6
IHJlcGxheTAsIHNyY3BvcnQ6IG91dF8wLCBkc3RibGs6IGVwNCwgICAgIGRzdHBvcnQ6IGluMCAg
fQogICMgZXA1IHRvIHJlcGxheTAoMSkKICAtIHsgc3JjYmxrOiBlcDUsICAgICBzcmNwb3J0OiBv
dXQwLCAgZHN0YmxrOiByZXBsYXkwLCBkc3Rwb3J0OiBpbl8xIH0KICAjIHJlcGxheTAoMSkgdG8g
ZXA1CiAgLSB7IHNyY2JsazogcmVwbGF5MCwgc3JjcG9ydDogb3V0XzEsIGRzdGJsazogZXA1LCAg
ICAgZHN0cG9ydDogaW4wICB9CiAgIyBCU1AgQ29ubmVjdGlvbnMKICAtIHsgc3JjYmxrOiByYWRp
bzAsIHNyY3BvcnQ6IGN0cmxfcG9ydCwgZHN0YmxrOiBfZGV2aWNlXywgZHN0cG9ydDogY3RybHBv
cnRfcmFkaW8wIH0KICAtIHsgc3JjYmxrOiByYWRpbzEsIHNyY3BvcnQ6IGN0cmxfcG9ydCwgZHN0
YmxrOiBfZGV2aWNlXywgZHN0cG9ydDogY3RybHBvcnRfcmFkaW8xIH0KICAtIHsgc3JjYmxrOiBy
ZXBsYXkwLCBzcmNwb3J0OiBheGlfcmFtLCBkc3RibGs6IF9kZXZpY2VfLCBkc3Rwb3J0OiBkcmFt
IH0KICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogeDMwMF9yYWRpbzAsIGRzdGJsazog
cmFkaW8wLCBkc3Rwb3J0OiB4MzAwX3JhZGlvIH0KICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3Jj
cG9ydDogeDMwMF9yYWRpbzEsIGRzdGJsazogcmFkaW8xLCBkc3Rwb3J0OiB4MzAwX3JhZGlvIH0K
ICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogdGltZV9rZWVwZXIsIGRzdGJsazogcmFk
aW8wLCBkc3Rwb3J0OiB0aW1lX2tlZXBlciB9CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3Bv
cnQ6IHRpbWVfa2VlcGVyLCBkc3RibGs6IHJhZGlvMSwgZHN0cG9ydDogdGltZV9rZWVwZXIgfQog
IC0geyBzcmNibGs6IGVwX2ZmdCwgc3JjcG9ydDogb3V0MCwgIGRzdGJsazogZmZ0MCwgICBkc3Rw
b3J0OiBpbl8wIH0KICAtIHsgc3JjYmxrOiBmZnQwLCAgIHNyY3BvcnQ6IG91dF8wLCBkc3RibGs6
IGVwX2ZmdCwgZHN0cG9ydDogaW4wICB9CgojIEEgbGlzdCBvZiBhbGwgY2xvY2sgZG9tYWluIGNv
bm5lY3Rpb25zIGluIGRlc2lnbgojIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQojIEZvcm1hdDogQSBsaXN0IG9mIGNvbm5lY3Rpb24gbWFwcyAobGlzdCBvZiBrZXkt
dmFsdWUgcGFpcnMpIHdpdGggdGhlIGZvbGxvd2luZyBrZXlzCiMgICAgICAgICAtIHNyY2JsayAg
PSBTb3VyY2UgYmxvY2sgdG8gY29ubmVjdCAoQWx3YXlzICJfZGV2aWNlIl8pCiMgICAgICAgICAt
IHNyY3BvcnQgPSBDbG9jayBkb21haW4gb24gdGhlIHNvdXJjZSBibG9jayB0byBjb25uZWN0CiMg
ICAgICAgICAtIGRzdGJsayAgPSBEZXN0aW5hdGlvbiBibG9jayB0byBjb25uZWN0CiMgICAgICAg
ICAtIGRzdHBvcnQgPSBDbG9jayBkb21haW4gb24gdGhlIGRlc3RpbmF0aW9uIGJsb2NrIHRvIGNv
bm5lY3QKY2xrX2RvbWFpbnM6CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IHJhZGlv
LCBkc3RibGs6IHJhZGlvMCwgZHN0cG9ydDogcmFkaW8gfQogIC0geyBzcmNibGs6IF9kZXZpY2Vf
LCBzcmNwb3J0OiBjZSwgICAgZHN0YmxrOiBkZGMwLCAgIGRzdHBvcnQ6IGNlICAgIH0KICAtIHsg
c3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogY2UsICAgIGRzdGJsazogZHVjMCwgICBkc3Rwb3J0
OiBjZSAgICB9CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IHJhZGlvLCBkc3RibGs6
IHJhZGlvMSwgZHN0cG9ydDogcmFkaW8gfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0
OiBjZSwgICAgZHN0YmxrOiBkZGMxLCAgIGRzdHBvcnQ6IGNlICAgIH0KICAtIHsgc3JjYmxrOiBf
ZGV2aWNlXywgc3JjcG9ydDogY2UsICAgIGRzdGJsazogZHVjMSwgICBkc3Rwb3J0OiBjZSAgICB9
CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IGRyYW0sICBkc3RibGs6IHJlcGxheTAs
IGRzdHBvcnQ6IG1lbSAgfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiBjZSwgZHN0
YmxrOiBmZnQwLCBkc3Rwb3J0OiBjZSB9CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6
IHJmbm9jX2NoZHIsIGRzdGJsazogZmZ0MCwgZHN0cG9ydDogY2UgfQogIC0geyBzcmNibGs6IF9k
ZXZpY2VfLCBzcmNwb3J0OiByYWRpbywgZHN0YmxrOiBmZnQwLCBkc3Rwb3J0OiBjZSB9CgoK
--000000000000b2a21d05d71a3119
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000b2a21d05d71a3119--
