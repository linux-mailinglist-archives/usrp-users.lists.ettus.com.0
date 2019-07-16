Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C47C86AD9F
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jul 2019 19:28:13 +0200 (CEST)
Received: from [::1] (port=35142 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnRFM-0005H6-4h; Tue, 16 Jul 2019 13:28:12 -0400
Received: from mail-vk1-f169.google.com ([209.85.221.169]:38507)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <smullin2@nd.edu>) id 1hnRFH-0005D0-VA
 for usrp-users@lists.ettus.com; Tue, 16 Jul 2019 13:28:07 -0400
Received: by mail-vk1-f169.google.com with SMTP id f68so4340752vkf.5
 for <usrp-users@lists.ettus.com>; Tue, 16 Jul 2019 10:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=dpUB59LGJDnt62AtFmvf30Iz3JHvyPWHaDhRlGIEVY0=;
 b=chE+WbvF8iGznNKsu1kqP1IjH4qGg1ZHDPTOl/YnFS0l7edSvytKXreYaOis/pVInN
 W76F0GoYxD8GGJSWKAtzOalu5j5V5uLh9TA3PZ4y38NBGKdi9GcZo2kQLoKq9S7wlz/O
 5Q2SQotWsLYofKCpy44p+HtvEKOZChOsIDRiC+S24/V9E5Uj2DACfTyMMllXZki581/h
 COOvIKUNJyNwJ3KvxIZdbZg9xE+H17LWeZs2WTmV4F4W52ZU854KtcxrxNDjkmqJApjH
 geOxi8Tz5lYc0K3H6GFRqs4S2itohLY1uNo86qbfZ+cqnWklTbVJUjoVLXns9QAAQ5jt
 zajQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=dpUB59LGJDnt62AtFmvf30Iz3JHvyPWHaDhRlGIEVY0=;
 b=uiL7rDEueSYN5t7nDWI9cicF9iudDTQxNTQnRd0YTyoittjpyFkv+GZD20IhUM24v2
 SMCi2dBL0zz+B2GwyQbSE2aSYrcm4BgEgGRh5DCzP59gtjaM3DL+RJK+I7n8DiQoNAbT
 2RKxdTeHcuPcjAPd9lQy1PBZpO9Wmo7PuautFAyb3BCUmPMvUgBDwguPhloQvXNQ3tj1
 86GgL1YOZ0g3HVvGV6iJvpHavzd2JbN3fxDpzks/MQVEnEVgvCcllj7jvCeoH1rY7MSc
 yTyLZ9qrptHAHIcITORtQvACZC36g9LB2De/GY8HBmbX9WEhujxTTj0ZmyGHqV2o+qMa
 K9sA==
X-Gm-Message-State: APjAAAVvmSZpgoC470R1tz8K1uTMJsYujGQKkCzdtnw2sF7qhe+rUcWE
 I009T0dkgO1U61NolCFzgVEgLwTJpoHIKWEfE+68VQcX
X-Google-Smtp-Source: APXvYqzhlShSsvx3kDS2ObN08bsqyau6RwKGOCDxkSgCgqAbLqCk27iJmSYSxnpSXOVoseUZA/RUeny/lPWA+ZgmBgg=
X-Received: by 2002:a1f:160a:: with SMTP id 10mr3590110vkw.43.1563298046858;
 Tue, 16 Jul 2019 10:27:26 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 16 Jul 2019 13:27:16 -0400
Message-ID: <CALVKaGf-6NCbGO2ACQ+Oaz_4GYgpMPOU=BsAe5AcigmzdH7w9w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Noc_block_Schmidl_cox Timing error
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
From: Scott Mullin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Scott Mullin <smullin2@nd.edu>
Content-Type: multipart/mixed; boundary="===============9029805852180948195=="
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

--===============9029805852180948195==
Content-Type: multipart/alternative; boundary="000000000000c30a5b058dcfb0d2"

--000000000000c30a5b058dcfb0d2
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to use the schmidl_cox noc block but when I build an fpga image
for an x310 with uhd_image_builder I get a timing error.  I have tried
building an fpga image with only one CE, the scmidl_cox noc block, and it
still gives me a timing error, so its not due to resource utilization,
which is when I typically get a timing error.

Has anyone else had this issue? Any help would be appreciated.

-- 
Scott Mullin

--000000000000c30a5b058dcfb0d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am trying to use th=
e schmidl_cox noc block but when I build an fpga image for an x310 with uhd=
_image_builder I get a timing error.=C2=A0 I have tried building an fpga im=
age with only one CE, the scmidl_cox noc block, and it still gives me a tim=
ing error, so its not due to resource utilization, which is when I typicall=
y get a timing error.=C2=A0 <br></div><div><br></div><div>Has anyone else h=
ad this issue? Any help would be appreciated.</div><div></div><br>-- <br><d=
iv dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"=
><div dir=3D"ltr"><div style=3D"font-size:small">Scott Mullin</div><br></di=
v></div></div>

--000000000000c30a5b058dcfb0d2--


--===============9029805852180948195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9029805852180948195==--

