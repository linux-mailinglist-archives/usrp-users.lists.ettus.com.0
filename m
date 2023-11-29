Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B78287FD129
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 09:41:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70296385061
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 03:41:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701247312; bh=f9pb/je9mOdiapnsDTZtW1ez9IGDPHvEHF1fNjlsiNM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=StTqhO1YXp6MSKnQAlfYc4CLhj57BNBWlk0I4kwn5WDb6r5d4SKnYlRZwMLrSMpr7
	 vmywAV8AUY//DJtMmWERI9+8hLKhCI34gfW0fduX6t3o0aSj/kKrDbOcYMU7GI4d++
	 HFfwkpMZ1QwLTZhSzDAA0S6ARF7uwZo7fKInf1kdeJLZ3S0DoUgQ0nqVLMLOMekB/i
	 XrTVB2AWEoNQS/HfHozbqY48J4hhHJ6TzPcTPsuKs3+gdbG9BV7iY6+limyePG3lbv
	 6yMLtcPgrNZ2wfRgeNZuwGHVBX4FnsiyhlMll6Uln3e41y1v4WxMCY6mWRuM6Dk3sN
	 BMKHN74D57/6w==
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by mm2.emwd.com (Postfix) with ESMTPS id AE61E384CCA
	for <usrp-users@lists.ettus.com>; Wed, 29 Nov 2023 03:41:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jokpDpJ0";
	dkim-atps=neutral
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-27fe16e8e02so1228914a91.0
        for <usrp-users@lists.ettus.com>; Wed, 29 Nov 2023 00:41:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701247274; x=1701852074; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tsFSYKSR4DulJ5zzopqYSsjmN6WG6D5j1DJS/l6J5Us=;
        b=jokpDpJ0bs/EdrJzlTS0JXKu20h+GsirjJ6xST/kj7GzfLn/2ON7LX6wUrcv8cgD+Q
         g9CF1uOhcbcLDYG96BEJ4BgG70fbp6ePaAVbaFQvOhFQzmpqx7hMIviAaQSTD1//gG42
         QjjzZkim99KIKN+7ctd6tSm3FAz+3AQLDSb+tJL2lV26v3VirTVz7tmsAoBZ44MQvD99
         SnijBKtvmfXpCjyxO9ecAUAETUJrZZebyv2rzMauKf0CVVymF+45IsEH2u1zoIflkn5c
         KXfnx8JHvPYxGf7ZEwRD+Hxm2yc5YLkA36pBcb1I+SpWv15NqGAfZlCWOErLiHj1dw+E
         a++Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701247274; x=1701852074;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tsFSYKSR4DulJ5zzopqYSsjmN6WG6D5j1DJS/l6J5Us=;
        b=oeRo/Vx02HOQIJG7ChbQ/YtNe2zQDJ5FyTpPxr77QoNGp8vDdAFW09uf/hg70aKfLL
         xqbZKKmgXTWgc1jTgsxUlIFVkUI9FJnvvXe8lWA6vLkeOq5Szp4A4aUySp3JGY4iSGuG
         APhm/eD/KHimpQfFZFXI1CHdQrvefvCchE5LePM5G/RG1o5e8P2X1IkmN1Tfuz6SQUuW
         5P83pKfpK73lhmplgjNeJjAQfmzGuQc7ffXwk57PRMD45Nm3wKdUrE/547g96A5A4r4c
         u/LOBsw3yejVPKxU3h4w4RA3lSxAJdtdoZvCecWWak07ZPPmcoaHfAgODui+OOj4DfIT
         NMlw==
X-Gm-Message-State: AOJu0YwUoEEvdon8tK5+XeNPp9WwYT83usPCbiYp1HBzyvuLdRcHS/8Y
	3BpOpPyVSlxEtx19TrwOWBr7a8EmNPVurVTOjA6FDgGNFT4=
X-Google-Smtp-Source: AGHT+IErhuOBQKYPp4GnRm5F+yLCX/ABcKtHofijSUDW7ifPy+iAIn/8vT4o7yj1xjJxXHCW21mqL9RJ5+GebTjMwsw=
X-Received: by 2002:a17:90b:2315:b0:283:9d45:a815 with SMTP id
 mt21-20020a17090b231500b002839d45a815mr18117332pjb.3.1701247274181; Wed, 29
 Nov 2023 00:41:14 -0800 (PST)
MIME-Version: 1.0
From: Ethan C <ethanclarke365@gmail.com>
Date: Wed, 29 Nov 2023 00:41:03 -0800
Message-ID: <CAM0spwqxrMJnasa4rwmhn6sMLhCTGPeaLyLcK1NYkLF=gso0JQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: BYZ7F22NGRJCD7YQXQL24IFRQ5X264RL
X-Message-ID-Hash: BYZ7F22NGRJCD7YQXQL24IFRQ5X264RL
X-MailFrom: ethanclarke365@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B210 fpga build error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BYZ7F22NGRJCD7YQXQL24IFRQ5X264RL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5483178022334698860=="

