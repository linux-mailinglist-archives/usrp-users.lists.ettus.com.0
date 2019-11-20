Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B785C1044F9
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2019 21:25:04 +0100 (CET)
Received: from [::1] (port=45498 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iXWX0-0003xz-7x; Wed, 20 Nov 2019 15:24:54 -0500
Received: from mail-lj1-f193.google.com ([209.85.208.193]:41006)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iXWWw-0003qA-8g
 for usrp-users@lists.ettus.com; Wed, 20 Nov 2019 15:24:50 -0500
Received: by mail-lj1-f193.google.com with SMTP id m4so571208ljj.8
 for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2019 12:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=mXzuGYZIdpCeZsXgXB5pL2KXUfejwdU/V4uZzpJ66FY=;
 b=hwww6eHEKvn8VoC9D6hxdVJ5X6RnGJSKLZqRd6V7ezgw78oXq4JVDloW4dYsOHE4Yq
 Q2K/go0Aso5tdKIVJ8GuDVFmHBLvTSbPXaHYpZ/U74dyzSv7EbnKwFrDmaf2IoP+fDH7
 I5K8cziJw1hhUvGNZIabLkMqCXd1CJzh+9MpyLrBBIOh+ZSkr4MklW0YXkWf4Bl4qYfZ
 iM216Ccy5RmZ8+BiiG4IUXcR9v4fBWNRFMTwf+dVezr9EbsSnCfjCZbGuFMfYowJIgu0
 /HRYYS4e6neQiguvMhECsyC/nY0tscnClR4WOlWR/swIWnKhXQzldTOtFi5dCMEutlLv
 Po3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mXzuGYZIdpCeZsXgXB5pL2KXUfejwdU/V4uZzpJ66FY=;
 b=s9W38XhVrerBJoFgmFwYmvYcGChQt0MtSFsUt7CAH4fEY6oflaCUvrGlL0v5fdQWcJ
 YeZpfyWOm8cB8qOkPiMtSFGI+5wO3uOuwpzTM8i9Es+V7rwZwmptKsM5qLYIFMeM6jt8
 DSFwl398TCz0xcya+dQIY0crGhlf6M34TZvA51x0D02QsdreC14hOV0z35qxv7Jr6G5O
 ZKYMz2kChtVf0JhJ+a+atc3NaGBniJR+hG5z7m5A59UDOzQYN7d0mWPDmBJF68SjstjD
 02Oq+hAMEVJskBazTKim/vFsfo0hyXx+Ki18VuClO6TUC4o+JKYGty0BUnYD/WrnvXtQ
 qdVg==
X-Gm-Message-State: APjAAAU1jXUtDanaQYvc28Dfcq+Ki9znyXfeU7SVduOSUlCsXcentqI2
 Oq+9U6BOrGs0QS8qdOnFN77l9L3Fs63FYUaDBsI=
X-Google-Smtp-Source: APXvYqyn1PlqKyVZcMvUkGOcr1wyX5tLMbFLP3SvkoTpM9Zt3nCRyWdSVlU9eBdzBLTgpYt0nEPtivpbpGpUFTowWxE=
X-Received: by 2002:a2e:982:: with SMTP id 124mr4542308ljj.48.1574281448902;
 Wed, 20 Nov 2019 12:24:08 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 15:21:28 -0500
Message-ID: <CALY+5sLFttRpt+J_PSv1Oa7afRJDHr027vvpA9u2BNME7qmscg@mail.gmail.com>
To: support@ettus.com, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] E312 - Migrating OOT Modules to the USRP
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
From: Jonathan Lockhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathan Lockhart <jlockhartrt@gmail.com>
Content-Type: multipart/mixed; boundary="===============1098250984270009715=="
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

--===============1098250984270009715==
Content-Type: multipart/alternative; boundary="00000000000089d2a90597ccf633"

--00000000000089d2a90597ccf633
Content-Type: text/plain; charset="UTF-8"

Greetings,

I am having some issues completing the RFNOC build tutorial on the Ettus
E312. The reference documentation is using an X3xx series radio, and from
the final python script it appears to be running the GNR script natively on
the host. I built the exact script from the KB but when running on the
radio it fails stating it can't "import tutorial." I realized all the files
that were installed were placed on the host but not cross compiled for the
E3xx using the SDK and ARM cross compile tool. I tried to complete this
task, but unfortunately the compilation dies here.

/home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/gnu/stubs.h:7:11:
fatal error: gnu/stubs-soft.h: No such file or directory
 # include <gnu/stubs-soft.h>
           ^~~~~~~~~~~~~~~~~~
compilation terminated.

Now I did find the stubs-soft.h file in the libc6-dev-armel-cross in the
apt repo. I installed it and tried to cp the file into the
/home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/gnu/
location but it still doesn't like that. I verified that on my echo $CC
that the -mfloat is set to hard as shown here.

jon@jon-OptiPlex-9020:~/rfnoc/src/rfnoc-tutorial$ echo $CC
arm-oe-linux-gnueabi-gcc -march=armv7-a -mfloat-abi=hard -mfpu=neon
--sysroot=/home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi

So I am not sure why the gain module in the tutorial is looking for the
soft file.

If anyone has experience in porting their OOT modules over to the E-series
of radios I would appreciate the help.

Regards,
Jon

--00000000000089d2a90597ccf633
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Greetings,</div><div><br></div><div>=
I am having some issues completing the RFNOC build tutorial on the Ettus E3=
12. The reference documentation is using an X3xx series radio, and from the=
 final python script it appears to be running the GNR script natively on th=
e host. I built the exact script from the KB but when running on the radio =
it fails stating it can&#39;t &quot;import tutorial.&quot; I realized all t=
he files that were installed were placed on the host but not cross compiled=
 for the E3xx using the SDK and ARM cross compile tool. I tried to complete=
 this task, but unfortunately the compilation dies here. </div><div><br></d=
iv><div>/home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/=
include/gnu/stubs.h:7:11: fatal error: gnu/stubs-soft.h: No such file or di=
rectory<br>=C2=A0# include &lt;gnu/stubs-soft.h&gt;<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~<br>compilation terminated.</div><di=
v><br></div><div>Now I did find the stubs-soft.h file in the libc6-dev-arme=
l-cross in the apt repo. I installed it and tried to cp the file into the /=
home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/g=
nu/ location but it still doesn&#39;t like that. I verified that on my echo=
 $CC that the -mfloat is set to hard as shown here.</div><div><br></div><di=
v>jon@jon-OptiPlex-9020:~/rfnoc/src/rfnoc-tutorial$ echo $CC<br>arm-oe-linu=
x-gnueabi-gcc -march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon --sysroot=3D=
/home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi</div><div><b=
r></div><div>So I am not sure why the gain module in the tutorial is lookin=
g for the soft file. <br></div><div><br></div><div>If anyone has experience=
 in porting their OOT modules over to the E-series of radios I would apprec=
iate the help. <br></div><div><br></div><div>Regards,</div><div>Jon<br></di=
v></div></div>

--00000000000089d2a90597ccf633--


--===============1098250984270009715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1098250984270009715==--

