Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C48280F5DE
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 19:56:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8841B3850D6
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 13:56:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702407375; bh=XP8IawqSvsryLO6R5IrNPPZxlwyUJw31cu2ER5T5Omo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ndK+WlPvOoDoMv/4VXVSdvF0h8VSkkGSOJ9ud8b8fv8YFKbvWdCV7Et+Pfhoe8Rq8
	 LPy6QWASZo3PvkFa+NS2ZFaWnJkTSuwDQx1c2wHad+WurQN26zlvgdKkC/7bH0Zr2f
	 2DmjifCuhXWdVeoQ6Lge1EG9F11R6MMFMPpVgJzSDiiKznRHyGZtFB73dUnK3Fr/RV
	 jWoi+ADyONIFI09OgigQUyKi8C6tLJvdfLIX/uWbmc+b1+SiYTVRPP+5GK5vDqnn1c
	 u7msCMwwu5Gxl6gWg5WytK8aK61IUU1AtbW2m9aAbEb5iWrc7h/C8b3d3vr9b63pSO
	 CqqDNWd0F38Ug==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5EDC384BCA
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 13:55:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702407321; bh=hyODPGOIJ/Cqi04eaLIsSxU1p3YQ1BB84qI1/eqNgLA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Rwq9hFc7fnd1serZNkNVx0dV+baR5mYYYCiA6vnKm3QUmWWxsYH+AIKXR9HJYNFe2
	 /lES5J9QhQ37XxXgjqT2oB3vgLSjkZ4wEIxQnNxXVI3mrJs7UB2crIr0dBUwOZJaoS
	 NiKyL9ac5ArWtYS90VyrCW2oXvLPsDSDGBMeLXZ1yHntfDiYgUCFgPesvvgAKYl6Xd
	 757VdrH4Wo0s8p+LAhAzP6lMfud17uyeAKSNcOR+ZIKZ13XgqCHL8I5z8UKSdRgGy1
	 4uDB6NrP9GgiotCxYuj98R+h+qk4HLWTb5TnwiqYfcox0BgO6dUYjTMLt9+C1NaSSP
	 Vn1HTWGqD73LA==
Date: Tue, 12 Dec 2023 18:55:21 +0000
To: usrp-users@lists.ettus.com
From: engr.muhd.hassan@gmail.com
Message-ID: <rPb5vjhzxAbpkKqfG380sgIcjCoaOgdLbAtMNY4tA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=hEX-WiwPh_X_8WTx8gNxLkcoYsJ1_wnYN2iP=S+aW-xA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: SYRNIXCHZPJQXZBM4YCY77SESUMFR4XV
X-Message-ID-Hash: SYRNIXCHZPJQXZBM4YCY77SESUMFR4XV
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error while running command "rfnoc_image_builder -y ./e310_rfnoc_image_core.yml"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SYRNIXCHZPJQXZBM4YCY77SESUMFR4XV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9046003097210873777=="

This is a multi-part message in MIME format.

--===============9046003097210873777==
Content-Type: multipart/alternative;
 boundary="b1_rPb5vjhzxAbpkKqfG380sgIcjCoaOgdLbAtMNY4tA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rPb5vjhzxAbpkKqfG380sgIcjCoaOgdLbAtMNY4tA
Content-Type: text/plain; charset=us-ascii

Could you please tell me how can solve this issue? As I am using GNU radio, when I increase sample rate beyond 2MS/s it misses samples. So, Ettus suggested me to use RFNoC replay Block. They also provided me with YAML file. I have two E313 USRPs and I have to use them for outdoor channel modelling. Could you please help me with that?

--b1_rPb5vjhzxAbpkKqfG380sgIcjCoaOgdLbAtMNY4tA
Content-Type: text/html; charset=us-ascii

<p>Could you please tell me how can solve this issue? As I am using GNU radio, when I increase sample rate beyond 2MS/s it misses samples. So, Ettus suggested me to use RFNoC replay Block. They also provided me with YAML file. I have two E313 USRPs and I have to use them for outdoor channel modelling. Could you please help me with that?</p>


--b1_rPb5vjhzxAbpkKqfG380sgIcjCoaOgdLbAtMNY4tA--

--===============9046003097210873777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9046003097210873777==--
