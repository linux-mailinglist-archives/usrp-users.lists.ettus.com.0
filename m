Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B80045400F3
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 16:12:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39C76383CA9
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 10:12:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654611128; bh=1wy3ZU0ZKSg9hNxFqXCiByPKKurjbcyxjqkQuELhxFA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DZERzIwF6Qx16yzxh9/2WhX+JE/GLCAMnpXL2na4RDUBG813MlR/YyJbs4bJ0MAsD
	 7QL+y5ga0lgZz7l3GZRE9fUtcU2xcPp1PhNuDd9GAE/jRDnYzMYt7Xyb3/VNheZK+6
	 wSbSzEWzC4IjlI9R63So3DBnL8qrkOpAVKTDlAQsaFf2JIVymUdyQyJ8cH3bQYJZJz
	 0dUwljOUsXhqP9sexSx8ktLa3nN0ta6JAi3sqOi+8g67dKSEfDJsFlwsa289fWgLXE
	 jyAAr65+t4qipNJHMoO5VSFEYcSD+tDGdktYjOPnbWvxgxh1jtLSjA0jHt0Zn+1rJH
	 6A1qWGiAhoZBQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4364383DA1
	for <usrp-users@lists.ettus.com>; Tue,  7 Jun 2022 10:10:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654611057; bh=SV0BzJBDVHiUZbWyjbllJbTpikhk4Pwm8OWFiGCyxIo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=qdtYH0Q0tJaIaBmgiCR1bQBHyYKkHFILxBAjvPjYwhe+0TIiIPOhNZHbbFF0V5kVU
	 rMGCP/5f+6qBYH4U3CP15rqV2e1DOVVaqlUUKEIsIAXqOt/BP48kM8/XF+2NZ2/lsV
	 BnDH4r9WQM74YreukiTvqieOWCN19YfwW8Fe6AqZH0ZHeDi6Wushfmz9AGHca4I++h
	 wqpCyRLpyaUJZ7JpYApPhob/N8MsOWDPtDPZN4CEI04vcyqOv5vGiK6d6xBcC2DqIp
	 LQjsx0dCzVg+8xgGFAE7oqcXPN+IkyHvwdAFUyxnFKFfpuTgSnJ4gaf2XnJPREBAwg
	 nUPAs5r/o7Obg==
Date: Tue, 7 Jun 2022 14:10:57 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <AKHHo73J6OR1dovVTuxKMsyGMsksabQ4mUJnvydI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTTOrTOZH8kuheTCLjPchOWn6d92fhpsR_FcfgR1KojntA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 7BJLHRQMNRRBZ5XBSSSDN7WLNIYIF6MC
X-Message-ID-Hash: 7BJLHRQMNRRBZ5XBSSSDN7WLNIYIF6MC
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7BJLHRQMNRRBZ5XBSSSDN7WLNIYIF6MC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5331713806195402606=="

This is a multi-part message in MIME format.

--===============5331713806195402606==
Content-Type: multipart/alternative;
 boundary="b1_AKHHo73J6OR1dovVTuxKMsyGMsksabQ4mUJnvydI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_AKHHo73J6OR1dovVTuxKMsyGMsksabQ4mUJnvydI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Rob Kossler wrote:

> Would it make sense to separate into 2 threads where one thread sends t=
he
> tuning commands and the other sends the Tx samples?
> Rob

Yes, and that=E2=80=99s what I do on the real system. The code snippet I =
posted was a test harness to see if my FPGA changes increased the queue s=
ize of the DDS/DUC.=20

The documentation suggests by default the DDS/DUC only support 5 timed co=
mmands in flight at a time. I verified this by scheduling 6 commands well=
 into the future, and observing that I get late errors, but run error fre=
e when only issue 5 commands. I would have expected my FPGA modification =
to change the observed behavior to 10 commands run fine, 11 cause errors.=
=20

The reason I need a deeper DDS/DUC timed command buffer is because I want=
 to retune every \~200 us. There does not appear to be a mechanism for UH=
D automatically buffering timed commands beyond the 5 that fit into the F=
PGA on the host, meaning my software must keep track of the number of com=
mands in flight. Given network latency and scheduling uncertainty (I=E2=80=
=99m not running on an RTOS), I have not been able to issue commands that=
 fast. If I could increase the buffer size, I could instead issue batches=
 of commands.

--b1_AKHHo73J6OR1dovVTuxKMsyGMsksabQ4mUJnvydI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Rob Kossler wrote:</p><blockquote><p>Would it make sense to separate int=
o 2 threads where one thread sends the
tuning commands and the other sends the Tx samples?
Rob</p></blockquote><p>Yes, and that=E2=80=99s what I do on the real system=
. The code snippet I posted was a test harness to see if my FPGA changes in=
creased the queue size of the DDS/DUC. </p><p>The documentation suggests by=
 default the DDS/DUC only support 5 timed commands in flight at a time. I v=
erified this by scheduling 6 commands well into the future, and observing t=
hat I get late errors, but run error free when only issue 5 commands. I wou=
ld have expected my FPGA modification to change the observed behavior to 10=
 commands run fine, 11 cause errors. </p><p>The reason I need a deeper DDS/=
DUC timed command buffer is because I want to retune every ~200 us. There d=
oes not appear to be a mechanism for UHD automatically buffering timed comm=
ands beyond the 5 that fit into the FPGA on the host, meaning my software m=
ust keep track of the number of commands in flight. Given network latency a=
nd scheduling uncertainty (I=E2=80=99m not running on an RTOS), I have not =
been able to issue commands that fast. If I could increase the buffer size,=
 I could instead issue batches of commands.</p>

--b1_AKHHo73J6OR1dovVTuxKMsyGMsksabQ4mUJnvydI--

--===============5331713806195402606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5331713806195402606==--
