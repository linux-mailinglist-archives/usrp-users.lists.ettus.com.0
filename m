Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6598770758
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 19:53:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79BDD383FCC
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 13:53:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691171589; bh=ihFejVZSOOdNB86ygAz8fFr0OSfBQfynHMAbpXpPglA=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=RsD1jfEYNUuNdPD0xU9KhQAbozV8VQPFyxwpxTZbaEqoS1XWj8nofcurFvMmPfsr9
	 7rW6snGwvNEwjwdr4E4nbufHvEgQKmJ1ftazakcdBhd2aZtFEbB+aOEnoQZK6BvvZ9
	 qQaLR3F9TwJRJIjg4ZMIqlq7/QSAKZROwQ7mavuFdX+qbpW1Y/s5FXymCP8m671wNB
	 Btu6Y7OLGgen1nGLlV+Hgg1tKpW48pvSPb2P+D81Wp/Oc+Yag5nXtA3tVPr1WX1h7u
	 ripcPv4TFzDSrHwZyqzp/Zt7enrSmLeVqdF2IYbAkCMRTBJxnKX21JZAswTzoQ8sQl
	 2bqwoxXMeLiHA==
Received: from rn-mailsvcp-mx-lapp03.apple.com (rn-mailsvcp-mx-lapp03.apple.com [17.179.253.24])
	by mm2.emwd.com (Postfix) with ESMTPS id EC1DB383FCC
	for <usrp-users@lists.ettus.com>; Fri,  4 Aug 2023 13:52:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=apple.com header.i=@apple.com header.b="mX26yN3W";
	dkim-atps=neutral
Received: from rn-mailsvcp-mta-lapp04.rno.apple.com
 (rn-mailsvcp-mta-lapp04.rno.apple.com [10.225.203.152])
 by rn-mailsvcp-mx-lapp03.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPS id <0RYV00XQUOBSGJ20@rn-mailsvcp-mx-lapp03.rno.apple.com>
 for usrp-users@lists.ettus.com; Fri, 04 Aug 2023 10:52:55 -0700 (PDT)
X-Proofpoint-ORIG-GUID: OhBkqTOHy8rT1lr_nE6q6QKysXH0TzW2
X-Proofpoint-GUID: OhBkqTOHy8rT1lr_nE6q6QKysXH0TzW2
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.591,18.0.957
 definitions=2023-08-04_18:2023-08-02,2023-08-04 signatures=0
X-Proofpoint-Spam-Details: rule=interactive_user_notspam
 policy=interactive_user score=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 adultscore=0 mlxlogscore=937 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2306200000
 definitions=main-2308040159
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com; h=from :
 content-type : mime-version : subject : message-id : date : to; s=20180706;
 bh=xuXoNuS+k5Jpfj0E10JKEHhZae4fLBT4RE5WfJ2KiKg=;
 b=mX26yN3WsKr3NulK2lDEj4vvGkppb2hLpL2T+cIXM3zGLaV1KxX49R2gxS6c2phsH1IB
 eTclAZ+jiolkFG0lPvB9oemJrwbzxCeWKjduza6iuX5EVA+EjeE1pvfvacUZPypEyLcS
 8F0PhuSIH1NN/q11ObE6bZ2sCMUgS3wX6e9MguQXFpeUcJ/pPV7w7SKBfSH/RaM+G+Ac
 ej5tKjZr9CoVzpFRMmRSBQ36GeyR1bwgV3zLePKX9+fgDuJI0+BEjN0uELRMbwIZexa3
 HpiyCrVfB+6aZcHVbIfiEtnj9gknNMXmiGut5F6GqHjNqkf6yAmbsbt2FLzGAz/VFp9h ug==
Received: from rn-mailsvcp-mmp-lapp02.rno.apple.com
 (rn-mailsvcp-mmp-lapp02.rno.apple.com [17.179.253.15])
 by rn-mailsvcp-mta-lapp04.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPS id <0RYV00FSPOBVZMC0@rn-mailsvcp-mta-lapp04.rno.apple.com>
 for usrp-users@lists.ettus.com; Fri, 04 Aug 2023 10:52:43 -0700 (PDT)
Received: from process_milters-daemon.rn-mailsvcp-mmp-lapp02.rno.apple.com by
 rn-mailsvcp-mmp-lapp02.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) id <0RYV00E00O2HUB00@rn-mailsvcp-mmp-lapp02.rno.apple.com> for
 usrp-users@lists.ettus.com; Fri, 04 Aug 2023 10:52:43 -0700 (PDT)
X-Va-A: 
X-Va-T-CD: 3d5221d1829f6b5ea83ffe8e1331d89d
X-Va-E-CD: ab1e2f0bd1af1b1bf6709eb43450155f
X-Va-R-CD: 755bada2386f8c0ed2441284e5ecbbf8
X-Va-ID: 49b59bd3-e3de-4ad8-9461-ce25697a1e05
X-Va-CD: 0
X-V-A: 
X-V-T-CD: 3d5221d1829f6b5ea83ffe8e1331d89d
X-V-E-CD: ab1e2f0bd1af1b1bf6709eb43450155f
X-V-R-CD: 755bada2386f8c0ed2441284e5ecbbf8
X-V-ID: ed7b802d-8bce-4d2b-848c-358e88e62d52
X-V-CD: 0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.591,18.0.957
 definitions=2023-08-04_18:2023-08-02,2023-08-04 signatures=0
Received: from smtpclient.apple (unknown [17.234.122.137])
 by rn-mailsvcp-mmp-lapp02.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPSA id <0RYV00K5XOBUOM00@rn-mailsvcp-mmp-lapp02.rno.apple.com>
 for usrp-users@lists.ettus.com; Fri, 04 Aug 2023 10:52:43 -0700 (PDT)
