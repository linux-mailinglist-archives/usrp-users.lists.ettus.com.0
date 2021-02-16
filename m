Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FEE31C6E1
	for <lists+usrp-users@lfdr.de>; Tue, 16 Feb 2021 08:35:18 +0100 (CET)
Received: from [::1] (port=47074 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBut4-0004lE-Tj; Tue, 16 Feb 2021 02:35:10 -0500
Received: from postman.dtnt.info ([62.219.91.51]:57908)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1lBut0-0004dP-VV
 for usrp-users@lists.ettus.com; Tue, 16 Feb 2021 02:35:07 -0500
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id EF28042F83
 for <usrp-users@lists.ettus.com>; Tue, 16 Feb 2021 09:34:01 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id DDEAD9FB0E
 for <usrp-users@lists.ettus.com>; Tue, 16 Feb 2021 09:34:01 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id N1piMWAytkCn for <usrp-users@lists.ettus.com>;
 Tue, 16 Feb 2021 09:34:01 +0200 (IST)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50]) by o.dtnt.email (Postfix) with ESMTPSA id BCC989F94A
 for <usrp-users@lists.ettus.com>; Tue, 16 Feb 2021 09:34:00 +0200 (IST)
Received: by mail-ot1-f50.google.com with SMTP id q4so8226435otm.9
 for <usrp-users@lists.ettus.com>; Mon, 15 Feb 2021 23:34:00 -0800 (PST)
X-Gm-Message-State: AOAM533q/z+cfIRgS5QTDFTAaYBtD546f2NG5t5jAiTucA1cOxlfsHpM
 zZfknbHc6/2CLe/tk7HMBWe+NI7estmCpJ5Bc3M=
X-Google-Smtp-Source: ABdhPJyD8FNyvPk/qaqYAbYgUk+2/5yXrcDVSrytp1Gn5eAuIMcxHjgXjyju+G6YPsIGu61qgo+vyakzU5EiisRbmzo=
X-Received: by 2002:a9d:411b:: with SMTP id o27mr13961023ote.0.1613460838645; 
 Mon, 15 Feb 2021 23:33:58 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 16 Feb 2021 09:33:47 +0200
X-Gmail-Original-Message-ID: <CACDReSwOo22jYHsz3fu38yqH+GP1MJjnRt1cUFsFPheyd3c=Hw@mail.gmail.com>
Message-ID: <CACDReSwOo22jYHsz3fu38yqH+GP1MJjnRt1cUFsFPheyd3c=Hw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: EF28042F83.A3533
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: [USRP-users] Getting sensor data using device3 usrp on E310
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
From: Ofer Saferman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ofer Saferman <ofer@navigicom.com>
Content-Type: multipart/mixed; boundary="===============5143832957154087591=="
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

--===============5143832957154087591==
Content-Type: multipart/alternative; boundary="0000000000002581be05bb6f209e"

--0000000000002581be05bb6f209e
Content-Type: text/plain; charset="UTF-8"

Hello,

I would like to access sensor data like "gps_time",
"ref_locked","gps_locked" using a USRP device defined as
"uhd::device3::sptr usrp" on a E310 unit.
All the examples are for USRP devices defined as
"uhd::usrp::multi_usrp::sptr usrp".

I searched the documentation and tried all possible combinations also using
the "uhd::rfnoc::radio_ctrl::sptr" object without any success.
I can see the method exists for multi_usrp and mb_controller objects. I
know that the mb_controller is somewhere accessible either through
radio_ctrl object or the device3 object but I don't know how to get to it.

Regards,
Ofer Saferman

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--0000000000002581be05bb6f209e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I would like to acces=
s sensor data like &quot;gps_time&quot;, &quot;ref_locked&quot;,&quot;gps_l=
ocked&quot; using a USRP device defined as &quot;uhd::device3::sptr usrp&qu=
ot; on a E310 unit.<br></div><div>All the examples are for USRP devices def=
ined as &quot;uhd::usrp::multi_usrp::sptr usrp&quot;.</div><div><br></div><=
div>I searched the documentation and tried all possible combinations also u=
sing the &quot;uhd::rfnoc::radio_ctrl::sptr&quot; object without any succes=
s.</div><div>I can see the method exists for multi_usrp and mb_controller o=
bjects. I know that the mb_controller is somewhere accessible either throug=
h radio_ctrl object or the device3 object but I don&#39;t know how to get t=
o it.</div><div><br></div><div>Regards,</div><div>Ofer Saferman<br> </div><=
/div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--0000000000002581be05bb6f209e--


--===============5143832957154087591==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5143832957154087591==--

