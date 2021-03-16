Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D160733D596
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 15:15:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB63D38382F
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 10:15:13 -0400 (EDT)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id ACE0638381F
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 10:15:04 -0400 (EDT)
Received: by mail-ed1-f52.google.com with SMTP id e7so21689944edu.10
        for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 07:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=+m/RDIaFV2UwPLi9oKistDzjiDl7chkKVJKNgJnfIXQ=;
        b=H6OjbVp8VYkJtTjVaWI5YpxEfqJJO9cG2gs5CrKGcsnq8cgrSry/wePfCcYFmP/gLE
         /h15w8uGOpmu/7dILY7zplhIkp1UU/RnDUniXmLU1i18JV9VLA8nOH/KGhek3GIa/TlT
         2HubLC3d0ly611et3qFvi3oSrVBQjtsCXH9ySyrZjl3nZ2urR8OK97YD52J1ZJEsUfQ0
         UfofVVO12PnilHZaLnoV1tN47Z8Ac+LmZ/vtX0mo3Uue9kmaBv4s2SPPqhf9clBo6F00
         Uja2+FHjen/CXAAnn0Ypk4ICg2v7BWMofV2fsMgx2JUwGBbwSEvm4EMDw679BSUNIbJP
         z4qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+m/RDIaFV2UwPLi9oKistDzjiDl7chkKVJKNgJnfIXQ=;
        b=HKRNCsHDaTTwGCGFLqA8w5GlZ/rKx3BqqHYre5debMkqGIOQJMyDsU0E4xKo01dimR
         ghcrhLA/wnxUW5yN3I0ACDg+IBm9SuqqZjevxrGzARp/b2I/BdUgeQGNkJy7edipl8dG
         vZNOEDzBO8xS+78lXtE/g7aiaO5AvQwfFBLsjX3+a+4qxbDTCBHzJsWFM82njRGWu4oe
         tX5yrx9zdyxh6QTJWXDQ9RTUeyavyKR/sH22hzB3xDt7EGdpcygNeo4KECqrgFOSaqt9
         ua8HrxHZoyUSM5yi57XkPQkNg60t9N2kThpm35peIgV1+QwoFfD34QaSFDZhHGmRjQe7
         /4LA==
X-Gm-Message-State: AOAM532jouPNjg9pVJLRyvE02ddu6FTlJIsyeYsWw2Nx0xkdWtdAFzsj
	JZi1N7rey1sjHwGR3anJ9iWOfWY4+Fx127MrbrZlLXUt5gyX4w==
X-Google-Smtp-Source: ABdhPJwX8/eRWxcsx2B/iolIPz1r8pPQV6WQYq19orUfc9K/KycISOQ4X0yNSSgdnXGgm64yRCjE9YIBeGs/TU7tmNg=
X-Received: by 2002:a05:6402:31b7:: with SMTP id dj23mr36844706edb.245.1615904103282;
 Tue, 16 Mar 2021 07:15:03 -0700 (PDT)
MIME-Version: 1.0
From: Julian Casallas <jcasallas2019@gmail.com>
Date: Tue, 16 Mar 2021 10:14:52 -0400
Message-ID: <CAFBYX1VosRU86TF-8fmLRkJmHEPC2M39-myO9KteXE=uDMQrsw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: BOZEKFODLYJPWZFETPP2GGZ652HKRDZS
X-Message-ID-Hash: BOZEKFODLYJPWZFETPP2GGZ652HKRDZS
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using rfnoc_create_verilog.py creates verilog files different from rfsocmodtool.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BOZEKFODLYJPWZFETPP2GGZ652HKRDZS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1626333386772671623=="

--===============1626333386772671623==
Content-Type: multipart/alternative; boundary="000000000000113ca605bda7fe6f"

--000000000000113ca605bda7fe6f
Content-Type: text/plain; charset="UTF-8"

Hello,

I went through  the  Getting Started with RFNoC UHD 4 guide and I followed
the RfNoC 4 WorkShop - GRCon 2020 to design a RFNoC block, this is what I
did:

1. Created the gain block and it works fine following the RFNoC 4 video. I
checked the HDL files, and I could see the interfaces payload and context
were created between NoC Shell and the User Logic as expected.

2. Then I went ahead and created my own block, *not* using the
*rfnocmodtool *but in this case using the *rfnoc_create_verilog.py *tool
following  the UHD 4 guide based on the same gain.yml file for testing
purposes, however, the verilog files created in this case do not use
payload/context approach.

I was hoping that following the UHD 4 guide to design new blocks using the
python script I could get the same verilog files used in the video.

Therefore,  my question is, what is the process to add a block with
multiple inputs and outputs  using RFNoC 4?

Thanks
J

--000000000000113ca605bda7fe6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I went through=C2=A0 the=C2=A0 G=
etting Started with RFNoC UHD 4 guide and I followed the RfNoC 4 WorkShop -=
 GRCon 2020 to design a RFNoC block, this is what I did:</div><div><br></di=
v><div>1. Created the gain block and it works fine following the RFNoC 4 vi=
deo. I checked the HDL files, and I could see the interfaces payload and co=
ntext were created between NoC Shell and the User Logic as expected.</div><=
div><br></div><div>2. Then I went ahead and created my own block,=C2=A0<b>n=
ot</b>=C2=A0using the=C2=A0<b>rfnocmodtool=C2=A0</b>but in this case using =
the=C2=A0<b>rfnoc_create_verilog.py=C2=A0</b>tool following=C2=A0 the UHD 4=
 guide based on the same gain.yml file for testing purposes, however,=C2=A0=
the verilog files created in this case do not use payload/context approach.=
</div><div><br></div><div>I was hoping that following the UHD 4 guide to de=
sign new blocks=C2=A0using the python script I could get the same verilog f=
iles used in the video.</div><div><br></div><div>Therefore,=C2=A0 my questi=
on is, what is the process to add a block with multiple inputs and outputs=
=C2=A0 using RFNoC 4?</div><div><br></div><div>Thanks</div><font color=3D"#=
888888"><font color=3D"#888888"><font color=3D"#888888"><font color=3D"#888=
888"><div>J</div></font></font></font></font></div>

--000000000000113ca605bda7fe6f--

--===============1626333386772671623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1626333386772671623==--
