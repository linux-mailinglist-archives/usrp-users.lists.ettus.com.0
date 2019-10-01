Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6ABC3517
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2019 15:02:28 +0200 (CEST)
Received: from [::1] (port=51342 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFHnO-0002se-UI; Tue, 01 Oct 2019 09:02:26 -0400
Received: from mail-io1-f51.google.com ([209.85.166.51]:36026)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.west@ettus.com>)
 id 1iFHnL-0002kt-Ak
 for usrp-users@lists.ettus.com; Tue, 01 Oct 2019 09:02:23 -0400
Received: by mail-io1-f51.google.com with SMTP id b136so47631100iof.3
 for <usrp-users@lists.ettus.com>; Tue, 01 Oct 2019 06:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=5mIHfQm2sJ2Ykemr8Zjkc+UMfRqddNozv0ZBFI4TBmY=;
 b=AZNdWiP+XQ+UqoSq5qKYEv08fhQcBhsf/LTPK4SDnVjaAQPnR45zO5/N+dfoO8a64b
 OJ1pnfBFrsmE/8KgxXe0/vaPQydAicn1J/uTW/tUL2rx0jCLmzL1GTPCwcVrXRQq3YV0
 SspViQsbsenHdVDl9TDyXRxXRG2wKvxJhIi/K/7nCfRxfzWiX74yFO0dPEo/H47KU8TU
 O+mgXn2M2LQufqIjI66n5lst1kMvm7TD7uLsW0yom/Uc1WFnn5LBvgr5LL5bmePci3Cu
 BqxrelEIjuI8XBFFkyc//AqlLTBrRe092o07sMAGXYjXXZB+JQniNH1pF3m0C+liy0Ml
 2ncA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=5mIHfQm2sJ2Ykemr8Zjkc+UMfRqddNozv0ZBFI4TBmY=;
 b=N6oi6hzEkCS45HxeeaX2WZAGnko+igp3eotZ0k1IR2r+3yrJ6xeGU+1us1QlpElOv1
 9lSxhc5D1MJjSj465WEgxFaD6LjBZZIjc4GJukbhzRwy2KA8CSLd5hNFFVIlKA5dMIcG
 uvA7ibF/D+y9HLVjYmpoMYKn93wZLwSLuuseWc8WNGh4D3b0uKYCPcAspN2iazWgSG8n
 wwEQgMt+STVGFWXdxBFg6hPDZ2kX6WIq6yYYlg1ZMyz+kml9WzTW3Z77gFP2z4aC8JoF
 MiZvC5iyXFRgh6bbFOMT3x+gUDv1o4UJlUOqvnEf8KnIlw/gBfIJjmdhI+pFZa6OumdV
 DQmQ==
X-Gm-Message-State: APjAAAVqfJ6gkMultZ0QkBDsYsDuVwgyRChLLaAhmVvf7oxd7ADKFJwG
 No2Y80xUqUrgwCRVlQnNsCc0bSq3pzzqThvbbOzY/GRX
X-Google-Smtp-Source: APXvYqx/j0Ds/FVn2o/JeB+4gHECC/My0NFLrIuWp4Y+1tm8pJ/k/EBSGZsGewRKNPq9PnAsULJg3BsuTdQO766I9dE=
X-Received: by 2002:a92:5e09:: with SMTP id s9mr27285488ilb.139.1569934902501; 
 Tue, 01 Oct 2019 06:01:42 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 1 Oct 2019 08:01:31 -0500
Message-ID: <CAM4xKrrrT81QwyUdoZNLDZEfDAwtxWsrP7rbpxhOZ-yJsunv6A@mail.gmail.com>
To: discuss-gnuradio@gnu.org, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] [UHD] 3.14.1.1 Release Announcement
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
From: Michael West via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael West <michael.west@ettus.com>
Content-Type: multipart/mixed; boundary="===============4284433521220317000=="
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

