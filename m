Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A4E8135B7
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 17:08:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EEF52384CD0
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 11:08:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702570082; bh=8SmR6zhDjCxytEmYs7baY0Qw4ABefrfmY0uFg44dE+c=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EUQ1UNCyUVXch+YrWpSaEJHIJeBoNwd6AyEh8h2vJfZAR92vVWsT0lbDRaVOq35rL
	 P4NhNHLibUx/v3qdPcgJU9tUsbUok3/xcLJqOsQPFSY5nOLb1hODakHNdB03yp+3iJ
	 Z+7YINVomTNxG1yl8OMdxxHthMFlANGuBkEGvd5swRca9619mgmxPDWjrEmpLuR5e6
	 srQKWPj+f2MAgaXL+eNEb2KOa6+lPPB+uVeV9Y95ISVmISNd14d6VeU6geAIxAoGWs
	 nr8efEtY000LKCWpsNwCEcj1hjWdXT7Jned+75B4ArpA44c7qduGDg3iTz4cqbWP7W
	 q8/dPYPtsf7dg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EFF4384BFC
	for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 11:07:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702570072; bh=4svtaSZv+G8tilosQHJlYCV3D9UeA1IgDFB778E4R4o=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Ia03VsfXBVDFSM6wGRDHHc1xEFV2qShbqvUXflMcp3DlftwFZE+j2jXxDY1zhSijX
	 fwI3nX57PPNVxwQm6jOqvJmLXbixkkybW8vbkKjDXJMUIufite/B9CLnAzx3u6JTgB
	 bdMjdax5nN8wdpCpMRgX31bi4mmBvBcfR3yJreRzlmzYQbBRpyxNIFAypfbN5S7O1P
	 2aft2Ia3F0VVVoYO9knpsFsPEZLACYtKyV0jr3+cz5poaXQRERIlskme2wPbwPYg3R
	 uvpkXfT6814zOEkfCwieUhsjbCNWnCJRn2U+A1C8m53dmT57DQePtSGaBDje1S0zUp
	 tDgWU+6oqxlyQ==
Date: Thu, 14 Dec 2023 16:07:52 +0000
To: usrp-users@lists.ettus.com
From: engr.muhd.hassan@gmail.com
Message-ID: <zem0tw7l4Whb4bH9LJMrxAvXnm0aHlfya7wzXV4yzk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSHaRgdNkK_YTRV-90zOk6SJuKE_70KM_a8DPeQS1SoQw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: SZWQ3BBXC5PQW3SSDSPYPKUKO4QUQA7G
X-Message-ID-Hash: SZWQ3BBXC5PQW3SSDSPYPKUKO4QUQA7G
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error while running command "rfnoc_image_builder -y ./e310_rfnoc_image_core.yml"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SZWQ3BBXC5PQW3SSDSPYPKUKO4QUQA7G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1605590101456631865=="

This is a multi-part message in MIME format.

--===============1605590101456631865==
Content-Type: multipart/alternative;
 boundary="b1_zem0tw7l4Whb4bH9LJMrxAvXnm0aHlfya7wzXV4yzk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_zem0tw7l4Whb4bH9LJMrxAvXnm0aHlfya7wzXV4yzk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Wade & Rob,

Thank you for your help.

I am a new user, so I do not know much about Linux and FPGA. My aim is to=
 use my usrp with high sampling rate so I was recommended to use RFNoC re=
play block. For this purpose, I received YML file from Ettus (from Jonath=
on). I replaced that file (e310_rfnoc_image_core.yml) with the already ex=
isting file to the location (/uhd/fpga/usrp3/top/e31x) and from this fold=
er I executed the command =E2=80=9Crfnoc_image_builder -y\
./e310_rfnoc_image_core.yml =E2=80=9C.=20

I am not sure whether I did it correctly or not.

regards

Hassan

--b1_zem0tw7l4Whb4bH9LJMrxAvXnm0aHlfya7wzXV4yzk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Wade &amp; Rob,</p><p>Thank you for your help.</p><p>I am a new use=
r, so I do not know much about Linux and FPGA. My aim is to use my usrp w=
ith high sampling rate so I was recommended to use RFNoC replay block. Fo=
r this purpose, I received YML file from Ettus (from Jonathon). I replace=
d that file (e310_rfnoc_image_core.yml) with the already existing file to=
 the location (/uhd/fpga/usrp3/top/e31x) and from this folder I executed =
the command =E2=80=9Crfnoc_image_builder -y<br>./e310_rfnoc_image_core.ym=
l =E2=80=9C. </p><p><br></p><p><br></p><p><br></p><p>I am not sure whethe=
r I did it correctly or not.</p><p><br></p><p>regards</p><p>Hassan </p>


--b1_zem0tw7l4Whb4bH9LJMrxAvXnm0aHlfya7wzXV4yzk--

--===============1605590101456631865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1605590101456631865==--
