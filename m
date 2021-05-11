Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DEE379FF9
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 08:48:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D618838403F
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 02:48:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QFWUlGwL";
	dkim-atps=neutral
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by mm2.emwd.com (Postfix) with ESMTPS id C982D384028
	for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 02:47:17 -0400 (EDT)
Received: by mail-lf1-f47.google.com with SMTP id t11so26984050lfl.11
        for <usrp-users@lists.ettus.com>; Mon, 10 May 2021 23:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=6MKghLUdgBmJnHlzJgdrsC6kekJW3UteHd4cNkQOWiM=;
        b=QFWUlGwLEASaZP5c1mkG03fcJhWjSVbQupLTl4rpbo2q1tsoEgZ/3RnMq1iJgVE6F0
         y+yZwPjzFv0apREBv/xhMJeunlH2aAoSv8WoAFGjboSZrXivap7qnslq42BQ4ToBYRJY
         h8t3U9T7TfXJ9F9HVahKwHizVvzCawrRDMKtmDk9YpjbRlkaE5qoSADql/AuqXv7ryJV
         sEM0Scvl+nxXL0OEOwlkcTlP2/3CrBm51gjZPfP3PNL9n0yOENly+3AdkazBjfgWyvHj
         gSCGg1RBQi0asA4HSzOjKo6kwk3ZrP/zqdwetMtjnzmzbYZGN5aSa7GH9I6UaRwgzLSO
         7TZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6MKghLUdgBmJnHlzJgdrsC6kekJW3UteHd4cNkQOWiM=;
        b=Bjrg2zuN/y00zpAmeAEyihVpbwKxLbHMy7ekWJzdAQRBdWVfKNS+wBcH9SfVMijJW0
         TYWENiEDMrD00OCUrzE14SAqaRtMeznNe2solqho0zpjQTi3+McIsmYJ361FtTkXISes
         vQ5b2ZroSLBUtEa0WunlP8aVN19r47RZJrHj9YOheDgDQWOBl989JDSqXXDW2AWpqvbg
         iOQoQ5vxrbKSuNblXhZCPDfrtblMU9ZRtqxuZzSJQxPV3N6X/EZk28AGaMzLfZqDP2EM
         /5/68gQe3khxNtph47ggf1s91HU1nVExgCWB//AzBb48JAHM3o9/Go+nwT4hPBjlkUev
         j+Hg==
X-Gm-Message-State: AOAM533Agq7ohWsk04iB3zHjt1DlxUYOyhKqrhM3hzNX3HIs5TZMIzZC
	pVxFzCHHZoO+1z+3HIFxnaPzULhPZvlB911o+kMb1eLZccI=
X-Google-Smtp-Source: ABdhPJy8ENCejBSUnpVFjsDiIDVVGP5dmmxg4oZnqY3Srs9wFXkaWbkB92pY6T6hL07pPKcu5EaAtcpvM6Q3AR5XoO8=
X-Received: by 2002:a05:6512:3d0f:: with SMTP id d15mr20065860lfv.639.1620715636079;
 Mon, 10 May 2021 23:47:16 -0700 (PDT)
MIME-Version: 1.0
From: Margaux Bougeard <margaux.bgd1@gmail.com>
Date: Tue, 11 May 2021 08:47:05 +0200
Message-ID: <CA+SYr19y3-h45ZydqZM6_JRmNMrA2xCJKM0xjsPz9keWfyXXuA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: HYYHXZHPNKNDENVDX7SY7CC73TPBRPRS
X-Message-ID-Hash: HYYHXZHPNKNDENVDX7SY7CC73TPBRPRS
X-MailFrom: margaux.bgd1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD Communication with FPGA register E312
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HYYHXZHPNKNDENVDX7SY7CC73TPBRPRS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0279072610704885752=="

--===============0279072610704885752==
Content-Type: multipart/alternative; boundary="000000000000c53f1b05c208435c"

--000000000000c53f1b05c208435c
Content-Type: text/plain; charset="UTF-8"

Hello,

I work with the USRP E312, UHD 4 and python. I created a new FPGA image to
add a register, allowing me to store data that I want to transmit. I loaded
my new image thanks to "uhd_image_loader". Now, I would like to be able to
read the new register that I added to the FPGA from UHD, but It doesn't
work.

How can I do this ?

I would like, that like when I call "usrp.get_time_source()" in python for
example, I can have a function which reads my register.


Thanks for your help

--000000000000c53f1b05c208435c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva=
,Helvetica,Arial,sans-serif;font-size:13.44px">Hello,</span><br style=3D"co=
lor:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-s=
ize:13.44px"><br style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helve=
tica,Arial,sans-serif;font-size:13.44px"><span style=3D"color:rgb(0,0,0);fo=
nt-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px">I wo=
rk with the USRP E312, UHD 4 and python. I created a new FPGA image to add =
a register, allowing me to store data that I want to transmit. I loaded my =
new image thanks to &quot;uhd_image_loader&quot;. Now, I would like to be a=
ble to read the new register that I added to the FPGA from UHD, but It does=
n&#39;t work.</span><br style=3D"color:rgb(0,0,0);font-family:Verdana,Genev=
a,Helvetica,Arial,sans-serif;font-size:13.44px"><br style=3D"color:rgb(0,0,=
0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px"=
><span style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial=
,sans-serif;font-size:13.44px">How can I do this ?</span><br style=3D"color=
:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size=
:13.44px"><br style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetic=
a,Arial,sans-serif;font-size:13.44px"><span style=3D"color:rgb(0,0,0);font-=
family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px">I would=
 like, that like when I call &quot;usrp.get_time_source()&quot; in python f=
or example, I can have a function which reads my register.</span><br style=
=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;=
font-size:13.44px"><br style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva=
,Helvetica,Arial,sans-serif;font-size:13.44px"><br style=3D"color:rgb(0,0,0=
);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px">=
<span style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,=
sans-serif;font-size:13.44px">Thanks for your help</span><br></div>

--000000000000c53f1b05c208435c--

--===============0279072610704885752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0279072610704885752==--
