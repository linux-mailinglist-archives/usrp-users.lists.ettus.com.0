Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D8363C661
	for <lists+usrp-users@lfdr.de>; Tue, 29 Nov 2022 18:27:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 792CA3842CF
	for <lists+usrp-users@lfdr.de>; Tue, 29 Nov 2022 12:27:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669742839; bh=zw11oSHydv9FEFbUN/uQbQXcyMugTccfSpxhIFnYffc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Ej+R7vOUO1AXXLbEpg9EwAzfle7jIehdhb82z2MzF2QkFPwQ4G4tuzoNOn+ewNZFe
	 6KIR5fS5I1u/GMZTELK4EdibgE1VXW41/YCxas2xNb6Vf4NEeT+K8wnSa0jA8wdKvr
	 ydFDnP3D4gnGyA7RZwCrJXi2OYsX0fuNN3kC+dMGuD2uhxXNWoF+lKtnuALMMuikdF
	 IkRcvojHraW2kpoXogAdmvzeREji2JrQ9b5veC3vRDnVY864BMg4ij984Fmj45DxhC
	 pNW5tI0dW3jYTpUE0pNI9j7GumTouw56yL0safIu9EVqdG63OSJDEqT6xQQewFFcPy
	 Xa4b429I6mT8A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F287D3841C5
	for <usrp-users@lists.ettus.com>; Tue, 29 Nov 2022 12:25:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669742758; bh=OeE3A5df6vVhErz5bylRJHWaIfKfoNDE6weS5EFEw8g=;
	h=Date:To:From:Subject:From;
	b=igFvAronzLGAFDlR7dZzUW7IPUAjd41oLMxTdF8Sm12XmwOZ6IQTxvGCd7z7pyfkk
	 8g835iHPSb8+25TZHiI+fIUr7HxoI2Y9S1BojbcsfyJ6TwVScth0m7slGMTddLOyWi
	 bGf2yIOHXpeb1Bzip4HkuGxSWmo87Vh2lChACKWQ7gHsoIPC2uPMUmSx/VWZkmkHpq
	 W6LlWl6F7F+sk3ihSxope8uJp4BhQoetn8b56gX/1lkXFTHjSLPDovZM79tTqEI9Ef
	 Sz3HAx2YieD3tqLAaOoVGwmB8KlnRudutBFfnzQjToAn33ATQex91z+LbWMhEEoBaQ
	 kKmi1288UJ38g==
Date: Tue, 29 Nov 2022 17:25:57 +0000
To: usrp-users@lists.ettus.com
From: kun_dave@hotmail.com
Message-ID: <RtxUC3eJyhLAQROVi6cmmo73cq9PXu8wJS9Nm5t514@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: WTSRQGJ4HCPUXY2LATD5XAXTOFB5FSPS
X-Message-ID-Hash: WTSRQGJ4HCPUXY2LATD5XAXTOFB5FSPS
X-MailFrom: kun_dave@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 E312 E313 how to send power off request to ublox 6 GPS chip via UART interface?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WTSRQGJ4HCPUXY2LATD5XAXTOFB5FSPS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7331570271205177500=="

This is a multi-part message in MIME format.

--===============7331570271205177500==
Content-Type: multipart/alternative;
 boundary="b1_RtxUC3eJyhLAQROVi6cmmo73cq9PXu8wJS9Nm5t514"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RtxUC3eJyhLAQROVi6cmmo73cq9PXu8wJS9Nm5t514
Content-Type: text/plain; charset=us-ascii

Is it possible to send a power off request to the ublox 6 GPS chip (AMY-6M) using the UART interface on the E31x series?  Note, the UART pins are connected to the PS side of the Zynq Xilinx FPGA.

Supporting information:

1. From ublox receiver description (including protocol description) that describes the power on/off request

![image-2022-11-29-00-58-39-598.png](https://aerosource2.aero.org/jira/secure/attachment/605377/image-2022-11-29-00-58-39-598.png)

2. details of the RXM-PMREQ

![image-2022-11-29-00-57-25-445.png](https://aerosource2.aero.org/jira/secure/attachment/605376/image-2022-11-29-00-57-25-445.png)

--b1_RtxUC3eJyhLAQROVi6cmmo73cq9PXu8wJS9Nm5t514
Content-Type: text/html; charset=us-ascii

<p>Is it possible to send a power off request to the ublox 6 GPS chip (AMY-6M) using the UART interface on the E31x series?  Note, the UART pins are connected to the PS side of the Zynq Xilinx FPGA.</p><p>Supporting information:</p><ol><li><p>From ublox receiver description (including protocol description) that describes the power on/off request</p></li></ol><p><img src="https://aerosource2.aero.org/jira/secure/attachment/605377/image-2022-11-29-00-58-39-598.png" alt="image-2022-11-29-00-58-39-598.png" contenteditable="false" draggable="true"><br></p><ol start="2"><li><p>details of the RXM-PMREQ</p></li></ol><p><img src="https://aerosource2.aero.org/jira/secure/attachment/605376/image-2022-11-29-00-57-25-445.png" alt="image-2022-11-29-00-57-25-445.png" contenteditable="false" draggable="true"><br></p>


--b1_RtxUC3eJyhLAQROVi6cmmo73cq9PXu8wJS9Nm5t514--

--===============7331570271205177500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7331570271205177500==--
