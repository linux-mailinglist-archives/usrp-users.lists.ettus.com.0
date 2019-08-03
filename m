Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E6580808
	for <lists+usrp-users@lfdr.de>; Sat,  3 Aug 2019 21:28:23 +0200 (CEST)
Received: from [::1] (port=42162 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htzhU-0007f1-DU; Sat, 03 Aug 2019 15:28:20 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:38666)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1htzhR-0007aP-PO
 for usrp-users@lists.ettus.com; Sat, 03 Aug 2019 15:28:17 -0400
Received: by mail-oi1-f174.google.com with SMTP id v186so59319617oie.5
 for <usrp-users@lists.ettus.com>; Sat, 03 Aug 2019 12:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=8fM942C6bNPD6te3B4BopHaCO6py2abbI0XMq+MhYbc=;
 b=FpApOevqvK2KSCu7BuKOjIGPzRCVwvuuAmjaIsLuI/c9i6w/YCyrS1zh8rJjl2LVb1
 NoQxoyqeWhDtWg3tDDCu84cO5AhMbhAGQ22j3qyogRZtVUefrjqV78zli6E0nu/DxpWa
 XrbRcL7CCySNgJmap4ZUh94Y+fcskYzSRSfCV2WHC6s7VxeKfqqk2ysG74VJJm1Rx3e6
 M35iTX9wwA6rq4Qm+rw1U59RXFxcUcaYZZpjukIZxYbs2lyJAfSLD0SwbEgnqch6ENgS
 N24TWc5/dOfZyAiXxriiWZ7XIdIXlMH9VrEIrp17WrrkxkHH5mleLgaN/E4EgOWJtWvP
 xaoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8fM942C6bNPD6te3B4BopHaCO6py2abbI0XMq+MhYbc=;
 b=pr+yVT/8ITUgueUajPeHz7FhKGhChgCY9qbAYV+AYr08bdDfuMR70Wo98D24m3on0l
 POYqErYGt1WOWa8GYx9/YzQPx0+Xo3eaZxzhxxpJ63QlWo3+4Rc4uL2Erlp+PeBhCMU3
 2hbdagRWTOeawJQzEswEHQOR4AFgsh00j+mrIvcaoFc4TM1yhDCcw1Ias1odAidUlUUW
 n0Az5Y72/rikwxN4ii0vosL6K464HzqDNfIoMUBxu7rBYzRnAekfLppWwulV20C/Km/j
 rOi7nE3WFP7KBX/gsp5iBMCoiPREu6fBGp3wyWBqzgA+u1ALSnvIG8Ud4o5aSuA6hflc
 TD6A==
X-Gm-Message-State: APjAAAV6D4HZsLqhs/XCwHyLULtFNZ6LJBPLI4ND2ef2cDQcnRed5rVt
 p4npAkiSPFyj50ED6GpBP4396ZA6qrRk7cKe85JIK98orVs=
X-Google-Smtp-Source: APXvYqzOhFkbDIa1Qjic34I1KYcZ0ggen3dFDKaWumpUWN+2aybdSafcdABbO5e+kevU30syjjic2nLIxAU8AsIYH88=
X-Received: by 2002:aca:3bc6:: with SMTP id i189mr6459031oia.153.1564860456529; 
 Sat, 03 Aug 2019 12:27:36 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 3 Aug 2019 15:27:25 -0400
Message-ID: <CAB__hTQCZmat+4k0zPyyEGuPWB-4dP2ULZNmUCF_if1OuGSxeg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] problem compiling example rfnoc testbench
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5643994566965592776=="
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

--===============5643994566965592776==
Content-Type: multipart/alternative; boundary="000000000000a2a2df058f3b77d9"

--000000000000a2a2df058f3b77d9
Content-Type: text/plain; charset="UTF-8"

Hi,
I just installed installed the latest UHD master with fpga source and
installed the 2018.3 Xilinx webpack (I also have a 2017.4 webpack installed
which was working).  I followed the rfnoc getting started build, but got
the following error when I tried the command "make noc_block_gain_tb"

# puts "BUILDER: Creating Vivado simulation project part $part_name"
BUILDER: Creating Vivado simulation project part xc7k410tffg900-2
# create_project -part $part_name -force $project_name/$project_name
WARNING: [Device 21-436] No parts matched 'xc7k410tffg900-2'
ERROR: [Coretcl 2-106] Specified part could not be found.
INFO: [Common 17-206] Exiting Vivado at Sat Aug  3 14:59:04 2019...

I fully understand that webpack does not support the X310 part, but my
question is why is the part being selected?  At the point of running the
rfnoc getting started example, I have not knowingly selected any part.  My
assumption is that if I could change this part, the make will succeed.
Does anyone know how I can make it use a webpack compatible part like
xc7z020?

Thanks.
Rob

--000000000000a2a2df058f3b77d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I just installed installed the latest UHD mast=
er with fpga source and installed the 2018.3 Xilinx webpack (I also have a =
2017.4 webpack installed which was working).=C2=A0 I followed the rfnoc get=
ting started build, but got the following error when I tried the command &q=
uot;make noc_block_gain_tb&quot;</div><div><br></div># puts &quot;BUILDER: =
Creating Vivado simulation project part $part_name&quot;<br>BUILDER: Creati=
ng Vivado simulation project part xc7k410tffg900-2<br># create_project -par=
t $part_name -force $project_name/$project_name<br>WARNING: [Device 21-436]=
 No parts matched &#39;xc7k410tffg900-2&#39;<br>ERROR: [Coretcl 2-106] Spec=
ified part could not be found.<br>INFO: [Common 17-206] Exiting Vivado at S=
at Aug =C2=A03 14:59:04 2019...<br><div>=C2=A0</div><div>I fully understand=
 that webpack does not support the X310 part, but my question is why is the=
 part being selected?=C2=A0 At the point of running the rfnoc getting start=
ed example, I have not knowingly selected any part.=C2=A0 My assumption is =
that if I could change this part, the make will succeed.=C2=A0 Does anyone =
know how I can make it use a webpack compatible part like xc7z020?</div><di=
v><br></div><div>Thanks.</div><div>Rob</div></div>

--000000000000a2a2df058f3b77d9--


--===============5643994566965592776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5643994566965592776==--