--===============5483178022334698860==
Content-Type: multipart/alternative; boundary="00000000000073ea1e060b467fe1"

--00000000000073ea1e060b467fe1
Content-Type: text/plain; charset="UTF-8"

 Hello,
I am trying to build the default B210 fpga project using Xilinx ISE just to
confirm I can do it before investing more time in a project. I downloaded
UHD 4.6 from the github repo and in ~uhd/fpga/usrp3/top/b200 set up the
Xilinx environment and built the fpga project

source /opt/Xilinx/14.7/ISE_DS/settings64.sh

make b210

I get an error "python: No such file or directory" during the "Generating
Report" part of the build like in the attached screenshots.



I don't quite understand the python line before the error, but I assume
it's calling check_timing.py with b200.twr as a parameter. check_timing.py
is in the expected location, not sure where build-B200//b200.twr is
supposed to be, but there is the touch command right before so it should be
in ~uhd/fpga/usrp3/top/b200.
The USRP B210 I am using wasn't connected when building the fpga project, I
assume that loading the new fpga project into the USRP can be done after
building it
I edited one file in ~uhd/fpga/usrp3/top/b200 by adding a comment so I
guess it's not truly default.
Is there something I'm missing or doing wrong?

--00000000000073ea1e060b467fe1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>Hello,</div><div>I am trying to build the default B210 fpga project us=
ing Xilinx ISE just to confirm I can do it before investing more time in a =
project. I downloaded UHD 4.6 from the github repo and in=20
~uhd/fpga/usrp3/top/b200 set up the Xilinx environment and built the fpga p=
roject<br></div><div><br></div><div>
<p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" =
id=3D"gmail-docs-internal-guid-c87dea04-7fff-18ca-5c43-9536aa26ccd0"><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backg=
round-color:transparent;font-weight:400;font-style:normal;font-variant:norm=
al;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">sourc=
e /opt/Xilinx/14.7/ISE_DS/settings64.sh</span></p><p dir=3D"ltr" style=3D"l=
ine-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:=
11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpa=
rent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:=
none;vertical-align:baseline;white-space:pre-wrap">make b210</span></p>

</div><div><br></div><div>
I get an error &quot;python: No such file or directory&quot; during the &qu=
ot;Generating Report&quot; part of the build like in the attached screensho=
ts.<br></div><div><br></div><div>
<span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0)=
;background-color:transparent;font-weight:400;font-style:normal;font-varian=
t:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"=
 id=3D"gmail-docs-internal-guid-55d71caf-7fff-2e70-c00d-14a989eb9a35"><span=
 style=3D"border:medium;display:inline-block;overflow:hidden;width:624px;he=
ight:287px"><img src=3D"https://lh7-us.googleusercontent.com/uU7StUaany4bKX=
1XsOIUoNF5ETEr9QZzx5kg0UvWAc1J5tOAVDvqOEYTqOCiRjCEv4mAOBq4imGfIYNYMJ5zxfNIQ=
S84vykAH1-Vd3_tSoQwfBN0Kt0Yv4V9pP4KFHpFFV94k0kv0e4eG07Uy2u0838" width=3D"62=
4" height=3D"287" style=3D"margin-left: 0px; margin-top: 0px;"></span></spa=
n>
<span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0)=
;background-color:transparent;font-weight:400;font-style:normal;font-varian=
t:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"=
 id=3D"gmail-docs-internal-guid-e206eb34-7fff-3eef-0bb6-8717453288a4"><span=
 style=3D"border:medium;display:inline-block;overflow:hidden;width:624px;he=
ight:287px"><img src=3D"https://lh7-us.googleusercontent.com/5NV4TpD7ZNhwzH=
xYIkYYHqpgcCkJNcUqxGcxEkLznTSBpulPTikRpMteoCZ0ynLQbHLrQNxWHrM9eFXfWygcGTj2o=
W2y95kG1nm_2kyrJPwlpFCP8IJq3m84XPVKGOBpxtZQ_LqqX7f-fFYdTAMqryE" width=3D"62=
4" height=3D"287" style=3D"margin-left: 0px; margin-top: 0px;"><br></span><=
/span></div><div><br></div><div>I don&#39;t quite understand the python lin=
e before the error, but I assume it&#39;s calling check_timing.py with b200=
.twr as a parameter. check_timing.py is in the expected location, not sure =
where build-B200//b200.twr is supposed to be, but there is the touch comman=
d right before so it should be in=20
~uhd/fpga/usrp3/top/b200.</div><div>
The USRP B210 I am using wasn&#39;t connected when building the fpga=20
project, I assume that loading the new fpga project into the USRP can be do=
ne after=20
building it</div><div>I edited one file in=20
~uhd/fpga/usrp3/top/b200 by adding a comment so I guess it&#39;s not truly =
default.</div><div>Is there something I&#39;m missing or doing wrong?<br></=
div></div>

--00000000000073ea1e060b467fe1--

--===============5483178022334698860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5483178022334698860==--
