Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A41114144
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2019 14:13:38 +0100 (CET)
Received: from [::1] (port=36362 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icqwo-0002FY-Ql; Thu, 05 Dec 2019 08:13:34 -0500
Received: from mail-qt1-f175.google.com ([209.85.160.175]:40119)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wddias@gmail.com>) id 1icqwm-0002BK-BU
 for usrp-users@lists.ettus.com; Thu, 05 Dec 2019 08:13:32 -0500
Received: by mail-qt1-f175.google.com with SMTP id z22so3457061qto.7
 for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2019 05:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=lFRQq4bXbxDpGNGUScxnebQFOSovWokwWJIAjfC16uc=;
 b=rcpYDPIlfP5Wxd0fK7LeUBSfQYWSusMRWv7y4qvw4I4A9Rv6BGnuBhIt15FK0TS9EG
 F4OcgigrvIeD0MuGyHZt4zLU67qmSI2bh0QGLAAeqMTG7uNMjTH8zp8re5txwMarbeXa
 Qm0DS6nc+FwYv6cvCJXEuKijtYSK/1vjTA4Ex1mH8zSus+5FOr9KVQGSw/xoUhNwVZp7
 +tU7eZw26W7yX6oFcA7LbB9Z5GhbHCsdZqx0/Yx2Q4dHvV0xAWkLMOoADWCLF+oPl4x9
 APTNwcqR2MLcMx64R6QKnFC7pknNYVmsDg3b3l5pPlFaRikw5BjYFfEPqwnvlfudxhNK
 uwOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lFRQq4bXbxDpGNGUScxnebQFOSovWokwWJIAjfC16uc=;
 b=SgBuSvDCyGtN7LuvSu2t5yPocGYLCryySHDg7f5AB8PyUebF6ntXq4TdDVbF8mAXrL
 X0V3X2GL/yUmULNbcH3LDrhMb7UAG2x40zK04RQFhuZFaAx+WiIahBodLI5B+GsgZVtg
 UfsFYskaUFc7PPTp2VNzKwvUPKRq2oREqsc9YhASejubkgHwBVLQpB1mCVzYjf0Z+R/m
 59qbdpt7Yz/caU5gR5Nh2yWbm/wVGNhQhdHpjpoBRXPXE78Zlj83Q8MdnEg0RXJfB3p6
 fdq86/oBbbca3s4psssZMkyeWYHIwoMyT35yYWrjAoS828JOxtE0L8fU++NOLFcBTwNo
 qYUA==
X-Gm-Message-State: APjAAAVkOay7sBAbBjgaM1TrUdH4EZWEufhFldRAMdvrFJ1Fh07E3hYV
 LqilHM1UqOEXs6ki9jRT/yEp1HNeIiWYu53sKKd/8g==
X-Google-Smtp-Source: APXvYqx5aXfyMIVKkOhVD0cq3KIduJ0ktgeh3J0iKEIt2ZpBuDcVgbxYYZid1UfOukkvevBYc1clYDsmG/jxiIZhtfw=
X-Received: by 2002:aed:3ae8:: with SMTP id o95mr7528527qte.277.1575551571314; 
 Thu, 05 Dec 2019 05:12:51 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 5 Dec 2019 10:12:40 -0300
Message-ID: <CALSKgPzX3DnB8iu4OMqZzht-iZ+M4754vUjraPc6vMryG707_Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] USRP X3x0 FPGA source (LV)
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
From: Wheberth Damascena Dias via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wheberth Damascena Dias <wheberth@gmail.com>
Content-Type: multipart/mixed; boundary="===============0338894813436382659=="
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

--===============0338894813436382659==
Content-Type: multipart/alternative; boundary="000000000000bbcebc0598f4af03"

--000000000000bbcebc0598f4af03
Content-Type: text/plain; charset="UTF-8"

Hi All,

Looking at the bitfile "usrp_x310_fpga_HG.lvbitx", as the name suggests, it
looks like it came from LabVIEW/LabVIEW Comms. It is possible even to see
the top ..vi filename which is "USRP_X3x0_Top.vi".
Although I wasn't able to find the LabVIEW source project for this bitfile.
Is this source available anywhere?
I am asking, because we have to include some custom code (a digital
baseband pre-distorter) to run on the USRP FPGA. As we already have this
implemented in LabVIEW it would save us a lot of time comparing to going
through the RFNoC route.

Thank you in advance,
Best Regards
-- 
*Wheberth Damascena Dias*
_______________ _____ _____ __ ___ __ _ _ _  _
http://www.linkedin.com/in/wheberth
e-mail:wheberth@gmail.com

--000000000000bbcebc0598f4af03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br clear=3D"all"></div><div>Hi All,</div><div><br></=
div><div></div><div></div><div>Looking at the bitfile &quot;usrp_x310_fpga_=
HG.lvbitx&quot;, as the name suggests, it looks like it came from LabVIEW/L=
abVIEW Comms. It is possible even to see the top ..vi filename which is &qu=
ot;USRP_X3x0_Top.vi&quot;.</div><div>Although I wasn&#39;t able to find the=
 LabVIEW source project for this bitfile. Is this source available anywhere=
?</div><div></div><div>I am asking, because we have to include some custom =
code (a digital baseband pre-distorter) to run on the USRP FPGA. As we alre=
ady have this implemented in LabVIEW it would save us a lot of time compari=
ng to going through the RFNoC route.<br></div><div><br></div><div>Thank you=
 in advance,<br></div><div>Best Regards</div><div></div><div>-- <br><div di=
r=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><span st=
yle=3D"font-size:12.8000001907349px"><b>Wheberth Damascena Dias</b></span><=
br></div><div><span style=3D"color:rgb(80,0,80);font-size:12.8000001907349p=
x">_______________ _____ _____ __ ___ __ _ _ _=C2=A0 _=C2=A0</span><br><div=
><a href=3D"http://www.linkedin.com/in/wheberth" target=3D"_blank">http://w=
ww.linkedin.com/in/wheberth</a></div><div><a href=3D"mailto:e-mail%3Awheber=
th@gmail.com" target=3D"_blank">e-mail:wheberth@gmail.com</a></div><div><di=
v><div><br></div></div></div></div></div></div></div></div>

--000000000000bbcebc0598f4af03--


--===============0338894813436382659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0338894813436382659==--

