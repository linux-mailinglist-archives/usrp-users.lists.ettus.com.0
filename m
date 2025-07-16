Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E9BB07765
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jul 2025 15:53:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 865983866E8
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jul 2025 09:53:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752674027; bh=hDOe1jluiKBfNeOIYE1Itq++lTtCRyzGkXdiY70qIL4=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=h6z3WINfNoD49E3XgJlq31fFv+vP62ERZsAyRnO47NKw9wOXc5WtsprYiDV8D2/ni
	 drIO7/cNuPlcuIOMmYbX/ro9BqDxmrlQ4qNUvuJLNmtOEmFHrBSbt1h5j1lhHP3ZUX
	 prmOqJzU1H4gH7Rq1NGtqVWkptMcRYLhB8CVUHpITyb1Jn2JgtYVqxJ5uTWFG4v4tA
	 oipl8YxB7wlK5fA/t+3aMTyzmQOeciTqkMzpl5kjZbOQmpJNcGRdqfsICYrroQT/SE
	 B62ZOoK9WWvbNgTsMn0B8OdE7dhOtMaLGRlTJjT7WIyRfkfxj0PpH3NrKx/+x1j99Z
	 YvMjwvCDfzCpA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A536386691
	for <usrp-users@lists.ettus.com>; Wed, 16 Jul 2025 09:53:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752674011; bh=Ns8Rm/DpVSPdnKLzZpE8MNmqndw8kzjmW0ldtDwVAfU=;
	h=Date:To:From:Subject:From;
	b=yhETDFKDP/4ED2MOSQsT2FrxLtwItsMXeZs1B7mtpwkwnYwFb3szPBpBmjWD51WGO
	 h+BAP6c3U3jNOBOZlkGTqAiQDzuGR8qJXPkBUj4s6kLCVdGkzIAMnJI9p65c885mTI
	 FZtiMo1+IZ4A343QIJGOsodA4JZ8sliU3EFo82AitdUN8ORTcP071TDMTZWumptN+u
	 x75mS/HiVQ1SFjuSY4Cj/cyteJRL23BvHcPmv95k5xF+rblvi9r76ocFFxg60RKHPF
	 amXuYQ2+BU/5dsU7abTiDpdQrVv0fVio2aK+FAaxzceI27znRRiEy+HwHZNrK2/Vj1
	 zx7XixkGGqpTA==
Date: Wed, 16 Jul 2025 13:53:31 +0000
To: usrp-users@lists.ettus.com
From: gechb21@gmail.com
Message-ID: <xtYeKVj7Io6XGfE7HJxkiC1EXnQPihxvOp5q6RBnc0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: K5OPTESV44TE4MWAAYTOGEOACJGTZYGI
X-Message-ID-Hash: K5OPTESV44TE4MWAAYTOGEOACJGTZYGI
X-MailFrom: gechb21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Leveraging Dual 10 Gigabit Ethernet SFP+ Ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K5OPTESV44TE4MWAAYTOGEOACJGTZYGI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8783280730673572897=="

This is a multi-part message in MIME format.

--===============8783280730673572897==
Content-Type: multipart/alternative;
 boundary="b1_xtYeKVj7Io6XGfE7HJxkiC1EXnQPihxvOp5q6RBnc0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xtYeKVj7Io6XGfE7HJxkiC1EXnQPihxvOp5q6RBnc0
Content-Type: text/plain; charset=us-ascii

The USRP X310 uses dual 10 Gigabit Ethernet SFP+ ports to support high-throughput data transfers between the host and FPGA. I plan to transmit and receive samples in parallel over these two SFP+ ports using a single RF transmit and receive chain. The UHD driver on the host splits large transmission data streams across the two Ethernet links, sending them to the FPGA for processing. On the receive side, it similarly merges data streams coming back from the FPGA to form a continuous IQ sample stream for the host. Inside the FPGA, the split streams received over the two SFP+ ports are merged and assembled into complete IQ samples before being passed to the DAC for transmission. Conversely, on reception, the FPGA splits the ADC output streams and distributes them across the two SFP+ ports to maximize throughput back to the host server.

How exactly does the FPGA automatically merge the parallel Ethernet streams from SFP+0 and SFP+1 into one logical contiguous IQ stream before sending it to the DAC? And during reception, how does it coordinate splitting the ADC output to distribute data streams efficiently across both SFP+ ports? Is this merging and splitting entirely handled by the UHD and FPGA firmware, or do we need to implement custom Python/MATLAB/C++ code to manage it?

--b1_xtYeKVj7Io6XGfE7HJxkiC1EXnQPihxvOp5q6RBnc0
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>The USRP X310 uses dual 10 Gigabit Ethernet SFP+ ports to support high-t=
hroughput data transfers between the host and FPGA. I plan to transmit and =
receive samples in parallel over these two SFP+ ports using a single RF tra=
nsmit and receive chain. The UHD driver on the host splits large transmissi=
on data streams across the two Ethernet links, sending them to the FPGA for=
 processing. On the receive side, it similarly merges data streams coming b=
ack from the FPGA to form a continuous IQ sample stream for the host. Insid=
e the FPGA, the split streams received over the two SFP+ ports are merged a=
nd assembled into complete IQ samples before being passed to the DAC for tr=
ansmission. Conversely, on reception, the FPGA splits the ADC output stream=
s and distributes them across the two SFP+ ports to maximize throughput bac=
k to the host server.</p><p>How exactly does the FPGA automatically merge t=
he parallel Ethernet streams from SFP+0 and SFP+1 into one logical contiguo=
us IQ stream before sending it to the DAC? And during reception, how does i=
t coordinate splitting the ADC output to distribute data streams efficientl=
y across both SFP+ ports? Is this merging and splitting entirely handled by=
 the UHD and FPGA firmware, or do we need to implement custom Python/MATLAB=
/C++ code to manage it?</p>

--b1_xtYeKVj7Io6XGfE7HJxkiC1EXnQPihxvOp5q6RBnc0--

--===============8783280730673572897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8783280730673572897==--
