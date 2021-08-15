Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B54873EC794
	for <lists+usrp-users@lfdr.de>; Sun, 15 Aug 2021 07:02:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 933A1380D74
	for <lists+usrp-users@lfdr.de>; Sun, 15 Aug 2021 01:02:53 -0400 (EDT)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 01E1C383978
	for <usrp-users@lists.ettus.com>; Sun, 15 Aug 2021 01:02:04 -0400 (EDT)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 5188E40B8D
	for <usrp-users@lists.ettus.com>; Sun, 15 Aug 2021 08:01:54 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 369F19FC07
	for <usrp-users@lists.ettus.com>; Sun, 15 Aug 2021 08:01:54 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 4KfzeqUG6tZJ for <usrp-users@lists.ettus.com>;
	Sun, 15 Aug 2021 08:01:53 +0300 (IDT)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by o.dtnt.email (Postfix) with ESMTPSA id 950BE9F844
	for <usrp-users@lists.ettus.com>; Sun, 15 Aug 2021 08:01:52 +0300 (IDT)
Received: by mail-oi1-f176.google.com with SMTP id bf25so13348409oib.10
        for <usrp-users@lists.ettus.com>; Sat, 14 Aug 2021 22:01:52 -0700 (PDT)
X-Gm-Message-State: AOAM531hc50ZSAvJ0k1jflvlBsXvqeYj/5HrUYp2gSNt3oCFvLh9J4Ox
	ychzPeL9GRk7FWfWFgXGrOQgjuZKWQhnheKI1jI=
X-Google-Smtp-Source: ABdhPJxDJCAu3LVNgqrq0+m3OS7D1dgjFAa4bwV337qBEMqFT/rnQZRyv/MlglkHIxVu8FpA3JyemGZFGKCCwu4Q9PA=
X-Received: by 2002:a05:6808:91a:: with SMTP id w26mr7496153oih.47.1629003710182;
 Sat, 14 Aug 2021 22:01:50 -0700 (PDT)
MIME-Version: 1.0
From: Ofer Saferman <ofer@navigicom.com>
Date: Sun, 15 Aug 2021 08:01:39 +0300
X-Gmail-Original-Message-ID: <CACDReSwEpVpga34h2ge5-XPMwA+6X45a7WWmdX5+EGiUn+FkRw@mail.gmail.com>
Message-ID: <CACDReSwEpVpga34h2ge5-XPMwA+6X45a7WWmdX5+EGiUn+FkRw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 5188E40B8D.A2019
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: VHCZAC5VL2GCSHXSZW6TIZBWPG6K4GQB
X-Message-ID-Hash: VHCZAC5VL2GCSHXSZW6TIZBWPG6K4GQB
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1 on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VHCZAC5VL2GCSHXSZW6TIZBWPG6K4GQB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2405505411844487375=="

--===============2405505411844487375==
Content-Type: multipart/alternative; boundary="0000000000007bba0605c991fb63"

--0000000000007bba0605c991fb63
Content-Type: text/plain; charset="UTF-8"

Hello,

I have a E320 that came out-of-the-box with an image on the SD card of UHD
3.15.
What would be the easiest way to upgrade it to UHD 4.1?
Is there an SD image that is ready to program?
Do I have to rebuild it on the E320?

Also, can you please comment if the FPGA image of UHD 4.1 comes with the
RFNoC Replay block?
What would be the shortest path for me to get any UHD version on the E320
that has the RFNoC replay block built-in without needing to rebuild the
FPGA image by myself?

Thanks,
Ofer Saferman

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--0000000000007bba0605c991fb63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I have a E320 that ca=
me out-of-the-box with an image on the SD card of UHD 3.15.</div><div>What =
would be the easiest way to upgrade it to UHD 4.1?</div><div>Is there an SD=
 image that is ready to program? <br></div><div>Do I have to rebuild it on =
the E320?</div><div><br></div><div>Also, can you please comment if the FPGA=
 image of UHD 4.1 comes with the RFNoC Replay block? <br></div><div>What wo=
uld be the shortest path for me to get any UHD version on the E320 that has=
 the RFNoC replay block built-in without needing to rebuild the FPGA image =
by myself?</div><div><br></div><div>Thanks,</div><div>Ofer Saferman<br></di=
v></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--0000000000007bba0605c991fb63--

--===============2405505411844487375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2405505411844487375==--
