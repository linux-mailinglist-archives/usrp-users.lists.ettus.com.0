Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8D2779EBB
	for <lists+usrp-users@lfdr.de>; Sat, 12 Aug 2023 11:59:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D68F383DE4
	for <lists+usrp-users@lfdr.de>; Sat, 12 Aug 2023 05:59:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691834386; bh=aSc0V4HeFIclB03AbmACUIm/CFTu+ZGzM2+ZnRf/v7U=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=W4ChRLBlzLTPm1P+uJH1mfwLHy2FiId+vBBKRadD2qke4QNsea/G6opmPBH4bwCiN
	 mvLH/nEZeMSSbE/64PIZDApzYszwFP7IEw7vQDplyqF0SX4VshS8v8qBNoZZ3QNQo1
	 5hMCIFsqTlJW1r4n8A6P6gl1jNCLEtD/nC0dIgfdpdfZjTW3IdPTSRt+NIeZA5Sg0t
	 YnPNtcMYOeGAgjGw036CxrNMLPFHnO5LluAJf3zFXxX9hYa7hYB7HvTaGUoIH1dSRg
	 AdPMYR6sUjc7ldnxYwdWmrvsasWELDwW+gDPsuIBBbXeVv8shEh3FP15Zpi0XiveGn
	 XxAcR0I0lWFnw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F5A03812D7
	for <usrp-users@lists.ettus.com>; Sat, 12 Aug 2023 05:59:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691834354; bh=wb9IZlQYMTz06DhYEz6pkmLKmzxdURhDRX7cwpQP3rs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=VB9mIrK77zohWmf1mgGTbSV71kLu2M8AjvQI93zbKHuWYSTDFVl3udqqpL51B5Qnu
	 H5jkCOjd+rOyS27lwsTPCQHeUBvp60Ya/1IY8yY54iDfQWMpQF/8zSxYbXTyPW1634
	 G+Eo9dFAIK64J+CBGrwspWIOsXILPpgknwfnXFDZHUV2ck3IU/y5Q9RdBTcw5wS2ZC
	 xlrmBt7pLpcvoJWAnVr4K35vqyJLYPNy7pM852tyLghNBBb7Ivnw0FWpuRnXaFZLON
	 JyjQXFNm1D1nAUBLGnvZR51+mvOza+qboDtVtYmMZAxiNl5afWIwhDwZ3Gojbf3nXi
	 sRJkcR2qSxl5A==
Date: Sat, 12 Aug 2023 09:59:14 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <F3ACqH5XUkCsiJBijfNp67N3noRZBoHXYtNXs819iY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAA=S3Pu3D7FG5tg-4Ag5Q6zzLuy99CN47E7b6cHRqDRF7c8rbg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: LNQLFXEVVR4BUUC6ZY52MSFOBUSW65OQ
X-Message-ID-Hash: LNQLFXEVVR4BUUC6ZY52MSFOBUSW65OQ
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can add some verilog dir file to rfnoc block make file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LNQLFXEVVR4BUUC6ZY52MSFOBUSW65OQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7638288442427832133=="

This is a multi-part message in MIME format.

--===============7638288442427832133==
Content-Type: multipart/alternative;
 boundary="b1_F3ACqH5XUkCsiJBijfNp67N3noRZBoHXYtNXs819iY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_F3ACqH5XUkCsiJBijfNp67N3noRZBoHXYtNXs819iY
Content-Type: text/plain; charset=us-ascii

Greetings,

I find the easiest way to include components to be by mimicing the rfnoc-example found under the uhd/host/examples/rfnoc-example.

I would recommend you to wrap your ip into a [module](https://youtu.be/uhEsG4i9dvc "https://youtu.be/uhEsG4i9dvc"), instantiate that module wherever you please and create your makefile.inc (use the file as follows as a template) like in [here](https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/ip/cmplx_mul/cmplx_mul.xci "https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/ip/cmplx_mul/cmplx_mul.xci"), and add references to the building tool file (such as cmakelist.txt) whatever you are building the project with.

Regards,

Eden.

--b1_F3ACqH5XUkCsiJBijfNp67N3noRZBoHXYtNXs819iY
Content-Type: text/html; charset=us-ascii

<p>Greetings,<br><br></p><p>I find the easiest way to include components to be by mimicing the rfnoc-example found under the uhd/host/examples/rfnoc-example.</p><p>I would recommend you to wrap your ip into a <a href="https://youtu.be/uhEsG4i9dvc" title="https://youtu.be/uhEsG4i9dvc">module</a>, instantiate that module wherever you please and create your makefile.inc (use the file as follows as a template) like in <a href="https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/ip/cmplx_mul/cmplx_mul.xci" title="https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/ip/cmplx_mul/cmplx_mul.xci">here</a>, and add references to the building tool file (such as cmakelist.txt) whatever you are building the project with.</p><p>Regards,</p><p>Eden.</p>


--b1_F3ACqH5XUkCsiJBijfNp67N3noRZBoHXYtNXs819iY--

--===============7638288442427832133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7638288442427832133==--
