Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C7926CEF0
	for <lists+usrp-users@lfdr.de>; Thu, 17 Sep 2020 00:39:33 +0200 (CEST)
Received: from [::1] (port=54852 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIg5I-0007gH-Kd; Wed, 16 Sep 2020 18:39:28 -0400
Received: from mail-ot1-f50.google.com ([209.85.210.50]:40231)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kIg5F-0007b8-EA
 for usrp-users@lists.ettus.com; Wed, 16 Sep 2020 18:39:25 -0400
Received: by mail-ot1-f50.google.com with SMTP id e23so99695otk.7
 for <usrp-users@lists.ettus.com>; Wed, 16 Sep 2020 15:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=0fJB2jSgoaT+ulOG81Fub+BrCMapIsdx6MKPLoJLV6Y=;
 b=IHLHclrddUlGWMG7Df7q0CylBWMENEXItiyvW6zNYaWBMhAz9m4UTvrngnLlKcakFj
 CWlk4KqDHjXFP1YJmj+RuV7Y1BURAGolG5mEa2vz8/TE2JSMqjUvURUQICtsCIsHLRuC
 2mdfr/PU+Higw+1Gfh8TDCXsN+jaRM8hpUN35mX4nuPFlt0Exdywvwrfr/L9+60BXqhm
 GzJdVm8mdTfpWQ9XE/CPHFOt1YA838T8OOueG6UMxPO5ICR226KdFEZEJHIMJ63hKRlJ
 w3hHZFhysbuNEJLOXGbakzdXsqZK0rCGnUzHyuYoFGyv6rrZ4I+v7x0wFIzyjQoJg/+h
 q9fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=0fJB2jSgoaT+ulOG81Fub+BrCMapIsdx6MKPLoJLV6Y=;
 b=XupH57r/E3l57P3XsePU6EtcoEDHgNpZcVoKpOI4qeUmcsd8pwvV8gxqWqEF5xcbZy
 VTiTS9B+ZVHrkQDuv4jo3XckfxJJG8ziMi4gPj0bMzy6GKMg4HJZafJDGbJcjP1YZMe/
 yqasLeZTrN7Q08q3sqQTpbUpQIua5eEqNqI8188P7yOHHTYKku5lLQO8cQ+xCTTkhWSQ
 SJ75kxgJvdK+Nny7/h4WCh5ijcUreAGmNsaOiuPPqyaJ7YdccaAh0Km+CUzAkzdzl3EH
 TxM4blzMbNu9cSp0aXGvcTptyLb6fcxETM8f8bCOyzsc2PnXliXg5YBl6M8+UqVEqD8H
 /zqQ==
X-Gm-Message-State: AOAM531ZXAi7YcVLAKW6ZgayksuV5gZ8UbgAzHX6NISgQiPhNadriMas
 ZGxochBsTNuwkZBdhBuvhIvuHMma29qi29kR6r3Lp8U3aOgQ/Q==
X-Google-Smtp-Source: ABdhPJzfDfflJNvgVV2TLK+D9YAEo3yNPatus6axhGqD12JGFhPgt02X464b3GMqyVpnb0FHYPHgIOvV29XKqZ8ebBA=
X-Received: by 2002:a9d:65cc:: with SMTP id z12mr17465656oth.301.1600295924241; 
 Wed, 16 Sep 2020 15:38:44 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 16 Sep 2020 18:38:33 -0400
Message-ID: <CAB__hTSOe=zRoKHchG3cPARPZEmnDCyw8DLYskQdspGJT9d2eQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] UHD 4.0 / RFNoC 4.0 questions
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
Content-Type: multipart/mixed; boundary="===============5595234309361281169=="
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

--===============5595234309361281169==
Content-Type: multipart/alternative; boundary="00000000000019ea1305af75eecb"

--00000000000019ea1305af75eecb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
After playing around with UHD 4.0 and migrating existing applications &
custom blocks to 4.0, I have several questions (see below).
Thanks.
Rob

   - What is the status of the need for block controllers vs using
   nocscript? The rfnoc spec shows example yml files with =E2=80=9Cregister=
s=E2=80=9D and
   =E2=80=9Cproperties=E2=80=9D sections (and nocscript commands), but all =
blocks from Ettus
   have these sections blank and all of the blocks have custom block
   controllers. At NEWSDR, I asked a similar question to Jonathan Pendlum /
   Michael West and they indicated that in UHD 4.0, the need for custom blo=
