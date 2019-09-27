Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9911C0714
	for <lists+usrp-users@lfdr.de>; Fri, 27 Sep 2019 16:13:10 +0200 (CEST)
Received: from [::1] (port=47168 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDqzW-00080N-HD; Fri, 27 Sep 2019 10:13:02 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:37649)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <aaronmontilla86@gmail.com>)
 id 1iDqzS-0007vX-Ir
 for usrp-users@lists.ettus.com; Fri, 27 Sep 2019 10:12:58 -0400
Received: by mail-qt1-f177.google.com with SMTP id l3so7456180qtr.4
 for <usrp-users@lists.ettus.com>; Fri, 27 Sep 2019 07:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Mb5ITVLiYuPI0FX7p2FiDc3zspl491K1gsNZtM2R7KY=;
 b=BN9mBcKZjpmNBcv5JO4eNC+v9WeFryjapXVi6F0ngf7RSv0IVKam6HxHf50+/uAtxT
 jsy7GsHnB4jL0CHPlPZD6emOWHbzeZs7GRE1/x1hQHt92dALD3HtxPH2hg6TDRYJtbdC
 b58kCSlzTTHS4TU2vqKSW2GyJwtjFHJfwuGar1RaHGbZYxWE6JJMnrD04eqtSznP5F+z
 ELyArQM8eup2ND36lEaIa3bB/4e52R2LEd5Vwc59bsJSQxprieMPhCVseHGLI7AhjbNo
 g4xcPK8oygEO1zGr7m6WPZlY7uGKTeqKyWmnVD7pdeh3GFGdAlRoUfj+MwojVo62UHt3
 /QJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Mb5ITVLiYuPI0FX7p2FiDc3zspl491K1gsNZtM2R7KY=;
 b=qZvcEciTS+/e9cbSsxyEfC8Qoc9Dkxx+6dVRD4iit4djy3yrKtq+0qMHejUgjX63jD
 AOf2IGvnzwb5rgEMnVLjJ8MiPytVEgYfNYggHoDoissfDIxD+fntHsTILJB5vM05gf84
 AbLqnmh/uwb7htNVYhQbpOjgWgsBU2JspOxmyepkCFmbOS2geRUpcBIAnAobxIRwhDpW
 9lYKAyurvEnWL7lcd9jeU7DE+vP0CdzZAc1GgffouGF0bzISANj1rMFrd1FyYJOHXmMS
 lm2ii57WP+7tD/rcMi4bdjHRTOiELyhKdMkfCImKYpY5jvScYQD7zmNMGq8ITP7Jhqbb
 RO0Q==
X-Gm-Message-State: APjAAAWg435jsYUuGBifOi8d1ovc7IkSSci4G6UgIkqgU8nt4rSucHEs
 FxW8fmReYs3alAhqBx8o89Zriy32W/O2/zf9PW9Wq8vozOgs3w==
X-Google-Smtp-Source: APXvYqycYlVGzHV+qmhceJw5FLSJvxXtoQARpMJlkHZumOqwCjeLk6n09RMhXWoJEKtSLTRZ2Qn30Aipj/EowJMkmck=
X-Received: by 2002:ac8:110d:: with SMTP id c13mr9907341qtj.209.1569593537760; 
 Fri, 27 Sep 2019 07:12:17 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 27 Sep 2019 17:12:06 +0300
Message-ID: <CAN8DKtL-c1cp--r=5uTc1em5=ZdA5fiM9Koz0fjCEZy5QUqFdg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP X310 problem
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
From: Aaron Montilla via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Montilla <aaronmontilla86@gmail.com>
Content-Type: multipart/mixed; boundary="===============0969536229925508947=="
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

--===============0969536229925508947==
Content-Type: multipart/alternative; boundary="00000000000042925a05938979ef"

--00000000000042925a05938979ef
Content-Type: text/plain; charset="UTF-8"

Hi,
I am trying to set the connection between my PC and my USRP X310.
I ran the command uhd_find_devices, and successfully it found the USRP.
Then I use the uhd_usrp_probe command and I had the next error:
aaron@leonard:~$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.15.0.git-71-g18bc320d
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
[ERROR] [0/DmaFIFO_0] Major compat number mismatch for noc_shell: Expecting
6, got 5.
Error: RuntimeError: FPGA component `noc_shell' is revision 5 and UHD
supports revision 6. Please either upgrade the FPGA image (recommended) or
downgrade UHD.

I thought that upgrade the USRP was the best option, but when I try, I have
another error saying that the size of the image is too large ( only for 1
byte). I also read that I had to use the .bin file but I didn't have any.
So, could you please tell me what I could do?

Thank you very much in advance.
Kind regards,
Aaron

--00000000000042925a05938979ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I am trying to set the connection betwe=
en my PC and my USRP X310. <br></div><div>I ran the command uhd_find_device=
s, and successfully it found the USRP. Then I use the uhd_usrp_probe comman=
d and I had the next error:</div><div>aaron@leonard:~$ uhd_usrp_probe<br>[I=
NFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.15.0.git-71-g1=
8bc320d<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] M=
aximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>=
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a<br>[INFO] =
[0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)<br>[E=
RROR] [0/DmaFIFO_0] Major compat number mismatch for noc_shell: Expecting 6=
, got 5.<br>Error: RuntimeError: FPGA component `noc_shell&#39; is revision=
 5 and UHD supports revision 6. Please either upgrade the FPGA image (recom=
mended) or downgrade UHD.</div><div><br></div><div>I thought that upgrade t=
he USRP was the best option, but when I try, I have another error saying th=
at the size of the image is too large ( only for 1 byte). I also read that =
I had to use the .bin file but I didn&#39;t have any. <br></div><div>So, co=
uld you please tell me what I could do?</div><div><br></div><div>Thank you =
very much in advance.</div><div>Kind regards,</div><div>Aaron<br></div></di=
v>

--00000000000042925a05938979ef--


--===============0969536229925508947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0969536229925508947==--