--===============4284433521220317000==
Content-Type: multipart/alternative; boundary="0000000000002f3ce40593d8f459"

--0000000000002f3ce40593d8f459
Content-Type: text/plain; charset="UTF-8"

UHD 3.14.1.1 is now available!  This is a patch release.  It is API
compatible with 3.14.0.0 and ABI compatible with 3.14.1.0.  This release
includes several bug fixes.

Installers for Windows and Fedora are available here:
http://files.ettus.com/binaries/uhd/uhd_003.014.001.001-release/

The PPA for Ubuntu can be found here:
https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd

The tag for this release is located here:
https://github.com/EttusResearch/uhd/releases/tag/v3.14.1.1

There have been 67 commits since the last API release which can be viewed
here:
https://github.com/EttusResearch/uhd/compare/v3.14.0.0...v3.14.1.1

Please report any bugs found on the UHD issue tracker:
http://github.com/EttusResearch/uhd/issues
* Please do not use the issue tracker for help or support.

Pull requests for direct code changes can be submitted to the UHD or FPGA
repositories:
http://github.com/EttusResearch/uhd/pulls
http://github.com/EttusResearch/fpga/pulls

As always, we at Ettus Research would like to thank all of the UHD users in
the open source SDR community.  This release contains commits from users in
the community that submitted pull requests against the UHD
<https://github.com/EttusResearch/uhd> and FPGA
<https://github.com/EttusResearch/fpga> repositories as well as many
commits that are a direct result of issues reported back to us by users
like you through the UHD <https://github.com/EttusResearch/uhd/issues> and
FPGA <https://github.com/EttusResearch/fpga/issues> issue trackers,
the USRP-users
mailing list
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, and Ettus
support <support@ettus.com>.  You have all helped contribute to the
continued improvement of UHD.  Thank you!

CHANGELOG:
## 003.014.001.001
Device3: latch n on m in axi_rate_change in DUC/DDC
Device3: UART: fix TX <-> RX, FIFO size as parameter
Device3: Restore default buffer sizes for MPMD UDP
RFNoC: Fix off by one error in window.v
E320: fix time source clobbering ref source
B200: Add command to query bootloader status
RFNoC: fix multidevice graph connections
MPMD: Fix corner case in MPM device discovery
MPM: fixed mboard_max_revision value (MPM compat check failures)
MPM: Fix version string for logger
Docs: x300: update docs for multiple timed commands
Docs: Fix Doxygen warnings due to spurious backslashes
Docs: RFNoC: Fix Doxygen warning due to undoc'd parameter
Docs: Adjust FPGA functional verification tests
Docs: Fix MPM cmake command for E320
RFNoC: Re-enable flow ctrl for blocks on same xbar
Tools: Fix build issues with kitchen_sink
cmake: Add UHD_COMPONENT variable

Best regards,
Michael

--0000000000002f3ce40593d8f459
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>UHD=C2=A0<span>3.14.1.1</span> is
 now available!=C2=A0 This is a patch release.=C2=A0 It is API compatible w=
ith=20
3.14.0.0 and ABI compatible with 3.14.1.0.=C2=A0 This release includes seve=
ral bug fixes.</div><div><br>Installers for Windows and Fedora are availabl=
e here:<br><a href=3D"http://files.ettus.com/binaries/uhd/uhd_003.014.001.0=
01-release/" target=3D"_blank">http://files.ettus.com/binaries/uhd/uhd_003.=
014.001.001-release/</a><br><br>The PPA for Ubuntu can be found here:<br><a=
 href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd" target=
