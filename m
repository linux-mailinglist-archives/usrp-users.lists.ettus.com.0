Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2871942CB27
	for <lists+usrp-users@lfdr.de>; Wed, 13 Oct 2021 22:34:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CC6B73843F2
	for <lists+usrp-users@lfdr.de>; Wed, 13 Oct 2021 16:34:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CqJg3V8/";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B3BB3843CA
	for <usrp-users@lists.ettus.com>; Wed, 13 Oct 2021 16:33:52 -0400 (EDT)
Received: by mail-yb1-f175.google.com with SMTP id r1so9382015ybo.10
        for <usrp-users@lists.ettus.com>; Wed, 13 Oct 2021 13:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=vsrtM4PvQltxcUtdw8Z3I0ZJ+zAxwKOB9gXBtU346os=;
        b=CqJg3V8/cUa6UsRX5K09wmBFvqKg8ZFr3WE1wPX4OrybYuTp68kSywx2Mf/fuo7AGr
         MeyE5RK1MRolLTopKF55FRy/EMPeiJQZwoEcoiZXjpm16N6fPBnqk4uw669BxejSOiU+
         aUY1TbDI+OvnJEpylxkN8qJfewR7JEJKN9QRlYDACSDUZ5oQB4WdnnBXvilQ/wOnL30P
         fN77cKW/xXu4iGlC+spwYuCa9The8DmRpef5L+iZxPFW+dz8px2wiJW16rIcZXpdptYZ
         lgbfwuEU/t6gkCat8QLmS/cBJGrqL7fBgSA1GqG1e3mMPEuHlCEoBSHz7GK6GvK49b4I
         HpVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vsrtM4PvQltxcUtdw8Z3I0ZJ+zAxwKOB9gXBtU346os=;
        b=m62HW1CNn+KJhIWgVEdTBCmG2QYiDt0jgu1NCZOoQRjmsLRbg6VxpdD1vFtPWB5zd8
         Ehe4u95jGopZdXoY+ZQ2tCO68CELVpY0schqvzkGzM4/Q+IMQSlwjZwseXJGk+HX49e9
         u1YP2BeyZPhpm/4+FSu2q+aKKTrN7gISmFr1SHTpi66wkmYgOYsN+utfoF+RnmXPNC6i
         b1TvQPri7sOyFldHKNGTkegKRdzl3y1z6HNUpVgzrq3n96v26957/CsZMEpxYG5nxNW1
         NmJ4bhHEwL+GFdAmdf79X94ZP/DfixlRCNQSmm0wyPbUDMTnGc9PgzNjbzo3wsAjlDGK
         x8+w==
X-Gm-Message-State: AOAM533xwN5FVwLZqxT1NCn16B4wwe3n4LPxMl913ibsnwUl0T4w2MZn
	3LeIevDXll3YUyYo5QkBV4rG0tTKP6TnCShOj7zWBZMSHlA=
X-Google-Smtp-Source: ABdhPJy/BAdXq0rUj06LicT4UFWY8CCCDG3Wb/0m2blI4hUGmDqT7gglu1Jnjmjanh0Yal3S5l54ZB5QhEWmoV3TpR8=
X-Received: by 2002:a25:ace0:: with SMTP id x32mr1839796ybd.142.1634157231521;
 Wed, 13 Oct 2021 13:33:51 -0700 (PDT)
MIME-Version: 1.0
From: Sadiq Iqbal <sadiq.zahid73@gmail.com>
Date: Wed, 13 Oct 2021 23:34:34 +0300
Message-ID: <CAD8Pmbp1vo2=bvSZ-4sh+JKf+ELxXNg=yNDMj33E28y+-ZjEOw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: CPXK5PZBGLLT3PDOWWPGWINIBLNUW5ZT
X-Message-ID-Hash: CPXK5PZBGLLT3PDOWWPGWINIBLNUW5ZT
X-MailFrom: sadiq.zahid73@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Can not pass the Radio Device address to srsRAN application
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CPXK5PZBGLLT3PDOWWPGWINIBLNUW5ZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8028683649568348931=="

--===============8028683649568348931==
Content-Type: multipart/alternative; boundary="0000000000004ac3ae05ce41e169"

--0000000000004ac3ae05ce41e169
Content-Type: text/plain; charset="UTF-8"

Hi guys, I want to inform you about the recent update related to the N210
device that I am using with ubuntu. The issue right now is that I can not
pass the device address to srsRAN. When I run the command
"sudo srsepc" this works fine. Then i run the next command "sudo srsenb"
this shows this output

"osboxes@osboxes:~$ sudo srsenb
[sudo] password for osboxes:
---  Software Radio Systems LTE eNodeB  ---

Reading configuration file /root/.config/srsran/enb.conf...
WARNING: Could not verify cpu0 scaling governor

Built in Release mode using commit 89f16eed2 on branch master.

Opening 1 channels in RF device=default with args=default
[zmq] Error: RF device args are required for ZMQ no-RF module
/home/osboxes/srsRAN/lib/src/phy/rf/rf_imp.c.129: No compatible RF frontend
found
Error initializing radio."

I even re-installed Ubuntu to make sure there are not any errors, but still
I get this issue. Can you guide me where I am wrong so that I can learn and
proceed further. By the way, the USRP is connected, I can ping it and I can
probe it using the command
"uhd_usrp_probe --args addr=192.160.10.2"

Thank you.

--0000000000004ac3ae05ce41e169
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi guys=
, I want to inform you about the recent update related to the N210 device t=
hat I am using with ubuntu. The issue right now is that I can not pass the =
device address to srsRAN. When I run the command=C2=A0<div>&quot;sudo srsep=
c&quot; this works fine. Then i run the next command &quot;sudo srsenb&quot=
; this shows this output=C2=A0</div><div><br></div><div>&quot;osboxes@osbox=
es:~$ sudo srsenb<br>[sudo] password for osboxes:<br>--- =C2=A0Software Rad=
io Systems LTE eNodeB =C2=A0---<br><br>Reading configuration file /root/.co=
nfig/srsran/enb.conf...<br>WARNING: Could not verify cpu0 scaling governor<=
br><br>Built in Release mode using commit 89f16eed2 on branch master.<br><b=
r>Opening 1 channels in RF device=3Ddefault with args=3Ddefault<br>[zmq] Er=
ror: RF device args are required for ZMQ no-RF module<br>/home/osboxes/srsR=
AN/lib/src/phy/rf/rf_imp.c.129: No compatible RF frontend found<br>Error in=
itializing radio.&quot;<br></div><div><br></div><div>I even re-installed Ub=
untu to make sure there are not any errors, but still I get this issue. Can=
 you guide me where I am wrong so that I can learn and proceed further. By =
the way, the USRP is connected, I can ping it and I can probe it using the =
command=C2=A0</div><div><span style=3D"color:rgb(85,85,85);letter-spacing:0=
.2px;white-space:nowrap">&quot;uhd_usrp_probe --args addr=3D192.160.10.2&qu=
ot;</span></div><div><br></div><div>Thank you.</div></div></div></div></div=
>

--0000000000004ac3ae05ce41e169--

--===============8028683649568348931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8028683649568348931==--
