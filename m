Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E9C2F02DD
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jan 2021 19:30:12 +0100 (CET)
Received: from [::1] (port=37398 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kyJ04-0003fY-If; Sat, 09 Jan 2021 13:30:08 -0500
Received: from postman.dtnt.info ([62.219.91.51]:46110)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1kyJ00-0003cO-HW
 for usrp-users@lists.ettus.com; Sat, 09 Jan 2021 13:30:04 -0500
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id 0751746177
 for <usrp-users@lists.ettus.com>; Sat,  9 Jan 2021 20:27:14 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id 586D09FF1E
 for <usrp-users@lists.ettus.com>; Sat,  9 Jan 2021 20:27:14 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 1oqGwvaSuGYX for <usrp-users@lists.ettus.com>;
 Sat,  9 Jan 2021 20:27:13 +0200 (IST)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 by o.dtnt.email (Postfix) with ESMTPSA id 5110F9F992
 for <usrp-users@lists.ettus.com>; Sat,  9 Jan 2021 20:27:13 +0200 (IST)
Received: by mail-oi1-f177.google.com with SMTP id q205so15366147oig.13
 for <usrp-users@lists.ettus.com>; Sat, 09 Jan 2021 10:27:13 -0800 (PST)
X-Gm-Message-State: AOAM531cTfv+g9z3n5uLGRU6B2bGEH5cAVY4x0J2FMXtn9TxlTlG2/Pk
 T093SF6E3sPOkNHvtJrJX9BMcQm+9VcFcjHNBWs=
X-Google-Smtp-Source: ABdhPJxyrbGfHdAnYiyJZYWy7+DRHjB9r6xc5SEhTlWcrlTzRRav74ceT412zIBePCdpERfdW7Le4OrLtzRVNFUjgmo=
X-Received: by 2002:a05:6808:8f0:: with SMTP id
 d16mr5769760oic.47.1610216831361; 
 Sat, 09 Jan 2021 10:27:11 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 9 Jan 2021 20:27:00 +0200
X-Gmail-Original-Message-ID: <CACDReSyUpdMbXX690+DMMdvhqVX55bPn6s3S_dVdcoQ6++LUiA@mail.gmail.com>
Message-ID: <CACDReSyUpdMbXX690+DMMdvhqVX55bPn6s3S_dVdcoQ6++LUiA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 0751746177.A033A
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: [USRP-users] Can E320 support RFNoC Replay block?
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
Content-Type: multipart/mixed; boundary="===============8588166896285701182=="
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

--===============8588166896285701182==
Content-Type: multipart/alternative; boundary="0000000000003ea78905b87bd2eb"

--0000000000003ea78905b87bd2eb
Content-Type: text/plain; charset="UTF-8"

Hello,

Looking at the FPGA code on the repository for E320 I see that the replay
block was previously supported and reverted to a FIFO a few months ago.
Is it not working properly? Can I get a previous version of the FPGA
firmware and use the replay block on a E320?

Regards,
Ofer Saferman

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--0000000000003ea78905b87bd2eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>Looking at the FPGA c=
ode on the repository for E320 I see that the replay block was previously s=
upported and reverted to a FIFO a few months ago.</div><div>Is it not worki=
ng properly? Can I get a previous version of the FPGA firmware and use the =
replay block on a E320?</div><div><br></div><div>Regards,</div><div>Ofer Sa=
ferman<br></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--0000000000003ea78905b87bd2eb--


--===============8588166896285701182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8588166896285701182==--

