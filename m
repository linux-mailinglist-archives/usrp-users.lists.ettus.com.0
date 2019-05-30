Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C3E2E9E8
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2019 02:57:55 +0200 (CEST)
Received: from [::1] (port=36980 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hW9OA-0001cD-Gu; Wed, 29 May 2019 20:57:50 -0400
Received: from mail-io1-f46.google.com ([209.85.166.46]:38397)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.west@ettus.com>)
 id 1hW9O7-0001XV-3L
 for usrp-users@lists.ettus.com; Wed, 29 May 2019 20:57:47 -0400
Received: by mail-io1-f46.google.com with SMTP id x24so3579412ion.5
 for <usrp-users@lists.ettus.com>; Wed, 29 May 2019 17:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=c/byBFe9d59Ax3bJ/V4e8W67pEVkR+T6+LBmPF5M34Y=;
 b=buQLYYAA8AImp0kWmdKnzhL2v1cIEuQc9YP2kioH+MZ/Nz6BbffhNY1ewqlnXLwh9m
 g6k21BQxcowiHeWB5sCO09kL81hag9CcokGksOrGYia83ijPPiu+61Xv0vzxVHnWYhFD
 n0z9Crbcd0KZadB4gvcdZ36x4LTq4sdgwn4uws0Nc8QPa0IjqfOJ/r125UnV1Eh7jXxs
 zwN5LxsRNMP17MD6dFbuOt/X743FdjAVP23u/mbDzEWhVxsMTsBAHieL0NZr6+VMToU2
 QJAHG7UrgG/pqfFIh+NXiwGMKkf8RpfkGflcJziMBCg2suTCWRh+SLxe6dR2rtJdDZvQ
 N+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=c/byBFe9d59Ax3bJ/V4e8W67pEVkR+T6+LBmPF5M34Y=;
 b=Nal/25kjlpOiVWss/541S1d7/Hwwh5IZ00AthPgGqkeaYDld1v1UJ8oJBATiP7t8m+
 GywIiK18Cf9tuU4RkZzjz+1VnfgrYK/xbKfbSHLFOlLTIO2yDUk7PvVpqHWa95AvrCwc
 RYG1hOC4KIVOE5/1mO5ye2QPoVv2wUV+L5LHOE3Hk3QeeIx5dgCYF0vyxzKlDysB+K6r
 ajor/ZdeNtjemMbsFzLtaPfAV2tlxusBRFmUEgyxkMAxoIJlFzZOauXEdIVSwFIv2xkR
 /QqzK78bThTTd+YKgWZtaU5Ve2I9psWQmHlvzHRzMjnIQQcnoCLHVxLRv1+8pc1Kwphk
 EUGw==
X-Gm-Message-State: APjAAAU6H8OsO5aV+jKdBKAvYChYXWrPmOho/YhF6f/kFB1uDIQnLfwG
 RdYVE4FFz/VDYYwHZj6L2Ms6UM+70S6Q9eB4do/yc70EVimMFMyE
X-Google-Smtp-Source: APXvYqwtloi1oZVuoY7zgxFVZpG3+YIRP/nRY2YM+yFHnKfugGklnFSfYvA/TMPY/xSjiX1vH3qE22zBT2Z6D+k9f3M=
X-Received: by 2002:a6b:e702:: with SMTP id b2mr750606ioh.175.1559177826173;
 Wed, 29 May 2019 17:57:06 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 29 May 2019 17:56:55 -0700
Message-ID: <CAM4xKrqDfHewbrrUZpEVHK2m3U81tCvYy4nUPNSAMEqbur=5yg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 discuss-gnuradio@gnu.org
Subject: [USRP-users] [UHD] Announcing 3.14.1.0 Release Candidate 1
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
Content-Type: multipart/mixed; boundary="===============6393326775138856290=="
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

--===============6393326775138856290==
Content-Type: multipart/alternative; boundary="000000000000789fc8058a10607e"

--000000000000789fc8058a10607e
Content-Type: text/plain; charset="UTF-8"

The release candidate of UHD version 3.14.1.0 has been tagged and is
available for testing.  This ABI release includes several enhancements and
bug fixes including DPDK support on X300/X310 and a new bootloader for B2xx
devices to resolve device enumeration issues.  This release includes all
bug fixes and enhancements in the 3.14.0.0 release.

The tag for this release candidate:
https://github.com/EttusResearch/uhd/releases/tag/v3.14.1.0-rc1

There have been 34 commits since the last API release (3.14.0.0) which can
be viewed here:
https://github.com/EttusResearch/uhd/compare/v3.14.0.0...v3.14.1.0-rc1

Please report any bugs found on the UHD issue tracker:
http://github.com/EttusResearch/uhd/issues
* Please do not use the issue tracker for help or support.

