Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B3F2B9D19
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 22:52:17 +0100 (CET)
Received: from [::1] (port=41094 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfrqg-0002Ap-Ah; Thu, 19 Nov 2020 16:52:14 -0500
Received: from mail-vs1-f42.google.com ([209.85.217.42]:33047)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <koncept1@gmail.com>) id 1kfrqc-0001xD-UJ
 for usrp-users@lists.ettus.com; Thu, 19 Nov 2020 16:52:10 -0500
Received: by mail-vs1-f42.google.com with SMTP id s123so3249987vsc.0
 for <usrp-users@lists.ettus.com>; Thu, 19 Nov 2020 13:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=DGo87gwkNQCGW3ovTRnlhqGKKi9xvu9c9rBHf55tPE4=;
 b=i5jhxpAGp0ynmDviupn7VzT9Gj5M1c/UH8iopyEQzej16+ArijEHgDAvtdHwmxsIKE
 e0PUusBFUu5z7IWa/nxot2Xee6/IwW5MmGtFK7psfN8kaURy9lUxAHsdyretE0eAcrrP
 gdWZ7r64sCkWkk4+UsKFzPWV9ACzyNkWm7y4w528wwO0LbqUA4uTBBDPXk40FH0wDnxX
 NSHuvf7IvhcUHMeNw7Kw1EnfazUFbum35mC5K7hvhY42Q2YF9y1otxUH4Xl4m7YLWDTG
 3+B0j/Rt94jdeGhKTImSzmPACQuZQxh8xe0IldxXfVnXf7sDtGPAv4RU5f9B5CPgbmai
 lqww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=DGo87gwkNQCGW3ovTRnlhqGKKi9xvu9c9rBHf55tPE4=;
 b=BixN1Ho0E+EiEzLC81ErKCryLj/5SgJWGxOpI6kLe9M2U9WgR+Jy+o+5yUANTo+Z9L
 dGpxEvsg/2khqIkM3l+D/xG0TT2RWz6n3W5/xTgstGCYmDxJzZRR+QBDNQlTR6o0HfVZ
 eY0+TSuo9SMYitf6QUQTHuqHn2PykOaVZwurRkmpfrn6hThlbJ30n0Qv7vBDAyNpK0YX
 1QQxPDqDzPbRlZNzv9I2Jn35nk1xKueB6goYTt0iBr2nPO4/5m+Ic5KuzU7tpEA7fMas
 ryOKkaq14rtj6atrGsXkro19Np5lf3Vzf+93ZcwmZKeF69N/lInNWLT3gFxinLrNY8fr
 HcGw==
X-Gm-Message-State: AOAM533fuLu3EVKkRdx8MREtWfx1FLUfaz7+yn86jAErNq3I3oEOhZ0z
 6dXMCGuIgLCDODDzsXA0YNbMLLcFARyP3+jsGg1L0M36tfo=
X-Google-Smtp-Source: ABdhPJxraXCumvFjW5W0RaFD/RdDLbwOMmyv8107D081el3cPX/otj+gnGIMkVwZgWAPSVN8C6/T9t3wiVhrcU1fros=
X-Received: by 2002:a67:310d:: with SMTP id x13mr11016735vsx.19.1605822689880; 
 Thu, 19 Nov 2020 13:51:29 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 19 Nov 2020 16:51:18 -0500
Message-ID: <CAKx8PBiYjS+iH+ZnPKKm2yhGHe3qWmVXZW=aXzgLRqVHZSwg_w@mail.gmail.com>
To: USRP list <usrp-users@lists.ettus.com>
Subject: [USRP-users] Building Debug FS Image
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
From: Ben Magistro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ben Magistro <koncept1@gmail.com>
Content-Type: multipart/mixed; boundary="===============3577866414362914915=="
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

--===============3577866414362914915==
Content-Type: multipart/alternative; boundary="00000000000000ae4f05b47cbbfa"

--00000000000000ae4f05b47cbbfa
Content-Type: text/plain; charset="UTF-8"

I've been trying to rebuild meta-ettus (in this case -v4.0.0.0) with debug
enabled but am hitting an issue with image size being larger than an 8GB sd
card and can't seem to get past that.  It says I should increase
`MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is larger but increasing
this in `local.conf` this seems to have no effect.  I am using the ettus
docker image for oe-builder with the command
`./meta-ettus/contrib/build_imgs_package.sh e310_sg3 v4.0.0.0`.  For the
debug portion I've added a few lines to `build/conf/local.conf` to add the
packages.  Anyone know how to increase the total storage size so that it
can build the image?

Thanks in advance.

--00000000000000ae4f05b47cbbfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva=
,Helvetica,Arial,sans-serif;font-size:13.44px">I&#39;ve been trying to rebu=
ild meta-ettus (in this case -v4.0.0.0) with debug enabled but am hitting a=
n issue with image size being larger than an 8GB sd card and can&#39;t seem=
 to get past that.=C2=A0 It says I should increase `MENDER_STORAGE_TOTAL_SI=
ZE_MB` if the actual size is larger but increasing this in `local.conf` thi=
s seems to have no effect.=C2=A0 I am using the ettus docker image for oe-b=
uilder with the command `./meta-ettus/contrib/build_imgs_package.sh e310_sg=
3 v4.0.0.0`.=C2=A0 For the debug portion I&#39;ve added a few lines to `bui=
ld/conf/local.conf` to add the packages.=C2=A0 Anyone know how to increase =
the total storage size so that it can build the image?</span><br><div><span=
 style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-=
serif;font-size:13.44px"><br></span></div><div><span style=3D"color:rgb(0,0=
,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px=
">Thanks=C2=A0in advance.</span></div></div>

--00000000000000ae4f05b47cbbfa--


--===============3577866414362914915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3577866414362914915==--