MIME-version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Message-id: <5FBD3E80-E24C-42D4-A365-57A1D9DC0F86@apple.com>
Date: Fri, 04 Aug 2023 10:52:32 -0700
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3731.400.51.1.1)
Message-ID-Hash: TUCIJLMNNP3JEGFCHB34PUGCGOYEF2TP
X-Message-ID-Hash: TUCIJLMNNP3JEGFCHB34PUGCGOYEF2TP
X-MailFrom: vlevin@apple.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] MPM major compat number mismatch even after updating FW to latest on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TUCIJLMNNP3JEGFCHB34PUGCGOYEF2TP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Victor Levin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Victor Levin <vlevin@apple.com>
Content-Type: multipart/mixed; boundary="===============4428096881760671993=="


--===============4428096881760671993==
Content-type: multipart/alternative;
 boundary="Apple-Mail=_3B941C35-74B0-4197-9EB8-4BF5E4D9D4FE"


--Apple-Mail=_3B941C35-74B0-4197-9EB8-4BF5E4D9D4FE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi all,

I am using an X410 with X4_200 FPGA and latest FW as downloaded by =
uhd_images_downloader -t sdimg -t x4xx. This initially was working =
(uhd_usrp_probe and other calls went through fine) using UHD 4.4.0.0 on =
the host.=20

In order to use DPDK, I pulled the UHD repo from version branch V4.4.0.0 =
and recompiled with the ENABLE_DPDK flag turned on. After doing this, I =
sanity tested the newly compiled and installed UHD without DPDK.=20

Here is the output from uhd_usrp_probe:

[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.11; =
UHD_4.4.0.heads-v4.4.0.0-265-ga2a04e31
[WARNING] [PREFS] Loaded config from /root/.uhd. This location is =
considered deprecated, consider moving your config file to /root/.config =
instead.
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: =
mgmt_addr=3D192.168.15.2,type=3Dx4xx,product=3Dx410,serial=3D3257310,name=3D=
ni-x4xx-3257310,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.15.2
[ERROR] [MPMD] MPM major compat number mismatch. Expected: 5.2 Actual: =
4.4. Please update the version of MPM on your USRP device.
Error: RuntimeError: MPM major compat number mismatch. Expected: 5.2 =
Actual: 4.4. Please update the version of MPM on your USRP device.

I don=E2=80=99t understand where 5.2 has come from. It looks like the =
host UHD is expecting 5.2. However the branch of UHD host that I =
compiled is definitely UHD_4.4 as show in the first line of the output. =
Running uhd_images_downloader again after recompiling still pulls the =
same sdimg file as before so updating the FW again doesn=E2=80=99t help.=20=


Anyone know what=E2=80=99s going on here?=20

Thanks,
Victor=

--Apple-Mail=_3B941C35-74B0-4197-9EB8-4BF5E4D9D4FE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">Hi =
all,<div><br></div><div>I am using an X410 with&nbsp;X4_200 FPGA and =
latest FW as downloaded by <font =
face=3D"Menlo">uhd_images_downloader&nbsp;-t sdimg -t x4xx. </font>This =
initially was working (uhd_usrp_probe and other calls went through fine) =
using UHD 4.4.0.0 on the host.&nbsp;</div><div><br></div><div>In order =
to use DPDK, I pulled the UHD repo from version branch V4.4.0.0 and =
recompiled with the ENABLE_DPDK flag turned on. After doing this, I =
sanity tested the newly compiled and installed UHD without =
DPDK.&nbsp;</div><div><br></div><div>Here is the output from =
uhd_usrp_probe:</div><div><font =
face=3D"Menlo"><br></font></div><div><div><font face=3D"Menlo">[INFO] =
[UHD] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.11; =
UHD_4.4.0.heads-v4.4.0.0-265-ga2a04e31</font></div><div><font =
face=3D"Menlo">[WARNING] [PREFS] Loaded config from /root/.uhd. This =
location is considered deprecated, consider moving your config file to =
/root/.config instead.</font></div><div><font face=3D"Menlo">[INFO] =
[MPMD] Initializing 1 device(s) in parallel with args: =
mgmt_addr=3D192.168.15.2,type=3Dx4xx,product=3Dx410,serial=3D3257310,name=3D=
ni-x4xx-3257310,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.15.2</font></=
div><div><font face=3D"Menlo">[ERROR] [MPMD] MPM major compat number =
mismatch. Expected: 5.2 Actual: 4.4. Please update the version of MPM on =
your USRP device.</font></div><div><font face=3D"Menlo">Error: =
RuntimeError: MPM major compat number mismatch. Expected: 5.2 Actual: =
4.4. Please update the version of MPM on your USRP =
device.</font></div><div><br></div><div>I don=E2=80=99t understand where =
5.2 has come from. It looks like the host UHD is expecting 5.2. However =
the branch of UHD host that I compiled is definitely UHD_4.4 as show in =
the first line of the output. Running&nbsp;<span style=3D"font-family: =
Menlo;">uhd_images_downloader </span>again after recompiling still pulls =
the same sdimg file as before so updating the FW again doesn=E2=80=99t =
help.&nbsp;</div></div><div><br></div><div>Anyone know what=E2=80=99s =
going on =
here?&nbsp;</div><div><br></div><div>Thanks,</div><div>Victor</div></body>=
</html>=

--Apple-Mail=_3B941C35-74B0-4197-9EB8-4BF5E4D9D4FE--

--===============4428096881760671993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4428096881760671993==--