Pull requests for direct code changes may be submitted to the UHD or FPGA
repositories:
http://github.com/EttusResearch/uhd/pulls
http://github.com/EttusResearch/fpga/pulls

CHANGELOG:
## 003.014.001.000
E320: Add support for rev E
X300: Add DPDK support
X300: add capability to flash NI-2974 FPGA
B200: Add bootloader for FX3 (fix for B2xx failing to enumerate)
TwinRX: Expose charge pump current for LO2
TwinRX: Add low spur mode for LO2
Device3: Constraint send/recv_frame_size based on down/upstream MTU
RFNoC: Search all nodes for tick rates
MPMD: Fix spurious reclaim call after unclaim
MPMD: Release resources on destruction
MPM: Add SW/HW compat
liberio: Release context holder on destruction of last liberio xport
GPSD: fix API for 'gps_read'
AD9361: Fix return values for tune and set_clock_rate
Logging: fix deadlock issue on Windows machines
Logging: Fix ANSI colour codes
Utils: Add X300/X310 reset utility
Docs: Improved Windows-related build instructions

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

Best regards,
Michael

--000000000000789fc8058a10607e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>The <span class=3D"gmail-m_2383088197461432=
612gmail-m_-6042520230464591433gmail-m_-5075393090210451856gmail-m_-7448758=
857138521704gmail-m_-1441069172208019445gmail-m_1339491808578219990gmail-m_=
-3462791978053401593gmail-il"><span class=3D"gmail-m_2383088197461432612gma=
il-m_-6042520230464591433gmail-m_-5075393090210451856gmail-m_-7448758857138=
521704gmail-m_-1441069172208019445gmail-m_1339491808578219990gmail-il"><spa=
n class=3D"gmail-m_2383088197461432612gmail-m_-6042520230464591433gmail-m_-=
5075393090210451856gmail-m_-7448758857138521704gmail-m_-1441069172208019445=
gmail-il"><span class=3D"gmail-m_2383088197461432612gmail-m_-60425202304645=
91433gmail-m_-5075393090210451856gmail-m_-7448758857138521704gmail-il"><spa=
n class=3D"gmail-m_2383088197461432612gmail-m_-6042520230464591433gmail-m_-=
5075393090210451856gmail-il">release</span></span></span></span></span> <sp=
an class=3D"gmail-m_2383088197461432612gmail-m_-6042520230464591433gmail-m_=
-5075393090210451856gmail-m_-7448758857138521704gmail-m_-144106917220801944=
5gmail-m_1339491808578219990gmail-m_-3462791978053401593gmail-il"><span cla=
ss=3D"gmail-m_2383088197461432612gmail-m_-6042520230464591433gmail-m_-50753=
93090210451856gmail-m_-7448758857138521704gmail-m_-1441069172208019445gmail=
-m_1339491808578219990gmail-il"><span class=3D"gmail-m_2383088197461432612g=
mail-m_-6042520230464591433gmail-m_-5075393090210451856gmail-m_-74487588571=
38521704gmail-m_-1441069172208019445gmail-il"><span class=3D"gmail-m_238308=
8197461432612gmail-m_-6042520230464591433gmail-m_-5075393090210451856gmail-=
m_-7448758857138521704gmail-il">candidate</span></span></span></span>
 of UHD version 3.14.1.0 has been tagged and is available for testing.=C2=
=A0=20
This ABI release includes several enhancements and bug fixes including DPDK=
 support on X300/X310 and a new bootloader for B2xx devices to resolve devi=
ce enumeration issues.=C2=A0 This
 release includes all bug fixes and enhancements in the 3.14.0.0 release.<b=