ck
   controllers should be relatively rare.
   - Are there any plans to have rfnoc modtool part of UHD rather than
   gr-ettus (in the near future)?  This makes way more sense.
   - Is there a limitation on the number of stream endpoints (e.g., is it
   similar to the limitation of 16 CEs in UHD 3.15)?
   - What are the advantages/disadvantages of making a multi-port block vs
   having multiple one-port blocks for blocks like ddc, window, keep_one_in=
_n,
   etc, that are really just multiple instances of 1-in, 1-out modules?  Fo=
r
   example, are there resource or performance implications if I build two
   1-port DDC blocks or one 2-port DDC block in my image?
   - Why does it matter if the addresses for user registers are in steps of
   4 rather than 1 if we are just using the addresses as essentially
   identifiers?  I understand that the address is intended as a byte addres=
s
   of a 4-byte value, but it seems that the examples I have seen are just
   using the address as an identifier.
   - Will Ettus be providing replacements for blocks with deprecated
   features such as settings bus registers? For example, in order to use
   axi_rate_change, which uses settings registers, it=E2=80=99s easiest to =
use the
   ctrlport_to_settings_bus module rather than using ctrlport directly. Sho=
uld
   we expect in  the future that axi_rate_change (and similar blocks) will =
be
   replaced by a future block?
   - For timed commands in 3.15, only the Radio blocks were using the mb
   time to trigger the desired action whereas other blocks such as DDC & DU=
C
   implemented timed commands by comparing to timestamps in the CHDR stream=
.
   Is this still true for 4.0?  My question is not about =E2=80=9Cwhat is p=
ossible=E2=80=9D
   but rather =E2=80=9Cwhat is presently implemented=E2=80=9D in Ettus bloc=
ks.

--00000000000019ea1305af75eecb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>After playing around with UHD 4.0 and migrating ex=
isting applications &amp; custom blocks to 4.0, I have several questions (s=
ee below).</div><div>Thanks.</div><div>Rob</div><div><ul><li>What is the st=
atus of the need for block controllers vs using nocscript? The rfnoc spec s=
hows example yml files with =E2=80=9Cregisters=E2=80=9D and =E2=80=9Cproper=
ties=E2=80=9D sections (and nocscript commands), but all blocks from Ettus =
have these sections blank and all of the blocks have custom block controlle=
rs. At NEWSDR, I asked a similar question to Jonathan Pendlum / Michael Wes=
t and they indicated that in UHD 4.0, the need for custom block controllers=
 should be relatively rare.</li><li>Are there any plans to have rfnoc modto=
ol part of UHD rather than gr-ettus (in the near future)?=C2=A0 This makes =
way more sense.</li><li>Is there a limitation on the number of stream endpo=
ints (e.g., is it similar to the limitation of 16 CEs in UHD 3.15)?</li><li=
>What are the advantages/disadvantages of making a multi-port block vs havi=
ng multiple one-port blocks for blocks like ddc, window, keep_one_in_n, etc=
, that are really just multiple instances of 1-in, 1-out modules?=C2=A0 For=
 example, are there resource or performance implications if I build two 1-p=
ort DDC blocks or one 2-port DDC block in my image?</li><li>Why does it mat=
ter if the addresses for user registers are in steps of 4 rather than 1 if =
we are just using the addresses as essentially identifiers?=C2=A0 I underst=
and that the address is intended as a byte address of a 4-byte value, but i=
t seems that the examples I have seen are just using the address as an iden=
tifier.</li><li>Will Ettus be providing replacements for blocks with deprec=
ated features such as settings bus registers? For example, in order to use =
axi_rate_change, which uses settings registers, it=E2=80=99s easiest to use=
 the ctrlport_to_settings_bus module rather than using ctrlport directly. S=
hould we expect in =C2=A0the future that axi_rate_change (and similar block=
s) will be replaced by a future block?</li><li>For timed commands in 3.15, =
only the Radio blocks were using the mb time to trigger the desired action =
whereas other blocks such as DDC &amp; DUC implemented timed commands by co=
mparing to timestamps in the CHDR stream.=C2=A0 Is this still true for 4.0?=
=C2=A0 My question is not about =E2=80=9Cwhat is possible=E2=80=9D but rath=
er =E2=80=9Cwhat is presently implemented=E2=80=9D in Ettus blocks.</li></u=
l><div><br></div></div><div><br></div></div>

--00000000000019ea1305af75eecb--


--===============5595234309361281169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5595234309361281169==--