=3D"_blank">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a><di=
v><br>The tag for this=C2=A0<span><span><span>release</span></span></span>=
=C2=A0is located here:<br><a href=3D"https://github.com/EttusResearch/uhd/r=
eleases/tag/v3.14.1.1" target=3D"_blank">https://github.com/EttusResearch/u=
hd/releases/tag/v3.14.1.1</a></div></div></div></div><div><div><div><br></d=
iv>There have been 67 commits since the last API=C2=A0<span><span>release</=
span></span>=C2=A0which can be viewed here:<br><a href=3D"https://github.co=
m/EttusResearch/uhd/compare/v3.14.0.0...v3.14.1.1" target=3D"_blank">https:=
//github.com/EttusResearch/uhd/compare/v3.14.0.0...v3.14.1.1</a><br><div><b=
r></div><div><div>Please report any bugs found on the UHD issue tracker:</d=
iv><div><a href=3D"http://github.com/EttusResearch/uhd/issues" target=3D"_b=
lank">http://github.com/EttusResearch/uhd/issues</a><br></div><div>* Please=
 do not use the issue tracker for help or support.<br></div><div><br></div>=
<div>Pull requests for direct code changes can be submitted to the UHD or F=
PGA repositories:</div><div><div><a href=3D"http://github.com/EttusResearch=
/uhd/pulls" target=3D"_blank">http://github.com/EttusResearch/uhd/pulls</a>=
<div><div><a href=3D"http://github.com/EttusResearch/fpga/pulls" target=3D"=
_blank">http://github.com/EttusResearch/fpga/pulls</a></div></div></div></d=
iv></div></div><div><br></div><div><div>As
 always, we at Ettus Research would like to thank all of the UHD users=20
in the open source SDR community.=C2=A0 This release contains commits from=
=20
users in the community that submitted pull requests against the=C2=A0<a hre=
f=3D"https://github.com/EttusResearch/uhd" target=3D"_blank">UHD</a>=C2=A0a=
nd=C2=A0<a href=3D"https://github.com/EttusResearch/fpga" target=3D"_blank"=
>FPGA</a>=C2=A0repositories as well as many commits that are a direct resul=
t of issues reported back to us by users like you through the=C2=A0<a href=
=3D"https://github.com/EttusResearch/uhd/issues" target=3D"_blank">UHD</a>=
=C2=A0and=C2=A0<a href=3D"https://github.com/EttusResearch/fpga/issues" tar=
get=3D"_blank">FPGA</a>=C2=A0issue trackers, the=C2=A0<a href=3D"http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank"=
>USRP-users mailing list</a>, and=C2=A0<a href=3D"mailto:support@ettus.com"=
 target=3D"_blank">Ettus support</a>.=C2=A0 You have all helped contribute =
to the continued improvement of UHD.=C2=A0 Thank you!</div></div><div><br><=
/div><div>CHANGELOG:</div><div>## 003.014.001.001<br>Device3: latch n on m =
in axi_rate_change in DUC/DDC<br>Device3: UART: fix TX &lt;-&gt; RX, FIFO s=
ize as parameter<br>Device3: Restore default buffer sizes for MPMD UDP<br>R=
FNoC: Fix off by one error in window.v<br>E320: fix time source clobbering =
ref source<br>B200: Add command to query bootloader status<br>RFNoC: fix mu=
ltidevice graph connections<br>MPMD: Fix corner case in MPM device discover=
y<br>MPM: fixed mboard_max_revision value (MPM compat check failures)<br>MP=
M: Fix version string for logger<br>Docs: x300: update docs for multiple ti=
med commands<br>Docs: Fix Doxygen warnings due to spurious backslashes<br>D=
ocs: RFNoC: Fix Doxygen warning due to undoc&#39;d parameter<br>Docs: Adjus=
t FPGA functional verification tests<br>Docs: Fix MPM cmake command for E32=
0<br>RFNoC: Re-enable flow ctrl for blocks on same xbar<br>Tools: Fix build=
 issues with kitchen_sink<br>cmake: Add UHD_COMPONENT variable</div><div><b=
r></div><div>Best regards,</div><div>Michael<br></div></div></div>

--0000000000002f3ce40593d8f459--


--===============4284433521220317000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4284433521220317000==--