r></div><div><br></div>The tag for this <span class=3D"gmail-m_238308819746=
1432612gmail-m_-6042520230464591433gmail-m_-5075393090210451856gmail-m_-744=
8758857138521704gmail-m_-1441069172208019445gmail-m_1339491808578219990gmai=
l-m_-3462791978053401593gmail-il"><span class=3D"gmail-m_238308819746143261=
2gmail-m_-6042520230464591433gmail-m_-5075393090210451856gmail-m_-744875885=
7138521704gmail-m_-1441069172208019445gmail-m_1339491808578219990gmail-il">=
<span class=3D"gmail-m_2383088197461432612gmail-m_-6042520230464591433gmail=
-m_-5075393090210451856gmail-m_-7448758857138521704gmail-m_-144106917220801=
9445gmail-il"><span class=3D"gmail-m_2383088197461432612gmail-m_-6042520230=
464591433gmail-m_-5075393090210451856gmail-m_-7448758857138521704gmail-il">=
<span class=3D"gmail-m_2383088197461432612gmail-m_-6042520230464591433gmail=
-m_-5075393090210451856gmail-il">release candidate</span></span></span></sp=
an></span>:<br><a href=3D"https://github.com/EttusResearch/uhd/releases/tag=
/v3.14.1.0-rc1" target=3D"_blank">https://github.com/EttusResearch/uhd/rele=
ases/tag/v3.14.1.0-rc1</a><br><br></div>There have been 34 commits since th=
e last API release (3.14.0.0)<span class=3D"gmail-m_2383088197461432612gmai=
l-m_-6042520230464591433gmail-m_-5075393090210451856gmail-m_-74487588571385=
21704gmail-m_-1441069172208019445gmail-m_1339491808578219990gmail-m_-346279=
1978053401593gmail-il"><span class=3D"gmail-m_2383088197461432612gmail-m_-6=
042520230464591433gmail-m_-5075393090210451856gmail-m_-7448758857138521704g=
mail-m_-1441069172208019445gmail-m_1339491808578219990gmail-il"><span class=
=3D"gmail-m_2383088197461432612gmail-m_-6042520230464591433gmail-m_-5075393=
090210451856gmail-m_-7448758857138521704gmail-m_-1441069172208019445gmail-i=
l"><span class=3D"gmail-m_2383088197461432612gmail-m_-6042520230464591433gm=
ail-m_-5075393090210451856gmail-m_-7448758857138521704gmail-il"><span class=
=3D"gmail-m_2383088197461432612gmail-m_-6042520230464591433gmail-m_-5075393=
090210451856gmail-il"></span></span></span></span></span> which can be view=
ed here:<br><div><a href=3D"https://github.com/EttusResearch/uhd/compare/v3=
.14.0.0...v3.14.1.0-rc1" target=3D"_blank">https://github.com/EttusResearch=
/uhd/compare/v3.14.0.0...v3.14.1.0-rc1</a></div><div><br></div><div><div>Pl=
ease report any bugs found on the UHD issue tracker:</div><div><a href=3D"h=
ttp://github.com/EttusResearch/uhd/issues" target=3D"_blank">http://github.=
com/EttusResearch/uhd/issues</a><br></div><div>* Please do not use the issu=
e tracker for help or support.<br></div><div><br></div><div>Pull requests f=
or direct code changes may be submitted to the UHD or FPGA repositories:</d=
iv><div><div><a href=3D"http://github.com/EttusResearch/uhd/pulls" target=
=3D"_blank">http://github.com/EttusResearch/uhd/pulls</a><div><div><a href=
=3D"http://github.com/EttusResearch/fpga/pulls" target=3D"_blank">http://gi=
thub.com/EttusResearch/fpga/pulls</a></div></div></div></div></div><div><br=
></div><div>CHANGELOG:</div></div><div>## 003.014.001.000<br>E320: Add supp=
ort for rev E<br>X300: Add DPDK support<br>X300: add capability to flash NI=
-2974 FPGA<br>B200: Add bootloader for FX3 (fix for B2xx failing to enumera=
te)<br>TwinRX: Expose charge pump current for LO2<br>TwinRX: Add low spur m=
ode for LO2<br>Device3: Constraint send/recv_frame_size based on down/upstr=
eam MTU<br>RFNoC: Search all nodes for tick rates<br>MPMD: Fix spurious rec=
laim call after unclaim<br>MPMD: Release resources on destruction<br>MPM: A=
dd SW/HW compat<br>liberio: Release context holder on destruction of last l=
iberio xport<br>GPSD: fix API for &#39;gps_read&#39;<br>AD9361: Fix return =
values for tune and set_clock_rate<br>Logging: fix deadlock issue on Window=
s machines<br>Logging: Fix ANSI colour codes<br>Utils: Add X300/X310 reset =
utility<br>Docs: Improved Windows-related build instructions</div><div><br>=
</div><div><div><div><div>As always, we at Ettus Research would like to tha=
nk all of the UHD users=20
in the open source SDR community.=C2=A0 This release contains commits from =
users in the community that submitted pull requests
against the <a href=3D"https://github.com/EttusResearch/uhd" target=3D"_bla=
nk">UHD</a> and <a href=3D"https://github.com/EttusResearch/fpga" target=3D=
"_blank">FPGA</a>
 repositories as well as many commits that are a direct result of issues re=
ported back to us by users like you
through the <a href=3D"https://github.com/EttusResearch/uhd/issues" target=
=3D"_blank">UHD</a> and <a href=3D"https://github.com/EttusResearch/fpga/is=
sues" target=3D"_blank">FPGA</a>
  issue trackers, the <a href=3D"http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com" target=3D"_blank">USRP-users mailing list</a>, an=
d <a href=3D"mailto:support@ettus.com" target=3D"_blank">Ettus support</a>.=
=C2=A0 You have all helped contribute to the continued improvement of
 UHD.=C2=A0 Thank you!</div></div><div><br></div><div>Best regards,</div><d=
iv>Michael</div></div></div></div>

--000000000000789fc8058a10607e--


--===============6393326775138856290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6393326775138856290==--

